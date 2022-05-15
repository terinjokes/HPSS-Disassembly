; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld c, [hl]                                    ; $4000: $4e
    sbc b                                         ; $4001: $98
    ld [hl], d                                    ; $4002: $72
    ld c, d                                       ; $4003: $4a
    dec sp                                        ; $4004: $3b
    dec de                                        ; $4005: $1b
    or e                                          ; $4006: $b3
    call nc, $4dbc                                ; $4007: $d4 $bc $4d
    xor a                                         ; $400a: $af
    call c, $c367                                 ; $400b: $dc $67 $c3
    and a                                         ; $400e: $a7
    ld d, a                                       ; $400f: $57
    ld c, a                                       ; $4010: $4f
    ld c, e                                       ; $4011: $4b
    call nz, Call_04e_72d2                        ; $4012: $c4 $d2 $72
    cp b                                          ; $4015: $b8
    rla                                           ; $4016: $17
    ld e, [hl]                                    ; $4017: $5e
    ld [bc], a                                    ; $4018: $02
    ld hl, sp-$26                                 ; $4019: $f8 $da
    ld b, b                                       ; $401b: $40
    add c                                         ; $401c: $81
    ld a, e                                       ; $401d: $7b
    ld de, $e701                                  ; $401e: $11 $01 $e7
    or c                                          ; $4021: $b1
    ld a, h                                       ; $4022: $7c
    xor b                                         ; $4023: $a8
    add sp, -$6b                                  ; $4024: $e8 $95
    ei                                            ; $4026: $fb
    ld l, h                                       ; $4027: $6c
    or d                                          ; $4028: $b2
    and e                                         ; $4029: $a3
    rst $30                                       ; $402a: $f7
    ld d, b                                       ; $402b: $50
    db $dd                                        ; $402c: $dd
    xor h                                         ; $402d: $ac
    add c                                         ; $402e: $81
    inc sp                                        ; $402f: $33
    xor $d1                                       ; $4030: $ee $d1
    db $10                                        ; $4032: $10
    ld bc, $e1e7                                  ; $4033: $01 $e7 $e1
    dec sp                                        ; $4036: $3b
    ld a, d                                       ; $4037: $7a
    call z, $1052                                 ; $4038: $cc $52 $10
    ld bc, $ef4f                                  ; $403b: $01 $4f $ef
    daa                                           ; $403e: $27
    ld hl, $474b                                  ; $403f: $21 $4b $47
    sub $2f                                       ; $4042: $d6 $2f
    adc c                                         ; $4044: $89
    sbc a                                         ; $4045: $9f
    inc bc                                        ; $4046: $03
    ld l, [hl]                                    ; $4047: $6e
    rst $20                                       ; $4048: $e7
    pop hl                                        ; $4049: $e1
    db $d3                                        ; $404a: $d3
    adc [hl]                                      ; $404b: $8e
    sbc $d1                                       ; $404c: $de $d1
    inc bc                                        ; $404e: $03
    jp nc, Jump_04e_4e95                          ; $404f: $d2 $95 $4e

    rst $00                                       ; $4052: $c7
    ld c, h                                       ; $4053: $4c
    ld c, d                                       ; $4054: $4a
    sbc e                                         ; $4055: $9b
    dec c                                         ; $4056: $0d
    sbc a                                         ; $4057: $9f
    halt                                          ; $4058: $76
    db $f4                                        ; $4059: $f4
    adc [hl]                                      ; $405a: $8e
    ld e, $70                                     ; $405b: $1e $70
    jp Jump_000_01fa                              ; $405d: $c3 $fa $01


    ld de, $9bc0                                  ; $4060: $11 $c0 $9b
    ld b, l                                       ; $4063: $45
    dec e                                         ; $4064: $1d
    ld [hl+], a                                   ; $4065: $22
    ret nz                                        ; $4066: $c0

    add h                                         ; $4067: $84
    sub l                                         ; $4068: $95
    ld hl, $8f02                                  ; $4069: $21 $02 $8f
    ld c, e                                       ; $406c: $4b
    dec l                                         ; $406d: $2d
    ld b, a                                       ; $406e: $47
    xor a                                         ; $406f: $af
    call c, $9367                                 ; $4070: $dc $67 $93
    ld l, c                                       ; $4073: $69
    push de                                       ; $4074: $d5
    and e                                         ; $4075: $a3
    daa                                           ; $4076: $27
    rst $30                                       ; $4077: $f7
    ld h, c                                       ; $4078: $61
    adc [hl]                                      ; $4079: $8e
    jp z, $583f                                   ; $407a: $ca $3f $58

    ld [hl], b                                    ; $407d: $70
    ld a, e                                       ; $407e: $7b
    ld e, d                                       ; $407f: $5a
    dec a                                         ; $4080: $3d
    xor $d4                                       ; $4081: $ee $d4
    ld sp, hl                                     ; $4083: $f9
    ld [de], a                                    ; $4084: $12
    cp a                                          ; $4085: $bf
    ld [$e06c], a                                 ; $4086: $ea $6c $e0
    adc h                                         ; $4089: $8c
    ld a, e                                       ; $408a: $7b
    db $f4                                        ; $408b: $f4
    reti                                          ; $408c: $d9


    ld l, h                                       ; $408d: $6c
    ld [hl-], a                                   ; $408e: $32
    db $fd                                        ; $408f: $fd
    cp $bf                                        ; $4090: $fe $bf
    dec hl                                        ; $4092: $2b
    ld e, $4b                                     ; $4093: $1e $4b
    xor b                                         ; $4095: $a8
    ld [c], a                                     ; $4096: $e2
    di                                            ; $4097: $f3
    ld l, b                                       ; $4098: $68
    ret c                                         ; $4099: $d8

    ld [hl], c                                    ; $409a: $71
    and $93                                       ; $409b: $e6 $93
    sub l                                         ; $409d: $95
    ld a, $2e                                     ; $409e: $3e $2e
    cp $b2                                        ; $40a0: $fe $b2
    ld l, c                                       ; $40a2: $69
    add a                                         ; $40a3: $87
    ld [$4b8f], sp                                ; $40a4: $08 $8f $4b
    ld c, l                                       ; $40a7: $4d
    rrca                                          ; $40a8: $0f
    sbc a                                         ; $40a9: $9f
    jr jr_04e_40e1                                ; $40aa: $18 $35

    db $fd                                        ; $40ac: $fd
    ld a, [hl]                                    ; $40ad: $7e
    ld d, d                                       ; $40ae: $52
    res 0, [hl]                                   ; $40af: $cb $86
    xor $e8                                       ; $40b1: $ee $e8
    sub l                                         ; $40b3: $95
    ld a, $2e                                     ; $40b4: $3e $2e
    cp $b2                                        ; $40b6: $fe $b2
    ld l, c                                       ; $40b8: $69
    add a                                         ; $40b9: $87
    ld [$c9e7], sp                                ; $40ba: $08 $e7 $c9
    jp nc, Jump_04e_6da6                          ; $40bd: $d2 $a6 $6d

    ld c, h                                       ; $40c0: $4c
    xor a                                         ; $40c1: $af
    xor [hl]                                      ; $40c2: $ae
    ld l, c                                       ; $40c3: $69
    daa                                           ; $40c4: $27
    db $fd                                        ; $40c5: $fd
    ld e, a                                       ; $40c6: $5f
    ld d, l                                       ; $40c7: $55
    dec e                                         ; $40c8: $1d
    ld h, a                                       ; $40c9: $67
    inc bc                                        ; $40ca: $03
    ld h, a                                       ; $40cb: $67
    call c, $cfa3                                 ; $40cc: $dc $a3 $cf
    ld d, [hl]                                    ; $40cf: $56
    ld [hl+], a                                   ; $40d0: $22
    push de                                       ; $40d1: $d5
    ld a, c                                       ; $40d2: $79
    call nz, $1a50                                ; $40d3: $c4 $50 $1a
    dec a                                         ; $40d6: $3d
    sbc e                                         ; $40d7: $9b
    xor h                                         ; $40d8: $ac
    call c, $7f97                                 ; $40d9: $dc $97 $7f
    ld [c], a                                     ; $40dc: $e2
    or l                                          ; $40dd: $b5
    ld l, h                                       ; $40de: $6c
    add sp, $30                                   ; $40df: $e8 $30

jr_04e_40e1:
    ld b, a                                       ; $40e1: $47
    push hl                                       ; $40e2: $e5
    rra                                           ; $40e3: $1f
    xor h                                         ; $40e4: $ac
    ld l, c                                       ; $40e5: $69
    ld b, a                                       ; $40e6: $47
    ld b, e                                       ; $40e7: $43
    inc b                                         ; $40e8: $04
    rst $20                                       ; $40e9: $e7
    ret                                           ; $40ea: $c9


    ld [hl-], a                                   ; $40eb: $32
    xor c                                         ; $40ec: $a9
    adc c                                         ; $40ed: $89
    ld d, c                                       ; $40ee: $51
    ld d, e                                       ; $40ef: $53
    db $fc                                        ; $40f0: $fc
    inc h                                         ; $40f1: $24
    add c                                         ; $40f2: $81
    ld [$ef4f], sp                                ; $40f3: $08 $4f $ef
    or h                                          ; $40f6: $b4
    ld [$515d], a                                 ; $40f7: $ea $5d $51
    ld hl, $49fb                                  ; $40fa: $21 $fb $49
    or $95                                        ; $40fd: $f6 $95
    ei                                            ; $40ff: $fb
    inc d                                         ; $4100: $14
    ccf                                           ; $4101: $3f
    xor $d4                                       ; $4102: $ee $d4
    ld a, l                                       ; $4104: $7d
    ret z                                         ; $4105: $c8

    db $f4                                        ; $4106: $f4
    dec sp                                        ; $4107: $3b
    xor l                                         ; $4108: $ad
    ld a, d                                       ; $4109: $7a
    ld e, [hl]                                    ; $410a: $5e
    ld [$fefa], a                                 ; $410b: $ea $fa $fe
    push af                                       ; $410e: $f5
    ld e, b                                       ; $410f: $58

jr_04e_4110:
    jp hl                                         ; $4110: $e9


    adc e                                         ; $4111: $8b
    or $29                                        ; $4112: $f6 $29
    ld h, e                                       ; $4114: $63
    ld l, a                                       ; $4115: $6f
    add [hl]                                      ; $4116: $86
    dec de                                        ; $4117: $1b
    or b                                          ; $4118: $b0
    ld d, e                                       ; $4119: $53
    rst $20                                       ; $411a: $e7
    ld e, b                                       ; $411b: $58
    db $f4                                        ; $411c: $f4
    reti                                          ; $411d: $d9


    ld d, h                                       ; $411e: $54
    ld d, a                                       ; $411f: $57
    ld a, [hl-]                                   ; $4120: $3a
    ld e, l                                       ; $4121: $5d
    call $011e                                    ; $4122: $cd $1e $01
    ldh [$2e], a                                  ; $4125: $e0 $2e
    adc $1e                                       ; $4127: $ce $1e
    ld bc, $8e60                                  ; $4129: $01 $60 $8e
    db $ec                                        ; $412c: $ec
    dec [hl]                                      ; $412d: $35
    push bc                                       ; $412e: $c5
    adc e                                         ; $412f: $8b
    ld a, [de]                                    ; $4130: $1a
    add hl, hl                                    ; $4131: $29
    sbc c                                         ; $4132: $99
    call c, Call_000_1391                         ; $4133: $dc $91 $13
    ld e, [hl]                                    ; $4136: $5e
    dec bc                                        ; $4137: $0b
    dec d                                         ; $4138: $15
    ld a, $65                                     ; $4139: $3e $65
    db $ec                                        ; $413b: $ec
    call $11ec                                    ; $413c: $cd $ec $11
    rst $20                                       ; $413f: $e7
    pop hl                                        ; $4140: $e1
    dec sp                                        ; $4141: $3b
    ld a, d                                       ; $4142: $7a
    ld d, a                                       ; $4143: $57
    inc a                                         ; $4144: $3c
    halt                                          ; $4145: $76
    jp nc, Jump_04e_77a3                          ; $4146: $d2 $a3 $77

    ret z                                         ; $4149: $c8

    reti                                          ; $414a: $d9


    ret nz                                        ; $414b: $c0

    add hl, de                                    ; $414c: $19
    rst $30                                       ; $414d: $f7
    ld l, b                                       ; $414e: $68
    or $08                                        ; $414f: $f6 $08
    jr @+$2d                                      ; $4151: $18 $2b

    ld b, l                                       ; $4153: $45
    adc $06                                       ; $4154: $ce $06
    adc $b8                                       ; $4156: $ce $b8
    ld b, a                                       ; $4158: $47
    jp Jump_04e_4c0d                              ; $4159: $c3 $0d $4c


    ld [hl-], a                                   ; $415c: $32
    dec a                                         ; $415d: $3d
    ld a, h                                       ; $415e: $7c
    ld [hl], $59                                  ; $415f: $36 $59
    cp c                                          ; $4161: $b9
    rst $08                                       ; $4162: $cf
    ld h, $bb                                     ; $4163: $26 $bb
    ld [c], a                                     ; $4165: $e2
    or c                                          ; $4166: $b1
    ld c, h                                       ; $4167: $4c
    ld l, d                                       ; $4168: $6a
    adc c                                         ; $4169: $89
    db $d3                                        ; $416a: $d3
    sub d                                         ; $416b: $92
    sbc d                                         ; $416c: $9a
    adc l                                         ; $416d: $8d
    ld h, l                                       ; $416e: $65
    ld b, e                                       ; $416f: $43
    ld [hl], a                                    ; $4170: $77
    db $f4                                        ; $4171: $f4
    jp nc, Jump_04e_7b87                          ; $4172: $d2 $87 $7b

    rst $00                                       ; $4175: $c7
    ld c, $99                                     ; $4176: $0e $99
    ld c, l                                       ; $4178: $4d
    jr nz, jr_04e_417d                            ; $4179: $20 $02

    jr jr_04e_4110                                ; $417b: $18 $93

jr_04e_417d:
    ld e, $77                                     ; $417d: $1e $77
    ld [$ae81], a                                 ; $417f: $ea $81 $ae
    rst $08                                       ; $4182: $cf
    add hl, de                                    ; $4183: $19
    sub $ca                                       ; $4184: $d6 $ca
    ld a, l                                       ; $4186: $7d
    call z, $bb52                                 ; $4187: $cc $52 $bb
    ld [c], a                                     ; $418a: $e2
    ld sp, $7abd                                  ; $418b: $31 $bd $7a
    jp c, $ecd1                                   ; $418e: $da $d1 $ec

    or a                                          ; $4191: $b7
    di                                            ; $4192: $f3
    cp [hl]                                       ; $4193: $be
    add hl, hl                                    ; $4194: $29
    ld [hl-], a                                   ; $4195: $32
    dec de                                        ; $4196: $1b
    ld [hl-], a                                   ; $4197: $32
    db $ed                                        ; $4198: $ed
    add sp, $61                                   ; $4199: $e8 $61
    cp [hl]                                       ; $419b: $be
    ld c, d                                       ; $419c: $4a
    add l                                         ; $419d: $85
    jr nc, @-$74                                  ; $419e: $30 $8a

    ld l, a                                       ; $41a0: $6f
    ld l, l                                       ; $41a1: $6d
    or e                                          ; $41a2: $b3
    ld d, d                                       ; $41a3: $52
    inc h                                         ; $41a4: $24
    db $e4                                        ; $41a5: $e4
    ld l, h                                       ; $41a6: $6c
    ld [hl], $64                                  ; $41a7: $36 $64
    ld e, [hl]                                    ; $41a9: $5e
    dec a                                         ; $41aa: $3d
    xor l                                         ; $41ab: $ad
    call nz, $d0ce                                ; $41ac: $c4 $ce $d0
    reti                                          ; $41af: $d9


    dec hl                                        ; $41b0: $2b
    or l                                          ; $41b1: $b5
    call z, Call_04e_4437                         ; $41b2: $cc $37 $44
    ld c, a                                       ; $41b5: $4f
    ld hl, sp+$79                                 ; $41b6: $f8 $79
    push af                                       ; $41b8: $f5
    ld l, b                                       ; $41b9: $68
    ret                                           ; $41ba: $c9


    or h                                          ; $41bb: $b4
    ld [de], a                                    ; $41bc: $12
    dec sp                                        ; $41bd: $3b
    ld b, e                                       ; $41be: $43
    rla                                           ; $41bf: $17
    or d                                          ; $41c0: $b2
    sub e                                         ; $41c1: $93
    ld e, $9d                                     ; $41c2: $1e $9d
    xor a                                         ; $41c4: $af
    ld a, e                                       ; $41c5: $7b
    ld [hl], l                                    ; $41c6: $75
    or b                                          ; $41c7: $b0
    ld b, a                                       ; $41c8: $47
    ld c, a                                       ; $41c9: $4f
    add h                                         ; $41ca: $84
    and l                                         ; $41cb: $a5
    sub h                                         ; $41cc: $94
    sbc a                                         ; $41cd: $9f
    db $ed                                        ; $41ce: $ed
    and c                                         ; $41cf: $a1
    cp d                                          ; $41d0: $ba
    ld e, c                                       ; $41d1: $59
    db $10                                        ; $41d2: $10
    ld bc, $e1e7                                  ; $41d3: $01 $e7 $e1
    db $d3                                        ; $41d6: $d3
    xor e                                         ; $41d7: $ab
    ld b, a                                       ; $41d8: $47
    ld e, c                                       ; $41d9: $59
    add hl, hl                                    ; $41da: $29
    ld [de], a                                    ; $41db: $12
    cp [hl]                                       ; $41dc: $be
    ld [hl], h                                    ; $41dd: $74
    di                                            ; $41de: $f3
    ld h, h                                       ; $41df: $64
    daa                                           ; $41e0: $27
    dec a                                         ; $41e1: $3d
    ld a, d                                       ; $41e2: $7a
    rst $38                                       ; $41e3: $ff
    ld a, d                                       ; $41e4: $7a
    ld c, h                                       ; $41e5: $4c
    add hl, de                                    ; $41e6: $19
    ld a, e                                       ; $41e7: $7b
    inc sp                                        ; $41e8: $33
    ld b, h                                       ; $41e9: $44
    ld c, a                                       ; $41ea: $4f
    ld hl, sp+$65                                 ; $41eb: $f8 $65
    ld d, d                                       ; $41ed: $52
    or e                                          ; $41ee: $b3
    pop hl                                        ; $41ef: $e1
    res 6, c                                      ; $41f0: $cb $b1
    call nz, $f6cf                                ; $41f2: $c4 $cf $f6
    ld d, b                                       ; $41f5: $50
    db $dd                                        ; $41f6: $dd
    xor h                                         ; $41f7: $ac
    or e                                          ; $41f8: $b3
    reti                                          ; $41f9: $d9


    ldh a, [$e9]                                  ; $41fa: $f0 $e9
    push de                                       ; $41fc: $d5
    db $eb                                        ; $41fd: $eb
    jp $bc7d                                      ; $41fe: $c3 $7d $bc


    ld c, a                                       ; $4201: $4f
    inc sp                                        ; $4202: $33
    ld h, d                                       ; $4203: $62
    jr z, @+$46                                   ; $4204: $28 $44

    jr jr_04e_4233                                ; $4206: $18 $2b

    ld b, l                                       ; $4208: $45
    and [hl]                                      ; $4209: $a6
    ld d, a                                       ; $420a: $57
    rst $00                                       ; $420b: $c7
    db $ec                                        ; $420c: $ec
    ld d, l                                       ; $420d: $55
    inc hl                                        ; $420e: $23
    add [hl]                                      ; $420f: $86
    jp nc, Jump_04e_69e8                          ; $4210: $d2 $e8 $69

    dec h                                         ; $4213: $25
    dec hl                                        ; $4214: $2b
    rst $30                                       ; $4215: $f7
    and l                                         ; $4216: $a5
    rst $38                                       ; $4217: $ff
    db $dd                                        ; $4218: $dd
    ld hl, $cc92                                  ; $4219: $21 $92 $cc
    inc h                                         ; $421c: $24
    xor [hl]                                      ; $421d: $ae
    dec e                                         ; $421e: $1d
    ld l, l                                       ; $421f: $6d
    rst $38                                       ; $4220: $ff
    ld d, l                                       ; $4221: $55
    push de                                       ; $4222: $d5
    pop bc                                        ; $4223: $c1
    ld e, $01                                     ; $4224: $1e $01
    rst $20                                       ; $4226: $e7
    ret                                           ; $4227: $c9


    ld c, b                                       ; $4228: $48
    ld c, c                                       ; $4229: $49
    ld h, $b1                                     ; $422a: $26 $b1
    dec hl                                        ; $422c: $2b
    ld e, $23                                     ; $422d: $1e $23
    dec h                                         ; $422f: $25
    ei                                            ; $4230: $fb
    and c                                         ; $4231: $a1
    rst $10                                       ; $4232: $d7

jr_04e_4233:
    ld [de], a                                    ; $4233: $12
    inc e                                         ; $4234: $1c
    sbc a                                         ; $4235: $9f
    ld e, [hl]                                    ; $4236: $5e
    halt                                          ; $4237: $76
    sbc h                                         ; $4238: $9c
    ld sp, hl                                     ; $4239: $f9
    ld h, h                                       ; $423a: $64
    ld sp, hl                                     ; $423b: $f9
    ld d, b                                       ; $423c: $50
    pop de                                        ; $423d: $d1
    db $10                                        ; $423e: $10
    ld bc, $8e60                                  ; $423f: $01 $60 $8e
    db $ec                                        ; $4242: $ec
    or l                                          ; $4243: $b5
    db $ec                                        ; $4244: $ec
    push hl                                       ; $4245: $e5
    rst $10                                       ; $4246: $d7
    ret z                                         ; $4247: $c8

    adc [hl]                                      ; $4248: $8e
    sbc $83                                       ; $4249: $de $83
    ld d, c                                       ; $424b: $51
    adc h                                         ; $424c: $8c
    xor d                                         ; $424d: $aa
    dec a                                         ; $424e: $3d
    jp $6601                                      ; $424f: $c3 $01 $66


    ld sp, hl                                     ; $4252: $f9
    inc c                                         ; $4253: $0c
    sbc l                                         ; $4254: $9d
    rst $18                                       ; $4255: $df
    rst $38                                       ; $4256: $ff
    rst $30                                       ; $4257: $f7
    ld h, b                                       ; $4258: $60
    inc d                                         ; $4259: $14
    and e                                         ; $425a: $a3
    ld l, d                                       ; $425b: $6a
    rst $08                                       ; $425c: $cf
    db $e4                                        ; $425d: $e4
    rra                                           ; $425e: $1f
    ld d, [hl]                                    ; $425f: $56
    jp z, $ef46                                   ; $4260: $ca $46 $ef

    adc d                                         ; $4263: $8a
    sub h                                         ; $4264: $94
    ld c, h                                       ; $4265: $4c
    xor $c8                                       ; $4266: $ee $c8
    cp a                                          ; $4268: $bf
    ld a, d                                       ; $4269: $7a
    db $f4                                        ; $426a: $f4
    ld c, d                                       ; $426b: $4a
    sbc a                                         ; $426c: $9f
    di                                            ; $426d: $f3
    ld a, [hl+]                                   ; $426e: $2a
    inc e                                         ; $426f: $1c
    ld [hl+], a                                   ; $4270: $22
    ld c, a                                       ; $4271: $4f
    adc d                                         ; $4272: $8a
    cp $ca                                        ; $4273: $fe $ca
    db $eb                                        ; $4275: $eb
    ld b, h                                       ; $4276: $44
    ld a, h                                       ; $4277: $7c
    inc [hl]                                      ; $4278: $34
    sbc b                                         ; $4279: $98
    ld h, a                                       ; $427a: $67
    xor e                                         ; $427b: $ab
    rst $38                                       ; $427c: $ff
    xor a                                         ; $427d: $af
    ld h, [hl]                                    ; $427e: $66
    ld [hl], b                                    ; $427f: $70
    adc b                                         ; $4280: $88
    nop                                           ; $4281: $00
    ld c, a                                       ; $4282: $4f
    rst $28                                       ; $4283: $ef
    cp h                                          ; $4284: $bc
    ld a, d                                       ; $4285: $7a
    ld l, c                                       ; $4286: $69
    sbc $ab                                       ; $4287: $de $ab
    and l                                         ; $4289: $a5
    and [hl]                                      ; $428a: $a6
    dec e                                         ; $428b: $1d
    ld a, l                                       ; $428c: $7d
    cp c                                          ; $428d: $b9
    and $65                                       ; $428e: $e6 $65
    daa                                           ; $4290: $27
    dec a                                         ; $4291: $3d
    ld a, d                                       ; $4292: $7a
    sbc c                                         ; $4293: $99
    ld a, c                                       ; $4294: $79
    sub d                                         ; $4295: $92
    ld sp, hl                                     ; $4296: $f9
    db $fd                                        ; $4297: $fd
    ld a, a                                       ; $4298: $7f
    rrca                                          ; $4299: $0f
    ld b, [hl]                                    ; $429a: $46
    ld sp, $f6aa                                  ; $429b: $31 $aa $f6
    inc c                                         ; $429e: $0c
    rst $30                                       ; $429f: $f7
    ret nz                                        ; $42a0: $c0

    rst $38                                       ; $42a1: $ff
    ccf                                           ; $42a2: $3f
    db $ed                                        ; $42a3: $ed
    db $10                                        ; $42a4: $10
    dec de                                        ; $42a5: $1b
    dec a                                         ; $42a6: $3d
    ld a, [hl]                                    ; $42a7: $7e
    call c, Call_000_3dc9                         ; $42a8: $dc $c9 $3d
    ld a, d                                       ; $42ab: $7a
    ld [hl], a                                    ; $42ac: $77
    ld l, c                                       ; $42ad: $69
    sbc $ab                                       ; $42ae: $de $ab
    and l                                         ; $42b0: $a5
    add $2f                                       ; $42b1: $c6 $2f
    rst $38                                       ; $42b3: $ff
    inc bc                                        ; $42b4: $03
    xor a                                         ; $42b5: $af
    ld e, l                                       ; $42b6: $5d
    pop af                                        ; $42b7: $f1
    sbc b                                         ; $42b8: $98
    or a                                          ; $42b9: $b7
    ld sp, hl                                     ; $42ba: $f9
    ccf                                           ; $42bb: $3f
    ld a, e                                       ; $42bc: $7b
    jp hl                                         ; $42bd: $e9


    push de                                       ; $42be: $d5
    ld d, d                                       ; $42bf: $52
    cp e                                          ; $42c0: $bb
    db $d3                                        ; $42c1: $d3
    bit 3, l                                      ; $42c2: $cb $5d
    jp nz, $9ee1                                  ; $42c4: $c2 $e1 $9e

    sbc $9c                                       ; $42c7: $de $9c
    ld a, l                                       ; $42c9: $7d
    call z, $1b3a                                 ; $42ca: $cc $3a $1b
    cp a                                          ; $42cd: $bf
    inc e                                         ; $42ce: $1c
    ld c, e                                       ; $42cf: $4b
    ld [hl], b                                    ; $42d0: $70
    ld a, h                                       ; $42d1: $7c
    call c, $c7a9                                 ; $42d2: $dc $a9 $c7
    inc a                                         ; $42d5: $3c
    call c, $fd23                                 ; $42d6: $dc $23 $fd
    adc a                                         ; $42d9: $8f
    inc d                                         ; $42da: $14
    pop hl                                        ; $42db: $e1
    ld l, [hl]                                    ; $42dc: $6e
    ld h, $d5                                     ; $42dd: $26 $d5
    db $e3                                        ; $42df: $e3
    ld d, a                                       ; $42e0: $57
    ld h, d                                       ; $42e1: $62
    cp e                                          ; $42e2: $bb
    sub [hl]                                      ; $42e3: $96
    db $dd                                        ; $42e4: $dd
    ld [hl], h                                    ; $42e5: $74
    adc l                                         ; $42e6: $8d
    ld a, [de]                                    ; $42e7: $1a
    ret                                           ; $42e8: $c9


    ld e, $0d                                     ; $42e9: $1e $0d
    ld de, $dc4f                                  ; $42eb: $11 $4f $dc
    ld [hl], h                                    ; $42ee: $74
    adc l                                         ; $42ef: $8d
    ld a, [de]                                    ; $42f0: $1a
    ret                                           ; $42f1: $c9


    ld e, $fd                                     ; $42f2: $1e $fd
    ld [$8f01], sp                                ; $42f4: $08 $01 $8f
    ld c, e                                       ; $42f7: $4b
    db $ed                                        ; $42f8: $ed
    inc h                                         ; $42f9: $24
    sbc c                                         ; $42fa: $99
    ld d, h                                       ; $42fb: $54
    xor a                                         ; $42fc: $af
    call c, Call_000_2cc7                         ; $42fd: $dc $c7 $2c
    dec [hl]                                      ; $4300: $35
    sub d                                         ; $4301: $92
    adc b                                         ; $4302: $88
    adc l                                         ; $4303: $8d
    add hl, bc                                    ; $4304: $09
    xor a                                         ; $4305: $af
    cp d                                          ; $4306: $ba
    and $6d                                       ; $4307: $e6 $6d
    cp $e7                                        ; $4309: $fe $e7
    ld c, h                                       ; $430b: $4c
    db $d3                                        ; $430c: $d3
    rra                                           ; $430d: $1f
    dec c                                         ; $430e: $0d
    ld de, $fce7                                  ; $430f: $11 $e7 $fc
    inc d                                         ; $4312: $14
    rst $18                                       ; $4313: $df
    db $d3                                        ; $4314: $d3
    rst $28                                       ; $4315: $ef
    db $fc                                        ; $4316: $fc
    cp $bf                                        ; $4317: $fe $bf
    inc [hl]                                      ; $4319: $34
    rst $28                                       ; $431a: $ef
    push de                                       ; $431b: $d5
    ld d, d                                       ; $431c: $52
    db $10                                        ; $431d: $10
    ld bc, $31e7                                  ; $431e: $01 $e7 $31
    cp l                                          ; $4321: $bd
    ld b, [hl]                                    ; $4322: $46
    xor a                                         ; $4323: $af
    db $e4                                        ; $4324: $e4
    ld [de], a                                    ; $4325: $12
    ld e, c                                       ; $4326: $59
    add d                                         ; $4327: $82
    db $e3                                        ; $4328: $e3
    ld e, h                                       ; $4329: $5c
    rst $18                                       ; $432a: $df
    ld c, h                                       ; $432b: $4c
    ld c, d                                       ; $432c: $4a
    ld l, h                                       ; $432d: $6c
    ret nz                                        ; $432e: $c0

    ld bc, $9aee                                  ; $432f: $01 $ee $9a
    ld h, d                                       ; $4332: $62
    sbc d                                         ; $4333: $9a
    or $b3                                        ; $4334: $f6 $b3
    dec a                                         ; $4336: $3d
    ld d, h                                       ; $4337: $54
    scf                                           ; $4338: $37
    dec bc                                        ; $4339: $0b
    ld [hl+], a                                   ; $433a: $22
    adc a                                         ; $433b: $8f
    ld c, e                                       ; $433c: $4b
    dec l                                         ; $433d: $2d
    ld e, l                                       ; $433e: $5d
    ld e, l                                       ; $433f: $5d
    db $10                                        ; $4340: $10
    ld b, d                                       ; $4341: $42
    adc l                                         ; $4342: $8d
    ld d, d                                       ; $4343: $52
    ld [$57a1], sp                                ; $4344: $08 $a1 $57
    adc d                                         ; $4347: $8a
    ld b, b                                       ; $4348: $40
    inc b                                         ; $4349: $04
    ld h, b                                       ; $434a: $60
    sub d                                         ; $434b: $92
    push bc                                       ; $434c: $c5
    ld l, h                                       ; $434d: $6c
    call z, $ca96                                 ; $434e: $cc $96 $ca
    db $e3                                        ; $4351: $e3
    ld c, [hl]                                    ; $4352: $4e
    cp l                                          ; $4353: $bd
    sub b                                         ; $4354: $90
    ld [hl], l                                    ; $4355: $75
    ld h, l                                       ; $4356: $65
    ld [hl-], a                                   ; $4357: $32
    cp h                                          ; $4358: $bc
    dec c                                         ; $4359: $0d
    dec c                                         ; $435a: $0d
    add hl, hl                                    ; $435b: $29
    dec sp                                        ; $435c: $3b
    dec d                                         ; $435d: $15
    ld h, d                                       ; $435e: $62
    add sp, -$48                                  ; $435f: $e8 $b8
    ld b, e                                       ; $4361: $43
    ld d, h                                       ; $4362: $54
    db $fc                                        ; $4363: $fc
    inc e                                         ; $4364: $1c
    ld a, [de]                                    ; $4365: $1a
    rst $38                                       ; $4366: $ff

Jump_04e_4367:
    ld c, l                                       ; $4367: $4d
    ld c, e                                       ; $4368: $4b
    adc l                                         ; $4369: $8d
    sbc a                                         ; $436a: $9f
    pop bc                                        ; $436b: $c1
    pop af                                        ; $436c: $f1
    ld sp, hl                                     ; $436d: $f9
    db $fd                                        ; $436e: $fd
    ld a, a                                       ; $436f: $7f
    rrca                                          ; $4370: $0f
    ld b, [hl]                                    ; $4371: $46
    ld sp, $f6aa                                  ; $4372: $31 $aa $f6
    inc c                                         ; $4375: $0c
    ld de, $c9e7                                  ; $4376: $11 $e7 $c9
    db $ec                                        ; $4379: $ec
    pop de                                        ; $437a: $d1
    ld h, a                                       ; $437b: $67
    db $d3                                        ; $437c: $d3
    xor d                                         ; $437d: $aa
    ld h, a                                       ; $437e: $67
    sub e                                         ; $437f: $93
    reti                                          ; $4380: $d9


    dec hl                                        ; $4381: $2b
    jp $dacb                                      ; $4382: $c3 $cb $da


    ld a, d                                       ; $4385: $7a
    add h                                         ; $4386: $84
    nop                                           ; $4387: $00
    adc a                                         ; $4388: $8f
    db $eb                                        ; $4389: $eb
    ld l, h                                       ; $438a: $6c
    jr jr_04e_43c8                                ; $438b: $18 $3b

    ld [hl], h                                    ; $438d: $74
    db $d3                                        ; $438e: $d3
    dec sp                                        ; $438f: $3b
    ld a, d                                       ; $4390: $7a
    jp c, Jump_04e_67d1                           ; $4391: $da $d1 $67

    di                                            ; $4394: $f3
    ld c, d                                       ; $4395: $4a
    sub c                                         ; $4396: $91
    ld [hl], c                                    ; $4397: $71
    and a                                         ; $4398: $a7
    ld e, [hl]                                    ; $4399: $5e
    cp c                                          ; $439a: $b9
    rst $08                                       ; $439b: $cf
    ld h, $e3                                     ; $439c: $26 $e3
    sbc d                                         ; $439e: $9a
    ld d, a                                       ; $439f: $57
    ld h, l                                       ; $43a0: $65
    inc bc                                        ; $43a1: $03
    ld [hl+], a                                   ; $43a2: $22
    add b                                         ; $43a3: $80
    cp e                                          ; $43a4: $bb
    ldh [rNR34], a                                ; $43a5: $e0 $1e
    ld hl, sp-$01                                 ; $43a7: $f8 $ff
    rla                                           ; $43a9: $17
    dec a                                         ; $43aa: $3d
    add hl, sp                                    ; $43ab: $39
    cp d                                          ; $43ac: $ba
    ld b, [hl]                                    ; $43ad: $46
    add e                                         ; $43ae: $83
    add hl, sp                                    ; $43af: $39
    ld a, [hl]                                    ; $43b0: $7e
    ld a, d                                       ; $43b1: $7a
    adc c                                         ; $43b2: $89
    db $ed                                        ; $43b3: $ed
    jp c, $8f15                                   ; $43b4: $da $15 $8f

    ld e, l                                       ; $43b7: $5d
    db $fd                                        ; $43b8: $fd
    ld d, b                                       ; $43b9: $50
    ld [hl], b                                    ; $43ba: $70
    rst $20                                       ; $43bb: $e7
    ld sp, $8aee                                  ; $43bc: $31 $ee $8a
    db $e4                                        ; $43bf: $e4
    push hl                                       ; $43c0: $e5
    ld a, a                                       ; $43c1: $7f
    ld b, l                                       ; $43c2: $45
    ld [hl], l                                    ; $43c3: $75
    adc c                                         ; $43c4: $89
    adc l                                         ; $43c5: $8d
    or e                                          ; $43c6: $b3
    db $fd                                        ; $43c7: $fd

jr_04e_43c8:
    inc hl                                        ; $43c8: $23
    sub e                                         ; $43c9: $93
    xor e                                         ; $43ca: $ab
    ld l, d                                       ; $43cb: $6a
    add $8f                                       ; $43cc: $c6 $8f
    inc d                                         ; $43ce: $14
    cp c                                          ; $43cf: $b9
    and d                                         ; $43d0: $a2
    xor d                                         ; $43d1: $aa
    sub a                                         ; $43d2: $97
    ld a, b                                       ; $43d3: $78
    add hl, bc                                    ; $43d4: $09
    ld [hl], a                                    ; $43d5: $77
    ld [$bf65], a                                 ; $43d6: $ea $65 $bf
    ld a, [hl+]                                   ; $43d9: $2a
    inc b                                         ; $43da: $04
    xor $89                                       ; $43db: $ee $89
    ld [hl], a                                    ; $43dd: $77
    ld [hl+], a                                   ; $43de: $22
    ld e, [hl]                                    ; $43df: $5e
    cp e                                          ; $43e0: $bb
    dec hl                                        ; $43e1: $2b
    rst $30                                       ; $43e2: $f7
    reti                                          ; $43e3: $d9


    jr jr_04e_440f                                ; $43e4: $18 $29

    add hl, de                                    ; $43e6: $19
    ld [hl], a                                    ; $43e7: $77
    ld b, l                                       ; $43e8: $45
    ld a, [hl+]                                   ; $43e9: $2a
    cpl                                           ; $43ea: $2f
    sub e                                         ; $43eb: $93
    ld [hl], d                                    ; $43ec: $72
    adc a                                         ; $43ed: $8f
    sbc $3f                                       ; $43ee: $de $3f
    ld b, h                                       ; $43f0: $44
    push hl                                       ; $43f1: $e5
    push hl                                       ; $43f2: $e5
    ld l, e                                       ; $43f3: $6b
    dec c                                         ; $43f4: $0d
    ld sp, $d7dd                                  ; $43f5: $31 $dd $d7
    sbc d                                         ; $43f8: $9a
    adc [hl]                                      ; $43f9: $8e
    sub [hl]                                      ; $43fa: $96
    add d                                         ; $43fb: $82
    dec sp                                        ; $43fc: $3b
    rst $20                                       ; $43fd: $e7
    and a                                         ; $43fe: $a7
    ld hl, sp-$62                                 ; $43ff: $f8 $9e
    ld a, [hl]                                    ; $4401: $7e
    ld hl, $e702                                  ; $4402: $21 $02 $e7
    ld b, a                                       ; $4405: $47

Call_04e_4406:
    cpl                                           ; $4406: $2f
    ld h, [hl]                                    ; $4407: $66
    inc de                                        ; $4408: $13
    or $03                                        ; $4409: $f6 $03
    halt                                          ; $440b: $76
    ld [$227c], a                                 ; $440c: $ea $7c $22

jr_04e_440f:
    db $d3                                        ; $440f: $d3
    ld c, $51                                     ; $4410: $0e $51
    dec [hl]                                      ; $4412: $35
    ld a, [de]                                    ; $4413: $1a
    db $ec                                        ; $4414: $ec
    ld de, $b1e7                                  ; $4415: $11 $e7 $b1
    ret c                                         ; $4418: $d8

    dec d                                         ; $4419: $15
    adc a                                         ; $441a: $8f
    push hl                                       ; $441b: $e5
    add e                                         ; $441c: $83
    ld b, h                                       ; $441d: $44
    ei                                            ; $441e: $fb
    ld hl, sp+$29                                 ; $441f: $f8 $29
    ld a, [hl]                                    ; $4421: $7e
    ld hl, $e8b9                                  ; $4422: $21 $b9 $e8
    reti                                          ; $4425: $d9


    ld e, $aa                                     ; $4426: $1e $aa
    sbc e                                         ; $4428: $9b
    dec b                                         ; $4429: $05
    ld de, $870f                                  ; $442a: $11 $0f $87
    xor b                                         ; $442d: $a8
    pop de                                        ; $442e: $d1
    jr c, jr_04e_444c                             ; $442f: $38 $1b

    or e                                          ; $4431: $b3
    and [hl]                                      ; $4432: $a6
    ld d, l                                       ; $4433: $55
    rst $28                                       ; $4434: $ef
    adc d                                         ; $4435: $8a
    ld a, [bc]                                    ; $4436: $0a

Call_04e_4437:
    reti                                          ; $4437: $d9


    ld c, a                                       ; $4438: $4f
    or d                                          ; $4439: $b2
    adc a                                         ; $443a: $8f

Call_04e_443b:
    sbc a                                         ; $443b: $9f
    halt                                          ; $443c: $76
    ld d, b                                       ; $443d: $50
    xor a                                         ; $443e: $af
    dec b                                         ; $443f: $05
    rst $20                                       ; $4440: $e7
    pop de                                        ; $4441: $d1
    ld sp, hl                                     ; $4442: $f9
    rra                                           ; $4443: $1f
    ld [c], a                                     ; $4444: $e2
    ld e, l                                       ; $4445: $5d
    dec e                                         ; $4446: $1d
    db $10                                        ; $4447: $10
    ld bc, $6b8f                                  ; $4448: $01 $8f $6b
    ld a, d                                       ; $444b: $7a

jr_04e_444c:
    call $f9b4                                    ; $444c: $cd $b4 $f9
    ld d, a                                       ; $444f: $57
    adc l                                         ; $4450: $8d
    dec sp                                        ; $4451: $3b
    push af                                       ; $4452: $f5
    db $ec                                        ; $4453: $ec
    ld d, l                                       ; $4454: $55
    ld h, a                                       ; $4455: $67
    ld a, e                                       ; $4456: $7b
    xor b                                         ; $4457: $a8
    ld l, [hl]                                    ; $4458: $6e
    ld d, $44                                     ; $4459: $16 $44
    rst $20                                       ; $445b: $e7
    or c                                          ; $445c: $b1
    ret c                                         ; $445d: $d8

    dec d                                         ; $445e: $15
    adc a                                         ; $445f: $8f
    push hl                                       ; $4460: $e5
    sub h                                         ; $4461: $94
    add $ca                                       ; $4462: $c6 $ca
    ld a, $7e                                     ; $4464: $3e $7e
    add hl, de                                    ; $4466: $19
    cpl                                           ; $4467: $2f
    rst $08                                       ; $4468: $cf
    pop de                                        ; $4469: $d1
    or l                                          ; $446a: $b5
    xor e                                         ; $446b: $ab

jr_04e_446c:
    rra                                           ; $446c: $1f
    ld l, d                                       ; $446d: $6a
    db $fc                                        ; $446e: $fc
    call nc, $6ba9                                ; $446f: $d4 $a9 $6b
    reti                                          ; $4472: $d9


    dec hl                                        ; $4473: $2b
    ld b, l                                       ; $4474: $45
    xor d                                         ; $4475: $aa
    di                                            ; $4476: $f3
    ld e, $4a                                     ; $4477: $1e $4a
    push af                                       ; $4479: $f5
    or l                                          ; $447a: $b5
    inc sp                                        ; $447b: $33
    ld l, l                                       ; $447c: $6d
    cp $55                                        ; $447d: $fe $55
    ld h, a                                       ; $447f: $67
    ld a, e                                       ; $4480: $7b
    xor b                                         ; $4481: $a8
    ld l, [hl]                                    ; $4482: $6e
    ld d, $44                                     ; $4483: $16 $44
    add b                                         ; $4485: $80
    cp $af                                        ; $4486: $fe $af
    sub l                                         ; $4488: $95
    ret c                                         ; $4489: $d8

    xor [hl]                                      ; $448a: $ae
    ld l, c                                       ; $448b: $69
    push de                                       ; $448c: $d5
    db $eb                                        ; $448d: $eb
    or b                                          ; $448e: $b0
    dec h                                         ; $448f: $25
    inc hl                                        ; $4490: $23
    add [hl]                                      ; $4491: $86
    jp nc, $bbeb                                  ; $4492: $d2 $eb $bb

    ld [bc], a                                    ; $4495: $02
    ld de, $c9e7                                  ; $4496: $11 $e7 $c9
    ld h, d                                       ; $4499: $62
    ld a, [$1dd1]                                 ; $449a: $fa $d1 $1d
    jp $f1f9                                      ; $449d: $c3 $f9 $f1


    ld d, e                                       ; $44a0: $53
    db $fc                                        ; $44a1: $fc
    db $f4                                        ; $44a2: $f4
    ei                                            ; $44a3: $fb
    ld [hl], e                                    ; $44a4: $73
    db $ec                                        ; $44a5: $ec
    sub b                                         ; $44a6: $90
    add c                                         ; $44a7: $81
    add hl, bc                                    ; $44a8: $09
    db $fd                                        ; $44a9: $fd
    cp $1f                                        ; $44aa: $fe $1f
    ld a, c                                       ; $44ac: $79
    ld a, b                                       ; $44ad: $78
    ld e, c                                       ; $44ae: $59
    ld e, e                                       ; $44af: $5b
    ld h, a                                       ; $44b0: $67
    ld a, e                                       ; $44b1: $7b
    xor b                                         ; $44b2: $a8
    ld l, [hl]                                    ; $44b3: $6e
    ld d, $7b                                     ; $44b4: $16 $7b
    inc b                                         ; $44b6: $04
    ld c, a                                       ; $44b7: $4f
    rst $28                                       ; $44b8: $ef
    ld h, d                                       ; $44b9: $62
    ld e, c                                       ; $44ba: $59
    xor d                                         ; $44bb: $aa
    ld a, l                                       ; $44bc: $7d
    ld e, h                                       ; $44bd: $5c
    rla                                           ; $44be: $17
    and l                                         ; $44bf: $a5
    ld [hl], c                                    ; $44c0: $71
    ld [hl], $43                                  ; $44c1: $36 $43
    ld d, a                                       ; $44c3: $57
    rst $38                                       ; $44c4: $ff
    rst $10                                       ; $44c5: $d7
    inc [hl]                                      ; $44c6: $34
    cp $ff                                        ; $44c7: $fe $ff
    add sp, $5d                                   ; $44c9: $e8 $5d

jr_04e_44cb:
    call Call_000_10e0                            ; $44cb: $cd $e0 $10
    ld bc, $fe4f                                  ; $44ce: $01 $4f $fe
    add c                                         ; $44d1: $81
    rst $10                                       ; $44d2: $d7
    xor [hl]                                      ; $44d3: $ae
    ld a, b                                       ; $44d4: $78
    adc h                                         ; $44d5: $8c
    dec sp                                        ; $44d6: $3b
    cp c                                          ; $44d7: $b9
    ld b, a                                       ; $44d8: $47
    ld c, e                                       ; $44d9: $4b
    dec l                                         ; $44da: $2d
    jr c, jr_04e_446c                             ; $44db: $38 $8f

    ld e, [hl]                                    ; $44dd: $5e
    inc [hl]                                      ; $44de: $34
    add h                                         ; $44df: $84
    ld d, b                                       ; $44e0: $50
    ld a, b                                       ; $44e1: $78
    rra                                           ; $44e2: $1f
    add hl, hl                                    ; $44e3: $29
    sbc c                                         ; $44e4: $99
    rst $10                                       ; $44e5: $d7
    cp h                                          ; $44e6: $bc
    call nc, $acee                                ; $44e7: $d4 $ee $ac
    and c                                         ; $44ea: $a1
    db $10                                        ; $44eb: $10
    ld bc, $7160                                  ; $44ec: $01 $60 $71
    sbc h                                         ; $44ef: $9c
    dec sp                                        ; $44f0: $3b
    push af                                       ; $44f1: $f5
    cp h                                          ; $44f2: $bc
    dec bc                                        ; $44f3: $0b
    rst $00                                       ; $44f4: $c7
    ld c, l                                       ; $44f5: $4d
    ld c, e                                       ; $44f6: $4b
    sbc l                                         ; $44f7: $9d
    dec l                                         ; $44f8: $2d
    di                                            ; $44f9: $f3
    adc e                                         ; $44fa: $8b
    jp hl                                         ; $44fb: $e9


    ld [hl], a                                    ; $44fc: $77
    ld e, h                                       ; $44fd: $5c
    rla                                           ; $44fe: $17
    and l                                         ; $44ff: $a5
    ld sp, $dafd                                  ; $4500: $31 $fd $da
    dec a                                         ; $4503: $3d
    jr jr_04e_44cb                                ; $4504: $18 $c5

    xor b                                         ; $4506: $a8
    jp c, Jump_04e_70f3                           ; $4507: $da $f3 $70

    ld a, [hl]                                    ; $450a: $7e
    ld a, l                                       ; $450b: $7d
    adc c                                         ; $450c: $89
    ld e, a                                       ; $450d: $5f
    push hl                                       ; $450e: $e5
    db $10                                        ; $450f: $10
    ld bc, $4ec0                                  ; $4510: $01 $c0 $4e
    sbc l                                         ; $4513: $9d
    cp l                                          ; $4514: $bd
    ld hl, sp-$32                                 ; $4515: $f8 $ce
    pop af                                        ; $4517: $f1
    ld b, e                                       ; $4518: $43
    adc a                                         ; $4519: $8f
    sub [hl]                                      ; $451a: $96
    ld a, [hl-]                                   ; $451b: $3a
    dec de                                        ; $451c: $1b
    sbc $86                                       ; $451d: $de $86
    adc e                                         ; $451f: $8b
    sbc h                                         ; $4520: $9c
    ld c, l                                       ; $4521: $4d
    rrca                                          ; $4522: $0f
    ld [hl], h                                    ; $4523: $74
    ld a, [bc]                                    ; $4524: $0a
    cp b                                          ; $4525: $b8
    sub c                                         ; $4526: $91
    ld d, d                                       ; $4527: $52
    push af                                       ; $4528: $f5
    ccf                                           ; $4529: $3f
    ld b, h                                       ; $452a: $44
    ld c, a                                       ; $452b: $4f
    adc a                                         ; $452c: $8f
    ld c, a                                       ; $452d: $4f
    inc c                                         ; $452e: $0c
    sub l                                         ; $452f: $95
    sbc d                                         ; $4530: $9a
    rst $18                                       ; $4531: $df
    rst $38                                       ; $4532: $ff
    rst $30                                       ; $4533: $f7
    ld h, b                                       ; $4534: $60
    inc d                                         ; $4535: $14
    and e                                         ; $4536: $a3
    ld l, d                                       ; $4537: $6a
    rst $08                                       ; $4538: $cf
    ld [hl], b                                    ; $4539: $70
    ld c, a                                       ; $453a: $4f
    ld c, h                                       ; $453b: $4c
    ld a, e                                       ; $453c: $7b
    db $f4                                        ; $453d: $f4
    dec d                                         ; $453e: $15
    sub l                                         ; $453f: $95
    ld d, e                                       ; $4540: $53
    pop de                                        ; $4541: $d1
    ld b, c                                       ; $4542: $41
    adc l                                         ; $4543: $8d
    ld e, h                                       ; $4544: $5c
    ld e, c                                       ; $4545: $59
    ld a, [$ccd4]                                 ; $4546: $fa $d4 $cc
    ld [$a965], a                                 ; $4549: $ea $65 $a9
    or $99                                        ; $454c: $f6 $99
    sub h                                         ; $454e: $94
    ld [hl], $cb                                  ; $454f: $36 $cb
    cpl                                           ; $4551: $2f
    db $fd                                        ; $4552: $fd
    ld l, a                                       ; $4553: $6f
    ld c, a                                       ; $4554: $4f
    xor $f0                                       ; $4555: $ee $f0
    ld e, a                                       ; $4557: $5f
    xor c                                         ; $4558: $a9
    add sp, -$4e                                  ; $4559: $e8 $b2
    or c                                          ; $455b: $b1
    cp e                                          ; $455c: $bb
    ld [hl], b                                    ; $455d: $70
    ld e, a                                       ; $455e: $5f
    jp hl                                         ; $455f: $e9


    db $d3                                        ; $4560: $d3
    ld sp, hl                                     ; $4561: $f9
    xor [hl]                                      ; $4562: $ae

jr_04e_4563:
    push bc                                       ; $4563: $c5
    rrca                                          ; $4564: $0f
    ld e, l                                       ; $4565: $5d
    dec bc                                        ; $4566: $0b
    ld a, [$80fe]                                 ; $4567: $fa $fe $80
    scf                                           ; $456a: $37
    adc e                                         ; $456b: $8b
    db $e3                                        ; $456c: $e3
    xor [hl]                                      ; $456d: $ae
    ld e, b                                       ; $456e: $58
    db $d3                                        ; $456f: $d3
    ld h, a                                       ; $4570: $67
    ld a, e                                       ; $4571: $7b
    ld c, b                                       ; $4572: $48
    jr c, jr_04e_4563                             ; $4573: $38 $ee

    rlca                                          ; $4575: $07
    sbc [hl]                                      ; $4576: $9e

Call_04e_4577:
Jump_04e_4577:
    ld [hl], b                                    ; $4577: $70
    call c, Call_000_30d9                         ; $4578: $dc $d9 $30
    sub h                                         ; $457b: $94
    ld e, $92                                     ; $457c: $1e $92
    ld a, [$e8c5]                                 ; $457e: $fa $c5 $e8
    ld l, h                                       ; $4581: $6c
    pop af                                        ; $4582: $f1
    ld a, a                                       ; $4583: $7f
    db $f4                                        ; $4584: $f4
    sbc [hl]                                      ; $4585: $9e
    ld a, h                                       ; $4586: $7c
    sub [hl]                                      ; $4587: $96
    ld l, e                                       ; $4588: $6b
    pop de                                        ; $4589: $d1
    ld d, a                                       ; $458a: $57
    ldh [$c0], a                                  ; $458b: $e0 $c0
    call c, $4311                                 ; $458d: $dc $11 $43
    ld l, c                                       ; $4590: $69
    db $f4                                        ; $4591: $f4
    jp z, $ff7d                                   ; $4592: $ca $7d $ff

    ret z                                         ; $4595: $c8

    dec [hl]                                      ; $4596: $35
    sub e                                         ; $4597: $93
    jp nc, $8d96                                  ; $4598: $d2 $96 $8d

    ld e, [hl]                                    ; $459b: $5e
    cp e                                          ; $459c: $bb
    adc e                                         ; $459d: $8b
    or $c5                                        ; $459e: $f6 $c5
    rrca                                          ; $45a0: $0f
    ld e, l                                       ; $45a1: $5d
    dec bc                                        ; $45a2: $0b
    ld a, [bc]                                    ; $45a3: $0a
    rlca                                          ; $45a4: $07
    ld [hl], $a5                                  ; $45a5: $36 $a5
    call Call_04e_70c6                            ; $45a7: $cd $c6 $70
    ld [hl], e                                    ; $45aa: $73
    adc b                                         ; $45ab: $88
    sbc d                                         ; $45ac: $9a
    call c, Call_04e_57e9                         ; $45ad: $dc $e9 $57
    inc h                                         ; $45b0: $24
    ld a, d                                       ; $45b1: $7a
    cp h                                          ; $45b2: $bc
    cpl                                           ; $45b3: $2f
    jp c, $3f17                                   ; $45b4: $da $17 $3f

    ld [hl], h                                    ; $45b7: $74
    dec l                                         ; $45b8: $2d
    add sp, $48                                   ; $45b9: $e8 $48
    ret                                           ; $45bb: $c9


    call nc, $6ba9                                ; $45bc: $d4 $a9 $6b
    push hl                                       ; $45bf: $e5
    ld a, $b9                                     ; $45c0: $3e $b9
    di                                            ; $45c2: $f3
    ld [$4169], a                                 ; $45c3: $ea $69 $41
    rla                                           ; $45c6: $17
    ccf                                           ; $45c7: $3f
    ld [hl], h                                    ; $45c8: $74
    dec l                                         ; $45c9: $2d
    ld l, b                                       ; $45ca: $68
    add $0d                                       ; $45cb: $c6 $0d
    xor c                                         ; $45cd: $a9
    rra                                           ; $45ce: $1f
    ld [bc], a                                    ; $45cf: $02
    ld de, $72e0                                  ; $45d0: $11 $e0 $72
    halt                                          ; $45d3: $76
    ld [$5ea1], sp                                ; $45d4: $08 $a1 $5e
    halt                                          ; $45d7: $76
    ld b, a                                       ; $45d8: $47
    rst $08                                       ; $45d9: $cf
    add [hl]                                      ; $45da: $86
    adc a                                         ; $45db: $8f
    dec sp                                        ; $45dc: $3b
    push af                                       ; $45dd: $f5
    ld [hl], b                                    ; $45de: $70
    ld [hl], e                                    ; $45df: $73
    adc b                                         ; $45e0: $88
    ld a, d                                       ; $45e1: $7a
    add h                                         ; $45e2: $84
    nop                                           ; $45e3: $00
    and b                                         ; $45e4: $a0
    ld c, e                                       ; $45e5: $4b
    add $f1                                       ; $45e6: $c6 $f1
    dec a                                         ; $45e8: $3d
    call c, $a21c                                 ; $45e9: $dc $1c $a2
    ld h, $47                                     ; $45ec: $26 $47
    adc a                                         ; $45ee: $8f
    sub [hl]                                      ; $45ef: $96
    ld c, h                                       ; $45f0: $4c
    sbc l                                         ; $45f1: $9d
    ld a, d                                       ; $45f2: $7a
    jp nz, $e32b                                  ; $45f3: $c2 $2b $e3

    ld c, e                                       ; $45f6: $4b
    ld [hl], a                                    ; $45f7: $77
    sbc l                                         ; $45f8: $9d

Jump_04e_45f9:
    call $b4a4                                    ; $45f9: $cd $a4 $b4
    ld [hl], c                                    ; $45fc: $71
    and a                                         ; $45fd: $a7
    cp $a6                                        ; $45fe: $fe $a6
    xor e                                         ; $4600: $ab
    add a                                         ; $4601: $87
    sbc e                                         ; $4602: $9b
    ld b, e                                       ; $4603: $43
    call nc, $e8e4                                ; $4604: $d4 $e4 $e8
    pop de                                        ; $4607: $d1
    sub d                                         ; $4608: $92
    and l                                         ; $4609: $a5
    sbc e                                         ; $460a: $9b
    push hl                                       ; $460b: $e5
    pop de                                        ; $460c: $d1
    and e                                         ; $460d: $a3
    add $d7                                       ; $460e: $c6 $d7
    and c                                         ; $4610: $a1
    ld a, [hl]                                    ; $4611: $7e
    or h                                          ; $4612: $b4
    inc d                                         ; $4613: $14
    inc e                                         ; $4614: $1c
    adc b                                         ; $4615: $88
    push hl                                       ; $4616: $e5
    sbc a                                         ; $4617: $9f
    ld a, b                                       ; $4618: $78
    ld hl, sp+$4a                                 ; $4619: $f8 $4a
    rra                                           ; $461b: $1f
    rst $18                                       ; $461c: $df
    pop hl                                        ; $461d: $e1
    db $eb                                        ; $461e: $eb
    add e                                         ; $461f: $83
    ld c, b                                       ; $4620: $48
    push hl                                       ; $4621: $e5
    pop hl                                        ; $4622: $e1
    and $10                                       ; $4623: $e6 $10
    dec d                                         ; $4625: $15
    or d                                          ; $4626: $b2
    xor e                                         ; $4627: $ab
    add hl, de                                    ; $4628: $19
    ld a, h                                       ; $4629: $7c
    ld h, $a5                                     ; $462a: $26 $a5
    dec l                                         ; $462c: $2d
    ld a, [hl]                                    ; $462d: $7e
    add sp, $5a                                   ; $462e: $e8 $5a
    ld d, b                                       ; $4630: $50
    ld a, [de]                                    ; $4631: $1a
    ld a, $1a                                     ; $4632: $3e $1a
    halt                                          ; $4634: $76
    call c, $ec8f                                 ; $4635: $dc $8f $ec
    jp $21cd                                      ; $4638: $c3 $cd $21


    ld l, d                                       ; $463b: $6a
    ld a, [$8915]                                 ; $463c: $fa $15 $89
    ld e, $6e                                     ; $463f: $1e $6e
    ld c, b                                       ; $4641: $48
    db $fd                                        ; $4642: $fd
    db $10                                        ; $4643: $10
    adc b                                         ; $4644: $88
    nop                                           ; $4645: $00
    rrca                                          ; $4646: $0f
    ld c, c                                       ; $4647: $49
    cpl                                           ; $4648: $2f
    db $fd                                        ; $4649: $fd
    ld l, a                                       ; $464a: $6f
    ld c, a                                       ; $464b: $4f
    cp a                                          ; $464c: $bf
    ld a, e                                       ; $464d: $7b
    ld a, $9b                                     ; $464e: $3e $9b
    or $e8                                        ; $4650: $f6 $e8
    or d                                          ; $4652: $b2
    pop af                                        ; $4653: $f1
    db $fc                                        ; $4654: $fc
    inc hl                                        ; $4655: $23
    inc b                                         ; $4656: $04
    adc a                                         ; $4657: $8f
    ld c, e                                       ; $4658: $4b
    call $f4db                                    ; $4659: $cd $db $f4
    jp z, $fa7d                                   ; $465c: $ca $7d $fa

    dec e                                         ; $465f: $1d
    push hl                                       ; $4660: $e5
    or e                                          ; $4661: $b3
    rst $00                                       ; $4662: $c7
    jp nc, $dc6d                                  ; $4663: $d2 $6d $dc

    dec hl                                        ; $4666: $2b
    adc a                                         ; $4667: $8f
    add [hl]                                      ; $4668: $86
    ld e, l                                       ; $4669: $5d
    cp b                                          ; $466a: $b8
    rst $08                                       ; $466b: $cf
    db $db                                        ; $466c: $db
    db $fc                                        ; $466d: $fc
    rrca                                          ; $466e: $0f
    ld de, $4ec0                                  ; $466f: $11 $c0 $4e
    sbc a                                         ; $4672: $9f
    add hl, sp                                    ; $4673: $39
    ld a, [de]                                    ; $4674: $1a
    halt                                          ; $4675: $76
    db $f4                                        ; $4676: $f4
    ld a, [hl+]                                   ; $4677: $2a
    adc b                                         ; $4678: $88
    nop                                           ; $4679: $00
    adc a                                         ; $467a: $8f
    ld c, e                                       ; $467b: $4b
    ld c, l                                       ; $467c: $4d
    inc sp                                        ; $467d: $33
    jr c, jr_04e_46de                             ; $467e: $38 $5e

    ld a, c                                       ; $4680: $79
    push hl                                       ; $4681: $e5
    ld a, $fd                                     ; $4682: $3e $fd
    ld c, [hl]                                    ; $4684: $4e
    dec hl                                        ; $4685: $2b
    ld a, [hl+]                                   ; $4686: $2a
    push de                                       ; $4687: $d5
    cp e                                          ; $4688: $bb
    bit 0, l                                      ; $4689: $cb $45
    ld l, c                                       ; $468b: $69
    dec l                                         ; $468c: $2d
    ld a, [hl]                                    ; $468d: $7e
    add sp, $5a                                   ; $468e: $e8 $5a
    ret nc                                        ; $4690: $d0

    or e                                          ; $4691: $b3
    sbc c                                         ; $4692: $99
    sub h                                         ; $4693: $94
    ld [hl], $10                                  ; $4694: $36 $10
    ld h, b                                       ; $4696: $60
    jr nc, jr_04e_469b                            ; $4697: $30 $02

    db $dd                                        ; $4699: $dd
    db $dd                                        ; $469a: $dd

jr_04e_469b:
    sub e                                         ; $469b: $93
    rst $08                                       ; $469c: $cf
    ld [hl], d                                    ; $469d: $72
    dec l                                         ; $469e: $2d
    ld a, [$dc0a]                                 ; $469f: $fa $0a $dc
    ld a, c                                       ; $46a2: $79
    db $ec                                        ; $46a3: $ec
    add sp, $5d                                   ; $46a4: $e8 $5d
    pop af                                        ; $46a6: $f1
    ld e, b                                       ; $46a7: $58
    db $fc                                        ; $46a8: $fc
    ld [hl+], a                                   ; $46a9: $22
    or l                                          ; $46aa: $b5
    ld a, [$6aff]                                 ; $46ab: $fa $ff $6a
    ld b, $3f                                     ; $46ae: $06 $3f
    dec de                                        ; $46b0: $1b
    dec c                                         ; $46b1: $0d
    sbc c                                         ; $46b2: $99
    dec c                                         ; $46b3: $0d
    ld e, a                                       ; $46b4: $5f
    jp c, $84f4                                   ; $46b5: $da $f4 $84

    ld d, a                                       ; $46b8: $57
    ld e, l                                       ; $46b9: $5d
    db $eb                                        ; $46ba: $eb
    ld c, e                                       ; $46bb: $4b
    db $fc                                        ; $46bc: $fc
    ld a, [hl+]                                   ; $46bd: $2a
    sbc a                                         ; $46be: $9f
    pop af                                        ; $46bf: $f1
    inc hl                                        ; $46c0: $23
    ld b, l                                       ; $46c1: $45
    ld l, d                                       ; $46c2: $6a
    adc $c2                                       ; $46c3: $ce $c2
    and e                                         ; $46c5: $a3
    ld h, a                                       ; $46c6: $67
    adc a                                         ; $46c7: $8f
    add [hl]                                      ; $46c8: $86
    ld [$8f4f], sp                                ; $46c9: $08 $4f $8f
    ld c, a                                       ; $46cc: $4f
    inc c                                         ; $46cd: $0c
    sub l                                         ; $46ce: $95
    ld a, [hl-]                                   ; $46cf: $3a
    dec de                                        ; $46d0: $1b
    ld [hl], a                                    ; $46d1: $77
    ld [$c5ec], a                                 ; $46d2: $ea $ec $c5
    ld [hl], a                                    ; $46d5: $77
    adc [hl]                                      ; $46d6: $8e
    rra                                           ; $46d7: $1f
    ld a, d                                       ; $46d8: $7a
    inc [hl]                                      ; $46d9: $34
    call c, Call_04e_52e3                         ; $46da: $dc $e3 $52
    db $d3                                        ; $46dd: $d3

jr_04e_46de:
    jp nz, Jump_000_07a3                          ; $46de: $c2 $a3 $07

    add sp, -$59                                  ; $46e1: $e8 $a7
    sub e                                         ; $46e3: $93
    cp h                                          ; $46e4: $bc
    di                                            ; $46e5: $f3
    add h                                         ; $46e6: $84
    and [hl]                                      ; $46e7: $a6
    ld a, a                                       ; $46e8: $7f
    ld e, b                                       ; $46e9: $58
    db $d3                                        ; $46ea: $d3
    ld sp, $d293                                  ; $46eb: $31 $93 $d2
    halt                                          ; $46ee: $76
    db $f4                                        ; $46ef: $f4
    ld a, [hl-]                                   ; $46f0: $3a
    adc b                                         ; $46f1: $88
    sbc e                                         ; $46f2: $9b
    ld e, $ce                                     ; $46f3: $1e $ce
    rst $28                                       ; $46f5: $ef
    pop bc                                        ; $46f6: $c1
    jr z, jr_04e_473f                             ; $46f7: $28 $46

    push de                                       ; $46f9: $d5
    sbc [hl]                                      ; $46fa: $9e
    pop hl                                        ; $46fb: $e1
    ld b, b                                       ; $46fc: $40
    add l                                         ; $46fd: $85
    rst $10                                       ; $46fe: $d7
    ld a, [hl-]                                   ; $46ff: $3a
    ld l, h                                       ; $4700: $6c
    dec c                                         ; $4701: $0d
    rst $20                                       ; $4702: $e7
    rla                                           ; $4703: $17
    db $ed                                        ; $4704: $ed
    ld c, e                                       ; $4705: $4b
    sbc e                                         ; $4706: $9b
    or [hl]                                       ; $4707: $b6
    set 7, h                                      ; $4708: $cb $fc
    jr c, @-$2b                                   ; $470a: $38 $d3

    ld a, $b9                                     ; $470c: $3e $b9
    db $d3                                        ; $470e: $d3
    xor d                                         ; $470f: $aa
    sub a                                         ; $4710: $97
    cp $57                                        ; $4711: $fe $57
    cp a                                          ; $4713: $bf
    cp [hl]                                       ; $4714: $be
    ld l, h                                       ; $4715: $6c
    jp c, $cba3                                   ; $4716: $da $a3 $cb

    add $ee                                       ; $4719: $c6 $ee
    jp nz, $f17d                                  ; $471b: $c2 $7d $f1

    ld b, e                                       ; $471e: $43
    rst $10                                       ; $471f: $d7
    add d                                         ; $4720: $82
    ld b, d                                       ; $4721: $42
    inc b                                         ; $4722: $04
    cpl                                           ; $4723: $2f
    ld h, h                                       ; $4724: $64
    ld h, [hl]                                    ; $4725: $66
    ld [hl+], a                                   ; $4726: $22
    xor d                                         ; $4727: $aa
    call nz, $8bc6                                ; $4728: $c4 $c6 $8b
    ld h, e                                       ; $472b: $63
    ld [$3438], sp                                ; $472c: $08 $38 $34
    cp $ff                                        ; $472f: $fe $ff
    ret                                           ; $4731: $c9


    sbc l                                         ; $4732: $9d
    ld a, [hl-]                                   ; $4733: $3a
    ld e, d                                       ; $4734: $5a
    ld l, d                                       ; $4735: $6a
    pop de                                        ; $4736: $d1
    or l                                          ; $4737: $b5
    xor h                                         ; $4738: $ac
    ld d, a                                       ; $4739: $57
    ld a, e                                       ; $473a: $7b
    dec c                                         ; $473b: $0d
    rst $38                                       ; $473c: $ff
    add [hl]                                      ; $473d: $86
    ld d, d                                       ; $473e: $52

jr_04e_473f:
    inc hl                                        ; $473f: $23
    reti                                          ; $4740: $d9


    dec c                                         ; $4741: $0d
    ld a, [hl]                                    ; $4742: $7e
    add [hl]                                      ; $4743: $86
    nop                                           ; $4744: $00
    ld h, b                                       ; $4745: $60
    ld d, e                                       ; $4746: $53
    jp c, Jump_04e_6ba2                           ; $4747: $da $a2 $6b

    jp c, $d549                                   ; $474a: $da $49 $d5

    or h                                          ; $474d: $b4
    ld [hl], d                                    ; $474e: $72
    xor a                                         ; $474f: $af
    ld e, [hl]                                    ; $4750: $5e
    ld [hl], $74                                  ; $4751: $36 $74
    add hl, sp                                    ; $4753: $39
    ld a, d                                       ; $4754: $7a
    call c, Call_04e_5a95                         ; $4755: $dc $95 $5a
    ld [c], a                                     ; $4758: $e2
    ld [$4ec0], sp                                ; $4759: $08 $c0 $4e
    dec a                                         ; $475c: $3d
    ld h, [hl]                                    ; $475d: $66
    xor c                                         ; $475e: $a9
    dec e                                         ; $475f: $1d
    cp l                                          ; $4760: $bd
    rlca                                          ; $4761: $07
    and e                                         ; $4762: $a3
    jr jr_04e_47ba                                ; $4763: $18 $55

    ld a, e                                       ; $4765: $7b
    sub $ca                                       ; $4766: $d6 $ca
    dec a                                         ; $4768: $3d
    ld h, h                                       ; $4769: $64
    reti                                          ; $476a: $d9


    ret nc                                        ; $476b: $d0

    ld h, l                                       ; $476c: $65
    db $d3                                        ; $476d: $d3
    ld e, $5d                                     ; $476e: $1e $5d
    adc l                                         ; $4770: $8d
    nop                                           ; $4771: $00
    ld h, b                                       ; $4772: $60
    ld d, e                                       ; $4773: $53
    jp c, $d1ec                                   ; $4774: $da $ec $d1

    call c, $97a9                                 ; $4777: $dc $a9 $97
    ccf                                           ; $477a: $3f
    rst $18                                       ; $477b: $df
    ld h, e                                       ; $477c: $63
    sub [hl]                                      ; $477d: $96
    ld e, d                                       ; $477e: $5a
    db $fd                                        ; $477f: $fd
    ld e, a                                       ; $4780: $5f
    dec hl                                        ; $4781: $2b
    or c                                          ; $4782: $b1
    ld e, l                                       ; $4783: $5d
    ld c, e                                       ; $4784: $4b
    cp h                                          ; $4785: $bc
    ld h, h                                       ; $4786: $64
    ld a, b                                       ; $4787: $78
    daa                                           ; $4788: $27
    ld c, $11                                     ; $4789: $0e $11
    rst $20                                       ; $478b: $e7
    pop hl                                        ; $478c: $e1
    db $e3                                        ; $478d: $e3
    xor [hl]                                      ; $478e: $ae
    ld c, b                                       ; $478f: $48
    ld e, [hl]                                    ; $4790: $5e
    jr nc, jr_04e_47ba                            ; $4791: $30 $27

    cp h                                          ; $4793: $bc
    ld [hl-], a                                   ; $4794: $32
    ld a, $6b                                     ; $4795: $3e $6b
    cp [hl]                                       ; $4797: $be
    rst $28                                       ; $4798: $ef
    ld l, $ba                                     ; $4799: $2e $ba
    and $25                                       ; $479b: $e6 $25
    and h                                         ; $479d: $a4
    ld a, [de]                                    ; $479e: $1a
    ld bc, $0c4f                                  ; $479f: $01 $4f $0c
    db $dd                                        ; $47a2: $dd
    dec d                                         ; $47a3: $15
    adc a                                         ; $47a4: $8f
    xor c                                         ; $47a5: $a9
    sub b                                         ; $47a6: $90
    jp z, Jump_04e_663e                           ; $47a7: $ca $3e $66

    xor c                                         ; $47aa: $a9
    sub c                                         ; $47ab: $91
    sub d                                         ; $47ac: $92
    dec h                                         ; $47ad: $25
    jr c, @+$20                                   ; $47ae: $38 $1e

    sub d                                         ; $47b0: $92
    xor [hl]                                      ; $47b1: $ae
    ld l, $04                                     ; $47b2: $2e $04
    ld c, a                                       ; $47b4: $4f
    ld c, $f7                                     ; $47b5: $0e $f7
    pop de                                        ; $47b7: $d1
    xor e                                         ; $47b8: $ab
    add [hl]                                      ; $47b9: $86

jr_04e_47ba:
    di                                            ; $47ba: $f3
    db $d3                                        ; $47bb: $d3
    ld [de], a                                    ; $47bc: $12
    dec a                                         ; $47bd: $3d
    or c                                          ; $47be: $b1
    pop hl                                        ; $47bf: $e1
    ld h, a                                       ; $47c0: $67
    inc sp                                        ; $47c1: $33
    add hl, hl                                    ; $47c2: $29
    ld l, l                                       ; $47c3: $6d

Call_04e_47c4:
    call z, $cb52                                 ; $47c4: $cc $52 $cb
    and h                                         ; $47c7: $a4

jr_04e_47c8:
    cp $5f                                        ; $47c8: $fe $5f
    ld a, $54                                     ; $47ca: $3e $54
    ld hl, $a620                                  ; $47cc: $21 $20 $a6
    rst $18                                       ; $47cf: $df
    ld c, a                                       ; $47d0: $4f
    jp nz, Jump_000_05a7                          ; $47d1: $c2 $a7 $05

    sbc l                                         ; $47d4: $9d
    call c, $f169                                 ; $47d5: $dc $69 $f1
    or e                                          ; $47d8: $b3
    cpl                                           ; $47d9: $2f
    ld a, l                                       ; $47da: $7d
    ld [$d5e9], a                                 ; $47db: $ea $e9 $d5
    dec b                                         ; $47de: $05
    sbc a                                         ; $47df: $9f
    ld b, a                                       ; $47e0: $47
    ret nz                                        ; $47e1: $c0

    cp e                                          ; $47e2: $bb
    ld b, h                                       ; $47e3: $44
    ld b, l                                       ; $47e4: $45
    sbc a                                         ; $47e5: $9f
    db $ed                                        ; $47e6: $ed
    ld hl, $5e9a                                  ; $47e7: $21 $9a $5e
    inc hl                                        ; $47ea: $23
    pop bc                                        ; $47eb: $c1
    ld e, $01                                     ; $47ec: $1e $01
    ret nz                                        ; $47ee: $c0

    sbc e                                         ; $47ef: $9b
    push bc                                       ; $47f0: $c5
    ld [hl], c                                    ; $47f1: $71
    ld d, a                                       ; $47f2: $57
    xor h                                         ; $47f3: $ac
    ld l, c                                       ; $47f4: $69
    or $08                                        ; $47f5: $f6 $08
    ldh [$8c], a                                  ; $47f7: $e0 $8c
    ld a, e                                       ; $47f9: $7b
    db $f4                                        ; $47fa: $f4
    reti                                          ; $47fb: $d9


    ld e, $aa                                     ; $47fc: $1e $aa
    sbc e                                         ; $47fe: $9b
    push bc                                       ; $47ff: $c5
    ld e, $01                                     ; $4800: $1e $01
    jr nz, jr_04e_47c8                            ; $4802: $20 $c4

    ld h, e                                       ; $4804: $63
    ld c, a                                       ; $4805: $4f
    ld a, $cb                                     ; $4806: $3e $cb
    or l                                          ; $4808: $b5
    add sp, $2b                                   ; $4809: $e8 $2b
    ld h, a                                       ; $480b: $67
    cp e                                          ; $480c: $bb
    ld [c], a                                     ; $480d: $e2
    or c                                          ; $480e: $b1
    daa                                           ; $480f: $27
    sbc a                                         ; $4810: $9f
    push hl                                       ; $4811: $e5
    ld e, d                                       ; $4812: $5a
    db $f4                                        ; $4813: $f4
    dec d                                         ; $4814: $15
    ld [$0221], sp                                ; $4815: $08 $21 $02
    ld h, b                                       ; $4818: $60
    ld a, b                                       ; $4819: $78
    ld h, [hl]                                    ; $481a: $66
    sbc l                                         ; $481b: $9d
    call $d9d0                                    ; $481c: $cd $d0 $d9
    ld h, h                                       ; $481f: $64
    ld b, a                                       ; $4820: $47
    cpl                                           ; $4821: $2f
    rra                                           ; $4822: $1f
    inc h                                         ; $4823: $24
    ld a, d                                       ; $4824: $7a
    jr c, @+$41                                   ; $4825: $38 $3f

    dec de                                        ; $4827: $1b
    ld c, $21                                     ; $4828: $0e $21
    inc a                                         ; $482a: $3c
    ld a, d                                       ; $482b: $7a
    ld [hl], $7c                                  ; $482c: $36 $7c
    jp hl                                         ; $482e: $e9


    inc hl                                        ; $482f: $23
    ei                                            ; $4830: $fb
    jp z, Jump_000_367d                           ; $4831: $ca $7d $36

    ld a, h                                       ; $4834: $7c
    jp hl                                         ; $4835: $e9


    ld a, a                                       ; $4836: $7f
    ld a, e                                       ; $4837: $7b
    ret nz                                        ; $4838: $c0

    ld sp, $0560                                  ; $4839: $31 $60 $05
    ld b, $0c                                     ; $483c: $06 $0c
    inc b                                         ; $483e: $04
    sbc b                                         ; $483f: $98
    ld [hl], e                                    ; $4840: $73
    or b                                          ; $4841: $b0
    jr jr_04e_4864                                ; $4842: $18 $20

    ld [bc], a                                    ; $4844: $02
    ret nz                                        ; $4845: $c0

    sbc e                                         ; $4846: $9b
    push bc                                       ; $4847: $c5
    ld [hl], c                                    ; $4848: $71
    ld d, a                                       ; $4849: $57
    xor h                                         ; $484a: $ac
    jp hl                                         ; $484b: $e9


    dec e                                         ; $484c: $1d
    dec a                                         ; $484d: $3d
    dec de                                        ; $484e: $1b
    db $eb                                        ; $484f: $eb
    jp $a6bd                                      ; $4850: $c3 $bd $a6


    dec b                                         ; $4853: $05
    and l                                         ; $4854: $a5
    pop hl                                        ; $4855: $e1
    db $e3                                        ; $4856: $e3
    ld c, [hl]                                    ; $4857: $4e
    dec a                                         ; $4858: $3d
    dec de                                        ; $4859: $1b
    call z, Call_000_3db3                         ; $485a: $cc $b3 $3d
    ld d, h                                       ; $485d: $54
    scf                                           ; $485e: $37
    dec bc                                        ; $485f: $0b
    ld c, $f0                                     ; $4860: $0e $f0
    sub c                                         ; $4862: $91
    ld a, l                                       ; $4863: $7d

jr_04e_4864:
    push hl                                       ; $4864: $e5
    ld a, $9b                                     ; $4865: $3e $9b
    db $ec                                        ; $4867: $ec
    add a                                         ; $4868: $87
    ld d, a                                       ; $4869: $57
    xor a                                         ; $486a: $af
    rrca                                          ; $486b: $0f
    rst $30                                       ; $486c: $f7
    pop hl                                        ; $486d: $e1
    db $fc                                        ; $486e: $fc
    db $ec                                        ; $486f: $ec
    ld [hl], l                                    ; $4870: $75
    ld e, a                                       ; $4871: $5f
    jp c, $85b4                                   ; $4872: $da $b4 $85

    ld [$c2a0], sp                                ; $4875: $08 $a0 $c2
    ld l, e                                       ; $4878: $6b
    ld a, l                                       ; $4879: $7d
    cp b                                          ; $487a: $b8
    rrca                                          ; $487b: $0f
    rst $20                                       ; $487c: $e7
    ld h, a                                       ; $487d: $67
    xor a                                         ; $487e: $af
    ei                                            ; $487f: $fb
    jp nc, $eda6                                  ; $4880: $d2 $a6 $ed

    reti                                          ; $4883: $d9


    ret nz                                        ; $4884: $c0

    add hl, de                                    ; $4885: $19
    rst $30                                       ; $4886: $f7
    add sp, -$4d                                  ; $4887: $e8 $b3
    push bc                                       ; $4889: $c5
    rst $38                                       ; $488a: $ff
    pop de                                        ; $488b: $d1
    db $d3                                        ; $488c: $d3
    rst $28                                       ; $488d: $ef
    rst $38                                       ; $488e: $ff
    or e                                          ; $488f: $b3
    ret                                           ; $4890: $c9


    cp b                                          ; $4891: $b8
    ld d, e                                       ; $4892: $53
    ld a, a                                       ; $4893: $7f
    db $d3                                        ; $4894: $d3
    or l                                          ; $4895: $b5
    ld hl, sp-$5f                                 ; $4896: $f8 $a1
    ld l, e                                       ; $4898: $6b
    ld b, c                                       ; $4899: $41
    inc sp                                        ; $489a: $33
    ld l, [hl]                                    ; $489b: $6e
    ld c, $51                                     ; $489c: $0e $51
    db $eb                                        ; $489e: $eb
    or b                                          ; $489f: $b0
    dec h                                         ; $48a0: $25
    adc a                                         ; $48a1: $8f
    db $10                                        ; $48a2: $10
    add b                                         ; $48a3: $80
    adc d                                         ; $48a4: $8a
    add hl, bc                                    ; $48a5: $09
    ld hl, $d7a4                                  ; $48a6: $21 $a4 $d7
    ld a, l                                       ; $48a9: $7d
    ld e, d                                       ; $48aa: $5a
    and d                                         ; $48ab: $a2
    daa                                           ; $48ac: $27
    ld d, $42                                     ; $48ad: $16 $42
    adc b                                         ; $48af: $88
    nop                                           ; $48b0: $00
    and b                                         ; $48b1: $a0
    jp nz, Jump_000_1d6b                          ; $48b2: $c2 $6b $1d

    or [hl]                                       ; $48b5: $b6
    add [hl]                                      ; $48b6: $86
    di                                            ; $48b7: $f3
    or e                                          ; $48b8: $b3
    rst $10                                       ; $48b9: $d7
    ld a, l                                       ; $48ba: $7d
    ld l, c                                       ; $48bb: $69
    db $d3                                        ; $48bc: $d3
    or $6c                                        ; $48bd: $f6 $6c
    rrca                                          ; $48bf: $0f
    push de                                       ; $48c0: $d5
    call $1b3a                                    ; $48c1: $cd $3a $1b
    or e                                          ; $48c4: $b3
    call nc, $9f28                                ; $48c5: $d4 $28 $9f
    dec a                                         ; $48c8: $3d
    and [hl]                                      ; $48c9: $a6
    pop af                                        ; $48ca: $f1
    rst $38                                       ; $48cb: $ff
    rst $10                                       ; $48cc: $d7
    jp nz, $277d                                  ; $48cd: $c2 $7d $27

    ld d, l                                       ; $48d0: $55
    jp $a5f9                                      ; $48d1: $c3 $f9 $a5


    and d                                         ; $48d4: $a2
    add e                                         ; $48d5: $83
    ld a, [de]                                    ; $48d6: $1a
    cp c                                          ; $48d7: $b9

jr_04e_48d8:
    ld [bc], a                                    ; $48d8: $02
    ld de, $5f80                                  ; $48d9: $11 $80 $5f
    ld c, [hl]                                    ; $48dc: $4e
    cp a                                          ; $48dd: $bf
    sbc h                                         ; $48de: $9c
    ld a, $b2                                     ; $48df: $3e $b2
    xor a                                         ; $48e1: $af
    call c, $9367                                 ; $48e2: $dc $67 $93
    ld l, c                                       ; $48e5: $69
    rst $10                                       ; $48e6: $d7
    cp l                                          ; $48e7: $bd
    ld a, d                                       ; $48e8: $7a
    or $ba                                        ; $48e9: $f6 $ba
    cpl                                           ; $48eb: $2f
    db $fd                                        ; $48ec: $fd
    ld [hl], d                                    ; $48ed: $72
    ld a, [$b4e5]                                 ; $48ee: $fa $e5 $b4
    ld l, c                                       ; $48f1: $69
    dec bc                                        ; $48f2: $0b
    ld hl, $25a4                                  ; $48f3: $21 $a4 $25
    db $d3                                        ; $48f6: $d3
    jp $df57                                      ; $48f7: $c3 $57 $df


    or $55                                        ; $48fa: $f6 $55
    db $d3                                        ; $48fc: $d3
    add e                                         ; $48fd: $83
    ld l, $1b                                     ; $48fe: $2e $1b
    cp d                                          ; $4900: $ba
    inc e                                         ; $4901: $1c
    dec a                                         ; $4902: $3d
    ld a, e                                       ; $4903: $7b
    dec d                                         ; $4904: $15
    ld b, h                                       ; $4905: $44
    ld c, a                                       ; $4906: $4f
    ld l, a                                       ; $4907: $6f
    adc $b5                                       ; $4908: $ce $b5
    db $ec                                        ; $490a: $ec
    rst $00                                       ; $490b: $c7
    rst $38                                       ; $490c: $ff
    ld hl, $f9c3                                  ; $490d: $21 $c3 $f9
    dec a                                         ; $4910: $3d
    jr jr_04e_48d8                                ; $4911: $18 $c5

    xor b                                         ; $4913: $a8
    jp c, $8ef3                                   ; $4914: $da $f3 $8e

    ld e, $67                                     ; $4917: $1e $67
    jp c, $eab9                                   ; $4919: $da $b9 $ea

    ld [de], a                                    ; $491c: $12
    dec de                                        ; $491d: $1b
    db $e3                                        ; $491e: $e3
    ld c, [hl]                                    ; $491f: $4e
    sbc l                                         ; $4920: $9d
    ld h, [hl]                                    ; $4921: $66
    ld h, $56                                     ; $4922: $26 $56
    ld l, d                                       ; $4924: $6a
    call c, $67a9                                 ; $4925: $dc $a9 $67
    xor a                                         ; $4928: $af
    ld a, [hl-]                                   ; $4929: $3a
    db $db                                        ; $492a: $db
    ld b, e                                       ; $492b: $43
    ld [hl], l                                    ; $492c: $75
    or e                                          ; $492d: $b3
    jr nz, jr_04e_4932                            ; $492e: $20 $02

    rst $08                                       ; $4930: $cf
    push af                                       ; $4931: $f5

jr_04e_4932:
    ld l, h                                       ; $4932: $6c
    ld hl, sp-$4c                                 ; $4933: $f8 $b4
    and e                                         ; $4935: $a3
    rlca                                          ; $4936: $07
    cp h                                          ; $4937: $bc
    ld e, c                                       ; $4938: $59
    inc e                                         ; $4939: $1c
    ld [hl], a                                    ; $493a: $77
    push bc                                       ; $493b: $c5
    sbc d                                         ; $493c: $9a
    ld a, [hl]                                    ; $493d: $7e
    add hl, sp                                    ; $493e: $39
    ld l, l                                       ; $493f: $6d
    jp c, $3f86                                   ; $4940: $da $86 $3f

Call_04e_4943:
    ld b, d                                       ; $4943: $42
    ld h, b                                       ; $4944: $60
    add d                                         ; $4945: $82
    ld a, c                                       ; $4946: $79
    ld [hl], $fd                                  ; $4947: $36 $fd
    xor $e8                                       ; $4949: $ee $e8
    dec a                                         ; $494b: $3d
    inc h                                         ; $494c: $24
    inc e                                         ; $494d: $1c
    rst $30                                       ; $494e: $f7
    inc bc                                        ; $494f: $03
    ld c, a                                       ; $4950: $4f
    jr c, jr_04e_4961                             ; $4951: $38 $0e

    ld [hl+], a                                   ; $4953: $22
    rrca                                          ; $4954: $0f
    add hl, bc                                    ; $4955: $09
    rst $00                                       ; $4956: $c7
    db $fd                                        ; $4957: $fd
    ret nz                                        ; $4958: $c0

    inc de                                        ; $4959: $13
    adc [hl]                                      ; $495a: $8e
    db $db                                        ; $495b: $db
    pop de                                        ; $495c: $d1
    ld c, e                                       ; $495d: $4b
    rra                                           ; $495e: $1f
    reti                                          ; $495f: $d9


    reti                                          ; $4960: $d9


jr_04e_4961:
    inc hl                                        ; $4961: $23
    and b                                         ; $4962: $a0
    jp nz, $90e6                                  ; $4963: $c2 $e6 $90

    or e                                          ; $4966: $b3
    reti                                          ; $4967: $d9


    ldh a, [rBCPD]                                ; $4968: $f0 $69
    ld b, a                                       ; $496a: $47
    rst $28                                       ; $496b: $ef
    add sp, $61                                   ; $496c: $e8 $61
    jr z, jr_04e_49ad                             ; $496e: $28 $3d

    inc h                                         ; $4970: $24
    push af                                       ; $4971: $f5
    adc e                                         ; $4972: $8b
    ld de, $2044                                  ; $4973: $11 $44 $20
    ld b, h                                       ; $4976: $44
    add l                                         ; $4977: $85
    inc l                                         ; $4978: $2c
    ld a, a                                       ; $4979: $7f
    cp [hl]                                       ; $497a: $be
    add a                                         ; $497b: $87
    and c                                         ; $497c: $a1
    db $f4                                        ; $497d: $f4
    sub b                                         ; $497e: $90
    call nc, $462f                                ; $497f: $d4 $2f $46
    db $ec                                        ; $4982: $ec
    ld de, $f5cf                                  ; $4983: $11 $cf $f5
    ld [c], a                                     ; $4986: $e2
    add a                                         ; $4987: $87
    xor [hl]                                      ; $4988: $ae
    dec b                                         ; $4989: $05
    and l                                         ; $498a: $a5
    pop hl                                        ; $498b: $e1
    ei                                            ; $498c: $fb
    sub a                                         ; $498d: $97
    call nc, $df54                                ; $498e: $d4 $54 $df
    ld a, h                                       ; $4991: $7c
    sub l                                         ; $4992: $95
    cpl                                           ; $4993: $2f
    dec de                                        ; $4994: $1b
    ld a, [hl-]                                   ; $4995: $3a

Jump_04e_4996:
    dec de                                        ; $4996: $1b
    ld a, $ed                                     ; $4997: $3e $ed
    add sp, -$5b                                  ; $4999: $e8 $a5
    ld c, l                                       ; $499b: $4d
    db $db                                        ; $499c: $db
    ldh a, [rBGP]                                 ; $499d: $f0 $47
    ld [$e1e7], sp                                ; $499f: $08 $e7 $e1
    db $d3                                        ; $49a2: $d3
    adc [hl]                                      ; $49a3: $8e
    sbc $d1                                       ; $49a4: $de $d1
    ld a, e                                       ; $49a6: $7b
    ld a, [c]                                     ; $49a7: $f2
    ld e, c                                       ; $49a8: $59
    xor [hl]                                      ; $49a9: $ae
    ld b, l                                       ; $49aa: $45
    ld e, a                                       ; $49ab: $5f
    ld h, c                                       ; $49ac: $61

jr_04e_49ad:
    adc a                                         ; $49ad: $8f
    nop                                           ; $49ae: $00
    ld c, a                                       ; $49af: $4f
    ld a, $cb                                     ; $49b0: $3e $cb
    or l                                          ; $49b2: $b5
    add sp, $2b                                   ; $49b3: $e8 $2b
    db $e3                                        ; $49b5: $e3
    cp d                                          ; $49b6: $ba
    jr z, @+$79                                   ; $49b7: $28 $77

    ld [$ffd5], a                                 ; $49b9: $ea $d5 $ff
    adc $1e                                       ; $49bc: $ce $1e
    ld bc, $e1e7                                  ; $49be: $01 $e7 $e1
    dec sp                                        ; $49c1: $3b
    ld a, d                                       ; $49c2: $7a
    ld e, d                                       ; $49c3: $5a
    ret                                           ; $49c4: $c9


    reti                                          ; $49c5: $d9


    ld l, h                                       ; $49c6: $6c
    ld hl, sp-$62                                 ; $49c7: $f8 $9e
    jp $87b0                                      ; $49c9: $c3 $b0 $87


    ld [$0d66], a                                 ; $49cc: $ea $66 $0d
    sbc h                                         ; $49cf: $9c
    ld [hl], c                                    ; $49d0: $71
    adc a                                         ; $49d1: $8f
    ld h, [hl]                                    ; $49d2: $66
    adc a                                         ; $49d3: $8f
    nop                                           ; $49d4: $00
    ld c, a                                       ; $49d5: $4f
    ld e, b                                       ; $49d6: $58
    ld h, d                                       ; $49d7: $62
    ld d, a                                       ; $49d8: $57
    xor $b3                                       ; $49d9: $ee $b3
    pop hl                                        ; $49db: $e1
    cp e                                          ; $49dc: $bb
    ld [c], a                                     ; $49dd: $e2
    ld sp, $8aee                                  ; $49de: $31 $ee $8a
    db $e4                                        ; $49e1: $e4
    add l                                         ; $49e2: $85
    ei                                            ; $49e3: $fb
    ld l, b                                       ; $49e4: $68
    and d                                         ; $49e5: $a2
    call nc, Call_04e_4eaf                        ; $49e6: $d4 $af $4e
    sbc e                                         ; $49e9: $9b
    or [hl]                                       ; $49ea: $b6
    db $e3                                        ; $49eb: $e3
    ld a, l                                       ; $49ec: $7d
    or $aa                                        ; $49ed: $f6 $aa
    or e                                          ; $49ef: $b3
    add c                                         ; $49f0: $81
    inc sp                                        ; $49f1: $33
    xor $d1                                       ; $49f2: $ee $d1
    db $10                                        ; $49f4: $10
    ld bc, $6e4f                                  ; $49f5: $01 $4f $6e
    rrca                                          ; $49f8: $0f
    call z, Call_04e_694d                         ; $49f9: $cc $4d $69
    and $57                                       ; $49fc: $e6 $57
    sbc [hl]                                      ; $49fe: $9e
    adc l                                         ; $49ff: $8d
    add c                                         ; $4a00: $81
    cp [hl]                                       ; $4a01: $be
    inc [hl]                                      ; $4a02: $34
    or e                                          ; $4a03: $b3
    ld e, [hl]                                    ; $4a04: $5e
    ld b, $67                                     ; $4a05: $06 $67
    ld a, [de]                                    ; $4a07: $1a
    cp a                                          ; $4a08: $bf
    and d                                         ; $4a09: $a2
    call c, $d9c8                                 ; $4a0a: $dc $c8 $d9
    ld [hl-], a                                   ; $4a0d: $32
    ld a, [hl]                                    ; $4a0e: $7e
    ld [hl+], a                                   ; $4a0f: $22
    ld sp, $282d                                  ; $4a10: $31 $2d $28
    dec l                                         ; $4a13: $2d
    db $ed                                        ; $4a14: $ed
    call nc, $3625                                ; $4a15: $d4 $25 $36
    halt                                          ; $4a18: $76
    rlca                                          ; $4a19: $07
    cp h                                          ; $4a1a: $bc
    ld e, c                                       ; $4a1b: $59
    inc e                                         ; $4a1c: $1c
    ld [hl], a                                    ; $4a1d: $77
    push bc                                       ; $4a1e: $c5
    sbc d                                         ; $4a1f: $9a
    halt                                          ; $4a20: $76
    db $d3                                        ; $4a21: $d3
    ld [de], a                                    ; $4a22: $12
    ld c, $b7                                     ; $4a23: $0e $b7
    add a                                         ; $4a25: $87
    and h                                         ; $4a26: $a4
    ld b, a                                       ; $4a27: $47
    ld c, d                                       ; $4a28: $4a
    add $2c                                       ; $4a29: $c6 $2c
    or l                                          ; $4a2b: $b5
    db $ec                                        ; $4a2c: $ec
    db $fc                                        ; $4a2d: $fc
    db $fc                                        ; $4a2e: $fc
    cp $3f                                        ; $4a2f: $fe $3f
    ld h, a                                       ; $4a31: $67
    ld e, $92                                     ; $4a32: $1e $92
    db $fd                                        ; $4a34: $fd
    ld de, $e702                                  ; $4a35: $11 $02 $e7
    pop hl                                        ; $4a38: $e1
    bit 7, [hl]                                   ; $4a39: $cb $7e
    ld d, b                                       ; $4a3b: $50
    ld a, [de]                                    ; $4a3c: $1a
    dec c                                         ; $4a3d: $0d
    add a                                         ; $4a3e: $87
    or c                                          ; $4a3f: $b1
    ld b, e                                       ; $4a40: $43
    rst $38                                       ; $4a41: $ff
    ld d, a                                       ; $4a42: $57
    ld sp, hl                                     ; $4a43: $f9
    jp z, Jump_000_367d                           ; $4a44: $ca $7d $36

    add hl, de                                    ; $4a47: $19
    ld c, c                                       ; $4a48: $49
    call nz, $88c6                                ; $4a49: $c4 $c6 $88
    and c                                         ; $4a4c: $a1
    or h                                          ; $4a4d: $b4
    jr nz, jr_04e_4a52                            ; $4a4e: $20 $02

    db $10                                        ; $4a50: $10
    ld b, d                                       ; $4a51: $42

jr_04e_4a52:
    inc b                                         ; $4a52: $04
    rst $20                                       ; $4a53: $e7
    ret                                           ; $4a54: $c9


    db $f4                                        ; $4a55: $f4
    ld l, b                                       ; $4a56: $68
    ld d, d                                       ; $4a57: $52
    dec a                                         ; $4a58: $3d
    cp l                                          ; $4a59: $bd
    cp d                                          ; $4a5a: $ba
    ld d, $32                                     ; $4a5b: $16 $32
    rst $28                                       ; $4a5d: $ef
    ret nc                                        ; $4a5e: $d0

    rst $38                                       ; $4a5f: $ff
    ld d, l                                       ; $4a60: $55
    ld c, e                                       ; $4a61: $4b
    ld b, h                                       ; $4a62: $44
    adc l                                         ; $4a63: $8d
    sub [hl]                                      ; $4a64: $96
    sbc h                                         ; $4a65: $9c
    adc l                                         ; $4a66: $8d
    add [hl]                                      ; $4a67: $86
    call z, Call_04e_4f86                         ; $4a68: $cc $86 $4f
    dec sp                                        ; $4a6b: $3b
    ld a, d                                       ; $4a6c: $7a
    ld b, a                                       ; $4a6d: $47
    rst $28                                       ; $4a6e: $ef
    adc d                                         ; $4a6f: $8a
    rst $00                                       ; $4a70: $c7
    db $ec                                        ; $4a71: $ec
    ld [hl], l                                    ; $4a72: $75
    ld e, a                                       ; $4a73: $5f
    jp c, $85b4                                   ; $4a74: $da $b4 $85

    ld [$c420], sp                                ; $4a77: $08 $20 $c4
    ld h, e                                       ; $4a7a: $63
    or $ba                                        ; $4a7b: $f6 $ba
    cpl                                           ; $4a7d: $2f
    ld l, l                                       ; $4a7e: $6d
    jp c, Jump_000_0842                           ; $4a7f: $da $42 $08

    push af                                       ; $4a82: $f5
    ld l, b                                       ; $4a83: $68
    ld a, [c]                                     ; $4a84: $f2
    xor a                                         ; $4a85: $af
    ld a, [bc]                                    ; $4a86: $0a
    reti                                          ; $4a87: $d9


    rrca                                          ; $4a88: $0f
    sbc e                                         ; $4a89: $9b
    ld b, e                                       ; $4a8a: $43
    jr nz, @-$7a                                  ; $4a8b: $20 $84

    ld [$6b8f], sp                                ; $4a8d: $08 $8f $6b
    ld [hl], $7c                                  ; $4a90: $36 $7c
    ld b, a                                       ; $4a92: $47
    rst $08                                       ; $4a93: $cf
    add [hl]                                      ; $4a94: $86
    or e                                          ; $4a95: $b3
    rst $18                                       ; $4a96: $df
    db $d3                                        ; $4a97: $d3
    cp e                                          ; $4a98: $bb
    and e                                         ; $4a99: $a3
    sub a                                         ; $4a9a: $97
    ld sp, hl                                     ; $4a9b: $f9
    xor c                                         ; $4a9c: $a9
    ld e, a                                       ; $4a9d: $5f
    or [hl]                                       ; $4a9e: $b6
    ld d, [hl]                                    ; $4a9f: $56
    xor $b3                                       ; $4aa0: $ee $b3
    ret                                           ; $4aa2: $c9


    adc [hl]                                      ; $4aa3: $8e
    ld e, [hl]                                    ; $4aa4: $5e
    ret z                                         ; $4aa5: $c8

    ld c, d                                       ; $4aa6: $4a
    sbc a                                         ; $4aa7: $9f
    ret                                           ; $4aa8: $c9


    sbc c                                         ; $4aa9: $99
    dec a                                         ; $4aaa: $3d
    ld [bc], a                                    ; $4aab: $02
    rrca                                          ; $4aac: $0f
    push de                                       ; $4aad: $d5
    call $bf62                                    ; $4aae: $cd $62 $bf
    add a                                         ; $4ab1: $87
    and e                                         ; $4ab2: $a3
    sub a                                         ; $4ab3: $97
    ld [hl], $ed                                  ; $4ab4: $36 $ed
    push bc                                       ; $4ab6: $c5
    ld e, $01                                     ; $4ab7: $1e $01
    jr @+$2d                                      ; $4ab9: $18 $2b

    ld b, l                                       ; $4abb: $45
    ldh [rNR34], a                                ; $4abc: $e0 $1e
    sub a                                         ; $4abe: $97
    ld a, [de]                                    ; $4abf: $1a
    add hl, sp                                    ; $4ac0: $39
    call nz, $e8c6                                ; $4ac1: $c4 $c6 $e8
    ld d, l                                       ; $4ac4: $55
    ei                                            ; $4ac5: $fb
    rst $10                                       ; $4ac6: $d7
    ld h, e                                       ; $4ac7: $63
    ld a, [$39fd]                                 ; $4ac8: $fa $fd $39
    jr nz, jr_04e_4acf                            ; $4acb: $20 $02

    ld c, a                                       ; $4acd: $4f
    add e                                         ; $4ace: $83

jr_04e_4acf:
    xor $e8                                       ; $4acf: $ee $e8
    pop de                                        ; $4ad1: $d1
    ld [de], a                                    ; $4ad2: $12
    add hl, bc                                    ; $4ad3: $09
    sbc c                                         ; $4ad4: $99
    dec a                                         ; $4ad5: $3d
    ld a, d                                       ; $4ad6: $7a
    add hl, bc                                    ; $4ad7: $09
    adc [hl]                                      ; $4ad8: $8e
    rst $00                                       ; $4ad9: $c7
    ld l, b                                       ; $4ada: $68
    ret c                                         ; $4adb: $d8

    reti                                          ; $4adc: $d9


    ldh a, [$65]                                  ; $4add: $f0 $65
    ld d, d                                       ; $4adf: $52
    adc l                                         ; $4ae0: $8d
    rst $10                                       ; $4ae1: $d7
    ld c, d                                       ; $4ae2: $4a
    ld a, [c]                                     ; $4ae3: $f2
    dec h                                         ; $4ae4: $25
    ld e, $fe                                     ; $4ae5: $1e $fe
    ld l, b                                       ; $4ae7: $68
    rrca                                          ; $4ae8: $0f
    dec h                                         ; $4ae9: $25
    set 2, c                                      ; $4aea: $cb $d1

jr_04e_4aec:
    ld c, e                                       ; $4aec: $4b
    ld a, h                                       ; $4aed: $7c
    push hl                                       ; $4aee: $e5
    ld a, $ad                                     ; $4aef: $3e $ad
    cp h                                          ; $4af1: $bc
    ld b, [hl]                                    ; $4af2: $46
    xor a                                         ; $4af3: $af
    add d                                         ; $4af4: $82
    ld [$e1e7], sp                                ; $4af5: $08 $e7 $e1
    dec sp                                        ; $4af8: $3b
    ld a, d                                       ; $4af9: $7a
    ld c, a                                       ; $4afa: $4f
    and h                                         ; $4afb: $a4
    ldh a, [$38]                                  ; $4afc: $f0 $38
    db $db                                        ; $4afe: $db
    ccf                                           ; $4aff: $3f
    cp d                                          ; $4b00: $ba
    ld a, [hl-]                                   ; $4b01: $3a
    ld h, h                                       ; $4b02: $64
    ld [hl], a                                    ; $4b03: $77
    sbc $e6                                       ; $4b04: $de $e6
    ld a, a                                       ; $4b06: $7f
    db $db                                        ; $4b07: $db
    xor h                                         ; $4b08: $ac
    inc d                                         ; $4b09: $14
    ret                                           ; $4b0a: $c9


    call nz, $f648                                ; $4b0b: $c4 $48 $f6
    sbc c                                         ; $4b0e: $99
    sub h                                         ; $4b0f: $94
    ld [hl], $ee                                  ; $4b10: $36 $ee
    call nc, $9d91                                ; $4b12: $d4 $91 $9d
    rla                                           ; $4b15: $17
    ld e, e                                       ; $4b16: $5b
    dec e                                         ; $4b17: $1d
    db $e3                                        ; $4b18: $e3
    ld c, [hl]                                    ; $4b19: $4e
    cp l                                          ; $4b1a: $bd
    daa                                           ; $4b1b: $27
    sbc a                                         ; $4b1c: $9f
    push hl                                       ; $4b1d: $e5
    ld e, d                                       ; $4b1e: $5a
    db $f4                                        ; $4b1f: $f4
    dec d                                         ; $4b20: $15
    cp b                                          ; $4b21: $b8
    daa                                           ; $4b22: $27
    or c                                          ; $4b23: $b1
    inc b                                         ; $4b24: $04
    rst $00                                       ; $4b25: $c7
    rst $00                                       ; $4b26: $c7
    sbc l                                         ; $4b27: $9d
    ld a, d                                       ; $4b28: $7a
    sbc d                                         ; $4b29: $9a
    ld de, $e143                                  ; $4b2a: $11 $43 $e1

jr_04e_4b2d:
    ld e, $4a                                     ; $4b2d: $1e $4a
    halt                                          ; $4b2f: $76
    rst $20                                       ; $4b30: $e7
    ld c, c                                       ; $4b31: $49
    and a                                         ; $4b32: $a7
    ld c, e                                       ; $4b33: $4b
    ld b, d                                       ; $4b34: $42
    halt                                          ; $4b35: $76
    db $f4                                        ; $4b36: $f4
    ret nz                                        ; $4b37: $c0

    daa                                           ; $4b38: $27
    or a                                          ; $4b39: $b7
    dec sp                                        ; $4b3a: $3b
    cp $07                                        ; $4b3b: $fe $07
    jr nc, jr_04e_4aec                            ; $4b3d: $30 $ad

    ld h, h                                       ; $4b3f: $64
    ld b, a                                       ; $4b40: $47
    rst $28                                       ; $4b41: $ef
    rra                                           ; $4b42: $1f
    ld e, l                                       ; $4b43: $5d
    dec e                                         ; $4b44: $1d
    cp e                                          ; $4b45: $bb
    db $e3                                        ; $4b46: $e3
    ld c, [hl]                                    ; $4b47: $4e
    sbc l                                         ; $4b48: $9d
    push af                                       ; $4b49: $f5
    ld [$e351], a                                 ; $4b4a: $ea $51 $e3
    bit 7, d                                      ; $4b4d: $cb $7a
    or l                                          ; $4b4f: $b5
    inc de                                        ; $4b50: $13
    inc hl                                        ; $4b51: $23
    reti                                          ; $4b52: $d9


    and e                                         ; $4b53: $a3
    pop hl                                        ; $4b54: $e1
    adc $c3                                       ; $4b55: $ce $c3
    sub a                                         ; $4b57: $97
    rrca                                          ; $4b58: $0f
    sub l                                         ; $4b59: $95
    ld d, a                                       ; $4b5a: $57

jr_04e_4b5b:
    xor $7b                                       ; $4b5b: $ee $7b
    ld [hl+], a                                   ; $4b5d: $22
    add l                                         ; $4b5e: $85
    rst $00                                       ; $4b5f: $c7
    adc [hl]                                      ; $4b60: $8e
    ld e, [hl]                                    ; $4b61: $5e
    ld [c], a                                     ; $4b62: $e2
    or c                                          ; $4b63: $b1
    ldh [$3c], a                                  ; $4b64: $e0 $3c
    ld a, d                                       ; $4b66: $7a
    ld e, d                                       ; $4b67: $5a
    ld c, c                                       ; $4b68: $49
    ld e, $d3                                     ; $4b69: $1e $d3
    and h                                         ; $4b6b: $a4
    db $d3                                        ; $4b6c: $d3
    db $10                                        ; $4b6d: $10
    ld bc, $4b8f                                  ; $4b6e: $01 $8f $4b
    ld c, l                                       ; $4b71: $4d
    dec hl                                        ; $4b72: $2b
    ld a, [hl+]                                   ; $4b73: $2a
    ld h, l                                       ; $4b74: $65
    ld h, e                                       ; $4b75: $63
    ld [hl], a                                    ; $4b76: $77
    ret nz                                        ; $4b77: $c0

    sbc e                                         ; $4b78: $9b
    push bc                                       ; $4b79: $c5
    ld [hl], c                                    ; $4b7a: $71
    ld d, a                                       ; $4b7b: $57
    xor h                                         ; $4b7c: $ac
    ld l, c                                       ; $4b7d: $69
    or $08                                        ; $4b7e: $f6 $08
    add b                                         ; $4b80: $80
    cp e                                          ; $4b81: $bb
    add $34                                       ; $4b82: $c6 $34
    jp hl                                         ; $4b84: $e9


    ld [hl], h                                    ; $4b85: $74
    ld sp, hl                                     ; $4b86: $f9
    reti                                          ; $4b87: $d9


    jr nc, jr_04e_4ba2                            ; $4b88: $30 $18

    ld h, c                                       ; $4b8a: $61
    adc a                                         ; $4b8b: $8f
    nop                                           ; $4b8c: $00
    rst $20                                       ; $4b8d: $e7
    ret                                           ; $4b8e: $c9


    or h                                          ; $4b8f: $b4
    and d                                         ; $4b90: $a2
    ld d, d                                       ; $4b91: $52
    dec a                                         ; $4b92: $3d
    ld a, [de]                                    ; $4b93: $1a
    halt                                          ; $4b94: $76
    dec e                                         ; $4b95: $1d
    reti                                          ; $4b96: $d9


    ld b, e                                       ; $4b97: $43
    ld d, [hl]                                    ; $4b98: $56
    ld a, [$ce4c]                                 ; $4b99: $fa $4c $ce
    db $ec                                        ; $4b9c: $ec
    ld de, $fe80                                  ; $4b9d: $11 $80 $fe
    cp a                                          ; $4ba0: $bf
    sbc d                                         ; $4ba1: $9a

jr_04e_4ba2:
    pop bc                                        ; $4ba2: $c1
    rra                                           ; $4ba3: $1f
    dec c                                         ; $4ba4: $0d
    inc hl                                        ; $4ba5: $23
    or e                                          ; $4ba6: $b3
    jr nz, jr_04e_4b2d                            ; $4ba7: $20 $84

    add a                                         ; $4ba9: $87
    ld b, $21                                     ; $4baa: $06 $21
    add h                                         ; $4bac: $84
    ld a, [de]                                    ; $4bad: $1a
    and l                                         ; $4bae: $a5
    db $10                                        ; $4baf: $10
    ld b, d                                       ; $4bb0: $42
    inc b                                         ; $4bb1: $04
    ld c, a                                       ; $4bb2: $4f
    ld c, h                                       ; $4bb3: $4c
    ld a, e                                       ; $4bb4: $7b
    db $f4                                        ; $4bb5: $f4
    dec d                                         ; $4bb6: $15
    dec d                                         ; $4bb7: $15
    or d                                          ; $4bb8: $b2
    and e                                         ; $4bb9: $a3
    ld b, a                                       ; $4bba: $47
    ld a, [hl]                                    ; $4bbb: $7e
    dec [hl]                                      ; $4bbc: $35
    call c, $e3d3                                 ; $4bbd: $dc $d3 $e3
    inc de                                        ; $4bc0: $13
    ld b, e                                       ; $4bc1: $43
    and l                                         ; $4bc2: $a5
    and $f7                                       ; $4bc3: $e6 $f7
    rst $38                                       ; $4bc5: $ff
    add l                                         ; $4bc6: $85
    ei                                            ; $4bc7: $fb
    add h                                         ; $4bc8: $84
    push hl                                       ; $4bc9: $e5
    ld a, $be                                     ; $4bca: $3e $be
    add a                                         ; $4bcc: $87
    di                                            ; $4bcd: $f3
    ld a, e                                       ; $4bce: $7b
    jr nc, jr_04e_4b5b                            ; $4bcf: $30 $8a

    ld d, c                                       ; $4bd1: $51
    or l                                          ; $4bd2: $b5
    ld h, a                                       ; $4bd3: $67
    or $03                                        ; $4bd4: $f6 $03
    push bc                                       ; $4bd6: $c5
    ei                                            ; $4bd7: $fb
    jp nc, $2425                                  ; $4bd8: $d2 $25 $24

    call c, $9643                                 ; $4bdb: $dc $43 $96
    ld a, $35                                     ; $4bde: $3e $35
    or e                                          ; $4be0: $b3
    jr nz, @+$04                                  ; $4be1: $20 $02

    ld c, a                                       ; $4be3: $4f
    ld [$6c4b], sp                                ; $4be4: $08 $4b $6c
    call $b55e                                    ; $4be7: $cd $5e $b5
    dec hl                                        ; $4bea: $2b
    cp e                                          ; $4beb: $bb
    ld a, e                                       ; $4bec: $7b
    ld [c], a                                     ; $4bed: $e2
    and [hl]                                      ; $4bee: $a6
    ld l, e                                       ; $4bef: $6b
    ld c, a                                       ; $4bf0: $4f
    ld [$ac87], a                                 ; $4bf1: $ea $87 $ac
    ld b, h                                       ; $4bf4: $44
    xor d                                         ; $4bf5: $aa
    di                                            ; $4bf6: $f3
    jp nc, $f6ff                                  ; $4bf7: $d2 $ff $f6

    ld l, h                                       ; $4bfa: $6c
    or d                                          ; $4bfb: $b2
    dec hl                                        ; $4bfc: $2b
    ld e, $cb                                     ; $4bfd: $1e $cb
    and [hl]                                      ; $4bff: $a6
    dec a                                         ; $4c00: $3d
    cp d                                          ; $4c01: $ba
    inc l                                         ; $4c02: $2c
    ld a, e                                       ; $4c03: $7b
    inc b                                         ; $4c04: $04
    rrca                                          ; $4c05: $0f
    push de                                       ; $4c06: $d5
    cp e                                          ; $4c07: $bb
    ld [c], a                                     ; $4c08: $e2
    ld sp, $76bf                                  ; $4c09: $31 $bf $76
    push hl                                       ; $4c0c: $e5

Jump_04e_4c0d:
    ld a, $bc                                     ; $4c0d: $3e $bc
    set 5, e                                      ; $4c0f: $cb $eb
    ld l, h                                       ; $4c11: $6c
    call z, $a352                                 ; $4c12: $cc $52 $a3
    ld a, h                                       ; $4c15: $7c
    or $98                                        ; $4c16: $f6 $98
    ld [c], a                                     ; $4c18: $e2
    ld h, a                                       ; $4c19: $67
    ld d, d                                       ; $4c1a: $52
    jp c, $ffd2                                   ; $4c1b: $da $d2 $ff

    ld l, $9b                                     ; $4c1e: $2e $9b
    or $e8                                        ; $4c20: $f6 $e8
    or d                                          ; $4c22: $b2
    db $10                                        ; $4c23: $10
    ld bc, $e1e7                                  ; $4c24: $01 $e7 $e1
    db $e3                                        ; $4c27: $e3
    xor [hl]                                      ; $4c28: $ae
    ld c, b                                       ; $4c29: $48
    sbc $15                                       ; $4c2a: $de $15
    dec d                                         ; $4c2c: $15
    cp [hl]                                       ; $4c2d: $be
    ld [hl], d                                    ; $4c2e: $72
    sbc a                                         ; $4c2f: $9f
    ld a, [hl-]                                   ; $4c30: $3a
    ld [hl], l                                    ; $4c31: $75
    ld c, l                                       ; $4c32: $4d
    dec sp                                        ; $4c33: $3b
    ld a, d                                       ; $4c34: $7a
    adc c                                         ; $4c35: $89
    rlca                                          ; $4c36: $07
    call c, $f879                                 ; $4c37: $dc $79 $f8
    adc [hl]                                      ; $4c3a: $8e
    sbc $dd                                       ; $4c3b: $de $dd
    inc de                                        ; $4c3d: $13
    scf                                           ; $4c3e: $37
    ld e, l                                       ; $4c3f: $5d
    ld a, e                                       ; $4c40: $7b
    ld d, d                                       ; $4c41: $52
    ccf                                           ; $4c42: $3f
    ld h, h                                       ; $4c43: $64
    push af                                       ; $4c44: $f5
    cp a                                          ; $4c45: $bf
    ld c, a                                       ; $4c46: $4f

Jump_04e_4c47:
    dec sp                                        ; $4c47: $3b
    call nz, $4346                                ; $4c48: $c4 $46 $43
    inc b                                         ; $4c4b: $04
    ld h, b                                       ; $4c4c: $60
    jp hl                                         ; $4c4d: $e9


    ld l, h                                       ; $4c4e: $6c
    or d                                          ; $4c4f: $b2
    ld [hl], h                                    ; $4c50: $74
    ld l, b                                       ; $4c51: $68
    daa                                           ; $4c52: $27
    dec a                                         ; $4c53: $3d
    ld a, d                                       ; $4c54: $7a
    ld hl, $52cb                                  ; $4c55: $21 $cb $52
    jp hl                                         ; $4c58: $e9


    db $f4                                        ; $4c59: $f4
    ld [hl-], a                                   ; $4c5a: $32
    ld h, c                                       ; $4c5b: $61
    ld h, $9e                                     ; $4c5c: $26 $9e
    rst $20                                       ; $4c5e: $e7
    rst $30                                       ; $4c5f: $f7
    rst $38                                       ; $4c60: $ff
    ld [hl], c                                    ; $4c61: $71
    ld b, c                                       ; $4c62: $41
    dec a                                         ; $4c63: $3d
    and [hl]                                      ; $4c64: $a6
    di                                            ; $4c65: $f3
    ld [hl], d                                    ; $4c66: $72
    ld b, l                                       ; $4c67: $45
    add l                                         ; $4c68: $85
    inc l                                         ; $4c69: $2c
    di                                            ; $4c6a: $f3
    db $e3                                        ; $4c6b: $e3
    xor [hl]                                      ; $4c6c: $ae
    ld c, b                                       ; $4c6d: $48
    sbc [hl]                                      ; $4c6e: $9e
    dec c                                         ; $4c6f: $0d
    ld e, a                                       ; $4c70: $5f
    ret z                                         ; $4c71: $c8

    ld l, b                                       ; $4c72: $68
    xor c                                         ; $4c73: $a9
    sbc e                                         ; $4c74: $9b
    ret                                           ; $4c75: $c9


    db $ec                                        ; $4c76: $ec
    xor c                                         ; $4c77: $a9
    ld a, e                                       ; $4c78: $7b
    ld [hl], a                                    ; $4c79: $77
    ld [hl], $64                                  ; $4c7a: $36 $64
    jp c, $23d1                                   ; $4c7c: $da $d1 $23

    and [hl]                                      ; $4c7f: $a6
    ei                                            ; $4c80: $fb
    ld e, d                                       ; $4c81: $5a
    db $d3                                        ; $4c82: $d3
    ld hl, $86cb                                  ; $4c83: $21 $cb $86
    adc $ab                                       ; $4c86: $ce $ab
    ld h, a                                       ; $4c88: $67
    xor a                                         ; $4c89: $af
    sbc d                                         ; $4c8a: $9a
    cp l                                          ; $4c8b: $bd
    ld c, $11                                     ; $4c8c: $0e $11
    ld c, a                                       ; $4c8e: $4f
    and h                                         ; $4c8f: $a4
    ldh a, [$98]                                  ; $4c90: $f0 $98
    ld e, $4d                                     ; $4c92: $1e $4d
    xor d                                         ; $4c94: $aa
    and a                                         ; $4c95: $a7
    ld d, a                                       ; $4c96: $57
    rst $10                                       ; $4c97: $d7
    ld c, [hl]                                    ; $4c98: $4e
    ld a, d                                       ; $4c99: $7a
    ld [hl], h                                    ; $4c9a: $74
    db $fd                                        ; $4c9b: $fd
    rst $28                                       ; $4c9c: $ef
    dec bc                                        ; $4c9d: $0b
    adc $a3                                       ; $4c9e: $ce $a3
    or e                                          ; $4ca0: $b3
    and c                                         ; $4ca1: $a1
    db $d3                                        ; $4ca2: $d3
    ld c, d                                       ; $4ca3: $4a
    ld b, [hl]                                    ; $4ca4: $46
    ld c, $91                                     ; $4ca5: $0e $91
    add sp, -$07                                  ; $4ca7: $e8 $f9
    db $fd                                        ; $4ca9: $fd
    ld a, a                                       ; $4caa: $7f
    ld a, d                                       ; $4cab: $7a
    push af                                       ; $4cac: $f5
    ld l, h                                       ; $4cad: $6c
    adc h                                         ; $4cae: $8c
    sub [hl]                                      ; $4caf: $96
    cp d                                          ; $4cb0: $ba
    sbc c                                         ; $4cb1: $99
    call nc, $a9ec                                ; $4cb2: $d4 $ec $a9
    cp e                                          ; $4cb5: $bb
    ld e, d                                       ; $4cb6: $5a
    ld l, d                                       ; $4cb7: $6a
    call c, $c915                                 ; $4cb8: $dc $15 $c9
    ld [hl], b                                    ; $4cbb: $70
    rrca                                          ; $4cbc: $0f
    dec h                                         ; $4cbd: $25
    dec hl                                        ; $4cbe: $2b
    pop de                                        ; $4cbf: $d1
    rrca                                          ; $4cc0: $0f
    or c                                          ; $4cc1: $b1
    pop de                                        ; $4cc2: $d1
    inc sp                                        ; $4cc3: $33
    sbc h                                         ; $4cc4: $9c
    ld d, a                                       ; $4cc5: $57

Jump_04e_4cc6:
    or $d9                                        ; $4cc6: $f6 $d9
    sub b                                         ; $4cc8: $90
    ld h, l                                       ; $4cc9: $65
    ld b, e                                       ; $4cca: $43
    rst $00                                       ; $4ccb: $c7
    ld e, l                                       ; $4ccc: $5d
    sub c                                         ; $4ccd: $91
    cp h                                          ; $4cce: $bc
    dec sp                                        ; $4ccf: $3b
    dec de                                        ; $4cd0: $1b
    ld [hl-], a                                   ; $4cd1: $32
    db $ed                                        ; $4cd2: $ed
    add sp, $11                                   ; $4cd3: $e8 $11
    db $d3                                        ; $4cd5: $d3
    ld a, l                                       ; $4cd6: $7d
    xor l                                         ; $4cd7: $ad
    jp hl                                         ; $4cd8: $e9


    db $10                                        ; $4cd9: $10
    adc b                                         ; $4cda: $88
    nop                                           ; $4cdb: $00
    ld c, a                                       ; $4cdc: $4f
    and h                                         ; $4cdd: $a4
    ldh a, [$c8]                                  ; $4cde: $f0 $c8
    inc hl                                        ; $4ce0: $23
    cp a                                          ; $4ce1: $bf
    ld [hl], d                                    ; $4ce2: $72
    xor $84                                       ; $4ce3: $ee $84
    adc $a4                                       ; $4ce5: $ce $a4
    or h                                          ; $4ce7: $b4
    db $fd                                        ; $4ce8: $fd
    and e                                         ; $4ce9: $a3
    xor e                                         ; $4cea: $ab
    dec sp                                        ; $4ceb: $3b
    and c                                         ; $4cec: $a1
    ei                                            ; $4ced: $fb
    ld d, a                                       ; $4cee: $57
    xor c                                         ; $4cef: $a9
    add sp, $69                                   ; $4cf0: $e8 $69
    ld b, a                                       ; $4cf2: $47
    ld c, a                                       ; $4cf3: $4f
    and d                                         ; $4cf4: $a2
    inc bc                                        ; $4cf5: $03
    xor $a1                                       ; $4cf6: $ee $a1
    ld h, h                                       ; $4cf8: $64
    ld b, a                                       ; $4cf9: $47
    rst $08                                       ; $4cfa: $cf
    add [hl]                                      ; $4cfb: $86
    db $ec                                        ; $4cfc: $ec
    rra                                           ; $4cfd: $1f
    sbc c                                         ; $4cfe: $99
    ld e, h                                       ; $4cff: $5c
    ld d, l                                       ; $4d00: $55
    reti                                          ; $4d01: $d9


    ld h, e                                       ; $4d02: $63
    rst $38                                       ; $4d03: $ff
    add sp, -$16                                  ; $4d04: $e8 $ea
    sub b                                         ; $4d06: $90
    ld l, c                                       ; $4d07: $69
    ld b, a                                       ; $4d08: $47
    ld b, e                                       ; $4d09: $43
    inc b                                         ; $4d0a: $04
    and b                                         ; $4d0b: $a0
    ld d, e                                       ; $4d0c: $53
    ret nz                                        ; $4d0d: $c0

    adc l                                         ; $4d0e: $8d
    sub h                                         ; $4d0f: $94
    xor d                                         ; $4d10: $aa
    rst $38                                       ; $4d11: $ff
    di                                            ; $4d12: $f3
    cp $d1                                        ; $4d13: $fe $d1
    push de                                       ; $4d15: $d5
    sbc l                                         ; $4d16: $9d
    ret nc                                        ; $4d17: $d0

    db $fd                                        ; $4d18: $fd
    xor e                                         ; $4d19: $ab
    ld d, h                                       ; $4d1a: $54
    db $f4                                        ; $4d1b: $f4
    ld [hl], b                                    ; $4d1c: $70
    ld a, [hl]                                    ; $4d1d: $7e
    ld [hl], $64                                  ; $4d1e: $36 $64
    jp c, $d3d1                                   ; $4d20: $da $d1 $d3

    ld a, c                                       ; $4d23: $79
    cp c                                          ; $4d24: $b9
    and d                                         ; $4d25: $a2
    ld b, d                                       ; $4d26: $42
    ldh [$ce], a                                  ; $4d27: $e0 $ce
    sub e                                         ; $4d29: $93
    jp hl                                         ; $4d2a: $e9


    rst $30                                       ; $4d2b: $f7
    rst $38                                       ; $4d2c: $ff
    ld e, l                                       ; $4d2d: $5d
    pop af                                        ; $4d2e: $f1
    jr jr_04e_4d62                                ; $4d2f: $18 $31

    sub h                                         ; $4d31: $94
    sub $b8                                       ; $4d32: $d6 $b8
    ld d, e                                       ; $4d34: $53
    cpl                                           ; $4d35: $2f
    add a                                         ; $4d36: $87
    ld hl, sp-$04                                 ; $4d37: $f8 $fc
    cp $3f                                        ; $4d39: $fe $3f
    dec l                                         ; $4d3b: $2d
    ld b, h                                       ; $4d3c: $44
    ld [hl+], a                                   ; $4d3d: $22
    rst $28                                       ; $4d3e: $ef
    rlca                                          ; $4d3f: $07
    pop af                                        ; $4d40: $f1
    ld l, e                                       ; $4d41: $6b
    inc h                                         ; $4d42: $24
    sbc d                                         ; $4d43: $9a
    dec a                                         ; $4d44: $3d
    ld [bc], a                                    ; $4d45: $02
    ld c, a                                       ; $4d46: $4f
    xor e                                         ; $4d47: $ab
    rst $00                                       ; $4d48: $c7
    sbc l                                         ; $4d49: $9d
    ld a, [hl-]                                   ; $4d4a: $3a
    ld e, a                                       ; $4d4b: $5f
    ld [c], a                                     ; $4d4c: $e2
    ld d, a                                       ; $4d4d: $57
    pop bc                                        ; $4d4e: $c1
    add c                                         ; $4d4f: $81
    dec l                                         ; $4d50: $2d
    pop de                                        ; $4d51: $d1
    rrca                                          ; $4d52: $0f
    or c                                          ; $4d53: $b1
    dec [hl]                                      ; $4d54: $35
    ld a, [c]                                     ; $4d55: $f2
    dec hl                                        ; $4d56: $2b
    rst $20                                       ; $4d57: $e7
    ld c, [hl]                                    ; $4d58: $4e
    add sp, $4c                                   ; $4d59: $e8 $4c
    ld c, d                                       ; $4d5b: $4a
    db $db                                        ; $4d5c: $db
    ccf                                           ; $4d5d: $3f
    cp d                                          ; $4d5e: $ba
    cp d                                          ; $4d5f: $ba
    inc de                                        ; $4d60: $13
    ld a, [hl-]                                   ; $4d61: $3a

jr_04e_4d62:
    ld d, d                                       ; $4d62: $52
    or d                                          ; $4d63: $b2
    sbc e                                         ; $4d64: $9b
    cp $25                                        ; $4d65: $fe $25
    halt                                          ; $4d67: $76
    or $f4                                        ; $4d68: $f6 $f4
    sbc c                                         ; $4d6a: $99
    dec [hl]                                      ; $4d6b: $35
    dec l                                         ; $4d6c: $2d
    ld l, b                                       ; $4d6d: $68
    ld h, $b5                                     ; $4d6e: $26 $b5
    ld e, h                                       ; $4d70: $5c
    inc h                                         ; $4d71: $24
    ld a, [de]                                    ; $4d72: $1a
    ld [hl+], a                                   ; $4d73: $22
    adc a                                         ; $4d74: $8f
    ld c, e                                       ; $4d75: $4b
    call Call_04e_7baf                            ; $4d76: $cd $af $7b
    push af                                       ; $4d79: $f5
    xor [hl]                                      ; $4d7a: $ae
    ld a, b                                       ; $4d7b: $78
    inc l                                         ; $4d7c: $2c
    ld e, l                                       ; $4d7d: $5d
    ld e, l                                       ; $4d7e: $5d
    jp $f9f9                                      ; $4d7f: $c3 $f9 $f9


    and l                                         ; $4d82: $a5
    ld [$0e57], a                                 ; $4d83: $ea $57 $0e
    add hl, de                                    ; $4d86: $19
    ld [hl], a                                    ; $4d87: $77
    ld [$fb95], a                                 ; $4d88: $ea $95 $fb
    ld [hl], d                                    ; $4d8b: $72
    ld c, h                                       ; $4d8c: $4c
    cp a                                          ; $4d8d: $bf
    sbc a                                         ; $4d8e: $9f
    add h                                         ; $4d8f: $84
    cpl                                           ; $4d90: $2f
    ld a, [hl]                                    ; $4d91: $7e
    add sp, $5a                                   ; $4d92: $e8 $5a
    ret nc                                        ; $4d94: $d0

    ld h, l                                       ; $4d95: $65
    ld b, e                                       ; $4d96: $43
    and a                                         ; $4d97: $a7
    ld d, l                                       ; $4d98: $55
    adc a                                         ; $4d99: $8f
    ei                                            ; $4d9a: $fb
    sub c                                         ; $4d9b: $91
    ld a, l                                       ; $4d9c: $7d
    cp b                                          ; $4d9d: $b8
    add hl, sp                                    ; $4d9e: $39
    ld b, h                                       ; $4d9f: $44
    pop bc                                        ; $4da0: $c1
    dec a                                         ; $4da1: $3d
    ld l, $35                                     ; $4da2: $2e $35
    cp a                                          ; $4da4: $bf
    xor $d5                                       ; $4da5: $ee $d5
    jp $d9f9                                      ; $4da7: $c3 $f9 $d9


    and b                                         ; $4daa: $a0
    db $e3                                        ; $4dab: $e3
    ld c, [hl]                                    ; $4dac: $4e
    cp l                                          ; $4dad: $bd
    ld [hl], d                                    ; $4dae: $72
    sbc a                                         ; $4daf: $9f
    adc l                                         ; $4db0: $8d
    xor c                                         ; $4db1: $a9
    ld a, a                                       ; $4db2: $7f
    db $dd                                        ; $4db3: $dd
    cp e                                          ; $4db4: $bb
    ld a, [de]                                    ; $4db5: $1a
    ld [hl+], a                                   ; $4db6: $22
    rst $20                                       ; $4db7: $e7
    pop hl                                        ; $4db8: $e1
    dec sp                                        ; $4db9: $3b
    ld a, d                                       ; $4dba: $7a
    jp nz, $28fb                                  ; $4dbb: $c2 $fb $28

    dec hl                                        ; $4dbe: $2b
    ei                                            ; $4dbf: $fb
    call Call_04e_47c4                            ; $4dc0: $cd $c4 $47
    jp $d80e                                      ; $4dc3: $c3 $0e $d8


    db $fd                                        ; $4dc6: $fd
    add hl, hl                                    ; $4dc7: $29
    dec l                                         ; $4dc8: $2d
    adc a                                         ; $4dc9: $8f
    add sp, -$6b                                  ; $4dca: $e8 $95
    dec a                                         ; $4dcc: $3d
    sub e                                         ; $4dcd: $93
    ld c, [hl]                                    ; $4dce: $4e
    jp nc, $b869                                  ; $4dcf: $d2 $69 $b8

    rst $00                                       ; $4dd2: $c7
    and l                                         ; $4dd3: $a5
    and [hl]                                      ; $4dd4: $a6
    ld d, l                                       ; $4dd5: $55
    cpl                                           ; $4dd6: $2f
    add a                                         ; $4dd7: $87
    ei                                            ; $4dd8: $fb
    inc [hl]                                      ; $4dd9: $34
    inc hl                                        ; $4dda: $23
    add [hl]                                      ; $4ddb: $86
    ld c, [hl]                                    ; $4ddc: $4e
    pop af                                        ; $4ddd: $f1
    cp e                                          ; $4dde: $bb
    ld [hl], d                                    ; $4ddf: $72
    or [hl]                                       ; $4de0: $b6
    call nz, Call_04e_564b                        ; $4de1: $c4 $4b $56
    xor $23                                       ; $4de4: $ee $23
    add [hl]                                      ; $4de6: $86
    jp nc, $e25a                                  ; $4de7: $d2 $5a $e2

    db $10                                        ; $4dea: $10
    ld bc, $af4f                                  ; $4deb: $01 $4f $af
    ld c, l                                       ; $4dee: $4d
    call nz, $c876                                ; $4def: $c4 $76 $c8
    db $f4                                        ; $4df2: $f4
    ld l, e                                       ; $4df3: $6b
    rst $30                                       ; $4df4: $f7
    adc a                                         ; $4df5: $8f
    xor [hl]                                      ; $4df6: $ae
    sub [hl]                                      ; $4df7: $96
    jp z, $c7cb                                   ; $4df8: $ca $cb $c7

    rst $38                                       ; $4dfb: $ff
    sbc c                                         ; $4dfc: $99
    inc d                                         ; $4dfd: $14
    sbc [hl]                                      ; $4dfe: $9e
    dec sp                                        ; $4dff: $3b
    and c                                         ; $4e00: $a1
    db $d3                                        ; $4e01: $d3
    adc e                                         ; $4e02: $8b
    ld a, b                                       ; $4e03: $78
    push af                                       ; $4e04: $f5
    db $ec                                        ; $4e05: $ec
    xor c                                         ; $4e06: $a9
    dec sp                                        ; $4e07: $3b
    ld h, h                                       ; $4e08: $64
    ld e, d                                       ; $4e09: $5a
    db $fc                                        ; $4e0a: $fc
    sbc d                                         ; $4e0b: $9a
    dec l                                         ; $4e0c: $2d
    dec d                                         ; $4e0d: $15
    ld [hl], d                                    ; $4e0e: $72
    ld [hl], $1a                                  ; $4e0f: $36 $1a
    ld [hl-], a                                   ; $4e11: $32
    dec de                                        ; $4e12: $1b
    bit 0, [hl]                                   ; $4e13: $cb $46
    adc a                                         ; $4e15: $8f
    ld e, $ce                                     ; $4e16: $1e $ce
    ld c, a                                       ; $4e18: $4f
    jp z, Jump_000_043d                           ; $4e19: $ca $3d $04

    ld [hl+], a                                   ; $4e1c: $22
    rst $20                                       ; $4e1d: $e7
    pop hl                                        ; $4e1e: $e1
    res 0, a                                      ; $4e1f: $cb $87
    jp z, $f72b                                   ; $4e21: $ca $2b $f7

    reti                                          ; $4e24: $d9


    ldh a, [$71]                                  ; $4e25: $f0 $71
    ld d, a                                       ; $4e27: $57
    inc h                                         ; $4e28: $24
    cpl                                           ; $4e29: $2f
    ld h, h                                       ; $4e2a: $64
    sub $7c                                       ; $4e2b: $d6 $7c
    dec sp                                        ; $4e2d: $3b
    rst $28                                       ; $4e2e: $ef
    jp nz, $9af1                                  ; $4e2f: $c2 $f1 $9a

    rst $18                                       ; $4e32: $df
    rst $38                                       ; $4e33: $ff
    rst $00                                       ; $4e34: $c7
    ld sp, $b68f                                  ; $4e35: $31 $8f $b6
    ld sp, $979d                                  ; $4e38: $31 $9d $97
    dec hl                                        ; $4e3b: $2b
    ld a, [hl+]                                   ; $4e3c: $2a
    ld h, h                                       ; $4e3d: $64
    ld [hl], a                                    ; $4e3e: $77
    ld [hl], $64                                  ; $4e3f: $36 $64
    jp c, $23d1                                   ; $4e41: $da $d1 $23

    and [hl]                                      ; $4e44: $a6
    ei                                            ; $4e45: $fb
    ld e, d                                       ; $4e46: $5a
    db $d3                                        ; $4e47: $d3
    ld hl, $a367                                  ; $4e48: $21 $67 $a3
    ld hl, $9663                                  ; $4e4b: $21 $63 $96
    sbc d                                         ; $4e4e: $9a
    ld e, $be                                     ; $4e4f: $1e $be
    dec hl                                        ; $4e51: $2b
    ld e, $d3                                     ; $4e52: $1e $d3
    xor e                                         ; $4e54: $ab
    ld h, a                                       ; $4e55: $67
    ld b, e                                       ; $4e56: $43
    halt                                          ; $4e57: $76
    db $f4                                        ; $4e58: $f4
    call nc, Call_04e_5a89                        ; $4e59: $d4 $89 $5a
    adc b                                         ; $4e5c: $88
    nop                                           ; $4e5d: $00
    ld c, a                                       ; $4e5e: $4f
    ld h, d                                       ; $4e5f: $62
    add hl, bc                                    ; $4e60: $09
    adc [hl]                                      ; $4e61: $8e
    rst $08                                       ; $4e62: $cf
    ret nc                                        ; $4e63: $d0

    reti                                          ; $4e64: $d9


    ld h, h                                       ; $4e65: $64
    adc d                                         ; $4e66: $8a
    rst $28                                       ; $4e67: $ef
    ld e, l                                       ; $4e68: $5d
    add hl, de                                    ; $4e69: $19
    adc $0f                                       ; $4e6a: $ce $0f
    ret c                                         ; $4e6c: $d8

    cp a                                          ; $4e6d: $bf
    adc $e8                                       ; $4e6e: $ce $e8
    and [hl]                                      ; $4e70: $a6
    ld c, b                                       ; $4e71: $48
    ld e, [hl]                                    ; $4e72: $5e
    daa                                           ; $4e73: $27
    inc d                                         ; $4e74: $14
    ret nz                                        ; $4e75: $c0

    ld l, h                                       ; $4e76: $6c
    ld hl, sp-$48                                 ; $4e77: $f8 $b8
    dec hl                                        ; $4e79: $2b
    sub d                                         ; $4e7a: $92
    rla                                           ; $4e7b: $17
    or d                                          ; $4e7c: $b2
    ld c, [hl]                                    ; $4e7d: $4e
    inc a                                         ; $4e7e: $3c
    and a                                         ; $4e7f: $a7
    inc [hl]                                      ; $4e80: $34
    ld d, d                                       ; $4e81: $52
    ld d, d                                       ; $4e82: $52
    db $e3                                        ; $4e83: $e3
    sbc d                                         ; $4e84: $9a
    sub a                                         ; $4e85: $97
    ld a, c                                       ; $4e86: $79
    add a                                         ; $4e87: $87
    ld h, l                                       ; $4e88: $65
    add $74                                       ; $4e89: $c6 $74
    ld e, [hl]                                    ; $4e8b: $5e
    xor [hl]                                      ; $4e8c: $ae
    xor b                                         ; $4e8d: $a8
    sub b                                         ; $4e8e: $90
    ld h, l                                       ; $4e8f: $65
    ld b, e                                       ; $4e90: $43
    sub a                                         ; $4e91: $97
    ld a, a                                       ; $4e92: $7f
    ld [c], a                                     ; $4e93: $e2
    push de                                       ; $4e94: $d5

Jump_04e_4e95:
    jp $523b                                      ; $4e95: $c3 $3b $52


    scf                                           ; $4e98: $37
    ld c, a                                       ; $4e99: $4f
    cp a                                          ; $4e9a: $bf
    halt                                          ; $4e9b: $76
    ld e, d                                       ; $4e9c: $5a
    ld c, c                                       ; $4e9d: $49
    sbc [hl]                                      ; $4e9e: $9e
    dec a                                         ; $4e9f: $3d
    ld [hl], l                                    ; $4ea0: $75
    ld b, e                                       ; $4ea1: $43
    inc b                                         ; $4ea2: $04
    ld b, b                                       ; $4ea3: $40
    ld h, l                                       ; $4ea4: $65
    and l                                         ; $4ea5: $a5
    rst $08                                       ; $4ea6: $cf
    add $ec                                       ; $4ea7: $c6 $ec
    pop de                                        ; $4ea9: $d1
    ld d, e                                       ; $4eaa: $53
    ld a, l                                       ; $4eab: $7d
    pop af                                        ; $4eac: $f1
    db $ec                                        ; $4ead: $ec
    push hl                                       ; $4eae: $e5

Call_04e_4eaf:
    xor h                                         ; $4eaf: $ac
    ld l, b                                       ; $4eb0: $68
    xor c                                         ; $4eb1: $a9
    push hl                                       ; $4eb2: $e5
    ld b, e                                       ; $4eb3: $43
    push hl                                       ; $4eb4: $e5
    db $fd                                        ; $4eb5: $fd
    or b                                          ; $4eb6: $b0
    dec [hl]                                      ; $4eb7: $35
    cp a                                          ; $4eb8: $bf
    rst $38                                       ; $4eb9: $ff
    cpl                                           ; $4eba: $2f
    ld h, h                                       ; $4ebb: $64
    dec h                                         ; $4ebc: $25
    ld d, d                                       ; $4ebd: $52
    ld [hl-], a                                   ; $4ebe: $32
    ld h, d                                       ; $4ebf: $62
    cp d                                          ; $4ec0: $ba
    xor a                                         ; $4ec1: $af
    dec [hl]                                      ; $4ec2: $35
    dec a                                         ; $4ec3: $3d
    sbc h                                         ; $4ec4: $9c
    sbc a                                         ; $4ec5: $9f
    ldh a, [$be]                                  ; $4ec6: $f0 $be
    ld a, h                                       ; $4ec8: $7c
    cp b                                          ; $4ec9: $b8
    ld b, e                                       ; $4eca: $43
    inc b                                         ; $4ecb: $04
    ld b, b                                       ; $4ecc: $40
    ld h, l                                       ; $4ecd: $65
    and l                                         ; $4ece: $a5
    ld c, a                                       ; $4ecf: $4f
    push af                                       ; $4ed0: $f5
    push bc                                       ; $4ed1: $c5
    xor e                                         ; $4ed2: $ab
    and l                                         ; $4ed3: $a5
    ld b, [hl]                                    ; $4ed4: $46
    ld c, d                                       ; $4ed5: $4a
    and $35                                       ; $4ed6: $e6 $35
    ld a, [de]                                    ; $4ed8: $1a
    halt                                          ; $4ed9: $76
    or $aa                                        ; $4eda: $f6 $aa
    ld sp, hl                                     ; $4edc: $f9
    db $fd                                        ; $4edd: $fd
    ld a, a                                       ; $4ede: $7f
    ld hl, $912b                                  ; $4edf: $21 $2b $91
    sub d                                         ; $4ee2: $92
    jp hl                                         ; $4ee3: $e9


    cp h                                          ; $4ee4: $bc
    ld e, h                                       ; $4ee5: $5c
    ld d, c                                       ; $4ee6: $51
    db $10                                        ; $4ee7: $10
    jp nz, $4bc4                                  ; $4ee8: $c2 $c4 $4b

    ld d, [hl]                                    ; $4eeb: $56
    xor $b3                                       ; $4eec: $ee $b3
    ret                                           ; $4eee: $c9


    ld b, d                                       ; $4eef: $42
    ld a, [c]                                     ; $4ef0: $f2
    ld a, [$b3d4]                                 ; $4ef1: $fa $d4 $b3
    ld d, a                                       ; $4ef4: $57
    ld b, c                                       ; $4ef5: $41
    inc b                                         ; $4ef6: $04
    adc a                                         ; $4ef7: $8f
    ld c, e                                       ; $4ef8: $4b
    ld c, l                                       ; $4ef9: $4d
    xor e                                         ; $4efa: $ab
    ld e, [hl]                                    ; $4efb: $5e
    ld a, l                                       ; $4efc: $7d
    db $db                                        ; $4efd: $db
    ld d, a                                       ; $4efe: $57
    dec l                                         ; $4eff: $2d
    add a                                         ; $4f00: $87
    ei                                            ; $4f01: $fb
    add h                                         ; $4f02: $84
    ld d, a                                       ; $4f03: $57
    ld b, [hl]                                    ; $4f04: $46
    and [hl]                                      ; $4f05: $a6
    ld hl, sp-$57                                 ; $4f06: $f8 $a9
    db $10                                        ; $4f08: $10
    ld b, e                                       ; $4f09: $43
    ld h, a                                       ; $4f0a: $67
    ld b, e                                       ; $4f0b: $43
    or $f9                                        ; $4f0c: $f6 $f9
    db $ec                                        ; $4f0e: $ec
    dec [hl]                                      ; $4f0f: $35
    ld a, e                                       ; $4f10: $7b
    ld [$990e], a                                 ; $4f11: $ea $0e $99
    ld a, [hl]                                    ; $4f14: $7e
    db $ed                                        ; $4f15: $ed
    ldh a, [$d3]                                  ; $4f16: $f0 $d3
    rrca                                          ; $4f18: $0f
    add c                                         ; $4f19: $81
    ld [$f9c0], sp                                ; $4f1a: $08 $c0 $f9
    ld e, l                                       ; $4f1d: $5d
    pop af                                        ; $4f1e: $f1
    ret c                                         ; $4f1f: $d8

    sub l                                         ; $4f20: $95
    db $dd                                        ; $4f21: $dd
    add l                                         ; $4f22: $85

Call_04e_4f23:
    ei                                            ; $4f23: $fb
    ret z                                         ; $4f24: $c8

    xor a                                         ; $4f25: $af
    sbc h                                         ; $4f26: $9c
    dec sp                                        ; $4f27: $3b
    and c                                         ; $4f28: $a1
    or e                                          ; $4f29: $b3
    ld b, a                                       ; $4f2a: $47
    cpl                                           ; $4f2b: $2f
    ld h, h                                       ; $4f2c: $64
    ccf                                           ; $4f2d: $3f
    adc b                                         ; $4f2e: $88
    ld e, a                                       ; $4f2f: $5f
    inc hl                                        ; $4f30: $23
    jp $c579                                      ; $4f31: $c3 $79 $c5


    scf                                           ; $4f34: $37
    call c, $8c79                                 ; $4f35: $dc $79 $8c
    ei                                            ; $4f38: $fb
    sub c                                         ; $4f39: $91
    cp l                                          ; $4f3a: $bd
    or $8f                                        ; $4f3b: $f6 $8f
    xor [hl]                                      ; $4f3d: $ae
    sub [hl]                                      ; $4f3e: $96
    sbc d                                         ; $4f3f: $9a
    db $ed                                        ; $4f40: $ed
    ld [$be95], a                                 ; $4f41: $ea $95 $be
    ld hl, sp-$5f                                 ; $4f44: $f8 $a1
    ld l, e                                       ; $4f46: $6b
    ld b, c                                       ; $4f47: $41
    inc sp                                        ; $4f48: $33
    ld l, [hl]                                    ; $4f49: $6e
    ld c, $51                                     ; $4f4a: $0e $51
    inc sp                                        ; $4f4c: $33
    ld [hl], h                                    ; $4f4d: $74
    ld [hl], $59                                  ; $4f4e: $36 $59
    jp hl                                         ; $4f50: $e9


    jp hl                                         ; $4f51: $e9


    ld h, [hl]                                    ; $4f52: $66
    ld a, c                                       ; $4f53: $79
    db $f4                                        ; $4f54: $f4
    ld l, h                                       ; $4f55: $6c
    ld d, b                                       ; $4f56: $50
    adc b                                         ; $4f57: $88
    nop                                           ; $4f58: $00
    ld b, b                                       ; $4f59: $40
    db $dd                                        ; $4f5a: $dd
    sub a                                         ; $4f5b: $97
    and l                                         ; $4f5c: $a5
    jp nc, Jump_04e_5f69                          ; $4f5d: $d2 $69 $5f

    ld a, $dc                                     ; $4f60: $3e $dc
    ld d, a                                       ; $4f62: $57
    xor $23                                       ; $4f63: $ee $23
    add [hl]                                      ; $4f65: $86
    jp nc, $df9a                                  ; $4f66: $d2 $9a $df

    rst $38                                       ; $4f69: $ff
    ld d, a                                       ; $4f6a: $57
    ld h, d                                       ; $4f6b: $62
    cp e                                          ; $4f6c: $bb
    and [hl]                                      ; $4f6d: $a6
    di                                            ; $4f6e: $f3
    ld [hl], d                                    ; $4f6f: $72
    ld b, l                                       ; $4f70: $45
    add l                                         ; $4f71: $85
    db $ec                                        ; $4f72: $ec
    add sp, -$6b                                  ; $4f73: $e8 $95
    ei                                            ; $4f75: $fb
    cp h                                          ; $4f76: $bc
    ld h, [hl]                                    ; $4f77: $66
    ld b, e                                       ; $4f78: $43
    ld h, [hl]                                    ; $4f79: $66
    call $b5b7                                    ; $4f7a: $cd $b7 $b5
    ld c, [hl]                                    ; $4f7d: $4e
    inc a                                         ; $4f7e: $3c
    and a                                         ; $4f7f: $a7
    inc [hl]                                      ; $4f80: $34
    ld d, d                                       ; $4f81: $52
    ld d, d                                       ; $4f82: $52
    or d                                          ; $4f83: $b2
    cp e                                          ; $4f84: $bb
    ld b, e                                       ; $4f85: $43

Call_04e_4f86:
    ld l, h                                       ; $4f86: $6c
    ret z                                         ; $4f87: $c8

    ld c, d                                       ; $4f88: $4a
    rra                                           ; $4f89: $1f
    ld sp, $d7dd                                  ; $4f8a: $31 $dd $d7
    sbc d                                         ; $4f8d: $9a

jr_04e_4f8e:
    ld c, $81                                     ; $4f8e: $0e $81
    ld [$ab4f], sp                                ; $4f90: $08 $4f $ab
    rst $00                                       ; $4f93: $c7
    sbc l                                         ; $4f94: $9d
    ld a, [hl-]                                   ; $4f95: $3a
    ld e, a                                       ; $4f96: $5f
    ld [c], a                                     ; $4f97: $e2
    ld d, a                                       ; $4f98: $57
    db $ed                                        ; $4f99: $ed
    ld c, [hl]                                    ; $4f9a: $4e
    ld c, h                                       ; $4f9b: $4c
    ld [hl], a                                    ; $4f9c: $77
    db $ed                                        ; $4f9d: $ed
    db $10                                        ; $4f9e: $10
    dec de                                        ; $4f9f: $1b
    or d                                          ; $4fa0: $b2
    jp nc, Jump_04e_4367                          ; $4fa1: $d2 $67 $43

    and [hl]                                      ; $4fa4: $a6
    dec e                                         ; $4fa5: $1d
    dec a                                         ; $4fa6: $3d
    ld h, d                                       ; $4fa7: $62
    cp d                                          ; $4fa8: $ba
    xor a                                         ; $4fa9: $af
    dec [hl]                                      ; $4faa: $35
    dec e                                         ; $4fab: $1d
    ld [bc], a                                    ; $4fac: $02
    ld [hl], a                                    ; $4fad: $77
    sbc [hl]                                      ; $4fae: $9e
    adc h                                         ; $4faf: $8c
    sub h                                         ; $4fb0: $94
    ld c, h                                       ; $4fb1: $4c
    dec hl                                        ; $4fb2: $2b
    ld a, [hl+]                                   ; $4fb3: $2a
    dec [hl]                                      ; $4fb4: $35
    sbc h                                         ; $4fb5: $9c
    ld e, a                                       ; $4fb6: $5f
    ret z                                         ; $4fb7: $c8

    ld c, d                                       ; $4fb8: $4a
    and h                                         ; $4fb9: $a4
    ld h, h                                       ; $4fba: $64
    ld a, [hl-]                                   ; $4fbb: $3a
    cpl                                           ; $4fbc: $2f
    ld d, a                                       ; $4fbd: $57
    call nc, $9d0c                                ; $4fbe: $d4 $0c $9d
    ld c, l                                       ; $4fc1: $4d
    halt                                          ; $4fc2: $76
    push bc                                       ; $4fc3: $c5
    ld h, e                                       ; $4fc4: $63
    add hl, sp                                    ; $4fc5: $39
    ld a, d                                       ; $4fc6: $7a
    add hl, bc                                    ; $4fc7: $09
    adc [hl]                                      ; $4fc8: $8e
    ld c, a                                       ; $4fc9: $4f
    xor a                                         ; $4fca: $af
    sbc [hl]                                      ; $4fcb: $9e
    ld c, l                                       ; $4fcc: $4d
    and [hl]                                      ; $4fcd: $a6
    ld hl, sp-$7a                                 ; $4fce: $f8 $86
    ld [$fc0f], sp                                ; $4fd0: $08 $0f $fc
    rst $38                                       ; $4fd3: $ff
    ld c, e                                       ; $4fd4: $4b
    sbc h                                         ; $4fd5: $9c
    ld e, h                                       ; $4fd6: $5c
    or d                                          ; $4fd7: $b2
    ldh [$3c], a                                  ; $4fd8: $e0 $3c
    ld a, d                                       ; $4fda: $7a
    sbc c                                         ; $4fdb: $99
    ld a, [c]                                     ; $4fdc: $f2
    ld [$a944], a                                 ; $4fdd: $ea $44 $a9
    jp hl                                         ; $4fe0: $e9


    sbc l                                         ; $4fe1: $9d
    db $f4                                        ; $4fe2: $f4
    add sp, $69                                   ; $4fe3: $e8 $69
    pop af                                        ; $4fe5: $f1
    ld l, e                                       ; $4fe6: $6b
    sbc c                                         ; $4fe7: $99
    sbc b                                         ; $4fe8: $98
    ld e, a                                       ; $4fe9: $5f
    ld [bc], a                                    ; $4fea: $02
    rlca                                          ; $4feb: $07
    db $f4                                        ; $4fec: $f4
    add a                                         ; $4fed: $87
    ld e, $2d                                     ; $4fee: $1e $2d
    dec [hl]                                      ; $4ff0: $35
    xor l                                         ; $4ff1: $ad
    ld a, d                                       ; $4ff2: $7a
    ld [$7d44], a                                 ; $4ff3: $ea $44 $7d
    cp c                                          ; $4ff6: $b9
    ld c, b                                       ; $4ff7: $48
    db $f4                                        ; $4ff8: $f4
    xor $6c                                       ; $4ff9: $ee $6c
    ret nc                                        ; $4ffb: $d0

    ld h, l                                       ; $4ffc: $65
    ld a, [hl]                                    ; $4ffd: $7e
    rst $38                                       ; $4ffe: $ff
    db $10                                        ; $4fff: $10
    dec d                                         ; $5000: $15
    ld a, e                                       ; $5001: $7b
    jr nc, jr_04e_4f8e                            ; $5002: $30 $8a

    ld d, c                                       ; $5004: $51
    or l                                          ; $5005: $b5
    rst $20                                       ; $5006: $e7
    ld l, c                                       ; $5007: $69
    push de                                       ; $5008: $d5
    db $e3                                        ; $5009: $e3
    ld [de], a                                    ; $500a: $12
    sub c                                         ; $500b: $91
    db $eb                                        ; $500c: $eb
    add hl, de                                    ; $500d: $19
    ld [hl+], a                                   ; $500e: $22
    adc a                                         ; $500f: $8f
    ld c, e                                       ; $5010: $4b
    dec l                                         ; $5011: $2d
    ld de, $d5db                                  ; $5012: $11 $db $d5
    db $d3                                        ; $5015: $d3
    sra [hl]                                      ; $5016: $cb $2e
    dec de                                        ; $5018: $1b
    ld a, [hl-]                                   ; $5019: $3a
    xor $8a                                       ; $501a: $ee $8a
    db $e4                                        ; $501c: $e4
    db $dd                                        ; $501d: $dd
    reti                                          ; $501e: $d9


    sub b                                         ; $501f: $90
    reti                                          ; $5020: $d9


    and e                                         ; $5021: $a3
    sub a                                         ; $5022: $97
    xor a                                         ; $5023: $af
    dec [hl]                                      ; $5024: $35
    call nz, $5f74                                ; $5025: $c4 $74 $5f
    ld l, e                                       ; $5028: $6b
    ld a, [hl-]                                   ; $5029: $3a
    ld h, h                                       ; $502a: $64
    reti                                          ; $502b: $d9


    ret nc                                        ; $502c: $d0

    sbc l                                         ; $502d: $9d
    daa                                           ; $502e: $27
    inc [hl]                                      ; $502f: $34
    db $fd                                        ; $5030: $fd
    jp $8e9a                                      ; $5031: $c3 $9a $8e


    push hl                                       ; $5034: $e5
    ld e, d                                       ; $5035: $5a
    cp c                                          ; $5036: $b9
    ld c, a                                       ; $5037: $4f
    cp a                                          ; $5038: $bf
    sla h                                         ; $5039: $cb $24
    ld sp, hl                                     ; $503b: $f9
    ccf                                           ; $503c: $3f
    and [hl]                                      ; $503d: $a6
    pop af                                        ; $503e: $f1
    rst $38                                       ; $503f: $ff
    rst $10                                       ; $5040: $d7
    ld c, h                                       ; $5041: $4c
    adc $4b                                       ; $5042: $ce $4b
    sbc e                                         ; $5044: $9b
    or $1a                                        ; $5045: $f6 $1a
    rst $10                                       ; $5047: $d7
    cp h                                          ; $5048: $bc
    inc a                                         ; $5049: $3c
    ld b, d                                       ; $504a: $42
    ldh [$93], a                                  ; $504b: $e0 $93
    db $db                                        ; $504d: $db
    dec e                                         ; $504e: $1d
    rst $38                                       ; $504f: $ff
    ld c, a                                       ; $5050: $4f
    adc a                                         ; $5051: $8f
    ld h, $d5                                     ; $5052: $26 $d5
    db $eb                                        ; $5054: $eb
    jp Jump_04e_71da                              ; $5055: $c3 $da $71


    and a                                         ; $5058: $a7
    ld e, [hl]                                    ; $5059: $5e
    db $fd                                        ; $505a: $fd
    rst $28                                       ; $505b: $ef
    ld d, a                                       ; $505c: $57

jr_04e_505d:
    inc d                                         ; $505d: $14
    inc e                                         ; $505e: $1c
    add sp, -$70                                  ; $505f: $e8 $90
    ld sp, $4d4b                                  ; $5061: $31 $4b $4d
    xor a                                         ; $5064: $af
    sbc $15                                       ; $5065: $de $15
    adc c                                         ; $5067: $89
    pop hl                                        ; $5068: $e1
    db $fc                                        ; $5069: $fc
    or h                                          ; $506a: $b4
    sub d                                         ; $506b: $92
    cp h                                          ; $506c: $bc
    ld c, [hl]                                    ; $506d: $4e
    add sp, $42                                   ; $506e: $e8 $42
    and [hl]                                      ; $5070: $a6
    ld a, b                                       ; $5071: $78
    ld d, c                                       ; $5072: $51
    inc sp                                        ; $5073: $33
    add hl, hl                                    ; $5074: $29
    ld l, l                                       ; $5075: $6d
    ld [hl], $7c                                  ; $5076: $36 $7c
    adc d                                         ; $5078: $8a
    ld l, c                                       ; $5079: $69
    jp c, $e8c6                                   ; $507a: $da $c6 $e8

    ld d, l                                       ; $507d: $55
    db $eb                                        ; $507e: $eb
    jp $885a                                      ; $507f: $c3 $5a $88


    nop                                           ; $5082: $00
    rrca                                          ; $5083: $0f
    push de                                       ; $5084: $d5
    or e                                          ; $5085: $b3
    ret                                           ; $5086: $c9


    db $f4                                        ; $5087: $f4
    ld [$bbeb], a                                 ; $5088: $ea $eb $bb
    di                                            ; $508b: $f3
    ld [hl], $dc                                  ; $508c: $36 $dc
    inc sp                                        ; $508e: $33
    sbc l                                         ; $508f: $9d
    ld d, b                                       ; $5090: $50
    ld a, [de]                                    ; $5091: $1a
    cp $68                                        ; $5092: $fe $68
    and b                                         ; $5094: $a0
    ld c, e                                       ; $5095: $4b
    ld b, [hl]                                    ; $5096: $46
    ld c, d                                       ; $5097: $4a
    sub [hl]                                      ; $5098: $96
    push af                                       ; $5099: $f5
    and e                                         ; $509a: $a3
    ld l, e                                       ; $509b: $6b
    jr c, jr_04e_505d                             ; $509c: $38 $bf

    ld [hl], d                                    ; $509e: $72
    ld e, a                                       ; $509f: $5f
    daa                                           ; $50a0: $27
    reti                                          ; $50a1: $d9


    push hl                                       ; $50a2: $e5
    adc d                                         ; $50a3: $8a
    xor d                                         ; $50a4: $aa
    sub [hl]                                      ; $50a5: $96
    ld e, d                                       ; $50a6: $5a
    sbc a                                         ; $50a7: $9f
    ld a, d                                       ; $50a8: $7a
    ld sp, hl                                     ; $50a9: $f9
    xor d                                         ; $50aa: $aa
    ret                                           ; $50ab: $c9


    pop de                                        ; $50ac: $d1
    and e                                         ; $50ad: $a3
    dec h                                         ; $50ae: $25
    cp e                                          ; $50af: $bb
    ld [c], a                                     ; $50b0: $e2
    ld sp, $eebf                                  ; $50b1: $31 $bf $ee
    push de                                       ; $50b4: $d5
    db $10                                        ; $50b5: $10
    ld bc, $e1e7                                  ; $50b6: $01 $e7 $e1
    db $e3                                        ; $50b9: $e3
    xor [hl]                                      ; $50ba: $ae
    ld c, b                                       ; $50bb: $48
    ld e, [hl]                                    ; $50bc: $5e
    ret z                                         ; $50bd: $c8

    or d                                          ; $50be: $b2
    ld d, h                                       ; $50bf: $54
    ld a, [hl-]                                   ; $50c0: $3a
    dec a                                         ; $50c1: $3d
    db $fd                                        ; $50c2: $fd
    ld d, b                                       ; $50c3: $50
    di                                            ; $50c4: $f3
    ei                                            ; $50c5: $fb
    rst $38                                       ; $50c6: $ff
    ld l, h                                       ; $50c7: $6c
    ret z                                         ; $50c8: $c8

    ld [hl-], a                                   ; $50c9: $32
    inc sp                                        ; $50ca: $33
    ld de, $d31b                                  ; $50cb: $11 $1b $d3
    ld a, c                                       ; $50ce: $79
    cp c                                          ; $50cf: $b9
    and d                                         ; $50d0: $a2
    ld b, d                                       ; $50d1: $42
    halt                                          ; $50d2: $76
    ld [hl], a                                    ; $50d3: $77
    adc b                                         ; $50d4: $88
    dec c                                         ; $50d5: $0d
    ld e, c                                       ; $50d6: $59
    jp hl                                         ; $50d7: $e9


    or e                                          ; $50d8: $b3
    ld hl, $8ed3                                  ; $50d9: $21 $d3 $8e
    ld e, $31                                     ; $50dc: $1e $31
    db $dd                                        ; $50de: $dd
    rst $10                                       ; $50df: $d7
    sbc d                                         ; $50e0: $9a
    ld c, $81                                     ; $50e1: $0e $81
    ld [$21e7], sp                                ; $50e3: $08 $e7 $21
    bit 2, d                                      ; $50e6: $cb $52
    jp hl                                         ; $50e8: $e9


    ld [hl], h                                    ; $50e9: $74
    ld h, l                                       ; $50ea: $65
    adc a                                         ; $50eb: $8f
    jp hl                                         ; $50ec: $e9


    add a                                         ; $50ed: $87
    ld a, [bc]                                    ; $50ee: $0a
    sbc c                                         ; $50ef: $99
    rst $18                                       ; $50f0: $df
    rst $38                                       ; $50f1: $ff
    rlca                                          ; $50f2: $07
    cp h                                          ; $50f3: $bc
    ld e, c                                       ; $50f4: $59
    inc e                                         ; $50f5: $1c
    ld [hl], a                                    ; $50f6: $77
    push bc                                       ; $50f7: $c5
    sbc d                                         ; $50f8: $9a
    sbc [hl]                                      ; $50f9: $9e
    halt                                          ; $50fa: $76
    db $f4                                        ; $50fb: $f4
    push hl                                       ; $50fc: $e5
    sbc d                                         ; $50fd: $9a
    sub a                                         ; $50fe: $97
    dec e                                         ; $50ff: $1d
    dec a                                         ; $5100: $3d
    dec d                                         ; $5101: $15
    ld h, d                                       ; $5102: $62
    add sp, $6c                                   ; $5103: $e8 $6c
    ret z                                         ; $5105: $c8

    ld l, b                                       ; $5106: $68
    xor c                                         ; $5107: $a9
    sbc e                                         ; $5108: $9b
    ld c, c                                       ; $5109: $49
    call $ba9e                                    ; $510a: $cd $9e $ba
    ld b, e                                       ; $510d: $43
    halt                                          ; $510e: $76
    ld [hl], a                                    ; $510f: $77
    adc b                                         ; $5110: $88
    dec c                                         ; $5111: $0d
    ld e, c                                       ; $5112: $59
    jp hl                                         ; $5113: $e9


    inc hl                                        ; $5114: $23
    and [hl]                                      ; $5115: $a6
    ei                                            ; $5116: $fb
    ld e, d                                       ; $5117: $5a
    db $d3                                        ; $5118: $d3
    ld hl, $0110                                  ; $5119: $21 $10 $01
    adc a                                         ; $511c: $8f
    ld c, e                                       ; $511d: $4b
    ld c, l                                       ; $511e: $4d
    xor e                                         ; $511f: $ab
    sbc [hl]                                      ; $5120: $9e
    halt                                          ; $5121: $76
    ld l, d                                       ; $5122: $6a
    ld e, a                                       ; $5123: $5f
    cp c                                          ; $5124: $b9
    rst $08                                       ; $5125: $cf
    add [hl]                                      ; $5126: $86
    adc a                                         ; $5127: $8f
    cp e                                          ; $5128: $bb
    ld [hl+], a                                   ; $5129: $22
    ld a, c                                       ; $512a: $79
    ld hl, $2153                                  ; $512b: $21 $53 $21
    ld a, [$e6a1]                                 ; $512e: $fa $a1 $e6
    rst $30                                       ; $5131: $f7
    rst $38                                       ; $5132: $ff
    ld h, l                                       ; $5133: $65
    and $e1                                       ; $5134: $e6 $e1
    ld e, $d3                                     ; $5136: $1e $d3
    ld a, c                                       ; $5138: $79
    cp c                                          ; $5139: $b9
    and d                                         ; $513a: $a2
    ld b, d                                       ; $513b: $42
    add [hl]                                      ; $513c: $86
    di                                            ; $513d: $f3
    or e                                          ; $513e: $b3
    ld hl, $653b                                  ; $513f: $21 $3b $65
    rst $28                                       ; $5142: $ef
    ld e, d                                       ; $5143: $5a
    cp [hl]                                       ; $5144: $be
    or [hl]                                       ; $5145: $b6
    ld h, h                                       ; $5146: $64
    and l                                         ; $5147: $a5
    rst $08                                       ; $5148: $cf
    add [hl]                                      ; $5149: $86
    ld c, h                                       ; $514a: $4c
    dec sp                                        ; $514b: $3b
    ld a, d                                       ; $514c: $7a
    call nz, $5f74                                ; $514d: $c4 $74 $5f
    ld l, e                                       ; $5150: $6b
    ld a, [hl-]                                   ; $5151: $3a
    inc b                                         ; $5152: $04
    ld [hl+], a                                   ; $5153: $22
    ld c, a                                       ; $5154: $4f
    ldh a, [$50]                                  ; $5155: $f0 $50
    pop af                                        ; $5157: $f1
    ld h, l                                       ; $5158: $65
    ld a, [$b3b5]                                 ; $5159: $fa $b5 $b3
    and a                                         ; $515c: $a7
    xor $90                                       ; $515d: $ee $90
    ld sp, hl                                     ; $515f: $f9
    db $fd                                        ; $5160: $fd
    ld a, a                                       ; $5161: $7f
    sbc c                                         ; $5162: $99
    sbc c                                         ; $5163: $99
    db $10                                        ; $5164: $10
    dec l                                         ; $5165: $2d
    ret                                           ; $5166: $c9


    call c, $a967                                 ; $5167: $dc $67 $a9
    ld hl, sp-$4e                                 ; $516a: $f8 $b2
    ld a, h                                       ; $516c: $7c
    xor b                                         ; $516d: $a8
    cp h                                          ; $516e: $bc
    rra                                           ; $516f: $1f
    or [hl]                                       ; $5170: $b6
    ld h, $bc                                     ; $5171: $26 $bc
    ld h, h                                       ; $5173: $64
    cpl                                           ; $5174: $2f
    ret                                           ; $5175: $c9


    db $10                                        ; $5176: $10
    ld bc, $afa0                                  ; $5177: $01 $a0 $af
    inc c                                         ; $517a: $0c
    cpl                                           ; $517b: $2f
    inc e                                         ; $517c: $1c
    xor a                                         ; $517d: $af
    and l                                         ; $517e: $a5
    and e                                         ; $517f: $a3
    rrca                                          ; $5180: $0f
    rst $30                                       ; $5181: $f7
    or d                                          ; $5182: $b2
    or c                                          ; $5183: $b1
    ld [hl], d                                    ; $5184: $72
    sbc a                                         ; $5185: $9f
    adc l                                         ; $5186: $8d
    ld [hl], c                                    ; $5187: $71
    dec h                                         ; $5188: $25
    sub d                                         ; $5189: $92
    rla                                           ; $518a: $17
    ld [hl-], a                                   ; $518b: $32
    dec l                                         ; $518c: $2d
    add sp, -$41                                  ; $518d: $e8 $bf
    ld l, d                                       ; $518f: $6a
    adc d                                         ; $5190: $8a
    rla                                           ; $5191: $17
    or l                                          ; $5192: $b5
    ld [hl], h                                    ; $5193: $74
    ld de, $9743                                  ; $5194: $11 $43 $97
    pop af                                        ; $5197: $f1
    ld d, b                                       ; $5198: $50
    pop af                                        ; $5199: $f1
    ld h, l                                       ; $519a: $65
    ld [hl], a                                    ; $519b: $77
    jp c, Jump_000_25a9                           ; $519c: $da $a9 $25

    ld a, h                                       ; $519f: $7c
    and l                                         ; $51a0: $a5
    rst $08                                       ; $51a1: $cf
    add [hl]                                      ; $51a2: $86
    ld c, h                                       ; $51a3: $4c
    dec sp                                        ; $51a4: $3b
    ld a, d                                       ; $51a5: $7a
    call nz, $5f74                                ; $51a6: $c4 $74 $5f
    ld l, e                                       ; $51a9: $6b
    ld a, [hl-]                                   ; $51aa: $3a
    inc b                                         ; $51ab: $04
    ld [hl+], a                                   ; $51ac: $22
    add b                                         ; $51ad: $80
    xor a                                         ; $51ae: $af
    ld c, b                                       ; $51af: $48
    sbc $3f                                       ; $51b0: $de $3f
    ld a, d                                       ; $51b2: $7a
    adc c                                         ; $51b3: $89
    rst $08                                       ; $51b4: $cf
    db $db                                        ; $51b5: $db
    db $fc                                        ; $51b6: $fc
    ld c, a                                       ; $51b7: $4f
    adc h                                         ; $51b8: $8c
    ld h, h                                       ; $51b9: $64
    rst $10                                       ; $51ba: $d7
    ld l, [hl]                                    ; $51bb: $6e
    halt                                          ; $51bc: $76
    db $d3                                        ; $51bd: $d3
    or a                                          ; $51be: $b7
    add [hl]                                      ; $51bf: $86
    di                                            ; $51c0: $f3
    or e                                          ; $51c1: $b3
    ld hl, $8ed3                                  ; $51c2: $21 $d3 $8e
    sbc [hl]                                      ; $51c5: $9e
    adc $cb                                       ; $51c6: $ce $cb
    dec d                                         ; $51c8: $15
    dec d                                         ; $51c9: $15
    ld [bc], a                                    ; $51ca: $02
    ld hl, $7434                                  ; $51cb: $21 $34 $74
    or h                                          ; $51ce: $b4
    ld h, h                                       ; $51cf: $64
    sub d                                         ; $51d0: $92
    inc l                                         ; $51d1: $2c
    sub e                                         ; $51d2: $93
    ld a, [de]                                    ; $51d3: $1a
    xor c                                         ; $51d4: $a9
    rst $38                                       ; $51d5: $ff
    ld l, e                                       ; $51d6: $6b
    ld [hl], $7c                                  ; $51d7: $36 $7c
    ld e, d                                       ; $51d9: $5a
    ret                                           ; $51da: $c9


    call nc, $c7a9                                ; $51db: $d4 $a9 $c7
    sbc l                                         ; $51de: $9d
    ld a, d                                       ; $51df: $7a
    push hl                                       ; $51e0: $e5
    cp [hl]                                       ; $51e1: $be
    ld a, a                                       ; $51e2: $7f
    ld [hl], h                                    ; $51e3: $74
    dec l                                         ; $51e4: $2d
    ld [hl], c                                    ; $51e5: $71
    adc b                                         ; $51e6: $88
    nop                                           ; $51e7: $00
    adc a                                         ; $51e8: $8f
    ld c, e                                       ; $51e9: $4b
    call $f4db                                    ; $51ea: $cd $db $f4
    jp z, $807d                                   ; $51ed: $ca $7d $80

    xor a                                         ; $51f0: $af
    ld c, b                                       ; $51f1: $48
    ld e, [hl]                                    ; $51f2: $5e
    cp d                                          ; $51f3: $ba
    inc de                                        ; $51f4: $13
    ld d, d                                       ; $51f5: $52
    ld [hl], $a6                                  ; $51f6: $36 $a6
    push de                                       ; $51f8: $d5
    jp nz, $9d7d                                  ; $51f9: $c2 $7d $9d

    ret nc                                        ; $51fc: $d0

    pop hl                                        ; $51fd: $e1
    db $fc                                        ; $51fe: $fc
    ld l, h                                       ; $51ff: $6c
    ret z                                         ; $5200: $c8

    or h                                          ; $5201: $b4
    and e                                         ; $5202: $a3
    and a                                         ; $5203: $a7
    di                                            ; $5204: $f3
    ld [hl], d                                    ; $5205: $72
    ld b, l                                       ; $5206: $45
    add l                                         ; $5207: $85
    db $ec                                        ; $5208: $ec
    adc d                                         ; $5209: $8a
    sub h                                         ; $520a: $94
    ld c, h                                       ; $520b: $4c
    dec hl                                        ; $520c: $2b
    sbc c                                         ; $520d: $99
    dec [hl]                                      ; $520e: $35
    ld l, d                                       ; $520f: $6a
    ld h, $a5                                     ; $5210: $26 $a5
    dec l                                         ; $5212: $2d
    ld a, l                                       ; $5213: $7d
    ld l, d                                       ; $5214: $6a
    ld h, [hl]                                    ; $5215: $66
    reti                                          ; $5216: $d9


    ld e, b                                       ; $5217: $58
    add $43                                       ; $5218: $c6 $43
    ld l, h                                       ; $521a: $6c
    ld [hl], h                                    ; $521b: $74
    dec l                                         ; $521c: $2d
    ld e, a                                       ; $521d: $5f
    reti                                          ; $521e: $d9


    rrca                                          ; $521f: $0f
    ld a, e                                       ; $5220: $7b
    ld d, l                                       ; $5221: $55
    call $ddaf                                    ; $5222: $cd $af $dd
    db $dd                                        ; $5225: $dd
    ccf                                           ; $5226: $3f
    cp d                                          ; $5227: $ba
    ld e, d                                       ; $5228: $5a
    ld a, [hl+]                                   ; $5229: $2a
    cpl                                           ; $522a: $2f
    rra                                           ; $522b: $1f
    rst $38                                       ; $522c: $ff
    ld h, a                                       ; $522d: $67
    ld d, d                                       ; $522e: $52
    ld a, b                                       ; $522f: $78
    xor $84                                       ; $5230: $ee $84
    ld b, d                                       ; $5232: $42
    inc b                                         ; $5233: $04
    ld c, a                                       ; $5234: $4f
    sbc b                                         ; $5235: $98
    add hl, bc                                    ; $5236: $09
    pop de                                        ; $5237: $d1
    sub d                                         ; $5238: $92
    call z, $967d                                 ; $5239: $cc $7d $96
    adc d                                         ; $523c: $8a
    cpl                                           ; $523d: $2f
    ei                                            ; $523e: $fb
    ld d, a                                       ; $523f: $57
    xor c                                         ; $5240: $a9
    add sp, -$1f                                  ; $5241: $e8 $e1
    db $fc                                        ; $5243: $fc
    ld l, h                                       ; $5244: $6c
    ret z                                         ; $5245: $c8

    or h                                          ; $5246: $b4
    and e                                         ; $5247: $a3
    and a                                         ; $5248: $a7
    di                                            ; $5249: $f3
    ld [hl], d                                    ; $524a: $72
    ld b, l                                       ; $524b: $45
    add l                                         ; $524c: $85
    ret nz                                        ; $524d: $c0

    dec a                                         ; $524e: $3d
    ld l, $b5                                     ; $524f: $2e $b5
    db $fc                                        ; $5251: $fc
    ld sp, hl                                     ; $5252: $f9
    sbc [hl]                                      ; $5253: $9e
    ld e, [hl]                                    ; $5254: $5e
    halt                                          ; $5255: $76
    add [hl]                                      ; $5256: $86
    xor [hl]                                      ; $5257: $ae
    call c, $c997                                 ; $5258: $dc $97 $c9
    ret                                           ; $525b: $c9


    and e                                         ; $525c: $a3
    inc sp                                        ; $525d: $33
    add hl, hl                                    ; $525e: $29
    add hl, de                                    ; $525f: $19
    jr c, jr_04e_52a5                             ; $5260: $38 $43

    cp c                                          ; $5262: $b9
    ld c, $d6                                     ; $5263: $0e $d6
    or h                                          ; $5265: $b4
    ld [$e329], a                                 ; $5266: $ea $29 $e3
    ld a, $43                                     ; $5269: $3e $43
    ld h, a                                       ; $526b: $67
    ld b, e                                       ; $526c: $43
    and [hl]                                      ; $526d: $a6
    push bc                                       ; $526e: $c5
    cpl                                           ; $526f: $2f
    or c                                          ; $5270: $b1
    ld sp, $57cc                                  ; $5271: $31 $cc $57
    xor c                                         ; $5274: $a9
    db $10                                        ; $5275: $10
    ld b, [hl]                                    ; $5276: $46
    pop af                                        ; $5277: $f1
    xor l                                         ; $5278: $ad
    ld l, l                                       ; $5279: $6d
    ld d, [hl]                                    ; $527a: $56
    adc d                                         ; $527b: $8a
    add h                                         ; $527c: $84
    call z, $bd1e                                 ; $527d: $cc $1e $bd
    dec hl                                        ; $5280: $2b
    ld [de], a                                    ; $5281: $12
    db $10                                        ; $5282: $10
    ld bc, $e1e7                                  ; $5283: $01 $e7 $e1
    db $e3                                        ; $5286: $e3

Jump_04e_5287:
    xor [hl]                                      ; $5287: $ae
    ld c, b                                       ; $5288: $48
    ld e, [hl]                                    ; $5289: $5e
    ret z                                         ; $528a: $c8

    ld l, b                                       ; $528b: $68
    xor c                                         ; $528c: $a9
    sbc e                                         ; $528d: $9b
    ret                                           ; $528e: $c9


    db $ec                                        ; $528f: $ec
    xor c                                         ; $5290: $a9
    ld a, e                                       ; $5291: $7b
    ld [hl], a                                    ; $5292: $77
    ld [hl], $64                                  ; $5293: $36 $64
    jp c, $23d1                                   ; $5295: $da $d1 $23

    and [hl]                                      ; $5298: $a6
    ei                                            ; $5299: $fb
    ld e, d                                       ; $529a: $5a
    db $d3                                        ; $529b: $d3
    ld hl, $86cb                                  ; $529c: $21 $cb $86
    xor $87                                       ; $529f: $ee $87
    adc l                                         ; $52a1: $8d
    sbc $21                                       ; $52a2: $de $21
    or [hl]                                       ; $52a4: $b6

jr_04e_52a5:
    ld h, $d1                                     ; $52a5: $26 $d1
    di                                            ; $52a7: $f3
    ei                                            ; $52a8: $fb
    rst $38                                       ; $52a9: $ff
    cp b                                          ; $52aa: $b8
    ld b, e                                       ; $52ab: $43
    ld d, h                                       ; $52ac: $54
    db $fc                                        ; $52ad: $fc
    inc e                                         ; $52ae: $1c
    ld a, [de]                                    ; $52af: $1a
    rst $38                                       ; $52b0: $ff
    ld c, l                                       ; $52b1: $4d
    ld c, e                                       ; $52b2: $4b
    pop bc                                        ; $52b3: $c1
    sbc l                                         ; $52b4: $9d
    add a                                         ; $52b5: $87
    db $ec                                        ; $52b6: $ec
    add sp, $69                                   ; $52b7: $e8 $69
    add a                                         ; $52b9: $87
    ret c                                         ; $52ba: $d8

    xor e                                         ; $52bb: $ab
    ld h, [hl]                                    ; $52bc: $66
    add sp, $6c                                   ; $52bd: $e8 $6c
    or d                                          ; $52bf: $b2
    and e                                         ; $52c0: $a3
    sub a                                         ; $52c1: $97
    ld b, e                                       ; $52c2: $43
    and $f7                                       ; $52c3: $e6 $f7
    rst $38                                       ; $52c5: $ff
    dec a                                         ; $52c6: $3d
    sub c                                         ; $52c7: $91
    jp nz, $ef23                                  ; $52c8: $c2 $23 $ef

    rlca                                          ; $52cb: $07
    pop af                                        ; $52cc: $f1
    ld l, e                                       ; $52cd: $6b
    inc b                                         ; $52ce: $04
    ld [hl+], a                                   ; $52cf: $22
    add b                                         ; $52d0: $80
    cp $af                                        ; $52d1: $fe $af
    pop de                                        ; $52d3: $d1
    ld b, h                                       ; $52d4: $44
    xor c                                         ; $52d5: $a9
    ld e, a                                       ; $52d6: $5f
    db $fd                                        ; $52d7: $fd
    add e                                         ; $52d8: $83
    ld hl, sp+$35                                 ; $52d9: $f8 $35
    ld [de], a                                    ; $52db: $12
    dec a                                         ; $52dc: $3d
    adc l                                         ; $52dd: $8d
    rst $38                                       ; $52de: $ff
    ccf                                           ; $52df: $3f
    rrca                                          ; $52e0: $0f
    rst $20                                       ; $52e1: $e7
    ld h, a                                       ; $52e2: $67

Call_04e_52e3:
Jump_04e_52e3:
    ld b, e                                       ; $52e3: $43
    and [hl]                                      ; $52e4: $a6
    dec e                                         ; $52e5: $1d
    dec a                                         ; $52e6: $3d
    sbc l                                         ; $52e7: $9d
    sub a                                         ; $52e8: $97
    dec hl                                        ; $52e9: $2b
    ld a, [hl+]                                   ; $52ea: $2a
    db $e4                                        ; $52eb: $e4
    ld l, h                                       ; $52ec: $6c
    ld d, a                                       ; $52ed: $57
    ret z                                         ; $52ee: $c8

    ld c, a                                       ; $52ef: $4f
    ld a, [c]                                     ; $52f0: $f2
    push de                                       ; $52f1: $d5
    ld h, e                                       ; $52f2: $63
    call nz, $f648                                ; $52f3: $c4 $48 $f6
    sbc c                                         ; $52f6: $99
    sub h                                         ; $52f7: $94
    ld [hl], $9a                                  ; $52f8: $36 $9a
    db $e4                                        ; $52fa: $e4
    ld c, e                                       ; $52fb: $4b
    jr nz, jr_04e_5300                            ; $52fc: $20 $02

    rst $20                                       ; $52fe: $e7
    pop hl                                        ; $52ff: $e1

jr_04e_5300:
    db $e3                                        ; $5300: $e3
    xor [hl]                                      ; $5301: $ae
    ld c, b                                       ; $5302: $48
    ld e, [hl]                                    ; $5303: $5e
    ret z                                         ; $5304: $c8

    ld l, b                                       ; $5305: $68
    xor c                                         ; $5306: $a9
    sbc e                                         ; $5307: $9b
    ret                                           ; $5308: $c9


    db $ec                                        ; $5309: $ec
    xor c                                         ; $530a: $a9
    ld a, e                                       ; $530b: $7b
    ld [hl], a                                    ; $530c: $77
    ld [hl], $64                                  ; $530d: $36 $64
    jp c, $23d1                                   ; $530f: $da $d1 $23

    and [hl]                                      ; $5312: $a6
    ei                                            ; $5313: $fb
    ld e, d                                       ; $5314: $5a
    db $d3                                        ; $5315: $d3
    ld hl, $86cb                                  ; $5316: $21 $cb $86
    adc [hl]                                      ; $5319: $8e
    or d                                          ; $531a: $b2
    ld b, h                                       ; $531b: $44
    xor d                                         ; $531c: $aa
    sub a                                         ; $531d: $97
    ld hl, sp-$12                                 ; $531e: $f8 $ee
    db $e4                                        ; $5320: $e4
    ld l, b                                       ; $5321: $68
    dec l                                         ; $5322: $2d
    inc a                                         ; $5323: $3c
    ld h, h                                       ; $5324: $64
    and l                                         ; $5325: $a5
    rrca                                          ; $5326: $0f
    ret c                                         ; $5327: $d8

    cp a                                          ; $5328: $bf
    adc $e8                                       ; $5329: $ce $e8
    and [hl]                                      ; $532b: $a6
    ld c, b                                       ; $532c: $48
    ld e, $f9                                     ; $532d: $1e $f9
    sub l                                         ; $532f: $95
    ld [hl], e                                    ; $5330: $73
    daa                                           ; $5331: $27
    inc d                                         ; $5332: $14
    ld [hl+], a                                   ; $5333: $22
    ld c, a                                       ; $5334: $4f
    xor e                                         ; $5335: $ab
    rst $00                                       ; $5336: $c7
    sbc l                                         ; $5337: $9d
    ld a, [hl-]                                   ; $5338: $3a
    ld e, a                                       ; $5339: $5f
    ld [c], a                                     ; $533a: $e2
    ld d, a                                       ; $533b: $57
    ld c, l                                       ; $533c: $4d
    adc [hl]                                      ; $533d: $8e
    sbc [hl]                                      ; $533e: $9e
    ld c, l                                       ; $533f: $4d
    and [hl]                                      ; $5340: $a6
    ld hl, sp-$22                                 ; $5341: $f8 $de
    sub l                                         ; $5343: $95
    db $dd                                        ; $5344: $dd
    sbc c                                         ; $5345: $99
    ld [de], a                                    ; $5346: $12
    db $fd                                        ; $5347: $fd
    db $10                                        ; $5348: $10
    ld e, e                                       ; $5349: $5b
    inc hl                                        ; $534a: $23
    cp a                                          ; $534b: $bf
    ld [hl], d                                    ; $534c: $72
    xor $84                                       ; $534d: $ee $84
    ld b, d                                       ; $534f: $42
    ld [$9367], sp                                ; $5350: $08 $67 $93
    sub c                                         ; $5353: $91
    sub d                                         ; $5354: $92
    dec [hl]                                      ; $5355: $35
    ld c, a                                       ; $5356: $4f
    ld l, d                                       ; $5357: $6a
    adc c                                         ; $5358: $89
    adc a                                         ; $5359: $8f
    dec sp                                        ; $535a: $3b
    push af                                       ; $535b: $f5
    add h                                         ; $535c: $84
    ld d, a                                       ; $535d: $57
    add $67                                       ; $535e: $c6 $67
    db $fc                                        ; $5360: $fc
    ld c, b                                       ; $5361: $48
    ld de, $0887                                  ; $5362: $11 $87 $08
    ld c, a                                       ; $5365: $4f
    adc d                                         ; $5366: $8a
    cp $6a                                        ; $5367: $fe $6a
    ld a, [c]                                     ; $5369: $f2
    sub e                                         ; $536a: $93
    ld [hl], h                                    ; $536b: $74
    ld a, [hl-]                                   ; $536c: $3a
    ld h, h                                       ; $536d: $64
    call c, $47a9                                 ; $536e: $dc $a9 $47
    ld c, h                                       ; $5371: $4c
    ei                                            ; $5372: $fb
    ld l, b                                       ; $5373: $68
    ret c                                         ; $5374: $d8

    and l                                         ; $5375: $a5
    and e                                         ; $5376: $a3
    ld c, a                                       ; $5377: $4f
    call nc, $b4d6                                ; $5378: $d4 $d6 $b4
    add e                                         ; $537b: $83
    or c                                          ; $537c: $b1
    jp hl                                         ; $537d: $e9


    sbc c                                         ; $537e: $99
    sub h                                         ; $537f: $94
    ld [hl], $6f                                  ; $5380: $36 $6f
    di                                            ; $5382: $f3
    ccf                                           ; $5383: $3f
    xor c                                         ; $5384: $a9
    cp $d5                                        ; $5385: $fe $d5
    dec sp                                        ; $5387: $3b
    ld a, d                                       ; $5388: $7a
    pop hl                                        ; $5389: $e1
    cp [hl]                                       ; $538a: $be
    ld [hl], h                                    ; $538b: $74
    rst $10                                       ; $538c: $d7
    or d                                          ; $538d: $b2
    rra                                           ; $538e: $1f
    rst $38                                       ; $538f: $ff
    rst $00                                       ; $5390: $c7
    jp z, Jump_04e_787d                           ; $5391: $ca $7d $78

    sbc a                                         ; $5394: $9f
    db $f4                                        ; $5395: $f4
    sbc d                                         ; $5396: $9a
    ld sp, hl                                     ; $5397: $f9
    sub a                                         ; $5398: $97
    call nc, Call_04e_6988                        ; $5399: $d4 $88 $69
    daa                                           ; $539c: $27
    add [hl]                                      ; $539d: $86
    and [hl]                                      ; $539e: $a6
    xor a                                         ; $539f: $af
    sub h                                         ; $53a0: $94
    ld e, a                                       ; $53a1: $5f
    inc hl                                        ; $53a2: $23
    pop de                                        ; $53a3: $d1
    db $10                                        ; $53a4: $10
    ld bc, $4480                                  ; $53a5: $01 $80 $44
    ccf                                           ; $53a8: $3f
    call nz, $86ce                                ; $53a9: $c4 $ce $86
    adc h                                         ; $53ac: $8c
    sub [hl]                                      ; $53ad: $96
    cp d                                          ; $53ae: $ba
    sbc c                                         ; $53af: $99
    call nc, $a9ec                                ; $53b0: $d4 $ec $a9
    dec sp                                        ; $53b3: $3b
    ld h, h                                       ; $53b4: $64
    jr c, jr_04e_53f6                             ; $53b5: $38 $3f

    dec de                                        ; $53b7: $1b

Call_04e_53b8:
    or d                                          ; $53b8: $b2
    ld d, e                                       ; $53b9: $53
    or $ae                                        ; $53ba: $f6 $ae
    jp hl                                         ; $53bc: $e9


    add a                                         ; $53bd: $87
    ld d, d                                       ; $53be: $52
    ld hl, $4ee3                                  ; $53bf: $21 $e3 $4e
    cp l                                          ; $53c2: $bd
    ld [hl], d                                    ; $53c3: $72
    rra                                           ; $53c4: $1f
    ld sp, $d694                                  ; $53c5: $31 $94 $d6
    db $fc                                        ; $53c8: $fc
    cp $3f                                        ; $53c9: $fe $3f
    dec de                                        ; $53cb: $1b
    ld [hl-], a                                   ; $53cc: $32
    adc [hl]                                      ; $53cd: $8e
    ld a, c                                       ; $53ce: $79
    or h                                          ; $53cf: $b4
    adc l                                         ; $53d0: $8d
    jp hl                                         ; $53d1: $e9


    cp h                                          ; $53d2: $bc
    ld e, h                                       ; $53d3: $5c
    ld d, c                                       ; $53d4: $51
    ld hl, $e770                                  ; $53d5: $21 $70 $e7
    db $fc                                        ; $53d8: $fc
    adc b                                         ; $53d9: $88
    and c                                         ; $53da: $a1
    inc [hl]                                      ; $53db: $34
    ld a, d                                       ; $53dc: $7a
    ld [hl], $59                                  ; $53dd: $36 $59
    sub [hl]                                      ; $53df: $96
    ld c, d                                       ; $53e0: $4a
    and a                                         ; $53e1: $a7
    ld a, l                                       ; $53e2: $7d
    ld a, [hl]                                    ; $53e3: $7e
    rst $38                                       ; $53e4: $ff
    ld e, a                                       ; $53e5: $5f
    ld h, [hl]                                    ; $53e6: $66
    ld h, $44                                     ; $53e7: $26 $44
    ld c, e                                       ; $53e9: $4b
    ld [hl-], a                                   ; $53ea: $32
    rst $30                                       ; $53eb: $f7
    ld e, c                                       ; $53ec: $59
    ld a, [hl+]                                   ; $53ed: $2a
    cp [hl]                                       ; $53ee: $be
    call z, $d9d0                                 ; $53ef: $cc $d0 $d9
    ld h, h                                       ; $53f2: $64
    sbc c                                         ; $53f3: $99
    inc h                                         ; $53f4: $24
    rst $38                                       ; $53f5: $ff

jr_04e_53f6:
    rst $00                                       ; $53f6: $c7
    db $f4                                        ; $53f7: $f4
    ld [$265a], a                                 ; $53f8: $ea $5a $26
    ld h, l                                       ; $53fb: $65
    bit 0, d                                      ; $53fc: $cb $42
    inc b                                         ; $53fe: $04
    ret nz                                        ; $53ff: $c0

    xor $4f                                       ; $5400: $ee $4f
    ld l, c                                       ; $5402: $69
    di                                            ; $5403: $f3
    ld [$abe5], a                                 ; $5404: $ea $e5 $ab
    and [hl]                                      ; $5407: $a6
    ld c, d                                       ; $5408: $4a
    ld [hl-], a                                   ; $5409: $32
    xor c                                         ; $540a: $a9
    ld h, l                                       ; $540b: $65
    xor c                                         ; $540c: $a9
    ld [hl], h                                    ; $540d: $74
    jp c, Jump_000_35c7                           ; $540e: $da $c7 $35

jr_04e_5411:
    cpl                                           ; $5411: $2f
    ld c, e                                       ; $5412: $4b
    dec de                                        ; $5413: $1b
    rst $30                                       ; $5414: $f7
    db $10                                        ; $5415: $10
    sbc l                                         ; $5416: $9d
    sub a                                         ; $5417: $97
    dec hl                                        ; $5418: $2b
    ld a, [hl+]                                   ; $5419: $2a
    ld h, h                                       ; $541a: $64
    ld a, [hl]                                    ; $541b: $7e
    rst $38                                       ; $541c: $ff
    sbc a                                         ; $541d: $9f
    dec c                                         ; $541e: $0d
    sbc c                                         ; $541f: $99
    halt                                          ; $5420: $76
    db $f4                                        ; $5421: $f4
    ld [hl], h                                    ; $5422: $74
    ld e, [hl]                                    ; $5423: $5e
    xor [hl]                                      ; $5424: $ae
    xor b                                         ; $5425: $a8
    db $10                                        ; $5426: $10
    cp b                                          ; $5427: $b8
    rst $00                                       ; $5428: $c7
    and l                                         ; $5429: $a5
    and $6d                                       ; $542a: $e6 $6d
    ld a, d                                       ; $542c: $7a
    push hl                                       ; $542d: $e5
    ld a, $ad                                     ; $542e: $3e $ad
    ld h, h                                       ; $5430: $64
    ld e, d                                       ; $5431: $5a
    push af                                       ; $5432: $f5
    ld b, d                                       ; $5433: $42
    ld b, [hl]                                    ; $5434: $46
    ld c, e                                       ; $5435: $4b
    db $dd                                        ; $5436: $dd
    ld c, h                                       ; $5437: $4c
    ld h, [hl]                                    ; $5438: $66
    ld c, a                                       ; $5439: $4f
    db $dd                                        ; $543a: $dd
    cp e                                          ; $543b: $bb
    set 2, a                                      ; $543c: $cb $d7
    ld a, l                                       ; $543e: $7d
    sbc l                                         ; $543f: $9d
    ret nc                                        ; $5440: $d0

    push bc                                       ; $5441: $c5
    rst $38                                       ; $5442: $ff
    pop de                                        ; $5443: $d1
    bit 2, a                                      ; $5444: $cb $57
    ld b, [hl]                                    ; $5446: $46
    db $f4                                        ; $5447: $f4
    jp z, $499e                                   ; $5448: $ca $9e $49

    daa                                           ; $544b: $27
    jp hl                                         ; $544c: $e9


    db $f4                                        ; $544d: $f4
    or d                                          ; $544e: $b2
    and c                                         ; $544f: $a1
    ei                                            ; $5450: $fb
    ld h, c                                       ; $5451: $61
    and e                                         ; $5452: $a3
    sub a                                         ; $5453: $97
    ldh [$f8], a                                  ; $5454: $e0 $f8
    or h                                          ; $5456: $b4
    db $eb                                        ; $5457: $eb
    db $10                                        ; $5458: $10
    ld bc, $e960                                  ; $5459: $01 $60 $e9
    ld l, h                                       ; $545c: $6c
    ld [hl-], a                                   ; $545d: $32
    db $fd                                        ; $545e: $fd
    cp $3f                                        ; $545f: $fe $3f
    ld h, d                                       ; $5461: $62
    jr z, jr_04e_5411                             ; $5462: $28 $ad

    ld [hl], c                                    ; $5464: $71
    and [hl]                                      ; $5465: $a6
    ld a, l                                       ; $5466: $7d
    ld a, [hl]                                    ; $5467: $7e
    rst $38                                       ; $5468: $ff
    rra                                           ; $5469: $1f
    rst $00                                       ; $546a: $c7
    inc a                                         ; $546b: $3c
    jp c, $74c6                                   ; $546c: $da $c6 $74

    ld e, [hl]                                    ; $546f: $5e
    xor [hl]                                      ; $5470: $ae
    xor b                                         ; $5471: $a8
    sub b                                         ; $5472: $90
    sub c                                         ; $5473: $91
    sub d                                         ; $5474: $92
    reti                                          ; $5475: $d9


    ld h, h                                       ; $5476: $64
    ccf                                           ; $5477: $3f
    cp h                                          ; $5478: $bc
    ld d, $9c                                     ; $5479: $16 $9c
    ld b, a                                       ; $547b: $47
    rst $08                                       ; $547c: $cf
    cp e                                          ; $547d: $bb
    ld [hl], b                                    ; $547e: $70
    call c, $eef4                                 ; $547f: $dc $f4 $ee
    ld l, h                                       ; $5482: $6c
    ret z                                         ; $5483: $c8

    ld a, [c]                                     ; $5484: $f2
    ret                                           ; $5485: $c9


    halt                                          ; $5486: $76
    db $ed                                        ; $5487: $ed
    db $10                                        ; $5488: $10
    dec de                                        ; $5489: $1b
    or d                                          ; $548a: $b2
    jp nc, Jump_04e_4c47                          ; $548b: $d2 $47 $4c

    rst $30                                       ; $548e: $f7
    or l                                          ; $548f: $b5
    and [hl]                                      ; $5490: $a6
    ld b, e                                       ; $5491: $43
    jr nz, @+$04                                  ; $5492: $20 $02

    ret nz                                        ; $5494: $c0

    xor $4f                                       ; $5495: $ee $4f
    ld l, c                                       ; $5497: $69
    ld a, c                                       ; $5498: $79
    cp a                                          ; $5499: $bf
    ld d, h                                       ; $549a: $54
    ld [hl], h                                    ; $549b: $74
    daa                                           ; $549c: $27
    ld [hl], h                                    ; $549d: $74
    rst $38                                       ; $549e: $ff
    ld a, [hl+]                                   ; $549f: $2a
    dec d                                         ; $54a0: $15
    dec a                                         ; $54a1: $3d
    sbc h                                         ; $54a2: $9c
    sbc a                                         ; $54a3: $9f
    dec c                                         ; $54a4: $0d
    sbc c                                         ; $54a5: $99
    halt                                          ; $54a6: $76
    db $f4                                        ; $54a7: $f4
    ld [hl], h                                    ; $54a8: $74
    ld e, [hl]                                    ; $54a9: $5e
    xor [hl]                                      ; $54aa: $ae
    xor b                                         ; $54ab: $a8
    db $10                                        ; $54ac: $10
    cp b                                          ; $54ad: $b8
    di                                            ; $54ae: $f3
    ldh a, [$e5]                                  ; $54af: $f0 $e5
    ld b, e                                       ; $54b1: $43
    push hl                                       ; $54b2: $e5
    sub l                                         ; $54b3: $95
    ei                                            ; $54b4: $fb
    ld l, h                                       ; $54b5: $6c
    ld hl, sp-$48                                 ; $54b6: $f8 $b8
    dec hl                                        ; $54b8: $2b
    sub d                                         ; $54b9: $92
    daa                                           ; $54ba: $27
    cp h                                          ; $54bb: $bc
    ld [$5f5a], a                                 ; $54bc: $ea $5a $5f
    ld [c], a                                     ; $54bf: $e2
    ld d, a                                       ; $54c0: $57

jr_04e_54c1:
    ld sp, hl                                     ; $54c1: $f9
    cp $91                                        ; $54c2: $fe $91
    ret                                           ; $54c4: $c9


    ld d, l                                       ; $54c5: $55
    or l                                          ; $54c6: $b5
    sub e                                         ; $54c7: $93
    ld e, $dd                                     ; $54c8: $1e $dd
    sub l                                         ; $54ca: $95
    adc c                                         ; $54cb: $89
    ld e, h                                       ; $54cc: $5c
    ld d, c                                       ; $54cd: $51
    push de                                       ; $54ce: $d5
    or e                                          ; $54cf: $b3
    ld b, a                                       ; $54d0: $47
    rst $28                                       ; $54d1: $ef
    adc d                                         ; $54d2: $8a
    inc b                                         ; $54d3: $04
    ld b, h                                       ; $54d4: $44
    rst $20                                       ; $54d5: $e7
    pop hl                                        ; $54d6: $e1
    db $e3                                        ; $54d7: $e3
    xor [hl]                                      ; $54d8: $ae
    ld c, b                                       ; $54d9: $48
    ld e, [hl]                                    ; $54da: $5e
    cp b                                          ; $54db: $b8
    cpl                                           ; $54dc: $2f
    inc de                                        ; $54dd: $13
    ld e, $1f                                     ; $54de: $1e $1f
    dec c                                         ; $54e0: $0d
    cp e                                          ; $54e1: $bb
    ld c, h                                       ; $54e2: $4c
    ld a, [$b4ea]                                 ; $54e3: $fa $ea $b4
    inc a                                         ; $54e6: $3c
    ld a, [$dfd6]                                 ; $54e7: $fa $d6 $df
    sbc l                                         ; $54ea: $9d
    halt                                          ; $54eb: $76
    ld l, d                                       ; $54ec: $6a
    add hl, bc                                    ; $54ed: $09
    add a                                         ; $54ee: $87
    ld a, e                                       ; $54ef: $7b
    ld e, h                                       ; $54f0: $5c
    ld l, d                                       ; $54f1: $6a
    jp c, Jump_04e_6da9                           ; $54f2: $da $a9 $6d

    adc h                                         ; $54f5: $8c
    jr jr_04e_54c1                                ; $54f6: $18 $c9

    ld a, [hl]                                    ; $54f8: $7e
    ld d, l                                       ; $54f9: $55
    db $ed                                        ; $54fa: $ed
    inc sp                                        ; $54fb: $33
    inc de                                        ; $54fc: $13
    dec sp                                        ; $54fd: $3b
    ld a, e                                       ; $54fe: $7b
    db $f4                                        ; $54ff: $f4
    push hl                                       ; $5500: $e5
    sbc d                                         ; $5501: $9a
    sub a                                         ; $5502: $97
    add l                                         ; $5503: $85
    ld c, h                                       ; $5504: $4c
    pop af                                        ; $5505: $f1
    and d                                         ; $5506: $a2
    jr nz, jr_04e_550b                            ; $5507: $20 $02

    adc a                                         ; $5509: $8f
    ld c, e                                       ; $550a: $4b

jr_04e_550b:
    adc l                                         ; $550b: $8d
    sub h                                         ; $550c: $94
    adc h                                         ; $550d: $8c
    ld c, b                                       ; $550e: $48
    pop hl                                        ; $550f: $e1
    cp b                                          ; $5510: $b8
    ld c, a                                       ; $5511: $4f
    ccf                                           ; $5512: $3f
    call nz, $7e6b                                ; $5513: $c4 $6b $7e
    rst $38                                       ; $5516: $ff
    rst $08                                       ; $5517: $cf
    ld h, e                                       ; $5518: $63
    sub [hl]                                      ; $5519: $96
    ld a, [de]                                    ; $551a: $1a
    rst $00                                       ; $551b: $c7
    rst $30                                       ; $551c: $f7
    cp $d1                                        ; $551d: $fe $d1
    dec [hl]                                      ; $551f: $35
    ld a, d                                       ; $5520: $7a
    push de                                       ; $5521: $d5
    ld a, [hl+]                                   ; $5522: $2a
    ld a, e                                       ; $5523: $7b
    dec de                                        ; $5524: $1b
    ld sp, $c2f4                                  ; $5525: $31 $f4 $c2
    sbc l                                         ; $5528: $9d
    sbc a                                         ; $5529: $9f
    cp d                                          ; $552a: $ba
    ld b, e                                       ; $552b: $43
    and $f7                                       ; $552c: $e6 $f7
    rst $38                                       ; $552e: $ff
    ld d, l                                       ; $552f: $55
    or $36                                        ; $5530: $f6 $36
    ld h, d                                       ; $5532: $62
    add sp, $75                                   ; $5533: $e8 $75
    db $d3                                        ; $5535: $d3
    ld [de], a                                    ; $5536: $12
    ld a, $7b                                     ; $5537: $3e $7b
    db $f4                                        ; $5539: $f4
    jp nc, $bda6                                  ; $553a: $d2 $a6 $bd

    halt                                          ; $553d: $76
    db $f4                                        ; $553e: $f4
    ld [hl-], a                                   ; $553f: $32
    cp a                                          ; $5540: $bf
    ld l, a                                       ; $5541: $6f
    ld d, d                                       ; $5542: $52
    and h                                         ; $5543: $a4
    call nz, Call_04e_4406                        ; $5544: $c4 $06 $44
    rst $20                                       ; $5547: $e7
    pop hl                                        ; $5548: $e1
    or e                                          ; $5549: $b3
    ld b, a                                       ; $554a: $47
    rrca                                          ; $554b: $0f
    scf                                           ; $554c: $37
    db $ed                                        ; $554d: $ed
    ld a, l                                       ; $554e: $7d
    cp b                                          ; $554f: $b8
    add a                                         ; $5550: $87
    rrca                                          ; $5551: $0f
    rst $20                                       ; $5552: $e7
    ld h, a                                       ; $5553: $67
    ld b, e                                       ; $5554: $43
    ld h, $a6                                     ; $5555: $26 $a6
    cp e                                          ; $5557: $bb
    and [hl]                                      ; $5558: $a6
    rra                                           ; $5559: $1f
    ld c, d                                       ; $555a: $4a
    add l                                         ; $555b: $85
    ld b, b                                       ; $555c: $40
    ld [$fa6f], sp                                ; $555d: $08 $6f $fa
    sub a                                         ; $5560: $97
    ret c                                         ; $5561: $d8

    ld l, c                                       ; $5562: $69
    push de                                       ; $5563: $d5
    ld h, e                                       ; $5564: $63
    sub [hl]                                      ; $5565: $96
    sbc d                                         ; $5566: $9a
    halt                                          ; $5567: $76
    ld l, d                                       ; $5568: $6a
    sbc a                                         ; $5569: $9f
    dec c                                         ; $556a: $0d
    rra                                           ; $556b: $1f
    ld c, l                                       ; $556c: $4d
    call c, Call_000_20bb                         ; $556d: $dc $bb $20
    ld [bc], a                                    ; $5570: $02
    adc a                                         ; $5571: $8f
    ld c, e                                       ; $5572: $4b
    call Call_04e_7baf                            ; $5573: $cd $af $7b
    push af                                       ; $5576: $f5
    ld c, h                                       ; $5577: $4c
    ld c, d                                       ; $5578: $4a
    sbc e                                         ; $5579: $9b
    ld e, a                                       ; $557a: $5f
    rst $30                                       ; $557b: $f7
    ld [$91dd], a                                 ; $557c: $ea $dd $91
    cp [hl]                                       ; $557f: $be
    reti                                          ; $5580: $d9


    db $eb                                        ; $5581: $eb
    ld a, a                                       ; $5582: $7f
    sub d                                         ; $5583: $92
    db $fc                                        ; $5584: $fc
    sub d                                         ; $5585: $92
    or e                                          ; $5586: $b3
    pop de                                        ; $5587: $d1
    sub b                                         ; $5588: $90
    ld sp, $8d4b                                  ; $5589: $31 $4b $8d
    sub h                                         ; $558c: $94
    xor h                                         ; $558d: $ac
    cp [hl]                                       ; $558e: $be
    db $ed                                        ; $558f: $ed
    xor e                                         ; $5590: $ab
    sub [hl]                                      ; $5591: $96
    ld h, e                                       ; $5592: $63
    ld e, h                                       ; $5593: $5c
    rla                                           ; $5594: $17
    push af                                       ; $5595: $f5
    ld l, e                                       ; $5596: $6b
    ld b, e                                       ; $5597: $43
    jr nz, jr_04e_559c                            ; $5598: $20 $02

    adc a                                         ; $559a: $8f
    ld c, e                                       ; $559b: $4b

jr_04e_559c:
    ld c, l                                       ; $559c: $4d
    inc sp                                        ; $559d: $33
    jr c, jr_04e_55fe                             ; $559e: $38 $5e

    ld a, c                                       ; $55a0: $79
    push hl                                       ; $55a1: $e5

jr_04e_55a2:
    ld a, $b9                                     ; $55a2: $3e $b9
    ld [hl], e                                    ; $55a4: $73
    ld d, [hl]                                    ; $55a5: $56
    adc d                                         ; $55a6: $8a
    ld a, b                                       ; $55a7: $78
    call z, $e9d0                                 ; $55a8: $cc $d0 $e9
    rst $00                                       ; $55ab: $c7
    daa                                           ; $55ac: $27
    add [hl]                                      ; $55ad: $86
    ld h, [hl]                                    ; $55ae: $66
    ld c, a                                       ; $55af: $4f
    sub a                                         ; $55b0: $97
    sub b                                         ; $55b1: $90
    ld [hl], b                                    ; $55b2: $70
    rrca                                          ; $55b3: $0f
    add c                                         ; $55b4: $81
    inc bc                                        ; $55b5: $03
    ld a, c                                       ; $55b6: $79
    ld a, a                                       ; $55b7: $7f
    db $ed                                        ; $55b8: $ed
    ld [$9a87], a                                 ; $55b9: $ea $87 $9a
    ld c, c                                       ; $55bc: $49
    ld l, c                                       ; $55bd: $69
    ei                                            ; $55be: $fb
    pop hl                                        ; $55bf: $e1
    or l                                          ; $55c0: $b5
    ld c, $5b                                     ; $55c1: $0e $5b
    jp Jump_04e_45f9                              ; $55c3: $c3 $f9 $45


    rst $10                                       ; $55c6: $d7
    ld [c], a                                     ; $55c7: $e2
    add a                                         ; $55c8: $87
    xor [hl]                                      ; $55c9: $ae
    dec b                                         ; $55ca: $05
    sbc l                                         ; $55cb: $9d
    inc h                                         ; $55cc: $24
    db $ec                                        ; $55cd: $ec
    ld de, $ab4f                                  ; $55ce: $11 $4f $ab
    rst $30                                       ; $55d1: $f7
    xor a                                         ; $55d2: $af
    ld d, d                                       ; $55d3: $52
    pop de                                        ; $55d4: $d1
    inc bc                                        ; $55d5: $03
    sbc $2c                                       ; $55d6: $de $2c
    adc [hl]                                      ; $55d8: $8e
    cp e                                          ; $55d9: $bb
    ld h, d                                       ; $55da: $62
    ld c, l                                       ; $55db: $4d
    ccf                                           ; $55dc: $3f
    ld b, d                                       ; $55dd: $42
    jr jr_04e_55a2                                ; $55de: $18 $c2

    sub [hl]                                      ; $55e0: $96
    inc c                                         ; $55e1: $0c
    rst $20                                       ; $55e2: $e7
    sub a                                         ; $55e3: $97
    ld l, a                                       ; $55e4: $6f
    or $1a                                        ; $55e5: $f6 $1a
    cp $cb                                        ; $55e7: $fe $cb
    di                                            ; $55e9: $f3
    inc c                                         ; $55ea: $0c
    dec e                                         ; $55eb: $1d
    or e                                          ; $55ec: $b3
    call nc, Call_04e_78ae                        ; $55ed: $d4 $ae $78
    adc h                                         ; $55f0: $8c
    sbc $9c                                       ; $55f1: $de $9c
    cp l                                          ; $55f3: $bd
    ld a, d                                       ; $55f4: $7a
    db $f4                                        ; $55f5: $f4
    ld a, [hl+]                                   ; $55f6: $2a
    adc b                                         ; $55f7: $88
    nop                                           ; $55f8: $00
    jr jr_04e_5654                                ; $55f9: $18 $59

    ld a, [$7dd1]                                 ; $55fb: $fa $d1 $7d

jr_04e_55fe:
    ld [hl], $1b                                  ; $55fe: $36 $1b
    cp [hl]                                       ; $5600: $be
    and e                                         ; $5601: $a3
    ld [hl], a                                    ; $5602: $77
    push bc                                       ; $5603: $c5
    ld h, e                                       ; $5604: $63
    db $f4                                        ; $5605: $f4
    cp d                                          ; $5606: $ba
    cpl                                           ; $5607: $2f
    ld a, [hl]                                    ; $5608: $7e
    add sp, $5a                                   ; $5609: $e8 $5a
    ld d, b                                       ; $560b: $50
    adc b                                         ; $560c: $88
    nop                                           ; $560d: $00
    sbc b                                         ; $560e: $98
    ld a, [hl-]                                   ; $560f: $3a
    rra                                           ; $5610: $1f
    call nz, $f46b                                ; $5611: $c4 $6b $f4
    xor d                                         ; $5614: $aa
    or e                                          ; $5615: $b3
    pop hl                                        ; $5616: $e1
    ld l, l                                       ; $5617: $6d

jr_04e_5618:
    cp b                                          ; $5618: $b8
    ret z                                         ; $5619: $c8

    reti                                          ; $561a: $d9


    or h                                          ; $561b: $b4
    sbc h                                         ; $561c: $9c
    adc l                                         ; $561d: $8d
    add [hl]                                      ; $561e: $86
    ld c, h                                       ; $561f: $4c
    xor a                                         ; $5620: $af
    sbc $bf                                       ; $5621: $de $bf
    ld c, d                                       ; $5623: $4a
    ld b, l                                       ; $5624: $45
    rrca                                          ; $5625: $0f
    ld a, b                                       ; $5626: $78
    or e                                          ; $5627: $b3
    jr c, jr_04e_5618                             ; $5628: $38 $ee

    adc d                                         ; $562a: $8a
    dec [hl]                                      ; $562b: $35
    db $fd                                        ; $562c: $fd
    ld [$e701], sp                                ; $562d: $08 $01 $e7
    pop hl                                        ; $5630: $e1
    dec sp                                        ; $5631: $3b
    ld a, d                                       ; $5632: $7a
    jp hl                                         ; $5633: $e9


    inc hl                                        ; $5634: $23
    ei                                            ; $5635: $fb
    jp z, Jump_000_367d                           ; $5636: $ca $7d $36

    sbc c                                         ; $5639: $99
    halt                                          ; $563a: $76
    db $dd                                        ; $563b: $dd
    xor e                                         ; $563c: $ab
    ld h, a                                       ; $563d: $67
    jp Jump_04e_4577                              ; $563e: $c3 $77 $45


    ld c, d                                       ; $5641: $4a
    or $99                                        ; $5642: $f6 $99
    ld c, c                                       ; $5644: $49
    ld c, $5f                                     ; $5645: $0e $5f
    cp $47                                        ; $5647: $fe $47
    adc d                                         ; $5649: $8a
    db $e4                                        ; $564a: $e4

Call_04e_564b:
    or e                                          ; $564b: $b3
    add c                                         ; $564c: $81
    inc sp                                        ; $564d: $33
    xor $d1                                       ; $564e: $ee $d1
    db $10                                        ; $5650: $10
    ld bc, $4b8f                                  ; $5651: $01 $8f $4b

jr_04e_5654:
    ld c, l                                       ; $5654: $4d
    rrca                                          ; $5655: $0f
    rst $18                                       ; $5656: $df
    dec d                                         ; $5657: $15
    rrca                                          ; $5658: $0f
    adc b                                         ; $5659: $88
    nop                                           ; $565a: $00
    rst $20                                       ; $565b: $e7
    pop hl                                        ; $565c: $e1
    inc hl                                        ; $565d: $23
    dec h                                         ; $565e: $25
    ei                                            ; $565f: $fb
    ld d, a                                       ; $5660: $57
    xor c                                         ; $5661: $a9
    sbc d                                         ; $5662: $9a
    ld e, [hl]                                    ; $5663: $5e
    cp l                                          ; $5664: $bd
    ld l, h                                       ; $5665: $6c
    add sp, -$4c                                  ; $5666: $e8 $b4
    ld hl, sp-$27                                 ; $5668: $f8 $d9
    ld hl, $a002                                  ; $566a: $21 $02 $a0
    sbc c                                         ; $566d: $99
    ld h, l                                       ; $566e: $65
    cp d                                          ; $566f: $ba
    ld hl, $0f02                                  ; $5670: $21 $02 $0f
    db $fc                                        ; $5673: $fc

jr_04e_5674:
    rst $38                                       ; $5674: $ff
    cp e                                          ; $5675: $bb
    ld [c], a                                     ; $5676: $e2
    ld sp, $9f9c                                  ; $5677: $31 $9c $9f
    ld c, c                                       ; $567a: $49
    ld l, c                                       ; $567b: $69
    bit 7, [hl]                                   ; $567c: $cb $7e
    ld [$af65], a                                 ; $567e: $ea $65 $af
    inc d                                         ; $5681: $14
    xor c                                         ; $5682: $a9
    adc $a3                                       ; $5683: $ce $a3
    sbc l                                         ; $5685: $9d
    rlca                                          ; $5686: $07
    add $74                                       ; $5687: $c6 $74
    rst $18                                       ; $5689: $df
    call z, $8f7e                                 ; $568a: $cc $7e $8f
    ld c, e                                       ; $568d: $4b
    ld c, l                                       ; $568e: $4d
    db $e3                                        ; $568f: $e3
    rst $38                                       ; $5690: $ff
    adc a                                         ; $5691: $8f
    ld e, [hl]                                    ; $5692: $5e
    db $fd                                        ; $5693: $fd
    rst $28                                       ; $5694: $ef
    dec bc                                        ; $5695: $0b
    rst $30                                       ; $5696: $f7
    sbc l                                         ; $5697: $9d
    ld d, h                                       ; $5698: $54
    dec c                                         ; $5699: $0d
    rst $20                                       ; $569a: $e7
    rla                                           ; $569b: $17
    cp l                                          ; $569c: $bd
    ld a, [$6aff]                                 ; $569d: $fa $ff $6a
    ld b, $67                                     ; $56a0: $06 $67
    adc a                                         ; $56a2: $8f
    nop                                           ; $56a3: $00
    adc a                                         ; $56a4: $8f
    ld c, e                                       ; $56a5: $4b
    db $ed                                        ; $56a6: $ed
    add sp, $5d                                   ; $56a7: $e8 $5d
    pop af                                        ; $56a9: $f1
    ld e, b                                       ; $56aa: $58
    ld a, $48                                     ; $56ab: $3e $48
    inc [hl]                                      ; $56ad: $34
    add h                                         ; $56ae: $84
    ld d, b                                       ; $56af: $50
    dec sp                                        ; $56b0: $3b
    xor c                                         ; $56b1: $a9
    adc [hl]                                      ; $56b2: $8e
    dec h                                         ; $56b3: $25
    jr c, jr_04e_5674                             ; $56b4: $38 $be

    ld b, e                                       ; $56b6: $43
    sub [hl]                                      ; $56b7: $96
    ld sp, hl                                     ; $56b8: $f9
    ld l, c                                       ; $56b9: $69
    ld b, a                                       ; $56ba: $47
    sbc a                                         ; $56bb: $9f
    db $ed                                        ; $56bc: $ed
    xor [hl]                                      ; $56bd: $ae
    cp $af                                        ; $56be: $fe $af
    ld [hl], c                                    ; $56c0: $71
    push af                                       ; $56c1: $f5
    ccf                                           ; $56c2: $3f
    add h                                         ; $56c3: $84
    db $10                                        ; $56c4: $10
    ld [hl+], a                                   ; $56c5: $22
    ld h, b                                       ; $56c6: $60
    adc l                                         ; $56c7: $8d
    ld sp, $9cc6                                  ; $56c8: $31 $c6 $9c
    dec l                                         ; $56cb: $2d
    ld d, e                                       ; $56cc: $53
    ld a, [hl]                                    ; $56cd: $7e
    ld sp, hl                                     ; $56ce: $f9
    db $e4                                        ; $56cf: $e4
    dec [hl]                                      ; $56d0: $35
    xor $d4                                       ; $56d1: $ee $d4
    reti                                          ; $56d3: $d9


    ld l, a                                       ; $56d4: $6f
    xor [hl]                                      ; $56d5: $ae
    ld a, $9b                                     ; $56d6: $3e $9b
    ld e, [hl]                                    ; $56d8: $5e
    db $ed                                        ; $56d9: $ed
    and e                                         ; $56da: $a3
    dec h                                         ; $56db: $25
    dec sp                                        ; $56dc: $3b
    ld h, h                                       ; $56dd: $64
    ld a, [hl]                                    ; $56de: $7e
    db $dd                                        ; $56df: $dd
    xor e                                         ; $56e0: $ab
    ld hl, $4f02                                  ; $56e1: $21 $02 $4f
    ret z                                         ; $56e4: $c8

    ret                                           ; $56e5: $c9


    ld h, a                                       ; $56e6: $67
    xor a                                         ; $56e7: $af
    ld a, [hl-]                                   ; $56e8: $3a
    dec de                                        ; $56e9: $1b
    cp b                                          ; $56ea: $b8
    ld [$323d], sp                                ; $56eb: $08 $3d $32
    add h                                         ; $56ee: $84

jr_04e_56ef:
    jr nc, jr_04e_56ef                            ; $56ef: $30 $fe

    adc a                                         ; $56f1: $8f
    ld e, $e5                                     ; $56f2: $1e $e5
    or e                                          ; $56f4: $b3
    rst $00                                       ; $56f5: $c7
    sbc b                                         ; $56f6: $98
    and l                                         ; $56f7: $a5
    sub $06                                       ; $56f8: $d6 $06
    xor a                                         ; $56fa: $af
    pop hl                                        ; $56fb: $e1
    db $fc                                        ; $56fc: $fc
    nop                                           ; $56fd: $00
    ld a, a                                       ; $56fe: $7f
    ld h, e                                       ; $56ff: $63
    xor a                                         ; $5700: $af
    adc d                                         ; $5701: $8a
    ld bc, $36ae                                  ; $5702: $01 $ae $36
    ld [de], a                                    ; $5705: $12
    ld a, [c]                                     ; $5706: $f2
    ld [$4f01], sp                                ; $5707: $08 $01 $4f
    rst $28                                       ; $570a: $ef
    rst $38                                       ; $570b: $ff
    or c                                          ; $570c: $b1
    ld [hl], h                                    ; $570d: $74
    ld [hl], l                                    ; $570e: $75
    ld c, l                                       ; $570f: $4d
    xor e                                         ; $5710: $ab
    db $fd                                        ; $5711: $fd
    db $eb                                        ; $5712: $eb
    ld sp, $7c92                                  ; $5713: $31 $92 $7c
    ld [$0221], sp                                ; $5716: $08 $21 $02
    ld c, a                                       ; $5719: $4f
    add e                                         ; $571a: $83
    ld c, [hl]                                    ; $571b: $4e
    xor a                                         ; $571c: $af
    sbc [hl]                                      ; $571d: $9e
    dec c                                         ; $571e: $0d
    ld a, a                                       ; $571f: $7f
    add h                                         ; $5720: $84
    nop                                           ; $5721: $00
    ldh [$cc], a                                  ; $5722: $e0 $cc
    rst $30                                       ; $5724: $f7
    ld l, b                                       ; $5725: $68
    dec d                                         ; $5726: $15
    scf                                           ; $5727: $37
    ld a, e                                       ; $5728: $7b
    ret z                                         ; $5729: $c8

    ret nz                                        ; $572a: $c0

    ld b, l                                       ; $572b: $45
    add sp, -$6f                                  ; $572c: $e8 $91
    pop hl                                        ; $572e: $e1
    sbc [hl]                                      ; $572f: $9e
    call nz, Call_000_1c12                        ; $5730: $c4 $12 $1c
    rra                                           ; $5733: $1f
    dec c                                         ; $5734: $0d
    dec sp                                        ; $5735: $3b
    call $a188                                    ; $5736: $cd $88 $a1
    db $ec                                        ; $5739: $ec
    rlca                                          ; $573a: $07
    ld hl, sp+$1b                                 ; $573b: $f8 $1b
    ld a, e                                       ; $573d: $7b
    ld d, l                                       ; $573e: $55
    inc c                                         ; $573f: $0c
    ld [hl], b                                    ; $5740: $70
    or l                                          ; $5741: $b5
    sub c                                         ; $5742: $91
    sub b                                         ; $5743: $90
    or e                                          ; $5744: $b3
    dec a                                         ; $5745: $3d
    ld sp, hl                                     ; $5746: $f9
    inc l                                         ; $5747: $2c
    rst $10                                       ; $5748: $d7
    and d                                         ; $5749: $a2
    xor a                                         ; $574a: $af
    db $e4                                        ; $574b: $e4
    ld l, c                                       ; $574c: $69
    ld c, c                                       ; $574d: $49
    adc $f8                                       ; $574e: $ce $f8
    adc c                                         ; $5750: $89
    call nz, $8ed9                                ; $5751: $c4 $d9 $8e
    sbc [hl]                                      ; $5754: $9e
    dec c                                         ; $5755: $0d
    ld e, c                                       ; $5756: $59
    adc b                                         ; $5757: $88
    adc l                                         ; $5758: $8d
    ld h, l                                       ; $5759: $65
    ld b, e                                       ; $575a: $43
    ld b, a                                       ; $575b: $47
    ld c, d                                       ; $575c: $4a
    and [hl]                                      ; $575d: $a6
    pop af                                        ; $575e: $f1
    rst $38                                       ; $575f: $ff
    rst $10                                       ; $5760: $d7
    inc [hl]                                      ; $5761: $34
    inc hl                                        ; $5762: $23

Jump_04e_5763:
    add [hl]                                      ; $5763: $86
    xor $2e                                       ; $5764: $ee $2e
    and a                                         ; $5766: $a7
    or h                                          ; $5767: $b4
    ld c, d                                       ; $5768: $4a
    ld de, $0088                                  ; $5769: $11 $88 $00
    and b                                         ; $576c: $a0
    jp nz, $c16b                                  ; $576d: $c2 $6b $c1

    ld a, c                                       ; $5770: $79
    db $f4                                        ; $5771: $f4
    ld b, d                                       ; $5772: $42
    and $4c                                       ; $5773: $e6 $4c
    sub e                                         ; $5775: $93
    ld [hl+], a                                   ; $5776: $22
    or e                                          ; $5777: $b3
    ld b, l                                       ; $5778: $45
    ld [hl], a                                    ; $5779: $77
    sub a                                         ; $577a: $97
    ret                                           ; $577b: $c9


    pop de                                        ; $577c: $d1
    inc hl                                        ; $577d: $23
    rst $38                                       ; $577e: $ff
    db $10                                        ; $577f: $10
    cp c                                          ; $5780: $b9
    and d                                         ; $5781: $a2
    jr nz, @-$7a                                  ; $5782: $20 $84

    ld [hl], $7c                                  ; $5784: $36 $7c
    ld b, a                                       ; $5786: $47
    xor a                                         ; $5787: $af
    cp $f7                                        ; $5788: $fe $f7
    ld sp, $4d4b                                  ; $578a: $31 $4b $4d
    rrca                                          ; $578d: $0f
    add a                                         ; $578e: $87
    ld [$e1e7], sp                                ; $578f: $08 $e7 $e1
    res 4, h                                      ; $5792: $cb $a4
    or $af                                        ; $5794: $f6 $af
    ld d, d                                       ; $5796: $52
    or l                                          ; $5797: $b5
    cp e                                          ; $5798: $bb
    ld [hl], b                                    ; $5799: $70
    sbc a                                         ; $579a: $9f
    sbc e                                         ; $579b: $9b
    ld d, $b8                                     ; $579c: $16 $b8
    di                                            ; $579e: $f3
    ld h, h                                       ; $579f: $64
    and h                                         ; $57a0: $a4
    inc h                                         ; $57a1: $24
    sub e                                         ; $57a2: $93
    ld e, b                                       ; $57a3: $58
    ld h, $b5                                     ; $57a4: $26 $b5
    rra                                           ; $57a6: $1f
    ld e, [hl]                                    ; $57a7: $5e
    jp $85f9                                      ; $57a8: $c3 $f9 $85


Call_04e_57ab:
    xor h                                         ; $57ab: $ac
    db $f4                                        ; $57ac: $f4
    reti                                          ; $57ad: $d9


    ret c                                         ; $57ae: $d8

    ld c, c                                       ; $57af: $49
    rst $28                                       ; $57b0: $ef
    sbc b                                         ; $57b1: $98
    adc $cb                                       ; $57b2: $ce $cb
    dec d                                         ; $57b4: $15
    ld d, l                                       ; $57b5: $55
    dec l                                         ; $57b6: $2d

jr_04e_57b7:
    dec b                                         ; $57b7: $05
    ld de, $af18                                  ; $57b8: $11 $18 $af
    ld a, e                                       ; $57bb: $7b
    dec l                                         ; $57bc: $2d
    pop bc                                        ; $57bd: $c1
    pop af                                        ; $57be: $f1
    or e                                          ; $57bf: $b3
    ld e, l                                       ; $57c0: $5d
    pop af                                        ; $57c1: $f1
    sbc b                                         ; $57c2: $98
    ld b, h                                       ; $57c3: $44
    ld b, e                                       ; $57c4: $43
    inc b                                         ; $57c5: $04
    adc a                                         ; $57c6: $8f
    ld c, e                                       ; $57c7: $4b
    ld c, l                                       ; $57c8: $4d
    xor e                                         ; $57c9: $ab
    sbc [hl]                                      ; $57ca: $9e
    halt                                          ; $57cb: $76
    ld l, d                                       ; $57cc: $6a
    ld e, a                                       ; $57cd: $5f
    cp c                                          ; $57ce: $b9
    rst $08                                       ; $57cf: $cf

jr_04e_57d0:
    add [hl]                                      ; $57d0: $86
    rst $28                                       ; $57d1: $ef
    ld e, a                                       ; $57d2: $5f
    and l                                         ; $57d3: $a5
    and d                                         ; $57d4: $a2
    daa                                           ; $57d5: $27
    ld b, a                                       ; $57d6: $47
    rst $10                                       ; $57d7: $d7
    ld b, d                                       ; $57d8: $42
    sub [hl]                                      ; $57d9: $96
    db $dd                                        ; $57da: $dd
    db $f4                                        ; $57db: $f4
    ld c, b                                       ; $57dc: $48
    ld a, [c]                                     ; $57dd: $f2
    dec bc                                        ; $57de: $0b
    ld [hl+], a                                   ; $57df: $22
    rst $20                                       ; $57e0: $e7
    pop hl                                        ; $57e1: $e1
    inc hl                                        ; $57e2: $23
    dec h                                         ; $57e3: $25
    ei                                            ; $57e4: $fb
    ld d, a                                       ; $57e5: $57
    xor c                                         ; $57e6: $a9
    ld e, d                                       ; $57e7: $5a
    cp d                                          ; $57e8: $ba

Call_04e_57e9:
    adc b                                         ; $57e9: $88
    and c                                         ; $57ea: $a1
    dec bc                                        ; $57eb: $0b
    sbc c                                         ; $57ec: $99
    sub a                                         ; $57ed: $97
    cp $0b                                        ; $57ee: $fe $0b
    ld [hl+], a                                   ; $57f0: $22
    jr nz, jr_04e_57b7                            ; $57f1: $20 $c4

    ld h, e                                       ; $57f3: $63
    sbc a                                         ; $57f4: $9f
    rla                                           ; $57f5: $17
    push hl                                       ; $57f6: $e5
    ld c, e                                       ; $57f7: $4b
    sbc e                                         ; $57f8: $9b
    or $82                                        ; $57f9: $f6 $82
    db $10                                        ; $57fb: $10
    ld e, [hl]                                    ; $57fc: $5e
    pop af                                        ; $57fd: $f1
    ld e, b                                       ; $57fe: $58
    db $fd                                        ; $57ff: $fd
    sbc a                                         ; $5800: $9f
    rst $30                                       ; $5801: $f7
    ld a, c                                       ; $5802: $79
    ld d, c                                       ; $5803: $51
    cp [hl]                                       ; $5804: $be
    or h                                          ; $5805: $b4
    ld l, c                                       ; $5806: $69
    cpl                                           ; $5807: $2f
    adc b                                         ; $5808: $88
    nop                                           ; $5809: $00
    jr nz, @+$4d                                  ; $580a: $20 $4b

    ld h, [hl]                                    ; $580c: $66
    sub e                                         ; $580d: $93
    pop hl                                        ; $580e: $e1
    ld e, l                                       ; $580f: $5d
    ld e, [hl]                                    ; $5810: $5e
    adc a                                         ; $5811: $8f
    db $10                                        ; $5812: $10
    ld c, a                                       ; $5813: $4f
    xor e                                         ; $5814: $ab
    cp c                                          ; $5815: $b9
    ld d, e                                       ; $5816: $53
    cpl                                           ; $5817: $2f
    sub e                                         ; $5818: $93
    db $e4                                        ; $5819: $e4
    rst $38                                       ; $581a: $ff
    jr jr_04e_57d0                                ; $581b: $18 $b3

    call nc, Call_04e_78ae                        ; $581d: $d4 $ae $78
    adc h                                         ; $5820: $8c
    inc h                                         ; $5821: $24
    ld [hl+], a                                   ; $5822: $22
    dec [hl]                                      ; $5823: $35
    dec de                                        ; $5824: $1b
    cp $08                                        ; $5825: $fe $08
    ld bc, $c34f                                  ; $5827: $01 $4f $c3
    ld h, a                                       ; $582a: $67
    sub e                                         ; $582b: $93
    jp hl                                         ; $582c: $e9


    push de                                       ; $582d: $d5
    inc bc                                        ; $582e: $03
    sbc $2c                                       ; $582f: $de $2c
    adc [hl]                                      ; $5831: $8e
    cp e                                          ; $5832: $bb
    ld h, d                                       ; $5833: $62
    ld c, l                                       ; $5834: $4d
    rst $28                                       ; $5835: $ef
    ld e, a                                       ; $5836: $5f
    and l                                         ; $5837: $a5
    and d                                         ; $5838: $a2
    rra                                           ; $5839: $1f
    ld hl, $e1e7                                  ; $583a: $21 $e7 $e1
    db $d3                                        ; $583d: $d3
    jp Jump_000_2cc7                              ; $583e: $c3 $c7 $2c


    or l                                          ; $5841: $b5
    ld e, h                                       ; $5842: $5c
    ld [hl+], a                                   ; $5843: $22
    pop de                                        ; $5844: $d1
    rst $38                                       ; $5845: $ff
    xor d                                         ; $5846: $aa
    db $10                                        ; $5847: $10
    cp b                                          ; $5848: $b8
    rst $00                                       ; $5849: $c7
    and l                                         ; $584a: $a5
    halt                                          ; $584b: $76
    db $f4                                        ; $584c: $f4
    add b                                         ; $584d: $80
    scf                                           ; $584e: $37
    adc e                                         ; $584f: $8b
    db $e3                                        ; $5850: $e3
    xor [hl]                                      ; $5851: $ae
    ld e, b                                       ; $5852: $58
    db $d3                                        ; $5853: $d3
    ld a, c                                       ; $5854: $79
    ld a, [$bc41]                                 ; $5855: $fa $41 $bc
    ld a, [hl-]                                   ; $5858: $3a
    jr nz, jr_04e_585d                            ; $5859: $20 $02

    rrca                                          ; $585b: $0f
    ld c, c                                       ; $585c: $49

jr_04e_585d:
    adc a                                         ; $585d: $8f
    jr @+$4c                                      ; $585e: $18 $4a

    and e                                         ; $5860: $a3
    rst $00                                       ; $5861: $c7
    inc l                                         ; $5862: $2c
    or l                                          ; $5863: $b5
    dec hl                                        ; $5864: $2b
    adc a                                         ; $5865: $8f
    db $10                                        ; $5866: $10
    ret nz                                        ; $5867: $c0

    ld b, e                                       ; $5868: $43
    inc c                                         ; $5869: $0c
    ld e, l                                       ; $586a: $5d
    cp c                                          ; $586b: $b9
    rst $08                                       ; $586c: $cf
    db $eb                                        ; $586d: $eb
    rst $10                                       ; $586e: $d7
    inc c                                         ; $586f: $0c
    sbc l                                         ; $5870: $9d
    dec c                                         ; $5871: $0d
    sbc a                                         ; $5872: $9f
    ld d, $f4                                     ; $5873: $16 $f4
    ld e, a                                       ; $5875: $5f
    ld d, l                                       ; $5876: $55
    ei                                            ; $5877: $fb
    and a                                         ; $5878: $a7
    inc e                                         ; $5879: $1c
    ld h, d                                       ; $587a: $62
    jp c, $8f86                                   ; $587b: $da $86 $8f

    dec sp                                        ; $587e: $3b
    push af                                       ; $587f: $f5
    add sp, $55                                   ; $5880: $e8 $55
    db $10                                        ; $5882: $10
    ld bc, $43a0                                  ; $5883: $01 $a0 $43
    and [hl]                                      ; $5886: $a6
    sub a                                         ; $5887: $97
    db $dd                                        ; $5888: $dd
    ld [hl], e                                    ; $5889: $73
    jr jr_04e_58f2                                ; $588a: $18 $66

    jp Jump_000_05a7                              ; $588c: $c3 $a7 $05


    db $fd                                        ; $588f: $fd
    ld d, a                                       ; $5890: $57
    push de                                       ; $5891: $d5
    cp $29                                        ; $5892: $fe $29
    add a                                         ; $5894: $87
    sbc b                                         ; $5895: $98
    or [hl]                                       ; $5896: $b6
    pop hl                                        ; $5897: $e1
    adc a                                         ; $5898: $8f
    db $10                                        ; $5899: $10
    rst $20                                       ; $589a: $e7
    pop hl                                        ; $589b: $e1
    sla h                                         ; $589c: $cb $24
    ld sp, hl                                     ; $589e: $f9
    ccf                                           ; $589f: $3f
    halt                                          ; $58a0: $76
    push bc                                       ; $58a1: $c5
    ld h, e                                       ; $58a2: $63
    ld a, d                                       ; $58a3: $7a
    ld [hl], l                                    ; $58a4: $75
    ld c, l                                       ; $58a5: $4d
    ld a, b                                       ; $58a6: $78
    ld h, l                                       ; $58a7: $65
    ld h, h                                       ; $58a8: $64
    ld a, [$d5b5]                                 ; $58a9: $fa $b5 $d5
    ld sp, $e82d                                  ; $58ac: $31 $2d $e8
    cp a                                          ; $58af: $bf
    ld c, d                                       ; $58b0: $4a
    dec bc                                        ; $58b1: $0b
    sbc a                                         ; $58b2: $9f
    and c                                         ; $58b3: $a1
    ld h, e                                       ; $58b4: $63
    sub [hl]                                      ; $58b5: $96
    sbc d                                         ; $58b6: $9a
    rst $10                                       ; $58b7: $d7
    cpl                                           ; $58b8: $2f
    dec de                                        ; $58b9: $1b
    inc sp                                        ; $58ba: $33
    ld [hl], h                                    ; $58bb: $74
    ld [hl], $7c                                  ; $58bc: $36 $7c
    call c, $67a9                                 ; $58be: $dc $a9 $67
    xor a                                         ; $58c1: $af
    ld a, [hl-]                                   ; $58c2: $3a
    sbc e                                         ; $58c3: $9b
    ld c, l                                       ; $58c4: $4d
    ld l, b                                       ; $58c5: $68
    jp c, $b850                                   ; $58c6: $da $50 $b8

    di                                            ; $58c9: $f3
    ld h, h                                       ; $58ca: $64
    inc e                                         ; $58cb: $1c
    rst $18                                       ; $58cc: $df
    di                                            ; $58cd: $f3
    ld e, d                                       ; $58ce: $5a
    add a                                         ; $58cf: $87
    xor l                                         ; $58d0: $ad
    pop hl                                        ; $58d1: $e1

jr_04e_58d2:
    db $fc                                        ; $58d2: $fc
    ld l, h                                       ; $58d3: $6c
    ld hl, sp+$32                                 ; $58d4: $f8 $32
    di                                            ; $58d6: $f3
    ld hl, sp+$3a                                 ; $58d7: $f8 $3a
    ld b, h                                       ; $58d9: $44
    jr nz, jr_04e_5927                            ; $58da: $20 $4b

    ld h, [hl]                                    ; $58dc: $66
    sub e                                         ; $58dd: $93
    ld bc, $166f                                  ; $58de: $01 $6f $16
    rst $00                                       ; $58e1: $c7
    ld e, l                                       ; $58e2: $5d
    or c                                          ; $58e3: $b1
    and [hl]                                      ; $58e4: $a6
    di                                            ; $58e5: $f3
    cp $29                                        ; $58e6: $fe $29
    add a                                         ; $58e8: $87
    sbc b                                         ; $58e9: $98
    or [hl]                                       ; $58ea: $b6
    adc a                                         ; $58eb: $8f
    db $10                                        ; $58ec: $10
    ret nz                                        ; $58ed: $c0

    sbc d                                         ; $58ee: $9a
    ld d, a                                       ; $58ef: $57
    dec [hl]                                      ; $58f0: $35
    pop hl                                        ; $58f1: $e1

jr_04e_58f2:
    ld h, l                                       ; $58f2: $65
    ld e, h                                       ; $58f3: $5c
    di                                            ; $58f4: $f3
    ld [hl-], a                                   ; $58f5: $32
    ldh [$cd], a                                  ; $58f6: $e0 $cd
    ld [c], a                                     ; $58f8: $e2
    cp b                                          ; $58f9: $b8
    dec hl                                        ; $58fa: $2b
    sub $34                                       ; $58fb: $d6 $34
    ld b, h                                       ; $58fd: $44
    adc a                                         ; $58fe: $8f
    ld c, e                                       ; $58ff: $4b
    adc l                                         ; $5900: $8d
    sub h                                         ; $5901: $94
    db $ec                                        ; $5902: $ec
    adc d                                         ; $5903: $8a
    rst $00                                       ; $5904: $c7
    ld b, d                                       ; $5905: $42
    ld a, [c]                                     ; $5906: $f2
    add sp, $75                                   ; $5907: $e8 $75
    ld e, a                                       ; $5909: $5f
    xor b                                         ; $590a: $a8
    ldh a, [$fd]                                  ; $590b: $f0 $fd
    ld d, e                                       ; $590d: $53
    ld c, $31                                     ; $590e: $0e $31
    ld l, l                                       ; $5910: $6d
    ld hl, $2002                                  ; $5911: $21 $02 $20
    ld c, e                                       ; $5914: $4b
    ld h, [hl]                                    ; $5915: $66
    sub e                                         ; $5916: $93
    db $fd                                        ; $5917: $fd
    ld d, e                                       ; $5918: $53
    ld c, $31                                     ; $5919: $0e $31
    ld l, l                                       ; $591b: $6d
    jp $9dc7                                      ; $591c: $c3 $c7 $9d


    ld a, d                                       ; $591f: $7a
    push hl                                       ; $5920: $e5
    ld a, $62                                     ; $5921: $3e $62
    jr z, jr_04e_58d2                             ; $5923: $28 $ad

    ld e, l                                       ; $5925: $5d
    sbc c                                         ; $5926: $99

jr_04e_5927:
    rst $18                                       ; $5927: $df
    rst $38                                       ; $5928: $ff
    rlca                                          ; $5929: $07
    cp h                                          ; $592a: $bc
    ld e, c                                       ; $592b: $59
    inc e                                         ; $592c: $1c
    ld [hl], a                                    ; $592d: $77
    push bc                                       ; $592e: $c5
    sbc d                                         ; $592f: $9a
    ld a, [hl]                                    ; $5930: $7e
    add h                                         ; $5931: $84
    nop                                           ; $5932: $00
    adc a                                         ; $5933: $8f
    ld c, e                                       ; $5934: $4b
    dec l                                         ; $5935: $2d
    sub e                                         ; $5936: $93
    db $e4                                        ; $5937: $e4
    rst $38                                       ; $5938: $ff
    sbc b                                         ; $5939: $98
    ld e, [hl]                                    ; $593a: $5e
    ld e, l                                       ; $593b: $5d
    dec bc                                        ; $593c: $0b
    rst $30                                       ; $593d: $f7
    ld h, l                                       ; $593e: $65
    db $d3                                        ; $593f: $d3
    ld [$e55f], a                                 ; $5940: $ea $5f $e5
    inc sp                                        ; $5943: $33
    inc e                                         ; $5944: $1c
    ld [hl], a                                    ; $5945: $77
    ld d, e                                       ; $5946: $53
    scf                                           ; $5947: $37
    cp $f7                                        ; $5948: $fe $f7
    push bc                                       ; $594a: $c5
    rrca                                          ; $594b: $0f
    ld e, l                                       ; $594c: $5d
    dec bc                                        ; $594d: $0b
    sbc d                                         ; $594e: $9a
    inc sp                                        ; $594f: $33
    ld a, [hl]                                    ; $5950: $7e
    ld [hl+], a                                   ; $5951: $22
    ld sp, $c743                                  ; $5952: $31 $43 $c7
    inc l                                         ; $5955: $2c
    or l                                          ; $5956: $b5
    dec hl                                        ; $5957: $2b
    ld e, $23                                     ; $5958: $1e $23
    adc c                                         ; $595a: $89
    ret c                                         ; $595b: $d8

    sbc b                                         ; $595c: $98
    dec c                                         ; $595d: $0d
    ld h, a                                       ; $595e: $67
    adc a                                         ; $595f: $8f
    nop                                           ; $5960: $00
    ld c, a                                       ; $5961: $4f
    set 5, [hl]                                   ; $5962: $cb $ee
    add sp, -$27                                  ; $5964: $e8 $d9
    ldh a, [rBGP]                                 ; $5966: $f0 $47
    ld [$4ec0], sp                                ; $5968: $08 $c0 $4e
    sbc l                                         ; $596b: $9d
    dec e                                         ; $596c: $1d
    ld b, d                                       ; $596d: $42
    ld c, b                                       ; $596e: $48
    ld c, d                                       ; $596f: $4a
    ld [hl-], a                                   ; $5970: $32
    adc c                                         ; $5971: $89
    reti                                          ; $5972: $d9


    ld h, h                                       ; $5973: $64
    and h                                         ; $5974: $a4
    ld h, h                                       ; $5975: $64
    ld [$35d4], a                                 ; $5976: $ea $d4 $35
    ld a, d                                       ; $5979: $7a
    push de                                       ; $597a: $d5
    ld b, d                                       ; $597b: $42
    and $cc                                       ; $597c: $e6 $cc
    ld b, e                                       ; $597e: $43
    or d                                          ; $597f: $b2
    ld b, e                                       ; $5980: $43
    ld [$4f11], sp                                ; $5981: $08 $11 $4f
    set 6, d                                      ; $5984: $cb $f2
    db $e3                                        ; $5986: $e3
    ld c, [hl]                                    ; $5987: $4e
    dec a                                         ; $5988: $3d
    ld h, a                                       ; $5989: $67
    ld e, $92                                     ; $598a: $1e $92
    db $fd                                        ; $598c: $fd
    ld de, $e702                                  ; $598d: $11 $02 $e7
    ld sp, $e8ed                                  ; $5990: $31 $ed $e8
    ld de, $7dd3                                  ; $5993: $11 $d3 $7d
    xor l                                         ; $5996: $ad
    jp hl                                         ; $5997: $e9


    ld l, b                                       ; $5998: $68
    xor c                                         ; $5999: $a9
    sub c                                         ; $599a: $91
    sub d                                         ; $599b: $92
    jp hl                                         ; $599c: $e9


    push de                                       ; $599d: $d5

jr_04e_599e:
    or l                                          ; $599e: $b5
    ld a, $dc                                     ; $599f: $3e $dc
    ld h, a                                       ; $59a1: $67
    cp e                                          ; $59a2: $bb
    call nc, Call_000_3555                        ; $59a3: $d4 $55 $35
    ld [$4de1], sp                                ; $59a6: $08 $e1 $4d
    rst $38                                       ; $59a9: $ff
    ld [de], a                                    ; $59aa: $12
    cp e                                          ; $59ab: $bb
    db $fc                                        ; $59ac: $fc
    rrca                                          ; $59ad: $0f
    ld d, c                                       ; $59ae: $51
    pop de                                        ; $59af: $d1
    dec bc                                        ; $59b0: $0b
    ret                                           ; $59b1: $c9


    db $d3                                        ; $59b2: $d3
    ld [de], a                                    ; $59b3: $12
    dec a                                         ; $59b4: $3d
    or c                                          ; $59b5: $b1
    cp e                                          ; $59b6: $bb
    ld a, [$26a1]                                 ; $59b7: $fa $a1 $26
    ld b, a                                       ; $59ba: $47
    adc a                                         ; $59bb: $8f
    sub [hl]                                      ; $59bc: $96
    adc h                                         ; $59bd: $8c
    ld e, [hl]                                    ; $59be: $5e
    ret                                           ; $59bf: $c9


    cp [hl]                                       ; $59c0: $be
    sub d                                         ; $59c1: $92
    ld [$70d9], a                                 ; $59c2: $ea $d9 $70
    adc b                                         ; $59c5: $88
    nop                                           ; $59c6: $00
    rst $20                                       ; $59c7: $e7
    ret                                           ; $59c8: $c9


    ld c, b                                       ; $59c9: $48
    ld c, c                                       ; $59ca: $49
    ld h, $31                                     ; $59cb: $26 $31
    ld d, d                                       ; $59cd: $52
    ld [hl-], a                                   ; $59ce: $32
    db $ed                                        ; $59cf: $ed
    cp d                                          ; $59d0: $ba
    rst $10                                       ; $59d1: $d7
    add h                                         ; $59d2: $84
    ld d, a                                       ; $59d3: $57
    add $97                                       ; $59d4: $c6 $97
    dec c                                         ; $59d6: $0d
    sbc l                                         ; $59d7: $9d
    add $ff                                       ; $59d8: $c6 $ff
    rra                                           ; $59da: $1f
    dec a                                         ; $59db: $3d
    dec de                                        ; $59dc: $1b
    ld a, $9c                                     ; $59dd: $3e $9c
    rra                                           ; $59df: $1f
    cp $cb                                        ; $59e0: $fe $cb
    inc sp                                        ; $59e2: $33
    ld b, h                                       ; $59e3: $44
    ld c, a                                       ; $59e4: $4f
    inc c                                         ; $59e5: $0c
    sbc l                                         ; $59e6: $9d
    ld e, [hl]                                    ; $59e7: $5e
    sub [hl]                                      ; $59e8: $96
    ld a, a                                       ; $59e9: $7f
    add h                                         ; $59ea: $84
    nop                                           ; $59eb: $00
    ld b, b                                       ; $59ec: $40
    ld h, l                                       ; $59ed: $65
    xor d                                         ; $59ee: $aa
    jr z, jr_04e_599e                             ; $59ef: $28 $ad

    cp a                                          ; $59f1: $bf
    ld c, h                                       ; $59f2: $4c
    call z, $ffcf                                 ; $59f3: $cc $cf $ff
    ld [c], a                                     ; $59f6: $e2
    ld a, c                                       ; $59f7: $79
    sbc c                                         ; $59f8: $99
    inc h                                         ; $59f9: $24
    rst $38                                       ; $59fa: $ff
    rst $00                                       ; $59fb: $c7
    cp b                                          ; $59fc: $b8
    ld b, h                                       ; $59fd: $44
    ld d, h                                       ; $59fe: $54
    ld [hl], h                                    ; $59ff: $74
    dec l                                         ; $5a00: $2d
    db $dd                                        ; $5a01: $dd
    dec b                                         ; $5a02: $05
    ld de, $e1e7                                  ; $5a03: $11 $e7 $e1
    db $d3                                        ; $5a06: $d3
    xor d                                         ; $5a07: $aa
    rst $00                                       ; $5a08: $c7
    inc l                                         ; $5a09: $2c
    or l                                          ; $5a0a: $b5
    ld c, $5b                                     ; $5a0b: $0e $5b
    or d                                          ; $5a0d: $b2
    db $10                                        ; $5a0e: $10
    or $08                                        ; $5a0f: $f6 $08
    sbc b                                         ; $5a11: $98
    sbc h                                         ; $5a12: $9c
    ld e, $4d                                     ; $5a13: $1e $4d
    sbc h                                         ; $5a15: $9c
    db $fd                                        ; $5a16: $fd
    adc $c3                                       ; $5a17: $ce $c3
    and a                                         ; $5a19: $a7
    pop af                                        ; $5a1a: $f1
    rst $38                                       ; $5a1b: $ff
    ld b, a                                       ; $5a1c: $47
    adc a                                         ; $5a1d: $8f
    adc b                                         ; $5a1e: $88
    pop bc                                        ; $5a1f: $c1
    pop af                                        ; $5a20: $f1
    sub b                                         ; $5a21: $90
    pop hl                                        ; $5a22: $e1
    db $fc                                        ; $5a23: $fc
    ldh a, [$5f]                                  ; $5a24: $f0 $5f
    sbc [hl]                                      ; $5a26: $9e
    reti                                          ; $5a27: $d9


    rrca                                          ; $5a28: $0f
    call nc, $8729                                ; $5a29: $d4 $29 $87
    sbc b                                         ; $5a2c: $98
    or [hl]                                       ; $5a2d: $b6
    pop hl                                        ; $5a2e: $e1
    dec sp                                        ; $5a2f: $3b
    ld a, d                                       ; $5a30: $7a
    rst $08                                       ; $5a31: $cf
    inc bc                                        ; $5a32: $03
    add hl, hl                                    ; $5a33: $29
    inc a                                         ; $5a34: $3c
    pop af                                        ; $5a35: $f1
    sbc l                                         ; $5a36: $9d
    ld [hl], a                                    ; $5a37: $77
    and l                                         ; $5a38: $a5
    adc h                                         ; $5a39: $8c
    call c, $3cfc                                 ; $5a3a: $dc $fc $3c
    call c, $bbd3                                 ; $5a3d: $dc $d3 $bb
    inc e                                         ; $5a40: $1c
    sbc c                                         ; $5a41: $99
    dec a                                         ; $5a42: $3d
    ld [bc], a                                    ; $5a43: $02
    ld c, a                                       ; $5a44: $4f
    xor e                                         ; $5a45: $ab
    and a                                         ; $5a46: $a7
    ld e, l                                       ; $5a47: $5d
    rst $30                                       ; $5a48: $f7
    ld [$4b31], a                                 ; $5a49: $ea $31 $4b
    dec l                                         ; $5a4c: $2d
    ld h, h                                       ; $5a4d: $64
    sbc c                                         ; $5a4e: $99
    sub a                                         ; $5a4f: $97
    ld b, a                                       ; $5a50: $47
    ld [$4b8f], sp                                ; $5a51: $08 $8f $4b
    call $f4db                                    ; $5a54: $cd $db $f4
    jp z, $cc7d                                   ; $5a57: $ca $7d $cc

    ld d, d                                       ; $5a5a: $52
    res 7, h                                      ; $5a5b: $cb $bc
    ld e, d                                       ; $5a5d: $5a
    ret z                                         ; $5a5e: $c8

    xor $42                                       ; $5a5f: $ee $42
    cp h                                          ; $5a61: $bc
    sbc a                                         ; $5a62: $9f
    pop de                                        ; $5a63: $d1
    ld [$10ff], a                                 ; $5a64: $ea $ff $10
    adc b                                         ; $5a67: $88
    nop                                           ; $5a68: $00
    rst $08                                       ; $5a69: $cf
    push af                                       ; $5a6a: $f5
    ld l, h                                       ; $5a6b: $6c
    ld hl, sp+$42                                 ; $5a6c: $f8 $42
    sub [hl]                                      ; $5a6e: $96
    ld a, c                                       ; $5a6f: $79
    sbc c                                         ; $5a70: $99
    halt                                          ; $5a71: $76
    db $f4                                        ; $5a72: $f4
    ld a, [c]                                     ; $5a73: $f2
    cp a                                          ; $5a74: $bf
    ld a, b                                       ; $5a75: $78
    sbc [hl]                                      ; $5a76: $9e
    ld c, l                                       ; $5a77: $4d
    and [hl]                                      ; $5a78: $a6
    rst $18                                       ; $5a79: $df
    rst $38                                       ; $5a7a: $ff
    and a                                         ; $5a7b: $a7
    push de                                       ; $5a7c: $d5

Jump_04e_5a7d:
    inc hl                                        ; $5a7d: $23
    inc b                                         ; $5a7e: $04
    adc a                                         ; $5a7f: $8f
    ld c, e                                       ; $5a80: $4b
    adc l                                         ; $5a81: $8d
    inc h                                         ; $5a82: $24
    ld h, d                                       ; $5a83: $62
    ld h, e                                       ; $5a84: $63
    ld d, a                                       ; $5a85: $57
    inc a                                         ; $5a86: $3c
    and [hl]                                      ; $5a87: $a6
    ld e, l                                       ; $5a88: $5d

Call_04e_5a89:
    rst $30                                       ; $5a89: $f7
    sbc d                                         ; $5a8a: $9a
    ldh a, [$ca]                                  ; $5a8b: $f0 $ca
    ld [$1844], sp                                ; $5a8d: $08 $44 $18
    xor a                                         ; $5a90: $af
    ld a, e                                       ; $5a91: $7b
    reti                                          ; $5a92: $d9


    sbc b                                         ; $5a93: $98
    ld c, l                                       ; $5a94: $4d

Call_04e_5a95:
    halt                                          ; $5a95: $76
    rla                                           ; $5a96: $17
    ld [c], a                                     ; $5a97: $e2
    db $fd                                        ; $5a98: $fd
    adc h                                         ; $5a99: $8c
    ld d, [hl]                                    ; $5a9a: $56
    rst $38                                       ; $5a9b: $ff
    add a                                         ; $5a9c: $87
    inc a                                         ; $5a9d: $3c
    jp c, Jump_04e_52e3                           ; $5a9e: $da $e3 $52

    di                                            ; $5aa1: $f3
    ld [hl], $bd                                  ; $5aa2: $36 $bd
    ld [hl], d                                    ; $5aa4: $72
    ld e, a                                       ; $5aa5: $5f
    cp b                                          ; $5aa6: $b8
    ld c, a                                       ; $5aa7: $4f
    cp a                                          ; $5aa8: $bf
    ld [hl], $11                                  ; $5aa9: $36 $11
    dec de                                        ; $5aab: $1b
    dec a                                         ; $5aac: $3d
    xor l                                         ; $5aad: $ad
    ld l, h                                       ; $5aae: $6c
    inc c                                         ; $5aaf: $0c
    rst $20                                       ; $5ab0: $e7
    sub a                                         ; $5ab1: $97
    xor a                                         ; $5ab2: $af
    sbc d                                         ; $5ab3: $9a
    ldh a, [$ca]                                  ; $5ab4: $f0 $ca
    ld hl, sp-$4e                                 ; $5ab6: $f8 $b2
    and c                                         ; $5ab8: $a1
    ei                                            ; $5ab9: $fb
    sub a                                         ; $5aba: $97
    ld c, b                                       ; $5abb: $48
    reti                                          ; $5abc: $d9


    ld e, b                                       ; $5abd: $58
    ret z                                         ; $5abe: $c8

    ld a, [c]                                     ; $5abf: $f2
    cp a                                          ; $5ac0: $bf
    ld a, b                                       ; $5ac1: $78
    add [hl]                                      ; $5ac2: $86
    dec sp                                        ; $5ac3: $3b
    ld c, a                                       ; $5ac4: $4f
    ld b, [hl]                                    ; $5ac5: $46
    ld c, d                                       ; $5ac6: $4a
    ld [hl-], a                                   ; $5ac7: $32
    adc c                                         ; $5ac8: $89
    ld h, l                                       ; $5ac9: $65
    ld d, d                                       ; $5aca: $52
    di                                            ; $5acb: $f3
    db $eb                                        ; $5acc: $eb
    ld e, [hl]                                    ; $5acd: $5e
    dec bc                                        ; $5ace: $0b
    sbc c                                         ; $5acf: $99
    ld [c], a                                     ; $5ad0: $e2
    ld b, l                                       ; $5ad1: $45
    call $ffef                                    ; $5ad2: $cd $ef $ff
    db $10                                        ; $5ad5: $10
    ld bc, $cb4f                                  ; $5ad6: $01 $4f $cb
    xor $e8                                       ; $5ad9: $ee $e8
    add l                                         ; $5adb: $85
    ei                                            ; $5adc: $fb
    sbc [hl]                                      ; $5add: $9e
    rst $38                                       ; $5ade: $ff
    and a                                         ; $5adf: $a7
    inc e                                         ; $5ae0: $1c
    ld h, d                                       ; $5ae1: $62
    jp c, $ff3e                                   ; $5ae2: $da $3e $ff

    ld [$8f01], sp                                ; $5ae5: $08 $01 $8f
    ld c, e                                       ; $5ae8: $4b
    adc l                                         ; $5ae9: $8d
    sub h                                         ; $5aea: $94
    adc h                                         ; $5aeb: $8c
    ld e, [hl]                                    ; $5aec: $5e
    rst $30                                       ; $5aed: $f7
    or e                                          ; $5aee: $b3
    pop de                                        ; $5aef: $d1
    sub b                                         ; $5af0: $90
    ld e, l                                       ; $5af1: $5d
    pop af                                        ; $5af2: $f1
    sbc b                                         ; $5af3: $98
    cp l                                          ; $5af4: $bd
    xor $10                                       ; $5af5: $ee $10
    ld bc, $8260                                  ; $5af7: $01 $60 $82
    ld a, c                                       ; $5afa: $79
    ld [hl], $67                                  ; $5afb: $36 $67
    jp hl                                         ; $5afd: $e9


    ld b, a                                       ; $5afe: $47
    scf                                           ; $5aff: $37
    ld b, h                                       ; $5b00: $44
    rst $20                                       ; $5b01: $e7
    pop hl                                        ; $5b02: $e1
    inc hl                                        ; $5b03: $23
    dec h                                         ; $5b04: $25
    ld h, e                                       ; $5b05: $63
    sub [hl]                                      ; $5b06: $96
    jp c, $8f15                                   ; $5b07: $da $15 $8f

    ld a, c                                       ; $5b0a: $79
    db $fd                                        ; $5b0b: $fd
    sbc d                                         ; $5b0c: $9a
    and c                                         ; $5b0d: $a1
    db $10                                        ; $5b0e: $10
    ld bc, $dae0                                  ; $5b0f: $01 $e0 $da
    add sp, $35                                   ; $5b12: $e8 $35
    ld a, [de]                                    ; $5b14: $1a
    halt                                          ; $5b15: $76
    rst $08                                       ; $5b16: $cf
    add e                                         ; $5b17: $83
    ld c, $1b                                     ; $5b18: $0e $1b
    sbc a                                         ; $5b1a: $9f
    ld a, [c]                                     ; $5b1b: $f2
    xor $a6                                       ; $5b1c: $ee $a6
    sbc a                                         ; $5b1e: $9f
    add a                                         ; $5b1f: $87
    dec sp                                        ; $5b20: $3b
    rrca                                          ; $5b21: $0f
    rra                                           ; $5b22: $1f
    ld e, [hl]                                    ; $5b23: $5e
    add hl, sp                                    ; $5b24: $39
    ld d, a                                       ; $5b25: $57
    rst $28                                       ; $5b26: $ef
    xor [hl]                                      ; $5b27: $ae
    cp $af                                        ; $5b28: $fe $af
    ld [hl], c                                    ; $5b2a: $71
    push af                                       ; $5b2b: $f5
    ccf                                           ; $5b2c: $3f
    ld b, h                                       ; $5b2d: $44
    jr nz, jr_04e_5b74                            ; $5b2e: $20 $44

    add l                                         ; $5b30: $85
    xor h                                         ; $5b31: $ac
    db $e4                                        ; $5b32: $e4
    adc d                                         ; $5b33: $8a
    add d                                         ; $5b34: $82
    ld [$c10f], sp                                ; $5b35: $08 $0f $c1
    call c, $2155                                 ; $5b38: $dc $55 $21
    db $10                                        ; $5b3b: $10
    ld bc, $0a40                                  ; $5b3c: $01 $40 $0a
    ld c, a                                       ; $5b3f: $4f
    ld a, h                                       ; $5b40: $7c
    rst $20                                       ; $5b41: $e7
    ld e, l                                       ; $5b42: $5d
    add hl, hl                                    ; $5b43: $29
    inc hl                                        ; $5b44: $23
    scf                                           ; $5b45: $37
    or e                                          ; $5b46: $b3
    ld b, a                                       ; $5b47: $47
    ld c, a                                       ; $5b48: $4f
    adc a                                         ; $5b49: $8f
    ld c, a                                       ; $5b4a: $4f
    inc c                                         ; $5b4b: $0c
    and l                                         ; $5b4c: $a5
    ld hl, $fbf3                                  ; $5b4d: $21 $f3 $fb
    rst $38                                       ; $5b50: $ff
    add b                                         ; $5b51: $80
    scf                                           ; $5b52: $37
    adc e                                         ; $5b53: $8b
    db $e3                                        ; $5b54: $e3
    xor [hl]                                      ; $5b55: $ae
    ld e, b                                       ; $5b56: $58
    db $d3                                        ; $5b57: $d3
    ld h, a                                       ; $5b58: $67
    inc hl                                        ; $5b59: $23
    ld b, a                                       ; $5b5a: $47
    rst $10                                       ; $5b5b: $d7
    ld l, h                                       ; $5b5c: $6c
    ld [bc], a                                    ; $5b5d: $02
    rlca                                          ; $5b5e: $07
    ld b, d                                       ; $5b5f: $42
    ld b, [hl]                                    ; $5b60: $46
    jp Jump_04e_5ece                              ; $5b61: $c3 $ce $5e


    dec b                                         ; $5b64: $05
    ld de, $c10f                                  ; $5b65: $11 $0f $c1
    add h                                         ; $5b68: $84
    ld [$8f4f], sp                                ; $5b69: $08 $4f $8f
    ld c, a                                       ; $5b6c: $4f
    inc c                                         ; $5b6d: $0c
    and l                                         ; $5b6e: $a5
    ld hl, $fbf3                                  ; $5b6f: $21 $f3 $fb
    rst $38                                       ; $5b72: $ff
    add b                                         ; $5b73: $80

jr_04e_5b74:
    scf                                           ; $5b74: $37
    adc e                                         ; $5b75: $8b
    db $e3                                        ; $5b76: $e3
    xor [hl]                                      ; $5b77: $ae
    ld e, b                                       ; $5b78: $58
    db $d3                                        ; $5b79: $d3
    ld a, c                                       ; $5b7a: $79
    pop af                                        ; $5b7b: $f1
    ld b, e                                       ; $5b7c: $43
    rst $10                                       ; $5b7d: $d7
    add d                                         ; $5b7e: $82
    jp nz, $9081                                  ; $5b7f: $c2 $81 $90

    pop de                                        ; $5b82: $d1
    or b                                          ; $5b83: $b0
    or e                                          ; $5b84: $b3
    ld d, a                                       ; $5b85: $57
    sbc l                                         ; $5b86: $9d
    adc l                                         ; $5b87: $8d
    inc e                                         ; $5b88: $1c
    ld e, l                                       ; $5b89: $5d
    or e                                          ; $5b8a: $b3
    add hl, bc                                    ; $5b8b: $09
    ld b, h                                       ; $5b8c: $44
    jr nz, @+$0f                                  ; $5b8d: $20 $0d

    db $dd                                        ; $5b8f: $dd
    push de                                       ; $5b90: $d5
    ld a, b                                       ; $5b91: $78
    ld [hl], l                                    ; $5b92: $75
    ld [hl], $49                                  ; $5b93: $36 $49
    ret c                                         ; $5b95: $d8

    ld l, a                                       ; $5b96: $6f
    and b                                         ; $5b97: $a0
    ld c, [hl]                                    ; $5b98: $4e
    add hl, sp                                    ; $5b99: $39
    call nz, $0db4                                ; $5b9a: $c4 $b4 $0d
    rst $18                                       ; $5b9d: $df
    pop de                                        ; $5b9e: $d1
    ld a, e                                       ; $5b9f: $7b
    ld e, $48                                     ; $5ba0: $1e $48
    pop hl                                        ; $5ba2: $e1
    adc c                                         ; $5ba3: $89
    rst $28                                       ; $5ba4: $ef
    cp h                                          ; $5ba5: $bc
    dec hl                                        ; $5ba6: $2b
    ld h, l                                       ; $5ba7: $65
    db $e4                                        ; $5ba8: $e4
    and $e7                                       ; $5ba9: $e6 $e7
    ld hl, $2002                                  ; $5bab: $21 $02 $20
    ld h, h                                       ; $5bae: $64
    inc [hl]                                      ; $5baf: $34
    db $ec                                        ; $5bb0: $ec
    db $ec                                        ; $5bb1: $ec
    ld d, l                                       ; $5bb2: $55
    ld h, a                                       ; $5bb3: $67
    inc hl                                        ; $5bb4: $23
    ld b, a                                       ; $5bb5: $47
    rst $10                                       ; $5bb6: $d7
    ld l, h                                       ; $5bb7: $6c
    ld [bc], a                                    ; $5bb8: $02
    ld de, $8f4f                                  ; $5bb9: $11 $4f $8f
    ld c, a                                       ; $5bbc: $4f
    inc c                                         ; $5bbd: $0c
    and l                                         ; $5bbe: $a5
    ld hl, $fbf3                                  ; $5bbf: $21 $f3 $fb
    rst $38                                       ; $5bc2: $ff
    add b                                         ; $5bc3: $80
    scf                                           ; $5bc4: $37
    adc e                                         ; $5bc5: $8b
    db $e3                                        ; $5bc6: $e3
    xor [hl]                                      ; $5bc7: $ae
    ld e, b                                       ; $5bc8: $58
    db $d3                                        ; $5bc9: $d3
    ld h, a                                       ; $5bca: $67
    ld a, e                                       ; $5bcb: $7b
    xor b                                         ; $5bcc: $a8
    ld l, [hl]                                    ; $5bcd: $6e
    ld d, $fb                                     ; $5bce: $16 $fb
    db $ed                                        ; $5bd0: $ed
    ld c, c                                       ; $5bd1: $49
    call z, Call_000_355e                         ; $5bd2: $cc $5e $35
    ld b, e                                       ; $5bd5: $43
    ld c, c                                       ; $5bd6: $49
    ld e, a                                       ; $5bd7: $5f
    ld d, c                                       ; $5bd8: $51
    db $10                                        ; $5bd9: $10
    ld bc, $4b8f                                  ; $5bda: $01 $8f $4b
    db $ed                                        ; $5bdd: $ed
    add sp, -$57                                  ; $5bde: $e8 $a9
    ld e, a                                       ; $5be0: $5f
    halt                                          ; $5be1: $76
    push hl                                       ; $5be2: $e5
    ld a, $66                                     ; $5be3: $3e $66
    xor c                                         ; $5be5: $a9
    dec e                                         ; $5be6: $1d
    ld [c], a                                     ; $5be7: $e2
    rst $38                                       ; $5be8: $ff
    xor d                                         ; $5be9: $aa
    sub b                                         ; $5bea: $90
    dec e                                         ; $5beb: $1d
    dec a                                         ; $5bec: $3d
    db $ed                                        ; $5bed: $ed
    ld l, b                                       ; $5bee: $68
    adc b                                         ; $5bef: $88
    nop                                           ; $5bf0: $00
    ld c, a                                       ; $5bf1: $4f
    xor e                                         ; $5bf2: $ab
    ld a, l                                       ; $5bf3: $7d
    ld b, a                                       ; $5bf4: $47
    rst $08                                       ; $5bf5: $cf
    ld h, $c3                                     ; $5bf6: $26 $c3
    ld sp, hl                                     ; $5bf8: $f9
    jp hl                                         ; $5bf9: $e9


    add a                                         ; $5bfa: $87
    ld a, d                                       ; $5bfb: $7a
    or h                                          ; $5bfc: $b4
    ld bc, $37fb                                  ; $5bfd: $01 $fb $37
    ld b, l                                       ; $5c00: $45
    ld c, h                                       ; $5c01: $4c
    ld c, e                                       ; $5c02: $4b
    push hl                                       ; $5c03: $e5
    ld h, l                                       ; $5c04: $65
    and e                                         ; $5c05: $a3
    rst $20                                       ; $5c06: $e7
    ld a, [$57fb]                                 ; $5c07: $fa $fb $57
    xor c                                         ; $5c0a: $a9
    add sp, -$27                                  ; $5c0b: $e8 $d9
    and e                                         ; $5c0d: $a3
    reti                                          ; $5c0e: $d9


    ld l, a                                       ; $5c0f: $6f
    ldh [$0c], a                                  ; $5c10: $e0 $0c
    sub e                                         ; $5c12: $93
    ld d, h                                       ; $5c13: $54
    adc a                                         ; $5c14: $8f
    db $e3                                        ; $5c15: $e3
    ld a, e                                       ; $5c16: $7b
    add b                                         ; $5c17: $80
    ld b, b                                       ; $5c18: $40
    sbc l                                         ; $5c19: $9d
    ld h, e                                       ; $5c1a: $63
    nop                                           ; $5c1b: $00
    ld bc, $c47c                                  ; $5c1c: $01 $7c $c4
    ld d, b                                       ; $5c1f: $50
    ld e, d                                       ; $5c20: $5a
    cp e                                          ; $5c21: $bb
    ld [hl-], a                                   ; $5c22: $32
    ld a, e                                       ; $5c23: $7b
    inc [hl]                                      ; $5c24: $34
    ld a, e                                       ; $5c25: $7b
    inc b                                         ; $5c26: $04
    jr nz, jr_04e_5c36                            ; $5c27: $20 $0d

    db $dd                                        ; $5c29: $dd
    push de                                       ; $5c2a: $d5
    ld a, b                                       ; $5c2b: $78
    or l                                          ; $5c2c: $b5
    ld [hl], d                                    ; $5c2d: $72
    sbc a                                         ; $5c2e: $9f
    ld e, a                                       ; $5c2f: $5f
    rst $30                                       ; $5c30: $f7
    ld a, [de]                                    ; $5c31: $1a
    adc $af                                       ; $5c32: $ce $af
    inc h                                         ; $5c34: $24
    rst $38                                       ; $5c35: $ff

jr_04e_5c36:
    ld d, d                                       ; $5c36: $52
    reti                                          ; $5c37: $d9


    ld c, e                                       ; $5c38: $4b
    rst $38                                       ; $5c39: $ff
    dec h                                         ; $5c3a: $25
    db $10                                        ; $5c3b: $10
    ld bc, $c9e7                                  ; $5c3c: $01 $e7 $c9
    ld c, b                                       ; $5c3f: $48
    ret                                           ; $5c40: $c9


    sbc d                                         ; $5c41: $9a
    daa                                           ; $5c42: $27
    or l                                          ; $5c43: $b5
    dec sp                                        ; $5c44: $3b
    rst $28                                       ; $5c45: $ef
    inc h                                         ; $5c46: $24
    sbc l                                         ; $5c47: $9d
    adc [hl]                                      ; $5c48: $8e
    ccf                                           ; $5c49: $3f
    ld b, e                                       ; $5c4a: $43
    ld h, a                                       ; $5c4b: $67
    sub e                                         ; $5c4c: $93
    db $fd                                        ; $5c4d: $fd
    add e                                         ; $5c4e: $83
    ld c, d                                       ; $5c4f: $4a
    push af                                       ; $5c50: $f5
    add b                                         ; $5c51: $80
    scf                                           ; $5c52: $37
    adc e                                         ; $5c53: $8b
    db $e3                                        ; $5c54: $e3
    xor [hl]                                      ; $5c55: $ae
    ld e, b                                       ; $5c56: $58
    db $d3                                        ; $5c57: $d3
    ld l, [hl]                                    ; $5c58: $6e
    ld e, d                                       ; $5c59: $5a
    jp nz, $f387                                  ; $5c5a: $c2 $87 $f3

    sub e                                         ; $5c5d: $93
    ld [hl], d                                    ; $5c5e: $72
    rrca                                          ; $5c5f: $0f
    add c                                         ; $5c60: $81
    db $10                                        ; $5c61: $10
    jp nc, $a590                                  ; $5c62: $d2 $90 $a5

    xor e                                         ; $5c65: $ab
    ld l, e                                       ; $5c66: $6b
    add [hl]                                      ; $5c67: $86
    adc $26                                       ; $5c68: $ce $26
    db $e3                                        ; $5c6a: $e3
    ld c, c                                       ; $5c6b: $49
    db $f4                                        ; $5c6c: $f4
    cp b                                          ; $5c6d: $b8
    jp z, Jump_000_110e                           ; $5c6e: $ca $0e $11

    adc a                                         ; $5c71: $8f
    ld c, e                                       ; $5c72: $4b
    ld c, l                                       ; $5c73: $4d
    inc sp                                        ; $5c74: $33
    jr c, jr_04e_5cd5                             ; $5c75: $38 $5e

    ld a, c                                       ; $5c77: $79
    push hl                                       ; $5c78: $e5
    ld a, $fd                                     ; $5c79: $3e $fd
    ld c, [hl]                                    ; $5c7b: $4e
    cp a                                          ; $5c7c: $bf
    ld [hl+], a                                   ; $5c7d: $22
    pop de                                        ; $5c7e: $d1
    adc e                                         ; $5c7f: $8b
    rra                                           ; $5c80: $1f
    cp d                                          ; $5c81: $ba
    ld d, $34                                     ; $5c82: $16 $34
    db $e3                                        ; $5c84: $e3
    add [hl]                                      ; $5c85: $86
    call nc, $d90f                                ; $5c86: $d4 $0f $d9
    dec e                                         ; $5c89: $1d
    rst $18                                       ; $5c8a: $df
    ld [hl], b                                    ; $5c8b: $70
    ld a, e                                       ; $5c8c: $7b
    ld a, [c]                                     ; $5c8d: $f2
    ld e, c                                       ; $5c8e: $59
    xor [hl]                                      ; $5c8f: $ae
    ld b, l                                       ; $5c90: $45
    ld e, a                                       ; $5c91: $5f
    sbc c                                         ; $5c92: $99
    ld d, [hl]                                    ; $5c93: $56
    dec a                                         ; $5c94: $3d
    dec a                                         ; $5c95: $3d
    ld de, $3eb9                                  ; $5c96: $11 $b9 $3e
    dec de                                        ; $5c99: $1b
    or d                                          ; $5c9a: $b2
    inc e                                         ; $5c9b: $1c
    adc h                                         ; $5c9c: $8c
    rst $00                                       ; $5c9d: $c7
    rst $30                                       ; $5c9e: $f7
    xor $ba                                       ; $5c9f: $ee $ba
    inc l                                         ; $5ca1: $2c
    ld a, e                                       ; $5ca2: $7b
    inc b                                         ; $5ca3: $04
    rst $20                                       ; $5ca4: $e7
    ret                                           ; $5ca5: $c9


    ld c, b                                       ; $5ca6: $48
    ret                                           ; $5ca7: $c9


    adc b                                         ; $5ca8: $88
    ld sp, hl                                     ; $5ca9: $f9
    cp a                                          ; $5caa: $bf
    add [hl]                                      ; $5cab: $86
    sbc e                                         ; $5cac: $9b
    ld b, e                                       ; $5cad: $43
    ld d, h                                       ; $5cae: $54
    or $e3                                        ; $5caf: $f6 $e3
    ld a, a                                       ; $5cb1: $7f
    cp c                                          ; $5cb2: $b9
    and d                                         ; $5cb3: $a2
    ld b, d                                       ; $5cb4: $42
    ld b, [hl]                                    ; $5cb5: $46
    db $e3                                        ; $5cb6: $e3
    rst $38                                       ; $5cb7: $ff
    sub d                                         ; $5cb8: $92
    push bc                                       ; $5cb9: $c5
    rrca                                          ; $5cba: $0f
    ld e, l                                       ; $5cbb: $5d
    dec bc                                        ; $5cbc: $0b
    ld c, d                                       ; $5cbd: $4a
    ld b, e                                       ; $5cbe: $43
    and [hl]                                      ; $5cbf: $a6
    ld b, d                                       ; $5cc0: $42
    inc c                                         ; $5cc1: $0c
    ld e, l                                       ; $5cc2: $5d
    cp c                                          ; $5cc3: $b9
    rst $08                                       ; $5cc4: $cf
    xor a                                         ; $5cc5: $af
    ld a, e                                       ; $5cc6: $7b
    dec c                                         ; $5cc7: $0d
    rst $20                                       ; $5cc8: $e7
    rst $20                                       ; $5cc9: $e7
    sub a                                         ; $5cca: $97
    xor d                                         ; $5ccb: $aa
    ld e, a                                       ; $5ccc: $5f
    add hl, sp                                    ; $5ccd: $39
    ld h, h                                       ; $5cce: $64
    ld [hl], a                                    ; $5ccf: $77
    ld hl, $cfde                                  ; $5cd0: $21 $de $cf
    ld l, b                                       ; $5cd3: $68
    push af                                       ; $5cd4: $f5

jr_04e_5cd5:
    ld a, a                                       ; $5cd5: $7f
    ld [$e744], sp                                ; $5cd6: $08 $44 $e7
    pop hl                                        ; $5cd9: $e1
    res 0, a                                      ; $5cda: $cb $87
    jp z, $aee3                                   ; $5cdc: $ca $e3 $ae

    ld c, b                                       ; $5cdf: $48
    push hl                                       ; $5ce0: $e5
    add l                                         ; $5ce1: $85
    db $ec                                        ; $5ce2: $ec
    di                                            ; $5ce3: $f3
    or [hl]                                       ; $5ce4: $b6
    ld b, [hl]                                    ; $5ce5: $46
    jp $188e                                      ; $5ce6: $c3 $8e $18


    pop hl                                        ; $5ce9: $e1
    ld l, [hl]                                    ; $5cea: $6e
    ld h, $d1                                     ; $5ceb: $26 $d1
    ld h, l                                       ; $5ced: $65
    ld h, e                                       ; $5cee: $63
    ld a, b                                       ; $5cef: $78
    or e                                          ; $5cf0: $b3
    ld a, [hl]                                    ; $5cf1: $7e
    push af                                       ; $5cf2: $f5
    xor $fe                                       ; $5cf3: $ee $fe
    pop de                                        ; $5cf5: $d1
    push de                                       ; $5cf6: $d5
    ld d, d                                       ; $5cf7: $52
    ld a, c                                       ; $5cf8: $79
    ld sp, hl                                     ; $5cf9: $f9
    ld hl, sp+$3f                                 ; $5cfa: $f8 $3f
    sub e                                         ; $5cfc: $93
    jp nz, $2773                                  ; $5cfd: $c2 $73 $27

    inc d                                         ; $5d00: $14
    ld l, [hl]                                    ; $5d01: $6e
    adc a                                         ; $5d02: $8f
    ld c, e                                       ; $5d03: $4b
    dec l                                         ; $5d04: $2d
    ld a, a                                       ; $5d05: $7f
    cp [hl]                                       ; $5d06: $be
    and a                                         ; $5d07: $a7
    sub a                                         ; $5d08: $97
    sbc l                                         ; $5d09: $9d
    and c                                         ; $5d0a: $a1
    dec hl                                        ; $5d0b: $2b
    rst $30                                       ; $5d0c: $f7
    reti                                          ; $5d0d: $d9


    ldh a, [$71]                                  ; $5d0e: $f0 $71
    ld d, a                                       ; $5d10: $57
    inc h                                         ; $5d11: $24
    xor a                                         ; $5d12: $af
    rrca                                          ; $5d13: $0f
    rst $30                                       ; $5d14: $f7
    ld [hl], c                                    ; $5d15: $71
    ld d, a                                       ; $5d16: $57
    ld l, d                                       ; $5d17: $6a
    xor d                                         ; $5d18: $aa
    add e                                         ; $5d19: $83
    ld l, c                                       ; $5d1a: $69
    ld a, d                                       ; $5d1b: $7a
    ld [hl], a                                    ; $5d1c: $77
    ld [hl], $04                                  ; $5d1d: $36 $04
    ld [hl+], a                                   ; $5d1f: $22
    ld c, a                                       ; $5d20: $4f
    ld sp, hl                                     ; $5d21: $f9
    ld e, $77                                     ; $5d22: $1e $77
    ld [$b5ec], a                                 ; $5d24: $ea $ec $b5
    rra                                           ; $5d27: $1f
    call nz, $91af                                ; $5d28: $c4 $af $91
    dec e                                         ; $5d2b: $1d
    dec a                                         ; $5d2c: $3d
    ld l, a                                       ; $5d2d: $6f
    di                                            ; $5d2e: $f3
    cp a                                          ; $5d2f: $bf
    ld l, l                                       ; $5d30: $6d
    ld d, [hl]                                    ; $5d31: $56
    adc d                                         ; $5d32: $8a
    ld h, h                                       ; $5d33: $64
    ld h, d                                       ; $5d34: $62
    inc h                                         ; $5d35: $24
    ei                                            ; $5d36: $fb
    ld l, b                                       ; $5d37: $68
    ret c                                         ; $5d38: $d8

    pop hl                                        ; $5d39: $e1
    ld l, l                                       ; $5d3a: $6d
    cp b                                          ; $5d3b: $b8
    ret z                                         ; $5d3c: $c8

    reti                                          ; $5d3d: $d9


    db $f4                                        ; $5d3e: $f4
    sbc [hl]                                      ; $5d3f: $9e
    ld c, b                                       ; $5d40: $48
    pop hl                                        ; $5d41: $e1
    ld bc, $3421                                  ; $5d42: $01 $21 $34
    add hl, hl                                    ; $5d45: $29
    ld l, l                                       ; $5d46: $6d
    ld c, a                                       ; $5d47: $4f
    ld a, $cb                                     ; $5d48: $3e $cb
    or l                                          ; $5d4a: $b5
    add sp, $2b                                   ; $5d4b: $e8 $2b
    pop af                                        ; $5d4d: $f1
    ld b, e                                       ; $5d4e: $43
    adc a                                         ; $5d4f: $8f
    sub [hl]                                      ; $5d50: $96
    add d                                         ; $5d51: $82
    ld [$8dc0], sp                                ; $5d52: $08 $c0 $8d
    cp l                                          ; $5d55: $bd
    ld a, c                                       ; $5d56: $79
    ld a, [hl]                                    ; $5d57: $7e
    rst $38                                       ; $5d58: $ff
    ld e, a                                       ; $5d59: $5f
    xor [hl]                                      ; $5d5a: $ae
    sbc a                                         ; $5d5b: $9f
    ret nz                                        ; $5d5c: $c0

    dec c                                         ; $5d5d: $0d
    jp $ffa5                                      ; $5d5e: $c3 $a5 $ff


    xor d                                         ; $5d61: $aa
    ld a, [de]                                    ; $5d62: $1a
    sbc $37                                       ; $5d63: $de $37
    ld b, a                                       ; $5d65: $47
    jp $930d                                      ; $5d66: $c3 $0d $93


    ret c                                         ; $5d69: $d8

    ld l, b                                       ; $5d6a: $68
    adc a                                         ; $5d6b: $8f
    inc d                                         ; $5d6c: $14
    sub c                                         ; $5d6d: $91
    ld a, [c]                                     ; $5d6e: $f2
    or e                                          ; $5d6f: $b3
    ld bc, $b0eb                                  ; $5d70: $01 $eb $b0
    inc sp                                        ; $5d73: $33
    add hl, hl                                    ; $5d74: $29
    ld l, l                                       ; $5d75: $6d
    ret nz                                        ; $5d76: $c0

    jp $8ab4                                      ; $5d77: $c3 $b4 $8a


    ld h, c                                       ; $5d7a: $61
    adc [hl]                                      ; $5d7b: $8e
    jp z, $583f                                   ; $5d7c: $ca $3f $58

    ld [$8b4f], sp                                ; $5d7f: $08 $4f $8b
    jr c, jr_04e_5dc1                             ; $5d82: $38 $3d

    or d                                          ; $5d84: $b2
    ld d, a                                       ; $5d85: $57
    add a                                         ; $5d86: $87
    adc h                                         ; $5d87: $8c
    or $80                                        ; $5d88: $f6 $80
    db $dd                                        ; $5d8a: $dd
    sbc a                                         ; $5d8b: $9f
    jp nc, $f386                                  ; $5d8c: $d2 $86 $f3

    db $f4                                        ; $5d8f: $f4
    adc d                                         ; $5d90: $8a
    ld b, h                                       ; $5d91: $44
    xor a                                         ; $5d92: $af
    cp $af                                        ; $5d93: $fe $af
    push bc                                       ; $5d95: $c5
    rrca                                          ; $5d96: $0f
    dec a                                         ; $5d97: $3d
    ld a, d                                       ; $5d98: $7a
    add [hl]                                      ; $5d99: $86
    xor [hl]                                      ; $5d9a: $ae
    call c, Call_04e_4577                         ; $5d9b: $dc $77 $45
    add l                                         ; $5d9e: $85
    adc h                                         ; $5d9f: $8c
    sub [hl]                                      ; $5da0: $96
    cp d                                          ; $5da1: $ba
    db $e3                                        ; $5da2: $e3
    ld hl, sp+$5e                                 ; $5da3: $f8 $5e
    adc c                                         ; $5da5: $89
    ld a, [hl]                                    ; $5da6: $7e
    adc b                                         ; $5da7: $88
    xor l                                         ; $5da8: $ad
    cp h                                          ; $5da9: $bc
    cp e                                          ; $5daa: $bb
    ld c, h                                       ; $5dab: $4c
    call z, $c92f                                 ; $5dac: $cc $2f $c9
    inc hl                                        ; $5daf: $23
    and [hl]                                      ; $5db0: $a6
    ei                                            ; $5db1: $fb
    ld e, d                                       ; $5db2: $5a
    db $d3                                        ; $5db3: $d3
    pop de                                        ; $5db4: $d1
    and e                                         ; $5db5: $a3
    pop af                                        ; $5db6: $f1
    ld a, a                                       ; $5db7: $7f
    ret                                           ; $5db8: $c9


    ld a, [hl]                                    ; $5db9: $7e
    db $10                                        ; $5dba: $10
    cp a                                          ; $5dbb: $bf
    ld b, [hl]                                    ; $5dbc: $46
    and d                                         ; $5dbd: $a2
    and l                                         ; $5dbe: $a5
    ldh [rTMA], a                                 ; $5dbf: $e0 $06

jr_04e_5dc1:
    cp b                                          ; $5dc1: $b8
    adc l                                         ; $5dc2: $8d
    ei                                            ; $5dc3: $fb
    xor b                                         ; $5dc4: $a8
    pop af                                        ; $5dc5: $f1
    reti                                          ; $5dc6: $d9


    db $10                                        ; $5dc7: $10
    xor c                                         ; $5dc8: $a9
    ld [hl], l                                    ; $5dc9: $75
    xor b                                         ; $5dca: $a8
    ld hl, sp-$15                                 ; $5dcb: $f8 $eb
    ret z                                         ; $5dcd: $c8

    ret                                           ; $5dce: $c9


    rst $30                                       ; $5dcf: $f7
    add sp, -$16                                  ; $5dd0: $e8 $ea
    db $dd                                        ; $5dd2: $dd
    pop hl                                        ; $5dd3: $e1
    and $10                                       ; $5dd4: $e6 $10
    ld d, l                                       ; $5dd6: $55
    cp d                                          ; $5dd7: $ba
    db $ed                                        ; $5dd8: $ed
    ld d, d                                       ; $5dd9: $52
    db $e3                                        ; $5dda: $e3
    ld c, [hl]                                    ; $5ddb: $4e
    cp l                                          ; $5ddc: $bd
    ld hl, sp-$5f                                 ; $5ddd: $f8 $a1
    ld l, e                                       ; $5ddf: $6b
    ld b, c                                       ; $5de0: $41
    ld l, c                                       ; $5de1: $69
    jr c, jr_04e_5e28                             ; $5de2: $38 $44

    ld c, a                                       ; $5de4: $4f
    adc b                                         ; $5de5: $88
    ld d, c                                       ; $5de6: $51
    ld hl, $f9c3                                  ; $5de7: $21 $c3 $f9
    ld h, l                                       ; $5dea: $65
    ld h, d                                       ; $5deb: $62
    ld a, [hl]                                    ; $5dec: $7e
    ld c, c                                       ; $5ded: $49
    sbc [hl]                                      ; $5dee: $9e
    and c                                         ; $5def: $a1
    call $d8db                                    ; $5df0: $cd $db $d8
    pop de                                        ; $5df3: $d1
    xor e                                         ; $5df4: $ab
    rst $38                                       ; $5df5: $ff
    db $fd                                        ; $5df6: $fd
    jp c, $a771                                   ; $5df7: $da $71 $a7

    ld c, [hl]                                    ; $5dfa: $4e
    inc sp                                        ; $5dfb: $33
    inc de                                        ; $5dfc: $13
    dec de                                        ; $5dfd: $1b
    ld a, $43                                     ; $5dfe: $3e $43
    sbc e                                         ; $5e00: $9b
    or a                                          ; $5e01: $b7
    ld sp, $d4ee                                  ; $5e02: $31 $ee $d4
    xor e                                         ; $5e05: $ab
    rst $38                                       ; $5e06: $ff
    ld l, e                                       ; $5e07: $6b
    pop af                                        ; $5e08: $f1
    ld b, e                                       ; $5e09: $43
    adc a                                         ; $5e0a: $8f
    add [hl]                                      ; $5e0b: $86
    ld [$3b18], sp                                ; $5e0c: $08 $18 $3b
    inc l                                         ; $5e0f: $2c
    inc sp                                        ; $5e10: $33
    and [hl]                                      ; $5e11: $a6
    di                                            ; $5e12: $f3
    ld [hl], d                                    ; $5e13: $72
    ld b, l                                       ; $5e14: $45
    add l                                         ; $5e15: $85
    db $e4                                        ; $5e16: $e4
    ld de, $7dd3                                  ; $5e17: $11 $d3 $7d
    xor l                                         ; $5e1a: $ad
    jp hl                                         ; $5e1b: $e9


    pop hl                                        ; $5e1c: $e1
    db $fc                                        ; $5e1d: $fc
    or h                                          ; $5e1e: $b4
    sub e                                         ; $5e1f: $93
    adc d                                         ; $5e20: $8a
    ld e, [hl]                                    ; $5e21: $5e
    cp [hl]                                       ; $5e22: $be
    or [hl]                                       ; $5e23: $b6
    halt                                          ; $5e24: $76
    db $f4                                        ; $5e25: $f4
    cp b                                          ; $5e26: $b8
    ld d, e                                       ; $5e27: $53

jr_04e_5e28:
    and a                                         ; $5e28: $a7
    sbc c                                         ; $5e29: $99
    adc c                                         ; $5e2a: $89
    dec c                                         ; $5e2b: $0d
    sbc a                                         ; $5e2c: $9f
    and c                                         ; $5e2d: $a1
    call Call_000_18db                            ; $5e2e: $cd $db $18
    ld [hl], a                                    ; $5e31: $77
    ld [$ffd5], a                                 ; $5e32: $ea $d5 $ff
    or l                                          ; $5e35: $b5
    ld l, h                                       ; $5e36: $6c
    add sp, -$52                                  ; $5e37: $e8 $ae
    ld a, b                                       ; $5e39: $78
    ld c, h                                       ; $5e3a: $4c
    cp a                                          ; $5e3b: $bf
    rst $38                                       ; $5e3c: $ff
    rst $08                                       ; $5e3d: $cf
    sbc [hl]                                      ; $5e3e: $9e
    ld d, $32                                     ; $5e3f: $16 $32
    jp z, $914a                                   ; $5e41: $ca $4a $91

    ldh a, [$e1]                                  ; $5e44: $f0 $e1
    sbc a                                         ; $5e46: $9f
    ld d, a                                       ; $5e47: $57
    cp c                                          ; $5e48: $b9
    add sp, -$14                                  ; $5e49: $e8 $ec
    ret                                           ; $5e4b: $c9


    jp nz, $930d                                  ; $5e4c: $c2 $0d $93

    ret c                                         ; $5e4f: $d8

    ld l, b                                       ; $5e50: $68
    adc a                                         ; $5e51: $8f
    inc d                                         ; $5e52: $14
    sub c                                         ; $5e53: $91
    ld a, [c]                                     ; $5e54: $f2
    or e                                          ; $5e55: $b3
    ld bc, $e9fa                                  ; $5e56: $01 $fa $e9
    inc h                                         ; $5e59: $24
    rst $28                                       ; $5e5a: $ef
    inc a                                         ; $5e5b: $3c
    and c                                         ; $5e5c: $a1
    jp hl                                         ; $5e5d: $e9


    rra                                           ; $5e5e: $1f
    sub $74                                       ; $5e5f: $d6 $74
    jr nz, @-$5e                                  ; $5e61: $20 $a0

    ld c, [hl]                                    ; $5e63: $4e
    add hl, sp                                    ; $5e64: $39
    call nz, $0db4                                ; $5e65: $c4 $b4 $0d
    ld a, a                                       ; $5e68: $7f
    ld a, a                                       ; $5e69: $7f
    inc bc                                        ; $5e6a: $03
    ld d, d                                       ; $5e6b: $52
    ld a, b                                       ; $5e6c: $78
    ld [c], a                                     ; $5e6d: $e2
    dec sp                                        ; $5e6e: $3b
    rst $28                                       ; $5e6f: $ef
    ld c, d                                       ; $5e70: $4a
    add hl, de                                    ; $5e71: $19
    cp c                                          ; $5e72: $b9
    add hl, de                                    ; $5e73: $19
    ld bc, $e1e7                                  ; $5e74: $01 $e7 $e1
    or e                                          ; $5e77: $b3
    ld b, a                                       ; $5e78: $47

jr_04e_5e79:
    rst $28                                       ; $5e79: $ef
    add sp, -$1f                                  ; $5e7a: $e8 $e1
    add [hl]                                      ; $5e7c: $86

Jump_04e_5e7d:
    ld c, c                                       ; $5e7d: $49
    xor d                                         ; $5e7e: $aa
    and l                                         ; $5e7f: $a5
    ld a, [c]                                     ; $5e80: $f2
    or d                                          ; $5e81: $b2
    pop de                                        ; $5e82: $d1
    ld [hl], e                                    ; $5e83: $73
    ld a, l                                       ; $5e84: $7d
    jr c, jr_04e_5ee7                             ; $5e85: $38 $60

    and a                                         ; $5e87: $a7
    adc $5e                                       ; $5e88: $ce $5e
    ld a, h                                       ; $5e8a: $7c

jr_04e_5e8b:
    rst $20                                       ; $5e8b: $e7
    ld hl, sp-$5f                                 ; $5e8c: $f8 $a1
    ld b, a                                       ; $5e8e: $47
    ld c, e                                       ; $5e8f: $4b
    dec l                                         ; $5e90: $2d
    dec de                                        ; $5e91: $1b
    dec a                                         ; $5e92: $3d
    ld a, d                                       ; $5e93: $7a
    jr c, jr_04e_5ed5                             ; $5e94: $38 $3f

    xor $d4                                       ; $5e96: $ee $d4
    reti                                          ; $5e98: $d9


    ld l, e                                       ; $5e99: $6b
    ld a, [hl-]                                   ; $5e9a: $3a
    cpl                                           ; $5e9b: $2f
    ld d, a                                       ; $5e9c: $57
    ld d, h                                       ; $5e9d: $54
    ld [$9844], sp                                ; $5e9e: $08 $44 $98
    call nz, $e746                                ; $5ea1: $c4 $46 $e7
    inc de                                        ; $5ea4: $13
    sub c                                         ; $5ea5: $91
    dec hl                                        ; $5ea6: $2b
    xor d                                         ; $5ea7: $aa
    ld e, d                                       ; $5ea8: $5a
    ld l, d                                       ; $5ea9: $6a
    sbc h                                         ; $5eaa: $9c
    ld l, c                                       ; $5eab: $69
    rst $08                                       ; $5eac: $cf
    add a                                         ; $5ead: $87
    ld a, e                                       ; $5eae: $7b
    db $f4                                        ; $5eaf: $f4
    inc c                                         ; $5eb0: $0c
    db $dd                                        ; $5eb1: $dd
    sub l                                         ; $5eb2: $95

jr_04e_5eb3:
    ld [hl], h                                    ; $5eb3: $74
    dec de                                        ; $5eb4: $1b
    rst $30                                       ; $5eb5: $f7
    ldh a, [rBCPD]                                ; $5eb6: $f0 $69
    ld h, $0f                                     ; $5eb8: $26 $0f
    ld a, b                                       ; $5eba: $78
    ld e, a                                       ; $5ebb: $5f
    ld d, c                                       ; $5ebc: $51
    add $3d                                       ; $5ebd: $c6 $3d
    sbc a                                         ; $5ebf: $9f
    dec l                                         ; $5ec0: $2d
    dec de                                        ; $5ec1: $1b
    ld a, [hl-]                                   ; $5ec2: $3a
    ld l, a                                       ; $5ec3: $6f
    sub e                                         ; $5ec4: $93
    and a                                         ; $5ec5: $a7
    ld d, a                                       ; $5ec6: $57
    rst $10                                       ; $5ec7: $d7
    jp nz, Jump_04e_7a7d                          ; $5ec8: $c2 $7d $7a

    inc [hl]                                      ; $5ecb: $34
    ld e, c                                       ; $5ecc: $59
    jp hl                                         ; $5ecd: $e9


Jump_04e_5ece:
    inc sp                                        ; $5ece: $33
    ld h, d                                       ; $5ecf: $62
    ld l, e                                       ; $5ed0: $6b
    sbc $e6                                       ; $5ed1: $de $e6
    ld a, a                                       ; $5ed3: $7f
    ld d, d                                       ; $5ed4: $52

jr_04e_5ed5:
    db $fd                                        ; $5ed5: $fd
    xor e                                         ; $5ed6: $ab
    rla                                           ; $5ed7: $17
    rst $38                                       ; $5ed8: $ff
    ld b, a                                       ; $5ed9: $47
    ld c, a                                       ; $5eda: $4f
    dec sp                                        ; $5edb: $3b
    jr jr_04e_5e79                                ; $5edc: $18 $9b

    add [hl]                                      ; $5ede: $86
    inc bc                                        ; $5edf: $03
    ld hl, $7c2a                                  ; $5ee0: $21 $2a $7c
    reti                                          ; $5ee3: $d9


    db $eb                                        ; $5ee4: $eb
    ld h, a                                       ; $5ee5: $67
    nop                                           ; $5ee6: $00

jr_04e_5ee7:
    db $d3                                        ; $5ee7: $d3
    db $eb                                        ; $5ee8: $eb
    db $eb                                        ; $5ee9: $eb
    pop hl                                        ; $5eea: $e1
    res 0, [hl]                                   ; $5eeb: $cb $86
    ld c, [hl]                                    ; $5eed: $4e
    add l                                         ; $5eee: $85
    jr jr_04e_5e8b                                ; $5eef: $18 $9a

    ld c, a                                       ; $5ef1: $4f
    call nz, Call_04e_4f23                        ; $5ef2: $c4 $23 $4f
    dec hl                                        ; $5ef5: $2b
    dec de                                        ; $5ef6: $1b
    di                                            ; $5ef7: $f3
    inc de                                        ; $5ef8: $13
    push af                                       ; $5ef9: $f5
    inc a                                         ; $5efa: $3c
    sbc h                                         ; $5efb: $9c
    sbc a                                         ; $5efc: $9f
    ld a, [hl]                                    ; $5efd: $7e
    or h                                          ; $5efe: $b4
    adc l                                         ; $5eff: $8d
    ld e, h                                       ; $5f00: $5c
    inc h                                         ; $5f01: $24
    ld a, d                                       ; $5f02: $7a
    cp c                                          ; $5f03: $b9
    jr z, jr_04e_5eb3                             ; $5f04: $28 $ad

    reti                                          ; $5f06: $d9


    ld d, d                                       ; $5f07: $52
    ld [hl], b                                    ; $5f08: $70
    rst $08                                       ; $5f09: $cf
    add e                                         ; $5f0a: $83
    ld c, $99                                     ; $5f0b: $0e $99
    ld a, [hl]                                    ; $5f0d: $7e
    rst $20                                       ; $5f0e: $e7
    push af                                       ; $5f0f: $f5
    xor e                                         ; $5f10: $ab
    ld [hl], a                                    ; $5f11: $77
    push bc                                       ; $5f12: $c5
    ld h, e                                       ; $5f13: $63
    add [hl]                                      ; $5f14: $86
    adc [hl]                                      ; $5f15: $8e
    dec sp                                        ; $5f16: $3b
    push af                                       ; $5f17: $f5
    and d                                         ; $5f18: $a2
    and a                                         ; $5f19: $a7
    sub a                                         ; $5f1a: $97
    ld e, l                                       ; $5f1b: $5d
    ld [hl], $74                                  ; $5f1c: $36 $74
    ld e, h                                       ; $5f1e: $5c
    adc c                                         ; $5f1f: $89
    db $e4                                        ; $5f20: $e4
    reti                                          ; $5f21: $d9


    and e                                         ; $5f22: $a3
    ld [hl], a                                    ; $5f23: $77
    ld b, l                                       ; $5f24: $45
    ld [c], a                                     ; $5f25: $e2
    ld l, h                                       ; $5f26: $6c
    sbc c                                         ; $5f27: $99
    rst $18                                       ; $5f28: $df
    ccf                                           ; $5f29: $3f
    sub h                                         ; $5f2a: $94
    jp c, $8f15                                   ; $5f2b: $da $15 $8f

    ret                                           ; $5f2e: $c9


    sub c                                         ; $5f2f: $91
    ld c, e                                       ; $5f30: $4b
    halt                                          ; $5f31: $76
    sub a                                         ; $5f32: $97
    cp $27                                        ; $5f33: $fe $27
    sbc a                                         ; $5f35: $9f
    and c                                         ; $5f36: $a1
    sub e                                         ; $5f37: $93
    dec sp                                        ; $5f38: $3b
    db $fd                                        ; $5f39: $fd
    cp $bf                                        ; $5f3a: $fe $bf
    ld l, b                                       ; $5f3c: $68
    ld e, a                                       ; $5f3d: $5f
    xor b                                         ; $5f3e: $a8
    ldh a, [$a5]                                  ; $5f3f: $f0 $a5
    adc a                                         ; $5f41: $8f
    db $ec                                        ; $5f42: $ec
    ld [hl], l                                    ; $5f43: $75
    or $fc                                        ; $5f44: $f6 $fc
    ld [hl], d                                    ; $5f46: $72
    reti                                          ; $5f47: $d9


    ld e, b                                       ; $5f48: $58
    ret z                                         ; $5f49: $c8

    cp h                                          ; $5f4a: $bc
    ld a, [hl]                                    ; $5f4b: $7e
    db $e4                                        ; $5f4c: $e4
    ld a, [$b8dc]                                 ; $5f4d: $fa $dc $b8
    ld d, e                                       ; $5f50: $53
    rrca                                          ; $5f51: $0f
    ld a, b                                       ; $5f52: $78
    ld e, a                                       ; $5f53: $5f
    ld d, c                                       ; $5f54: $51
    add $3d                                       ; $5f55: $c6 $3d
    ld b, e                                       ; $5f57: $43
    inc b                                         ; $5f58: $04
    rst $20                                       ; $5f59: $e7
    pop hl                                        ; $5f5a: $e1
    dec sp                                        ; $5f5b: $3b
    ld a, d                                       ; $5f5c: $7a
    jp hl                                         ; $5f5d: $e9


    inc hl                                        ; $5f5e: $23
    ei                                            ; $5f5f: $fb
    db $f4                                        ; $5f60: $f4
    dec sp                                        ; $5f61: $3b
    push bc                                       ; $5f62: $c5
    rst $30                                       ; $5f63: $f7
    ld c, h                                       ; $5f64: $4c
    ld c, d                                       ; $5f65: $4a
    db $db                                        ; $5f66: $db
    ccf                                           ; $5f67: $3f
    sub h                                         ; $5f68: $94

Jump_04e_5f69:
    adc d                                         ; $5f69: $8a
    sbc [hl]                                      ; $5f6a: $9e
    ret                                           ; $5f6b: $c9


    ld a, c                                       ; $5f6c: $79
    ld e, c                                       ; $5f6d: $59
    xor d                                         ; $5f6e: $aa
    db $fd                                        ; $5f6f: $fd
    ld l, h                                       ; $5f70: $6c
    rrca                                          ; $5f71: $0f
    push de                                       ; $5f72: $d5
    call $db82                                    ; $5f73: $cd $82 $db
    ld a, c                                       ; $5f76: $79
    ld hl, sp-$72                                 ; $5f77: $f8 $8e
    ld e, [hl]                                    ; $5f79: $5e
    ret z                                         ; $5f7a: $c8

    db $f4                                        ; $5f7b: $f4
    ld c, e                                       ; $5f7c: $4b
    db $fc                                        ; $5f7d: $fc
    xor d                                         ; $5f7e: $aa
    reti                                          ; $5f7f: $d9


    ld d, d                                       ; $5f80: $52
    cp e                                          ; $5f81: $bb
    and e                                         ; $5f82: $a3
    and [hl]                                      ; $5f83: $a6
    sub l                                         ; $5f84: $95
    ld de, $0088                                  ; $5f85: $11 $88 $00
    adc a                                         ; $5f88: $8f
    ld c, e                                       ; $5f89: $4b
    db $ed                                        ; $5f8a: $ed
    add sp, $71                                   ; $5f8b: $e8 $71
    and a                                         ; $5f8d: $a7
    sbc [hl]                                      ; $5f8e: $9e
    rst $30                                       ; $5f8f: $f7
    ret                                           ; $5f90: $c9


    ld a, l                                       ; $5f91: $7d
    call c, $57a9                                 ; $5f92: $dc $a9 $57
    xor $c3                                       ; $5f95: $ee $c3
    cp e                                          ; $5f97: $bb
    cp h                                          ; $5f98: $bc
    ld b, [hl]                                    ; $5f99: $46
    and e                                         ; $5f9a: $a3
    ld hl, $1802                                  ; $5f9b: $21 $02 $18
    dec sp                                        ; $5f9e: $3b
    ld [hl], h                                    ; $5f9f: $74
    db $d3                                        ; $5fa0: $d3
    inc sp                                        ; $5fa1: $33
    add hl, hl                                    ; $5fa2: $29
    ld l, l                                       ; $5fa3: $6d
    call z, $5352                                 ; $5fa4: $cc $52 $53
    ld a, h                                       ; $5fa7: $7c
    rst $08                                       ; $5fa8: $cf

Call_04e_5fa9:
    and h                                         ; $5fa9: $a4
    or h                                          ; $5faa: $b4
    db $fd                                        ; $5fab: $fd
    ld b, e                                       ; $5fac: $43
    xor c                                         ; $5fad: $a9
    add sp, -$67                                  ; $5fae: $e8 $99
    sbc h                                         ; $5fb0: $9c
    rst $08                                       ; $5fb1: $cf
    ld d, $ff                                     ; $5fb2: $16 $ff
    ld b, a                                       ; $5fb4: $47
    ld c, a                                       ; $5fb5: $4f
    ld c, e                                       ; $5fb6: $4b
    ld a, [$186c]                                 ; $5fb7: $fa $6c $18
    dec sp                                        ; $5fba: $3b
    ld [hl], h                                    ; $5fbb: $74
    db $d3                                        ; $5fbc: $d3
    adc a                                         ; $5fbd: $8f
    add [hl]                                      ; $5fbe: $86
    or c                                          ; $5fbf: $b1
    ld b, e                                       ; $5fc0: $43
    scf                                           ; $5fc1: $37
    dec c                                         ; $5fc2: $0d
    ld hl, $8f84                                  ; $5fc3: $21 $84 $8f
    db $10                                        ; $5fc6: $10
    ret nz                                        ; $5fc7: $c0

    adc l                                         ; $5fc8: $8d
    sbc l                                         ; $5fc9: $9d
    sub h                                         ; $5fca: $94
    ei                                            ; $5fcb: $fb
    reti                                          ; $5fcc: $d9


    ld e, $aa                                     ; $5fcd: $1e $aa
    sbc e                                         ; $5fcf: $9b
    dec b                                         ; $5fd0: $05
    or a                                          ; $5fd1: $b7
    di                                            ; $5fd2: $f3
    ldh a, [rNR33]                                ; $5fd3: $f0 $1d
    cp l                                          ; $5fd5: $bd
    sub b                                         ; $5fd6: $90
    dec e                                         ; $5fd7: $1d
    ld e, l                                       ; $5fd8: $5d
    dec hl                                        ; $5fd9: $2b
    rst $30                                       ; $5fda: $f7
    ld [hl], c                                    ; $5fdb: $71
    db $fc                                        ; $5fdc: $fc
    ld l, h                                       ; $5fdd: $6c
    db $fc                                        ; $5fde: $fc
    ld e, d                                       ; $5fdf: $5a
    db $fc                                        ; $5fe0: $fc
    ret nc                                        ; $5fe1: $d0

    or l                                          ; $5fe2: $b5
    and b                                         ; $5fe3: $a0
    and e                                         ; $5fe4: $a3
    ld h, c                                       ; $5fe5: $61
    ld h, a                                       ; $5fe6: $67
    xor a                                         ; $5fe7: $af
    add d                                         ; $5fe8: $82
    ld [$4ec0], sp                                ; $5fe9: $08 $c0 $4e
    dec a                                         ; $5fec: $3d
    rst $28                                       ; $5fed: $ef
    sub e                                         ; $5fee: $93
    ei                                            ; $5fef: $fb
    cp b                                          ; $5ff0: $b8
    ld d, e                                       ; $5ff1: $53
    xor a                                         ; $5ff2: $af
    call c, Call_04e_7787                         ; $5ff3: $dc $87 $77
    ld a, c                                       ; $5ff6: $79
    pop bc                                        ; $5ff7: $c1
    ld bc, $5237                                  ; $5ff8: $01 $37 $52
    xor $10                                       ; $5ffb: $ee $10
    ld bc, $8dc0                                  ; $5ffd: $01 $c0 $8d
    sbc l                                         ; $6000: $9d
    sub h                                         ; $6001: $94
    ei                                            ; $6002: $fb
    reti                                          ; $6003: $d9


    ld e, $aa                                     ; $6004: $1e $aa
    sbc e                                         ; $6006: $9b
    dec b                                         ; $6007: $05
    ld de, $084f                                  ; $6008: $11 $4f $08
    ld c, e                                       ; $600b: $4b
    ld l, h                                       ; $600c: $6c
    call Call_04e_755e                            ; $600d: $cd $5e $75
    or [hl]                                       ; $6010: $b6
    add a                                         ; $6011: $87
    ld [$c166], a                                 ; $6012: $ea $66 $c1
    db $ed                                        ; $6015: $ed
    jp hl                                         ; $6016: $e9


    dec e                                         ; $6017: $1d
    push hl                                       ; $6018: $e5
    or e                                          ; $6019: $b3
    rst $00                                       ; $601a: $c7
    inc d                                         ; $601b: $14
    ccf                                           ; $601c: $3f
    cp a                                          ; $601d: $bf
    rst $38                                       ; $601e: $ff
    rst $28                                       ; $601f: $ef
    rlca                                          ; $6020: $07
    pop af                                        ; $6021: $f1
    ld l, e                                       ; $6022: $6b
    inc h                                         ; $6023: $24
    ld h, h                                       ; $6024: $64
    ld [hl], a                                    ; $6025: $77
    sbc $e6                                       ; $6026: $de $e6
    ld a, a                                       ; $6028: $7f
    db $db                                        ; $6029: $db
    xor h                                         ; $602a: $ac
    inc d                                         ; $602b: $14
    ret                                           ; $602c: $c9


    call nz, $7648                                ; $602d: $c4 $48 $76
    or $db                                        ; $6030: $f6 $db
    inc de                                        ; $6032: $13
    add hl, hl                                    ; $6033: $29
    inc a                                         ; $6034: $3c
    and [hl]                                      ; $6035: $a6
    xor $ff                                       ; $6036: $ee $ff
    push de                                       ; $6038: $d5
    cp e                                          ; $6039: $bb
    ld [c], a                                     ; $603a: $e2
    ld sp, $7a39                                  ; $603b: $31 $39 $7a
    or h                                          ; $603e: $b4
    ld h, h                                       ; $603f: $64
    call nz, $1a50                                ; $6040: $c4 $50 $1a
    dec a                                         ; $6043: $3d
    xor $d4                                       ; $6044: $ee $d4
    sla c                                         ; $6046: $cb $21
    adc $1e                                       ; $6048: $ce $1e
    ld bc, $f8a0                                  ; $604a: $01 $a0 $f8
    db $ec                                        ; $604d: $ec
    db $10                                        ; $604e: $10
    ld bc, $ab4f                                  ; $604f: $01 $4f $ab
    rst $30                                       ; $6052: $f7
    xor a                                         ; $6053: $af
    ld d, d                                       ; $6054: $52
    pop de                                        ; $6055: $d1
    inc hl                                        ; $6056: $23
    cp a                                          ; $6057: $bf
    ld [hl], d                                    ; $6058: $72
    xor $84                                       ; $6059: $ee $84
    jp nc, $71f0                                  ; $605b: $d2 $f0 $71

    and a                                         ; $605e: $a7
    sbc [hl]                                      ; $605f: $9e
    or a                                          ; $6060: $b7
    ld sp, hl                                     ; $6061: $f9
    rst $18                                       ; $6062: $df
    ld [hl], $2b                                  ; $6063: $36 $2b
    ld b, l                                       ; $6065: $45
    ld [hl-], a                                   ; $6066: $32
    ld sp, $fd92                                  ; $6067: $31 $92 $fd
    ld de, $4f02                                  ; $606a: $11 $02 $4f
    ld hl, sp+$7d                                 ; $606d: $f8 $7d
    ld e, [hl]                                    ; $606f: $5e
    sub h                                         ; $6070: $94
    ld c, a                                       ; $6071: $4f
    dec sp                                        ; $6072: $3b
    ld a, [$cd72]                                 ; $6073: $fa $72 $cd
    bit 5, b                                      ; $6076: $cb $68
    ret                                           ; $6078: $c9


    ld c, b                                       ; $6079: $48
    ret                                           ; $607a: $c9


    adc b                                         ; $607b: $88
    and c                                         ; $607c: $a1
    or h                                          ; $607d: $b4
    sub [hl]                                      ; $607e: $96
    ld a, b                                       ; $607f: $78
    ret                                           ; $6080: $c9


    jp z, $ff7d                                   ; $6081: $ca $7d $ff

    and b                                         ; $6084: $a0
    ld d, d                                       ; $6085: $52
    ld c, e                                       ; $6086: $4b
    or e                                          ; $6087: $b3
    sub h                                         ; $6088: $94
    sub d                                         ; $6089: $92
    or d                                          ; $608a: $b2
    ld hl, $e770                                  ; $608b: $21 $70 $e7
    pop hl                                        ; $608e: $e1
    db $e3                                        ; $608f: $e3
    xor [hl]                                      ; $6090: $ae
    ld c, b                                       ; $6091: $48
    ld e, [hl]                                    ; $6092: $5e
    sub [hl]                                      ; $6093: $96
    ld c, d                                       ; $6094: $4a
    and a                                         ; $6095: $a7
    xor e                                         ; $6096: $ab
    ld h, e                                       ; $6097: $63
    ld sp, hl                                     ; $6098: $f9
    ld [hl], b                                    ; $6099: $70
    ld e, a                                       ; $609a: $5f
    cp c                                          ; $609b: $b9
    adc a                                         ; $609c: $8f
    jr jr_04e_60e9                                ; $609d: $18 $4a

    ld l, e                                       ; $609f: $6b
    or $fa                                        ; $60a0: $f6 $fa
    reti                                          ; $60a2: $d9


    inc c                                         ; $60a3: $0c
    sbc l                                         ; $60a4: $9d
    ld c, l                                       ; $60a5: $4d
    ld b, [hl]                                    ; $60a6: $46
    ld c, d                                       ; $60a7: $4a
    and [hl]                                      ; $60a8: $a6
    ld e, l                                       ; $60a9: $5d
    rst $30                                       ; $60aa: $f7
    sbc d                                         ; $60ab: $9a
    dec c                                         ; $60ac: $0d
    ld a, [bc]                                    ; $60ad: $0a
    ld de, $f8e0                                  ; $60ae: $11 $e0 $f8
    add l                                         ; $60b1: $85
    ei                                            ; $60b2: $fb
    inc l                                         ; $60b3: $2c
    inc sp                                        ; $60b4: $33
    pop bc                                        ; $60b5: $c1
    db $fd                                        ; $60b6: $fd
    ld l, h                                       ; $60b7: $6c
    db $f4                                        ; $60b8: $f4
    call nc, $cfc4                                ; $60b9: $d4 $c4 $cf
    add $25                                       ; $60bc: $c6 $25
    call nz, $f2af                                ; $60be: $c4 $af $f2
    ld h, l                                       ; $60c1: $65
    ccf                                           ; $60c2: $3f
    cp $0f                                        ; $60c3: $fe $0f
    ld [$de21], sp                                ; $60c5: $08 $21 $de
    sub c                                         ; $60c8: $91
    cp d                                          ; $60c9: $ba
    ld a, c                                       ; $60ca: $79
    reti                                          ; $60cb: $d9


    ret nc                                        ; $60cc: $d0

    dec a                                         ; $60cd: $3d
    sub c                                         ; $60ce: $91
    jp nz, $ea63                                  ; $60cf: $c2 $63 $ea

    cp $5f                                        ; $60d2: $fe $5f
    dec a                                         ; $60d4: $3d
    dec de                                        ; $60d5: $1b
    ld c, $11                                     ; $60d6: $0e $11
    rst $08                                       ; $60d8: $cf
    ld h, e                                       ; $60d9: $63
    ld l, h                                       ; $60da: $6c
    di                                            ; $60db: $f3
    cp a                                          ; $60dc: $bf
    ld l, l                                       ; $60dd: $6d
    ld d, [hl]                                    ; $60de: $56
    adc d                                         ; $60df: $8a
    ld h, h                                       ; $60e0: $64
    cp h                                          ; $60e1: $bc
    ld l, a                                       ; $60e2: $6f
    adc [hl]                                      ; $60e3: $8e
    ld e, [hl]                                    ; $60e4: $5e
    ld d, a                                       ; $60e5: $57
    xor [hl]                                      ; $60e6: $ae
    ld a, $1b                                     ; $60e7: $3e $1b

jr_04e_60e9:
    add hl, hl                                    ; $60e9: $29
    sbc c                                         ; $60ea: $99
    ld [c], a                                     ; $60eb: $e2
    sub a                                         ; $60ec: $97
    adc b                                         ; $60ed: $88
    adc l                                         ; $60ee: $8d
    ld e, $d3                                     ; $60ef: $1e $d3
    or h                                          ; $60f1: $b4
    dec c                                         ; $60f2: $0d
    ld a, c                                       ; $60f3: $79
    ld e, $01                                     ; $60f4: $1e $01
    rst $20                                       ; $60f6: $e7
    ret                                           ; $60f7: $c9


    or h                                          ; $60f8: $b4
    ld [$5e7d], a                                 ; $60f9: $ea $7d $5e
    sub h                                         ; $60fc: $94
    adc a                                         ; $60fd: $8f
    add sp, -$2b                                  ; $60fe: $e8 $d5
    db $10                                        ; $6100: $10
    ld bc, $4b8f                                  ; $6101: $01 $8f $4b
    adc l                                         ; $6104: $8d
    dec sp                                        ; $6105: $3b
    ld [hl], l                                    ; $6106: $75
    ld a, $91                                     ; $6107: $3e $91
    add sp, $69                                   ; $6109: $e8 $69
    rst $10                                       ; $610b: $d7
    cp l                                          ; $610c: $bd
    sub [hl]                                      ; $610d: $96
    sbc c                                         ; $610e: $99
    add hl, bc                                    ; $610f: $09
    pop de                                        ; $6110: $d1
    sub d                                         ; $6111: $92
    call z, $967d                                 ; $6112: $cc $7d $96
    adc d                                         ; $6115: $8a
    cpl                                           ; $6116: $2f
    db $10                                        ; $6117: $10
    ld b, d                                       ; $6118: $42
    ld h, [hl]                                    ; $6119: $66
    xor c                                         ; $611a: $a9
    pop af                                        ; $611b: $f1
    ld a, $ee                                     ; $611c: $3e $ee
    call nc, $aca3                                ; $611e: $d4 $a3 $ac
    inc d                                         ; $6121: $14
    add hl, bc                                    ; $6122: $09
    rst $18                                       ; $6123: $df
    sbc l                                         ; $6124: $9d
    ld [c], a                                     ; $6125: $e2
    ld a, e                                       ; $6126: $7b
    ld b, h                                       ; $6127: $44
    ccf                                           ; $6128: $3f
    cp $87                                        ; $6129: $fe $87
    ld [$f84f], sp                                ; $612b: $08 $4f $f8
    db $fd                                        ; $612e: $fd
    ld b, e                                       ; $612f: $43
    ld d, h                                       ; $6130: $54
    call z, $bb26                                 ; $6131: $cc $26 $bb
    ld [c], a                                     ; $6134: $e2
    ld sp, $f7c5                                  ; $6135: $31 $c5 $f7
    ld [de], a                                    ; $6138: $12
    inc e                                         ; $6139: $1c
    rst $20                                       ; $613a: $e7
    ld a, l                                       ; $613b: $7d
    pop af                                        ; $613c: $f1
    ld a, a                                       ; $613d: $7f
    db $f4                                        ; $613e: $f4
    or d                                          ; $613f: $b2
    di                                            ; $6140: $f3
    cp l                                          ; $6141: $bd
    db $ec                                        ; $6142: $ec
    rst $30                                       ; $6143: $f7
    rst $38                                       ; $6144: $ff
    dec e                                         ; $6145: $1d
    dec a                                         ; $6146: $3d
    sbc e                                         ; $6147: $9b
    inc c                                         ; $6148: $0c
    rst $20                                       ; $6149: $e7
    and a                                         ; $614a: $a7
    rra                                           ; $614b: $1f
    ld l, d                                       ; $614c: $6a
    cp h                                          ; $614d: $bc
    xor a                                         ; $614e: $af
    rrca                                          ; $614f: $0f
    rst $30                                       ; $6150: $f7
    ld l, c                                       ; $6151: $69
    db $fc                                        ; $6152: $fc
    rst $38                                       ; $6153: $ff
    db $10                                        ; $6154: $10
    ld bc, $4b8f                                  ; $6155: $01 $8f $4b
    ld c, l                                       ; $6158: $4d
    xor e                                         ; $6159: $ab
    ld e, [hl]                                    ; $615a: $5e
    cp b                                          ; $615b: $b8
    cpl                                           ; $615c: $2f
    ld d, h                                       ; $615d: $54
    ld hl, sp+$72                                 ; $615e: $f8 $72
    ld c, d                                       ; $6160: $4a
    dec bc                                        ; $6161: $0b
    ld e, d                                       ; $6162: $5a
    dec hl                                        ; $6163: $2b
    rst $30                                       ; $6164: $f7
    and l                                         ; $6165: $a5
    add e                                         ; $6166: $83
    or b                                          ; $6167: $b0
    ld l, b                                       ; $6168: $68
    rst $10                                       ; $6169: $d7
    add sp, $55                                   ; $616a: $e8 $55
    inc sp                                        ; $616c: $33
    sub h                                         ; $616d: $94
    dec a                                         ; $616e: $3d
    ld [bc], a                                    ; $616f: $02
    ld c, a                                       ; $6170: $4f
    and h                                         ; $6171: $a4
    ldh a, [$c8]                                  ; $6172: $f0 $c8
    db $eb                                        ; $6174: $eb
    add h                                         ; $6175: $84
    xor $5f                                       ; $6176: $ee $5f
    and l                                         ; $6178: $a5
    and d                                         ; $6179: $a2
    ld [hl], a                                    ; $617a: $77
    rst $00                                       ; $617b: $c7
    dec e                                         ; $617c: $1d
    and d                                         ; $617d: $a2
    ld [c], a                                     ; $617e: $e2
    rst $20                                       ; $617f: $e7
    ret nc                                        ; $6180: $d0

    ld hl, sp+$6f                                 ; $6181: $f8 $6f
    ld e, d                                       ; $6183: $5a
    ld a, [bc]                                    ; $6184: $0a
    ld l, [hl]                                    ; $6185: $6e
    rrca                                          ; $6186: $0f
    dec h                                         ; $6187: $25
    ld a, c                                       ; $6188: $79
    db $e4                                        ; $6189: $e4
    ld d, a                                       ; $618a: $57
    adc $9d                                       ; $618b: $ce $9d
    ret nc                                        ; $618d: $d0

    and l                                         ; $618e: $a5
    ld c, a                                       ; $618f: $4f
    cp l                                          ; $6190: $bd
    ld a, a                                       ; $6191: $7f
    sub l                                         ; $6192: $95
    xor d                                         ; $6193: $aa
    db $dd                                        ; $6194: $dd
    ret                                           ; $6195: $c9


    pop de                                        ; $6196: $d1
    ld e, d                                       ; $6197: $5a
    ld a, b                                       ; $6198: $78
    ld [$e744], sp                                ; $6199: $08 $44 $e7
    pop hl                                        ; $619c: $e1
    dec sp                                        ; $619d: $3b
    ld a, d                                       ; $619e: $7a
    call z, $fb24                                 ; $619f: $cc $24 $fb
    cp $25                                        ; $61a2: $fe $25
    ld a, $e0                                     ; $61a4: $3e $e0
    call $b8e2                                    ; $61a6: $cd $e2 $b8
    dec hl                                        ; $61a9: $2b
    sub $f4                                       ; $61aa: $d6 $f4
    jp z, $8a7d                                   ; $61ac: $ca $7d $8a

    sbc a                                         ; $61af: $9f
    ld a, [hl]                                    ; $61b0: $7e
    ld a, a                                       ; $61b1: $7f
    ld c, $f6                                     ; $61b2: $0e $f6
    ld [$c9e7], sp                                ; $61b4: $08 $e7 $c9
    db $ec                                        ; $61b7: $ec
    pop de                                        ; $61b8: $d1
    db $ec                                        ; $61b9: $ec
    or a                                          ; $61ba: $b7
    and a                                         ; $61bb: $a7
    push de                                       ; $61bc: $d5
    call c, Call_04e_77a9                         ; $61bd: $dc $a9 $77
    db $f4                                        ; $61c0: $f4
    ld l, h                                       ; $61c1: $6c
    or d                                          ; $61c2: $b2
    dec hl                                        ; $61c3: $2b
    ld e, $c3                                     ; $61c4: $1e $c3
    ld sp, hl                                     ; $61c6: $f9
    reti                                          ; $61c7: $d9


    dec hl                                        ; $61c8: $2b
    ei                                            ; $61c9: $fb
    ld b, c                                       ; $61ca: $41
    db $fc                                        ; $61cb: $fc
    ld a, [de]                                    ; $61cc: $1a
    ld a, c                                       ; $61cd: $79
    add h                                         ; $61ce: $84
    nop                                           ; $61cf: $00
    adc a                                         ; $61d0: $8f
    ld c, e                                       ; $61d1: $4b
    adc l                                         ; $61d2: $8d
    dec sp                                        ; $61d3: $3b
    ld [hl], l                                    ; $61d4: $75
    ld a, $91                                     ; $61d5: $3e $91
    add sp, $69                                   ; $61d7: $e8 $69
    rst $10                                       ; $61d9: $d7
    cp l                                          ; $61da: $bd
    ld b, [hl]                                    ; $61db: $46
    ld a, [hl]                                    ; $61dc: $7e
    push hl                                       ; $61dd: $e5
    call c, $a509                                 ; $61de: $dc $09 $a5
    pop hl                                        ; $61e1: $e1
    db $e3                                        ; $61e2: $e3
    ld c, [hl]                                    ; $61e3: $4e
    dec a                                         ; $61e4: $3d
    ld l, a                                       ; $61e5: $6f
    di                                            ; $61e6: $f3
    cp a                                          ; $61e7: $bf
    ld l, l                                       ; $61e8: $6d
    ld d, [hl]                                    ; $61e9: $56
    adc d                                         ; $61ea: $8a
    ld h, h                                       ; $61eb: $64
    ld h, d                                       ; $61ec: $62
    inc h                                         ; $61ed: $24
    dec sp                                        ; $61ee: $3b
    ld b, h                                       ; $61ef: $44
    rst $20                                       ; $61f0: $e7
    pop hl                                        ; $61f1: $e1
    ei                                            ; $61f2: $fb
    ld d, a                                       ; $61f3: $57
    xor c                                         ; $61f4: $a9
    add sp, -$23                                  ; $61f5: $e8 $dd
    ld [hl], c                                    ; $61f7: $71
    add a                                         ; $61f8: $87
    xor b                                         ; $61f9: $a8
    ld hl, sp+$39                                 ; $61fa: $f8 $39
    inc [hl]                                      ; $61fc: $34
    cp $9b                                        ; $61fd: $fe $9b
    sub [hl]                                      ; $61ff: $96
    ld h, d                                       ; $6200: $62
    cp a                                          ; $6201: $bf
    ld h, c                                       ; $6202: $61
    cp h                                          ; $6203: $bc
    rst $38                                       ; $6204: $ff
    rst $08                                       ; $6205: $cf
    and h                                         ; $6206: $a4
    or h                                          ; $6207: $b4
    pop de                                        ; $6208: $d1
    or b                                          ; $6209: $b0
    dec bc                                        ; $620a: $0b
    add hl, de                                    ; $620b: $19
    ld [hl], a                                    ; $620c: $77
    ld [$c5ec], a                                 ; $620d: $ea $ec $c5

jr_04e_6210:
    ld [hl], a                                    ; $6210: $77
    adc [hl]                                      ; $6211: $8e
    rra                                           ; $6212: $1f
    ld a, [$a6d2]                                 ; $6213: $fa $d2 $a6
    ld l, l                                       ; $6216: $6d
    ld c, h                                       ; $6217: $4c
    rrca                                          ; $6218: $0f
    xor a                                         ; $6219: $af
    reti                                          ; $621a: $d9


    ld [hl], b                                    ; $621b: $70
    or $08                                        ; $621c: $f6 $08
    jr nz, @-$0a                                  ; $621e: $20 $f4

    ld b, e                                       ; $6220: $43
    call $ffef                                    ; $6221: $cd $ef $ff
    ei                                            ; $6224: $fb
    ld b, c                                       ; $6225: $41
    db $fc                                        ; $6226: $fc
    ld a, [de]                                    ; $6227: $1a
    add hl, bc                                    ; $6228: $09
    add hl, sp                                    ; $6229: $39
    dec de                                        ; $622a: $1b
    jr c, jr_04e_6210                             ; $622b: $38 $e3

    ld e, $cd                                     ; $622d: $1e $cd
    ld e, $01                                     ; $622f: $1e $01
    ld c, a                                       ; $6231: $4f
    and d                                         ; $6232: $a2
    ld b, a                                       ; $6233: $47
    ld c, e                                       ; $6234: $4b
    add [hl]                                      ; $6235: $86
    di                                            ; $6236: $f3
    ld h, a                                       ; $6237: $67
    ld a, e                                       ; $6238: $7b
    xor b                                         ; $6239: $a8
    ld l, [hl]                                    ; $623a: $6e
    sub $c0                                       ; $623b: $d6 $c0
    add hl, de                                    ; $623d: $19
    rst $30                                       ; $623e: $f7
    ld l, b                                       ; $623f: $68
    cp b                                          ; $6240: $b8
    dec a                                         ; $6241: $3d
    push hl                                       ; $6242: $e5
    ld a, e                                       ; $6243: $7b
    jp nz, Jump_000_082a                          ; $6244: $c2 $2a $08

    ld h, c                                       ; $6247: $61
    ld a, [hl-]                                   ; $6248: $3a
    ld a, [$ad44]                                 ; $6249: $fa $44 $ad
    ld d, $0e                                     ; $624c: $16 $0e
    or a                                          ; $624e: $b7
    and a                                         ; $624f: $a7
    push de                                       ; $6250: $d5
    bit 6, d                                      ; $6251: $cb $72
    db $fc                                        ; $6253: $fc
    ccf                                           ; $6254: $3f
    sub e                                         ; $6255: $93
    jp nc, Jump_000_0f96                          ; $6256: $d2 $96 $0f

    rst $30                                       ; $6259: $f7
    reti                                          ; $625a: $d9


    xor e                                         ; $625b: $ab
    jr nz, jr_04e_6260                            ; $625c: $20 $02

    ldh [$8c], a                                  ; $625e: $e0 $8c

jr_04e_6260:
    ld a, e                                       ; $6260: $7b
    db $f4                                        ; $6261: $f4
    reti                                          ; $6262: $d9


    db $f4                                        ; $6263: $f4
    ld [$9265], a                                 ; $6264: $ea $65 $92
    db $fc                                        ; $6267: $fc
    rra                                           ; $6268: $1f
    or e                                          ; $6269: $b3
    ret                                           ; $626a: $c9


    ld a, [hl]                                    ; $626b: $7e
    ld a, b                                       ; $626c: $78
    call Call_000_31d0                            ; $626d: $cd $d0 $31
    ld c, e                                       ; $6270: $4b
    dec l                                         ; $6271: $2d
    rst $10                                       ; $6272: $d7
    ld a, b                                       ; $6273: $78
    sbc a                                         ; $6274: $9f
    cp l                                          ; $6275: $bd
    ld l, d                                       ; $6276: $6a
    push hl                                       ; $6277: $e5
    ld a, $ee                                     ; $6278: $3e $ee
    adc d                                         ; $627a: $8a
    call nc, $9642                                ; $627b: $d4 $42 $96
    adc [hl]                                      ; $627e: $8e
    ld l, h                                       ; $627f: $6c
    xor d                                         ; $6280: $aa
    or e                                          ; $6281: $b3
    add a                                         ; $6282: $87
    adc h                                         ; $6283: $8c
    rst $30                                       ; $6284: $f7
    pop de                                        ; $6285: $d1
    xor e                                         ; $6286: $ab
    ld e, $21                                     ; $6287: $1e $21
    adc a                                         ; $6289: $8f
    ld c, e                                       ; $628a: $4b
    ld c, l                                       ; $628b: $4d
    rrca                                          ; $628c: $0f
    ccf                                           ; $628d: $3f
    dec de                                        ; $628e: $1b
    or e                                          ; $628f: $b3
    call nc, Call_04e_70f4                        ; $6290: $d4 $f4 $70
    or $08                                        ; $6293: $f6 $08
    adc a                                         ; $6295: $8f
    ld c, e                                       ; $6296: $4b
    ld c, l                                       ; $6297: $4d
    rrca                                          ; $6298: $0f
    rst $18                                       ; $6299: $df
    dec d                                         ; $629a: $15
    adc a                                         ; $629b: $8f
    or e                                          ; $629c: $b3
    push hl                                       ; $629d: $e5
    db $db                                        ; $629e: $db
    ld [hl], b                                    ; $629f: $70
    and b                                         ; $62a0: $a0
    ld b, e                                       ; $62a1: $43
    add $2c                                       ; $62a2: $c6 $2c
    dec [hl]                                      ; $62a4: $35
    ld l, a                                       ; $62a5: $6f
    db $d3                                        ; $62a6: $d3
    dec hl                                        ; $62a7: $2b
    rst $30                                       ; $62a8: $f7
    dec a                                         ; $62a9: $3d
    ld b, h                                       ; $62aa: $44
    db $d3                                        ; $62ab: $d3
    ld l, e                                       ; $62ac: $6b
    inc h                                         ; $62ad: $24
    and [hl]                                      ; $62ae: $a6
    ld c, [hl]                                    ; $62af: $4e
    dec a                                         ; $62b0: $3d
    dec de                                        ; $62b1: $1b
    ld a, [hl]                                    ; $62b2: $7e
    ld [hl], $b9                                  ; $62b3: $36 $b9
    inc hl                                        ; $62b5: $23
    dec h                                         ; $62b6: $25
    sbc c                                         ; $62b7: $99
    call nz, $a932                                ; $62b8: $c4 $32 $a9
    ld [hl], c                                    ; $62bb: $71
    call $9aab                                    ; $62bc: $cd $ab $9a
    ld d, $22                                     ; $62bf: $16 $22
    ld bc, $e711                                  ; $62c1: $01 $11 $e7
    pop hl                                        ; $62c4: $e1
    ld c, e                                       ; $62c5: $4b
    rst $38                                       ; $62c6: $ff
    db $db                                        ; $62c7: $db
    dec bc                                        ; $62c8: $0b
    rst $30                                       ; $62c9: $f7
    pop hl                                        ; $62ca: $e1
    and $10                                       ; $62cb: $e6 $10
    sub l                                         ; $62cd: $95
    ld d, a                                       ; $62ce: $57
    cp d                                          ; $62cf: $ba
    db $ed                                        ; $62d0: $ed
    ld d, d                                       ; $62d1: $52
    db $e3                                        ; $62d2: $e3
    sbc d                                         ; $62d3: $9a
    sub a                                         ; $62d4: $97
    ld bc, $166f                                  ; $62d5: $01 $6f $16
    rst $00                                       ; $62d8: $c7
    ld e, l                                       ; $62d9: $5d
    or c                                          ; $62da: $b1
    and [hl]                                      ; $62db: $a6
    rst $08                                       ; $62dc: $cf
    ld b, $ce                                     ; $62dd: $06 $ce
    cp b                                          ; $62df: $b8
    ld b, a                                       ; $62e0: $47
    ld b, e                                       ; $62e1: $43

jr_04e_62e2:
    inc b                                         ; $62e2: $04
    add b                                         ; $62e3: $80
    sbc b                                         ; $62e4: $98
    ld h, a                                       ; $62e5: $67
    dec hl                                        ; $62e6: $2b
    and $d9                                       ; $62e7: $e6 $d9
    adc d                                         ; $62e9: $8a
    ret                                           ; $62ea: $c9


    ld e, $01                                     ; $62eb: $1e $01
    rst $20                                       ; $62ed: $e7
    ld d, a                                       ; $62ee: $57
    and [hl]                                      ; $62ef: $a6
    rra                                           ; $62f0: $1f
    ld [hl-], a                                   ; $62f1: $32
    jp c, Jump_04e_6503                           ; $62f2: $da $03 $65

    ld b, h                                       ; $62f5: $44
    and l                                         ; $62f6: $a5
    adc l                                         ; $62f7: $8d
    cp e                                          ; $62f8: $bb
    and c                                         ; $62f9: $a1
    db $d3                                        ; $62fa: $d3
    and e                                         ; $62fb: $a3
    ld c, c                                       ; $62fc: $49
    push af                                       ; $62fd: $f5
    or h                                          ; $62fe: $b4
    sbc d                                         ; $62ff: $9a
    ld h, d                                       ; $6300: $62
    sbc d                                         ; $6301: $9a
    or $dd                                        ; $6302: $f6 $dd
    rst $38                                       ; $6304: $ff
    ld l, e                                       ; $6305: $6b
    ld sp, hl                                     ; $6306: $f9
    ld a, [hl+]                                   ; $6307: $2a
    cp b                                          ; $6308: $b8
    dec a                                         ; $6309: $3d
    ld l, $b5                                     ; $630a: $2e $b5

jr_04e_630c:
    ld c, h                                       ; $630c: $4c
    ld l, d                                       ; $630d: $6a
    sbc a                                         ; $630e: $9f
    rst $30                                       ; $630f: $f7
    sbc d                                         ; $6310: $9a
    cp l                                          ; $6311: $bd
    ld l, d                                       ; $6312: $6a
    cp c                                          ; $6313: $b9
    add sp, -$51                                  ; $6314: $e8 $af
    ld e, l                                       ; $6316: $5d
    call $bbe0                                    ; $6317: $cd $e0 $bb
    and d                                         ; $631a: $a2
    ld a, [hl-]                                   ; $631b: $3a
    db $ec                                        ; $631c: $ec
    dec c                                         ; $631d: $0d
    ret                                           ; $631e: $c9


    pop de                                        ; $631f: $d1
    ld d, d                                       ; $6320: $52
    di                                            ; $6321: $f3
    ei                                            ; $6322: $fb
    rst $38                                       ; $6323: $ff
    ld b, d                                       ; $6324: $42
    ld h, [hl]                                    ; $6325: $66
    sbc e                                         ; $6326: $9b
    sub l                                         ; $6327: $95
    ld [hl+], a                                   ; $6328: $22
    res 0, [hl]                                   ; $6329: $cb $86
    adc [hl]                                      ; $632b: $8e
    sub h                                         ; $632c: $94
    ld c, h                                       ; $632d: $4c
    adc e                                         ; $632e: $8b
    ld e, a                                       ; $632f: $5f
    db $d3                                        ; $6330: $d3
    adc h                                         ; $6331: $8c

Jump_04e_6332:
    jr @+$7c                                      ; $6332: $18 $7a

    ld [hl], $70                                  ; $6334: $36 $70
    add $3d                                       ; $6336: $c6 $3d
    ld a, [de]                                    ; $6338: $1a
    ld [hl+], a                                   ; $6339: $22
    and b                                         ; $633a: $a0
    ld b, e                                       ; $633b: $43
    jr nz, @-$7a                                  ; $633c: $20 $84

    ld [$c9e7], sp                                ; $633e: $08 $e7 $c9
    jr z, jr_04e_62e2                             ; $6341: $28 $9f

    dec a                                         ; $6343: $3d
    and [hl]                                      ; $6344: $a6
    ld e, l                                       ; $6345: $5d
    rst $30                                       ; $6346: $f7
    jp c, $b3eb                                   ; $6347: $da $eb $b3

    pop af                                        ; $634a: $f1
    xor e                                         ; $634b: $ab
    sub a                                         ; $634c: $97
    ld c, c                                       ; $634d: $49
    db $fd                                        ; $634e: $fd
    ld [hl], h                                    ; $634f: $74
    add hl, hl                                    ; $6350: $29
    sub l                                         ; $6351: $95
    ld c, a                                       ; $6352: $4f
    jp z, $d9c8                                   ; $6353: $ca $c8 $d9

    ld e, [hl]                                    ; $6356: $5e
    sbc e                                         ; $6357: $9b
    adc l                                         ; $6358: $8d
    ccf                                           ; $6359: $3f
    db $d3                                        ; $635a: $d3
    call nc, $b10f                                ; $635b: $d4 $0f $b1
    pop de                                        ; $635e: $d1
    inc sp                                        ; $635f: $33
    add hl, hl                                    ; $6360: $29
    ld l, l                                       ; $6361: $6d
    xor a                                         ; $6362: $af
    call Call_000_1fc6                            ; $6363: $cd $c6 $1f
    sub c                                         ; $6366: $91
    ld a, [$ff3f]                                 ; $6367: $fa $3f $ff
    ld [de], a                                    ; $636a: $12
    sub l                                         ; $636b: $95
    inc sp                                        ; $636c: $33
    cp c                                          ; $636d: $b9
    ld [hl+], a                                   ; $636e: $22
    ld [hl], b                                    ; $636f: $70
    inc bc                                        ; $6370: $03
    dec d                                         ; $6371: $15
    ld e, [hl]                                    ; $6372: $5e
    dec bc                                        ; $6373: $0b
    adc $a3                                       ; $6374: $ce $a3
    ld h, a                                       ; $6376: $67
    add e                                         ; $6377: $83
    xor $2e                                       ; $6378: $ee $2e
    cp $8f                                        ; $637a: $fe $8f
    ld e, [hl]                                    ; $637c: $5e
    daa                                           ; $637d: $27
    ld [c], a                                     ; $637e: $e2
    ld a, e                                       ; $637f: $7b
    jr nc, jr_04e_630c                            ; $6380: $30 $8a

    ld d, c                                       ; $6382: $51
    or l                                          ; $6383: $b5
    ld h, a                                       ; $6384: $67
    cp b                                          ; $6385: $b8
    sbc l                                         ; $6386: $9d
    add a                                         ; $6387: $87
    adc a                                         ; $6388: $8f
    sub h                                         ; $6389: $94
    ld c, h                                       ; $638a: $4c
    xor a                                         ; $638b: $af
    xor [hl]                                      ; $638c: $ae
    add l                                         ; $638d: $85
    inc l                                         ; $638e: $2c
    db $dd                                        ; $638f: $dd
    or l                                          ; $6390: $b5
    ld l, e                                       ; $6391: $6b
    sbc a                                         ; $6392: $9f
    ld e, c                                       ; $6393: $59
    cp c                                          ; $6394: $b9
    rrca                                          ; $6395: $0f
    rst $28                                       ; $6396: $ef
    ld a, [c]                                     ; $6397: $f2
    ld a, [de]                                    ; $6398: $1a
    dec c                                         ; $6399: $0d
    dec sp                                        ; $639a: $3b
    push bc                                       ; $639b: $c5
    or a                                          ; $639c: $b7
    call $faa4                                    ; $639d: $cd $a4 $fa
    add a                                         ; $63a0: $87
    db $ec                                        ; $63a1: $ec
    and c                                         ; $63a2: $a1
    ld d, h                                       ; $63a3: $54
    ld e, a                                       ; $63a4: $5f
    dec sp                                        ; $63a5: $3b
    ld b, e                                       ; $63a6: $43
    and a                                         ; $63a7: $a7
    ld d, a                                       ; $63a8: $57
    rst $08                                       ; $63a9: $cf
    ld h, $cb                                     ; $63aa: $26 $cb
    and h                                         ; $63ac: $a4
    or $c3                                        ; $63ad: $f6 $c3
    dec bc                                        ; $63af: $0b
    ld c, $6c                                     ; $63b0: $0e $6c
    ld c, d                                       ; $63b2: $4a
    ld e, e                                       ; $63b3: $5b
    ld h, $2c                                     ; $63b4: $26 $2c
    or c                                          ; $63b6: $b1
    dec [hl]                                      ; $63b7: $35
    ld a, e                                       ; $63b8: $7b
    dec d                                         ; $63b9: $15
    call c, $971e                                 ; $63ba: $dc $1e $97
    sbc d                                         ; $63bd: $9a
    db $ed                                        ; $63be: $ed
    ld [$3e95], a                                 ; $63bf: $ea $95 $3e
    call c, $a21c                                 ; $63c2: $dc $1c $a2
    add $9d                                       ; $63c5: $c6 $9d
    ld a, d                                       ; $63c7: $7a
    ld sp, hl                                     ; $63c8: $f9
    db $f4                                        ; $63c9: $f4
    ld c, e                                       ; $63ca: $4b
    ld l, h                                       ; $63cb: $6c
    ld b, b                                       ; $63cc: $40
    inc b                                         ; $63cd: $04
    ld c, a                                       ; $63ce: $4f
    ld [$6c4b], sp                                ; $63cf: $08 $4b $6c
    call Call_04e_755e                            ; $63d2: $cd $5e $75
    or [hl]                                       ; $63d5: $b6
    add a                                         ; $63d6: $87
    ld [$4166], a                                 ; $63d7: $ea $66 $41
    ld [$1011], sp                                ; $63da: $08 $11 $10
    ld b, d                                       ; $63dd: $42
    dec de                                        ; $63de: $1b
    ld a, $75                                     ; $63df: $3e $75
    ld [$d1e9], a                                 ; $63e1: $ea $e9 $d1
    db $e4                                        ; $63e4: $e4
    ld e, a                                       ; $63e5: $5f
    dec d                                         ; $63e6: $15
    ld [hl-], a                                   ; $63e7: $32
    inc hl                                        ; $63e8: $23
    adc $1e                                       ; $63e9: $ce $1e
    ld bc, $c9e7                                  ; $63eb: $01 $e7 $c9
    or h                                          ; $63ee: $b4
    db $eb                                        ; $63ef: $eb
    ld e, [hl]                                    ; $63f0: $5e
    cp l                                          ; $63f1: $bd
    dec hl                                        ; $63f2: $2b
    ld e, $b3                                     ; $63f3: $1e $b3
    pop hl                                        ; $63f5: $e1
    or e                                          ; $63f6: $b3
    ret                                           ; $63f7: $c9


    ld a, [hl]                                    ; $63f8: $7e
    ld a, b                                       ; $63f9: $78
    push af                                       ; $63fa: $f5
    add d                                         ; $63fb: $82
    di                                            ; $63fc: $f3
    add sp, $69                                   ; $63fd: $e8 $69
    ld b, a                                       ; $63ff: $47
    rst $28                                       ; $6400: $ef
    adc d                                         ; $6401: $8a
    call nz, Call_04e_68d9                        ; $6402: $c4 $d9 $68
    rrca                                          ; $6405: $0f
    sbc h                                         ; $6406: $9c
    ld [hl], c                                    ; $6407: $71
    adc a                                         ; $6408: $8f
    add [hl]                                      ; $6409: $86
    ld [$e1e7], sp                                ; $640a: $08 $e7 $e1
    or e                                          ; $640d: $b3
    ld b, a                                       ; $640e: $47
    xor a                                         ; $640f: $af
    inc de                                        ; $6410: $13
    ld c, d                                       ; $6411: $4a
    jp $f477                                      ; $6412: $c3 $77 $f4


    nop                                           ; $6415: $00
    inc bc                                        ; $6416: $03
    jp nz, Jump_04e_6800                          ; $6417: $c2 $00 $68

    call c, $57a9                                 ; $641a: $dc $a9 $57
    ld a, d                                       ; $641d: $7a
    ld c, c                                       ; $641e: $49
    ld a, [hl+]                                   ; $641f: $2a
    cp d                                          ; $6420: $ba
    ld l, h                                       ; $6421: $6c
    inc l                                         ; $6422: $2c
    ld a, [hl]                                    ; $6423: $7e
    add sp, -$2f                                  ; $6424: $e8 $d1
    ld h, a                                       ; $6426: $67
    inc bc                                        ; $6427: $03
    ld h, a                                       ; $6428: $67
    call c, $21a3                                 ; $6429: $dc $a3 $21
    ld [bc], a                                    ; $642c: $02
    rrca                                          ; $642d: $0f

Jump_04e_642e:
    push de                                       ; $642e: $d5
    call $9b3a                                    ; $642f: $cd $3a $9b
    ld e, [hl]                                    ; $6432: $5e
    halt                                          ; $6433: $76
    ld [$b3d4], a                                 ; $6434: $ea $d4 $b3
    ret                                           ; $6437: $c9


    ld [de], a                                    ; $6438: $12
    cpl                                           ; $6439: $2f
    pop hl                                        ; $643a: $e1
    ld c, [hl]                                    ; $643b: $4e
    dec a                                         ; $643c: $3d
    ld a, [c]                                     ; $643d: $f2
    dec hl                                        ; $643e: $2b
    rst $20                                       ; $643f: $e7
    ld c, [hl]                                    ; $6440: $4e
    jr z, jr_04e_6450                             ; $6441: $28 $0d

    ld a, a                                       ; $6443: $7f
    or h                                          ; $6444: $b4
    dec a                                         ; $6445: $3d
    ld l, $b5                                     ; $6446: $2e $b5
    and e                                         ; $6448: $a3
    add a                                         ; $6449: $87
    ld [hl], a                                    ; $644a: $77
    ld [hl], b                                    ; $644b: $70
    ld b, c                                       ; $644c: $41
    db $fc                                        ; $644d: $fc
    ld l, h                                       ; $644e: $6c
    sbc c                                         ; $644f: $99

jr_04e_6450:
    rra                                           ; $6450: $1f
    or e                                          ; $6451: $b3
    call nc, $9f28                                ; $6452: $d4 $28 $9f
    dec a                                         ; $6455: $3d
    add $35                                       ; $6456: $c6 $35
    xor a                                         ; $6458: $af
    ld l, d                                       ; $6459: $6a
    or $2a                                        ; $645a: $f6 $2a
    adc b                                         ; $645c: $88
    nop                                           ; $645d: $00
    ld h, b                                       ; $645e: $60
    ld b, d                                       ; $645f: $42
    cp a                                          ; $6460: $bf
    rst $38                                       ; $6461: $ff
    rst $00                                       ; $6462: $c7
    ld [hl-], a                                   ; $6463: $32
    add hl, hl                                    ; $6464: $29
    ld e, e                                       ; $6465: $5b
    ld [hl], $96                                  ; $6466: $36 $96
    xor a                                         ; $6468: $af
    jp c, $c85d                                   ; $6469: $da $5d $c8

    call z, $a567                                 ; $646c: $cc $67 $a5
    ld c, b                                       ; $646f: $48
    dec l                                         ; $6470: $2d
    di                                            ; $6471: $f3
    ld a, e                                       ; $6472: $7b
    ld [hl+], a                                   ; $6473: $22
    add l                                         ; $6474: $85
    rst $00                                       ; $6475: $c7
    ld [hl-], a                                   ; $6476: $32
    cp c                                          ; $6477: $b9
    add hl, hl                                    ; $6478: $29
    ld d, d                                       ; $6479: $52
    ld [hl], $96                                  ; $647a: $36 $96
    ld hl, sp-$18                                 ; $647c: $f8 $e8
    ld d, l                                       ; $647e: $55
    db $e3                                        ; $647f: $e3
    ld c, [hl]                                    ; $6480: $4e
    cp l                                          ; $6481: $bd
    ld [hl], d                                    ; $6482: $72
    rst $18                                       ; $6483: $df
    rrca                                          ; $6484: $0f
    xor a                                         ; $6485: $af
    dec b                                         ; $6486: $05
    rst $20                                       ; $6487: $e7
    pop de                                        ; $6488: $d1
    cp e                                          ; $6489: $bb
    and d                                         ; $648a: $a2
    ld a, [hl-]                                   ; $648b: $3a
    db $ec                                        ; $648c: $ec
    dec c                                         ; $648d: $0d
    ret                                           ; $648e: $c9


    pop de                                        ; $648f: $d1
    di                                            ; $6490: $f3
    ei                                            ; $6491: $fb
    rst $38                                       ; $6492: $ff
    ld b, d                                       ; $6493: $42
    ld h, [hl]                                    ; $6494: $66
    sbc e                                         ; $6495: $9b
    sub l                                         ; $6496: $95
    ld [hl+], a                                   ; $6497: $22
    res 0, [hl]                                   ; $6498: $cb $86
    ld l, $93                                     ; $649a: $2e $93
    ld e, d                                       ; $649c: $5a
    jp c, $4d78                                   ; $649d: $da $78 $4d

    inc sp                                        ; $64a0: $33
    ld h, d                                       ; $64a1: $62
    jr z, @+$46                                   ; $64a2: $28 $44

    ldh [$ba], a                                  ; $64a4: $e0 $ba
    cp h                                          ; $64a6: $bc
    ld b, [hl]                                    ; $64a7: $46
    jp $a1ee                                      ; $64a8: $c3 $ee $a1


    ld d, h                                       ; $64ab: $54
    ld e, a                                       ; $64ac: $5f
    dec bc                                        ; $64ad: $0b
    rst $30                                       ; $64ae: $f7
    ld d, b                                       ; $64af: $50
    ld [hl-], a                                   ; $64b0: $32
    dec a                                         ; $64b1: $3d
    ld a, h                                       ; $64b2: $7c
    ld a, d                                       ; $64b3: $7a
    ret                                           ; $64b4: $c9


    cp a                                          ; $64b5: $bf
    jp z, $9bf5                                   ; $64b6: $ca $f5 $9b

    and a                                         ; $64b9: $a7
    sub a                                         ; $64ba: $97
    ld e, l                                       ; $64bb: $5d
    ld [hl], $74                                  ; $64bc: $36 $74
    rst $38                                       ; $64be: $ff
    ld a, [hl+]                                   ; $64bf: $2a
    dec d                                         ; $64c0: $15
    dec a                                         ; $64c1: $3d
    sub e                                         ; $64c2: $93
    jp nc, Jump_04e_4996                          ; $64c3: $d2 $96 $49

    rra                                           ; $64c6: $1f
    ld a, b                                       ; $64c7: $78
    dec [hl]                                      ; $64c8: $35
    ld b, h                                       ; $64c9: $44
    ld c, a                                       ; $64ca: $4f
    xor e                                         ; $64cb: $ab
    cp c                                          ; $64cc: $b9
    ld d, e                                       ; $64cd: $53
    adc a                                         ; $64ce: $8f
    jr jr_04e_651b                                ; $64cf: $18 $4a

    and e                                         ; $64d1: $a3
    ld h, a                                       ; $64d2: $67
    sub e                                         ; $64d3: $93
    dec h                                         ; $64d4: $25
    ld a, $ed                                     ; $64d5: $3e $ed
    ld a, [$b112]                                 ; $64d7: $fa $12 $b1
    pop de                                        ; $64da: $d1
    ei                                            ; $64db: $fb
    ld b, c                                       ; $64dc: $41
    db $fc                                        ; $64dd: $fc
    ld a, [de]                                    ; $64de: $1a
    ret                                           ; $64df: $c9


    ld a, [hl]                                    ; $64e0: $7e
    db $ed                                        ; $64e1: $ed
    reti                                          ; $64e2: $d9


    ld e, $aa                                     ; $64e3: $1e $aa
    sbc e                                         ; $64e5: $9b
    push af                                       ; $64e6: $f5
    ld [$e001], sp                                ; $64e7: $08 $01 $e0
    jp c, $9170                                   ; $64ea: $da $70 $91

    or e                                          ; $64ed: $b3
    jp hl                                         ; $64ee: $e9


    dec a                                         ; $64ef: $3d
    sub c                                         ; $64f0: $91
    jp nz, $9963                                  ; $64f1: $c2 $63 $99

    call c, $2914                                 ; $64f4: $dc $14 $29
    dec de                                        ; $64f7: $1b
    and e                                         ; $64f8: $a3
    ld d, a                                       ; $64f9: $57
    adc l                                         ; $64fa: $8d
    dec sp                                        ; $64fb: $3b
    push af                                       ; $64fc: $f5
    jp z, Jump_000_3f7d                           ; $64fd: $ca $7d $3f

    cp h                                          ; $6500: $bc
    ld d, $9c                                     ; $6501: $16 $9c

Jump_04e_6503:
    ld b, a                                       ; $6503: $47
    rst $08                                       ; $6504: $cf
    db $db                                        ; $6505: $db
    db $fc                                        ; $6506: $fc
    ld l, a                                       ; $6507: $6f
    sbc e                                         ; $6508: $9b
    sub l                                         ; $6509: $95
    ld [hl+], a                                   ; $650a: $22
    cpl                                           ; $650b: $2f
    rst $20                                       ; $650c: $e7
    dec hl                                        ; $650d: $2b
    xor d                                         ; $650e: $aa
    jp $90de                                      ; $650f: $c3 $de $90


    inc e                                         ; $6512: $1c
    db $fd                                        ; $6513: $fd
    cp $32                                        ; $6514: $fe $32
    xor c                                         ; $6516: $a9
    sbc a                                         ; $6517: $9f
    ld l, $a5                                     ; $6518: $2e $a5
    ld a, [c]                                     ; $651a: $f2

jr_04e_651b:
    ld c, c                                       ; $651b: $49
    add hl, de                                    ; $651c: $19
    add hl, sp                                    ; $651d: $39
    dec de                                        ; $651e: $1b
    sub c                                         ; $651f: $91
    ld a, [$ff3f]                                 ; $6520: $fa $3f $ff
    ld [de], a                                    ; $6523: $12
    sub l                                         ; $6524: $95
    inc sp                                        ; $6525: $33
    cp c                                          ; $6526: $b9
    ld [hl+], a                                   ; $6527: $22
    inc sp                                        ; $6528: $33
    add hl, hl                                    ; $6529: $29
    ld l, l                                       ; $652a: $6d
    and [hl]                                      ; $652b: $a6
    xor c                                         ; $652c: $a9
    rra                                           ; $652d: $1f
    ld h, d                                       ; $652e: $62
    and e                                         ; $652f: $a3
    ld hl, $2002                                  ; $6530: $21 $02 $20
    jp nc, $c4bf                                  ; $6533: $d2 $bf $c4

    adc [hl]                                      ; $6536: $8e
    sub h                                         ; $6537: $94
    adc h                                         ; $6538: $8c
    sub [hl]                                      ; $6539: $96
    ld c, h                                       ; $653a: $4c
    cp e                                          ; $653b: $bb
    xor $b5                                       ; $653c: $ee $b5
    call z, $ef8b                                 ; $653e: $cc $8b $ef
    ld l, $7f                                     ; $6541: $2e $7f
    db $e3                                        ; $6543: $e3
    sbc [hl]                                      ; $6544: $9e
    pop af                                        ; $6545: $f1
    ld l, d                                       ; $6546: $6a
    ld [de], a                                    ; $6547: $12
    ld [bc], a                                    ; $6548: $02
    rst $30                                       ; $6549: $f7
    db $ec                                        ; $654a: $ec
    adc b                                         ; $654b: $88
    call nc, $f9ff                                ; $654c: $d4 $ff $f9
    sub a                                         ; $654f: $97
    xor b                                         ; $6550: $a8
    sbc h                                         ; $6551: $9c
    ret                                           ; $6552: $c9


    dec d                                         ; $6553: $15
    ld e, c                                       ; $6554: $59
    ld h, $c9                                     ; $6555: $26 $c9
    rst $38                                       ; $6557: $ff
    ld sp, $bb1b                                  ; $6558: $31 $1b $bb
    ld [c], a                                     ; $655b: $e2
    ld sp, $d4ee                                  ; $655c: $31 $ee $d4
    ld a, [hl-]                                   ; $655f: $3a
    cpl                                           ; $6560: $2f
    dec [hl]                                      ; $6561: $35
    ld a, [de]                                    ; $6562: $1a
    call z, $ba19                                 ; $6563: $cc $19 $ba
    daa                                           ; $6566: $27
    ld d, d                                       ; $6567: $52
    ld a, b                                       ; $6568: $78
    ld c, h                                       ; $6569: $4c
    xor e                                         ; $656a: $ab
    sbc $bf                                       ; $656b: $de $bf
    ld e, $bb                                     ; $656d: $1e $bb
    set 2, a                                      ; $656f: $cb $d7
    ld a, l                                       ; $6571: $7d
    sbc l                                         ; $6572: $9d
    ret nc                                        ; $6573: $d0

    or e                                          ; $6574: $b3
    ld l, c                                       ; $6575: $69
    dec h                                         ; $6576: $25
    res 0, [hl]                                   ; $6577: $cb $86
    ld c, [hl]                                    ; $6579: $4e
    db $dd                                        ; $657a: $dd
    rst $38                                       ; $657b: $ff
    xor e                                         ; $657c: $ab
    ld h, a                                       ; $657d: $67
    sbc d                                         ; $657e: $9a
    ld d, [hl]                                    ; $657f: $56
    cpl                                           ; $6580: $2f
    di                                            ; $6581: $f3
    and e                                         ; $6582: $a3
    xor h                                         ; $6583: $ac
    inc d                                         ; $6584: $14
    add hl, bc                                    ; $6585: $09
    adc b                                         ; $6586: $88
    nop                                           ; $6587: $00
    rst $20                                       ; $6588: $e7
    ret                                           ; $6589: $c9


    or d                                          ; $658a: $b2
    sbc a                                         ; $658b: $9f
    ld a, d                                       ; $658c: $7a
    ld hl, $41fb                                  ; $658d: $21 $fb $41
    db $fc                                        ; $6590: $fc
    ld a, [de]                                    ; $6591: $1a
    ld h, c                                       ; $6592: $61
    cp a                                          ; $6593: $bf
    di                                            ; $6594: $f3
    ldh a, [$a5]                                  ; $6595: $f0 $a5
    rst $38                                       ; $6597: $ff
    db $dd                                        ; $6598: $dd
    ld e, e                                       ; $6599: $5b
    jp $21cd                                      ; $659a: $c3 $cd $21


    ld a, [hl+]                                   ; $659d: $2a
    xor a                                         ; $659e: $af
    ld [hl], h                                    ; $659f: $74
    db $db                                        ; $65a0: $db
    and l                                         ; $65a1: $a5
    add $9d                                       ; $65a2: $c6 $9d
    ld a, d                                       ; $65a4: $7a
    ret nz                                        ; $65a5: $c0

    sbc e                                         ; $65a6: $9b
    push bc                                       ; $65a7: $c5
    ld [hl], c                                    ; $65a8: $71
    ld d, a                                       ; $65a9: $57
    xor h                                         ; $65aa: $ac
    ld l, c                                       ; $65ab: $69
    or $08                                        ; $65ac: $f6 $08
    ld c, a                                       ; $65ae: $4f
    rrca                                          ; $65af: $0f
    pop af                                        ; $65b0: $f1
    jp c, $1ebf                                   ; $65b1: $da $bf $1e

    db $10                                        ; $65b4: $10
    jp nz, Jump_04e_5287                          ; $65b5: $c2 $87 $52

    ld a, l                                       ; $65b8: $7d
    db $ed                                        ; $65b9: $ed
    ld [hl], d                                    ; $65ba: $72
    xor l                                         ; $65bb: $ad
    call c, $95a7                                 ; $65bc: $dc $a7 $95
    ld c, h                                       ; $65bf: $4c
    dec hl                                        ; $65c0: $2b
    dec de                                        ; $65c1: $1b
    ld c, e                                       ; $65c2: $4b
    ld b, a                                       ; $65c3: $47
    add $3b                                       ; $65c4: $c6 $3b
    pop af                                        ; $65c6: $f1
    ld a, [c]                                     ; $65c7: $f2
    ld h, l                                       ; $65c8: $65
    ld d, d                                       ; $65c9: $52
    ccf                                           ; $65ca: $3f
    ld e, l                                       ; $65cb: $5d
    ld c, d                                       ; $65cc: $4a
    ld d, l                                       ; $65cd: $55
    ld c, a                                       ; $65ce: $4f
    dec sp                                        ; $65cf: $3b
    ld a, d                                       ; $65d0: $7a
    ld l, c                                       ; $65d1: $69
    db $d3                                        ; $65d2: $d3
    ld e, [hl]                                    ; $65d3: $5e
    db $ec                                        ; $65d4: $ec
    ld de, $e1e7                                  ; $65d5: $11 $e7 $e1
    db $d3                                        ; $65d8: $d3
    adc [hl]                                      ; $65d9: $8e
    sbc $d1                                       ; $65da: $de $d1
    ld c, e                                       ; $65dc: $4b
    cp h                                          ; $65dd: $bc
    ld h, h                                       ; $65de: $64
    xor [hl]                                      ; $65df: $ae
    rlca                                          ; $65e0: $07
    add hl, hl                                    ; $65e1: $29
    ld e, c                                       ; $65e2: $59
    ld h, $f5                                     ; $65e3: $26 $f5
    db $d3                                        ; $65e5: $d3
    and l                                         ; $65e6: $a5
    ld d, h                                       ; $65e7: $54
    ld a, $29                                     ; $65e8: $3e $29
    inc hl                                        ; $65ea: $23
    db $ec                                        ; $65eb: $ec
    ld de, $e1e7                                  ; $65ec: $11 $e7 $e1
    db $d3                                        ; $65ef: $d3
    adc [hl]                                      ; $65f0: $8e
    ld e, [hl]                                    ; $65f1: $5e
    adc [hl]                                      ; $65f2: $8e
    ld e, [hl]                                    ; $65f3: $5e
    ld [c], a                                     ; $65f4: $e2
    res 0, [hl]                                   ; $65f5: $cb $86
    xor $4a                                       ; $65f7: $ee $4a

Jump_04e_65f9:
    ld c, $e2                                     ; $65f9: $0e $e2
    ld sp, hl                                     ; $65fb: $f9
    and h                                         ; $65fc: $a4
    adc h                                         ; $65fd: $8c
    ld b, b                                       ; $65fe: $40
    ld [$a1b3], sp                                ; $65ff: $08 $b3 $a1
    db $e3                                        ; $6602: $e3
    sbc d                                         ; $6603: $9a
    sub a                                         ; $6604: $97
    add l                                         ; $6605: $85
    inc l                                         ; $6606: $2c
    sub e                                         ; $6607: $93
    ld a, [$52e9]                                 ; $6608: $fa $e9 $52
    ld a, [hl+]                                   ; $660b: $2a
    ret c                                         ; $660c: $d8

    inc hl                                        ; $660d: $23
    ld b, b                                       ; $660e: $40
    ld h, l                                       ; $660f: $65
    ld [hl], $fe                                  ; $6610: $36 $fe
    ld c, d                                       ; $6612: $4a
    sbc a                                         ; $6613: $9f
    dec c                                         ; $6614: $0d
    sbc c                                         ; $6615: $99
    halt                                          ; $6616: $76
    db $f4                                        ; $6617: $f4
    ld c, h                                       ; $6618: $4c
    db $d3                                        ; $6619: $d3
    sub b                                         ; $661a: $90
    push hl                                       ; $661b: $e5
    add sp, $11                                   ; $661c: $e8 $11
    inc hl                                        ; $661e: $23
    reti                                          ; $661f: $d9


    xor a                                         ; $6620: $af
    ld e, d                                       ; $6621: $5a
    ld [c], a                                     ; $6622: $e2
    db $10                                        ; $6623: $10
    ld b, d                                       ; $6624: $42
    inc b                                         ; $6625: $04
    rst $20                                       ; $6626: $e7
    pop hl                                        ; $6627: $e1
    db $d3                                        ; $6628: $d3
    adc [hl]                                      ; $6629: $8e
    sbc $d1                                       ; $662a: $de $d1
    db $eb                                        ; $662c: $eb
    ld c, e                                       ; $662d: $4b
    db $fc                                        ; $662e: $fc
    ld a, [hl+]                                   ; $662f: $2a
    sbc a                                         ; $6630: $9f
    ld l, c                                       ; $6631: $69
    sbc d                                         ; $6632: $9a
    ret                                           ; $6633: $c9


    dec d                                         ; $6634: $15
    add c                                         ; $6635: $81
    ld a, e                                       ; $6636: $7b
    ld a, d                                       ; $6637: $7a
    adc b                                         ; $6638: $88
    rst $10                                       ; $6639: $d7
    cp $f5                                        ; $663a: $fe $f5
    add b                                         ; $663c: $80
    db $10                                        ; $663d: $10

Jump_04e_663e:
    add [hl]                                      ; $663e: $86
    adc h                                         ; $663f: $8c
    ld c, b                                       ; $6640: $48
    db $fd                                        ; $6641: $fd
    sbc a                                         ; $6642: $9f
    ld a, a                                       ; $6643: $7f
    adc c                                         ; $6644: $89
    jp c, $63d1                                   ; $6645: $da $d1 $63

    ld h, $0b                                     ; $6648: $26 $0b
    sbc c                                         ; $664a: $99
    ld l, c                                       ; $664b: $69
    jp z, $011e                                   ; $664c: $ca $1e $01

    ld c, a                                       ; $664f: $4f
    set 5, [hl]                                   ; $6650: $cb $ee
    add sp, -$27                                  ; $6652: $e8 $d9
    ldh a, [$d9]                                  ; $6654: $f0 $d9
    and e                                         ; $6656: $a3
    ld b, a                                       ; $6657: $47
    db $e3                                        ; $6658: $e3
    rst $38                                       ; $6659: $ff
    sub d                                         ; $665a: $92
    xor c                                         ; $665b: $a9
    cp [hl]                                       ; $665c: $be
    ld a, b                                       ; $665d: $78
    ld c, b                                       ; $665e: $48
    sbc [hl]                                      ; $665f: $9e
    ld d, a                                       ; $6660: $57
    adc $d5                                       ; $6661: $ce $d5
    adc a                                         ; $6663: $8f
    db $10                                        ; $6664: $10
    rst $20                                       ; $6665: $e7
    pop hl                                        ; $6666: $e1
    db $d3                                        ; $6667: $d3
    adc [hl]                                      ; $6668: $8e
    ld e, $e5                                     ; $6669: $1e $e5
    or e                                          ; $666b: $b3
    rst $00                                       ; $666c: $c7
    db $f4                                        ; $666d: $f4
    ld [$699a], a                                 ; $666e: $ea $9a $69
    ld [$d887], a                                 ; $6671: $ea $87 $d8
    ld l, b                                       ; $6674: $68
    cp b                                          ; $6675: $b8
    dec a                                         ; $6676: $3d
    ld l, $35                                     ; $6677: $2e $35
    call Call_04e_78e0                            ; $6679: $cd $e0 $78
    push hl                                       ; $667c: $e5
    sub l                                         ; $667d: $95
    ei                                            ; $667e: $fb
    ld l, h                                       ; $667f: $6c
    ld hl, sp-$72                                 ; $6680: $f8 $8e
    ld e, [hl]                                    ; $6682: $5e
    rra                                           ; $6683: $1f
    xor $cb                                       ; $6684: $ee $cb
    and [hl]                                      ; $6686: $a6
    dec e                                         ; $6687: $1d
    ld [hl+], a                                   ; $6688: $22
    ld h, b                                       ; $6689: $60
    db $fd                                        ; $668a: $fd
    cp $df                                        ; $668b: $fe $df
    ld b, a                                       ; $668d: $47
    adc d                                         ; $668e: $8a
    db $fc                                        ; $668f: $fc
    xor e                                         ; $6690: $ab
    inc e                                         ; $6691: $1c
    ld l, [hl]                                    ; $6692: $6e
    ld b, b                                       ; $6693: $40
    db $dd                                        ; $6694: $dd
    add a                                         ; $6695: $87
    sbc e                                         ; $6696: $9b
    ld b, e                                       ; $6697: $43
    ld d, h                                       ; $6698: $54
    ld e, [hl]                                    ; $6699: $5e
    jp hl                                         ; $669a: $e9


    or [hl]                                       ; $669b: $b6
    ld c, e                                       ; $669c: $4b
    pop bc                                        ; $669d: $c1
    db $ed                                        ; $669e: $ed
    inc a                                         ; $669f: $3c
    ld a, h                                       ; $66a0: $7c
    ld a, d                                       ; $66a1: $7a
    inc [hl]                                      ; $66a2: $34
    xor c                                         ; $66a3: $a9
    ld e, [hl]                                    ; $66a4: $5e
    ld [hl], $74                                  ; $66a5: $36 $74

Jump_04e_66a7:
    add [hl]                                      ; $66a7: $86
    ld l, $1d                                     ; $66a8: $2e $1d
    ld a, l                                       ; $66aa: $7d
    and d                                         ; $66ab: $a2
    inc [hl]                                      ; $66ac: $34
    ld a, [hl]                                    ; $66ad: $7e
    adc [hl]                                      ; $66ae: $8e
    ld e, l                                       ; $66af: $5d
    pop af                                        ; $66b0: $f1
    ret c                                         ; $66b1: $d8

    pop de                                        ; $66b2: $d1
    xor e                                         ; $66b3: $ab
    rst $38                                       ; $66b4: $ff
    dec e                                         ; $66b5: $1d
    ld l, [hl]                                    ; $66b6: $6e
    ret nz                                        ; $66b7: $c0

    ld c, h                                       ; $66b8: $4c
    ld a, e                                       ; $66b9: $7b
    ld a, $dc                                     ; $66ba: $3e $dc
    rst $30                                       ; $66bc: $f7
    jp $220b                                      ; $66bd: $c3 $0b $22


    ld h, b                                       ; $66c0: $60
    cp c                                          ; $66c1: $b9
    db $e4                                        ; $66c2: $e4
    rst $38                                       ; $66c3: $ff
    db $ec                                        ; $66c4: $ec
    add a                                         ; $66c5: $87
    ret c                                         ; $66c6: $d8

    xor e                                         ; $66c7: $ab
    inc e                                         ; $66c8: $1c
    ld l, [hl]                                    ; $66c9: $6e
    ld b, b                                       ; $66ca: $40
    db $dd                                        ; $66cb: $dd
    add a                                         ; $66cc: $87
    sbc e                                         ; $66cd: $9b
    ld b, e                                       ; $66ce: $43
    ld d, h                                       ; $66cf: $54
    ld e, [hl]                                    ; $66d0: $5e
    jp hl                                         ; $66d1: $e9


    or [hl]                                       ; $66d2: $b6
    ld c, e                                       ; $66d3: $4b
    pop bc                                        ; $66d4: $c1
    db $ed                                        ; $66d5: $ed
    inc a                                         ; $66d6: $3c
    ld e, c                                       ; $66d7: $59
    sub $2f                                       ; $66d8: $d6 $2f
    adc c                                         ; $66da: $89
    sbc [hl]                                      ; $66db: $9e

jr_04e_66dc:
    cp l                                          ; $66dc: $bd
    ld [hl-], a                                   ; $66dd: $32
    db $fd                                        ; $66de: $fd
    sub b                                         ; $66df: $90
    pop de                                        ; $66e0: $d1
    ld e, $28                                     ; $66e1: $1e $28
    inc hl                                        ; $66e3: $23
    ld a, [hl+]                                   ; $66e4: $2a
    ld l, l                                       ; $66e5: $6d
    call c, $850d                                 ; $66e6: $dc $0d $85
    ld [$4ec0], sp                                ; $66e9: $08 $c0 $4e
    dec a                                         ; $66ec: $3d
    adc [hl]                                      ; $66ed: $8e
    rst $18                                       ; $66ee: $df
    dec d                                         ; $66ef: $15
    push de                                       ; $66f0: $d5
    ld h, c                                       ; $66f1: $61
    ld l, a                                       ; $66f2: $6f
    ld c, b                                       ; $66f3: $48
    adc [hl]                                      ; $66f4: $8e
    ld a, $1b                                     ; $66f5: $3e $1b
    jr c, jr_04e_66dc                             ; $66f7: $38 $e3

    ld e, $0d                                     ; $66f9: $1e $0d
    or a                                          ; $66fb: $b7
    ld h, a                                       ; $66fc: $67
    dec a                                         ; $66fd: $3d
    ld e, d                                       ; $66fe: $5a
    pop af                                        ; $66ff: $f1
    di                                            ; $6700: $f3
    ei                                            ; $6701: $fb
    rst $38                                       ; $6702: $ff
    ld a, [hl]                                    ; $6703: $7e
    ld a, b                                       ; $6704: $78
    adc c                                         ; $6705: $89
    dec c                                         ; $6706: $0d
    add a                                         ; $6707: $87
    ld [$57e7], sp                                ; $6708: $08 $e7 $57
    and [hl]                                      ; $670b: $a6
    rra                                           ; $670c: $1f
    ld [hl-], a                                   ; $670d: $32
    sub d                                         ; $670e: $92
    adc b                                         ; $670f: $88
    adc l                                         ; $6710: $8d
    ld e, l                                       ; $6711: $5d
    pop af                                        ; $6712: $f1
    sbc b                                         ; $6713: $98
    ld a, [hl]                                    ; $6714: $7e
    adc b                                         ; $6715: $88
    rst $10                                       ; $6716: $d7
    ld c, h                                       ; $6717: $4c
    ld c, d                                       ; $6718: $4a
    sbc e                                         ; $6719: $9b
    ld e, [hl]                                    ; $671a: $5e
    dec a                                         ; $671b: $3d
    rst $10                                       ; $671c: $d7
    inc de                                        ; $671d: $13
    ld d, c                                       ; $671e: $51
    ld hl, $f72b                                  ; $671f: $21 $2b $f7
    add hl, hl                                    ; $6722: $29
    ld a, [hl]                                    ; $6723: $7e
    ld a, [hl]                                    ; $6724: $7e
    rst $38                                       ; $6725: $ff
    ld e, a                                       ; $6726: $5f
    ld h, [hl]                                    ; $6727: $66
    ld h, $44                                     ; $6728: $26 $44
    ld c, e                                       ; $672a: $4b
    ld [hl-], a                                   ; $672b: $32
    rst $30                                       ; $672c: $f7
    ld e, c                                       ; $672d: $59
    ld a, [hl+]                                   ; $672e: $2a
    cp [hl]                                       ; $672f: $be
    ret nz                                        ; $6730: $c0

    dec c                                         ; $6731: $0d
    inc [hl]                                      ; $6732: $34
    dec hl                                        ; $6733: $2b
    ld b, l                                       ; $6734: $45
    jp nz, $f967                                  ; $6735: $c2 $67 $f9

    ld a, a                                       ; $6738: $7f
    sub l                                         ; $6739: $95
    sbc a                                         ; $673a: $9f
    adc l                                         ; $673b: $8d
    or $c0                                        ; $673c: $f6 $c0
    add hl, de                                    ; $673e: $19
    rst $30                                       ; $673f: $f7
    ld l, b                                       ; $6740: $68
    cp b                                          ; $6741: $b8
    cp l                                          ; $6742: $bd
    dec [hl]                                      ; $6743: $35
    call c, $a21c                                 ; $6744: $dc $1c $a2
    ld a, [c]                                     ; $6747: $f2
    ld c, d                                       ; $6748: $4a
    or a                                          ; $6749: $b7
    ld e, l                                       ; $674a: $5d
    ld l, d                                       ; $674b: $6a
    call c, Call_000_07a9                         ; $674c: $dc $a9 $07
    cp h                                          ; $674f: $bc
    ld e, c                                       ; $6750: $59
    inc e                                         ; $6751: $1c
    ld [hl], a                                    ; $6752: $77
    push bc                                       ; $6753: $c5
    sbc d                                         ; $6754: $9a
    add [hl]                                      ; $6755: $86
    db $db                                        ; $6756: $db
    sub e                                         ; $6757: $93
    sbc a                                         ; $6758: $9f
    ld hl, sp-$48                                 ; $6759: $f8 $b8
    ld d, e                                       ; $675b: $53
    rst $28                                       ; $675c: $ef
    adc $96                                       ; $675d: $ce $96
    add d                                         ; $675f: $82
    ld [$784f], sp                                ; $6760: $08 $4f $78
    ld a, e                                       ; $6763: $7b
    db $f4                                        ; $6764: $f4
    reti                                          ; $6765: $d9


    sbc b                                         ; $6766: $98
    and l                                         ; $6767: $a5
    halt                                          ; $6768: $76
    db $f4                                        ; $6769: $f4
    ret z                                         ; $676a: $c8

    xor a                                         ; $676b: $af
    add [hl]                                      ; $676c: $86
    dec de                                        ; $676d: $1b
    sbc b                                         ; $676e: $98
    ld h, h                                       ; $676f: $64
    sbc c                                         ; $6770: $99
    inc h                                         ; $6771: $24
    rst $38                                       ; $6772: $ff
    rst $00                                       ; $6773: $c7
    sbc b                                         ; $6774: $98
    and l                                         ; $6775: $a5
    and [hl]                                      ; $6776: $a6
    rst $18                                       ; $6777: $df
    rst $08                                       ; $6778: $cf
    xor h                                         ; $6779: $ac
    push hl                                       ; $677a: $e5
    ret c                                         ; $677b: $d8

    inc de                                        ; $677c: $13
    add hl, hl                                    ; $677d: $29
    inc a                                         ; $677e: $3c
    and [hl]                                      ; $677f: $a6
    ld h, d                                       ; $6780: $62
    db $f4                                        ; $6781: $f4
    xor d                                         ; $6782: $aa
    add l                                         ; $6783: $85
    ei                                            ; $6784: $fb
    ld c, d                                       ; $6785: $4a
    or a                                          ; $6786: $b7
    ld e, l                                       ; $6787: $5d
    adc d                                         ; $6788: $8a
    dec a                                         ; $6789: $3d
    ld [bc], a                                    ; $678a: $02
    ld c, a                                       ; $678b: $4f
    add d                                         ; $678c: $82
    pop af                                        ; $678d: $f1
    ld [hl], b                                    ; $678e: $70
    ld [hl], e                                    ; $678f: $73
    adc b                                         ; $6790: $88
    ld a, [de]                                    ; $6791: $1a
    ld [hl], a                                    ; $6792: $77
    ld [$fb95], a                                 ; $6793: $ea $95 $fb
    ld l, h                                       ; $6796: $6c
    ld [hl-], a                                   ; $6797: $32
    db $ed                                        ; $6798: $ed
    cp d                                          ; $6799: $ba
    sub a                                         ; $679a: $97
    adc l                                         ; $679b: $8d
    ld e, l                                       ; $679c: $5d
    ld d, c                                       ; $679d: $51
    dec e                                         ; $679e: $1d
    or $86                                        ; $679f: $f6 $86
    db $e4                                        ; $67a1: $e4
    ld l, b                                       ; $67a2: $68
    xor c                                         ; $67a3: $a9
    or e                                          ; $67a4: $b3
    pop de                                        ; $67a5: $d1
    sub b                                         ; $67a6: $90
    ld sp, $cd4b                                  ; $67a7: $31 $4b $cd
    halt                                          ; $67aa: $76
    push af                                       ; $67ab: $f5
    ld c, d                                       ; $67ac: $4a
    ld e, a                                       ; $67ad: $5f
    cp b                                          ; $67ae: $b8
    rrca                                          ; $67af: $0f
    scf                                           ; $67b0: $37
    add a                                         ; $67b1: $87
    xor b                                         ; $67b2: $a8
    ld [hl], c                                    ; $67b3: $71
    and a                                         ; $67b4: $a7
    ld e, [hl]                                    ; $67b5: $5e
    cp c                                          ; $67b6: $b9
    rst $08                                       ; $67b7: $cf
    add [hl]                                      ; $67b8: $86
    rst $08                                       ; $67b9: $cf
    adc l                                         ; $67ba: $8d
    ld e, d                                       ; $67bb: $5a
    and $f7                                       ; $67bc: $e6 $f7
    ld a, c                                       ; $67be: $79
    ld d, c                                       ; $67bf: $51
    di                                            ; $67c0: $f3
    ld l, e                                       ; $67c1: $6b
    pop hl                                        ; $67c2: $e1
    or $84                                        ; $67c3: $f6 $84
    or b                                          ; $67c5: $b0
    call nz, $ecd6                                ; $67c6: $c4 $d6 $ec
    ld d, l                                       ; $67c9: $55

jr_04e_67ca:
    di                                            ; $67ca: $f3
    ei                                            ; $67cb: $fb
    rst $38                                       ; $67cc: $ff
    db $e4                                        ; $67cd: $e4
    ret z                                         ; $67ce: $c8

    ld e, [hl]                                    ; $67cf: $5e
    ei                                            ; $67d0: $fb

Jump_04e_67d1:
    ld b, c                                       ; $67d1: $41
    db $fc                                        ; $67d2: $fc
    ld a, [de]                                    ; $67d3: $1a
    sbc c                                         ; $67d4: $99
    inc h                                         ; $67d5: $24
    db $10                                        ; $67d6: $10
    ld b, d                                       ; $67d7: $42
    ld b, e                                       ; $67d8: $43
    ld h, a                                       ; $67d9: $67
    sub e                                         ; $67da: $93
    ld e, l                                       ; $67db: $5d
    pop af                                        ; $67dc: $f1
    sbc b                                         ; $67dd: $98
    ld a, [hl]                                    ; $67de: $7e
    rst $38                                       ; $67df: $ff
    rra                                           ; $67e0: $1f
    ld [hl], a                                    ; $67e1: $77
    ld [$ba6f], a                                 ; $67e2: $ea $6f $ba
    add $fd                                       ; $67e5: $c6 $fd
    add sp, -$1f                                  ; $67e7: $e8 $e1
    and $10                                       ; $67e9: $e6 $10
    dec b                                         ; $67eb: $05
    ld de, $fe4f                                  ; $67ec: $11 $4f $fe
    ld hl, $e16a                                  ; $67ef: $21 $6a $e1
    cp [hl]                                       ; $67f2: $be
    sub e                                         ; $67f3: $93
    xor d                                         ; $67f4: $aa
    pop hl                                        ; $67f5: $e1
    db $fc                                        ; $67f6: $fc
    db $f4                                        ; $67f7: $f4
    ld l, e                                       ; $67f8: $6b
    inc de                                        ; $67f9: $13
    or c                                          ; $67fa: $b1
    dec e                                         ; $67fb: $1d
    or d                                          ; $67fc: $b2
    cp e                                          ; $67fd: $bb
    db $10                                        ; $67fe: $10
    rst $28                                       ; $67ff: $ef

Jump_04e_6800:
    ld h, a                                       ; $6800: $67
    or h                                          ; $6801: $b4
    ld a, [$043f]                                 ; $6802: $fa $3f $04
    ld c, $0c                                     ; $6805: $0e $0c
    xor a                                         ; $6807: $af
    adc h                                         ; $6808: $8c
    xor h                                         ; $6809: $ac
    ld b, h                                       ; $680a: $44
    ld c, d                                       ; $680b: $4a
    and [hl]                                      ; $680c: $a6
    ld d, l                                       ; $680d: $55
    rst $08                                       ; $680e: $cf
    and h                                         ; $680f: $a4
    ld c, b                                       ; $6810: $48
    and $a7                                       ; $6811: $e6 $a7
    sbc b                                         ; $6813: $98
    and [hl]                                      ; $6814: $a6
    ld a, l                                       ; $6815: $7d
    ld [hl], $1c                                  ; $6816: $36 $1c
    ld [hl+], a                                   ; $6818: $22
    jr jr_04e_67ca                                ; $6819: $18 $af

    ld a, e                                       ; $681b: $7b
    db $ed                                        ; $681c: $ed
    ld c, [hl]                                    ; $681d: $4e
    adc [hl]                                      ; $681e: $8e
    sub $c2                                       ; $681f: $d6 $c2
    ld b, e                                       ; $6821: $43
    ld d, [hl]                                    ; $6822: $56
    ld a, [$4a1e]                                 ; $6823: $fa $1e $4a
    push af                                       ; $6826: $f5
    or l                                          ; $6827: $b5
    ld a, c                                       ; $6828: $79
    reti                                          ; $6829: $d9


    inc de                                        ; $682a: $13
    ld d, l                                       ; $682b: $55
    ld [hl], b                                    ; $682c: $70
    adc a                                         ; $682d: $8f
    ld c, e                                       ; $682e: $4b
    ld c, l                                       ; $682f: $4d
    xor e                                         ; $6830: $ab
    sbc [hl]                                      ; $6831: $9e
    halt                                          ; $6832: $76
    db $dd                                        ; $6833: $dd
    bit 6, a                                      ; $6834: $cb $77
    ld b, l                                       ; $6836: $45
    ld [hl], l                                    ; $6837: $75
    ret c                                         ; $6838: $d8

    dec de                                        ; $6839: $1b
    sub d                                         ; $683a: $92
    and e                                         ; $683b: $a3
    ld [hl], a                                    ; $683c: $77
    and a                                         ; $683d: $a7
    sub l                                         ; $683e: $95
    db $e4                                        ; $683f: $e4
    ld a, c                                       ; $6840: $79
    rra                                           ; $6841: $1f
    ld d, [hl]                                    ; $6842: $56
    pop af                                        ; $6843: $f1
    ld l, l                                       ; $6844: $6d
    rst $00                                       ; $6845: $c7
    sbc l                                         ; $6846: $9d
    ld a, [hl-]                                   ; $6847: $3a
    ld [hl], c                                    ; $6848: $71
    adc b                                         ; $6849: $88
    nop                                           ; $684a: $00
    adc a                                         ; $684b: $8f
    ld c, e                                       ; $684c: $4b
    call Call_000_2959                            ; $684d: $cd $59 $29
    ld [c], a                                     ; $6850: $e2
    or c                                          ; $6851: $b1
    ld [hl], d                                    ; $6852: $72
    rra                                           ; $6853: $1f
    or e                                          ; $6854: $b3
    call nc, $af32                                ; $6855: $d4 $32 $af
    ld h, $bc                                     ; $6858: $26 $bc
    ld [$ce1a], a                                 ; $685a: $ea $1a $ce
    rst $08                                       ; $685d: $cf
    add $4e                                       ; $685e: $c6 $4e
    dec l                                         ; $6860: $2d
    jp c, $b749                                   ; $6861: $da $49 $b7

    ld h, l                                       ; $6864: $65
    ld h, e                                       ; $6865: $63
    ccf                                           ; $6866: $3f
    sbc b                                         ; $6867: $98
    ld b, [hl]                                    ; $6868: $46
    ldh a, [$66]                                  ; $6869: $f0 $66
    db $fd                                        ; $686b: $fd
    ld l, d                                       ; $686c: $6a
    xor c                                         ; $686d: $a9
    pop hl                                        ; $686e: $e1
    db $fc                                        ; $686f: $fc
    ld c, d                                       ; $6870: $4a
    ld l, h                                       ; $6871: $6c
    rst $10                                       ; $6872: $d7
    ld [hl], h                                    ; $6873: $74
    ld e, [hl]                                    ; $6874: $5e
    xor [hl]                                      ; $6875: $ae
    xor b                                         ; $6876: $a8
    db $10                                        ; $6877: $10
    adc b                                         ; $6878: $88
    nop                                           ; $6879: $00
    rst $20                                       ; $687a: $e7
    pop hl                                        ; $687b: $e1
    db $e3                                        ; $687c: $e3
    xor [hl]                                      ; $687d: $ae
    ld c, b                                       ; $687e: $48
    sbc [hl]                                      ; $687f: $9e
    ld e, [hl]                                    ; $6880: $5e
    ld a, [c]                                     ; $6881: $f2
    xor a                                         ; $6882: $af
    ld [hl], d                                    ; $6883: $72
    db $fd                                        ; $6884: $fd
    and $5d                                       ; $6885: $e6 $5d
    ld d, c                                       ; $6887: $51
    dec e                                         ; $6888: $1d
    or $86                                        ; $6889: $f6 $86
    db $e4                                        ; $688b: $e4
    add sp, -$23                                  ; $688c: $e8 $dd
    dec a                                         ; $688e: $3d
    sub c                                         ; $688f: $91
    jp nz, $af23                                  ; $6890: $c2 $23 $af

    inc de                                        ; $6893: $13
    ld a, [bc]                                    ; $6894: $0a
    ld [hl], a                                    ; $6895: $77
    ld e, $23                                     ; $6896: $1e $23
    dec h                                         ; $6898: $25
    db $e3                                        ; $6899: $e3
    xor [hl]                                      ; $689a: $ae
    ld c, b                                       ; $689b: $48
    push hl                                       ; $689c: $e5
    jp hl                                         ; $689d: $e9


    push de                                       ; $689e: $d5
    res 0, [hl]                                   ; $689f: $cb $86
    ld c, [hl]                                    ; $68a1: $4e
    adc e                                         ; $68a2: $8b
    sbc a                                         ; $68a3: $9f
    db $fd                                        ; $68a4: $fd
    ld l, h                                       ; $68a5: $6c
    ld a, [hl]                                    ; $68a6: $7e
    rst $38                                       ; $68a7: $ff
    sbc a                                         ; $68a8: $9f
    ld c, c                                       ; $68a9: $49
    ld l, c                                       ; $68aa: $69
    and e                                         ; $68ab: $a3
    ld h, c                                       ; $68ac: $61
    add a                                         ; $68ad: $87
    di                                            ; $68ae: $f3
    db $d3                                        ; $68af: $d3
    rrca                                          ; $68b0: $0f
    and l                                         ; $68b1: $a5
    xor d                                         ; $68b2: $aa
    and l                                         ; $68b3: $a5
    jr nz, jr_04e_68b8                            ; $68b4: $20 $02

    rrca                                          ; $68b6: $0f
    push de                                       ; $68b7: $d5

jr_04e_68b8:
    or e                                          ; $68b8: $b3
    ret                                           ; $68b9: $c9


    ld [hl], d                                    ; $68ba: $72
    cp b                                          ; $68bb: $b8
    rst $08                                       ; $68bc: $cf
    rst $28                                       ; $68bd: $ef
    rst $38                                       ; $68be: $ff
    inc de                                        ; $68bf: $13
    ld e, [hl]                                    ; $68c0: $5e
    ld [hl], l                                    ; $68c1: $75
    call $fcdb                                    ; $68c2: $cd $db $fc
    ld l, a                                       ; $68c5: $6f
    sbc e                                         ; $68c6: $9b
    sub l                                         ; $68c7: $95
    ld [hl+], a                                   ; $68c8: $22
    ld sp, hl                                     ; $68c9: $f9
    push hl                                       ; $68ca: $e5
    dec hl                                        ; $68cb: $2b
    xor d                                         ; $68cc: $aa
    jp $90de                                      ; $68cd: $c3 $de $90


    inc e                                         ; $68d0: $1c
    dec a                                         ; $68d1: $3d
    db $ed                                        ; $68d2: $ed
    add sp, $19                                   ; $68d3: $e8 $19
    ld c, d                                       ; $68d5: $4a
    ld a, [$7a8a]                                 ; $68d6: $fa $8a $7a

Call_04e_68d9:
    add h                                         ; $68d9: $84
    nop                                           ; $68da: $00
    jr nz, jr_04e_6921                            ; $68db: $20 $44

    add l                                         ; $68dd: $85
    call z, $fcdb                                 ; $68de: $cc $db $fc
    ld l, a                                       ; $68e1: $6f
    sbc e                                         ; $68e2: $9b
    sub l                                         ; $68e3: $95
    ld [hl+], a                                   ; $68e4: $22
    inc hl                                        ; $68e5: $23
    dec h                                         ; $68e6: $25
    ld c, e                                       ; $68e7: $4b
    dec de                                        ; $68e8: $1b
    xor a                                         ; $68e9: $af
    reti                                          ; $68ea: $d9


    xor e                                         ; $68eb: $ab
    adc $06                                       ; $68ec: $ce $06
    adc $b8                                       ; $68ee: $ce $b8
    ld b, a                                       ; $68f0: $47
    ld b, e                                       ; $68f1: $43
    inc b                                         ; $68f2: $04
    add b                                         ; $68f3: $80
    adc b                                         ; $68f4: $88
    rst $10                                       ; $68f5: $d7
    ld [hl-], a                                   ; $68f6: $32
    ccf                                           ; $68f7: $3f
    sbc e                                         ; $68f8: $9b
    db $ec                                        ; $68f9: $ec
    adc d                                         ; $68fa: $8a
    rst $00                                       ; $68fb: $c7
    sbc [hl]                                      ; $68fc: $9e
    rst $28                                       ; $68fd: $ef
    and d                                         ; $68fe: $a2
    cp a                                          ; $68ff: $bf
    ld a, [$ddf9]                                 ; $6900: $fa $f9 $dd
    add l                                         ; $6903: $85
    adc h                                         ; $6904: $8c
    ld e, h                                       ; $6905: $5c
    rst $30                                       ; $6906: $f7
    ld hl, sp+$67                                 ; $6907: $f8 $67
    inc bc                                        ; $6909: $03
    ld h, a                                       ; $690a: $67
    call c, $21a3                                 ; $690b: $dc $a3 $21
    ld [bc], a                                    ; $690e: $02
    rst $20                                       ; $690f: $e7
    pop hl                                        ; $6910: $e1
    res 0, a                                      ; $6911: $cb $87
    jp z, $f72b                                   ; $6913: $ca $2b $f7

    dec a                                         ; $6916: $3d
    sub c                                         ; $6917: $91
    jp nz, Jump_04e_5763                          ; $6918: $c2 $63 $57

    inc a                                         ; $691b: $3c
    and [hl]                                      ; $691c: $a6
    xor $ff                                       ; $691d: $ee $ff
    push de                                       ; $691f: $d5
    inc de                                        ; $6920: $13

jr_04e_6921:
    ld e, [hl]                                    ; $6921: $5e
    ld [hl], l                                    ; $6922: $75
    xor l                                         ; $6923: $ad
    call nz, $ed76                                ; $6924: $c4 $76 $ed
    sub b                                         ; $6927: $90
    dec a                                         ; $6928: $3d
    ld sp, hl                                     ; $6929: $f9
    inc l                                         ; $692a: $2c
    rst $10                                       ; $692b: $d7
    and d                                         ; $692c: $a2
    xor a                                         ; $692d: $af
    call nz, Call_000_3d0f                        ; $692e: $c4 $0f $3d
    ld a, [$c16c]                                 ; $6931: $fa $6c $c1
    ld a, c                                       ; $6934: $79
    ld [hl], h                                    ; $6935: $74
    ld [hl], $74                                  ; $6936: $36 $74
    ld e, d                                       ; $6938: $5a
    ret                                           ; $6939: $c9


    adc [hl]                                      ; $693a: $8e
    sbc [hl]                                      ; $693b: $9e
    adc l                                         ; $693c: $8d
    xor [hl]                                      ; $693d: $ae
    inc a                                         ; $693e: $3c
    xor $d4                                       ; $693f: $ee $d4
    sub c                                         ; $6941: $91
    sbc l                                         ; $6942: $9d
    rla                                           ; $6943: $17
    ld e, e                                       ; $6944: $5b
    dec e                                         ; $6945: $1d
    db $10                                        ; $6946: $10
    ld bc, $a44f                                  ; $6947: $01 $4f $a4
    ldh a, [$98]                                  ; $694a: $f0 $98
    adc d                                         ; $694c: $8a

Call_04e_694d:
    ld e, $bd                                     ; $694d: $1e $bd
    ld l, d                                       ; $694f: $6a
    and h                                         ; $6950: $a4
    cp $af                                        ; $6951: $fe $af
    ld de, $abbe                                  ; $6953: $11 $be $ab
    ld hl, $8f02                                  ; $6956: $21 $02 $8f
    ld c, e                                       ; $6959: $4b
    dec l                                         ; $695a: $2d
    sub e                                         ; $695b: $93
    db $e4                                        ; $695c: $e4
    rst $38                                       ; $695d: $ff
    sbc b                                         ; $695e: $98
    ld a, [hl]                                    ; $695f: $7e
    ccf                                           ; $6960: $3f
    or e                                          ; $6961: $b3
    or $8f                                        ; $6962: $f6 $8f
    xor [hl]                                      ; $6964: $ae
    pop de                                        ; $6965: $d1
    xor e                                         ; $6966: $ab
    ld d, [hl]                                    ; $6967: $56
    xor $53                                       ; $6968: $ee $53
    and a                                         ; $696a: $a7
    xor [hl]                                      ; $696b: $ae
    db $fd                                        ; $696c: $fd
    inc hl                                        ; $696d: $23
    inc de                                        ; $696e: $13
    adc b                                         ; $696f: $88
    nop                                           ; $6970: $00
    rst $20                                       ; $6971: $e7
    pop hl                                        ; $6972: $e1
    ei                                            ; $6973: $fb
    add hl, bc                                    ; $6974: $09
    pop af                                        ; $6975: $f1
    ld [$e275], a                                 ; $6976: $ea $75 $e2
    ld l, $b5                                     ; $6979: $2e $b5
    ld b, e                                       ; $697b: $43
    xor c                                         ; $697c: $a9
    ld l, c                                       ; $697d: $69
    ld b, a                                       ; $697e: $47
    rst $28                                       ; $697f: $ef
    adc d                                         ; $6980: $8a
    inc b                                         ; $6981: $04
    ld b, h                                       ; $6982: $44
    and b                                         ; $6983: $a0
    xor a                                         ; $6984: $af
    inc l                                         ; $6985: $2c
    db $dd                                        ; $6986: $dd
    and [hl]                                      ; $6987: $a6

Call_04e_6988:
    sub a                                         ; $6988: $97
    adc [hl]                                      ; $6989: $8e
    ld a, $dc                                     ; $698a: $3e $dc
    set 0, [hl]                                   ; $698c: $cb $c6
    jp z, $867d                                   ; $698e: $ca $7d $86

    adc [hl]                                      ; $6991: $8e
    ld e, c                                       ; $6992: $59
    ld l, d                                       ; $6993: $6a
    sbc c                                         ; $6994: $99
    inc d                                         ; $6995: $14
    xor c                                         ; $6996: $a9
    ld e, [hl]                                    ; $6997: $5e
    ret z                                         ; $6998: $c8

    cp b                                          ; $6999: $b8
    db $e4                                        ; $699a: $e4
    rst $38                                       ; $699b: $ff
    ld a, c                                       ; $699c: $79
    sbc e                                         ; $699d: $9b
    rst $38                                       ; $699e: $ff
    ld l, l                                       ; $699f: $6d
    or e                                          ; $69a0: $b3
    ld d, d                                       ; $69a1: $52
    inc h                                         ; $69a2: $24
    ld [hl], e                                    ; $69a3: $73
    cp a                                          ; $69a4: $bf
    ld [hl-], a                                   ; $69a5: $32
    xor c                                         ; $69a6: $a9
    ld h, l                                       ; $69a7: $65
    ld a, [hl]                                    ; $69a8: $7e
    jp c, Jump_000_3621                           ; $69a9: $da $21 $36

    ld a, d                                       ; $69ac: $7a
    ld [hl], $7c                                  ; $69ad: $36 $7c
    jp nz, $48fb                                  ; $69af: $c2 $fb $48

    ld a, [c]                                     ; $69b2: $f2
    ld hl, $8f02                                  ; $69b3: $21 $02 $8f
    ld c, e                                       ; $69b6: $4b
    ld c, l                                       ; $69b7: $4d
    cp a                                          ; $69b8: $bf
    rst $38                                       ; $69b9: $ff
    rst $28                                       ; $69ba: $ef
    rra                                           ; $69bb: $1f
    ld e, l                                       ; $69bc: $5d
    and e                                         ; $69bd: $a3
    ld d, a                                       ; $69be: $57
    ld c, l                                       ; $69bf: $4d
    ld c, e                                       ; $69c0: $4b
    ld a, d                                       ; $69c1: $7a
    or h                                          ; $69c2: $b4
    ld h, h                                       ; $69c3: $64
    ld [$0bd4], a                                 ; $69c4: $ea $d4 $0b
    sbc c                                         ; $69c7: $99
    ld d, $bf                                     ; $69c8: $16 $bf
    call nz, Call_04e_6cc6                        ; $69ca: $c4 $c6 $6c
    or e                                          ; $69cd: $b3
    ld d, d                                       ; $69ce: $52
    ld h, h                                       ; $69cf: $64
    pop bc                                        ; $69d0: $c1
    ld a, c                                       ; $69d1: $79
    ld [hl], h                                    ; $69d2: $74
    ld [hl], $74                                  ; $69d3: $36 $74
    ld c, a                                       ; $69d5: $4f
    ld a, $cb                                     ; $69d6: $3e $cb
    or l                                          ; $69d8: $b5
    add sp, $2b                                   ; $69d9: $e8 $2b
    pop af                                        ; $69db: $f1
    ld b, e                                       ; $69dc: $43
    adc a                                         ; $69dd: $8f
    sub [hl]                                      ; $69de: $96
    ld e, d                                       ; $69df: $5a
    db $fd                                        ; $69e0: $fd
    rst $28                                       ; $69e1: $ef
    rst $10                                       ; $69e2: $d7
    xor $1f                                       ; $69e3: $ee $1f
    ld c, d                                       ; $69e5: $4a
    ld b, l                                       ; $69e6: $45
    adc a                                         ; $69e7: $8f

Jump_04e_69e8:
    or h                                          ; $69e8: $b4
    ld hl, $90e9                                  ; $69e9: $21 $e9 $90
    ld [hl], c                                    ; $69ec: $71
    and a                                         ; $69ed: $a7
    ld e, $bd                                     ; $69ee: $1e $bd
    ld l, d                                       ; $69f0: $6a
    ld [hl], a                                    ; $69f1: $77
    call nz, $5f74                                ; $69f2: $c4 $74 $5f
    ld l, e                                       ; $69f5: $6b
    ld a, [hl-]                                   ; $69f6: $3a
    ld e, d                                       ; $69f7: $5a
    ld a, [bc]                                    ; $69f8: $0a
    ld [hl+], a                                   ; $69f9: $22
    ret nz                                        ; $69fa: $c0

    ld c, [hl]                                    ; $69fb: $4e
    sbc l                                         ; $69fc: $9d
    ld c, a                                       ; $69fd: $4f
    ld h, h                                       ; $69fe: $64
    push hl                                       ; $69ff: $e5
    cp [hl]                                       ; $6a00: $be
    dec hl                                        ; $6a01: $2b
    ld e, $b3                                     ; $6a02: $1e $b3
    ld a, l                                       ; $6a04: $7d
    db $fc                                        ; $6a05: $fc
    ld e, a                                       ; $6a06: $5f
    db $e3                                        ; $6a07: $e3
    ld c, [hl]                                    ; $6a08: $4e
    dec a                                         ; $6a09: $3d
    jp z, $914a                                   ; $6a0a: $ca $4a $91

    ldh a, [$b3]                                  ; $6a0d: $f0 $b3
    add c                                         ; $6a0f: $81
    inc sp                                        ; $6a10: $33
    xor $d1                                       ; $6a11: $ee $d1
    db $10                                        ; $6a13: $10
    ld bc, $4b8f                                  ; $6a14: $01 $8f $4b
    ld c, l                                       ; $6a17: $4d
    inc sp                                        ; $6a18: $33
    jr c, @+$60                                   ; $6a19: $38 $5e

    ld a, c                                       ; $6a1b: $79
    push hl                                       ; $6a1c: $e5
    ld a, $66                                     ; $6a1d: $3e $66
    xor c                                         ; $6a1f: $a9
    ld e, l                                       ; $6a20: $5d
    pop af                                        ; $6a21: $f1
    ld e, b                                       ; $6a22: $58
    add $ef                                       ; $6a23: $c6 $ef
    rst $38                                       ; $6a25: $ff
    pop de                                        ; $6a26: $d1
    res 0, [hl]                                   ; $6a27: $cb $86
    adc [hl]                                      ; $6a29: $8e
    ld e, c                                       ; $6a2a: $59
    ld l, d                                       ; $6a2b: $6a
    jp hl                                         ; $6a2c: $e9


    ld c, [hl]                                    ; $6a2d: $4e
    ld c, b                                       ; $6a2e: $48
    dec [hl]                                      ; $6a2f: $35
    ld b, h                                       ; $6a30: $44
    and b                                         ; $6a31: $a0
    xor a                                         ; $6a32: $af
    adc h                                         ; $6a33: $8c
    ld e, h                                       ; $6a34: $5c
    rst $30                                       ; $6a35: $f7
    ld hl, sp+$3b                                 ; $6a36: $f8 $3b
    ld a, d                                       ; $6a38: $7a
    jp hl                                         ; $6a39: $e9


    ld e, a                                       ; $6a3a: $5f
    ld b, d                                       ; $6a3b: $42
    xor d                                         ; $6a3c: $aa
    ld h, e                                       ; $6a3d: $63
    add a                                         ; $6a3e: $87
    ld c, h                                       ; $6a3f: $4c
    ld a, b                                       ; $6a40: $78
    ld h, l                                       ; $6a41: $65
    ld h, h                                       ; $6a42: $64
    dec h                                         ; $6a43: $25
    ld d, d                                       ; $6a44: $52
    ld [bc], a                                    ; $6a45: $02
    ld [hl], a                                    ; $6a46: $77
    sbc [hl]                                      ; $6a47: $9e
    inc l                                         ; $6a48: $2c
    ld l, l                                       ; $6a49: $6d
    jp c, Jump_04e_4cc6                           ; $6a4a: $da $c6 $4c

    adc d                                         ; $6a4d: $8a
    ld h, h                                       ; $6a4e: $64
    ld a, [hl]                                    ; $6a4f: $7e
    cp b                                          ; $6a50: $b8
    ld sp, hl                                     ; $6a51: $f9
    pop de                                        ; $6a52: $d1
    dec [hl]                                      ; $6a53: $35
    ld a, e                                       ; $6a54: $7b
    dec b                                         ; $6a55: $05
    ld [hl+], a                                   ; $6a56: $22
    and b                                         ; $6a57: $a0
    xor a                                         ; $6a58: $af
    call nc, $7dd2                                ; $6a59: $d4 $d2 $7d
    or d                                          ; $6a5c: $b2
    pop de                                        ; $6a5d: $d1
    res 0, a                                      ; $6a5e: $cb $87
    adc d                                         ; $6a60: $8a
    ld e, [hl]                                    ; $6a61: $5e
    cp c                                          ; $6a62: $b9
    rst $28                                       ; $6a63: $ef
    adc c                                         ; $6a64: $89
    inc d                                         ; $6a65: $14
    ld e, $3b                                     ; $6a66: $1e $3b
    ld a, d                                       ; $6a68: $7a
    rst $38                                       ; $6a69: $ff
    sub d                                         ; $6a6a: $92
    ld e, d                                       ; $6a6b: $5a
    db $fc                                        ; $6a6c: $fc
    ld [hl+], a                                   ; $6a6d: $22
    res 0, [hl]                                   ; $6a6e: $cb $86
    ld c, [hl]                                    ; $6a70: $4e
    dec hl                                        ; $6a71: $2b
    ld e, c                                       ; $6a72: $59
    adc [hl]                                      ; $6a73: $8e
    ld e, [hl]                                    ; $6a74: $5e
    ld [c], a                                     ; $6a75: $e2
    db $10                                        ; $6a76: $10
    ld bc, $4ec0                                  ; $6a77: $01 $c0 $4e
    sbc l                                         ; $6a7a: $9d

jr_04e_6a7b:
    cp l                                          ; $6a7b: $bd
    ld hl, sp-$32                                 ; $6a7c: $f8 $ce
    pop af                                        ; $6a7e: $f1
    ld b, e                                       ; $6a7f: $43
    adc a                                         ; $6a80: $8f
    sub [hl]                                      ; $6a81: $96
    jp z, $41fb                                   ; $6a82: $ca $fb $41

    db $fc                                        ; $6a85: $fc
    ld a, [de]                                    ; $6a86: $1a
    adc c                                         ; $6a87: $89
    ld a, [hl]                                    ; $6a88: $7e
    ld a, a                                       ; $6a89: $7f
    inc bc                                        ; $6a8a: $03
    halt                                          ; $6a8b: $76
    ld l, d                                       ; $6a8c: $6a
    cp l                                          ; $6a8d: $bd
    call nz, Call_000_2bfe                        ; $6a8e: $c4 $fe $2b
    ld a, [hl+]                                   ; $6a91: $2a
    inc de                                        ; $6a92: $13
    inc hl                                        ; $6a93: $23
    reti                                          ; $6a94: $d9


    rst $08                                       ; $6a95: $cf
    add [hl]                                      ; $6a96: $86
    or c                                          ; $6a97: $b1
    call $b6ff                                    ; $6a98: $cd $ff $b6
    ld e, c                                       ; $6a9b: $59
    add hl, hl                                    ; $6a9c: $29
    sub d                                         ; $6a9d: $92
    adc c                                         ; $6a9e: $89
    sub c                                         ; $6a9f: $91
    db $ec                                        ; $6aa0: $ec
    ld h, a                                       ; $6aa1: $67
    inc bc                                        ; $6aa2: $03
    halt                                          ; $6aa3: $76
    ld l, d                                       ; $6aa4: $6a
    ld l, a                                       ; $6aa5: $6f
    di                                            ; $6aa6: $f3
    cp a                                          ; $6aa7: $bf
    ld e, h                                       ; $6aa8: $5c
    ld d, c                                       ; $6aa9: $51
    push de                                       ; $6aaa: $d5
    ld h, a                                       ; $6aab: $67
    jp $e6d8                                      ; $6aac: $c3 $d8 $e6


    ld a, a                                       ; $6aaf: $7f
    ld h, d                                       ; $6ab0: $62
    inc h                                         ; $6ab1: $24
    cp e                                          ; $6ab2: $bb
    halt                                          ; $6ab3: $76
    or e                                          ; $6ab4: $b3
    sbc e                                         ; $6ab5: $9b
    cp [hl]                                       ; $6ab6: $be
    ld [hl], l                                    ; $6ab7: $75
    ld [hl], $ec                                  ; $6ab8: $36 $ec
    db $ed                                        ; $6aba: $ed
    rst $38                                       ; $6abb: $ff
    add sp, $3a                                   ; $6abc: $e8 $3a
    dec de                                        ; $6abe: $1b
    or b                                          ; $6abf: $b0
    ld d, e                                       ; $6ac0: $53
    ld h, a                                       ; $6ac1: $67
    cp l                                          ; $6ac2: $bd
    ld a, d                                       ; $6ac3: $7a
    and b                                         ; $6ac4: $a0
    adc l                                         ; $6ac5: $8d
    rst $28                                       ; $6ac6: $ef
    adc c                                         ; $6ac7: $89
    ld e, [hl]                                    ; $6ac8: $5e
    db $ed                                        ; $6ac9: $ed
    call nz, $f648                                ; $6aca: $c4 $48 $f6
    add sp, -$67                                  ; $6acd: $e8 $99
    sub h                                         ; $6acf: $94
    ld [hl], $60                                  ; $6ad0: $36 $60

jr_04e_6ad2:
    sbc a                                         ; $6ad2: $9f
    and l                                         ; $6ad3: $a5
    db $e4                                        ; $6ad4: $e4
    adc d                                         ; $6ad5: $8a
    add d                                         ; $6ad6: $82
    ld [$c9e7], sp                                ; $6ad7: $08 $e7 $c9
    jr z, jr_04e_6a7b                             ; $6ada: $28 $9f

    dec a                                         ; $6adc: $3d
    sub [hl]                                      ; $6add: $96
    add hl, bc                                    ; $6ade: $09
    ld c, e                                       ; $6adf: $4b
    ld l, h                                       ; $6ae0: $6c
    call $b55e                                    ; $6ae1: $cd $5e $b5
    ld [hl], d                                    ; $6ae4: $72
    sbc a                                         ; $6ae5: $9f
    halt                                          ; $6ae6: $76
    db $dd                                        ; $6ae7: $dd
    ld l, e                                       ; $6ae8: $6b

Jump_04e_6ae9:
    ld a, [hl]                                    ; $6ae9: $7e
    rst $38                                       ; $6aea: $ff
    sbc a                                         ; $6aeb: $9f

jr_04e_6aec:
    inc e                                         ; $6aec: $1c
    reti                                          ; $6aed: $d9


    ld l, e                                       ; $6aee: $6b
    ccf                                           ; $6aef: $3f
    adc b                                         ; $6af0: $88
    ld e, a                                       ; $6af1: $5f
    inc hl                                        ; $6af2: $23
    db $10                                        ; $6af3: $10
    ld bc, $e960                                  ; $6af4: $01 $60 $e9
    ld l, h                                       ; $6af7: $6c
    or d                                          ; $6af8: $b2
    dec hl                                        ; $6af9: $2b
    ld e, $d3                                     ; $6afa: $1e $d3
    jp $dfa7                                      ; $6afc: $c3 $a7 $df


    ld c, a                                       ; $6aff: $4f
    ld l, d                                       ; $6b00: $6a
    ccf                                           ; $6b01: $3f
    adc b                                         ; $6b02: $88
    ld e, a                                       ; $6b03: $5f
    inc hl                                        ; $6b04: $23
    pop de                                        ; $6b05: $d1
    or e                                          ; $6b06: $b3
    ret                                           ; $6b07: $c9


    or h                                          ; $6b08: $b4
    ld [$9291], a                                 ; $6b09: $ea $91 $92
    reti                                          ; $6b0c: $d9


    ld h, h                                       ; $6b0d: $64
    ld a, [hl]                                    ; $6b0e: $7e
    db $dd                                        ; $6b0f: $dd
    ld l, e                                       ; $6b10: $6b
    jr c, jr_04e_6ad2                             ; $6b11: $38 $bf

    sub d                                         ; $6b13: $92
    db $fc                                        ; $6b14: $fc
    ld c, e                                       ; $6b15: $4b
    ld h, l                                       ; $6b16: $65
    cpl                                           ; $6b17: $2f
    db $fd                                        ; $6b18: $fd
    sub a                                         ; $6b19: $97
    db $ec                                        ; $6b1a: $ec
    ld l, $7e                                     ; $6b1b: $2e $7e
    add sp, $5a                                   ; $6b1d: $e8 $5a
    ld d, b                                       ; $6b1f: $50
    ld a, [de]                                    ; $6b20: $1a
    sbc [hl]                                      ; $6b21: $9e
    sub a                                         ; $6b22: $97
    adc a                                         ; $6b23: $8f
    rst $38                                       ; $6b24: $ff
    inc sp                                        ; $6b25: $33
    add hl, hl                                    ; $6b26: $29
    inc a                                         ; $6b27: $3c
    ld [hl], a                                    ; $6b28: $77
    ld b, d                                       ; $6b29: $42
    ld hl, $8f02                                  ; $6b2a: $21 $02 $8f
    ld c, e                                       ; $6b2d: $4b
    db $ed                                        ; $6b2e: $ed
    add sp, -$1f                                  ; $6b2f: $e8 $e1
    db $fc                                        ; $6b31: $fc
    db $f4                                        ; $6b32: $f4
    ld b, e                                       ; $6b33: $43
    call $ffef                                    ; $6b34: $cd $ef $ff
    and e                                         ; $6b37: $a3
    ld d, a                                       ; $6b38: $57
    or $83                                        ; $6b39: $f6 $83
    ld hl, sp+$35                                 ; $6b3b: $f8 $35
    or d                                          ; $6b3d: $b2
    cp e                                          ; $6b3e: $bb
    ld d, e                                       ; $6b3f: $53
    ei                                            ; $6b40: $fb
    ccf                                           ; $6b41: $3f
    cp d                                          ; $6b42: $ba
    ldh [$ce], a                                  ; $6b43: $e0 $ce
    ld b, e                                       ; $6b45: $43
    and [hl]                                      ; $6b46: $a6
    pop af                                        ; $6b47: $f1
    rst $38                                       ; $6b48: $ff
    rst $20                                       ; $6b49: $e7
    dec h                                         ; $6b4a: $25
    ld e, $bb                                     ; $6b4b: $1e $bb
    db $d3                                        ; $6b4d: $d3
    rrca                                          ; $6b4e: $0f
    add $ae                                       ; $6b4f: $c6 $ae
    dec h                                         ; $6b51: $25
    add hl, sp                                    ; $6b52: $39
    inc b                                         ; $6b53: $04
    ld [hl+], a                                   ; $6b54: $22
    adc a                                         ; $6b55: $8f
    ld c, e                                       ; $6b56: $4b
    db $ed                                        ; $6b57: $ed
    add a                                         ; $6b58: $87
    ld d, a                                       ; $6b59: $57
    cpl                                           ; $6b5a: $2f
    jr c, jr_04e_6aec                             ; $6b5b: $38 $8f

    ld e, $77                                     ; $6b5d: $1e $77
    ld l, d                                       ; $6b5f: $6a
    ld l, a                                       ; $6b60: $6f
    di                                            ; $6b61: $f3
    cp a                                          ; $6b62: $bf
    ld e, h                                       ; $6b63: $5c
    ld d, c                                       ; $6b64: $51
    ld sp, hl                                     ; $6b65: $f9
    rlca                                          ; $6b66: $07
    pop af                                        ; $6b67: $f1
    ld l, e                                       ; $6b68: $6b
    inc h                                         ; $6b69: $24
    inc b                                         ; $6b6a: $04
    xor $71                                       ; $6b6b: $ee $71
    xor c                                         ; $6b6d: $a9
    ld a, c                                       ; $6b6e: $79
    sbc e                                         ; $6b6f: $9b
    ld e, [hl]                                    ; $6b70: $5e
    cp c                                          ; $6b71: $b9
    rst $08                                       ; $6b72: $cf
    add [hl]                                      ; $6b73: $86
    rst $28                                       ; $6b74: $ef
    add sp, -$1f                                  ; $6b75: $e8 $e1
    db $fc                                        ; $6b77: $fc
    ld c, d                                       ; $6b78: $4a
    ld l, h                                       ; $6b79: $6c
    rst $10                                       ; $6b7a: $d7
    ld [hl], h                                    ; $6b7b: $74
    ld e, [hl]                                    ; $6b7c: $5e
    xor [hl]                                      ; $6b7d: $ae
    xor b                                         ; $6b7e: $a8
    db $10                                        ; $6b7f: $10
    adc b                                         ; $6b80: $88
    nop                                           ; $6b81: $00
    and b                                         ; $6b82: $a0
    add d                                         ; $6b83: $82
    ld hl, sp+$35                                 ; $6b84: $f8 $35
    ld [de], a                                    ; $6b86: $12
    or d                                          ; $6b87: $b2
    dec sp                                        ; $6b88: $3b
    xor $d4                                       ; $6b89: $ee $d4
    ld e, c                                       ; $6b8b: $59
    xor a                                         ; $6b8c: $af
    ld e, $35                                     ; $6b8d: $1e $35
    cp [hl]                                       ; $6b8f: $be
    xor h                                         ; $6b90: $ac
    ld d, a                                       ; $6b91: $57
    dec sp                                        ; $6b92: $3b
    ld sp, $3d92                                  ; $6b93: $31 $92 $3d
    ld a, d                                       ; $6b96: $7a
    sbc a                                         ; $6b97: $9f
    rst $30                                       ; $6b98: $f7
    add sp, -$03                                  ; $6b99: $e8 $fd
    inc hl                                        ; $6b9b: $23
    sub e                                         ; $6b9c: $93
    xor e                                         ; $6b9d: $ab
    ldh [$ce], a                                  ; $6b9e: $e0 $ce
    ld b, e                                       ; $6ba0: $43
    and [hl]                                      ; $6ba1: $a6

Jump_04e_6ba2:
    pop af                                        ; $6ba2: $f1
    rst $38                                       ; $6ba3: $ff
    rst $20                                       ; $6ba4: $e7
    pop hl                                        ; $6ba5: $e1
    db $fc                                        ; $6ba6: $fc
    cp h                                          ; $6ba7: $bc
    jp Jump_04e_6332                              ; $6ba8: $c3 $32 $63


    ld a, [hl-]                                   ; $6bab: $3a
    cpl                                           ; $6bac: $2f
    ld d, a                                       ; $6bad: $57
    ld d, h                                       ; $6bae: $54
    ld [$e744], sp                                ; $6baf: $08 $44 $e7
    pop hl                                        ; $6bb2: $e1
    db $d3                                        ; $6bb3: $d3
    ld hl, sp-$01                                 ; $6bb4: $f8 $ff
    di                                            ; $6bb6: $f3
    xor [hl]                                      ; $6bb7: $ae
    xor b                                         ; $6bb8: $a8
    jp c, $e20f                                   ; $6bb9: $da $0f $e2

    rst $10                                       ; $6bbc: $d7
    ld c, b                                       ; $6bbd: $48
    db $f4                                        ; $6bbe: $f4
    ld [$3cff], a                                 ; $6bbf: $ea $ff $3c
    sbc h                                         ; $6bc2: $9c
    ld e, a                                       ; $6bc3: $5f
    jp c, $87b8                                   ; $6bc4: $da $b8 $87

    add sp, -$44                                  ; $6bc7: $e8 $bc
    ld e, h                                       ; $6bc9: $5c
    ld d, c                                       ; $6bca: $51
    ld hl, $0110                                  ; $6bcb: $21 $10 $01
    ret nz                                        ; $6bce: $c0

    ld c, [hl]                                    ; $6bcf: $4e
    sbc l                                         ; $6bd0: $9d
    cp l                                          ; $6bd1: $bd
    ld hl, sp-$32                                 ; $6bd2: $f8 $ce
    pop af                                        ; $6bd4: $f1
    ld b, e                                       ; $6bd5: $43
    adc a                                         ; $6bd6: $8f
    sub [hl]                                      ; $6bd7: $96
    jp z, $41fb                                   ; $6bd8: $ca $fb $41

    db $fc                                        ; $6bdb: $fc
    ld a, [de]                                    ; $6bdc: $1a
    adc c                                         ; $6bdd: $89
    ld e, $77                                     ; $6bde: $1e $77
    ld b, l                                       ; $6be0: $45
    ld a, [c]                                     ; $6be1: $f2
    ld [de], a                                    ; $6be2: $12
    inc e                                         ; $6be3: $1c
    rst $08                                       ; $6be4: $cf
    push hl                                       ; $6be5: $e5
    ld e, [hl]                                    ; $6be6: $5e
    jp $95f9                                      ; $6be7: $c3 $f9 $95


    db $e4                                        ; $6bea: $e4

jr_04e_6beb:
    ld e, a                                       ; $6beb: $5f
    ld a, [hl+]                                   ; $6bec: $2a
    ld a, e                                       ; $6bed: $7b
    jp hl                                         ; $6bee: $e9


    cp a                                          ; $6bef: $bf
    ld h, h                                       ; $6bf0: $64
    ld [hl], a                                    ; $6bf1: $77
    ret nz                                        ; $6bf2: $c0

    sbc e                                         ; $6bf3: $9b
    push bc                                       ; $6bf4: $c5
    ld [hl], c                                    ; $6bf5: $71
    ld d, a                                       ; $6bf6: $57
    xor h                                         ; $6bf7: $ac
    jp hl                                         ; $6bf8: $e9


    cp h                                          ; $6bf9: $bc
    ld a, h                                       ; $6bfa: $7c
    db $fc                                        ; $6bfb: $fc
    sbc a                                         ; $6bfc: $9f
    ld c, c                                       ; $6bfd: $49
    pop hl                                        ; $6bfe: $e1
    cp c                                          ; $6bff: $b9
    inc de                                        ; $6c00: $13
    ld a, [bc]                                    ; $6c01: $0a
    ld de, $21e7                                  ; $6c02: $11 $e7 $21
    dec bc                                        ; $6c05: $0b
    or c                                          ; $6c06: $b1
    or l                                          ; $6c07: $b5
    rra                                           ; $6c08: $1f
    call nz, $91af                                ; $6c09: $c4 $af $91
    ld h, l                                       ; $6c0c: $65
    ld b, e                                       ; $6c0d: $43
    and a                                         ; $6c0e: $a7
    pop af                                        ; $6c0f: $f1
    rst $38                                       ; $6c10: $ff
    rst $20                                       ; $6c11: $e7
    ld l, c                                       ; $6c12: $69
    ld b, a                                       ; $6c13: $47
    ld c, a                                       ; $6c14: $4f
    and d                                         ; $6c15: $a2
    ld h, e                                       ; $6c16: $63
    ld b, a                                       ; $6c17: $47
    rst $08                                       ; $6c18: $cf
    db $db                                        ; $6c19: $db
    db $fc                                        ; $6c1a: $fc
    ld l, a                                       ; $6c1b: $6f
    sbc e                                         ; $6c1c: $9b
    sub l                                         ; $6c1d: $95
    ld [hl+], a                                   ; $6c1e: $22
    sbc c                                         ; $6c1f: $99
    jr jr_04e_6beb                                ; $6c20: $18 $c9

    ld c, $11                                     ; $6c22: $0e $11
    adc a                                         ; $6c24: $8f
    ld c, e                                       ; $6c25: $4b
    db $ed                                        ; $6c26: $ed
    inc h                                         ; $6c27: $24
    sbc c                                         ; $6c28: $99
    ld d, h                                       ; $6c29: $54
    xor a                                         ; $6c2a: $af
    call c, Call_000_2cc7                         ; $6c2b: $dc $c7 $2c
    dec [hl]                                      ; $6c2e: $35
    xor l                                         ; $6c2f: $ad
    ld l, h                                       ; $6c30: $6c
    adc h                                         ; $6c31: $8c
    ei                                            ; $6c32: $fb
    pop de                                        ; $6c33: $d1
    dec sp                                        ; $6c34: $3b
    ld h, h                                       ; $6c35: $64
    ld hl, $41fb                                  ; $6c36: $21 $fb $41
    db $fc                                        ; $6c39: $fc
    ld a, [de]                                    ; $6c3a: $1a
    reti                                          ; $6c3b: $d9


    dec e                                         ; $6c3c: $1d
    ld [hl], a                                    ; $6c3d: $77
    adc b                                         ; $6c3e: $88
    adc d                                         ; $6c3f: $8a
    sbc a                                         ; $6c40: $9f
    ld b, e                                       ; $6c41: $43
    db $e3                                        ; $6c42: $e3
    cp a                                          ; $6c43: $bf
    ld l, c                                       ; $6c44: $69
    add hl, hl                                    ; $6c45: $29
    cp b                                          ; $6c46: $b8
    di                                            ; $6c47: $f3
    ret c                                         ; $6c48: $d8

    cp a                                          ; $6c49: $bf
    ld c, d                                       ; $6c4a: $4a
    ld b, l                                       ; $6c4b: $45
    ld c, a                                       ; $6c4c: $4f
    adc [hl]                                      ; $6c4d: $8e
    xor [hl]                                      ; $6c4e: $ae
    pop de                                        ; $6c4f: $d1
    db $eb                                        ; $6c50: $eb
    cp [hl]                                       ; $6c51: $be
    ld hl, sp-$5f                                 ; $6c52: $f8 $a1
    ld l, e                                       ; $6c54: $6b
    ld b, c                                       ; $6c55: $41
    ld hl, $e702                                  ; $6c56: $21 $02 $e7
    pop hl                                        ; $6c59: $e1
    db $d3                                        ; $6c5a: $d3
    ld hl, sp-$01                                 ; $6c5b: $f8 $ff
    di                                            ; $6c5d: $f3
    xor [hl]                                      ; $6c5e: $ae
    xor b                                         ; $6c5f: $a8
    jp c, $e20f                                   ; $6c60: $da $0f $e2

    rst $10                                       ; $6c63: $d7
    ld c, b                                       ; $6c64: $48
    db $f4                                        ; $6c65: $f4
    ld [hl], b                                    ; $6c66: $70
    ld a, [hl]                                    ; $6c67: $7e
    ld [hl], $64                                  ; $6c68: $36 $64
    jp c, $d3d1                                   ; $6c6a: $da $d1 $d3

    ld a, c                                       ; $6c6d: $79
    cp c                                          ; $6c6e: $b9
    and d                                         ; $6c6f: $a2
    ld b, d                                       ; $6c70: $42
    jr nz, @+$04                                  ; $6c71: $20 $02

    rst $20                                       ; $6c73: $e7
    ld sp, $47ee                                  ; $6c74: $31 $ee $47
    or $5a                                        ; $6c77: $f6 $5a
    jp hl                                         ; $6c79: $e9


    db $e3                                        ; $6c7a: $e3
    ld c, [hl]                                    ; $6c7b: $4e
    sbc l                                         ; $6c7c: $9d
    cp l                                          ; $6c7d: $bd
    ld hl, sp-$32                                 ; $6c7e: $f8 $ce
    pop af                                        ; $6c80: $f1
    ld b, e                                       ; $6c81: $43
    adc a                                         ; $6c82: $8f
    sub [hl]                                      ; $6c83: $96
    jp z, $41fb                                   ; $6c84: $ca $fb $41

    db $fc                                        ; $6c87: $fc
    ld a, [de]                                    ; $6c88: $1a
    adc c                                         ; $6c89: $89
    sbc $bf                                       ; $6c8a: $de $bf
    ld c, d                                       ; $6c8c: $4a
    ld b, l                                       ; $6c8d: $45
    rrca                                          ; $6c8e: $0f
    rst $20                                       ; $6c8f: $e7
    ld [hl], a                                    ; $6c90: $77
    jp nc, Jump_04e_75a3                          ; $6c91: $d2 $a3 $75

    ld e, [hl]                                    ; $6c94: $5e
    xor [hl]                                      ; $6c95: $ae
    xor b                                         ; $6c96: $a8
    ld l, d                                       ; $6c97: $6a
    xor c                                         ; $6c98: $a9
    or e                                          ; $6c99: $b3
    ld [hl], c                                    ; $6c9a: $71
    and a                                         ; $6c9b: $a7
    ld c, [hl]                                    ; $6c9c: $4e
    call c, Call_04e_79d0                         ; $6c9d: $dc $d0 $79
    sbc e                                         ; $6ca0: $9b
    rst $38                                       ; $6ca1: $ff
    ld l, l                                       ; $6ca2: $6d
    or e                                          ; $6ca3: $b3
    ld d, d                                       ; $6ca4: $52
    inc h                                         ; $6ca5: $24
    inc de                                        ; $6ca6: $13
    inc hl                                        ; $6ca7: $23
    reti                                          ; $6ca8: $d9


    ld h, a                                       ; $6ca9: $67
    ld d, d                                       ; $6caa: $52
    jp c, $ed4e                                   ; $6cab: $da $4e $ed

    rst $38                                       ; $6cae: $ff
    add sp, -$7e                                  ; $6caf: $e8 $82
    ld [$8ea0], sp                                ; $6cb1: $08 $a0 $8e
    xor [hl]                                      ; $6cb4: $ae
    sub [hl]                                      ; $6cb5: $96
    jp z, $c7cb                                   ; $6cb6: $ca $cb $c7

    rst $38                                       ; $6cb9: $ff
    sbc c                                         ; $6cba: $99
    inc d                                         ; $6cbb: $14
    sbc [hl]                                      ; $6cbc: $9e
    dec sp                                        ; $6cbd: $3b
    and c                                         ; $6cbe: $a1
    ei                                            ; $6cbf: $fb
    ld d, a                                       ; $6cc0: $57
    xor c                                         ; $6cc1: $a9
    add sp, -$1f                                  ; $6cc2: $e8 $e1
    db $fc                                        ; $6cc4: $fc
    ld l, h                                       ; $6cc5: $6c

Call_04e_6cc6:
    ret z                                         ; $6cc6: $c8

    or h                                          ; $6cc7: $b4
    and e                                         ; $6cc8: $a3
    and a                                         ; $6cc9: $a7
    di                                            ; $6cca: $f3
    ld [hl], d                                    ; $6ccb: $72
    ld b, l                                       ; $6ccc: $45
    add l                                         ; $6ccd: $85
    sbc h                                         ; $6cce: $9c
    adc l                                         ; $6ccf: $8d
    add [hl]                                      ; $6cd0: $86
    call z, $8f86                                 ; $6cd1: $cc $86 $8f
    cp e                                          ; $6cd4: $bb
    ld [hl+], a                                   ; $6cd5: $22
    ld a, c                                       ; $6cd6: $79
    ld d, a                                       ; $6cd7: $57
    ld d, h                                       ; $6cd8: $54
    adc l                                         ; $6cd9: $8d
    db $fc                                        ; $6cda: $fc
    jp z, $13b9                                   ; $6cdb: $ca $b9 $13

    ld a, [hl-]                                   ; $6cde: $3a
    db $ed                                        ; $6cdf: $ed
    ld l, b                                       ; $6ce0: $68
    adc b                                         ; $6ce1: $88
    nop                                           ; $6ce2: $00
    adc a                                         ; $6ce3: $8f
    ld c, e                                       ; $6ce4: $4b
    ld c, l                                       ; $6ce5: $4d
    rrca                                          ; $6ce6: $0f
    rst $18                                       ; $6ce7: $df
    dec d                                         ; $6ce8: $15
    adc a                                         ; $6ce9: $8f
    jp hl                                         ; $6cea: $e9


    push de                                       ; $6ceb: $d5
    ld a, $66                                     ; $6cec: $3e $66
    xor c                                         ; $6cee: $a9
    ld h, l                                       ; $6cef: $65
    ld d, d                                       ; $6cf0: $52
    ld d, e                                       ; $6cf1: $53
    inc a                                         ; $6cf2: $3c
    ld b, h                                       ; $6cf3: $44
    rrca                                          ; $6cf4: $0f
    db $fc                                        ; $6cf5: $fc
    rst $38                                       ; $6cf6: $ff
    ld a, c                                       ; $6cf7: $79
    ccf                                           ; $6cf8: $3f
    adc b                                         ; $6cf9: $88
    ld e, a                                       ; $6cfa: $5f
    inc hl                                        ; $6cfb: $23
    ld hl, $e3bb                                  ; $6cfc: $21 $bb $e3
    ld c, [hl]                                    ; $6cff: $4e
    xor l                                         ; $6d00: $ad
    sub a                                         ; $6d01: $97
    ret c                                         ; $6d02: $d8

    ld a, a                                       ; $6d03: $7f
    ld b, l                                       ; $6d04: $45
    ld h, l                                       ; $6d05: $65
    ld h, d                                       ; $6d06: $62
    inc h                                         ; $6d07: $24
    ei                                            ; $6d08: $fb
    ld [hl], b                                    ; $6d09: $70
    ld a, [hl]                                    ; $6d0a: $7e
    ld [hl], $64                                  ; $6d0b: $36 $64
    jp c, $d3d1                                   ; $6d0d: $da $d1 $d3

    ld a, c                                       ; $6d10: $79
    cp c                                          ; $6d11: $b9
    and d                                         ; $6d12: $a2
    ld b, d                                       ; $6d13: $42
    ld e, $ed                                     ; $6d14: $1e $ed
    inc a                                         ; $6d16: $3c
    ld a, h                                       ; $6d17: $7c
    ld a, d                                       ; $6d18: $7a
    push af                                       ; $6d19: $f5
    add h                                         ; $6d1a: $84
    sub a                                         ; $6d1b: $97
    ld h, l                                       ; $6d1c: $65
    ld b, e                                       ; $6d1d: $43
    sub a                                         ; $6d1e: $97
    ld l, e                                       ; $6d1f: $6b
    ld [hl], $1c                                  ; $6d20: $36 $1c
    ld [hl+], a                                   ; $6d22: $22
    ldh [$da], a                                  ; $6d23: $e0 $da
    ld [hl], b                                    ; $6d25: $70
    sub c                                         ; $6d26: $91
    or e                                          ; $6d27: $b3
    jp hl                                         ; $6d28: $e9


    add c                                         ; $6d29: $81
    ld c, [hl]                                    ; $6d2a: $4e
    ld bc, $5237                                  ; $6d2b: $01 $37 $52
    xor d                                         ; $6d2e: $aa
    cp $cf                                        ; $6d2f: $fe $cf
    ei                                            ; $6d31: $fb
    ld b, c                                       ; $6d32: $41
    db $fc                                        ; $6d33: $fc
    ld a, [de]                                    ; $6d34: $1a
    reti                                          ; $6d35: $d9


    dec e                                         ; $6d36: $1d
    ld [hl], a                                    ; $6d37: $77
    ld l, d                                       ; $6d38: $6a
    cp l                                          ; $6d39: $bd
    call nz, Call_000_2bfe                        ; $6d3a: $c4 $fe $2b
    ld a, [hl+]                                   ; $6d3d: $2a
    inc de                                        ; $6d3e: $13
    inc hl                                        ; $6d3f: $23
    reti                                          ; $6d40: $d9


    sub a                                         ; $6d41: $97
    ld c, c                                       ; $6d42: $49
    ld c, l                                       ; $6d43: $4d
    xor a                                         ; $6d44: $af
    xor [hl]                                      ; $6d45: $ae
    ld l, c                                       ; $6d46: $69
    ld b, a                                       ; $6d47: $47
    rst $28                                       ; $6d48: $ef
    ld c, [hl]                                    ; $6d49: $4e
    adc [hl]                                      ; $6d4a: $8e
    sub $c2                                       ; $6d4b: $d6 $c2
    ld b, e                                       ; $6d4d: $43
    jr nz, jr_04e_6d52                            ; $6d4e: $20 $02

    adc a                                         ; $6d50: $8f
    ld c, e                                       ; $6d51: $4b

jr_04e_6d52:
    dec l                                         ; $6d52: $2d
    ld de, $d5db                                  ; $6d53: $11 $db $d5
    db $d3                                        ; $6d56: $d3
    sub d                                         ; $6d57: $92
    ld e, $e5                                     ; $6d58: $1e $e5
    ld b, l                                       ; $6d5a: $45
    push de                                       ; $6d5b: $d5
    ld [c], a                                     ; $6d5c: $e2
    add a                                         ; $6d5d: $87
    ld e, $bd                                     ; $6d5e: $1e $bd
    ld l, h                                       ; $6d60: $6c

jr_04e_6d61:
    add sp, -$78                                  ; $6d61: $e8 $88
    and c                                         ; $6d63: $a1
    inc [hl]                                      ; $6d64: $34
    ld a, d                                       ; $6d65: $7a
    ld e, h                                       ; $6d66: $5c
    di                                            ; $6d67: $f3
    ld [hl-], a                                   ; $6d68: $32
    sbc d                                         ; $6d69: $9a
    jr z, jr_04e_6d61                             ; $6d6a: $28 $f5

    xor e                                         ; $6d6c: $ab
    cp c                                          ; $6d6d: $b9
    and d                                         ; $6d6e: $a2
    rst $30                                       ; $6d6f: $f7
    inc sp                                        ; $6d70: $33
    and e                                         ; $6d71: $a3
    ld hl, $6002                                  ; $6d72: $21 $02 $60
    jp hl                                         ; $6d75: $e9


    ld l, h                                       ; $6d76: $6c
    or d                                          ; $6d77: $b2
    rra                                           ; $6d78: $1f
    ld e, [hl]                                    ; $6d79: $5e
    cp l                                          ; $6d7a: $bd
    ldh [$3c], a                                  ; $6d7b: $e0 $3c
    ld a, d                                       ; $6d7d: $7a
    call c, $bda9                                 ; $6d7e: $dc $a9 $bd
    call Call_04e_72ff                            ; $6d81: $cd $ff $72
    ld b, l                                       ; $6d84: $45
    push hl                                       ; $6d85: $e5
    rra                                           ; $6d86: $1f
    call nz, $91af                                ; $6d87: $c4 $af $91
    sub b                                         ; $6d8a: $90
    ld h, l                                       ; $6d8b: $65
    ld a, [hl]                                    ; $6d8c: $7e
    ld a, [de]                                    ; $6d8d: $1a
    rst $38                                       ; $6d8e: $ff
    ld a, a                                       ; $6d8f: $7f
    sbc [hl]                                      ; $6d90: $9e
    dec c                                         ; $6d91: $0d
    reti                                          ; $6d92: $d9


    sbc l                                         ; $6d93: $9d
    sbc b                                         ; $6d94: $98
    xor $da                                       ; $6d95: $ee $da
    ld hl, $6436                                  ; $6d97: $21 $36 $64
    and l                                         ; $6d9a: $a5
    rst $08                                       ; $6d9b: $cf
    add [hl]                                      ; $6d9c: $86
    ld c, h                                       ; $6d9d: $4c
    dec sp                                        ; $6d9e: $3b
    ld a, d                                       ; $6d9f: $7a
    call nz, $5f74                                ; $6da0: $c4 $74 $5f
    ld l, e                                       ; $6da3: $6b
    ld a, [hl-]                                   ; $6da4: $3a
    inc b                                         ; $6da5: $04

Jump_04e_6da6:
    ld [hl+], a                                   ; $6da6: $22
    rst $20                                       ; $6da7: $e7
    pop hl                                        ; $6da8: $e1

Jump_04e_6da9:
    db $e3                                        ; $6da9: $e3
    xor [hl]                                      ; $6daa: $ae
    ld c, b                                       ; $6dab: $48
    ld e, [hl]                                    ; $6dac: $5e
    cp b                                          ; $6dad: $b8
    cpl                                           ; $6dae: $2f
    cp e                                          ; $6daf: $bb
    ld l, c                                       ; $6db0: $69
    ld e, a                                       ; $6db1: $5f
    daa                                           ; $6db2: $27
    ld [hl], h                                    ; $6db3: $74
    ld e, h                                       ; $6db4: $5c
    ld a, [c]                                     ; $6db5: $f2
    cp a                                          ; $6db6: $bf
    adc a                                         ; $6db7: $8f
    add [hl]                                      ; $6db8: $86
    ld e, l                                       ; $6db9: $5d
    ld a, [$2294]                                 ; $6dba: $fa $94 $22
    pop de                                        ; $6dbd: $d1
    jp $d9f9                                      ; $6dbe: $c3 $f9 $d9


    sub b                                         ; $6dc1: $90
    ld l, c                                       ; $6dc2: $69
    ld b, a                                       ; $6dc3: $47
    ld c, a                                       ; $6dc4: $4f
    rst $20                                       ; $6dc5: $e7
    push hl                                       ; $6dc6: $e5
    adc d                                         ; $6dc7: $8a
    ld a, [bc]                                    ; $6dc8: $0a
    add c                                         ; $6dc9: $81
    ld a, e                                       ; $6dca: $7b
    ld e, h                                       ; $6dcb: $5c
    ld l, d                                       ; $6dcc: $6a
    ld sp, hl                                     ; $6dcd: $f9
    di                                            ; $6dce: $f3
    dec a                                         ; $6dcf: $3d
    cp l                                          ; $6dd0: $bd
    db $ec                                        ; $6dd1: $ec
    inc c                                         ; $6dd2: $0c
    ld e, l                                       ; $6dd3: $5d
    cp c                                          ; $6dd4: $b9
    rst $08                                       ; $6dd5: $cf
    add [hl]                                      ; $6dd6: $86
    rst $28                                       ; $6dd7: $ef
    add sp, -$5b                                  ; $6dd8: $e8 $a5
    ld l, a                                       ; $6dda: $6f
    ld a, [$e35f]                                 ; $6ddb: $fa $5f $e3
    ld b, c                                       ; $6dde: $41
    jp nz, Jump_000_0221                          ; $6ddf: $c2 $21 $02

    ret nz                                        ; $6de2: $c0

    ld c, [hl]                                    ; $6de3: $4e
    db $ed                                        ; $6de4: $ed
    ld l, l                                       ; $6de5: $6d
    cp $97                                        ; $6de6: $fe $97
    dec hl                                        ; $6de8: $2b
    ld [$4ce5], a                                 ; $6de9: $ea $e5 $4c
    ld a, [hl]                                    ; $6dec: $7e
    push hl                                       ; $6ded: $e5
    call c, $a509                                 ; $6dee: $dc $09 $a5
    pop hl                                        ; $6df1: $e1
    ei                                            ; $6df2: $fb
    ld d, a                                       ; $6df3: $57
    xor c                                         ; $6df4: $a9
    add sp, -$2f                                  ; $6df5: $e8 $d1
    ld hl, sp-$41                                 ; $6df7: $f8 $bf
    ld h, h                                       ; $6df9: $64
    ld [hl], $e6                                  ; $6dfa: $36 $e6
    ld a, [hl-]                                   ; $6dfc: $3a
    ccf                                           ; $6dfd: $3f
    ld h, l                                       ; $6dfe: $65
    jp nc, Jump_000_0ff1                          ; $6dff: $d2 $f1 $0f

    ld d, c                                       ; $6e02: $51
    pop de                                        ; $6e03: $d1
    ld d, d                                       ; $6e04: $52
    cp e                                          ; $6e05: $bb
    srl a                                         ; $6e06: $cb $3f
    pop af                                        ; $6e08: $f1
    ldh a, [$95]                                  ; $6e09: $f0 $95
    ld a, $62                                     ; $6e0b: $3e $62
    cp d                                          ; $6e0d: $ba
    xor a                                         ; $6e0e: $af
    dec [hl]                                      ; $6e0f: $35
    dec e                                         ; $6e10: $1d
    ld [bc], a                                    ; $6e11: $02
    ld de, $f8e0                                  ; $6e12: $11 $e0 $f8
    reti                                          ; $6e15: $d9


    sub b                                         ; $6e16: $90
    ld l, c                                       ; $6e17: $69
    ld b, a                                       ; $6e18: $47
    ld c, a                                       ; $6e19: $4f
    rst $20                                       ; $6e1a: $e7
    push hl                                       ; $6e1b: $e5
    adc d                                         ; $6e1c: $8a
    ld a, [bc]                                    ; $6e1d: $0a
    reti                                          ; $6e1e: $d9


    ccf                                           ; $6e1f: $3f
    ld a, d                                       ; $6e20: $7a
    ld [hl], $99                                  ; $6e21: $36 $99
    cp l                                          ; $6e23: $bd
    ld l, d                                       ; $6e24: $6a
    call c, $b3a9                                 ; $6e25: $dc $a9 $b3
    ld e, [hl]                                    ; $6e28: $5e
    dec a                                         ; $6e29: $3d
    ld l, d                                       ; $6e2a: $6a
    ld a, h                                       ; $6e2b: $7c
    ld e, c                                       ; $6e2c: $59
    xor a                                         ; $6e2d: $af
    halt                                          ; $6e2e: $76
    ld h, d                                       ; $6e2f: $62
    inc h                                         ; $6e30: $24
    ld a, e                                       ; $6e31: $7b
    inc [hl]                                      ; $6e32: $34
    ld b, h                                       ; $6e33: $44
    ldh [$da], a                                  ; $6e34: $e0 $da
    ld [hl], b                                    ; $6e36: $70
    sub c                                         ; $6e37: $91
    or e                                          ; $6e38: $b3
    jp hl                                         ; $6e39: $e9


    add c                                         ; $6e3a: $81
    ld c, a                                       ; $6e3b: $4f
    ld l, [hl]                                    ; $6e3c: $6e
    ld [hl], a                                    ; $6e3d: $77
    db $fc                                        ; $6e3e: $fc
    sbc a                                         ; $6e3f: $9f
    rst $30                                       ; $6e40: $f7
    adc a                                         ; $6e41: $8f
    xor [hl]                                      ; $6e42: $ae
    xor $84                                       ; $6e43: $ee $84
    xor $5f                                       ; $6e45: $ee $5f
    and l                                         ; $6e47: $a5
    and d                                         ; $6e48: $a2
    ld h, a                                       ; $6e49: $67
    adc a                                         ; $6e4a: $8f
    ld e, [hl]                                    ; $6e4b: $5e
    jp c, $17b4                                   ; $6e4c: $da $b4 $17

    call c, Call_04e_4943                         ; $6e4f: $dc $43 $49
    sbc $0f                                       ; $6e52: $de $0f
    ld [c], a                                     ; $6e54: $e2
    rst $10                                       ; $6e55: $d7
    ret z                                         ; $6e56: $c8

    xor $b8                                       ; $6e57: $ee $b8
    ld d, e                                       ; $6e59: $53
    ld h, a                                       ; $6e5a: $67
    cp l                                          ; $6e5b: $bd
    ld a, d                                       ; $6e5c: $7a
    call nc, $b2f8                                ; $6e5d: $d4 $f8 $b2
    ld e, [hl]                                    ; $6e60: $5e
    db $ed                                        ; $6e61: $ed
    call nz, $f648                                ; $6e62: $c4 $48 $f6
    add sp, $51                                   ; $6e65: $e8 $51
    ld a, $7b                                     ; $6e67: $3e $7b
    ld c, h                                       ; $6e69: $4c
    xor a                                         ; $6e6a: $af
    xor [hl]                                      ; $6e6b: $ae
    db $dd                                        ; $6e6c: $dd
    ret                                           ; $6e6d: $c9


    pop de                                        ; $6e6e: $d1
    ld e, d                                       ; $6e6f: $5a
    ld a, b                                       ; $6e70: $78
    ld [$e744], sp                                ; $6e71: $08 $44 $e7
    and a                                         ; $6e74: $a7
    xor $90                                       ; $6e75: $ee $90
    ld sp, hl                                     ; $6e77: $f9
    db $fd                                        ; $6e78: $fd
    ld a, a                                       ; $6e79: $7f
    ld [hl], $64                                  ; $6e7a: $36 $64
    daa                                           ; $6e7c: $27
    cp l                                          ; $6e7d: $bd
    ld h, e                                       ; $6e7e: $63
    ld [hl], $7e                                  ; $6e7f: $36 $7e
    ret z                                         ; $6e81: $c8

    ld c, d                                       ; $6e82: $4a
    ld e, a                                       ; $6e83: $5f
    ld a, [$ffa6]                                 ; $6e84: $fa $a6 $ff
    dec [hl]                                      ; $6e87: $35
    ld e, $24                                     ; $6e88: $1e $24
    ld a, h                                       ; $6e8a: $7c
    rst $38                                       ; $6e8b: $ff
    ld a, [hl+]                                   ; $6e8c: $2a
    dec d                                         ; $6e8d: $15
    dec a                                         ; $6e8e: $3d
    sbc h                                         ; $6e8f: $9c
    ld e, a                                       ; $6e90: $5f
    adc c                                         ; $6e91: $89
    db $ed                                        ; $6e92: $ed
    ld e, d                                       ; $6e93: $5a
    cp [hl]                                       ; $6e94: $be
    or [hl]                                       ; $6e95: $b6
    ld h, h                                       ; $6e96: $64
    call nz, $5f74                                ; $6e97: $c4 $74 $5f
    ld l, e                                       ; $6e9a: $6b
    ld a, [hl-]                                   ; $6e9b: $3a
    ld h, h                                       ; $6e9c: $64
    ld e, h                                       ; $6e9d: $5c
    di                                            ; $6e9e: $f3
    ld [hl-], a                                   ; $6e9f: $32
    ld a, [c]                                     ; $6ea0: $f2
    dec hl                                        ; $6ea1: $2b
    rst $20                                       ; $6ea2: $e7
    ld c, [hl]                                    ; $6ea3: $4e
    jr z, jr_04e_6eb3                             ; $6ea4: $28 $0d

    sbc a                                         ; $6ea6: $9f
    dec a                                         ; $6ea7: $3d
    ld a, d                                       ; $6ea8: $7a
    ld [hl], $d9                                  ; $6ea9: $36 $d9
    ccf                                           ; $6eab: $3f
    ld a, d                                       ; $6eac: $7a
    or $aa                                        ; $6ead: $f6 $aa
    ld [hl], c                                    ; $6eaf: $71
    and a                                         ; $6eb0: $a7
    adc $7a                                       ; $6eb1: $ce $7a

jr_04e_6eb3:
    push af                                       ; $6eb3: $f5
    xor b                                         ; $6eb4: $a8
    pop af                                        ; $6eb5: $f1
    ld h, l                                       ; $6eb6: $65
    cp l                                          ; $6eb7: $bd
    jp c, $9189                                   ; $6eb8: $da $89 $91

    db $ec                                        ; $6ebb: $ec
    pop de                                        ; $6ebc: $d1
    db $10                                        ; $6ebd: $10
    ld bc, $ab4f                                  ; $6ebe: $01 $4f $ab
    cp c                                          ; $6ec1: $b9
    ld d, e                                       ; $6ec2: $53
    cpl                                           ; $6ec3: $2f
    sub e                                         ; $6ec4: $93
    ld a, [de]                                    ; $6ec5: $1a
    or e                                          ; $6ec6: $b3
    call nc, $fe34                                ; $6ec7: $d4 $34 $fe
    rst $38                                       ; $6eca: $ff
    ld a, [de]                                    ; $6ecb: $1a
    cp l                                          ; $6ecc: $bd
    ld l, d                                       ; $6ecd: $6a
    ld a, d                                       ; $6ece: $7a
    sub c                                         ; $6ecf: $91
    sub b                                         ; $6ed0: $90
    dec h                                         ; $6ed1: $25
    ld h, d                                       ; $6ed2: $62
    and e                                         ; $6ed3: $a3
    rst $30                                       ; $6ed4: $f7
    add e                                         ; $6ed5: $83
    ld hl, sp+$35                                 ; $6ed6: $f8 $35
    ld [de], a                                    ; $6ed8: $12
    or d                                          ; $6ed9: $b2
    dec sp                                        ; $6eda: $3b
    ld l, a                                       ; $6edb: $6f
    di                                            ; $6edc: $f3
    ccf                                           ; $6edd: $3f
    ld sp, $5d92                                  ; $6ede: $31 $92 $5d
    cp e                                          ; $6ee1: $bb
    reti                                          ; $6ee2: $d9


    ld c, l                                       ; $6ee3: $4d
    rst $18                                       ; $6ee4: $df
    sbc d                                         ; $6ee5: $9a
    inc e                                         ; $6ee6: $1c
    cp l                                          ; $6ee7: $bd
    ld a, a                                       ; $6ee8: $7f
    ld [hl], h                                    ; $6ee9: $74
    ld [hl], l                                    ; $6eea: $75
    ret z                                         ; $6eeb: $c8

    or d                                          ; $6eec: $b2
    and c                                         ; $6eed: $a1
    ld d, d                                       ; $6eee: $52
    cp l                                          ; $6eef: $bd
    call z, Call_04e_70cf                         ; $6ef0: $cc $cf $70
    ld e, [hl]                                    ; $6ef3: $5e
    adc a                                         ; $6ef4: $8f
    db $10                                        ; $6ef5: $10
    ld h, b                                       ; $6ef6: $60
    jp hl                                         ; $6ef7: $e9


    ld l, h                                       ; $6ef8: $6c
    or d                                          ; $6ef9: $b2
    rra                                           ; $6efa: $1f
    ld e, [hl]                                    ; $6efb: $5e
    cp l                                          ; $6efc: $bd
    ldh [$3c], a                                  ; $6efd: $e0 $3c
    ld a, d                                       ; $6eff: $7a
    ccf                                           ; $6f00: $3f
    adc b                                         ; $6f01: $88
    ld e, a                                       ; $6f02: $5f
    inc hl                                        ; $6f03: $23
    ld hl, $f3bb                                  ; $6f04: $21 $bb $f3
    ld [hl], $ff                                  ; $6f07: $36 $ff
    inc de                                        ; $6f09: $13
    inc hl                                        ; $6f0a: $23
    reti                                          ; $6f0b: $d9


    or l                                          ; $6f0c: $b5
    sbc e                                         ; $6f0d: $9b
    db $dd                                        ; $6f0e: $dd
    db $f4                                        ; $6f0f: $f4
    xor l                                         ; $6f10: $ad
    ld h, l                                       ; $6f11: $65
    ld a, [hl]                                    ; $6f12: $7e
    ld a, [de]                                    ; $6f13: $1a
    rst $38                                       ; $6f14: $ff
    ld a, a                                       ; $6f15: $7f
    sbc [hl]                                      ; $6f16: $9e
    dec c                                         ; $6f17: $0d
    add hl, de                                    ; $6f18: $19
    adc $cf                                       ; $6f19: $ce $cf
    add [hl]                                      ; $6f1b: $86
    ld c, h                                       ; $6f1c: $4c
    dec sp                                        ; $6f1d: $3b
    ld a, d                                       ; $6f1e: $7a
    ld a, [hl-]                                   ; $6f1f: $3a
    cpl                                           ; $6f20: $2f
    ld d, a                                       ; $6f21: $57
    ld d, h                                       ; $6f22: $54
    ld [$4044], sp                                ; $6f23: $08 $44 $40
    ld a, a                                       ; $6f26: $7f
    add sp, -$2f                                  ; $6f27: $e8 $d1
    ld d, d                                       ; $6f29: $52
    jp $9df9                                      ; $6f2a: $c3 $f9 $9d


    db $f4                                        ; $6f2d: $f4
    ld l, b                                       ; $6f2e: $68
    sbc l                                         ; $6f2f: $9d
    sub a                                         ; $6f30: $97
    dec hl                                        ; $6f31: $2b
    ld a, [hl+]                                   ; $6f32: $2a
    ld h, h                                       ; $6f33: $64
    cp c                                          ; $6f34: $b9
    add $fb                                       ; $6f35: $c6 $fb
    add sp, $55                                   ; $6f37: $e8 $55
    dec hl                                        ; $6f39: $2b
    rst $30                                       ; $6f3a: $f7
    add hl, hl                                    ; $6f3b: $29
    ld a, [hl]                                    ; $6f3c: $7e
    ld [de], a                                    ; $6f3d: $12
    dec a                                         ; $6f3e: $3d
    db $ed                                        ; $6f3f: $ed
    ld a, [hl-]                                   ; $6f40: $3a
    call c, $b2d3                                 ; $6f41: $dc $d3 $b2
    ld d, e                                       ; $6f44: $53
    and a                                         ; $6f45: $a7
    ld e, $b3                                     ; $6f46: $1e $b3
    call nc, $3924                                ; $6f48: $d4 $24 $39
    sbc e                                         ; $6f4b: $9b
    push hl                                       ; $6f4c: $e5
    rra                                           ; $6f4d: $1f
    ld hl, $e1e7                                  ; $6f4e: $21 $e7 $e1
    db $e3                                        ; $6f51: $e3
    xor [hl]                                      ; $6f52: $ae
    ld c, b                                       ; $6f53: $48
    sbc $15                                       ; $6f54: $de $15
    ld d, l                                       ; $6f56: $55
    ei                                            ; $6f57: $fb
    ld b, c                                       ; $6f58: $41
    db $fc                                        ; $6f59: $fc
    ld a, [de]                                    ; $6f5a: $1a
    adc c                                         ; $6f5b: $89
    ld e, [hl]                                    ; $6f5c: $5e
    db $fd                                        ; $6f5d: $fd
    sbc a                                         ; $6f5e: $9f
    rst $00                                       ; $6f5f: $c7
    sbc l                                         ; $6f60: $9d
    ld a, d                                       ; $6f61: $7a
    call c, $b3a9                                 ; $6f62: $dc $a9 $b3
    rla                                           ; $6f65: $17
    rst $18                                       ; $6f66: $df
    add hl, sp                                    ; $6f67: $39
    ld a, [hl]                                    ; $6f68: $7e
    add sp, -$2f                                  ; $6f69: $e8 $d1
    db $d3                                        ; $6f6b: $d3
    adc [hl]                                      ; $6f6c: $8e
    ld e, [hl]                                    ; $6f6d: $5e
    add d                                         ; $6f6e: $82
    db $e3                                        ; $6f6f: $e3
    ld bc, $2011                                  ; $6f70: $01 $11 $20
    ld b, h                                       ; $6f73: $44
    push de                                       ; $6f74: $d5
    ld c, d                                       ; $6f75: $4a
    rst $18                                       ; $6f76: $df
    rrca                                          ; $6f77: $0f
    ld [c], a                                     ; $6f78: $e2
    rst $10                                       ; $6f79: $d7
    ld c, b                                       ; $6f7a: $48
    or h                                          ; $6f7b: $b4
    call nc, Call_04e_7e70                        ; $6f7c: $d4 $70 $7e
    ld [hl], $64                                  ; $6f7f: $36 $64
    jp c, $d3d1                                   ; $6f81: $da $d1 $d3

    ld a, c                                       ; $6f84: $79
    cp c                                          ; $6f85: $b9
    and d                                         ; $6f86: $a2
    ld b, d                                       ; $6f87: $42
    add $5d                                       ; $6f88: $c6 $5d
    sub c                                         ; $6f8a: $91
    inc a                                         ; $6f8b: $3c
    ld a, [de]                                    ; $6f8c: $1a
    halt                                          ; $6f8d: $76
    jr c, @+$41                                   ; $6f8e: $38 $3f

    ld a, d                                       ; $6f90: $7a
    db $dd                                        ; $6f91: $dd
    sub a                                         ; $6f92: $97
    ld d, e                                       ; $6f93: $53
    ld e, d                                       ; $6f94: $5a
    ret nc                                        ; $6f95: $d0

    add d                                         ; $6f96: $82
    ld [$e1e7], sp                                ; $6f97: $08 $e7 $e1
    db $d3                                        ; $6f9a: $d3
    xor e                                         ; $6f9b: $ab
    daa                                           ; $6f9c: $27
    cp h                                          ; $6f9d: $bc
    inc l                                         ; $6f9e: $2c
    dec de                                        ; $6f9f: $1b
    cp d                                          ; $6fa0: $ba
    ld e, h                                       ; $6fa1: $5c
    dec hl                                        ; $6fa2: $2b
    rst $30                                       ; $6fa3: $f7
    push de                                       ; $6fa4: $d5
    rst $38                                       ; $6fa5: $ff
    dec [hl]                                      ; $6fa6: $35
    xor $d4                                       ; $6fa7: $ee $d4
    reti                                          ; $6fa9: $d9


    adc e                                         ; $6faa: $8b
    rst $28                                       ; $6fab: $ef
    inc e                                         ; $6fac: $1c
    ccf                                           ; $6fad: $3f
    db $f4                                        ; $6fae: $f4
    ld l, b                                       ; $6faf: $68
    xor c                                         ; $6fb0: $a9
    cp h                                          ; $6fb1: $bc
    rra                                           ; $6fb2: $1f
    call nz, $91af                                ; $6fb3: $c4 $af $91
    add sp, $69                                   ; $6fb6: $e8 $69
    db $fc                                        ; $6fb8: $fc
    rst $38                                       ; $6fb9: $ff
    ld a, c                                       ; $6fba: $79
    jr c, @+$41                                   ; $6fbb: $38 $3f

    adc [hl]                                      ; $6fbd: $8e
    ld a, c                                       ; $6fbe: $79
    or h                                          ; $6fbf: $b4
    adc l                                         ; $6fc0: $8d
    jp hl                                         ; $6fc1: $e9


    cp h                                          ; $6fc2: $bc
    ld e, h                                       ; $6fc3: $5c
    ld d, c                                       ; $6fc4: $51
    ld hl, $2933                                  ; $6fc5: $21 $33 $29
    ld l, l                                       ; $6fc8: $6d
    ld [de], a                                    ; $6fc9: $12
    call Call_04e_443b                            ; $6fca: $cd $3b $44
    add b                                         ; $6fcd: $80
    cp $af                                        ; $6fce: $fe $af
    ld [hl], c                                    ; $6fd0: $71
    and a                                         ; $6fd1: $a7
    adc $5e                                       ; $6fd2: $ce $5e
    ld a, h                                       ; $6fd4: $7c
    rst $20                                       ; $6fd5: $e7
    ld hl, sp-$5f                                 ; $6fd6: $f8 $a1
    ld b, a                                       ; $6fd8: $47
    ld c, e                                       ; $6fd9: $4b
    push hl                                       ; $6fda: $e5
    db $fd                                        ; $6fdb: $fd
    jr nz, jr_04e_705c                            ; $6fdc: $20 $7e

    adc l                                         ; $6fde: $8d
    ld b, h                                       ; $6fdf: $44
    ld c, a                                       ; $6fe0: $4f
    db $e3                                        ; $6fe1: $e3
    rst $38                                       ; $6fe2: $ff
    rst $08                                       ; $6fe3: $cf
    jp $d9f9                                      ; $6fe4: $c3 $f9 $d9


    ret c                                         ; $6fe7: $d8

    ccf                                           ; $6fe8: $3f
    ld d, h                                       ; $6fe9: $54
    rst $00                                       ; $6fea: $c7
    ld [hl], h                                    ; $6feb: $74
    ld e, [hl]                                    ; $6fec: $5e
    xor [hl]                                      ; $6fed: $ae
    xor b                                         ; $6fee: $a8
    ld l, d                                       ; $6fef: $6a
    add hl, hl                                    ; $6ff0: $29
    adc b                                         ; $6ff1: $88
    nop                                           ; $6ff2: $00
    adc a                                         ; $6ff3: $8f
    ld c, e                                       ; $6ff4: $4b
    adc l                                         ; $6ff5: $8d
    cp e                                          ; $6ff6: $bb
    add hl, hl                                    ; $6ff7: $29
    or d                                          ; $6ff8: $b2
    ld c, $5b                                     ; $6ff9: $0e $5b
    jp $e9f9                                      ; $6ffb: $c3 $f9 $e9


    rst $30                                       ; $6ffe: $f7
    sub e                                         ; $6fff: $93
    jp c, $e20f                                   ; $7000: $da $0f $e2

    rst $10                                       ; $7003: $d7
    ld c, b                                       ; $7004: $48
    db $f4                                        ; $7005: $f4
    sbc b                                         ; $7006: $98
    and l                                         ; $7007: $a5
    and [hl]                                      ; $7008: $a6
    sub l                                         ; $7009: $95
    adc l                                         ; $700a: $8d
    xor c                                         ; $700b: $a9
    db $10                                        ; $700c: $10
    ld b, e                                       ; $700d: $43
    ld d, a                                       ; $700e: $57
    xor $f3                                       ; $700f: $ee $f3
    db $eb                                        ; $7011: $eb
    ld e, [hl]                                    ; $7012: $5e
    jp $95f9                                      ; $7013: $c3 $f9 $95


    db $e4                                        ; $7016: $e4
    ld e, a                                       ; $7017: $5f
    ld a, [hl+]                                   ; $7018: $2a
    ld a, e                                       ; $7019: $7b
    jp hl                                         ; $701a: $e9


    cp a                                          ; $701b: $bf
    ld h, h                                       ; $701c: $64
    ld [hl], a                                    ; $701d: $77
    pop af                                        ; $701e: $f1
    ld b, e                                       ; $701f: $43
    rst $10                                       ; $7020: $d7
    add d                                         ; $7021: $82
    jp nc, $bcf0                                  ; $7022: $d2 $f0 $bc

    ld a, h                                       ; $7025: $7c
    db $fc                                        ; $7026: $fc
    sbc a                                         ; $7027: $9f
    ld c, c                                       ; $7028: $49
    pop hl                                        ; $7029: $e1
    cp c                                          ; $702a: $b9
    inc de                                        ; $702b: $13
    ld a, [bc]                                    ; $702c: $0a
    ld de, $4420                                  ; $702d: $11 $20 $44
    add l                                         ; $7030: $85
    xor h                                         ; $7031: $ac
    db $f4                                        ; $7032: $f4
    db $fd                                        ; $7033: $fd
    jr nz, jr_04e_70b4                            ; $7034: $20 $7e

    adc l                                         ; $7036: $8d
    ld b, h                                       ; $7037: $44
    ld c, e                                       ; $7038: $4b
    dec c                                         ; $7039: $0d
    rst $20                                       ; $703a: $e7
    ld h, a                                       ; $703b: $67
    ld b, e                                       ; $703c: $43
    and [hl]                                      ; $703d: $a6
    dec e                                         ; $703e: $1d
    dec a                                         ; $703f: $3d
    sbc l                                         ; $7040: $9d
    sub a                                         ; $7041: $97
    dec hl                                        ; $7042: $2b
    ld a, [hl+]                                   ; $7043: $2a
    ld h, h                                       ; $7044: $64
    sbc a                                         ; $7045: $9f
    rst $30                                       ; $7046: $f7
    add sp, -$5b                                  ; $7047: $e8 $a5
    add e                                         ; $7049: $83
    sub h                                         ; $704a: $94
    jr c, jr_04e_7091                             ; $704b: $38 $44

    adc a                                         ; $704d: $8f
    ld c, e                                       ; $704e: $4b
    xor l                                         ; $704f: $ad
    call nz, Call_04e_57ab                        ; $7050: $c4 $ab $57
    xor $b3                                       ; $7053: $ee $b3
    pop hl                                        ; $7055: $e1
    cp e                                          ; $7056: $bb
    ld [c], a                                     ; $7057: $e2
    ld sp, $ff8d                                  ; $7058: $31 $8d $ff
    ccf                                           ; $705b: $3f

jr_04e_705c:
    ld c, a                                       ; $705c: $4f
    ld a, b                                       ; $705d: $78
    push de                                       ; $705e: $d5
    or l                                          ; $705f: $b5
    rra                                           ; $7060: $1f
    call nz, $91af                                ; $7061: $c4 $af $91
    add sp, $71                                   ; $7064: $e8 $71
    and a                                         ; $7066: $a7
    ld e, $77                                     ; $7067: $1e $77
    ld [$c5ec], a                                 ; $7069: $ea $ec $c5
    ld [hl], a                                    ; $706c: $77
    adc [hl]                                      ; $706d: $8e
    rra                                           ; $706e: $1f
    ld a, d                                       ; $706f: $7a
    db $f4                                        ; $7070: $f4
    or h                                          ; $7071: $b4
    and e                                         ; $7072: $a3
    sub a                                         ; $7073: $97
    ldh [$78], a                                  ; $7074: $e0 $78
    ld b, b                                       ; $7076: $40
    inc b                                         ; $7077: $04
    ldh [$3a], a                                  ; $7078: $e0 $3a
    cp b                                          ; $707a: $b8
    jr nz, jr_04e_709b                            ; $707b: $20 $1e

    or d                                          ; $707d: $b2
    dec sp                                        ; $707e: $3b
    ld a, d                                       ; $707f: $7a
    db $dd                                        ; $7080: $dd
    rla                                           ; $7081: $17
    ccf                                           ; $7082: $3f
    ld [hl], h                                    ; $7083: $74
    dec l                                         ; $7084: $2d
    add sp, $72                                   ; $7085: $e8 $72
    xor l                                         ; $7087: $ad
    call c, Call_000_2cc7                         ; $7088: $dc $c7 $2c
    or l                                          ; $708b: $b5
    ld c, h                                       ; $708c: $4c
    sub d                                         ; $708d: $92
    rst $38                                       ; $708e: $ff
    ld h, e                                       ; $708f: $63
    adc d                                         ; $7090: $8a

jr_04e_7091:
    sbc a                                         ; $7091: $9f
    ld b, h                                       ; $7092: $44
    rst $08                                       ; $7093: $cf
    rst $28                                       ; $7094: $ef
    rst $38                                       ; $7095: $ff
    and e                                         ; $7096: $a3
    ld d, a                                       ; $7097: $57
    ld b, [hl]                                    ; $7098: $46
    ld a, [hl]                                    ; $7099: $7e
    push hl                                       ; $709a: $e5

jr_04e_709b:
    inc c                                         ; $709b: $0c
    rst $30                                       ; $709c: $f7
    ld d, b                                       ; $709d: $50
    ld [hl-], a                                   ; $709e: $32
    jp z, $8f67                                   ; $709f: $ca $67 $8f

    ld l, c                                       ; $70a2: $69
    dec [hl]                                      ; $70a3: $35
    ld a, [de]                                    ; $70a4: $1a
    ld d, d                                       ; $70a5: $52
    ld a, $89                                     ; $70a6: $3e $89
    and $4e                                       ; $70a8: $e6 $4e
    dec a                                         ; $70aa: $3d
    rst $28                                       ; $70ab: $ef
    jp nz, $d371                                  ; $70ac: $c2 $71 $d3

    ld d, d                                       ; $70af: $52
    db $10                                        ; $70b0: $10
    ld bc, $ef4f                                  ; $70b1: $01 $4f $ef

jr_04e_70b4:
    cp b                                          ; $70b4: $b8
    ld d, e                                       ; $70b5: $53
    ld h, a                                       ; $70b6: $67
    cpl                                           ; $70b7: $2f
    cp [hl]                                       ; $70b8: $be
    ld [hl], e                                    ; $70b9: $73
    db $fc                                        ; $70ba: $fc
    ret nc                                        ; $70bb: $d0

    and e                                         ; $70bc: $a3
    ld b, a                                       ; $70bd: $47
    inc c                                         ; $70be: $0c
    and l                                         ; $70bf: $a5
    pop de                                        ; $70c0: $d1
    cp e                                          ; $70c1: $bb
    ld [c], a                                     ; $70c2: $e2
    or c                                          ; $70c3: $b1
    ld [hl], d                                    ; $70c4: $72
    sbc a                                         ; $70c5: $9f

Call_04e_70c6:
    ld d, [hl]                                    ; $70c6: $56
    ei                                            ; $70c7: $fb
    ld b, c                                       ; $70c8: $41
    db $fc                                        ; $70c9: $fc
    ld a, [de]                                    ; $70ca: $1a
    adc c                                         ; $70cb: $89
    ld e, $ce                                     ; $70cc: $1e $ce
    rst $08                                       ; $70ce: $cf

Call_04e_70cf:
    add [hl]                                      ; $70cf: $86
    ld c, h                                       ; $70d0: $4c
    dec sp                                        ; $70d1: $3b
    ld a, d                                       ; $70d2: $7a
    ld a, [hl-]                                   ; $70d3: $3a
    cpl                                           ; $70d4: $2f
    ld d, a                                       ; $70d5: $57

Jump_04e_70d6:
    ld d, h                                       ; $70d6: $54
    ret z                                         ; $70d7: $c8

    ld [hl], b                                    ; $70d8: $70
    ld a, [hl]                                    ; $70d9: $7e
    rst $38                                       ; $70da: $ff
    db $10                                        ; $70db: $10
    dec d                                         ; $70dc: $15
    db $10                                        ; $70dd: $10
    ld bc, $7a98                                  ; $70de: $01 $98 $7a
    ld e, h                                       ; $70e1: $5c
    ld [hl+], a                                   ; $70e2: $22
    call nz, $11af                                ; $70e3: $c4 $af $11
    adc b                                         ; $70e6: $88
    nop                                           ; $70e7: $00
    ld h, b                                       ; $70e8: $60
    adc l                                         ; $70e9: $8d
    ld sp, $0b67                                  ; $70ea: $31 $67 $0b
    ld e, c                                       ; $70ed: $59
    ld a, $f9                                     ; $70ee: $3e $f9
    cp $f5                                        ; $70f0: $fe $f5
    sub b                                         ; $70f2: $90

Jump_04e_70f3:
    ld [hl], c                                    ; $70f3: $71

Call_04e_70f4:
    and a                                         ; $70f4: $a7
    adc $7e                                       ; $70f5: $ce $7e
    di                                            ; $70f7: $f3
    ld [hl], b                                    ; $70f8: $70
    ld a, [hl]                                    ; $70f9: $7e
    ld a, [$e6a1]                                 ; $70fa: $fa $a1 $e6
    rst $30                                       ; $70fd: $f7
    rst $38                                       ; $70fe: $ff
    db $fd                                        ; $70ff: $fd
    jr nz, jr_04e_7180                            ; $7100: $20 $7e

    adc l                                         ; $7102: $8d
    add h                                         ; $7103: $84
    or b                                          ; $7104: $b0
    rst $18                                       ; $7105: $df
    db $d3                                        ; $7106: $d3
    ld l, d                                       ; $7107: $6a
    rst $18                                       ; $7108: $df
    pop de                                        ; $7109: $d1
    db $d3                                        ; $710a: $d3
    ld c, d                                       ; $710b: $4a
    add [hl]                                      ; $710c: $86
    di                                            ; $710d: $f3
    db $d3                                        ; $710e: $d3
    rrca                                          ; $710f: $0f
    push af                                       ; $7110: $f5
    ld [$8f01], sp                                ; $7111: $08 $01 $8f
    ld c, e                                       ; $7114: $4b
    dec l                                         ; $7115: $2d
    ld a, e                                       ; $7116: $7b
    daa                                           ; $7117: $27
    ld [c], a                                     ; $7118: $e2
    push de                                       ; $7119: $d5
    cp e                                          ; $711a: $bb
    or e                                          ; $711b: $b3
    ld d, a                                       ; $711c: $57
    sbc l                                         ; $711d: $9d
    dec c                                         ; $711e: $0d
    ld e, h                                       ; $711f: $5c
    add h                                         ; $7120: $84
    ld e, $19                                     ; $7121: $1e $19
    ld [hl+], a                                   ; $7123: $22
    rst $20                                       ; $7124: $e7
    db $fc                                        ; $7125: $fc
    ld c, b                                       ; $7126: $48
    ld c, c                                       ; $7127: $49
    ld h, $31                                     ; $7128: $26 $31
    ld h, [hl]                                    ; $712a: $66
    xor c                                         ; $712b: $a9
    ld h, l                                       ; $712c: $65
    ld d, d                                       ; $712d: $52
    ld d, e                                       ; $712e: $53
    ld sp, $d57b                                  ; $712f: $31 $7b $d5
    add h                                         ; $7132: $84
    rst $30                                       ; $7133: $f7
    reti                                          ; $7134: $d9


    ld h, h                                       ; $7135: $64
    ld d, a                                       ; $7136: $57
    inc a                                         ; $7137: $3c
    ld b, [hl]                                    ; $7138: $46
    ld c, d                                       ; $7139: $4a
    sub [hl]                                      ; $713a: $96
    cp l                                          ; $713b: $bd
    inc de                                        ; $713c: $13
    pop af                                        ; $713d: $f1
    jp c, Jump_000_0885                           ; $713e: $da $85 $08

    add b                                         ; $7141: $80
    inc a                                         ; $7142: $3c
    and l                                         ; $7143: $a5
    add hl, de                                    ; $7144: $19
    inc bc                                        ; $7145: $03
    ld hl, $669c                                  ; $7146: $21 $9c $66
    or d                                          ; $7149: $b2
    ld b, e                                       ; $714a: $43
    ld [$c807], sp                                ; $714b: $08 $07 $c8
    ld d, e                                       ; $714e: $53
    sbc d                                         ; $714f: $9a
    ld sp, $4210                                  ; $7150: $31 $10 $42
    inc b                                         ; $7153: $04
    rrca                                          ; $7154: $0f
    ld sp, $a62d                                  ; $7155: $31 $2d $a6
    push bc                                       ; $7158: $c5

jr_04e_7159:
    or h                                          ; $7159: $b4
    add b                                         ; $715a: $80
    db $10                                        ; $715b: $10
    ld b, d                                       ; $715c: $42
    inc b                                         ; $715d: $04
    add b                                         ; $715e: $80
    inc a                                         ; $715f: $3c
    and l                                         ; $7160: $a5
    add hl, de                                    ; $7161: $19
    ld [hl], e                                    ; $7162: $73
    ld [hl], $ae                                  ; $7163: $36 $ae
    adc a                                         ; $7165: $8f
    ld a, h                                       ; $7166: $7c
    ld [hl], $ae                                  ; $7167: $36 $ae
    adc a                                         ; $7169: $8f
    inc c                                         ; $716a: $0c
    ld hl, $a044                                  ; $716b: $21 $44 $a0
    ld e, a                                       ; $716e: $5f
    ld b, $fd                                     ; $716f: $06 $fd
    ld [hl-], a                                   ; $7171: $32
    add sp, $1e                                   ; $7172: $e8 $1e
    jr c, jr_04e_7159                             ; $7174: $38 $e3

    ld e, $7d                                     ; $7176: $1e $7d
    ld [hl], $ca                                  ; $7178: $36 $ca
    rst $30                                       ; $717a: $f7
    ld l, h                                       ; $717b: $6c
    or d                                          ; $717c: $b2
    dec hl                                        ; $717d: $2b
    ld e, $4b                                     ; $717e: $1e $4b

jr_04e_7180:
    ld [hl], a                                    ; $7180: $77
    dec a                                         ; $7181: $3d
    ld b, d                                       ; $7182: $42
    ld h, b                                       ; $7183: $60
    add d                                         ; $7184: $82
    ld a, c                                       ; $7185: $79
    ld [hl], $70                                  ; $7186: $36 $70
    ld de, $e47a                                  ; $7188: $11 $7a $e4
    db $fd                                        ; $718b: $fd
    or d                                          ; $718c: $b2
    ld sp, $9266                                  ; $718d: $31 $66 $92
    ld a, l                                       ; $7190: $7d
    ld hl, $4ee3                                  ; $7191: $21 $e3 $4e
    db $ed                                        ; $7194: $ed
    ld l, l                                       ; $7195: $6d
    cp $97                                        ; $7196: $fe $97
    dec hl                                        ; $7198: $2b
    ld l, d                                       ; $7199: $6a
    jr c, jr_04e_71db                             ; $719a: $38 $3f

    ld a, d                                       ; $719c: $7a
    dec d                                         ; $719d: $15
    inc e                                         ; $719e: $1c
    jr nz, @+$51                                  ; $719f: $20 $4f

    ld l, c                                       ; $71a1: $69
    add $9c                                       ; $71a2: $c6 $9c
    dec l                                         ; $71a4: $2d
    set 4, l                                      ; $71a5: $cb $e5
    jr c, @+$0a                                   ; $71a7: $38 $08

    ld hl, $a002                                  ; $71a9: $21 $02 $a0
    ld e, a                                       ; $71ac: $5f
    ld b, $fd                                     ; $71ad: $06 $fd
    ld [hl-], a                                   ; $71af: $32
    add sp, -$50                                  ; $71b0: $e8 $b0
    di                                            ; $71b2: $f3
    ld [de], a                                    ; $71b3: $12
    ld [de], a                                    ; $71b4: $12
    jp Jump_04e_65f9                              ; $71b5: $c3 $f9 $65


    ld d, $c5                                     ; $71b8: $16 $c5
    db $dd                                        ; $71ba: $dd
    ret nc                                        ; $71bb: $d0

    sub b                                         ; $71bc: $90
    ld h, l                                       ; $71bd: $65
    sub d                                         ; $71be: $92
    db $fc                                        ; $71bf: $fc
    rra                                           ; $71c0: $1f
    ld h, e                                       ; $71c1: $63
    sub [hl]                                      ; $71c2: $96
    sbc d                                         ; $71c3: $9a
    cp d                                          ; $71c4: $ba
    add hl, sp                                    ; $71c5: $39
    rst $10                                       ; $71c6: $d7
    jp z, Jump_000_367d                           ; $71c7: $ca $7d $36

    ld e, c                                       ; $71ca: $59
    di                                            ; $71cb: $f3
    and h                                         ; $71cc: $a4
    ld a, h                                       ; $71cd: $7c
    adc c                                         ; $71ce: $89
    adc a                                         ; $71cf: $8f
    dec sp                                        ; $71d0: $3b
    push af                                       ; $71d1: $f5
    ld b, b                                       ; $71d2: $40
    daa                                           ; $71d3: $27
    xor c                                         ; $71d4: $a9
    inc h                                         ; $71d5: $24
    rrca                                          ; $71d6: $0f
    sub b                                         ; $71d7: $90
    dec e                                         ; $71d8: $1d
    sbc b                                         ; $71d9: $98

Jump_04e_71da:
    ld c, d                                       ; $71da: $4a

jr_04e_71db:
    ld [hl], d                                    ; $71db: $72
    inc h                                         ; $71dc: $24
    inc d                                         ; $71dd: $14
    ld b, d                                       ; $71de: $42
    ld hl, sp-$1c                                 ; $71df: $f8 $e4
    push hl                                       ; $71e1: $e5
    daa                                           ; $71e2: $27
    cpl                                           ; $71e3: $2f
    ccf                                           ; $71e4: $3f
    pop bc                                        ; $71e5: $c1
    ld c, a                                       ; $71e6: $4f
    add h                                         ; $71e7: $84
    dec sp                                        ; $71e8: $3b
    ld [hl], l                                    ; $71e9: $75
    cp d                                          ; $71ea: $ba
    ld b, h                                       ; $71eb: $44
    ld [c], a                                     ; $71ec: $e2
    rst $20                                       ; $71ed: $e7
    db $10                                        ; $71ee: $10
    or $08                                        ; $71ef: $f6 $08
    ret nz                                        ; $71f1: $c0

    ld a, [$8e38]                                 ; $71f2: $fa $38 $8e
    call z, $011e                                 ; $71f5: $cc $1e $01
    ld b, b                                       ; $71f8: $40
    add hl, de                                    ; $71f9: $19
    rla                                           ; $71fa: $17
    ld [hl], c                                    ; $71fb: $71
    cp b                                          ; $71fc: $b8
    di                                            ; $71fd: $f3
    sub a                                         ; $71fe: $97
    rst $08                                       ; $71ff: $cf
    ld e, a                                       ; $7200: $5f
    ld a, $0f                                     ; $7201: $3e $0f
    sbc a                                         ; $7203: $9f
    halt                                          ; $7204: $76
    db $f4                                        ; $7205: $f4
    ld c, b                                       ; $7206: $48
    rra                                           ; $7207: $1f
    ld a, d                                       ; $7208: $7a
    db $f4                                        ; $7209: $f4
    jp nz, Jump_000_197d                          ; $720a: $c2 $7d $19

    adc a                                         ; $720d: $8f
    call nc, $9fad                                ; $720e: $d4 $ad $9f
    ldh [$b8], a                                  ; $7211: $e0 $b8
    db $ed                                        ; $7213: $ed
    ld d, d                                       ; $7214: $52
    res 0, [hl]                                   ; $7215: $cb $86
    adc [hl]                                      ; $7217: $8e
    ld e, c                                       ; $7218: $59
    ld l, d                                       ; $7219: $6a
    ld h, d                                       ; $721a: $62
    sbc d                                         ; $721b: $9a
    sub $f7                                       ; $721c: $d6 $f7
    and l                                         ; $721e: $a5
    xor e                                         ; $721f: $ab
    ld l, e                                       ; $7220: $6b
    sbc c                                         ; $7221: $99

jr_04e_7222:
    inc h                                         ; $7222: $24
    rst $38                                       ; $7223: $ff
    rst $00                                       ; $7224: $c7
    ld d, h                                       ; $7225: $54
    inc l                                         ; $7226: $2c
    ld h, h                                       ; $7227: $64
    inc [hl]                                      ; $7228: $34
    ld a, d                                       ; $7229: $7a
    call c, $dccb                                 ; $722a: $dc $cb $dc
    set 3, h                                      ; $722d: $cb $dc
    xor c                                         ; $722f: $a9
    cp c                                          ; $7230: $b9
    dec hl                                        ; $7231: $2b
    ld h, l                                       ; $7232: $65
    rla                                           ; $7233: $17
    ccf                                           ; $7234: $3f
    db $f4                                        ; $7235: $f4
    or e                                          ; $7236: $b3
    pop de                                        ; $7237: $d1
    sub b                                         ; $7238: $90
    dec b                                         ; $7239: $05
    rst $20                                       ; $723a: $e7
    pop de                                        ; $723b: $d1
    reti                                          ; $723c: $d9


    ret nc                                        ; $723d: $d0

    reti                                          ; $723e: $d9


    ld h, h                                       ; $723f: $64
    ld b, a                                       ; $7240: $47
    rst $28                                       ; $7241: $ef
    pop hl                                        ; $7242: $e1
    push hl                                       ; $7243: $e5
    add a                                         ; $7244: $87
    sub a                                         ; $7245: $97
    rra                                           ; $7246: $1f
    xor d                                         ; $7247: $aa
    sbc e                                         ; $7248: $9b
    dec [hl]                                      ; $7249: $35
    ld [hl], b                                    ; $724a: $70
    add $3d                                       ; $724b: $c6 $3d
    ld a, [de]                                    ; $724d: $1a
    ld b, d                                       ; $724e: $42
    adc b                                         ; $724f: $88
    nop                                           ; $7250: $00
    ld c, a                                       ; $7251: $4f
    set 5, [hl]                                   ; $7252: $cb $ee
    add sp, -$27                                  ; $7254: $e8 $d9
    ldh a, [rBGP]                                 ; $7256: $f0 $47
    ld a, e                                       ; $7258: $7b
    ld [hl+], a                                   ; $7259: $22
    sub a                                         ; $725a: $97
    db $e3                                        ; $725b: $e3
    jr nz, jr_04e_7260                            ; $725c: $20 $02

    rrca                                          ; $725e: $0f
    rst $10                                       ; $725f: $d7

jr_04e_7260:
    cp l                                          ; $7260: $bd
    ld b, [hl]                                    ; $7261: $46
    ld e, a                                       ; $7262: $5f
    and [hl]                                      ; $7263: $a6
    cpl                                           ; $7264: $2f
    ld d, e                                       ; $7265: $53
    db $e3                                        ; $7266: $e3

Jump_04e_7267:
    jp hl                                         ; $7267: $e9


    ret z                                         ; $7268: $c8

    cpl                                           ; $7269: $2f
    db $eb                                        ; $726a: $eb
    ld b, a                                       ; $726b: $47
    inc sp                                        ; $726c: $33
    db $e3                                        ; $726d: $e3
    rst $20                                       ; $726e: $e7
    db $10                                        ; $726f: $10
    jr c, jr_04e_7222                             ; $7270: $38 $b0

    add hl, hl                                    ; $7272: $29
    ld l, l                                       ; $7273: $6d
    sbc c                                         ; $7274: $99
    or b                                          ; $7275: $b0
    call nz, $ecd6                                ; $7276: $c4 $d6 $ec
    ld d, l                                       ; $7279: $55
    db $10                                        ; $727a: $10
    jp nz, $c13d                                  ; $727b: $c2 $3d $c1

    ld c, a                                       ; $727e: $4f
    add h                                         ; $727f: $84
    dec sp                                        ; $7280: $3b
    ld [hl], l                                    ; $7281: $75
    cp d                                          ; $7282: $ba
    ld b, h                                       ; $7283: $44
    ld [c], a                                     ; $7284: $e2
    rst $20                                       ; $7285: $e7
    sub b                                         ; $7286: $90
    xor c                                         ; $7287: $a9
    ld d, e                                       ; $7288: $53
    rst $08                                       ; $7289: $cf
    ld e, [hl]                                    ; $728a: $5e
    or l                                          ; $728b: $b5
    db $fc                                        ; $728c: $fc
    ld [hl], d                                    ; $728d: $72
    ld a, [hl]                                    ; $728e: $7e
    add hl, sp                                    ; $728f: $39
    db $eb                                        ; $7290: $eb
    and l                                         ; $7291: $a5
    xor d                                         ; $7292: $aa
    ld h, e                                       ; $7293: $63
    ld h, $a5                                     ; $7294: $26 $a5
    dec l                                         ; $7296: $2d
    db $eb                                        ; $7297: $eb
    and l                                         ; $7298: $a5
    xor d                                         ; $7299: $aa
    ld h, e                                       ; $729a: $63
    ld a, [hl]                                    ; $729b: $7e
    rst $38                                       ; $729c: $ff
    rst $08                                       ; $729d: $cf
    or e                                          ; $729e: $b3
    ret                                           ; $729f: $c9


    add sp, -$35                                  ; $72a0: $e8 $cb
    db $f4                                        ; $72a2: $f4
    ld h, l                                       ; $72a3: $65
    jp z, $8f67                                   ; $72a4: $ca $67 $8f

    db $fd                                        ; $72a7: $fd
    xor e                                         ; $72a8: $ab
    ld d, h                                       ; $72a9: $54
    call $ffef                                    ; $72aa: $cd $ef $ff
    res 0, a                                      ; $72ad: $cb $87
    xor b                                         ; $72af: $a8
    inc c                                         ; $72b0: $0c
    ld de, $c9e7                                  ; $72b1: $11 $e7 $c9
    or h                                          ; $72b4: $b4
    db $eb                                        ; $72b5: $eb
    ld e, [hl]                                    ; $72b6: $5e
    cp l                                          ; $72b7: $bd
    dec hl                                        ; $72b8: $2b
    ld a, [hl+]                                   ; $72b9: $2a
    ld h, h                                       ; $72ba: $64
    db $f4                                        ; $72bb: $f4
    ld h, l                                       ; $72bc: $65
    ld a, [$3532]                                 ; $72bd: $fa $32 $35
    sbc [hl]                                      ; $72c0: $9e
    adc [hl]                                      ; $72c1: $8e
    xor h                                         ; $72c2: $ac
    rra                                           ; $72c3: $1f
    call $9f8c                                    ; $72c4: $cd $8c $9f
    ld h, e                                       ; $72c7: $63
    jp c, $bbd1                                   ; $72c8: $da $d1 $bb

    ld [hl+], a                                   ; $72cb: $22
    ld [hl], c                                    ; $72cc: $71
    or [hl]                                       ; $72cd: $b6
    add a                                         ; $72ce: $87
    ld [$b166], a                                 ; $72cf: $ea $66 $b1

Call_04e_72d2:
    ld b, a                                       ; $72d2: $47
    adc a                                         ; $72d3: $8f
    ld c, e                                       ; $72d4: $4b
    ld b, c                                       ; $72d5: $41
    ld [$df29], sp                                ; $72d6: $08 $29 $df
    cp e                                          ; $72d9: $bb
    ld [c], a                                     ; $72da: $e2
    ld bc, $cc21                                  ; $72db: $01 $21 $cc
    ld b, a                                       ; $72de: $47
    ld h, a                                       ; $72df: $67
    ld [hl], d                                    ; $72e0: $72
    cp a                                          ; $72e1: $bf
    cpl                                           ; $72e2: $2f
    db $dd                                        ; $72e3: $dd
    dec b                                         ; $72e4: $05
    ld hl, $2044                                  ; $72e5: $21 $44 $20
    rrca                                          ; $72e8: $0f
    sub c                                         ; $72e9: $91
    inc a                                         ; $72ea: $3c
    dec de                                        ; $72eb: $1b
    cp [hl]                                       ; $72ec: $be
    db $f4                                        ; $72ed: $f4
    pop hl                                        ; $72ee: $e1
    sbc $f1                                       ; $72ef: $de $f1
    ld l, b                                       ; $72f1: $68
    rst $20                                       ; $72f2: $e7
    ret                                           ; $72f3: $c9


    ld [hl-], a                                   ; $72f4: $32
    xor a                                         ; $72f5: $af
    sub $97                                       ; $72f6: $d6 $97
    ld hl, sp+$55                                 ; $72f8: $f8 $55
    ld a, $cb                                     ; $72fa: $3e $cb
    rst $38                                       ; $72fc: $ff
    xor e                                         ; $72fd: $ab
    sub [hl]                                      ; $72fe: $96

Call_04e_72ff:
    ld hl, sp-$1c                                 ; $72ff: $f8 $e4
    add sp, -$27                                  ; $7301: $e8 $d9
    jr jr_04e_7336                                ; $7303: $18 $31

    ld [hl], h                                    ; $7305: $74
    ld d, a                                       ; $7306: $57
    ld b, [hl]                                    ; $7307: $46
    jp Jump_04e_5ece                              ; $7308: $c3 $ce $5e


    dec b                                         ; $730b: $05
    ld de, $4b8f                                  ; $730c: $11 $8f $4b
    ld c, l                                       ; $730f: $4d
    xor e                                         ; $7310: $ab
    ld e, $c7                                     ; $7311: $1e $c7
    cp e                                          ; $7313: $bb
    rst $28                                       ; $7314: $ef
    add hl, bc                                    ; $7315: $09
    ld a, [hl]                                    ; $7316: $7e
    ld [hl+], a                                   ; $7317: $22
    call c, Call_04e_5fa9                         ; $7318: $dc $a9 $5f
    ld c, [hl]                                    ; $731b: $4e
    sub a                                         ; $731c: $97
    ld c, b                                       ; $731d: $48
    db $fc                                        ; $731e: $fc
    inc e                                         ; $731f: $1c
    ld [bc], a                                    ; $7320: $02
    rst $30                                       ; $7321: $f7
    ld b, h                                       ; $7322: $44
    ld l, $c7                                     ; $7323: $2e $c7
    pop bc                                        ; $7325: $c1
    add c                                         ; $7326: $81
    ld l, e                                       ; $7327: $6b
    jp $ce45                                      ; $7328: $c3 $45 $ce


    and [hl]                                      ; $732b: $a6
    rlca                                          ; $732c: $07
    ld a, $b9                                     ; $732d: $3e $b9
    db $dd                                        ; $732f: $dd
    pop af                                        ; $7330: $f1
    rst $38                                       ; $7331: $ff
    ld [hl-], a                                   ; $7332: $32
    cp c                                          ; $7333: $b9
    add hl, hl                                    ; $7334: $29
    ld d, d                                       ; $7335: $52

jr_04e_7336:
    ld [hl], $96                                  ; $7336: $36 $96
    ld hl, sp-$18                                 ; $7338: $f8 $e8
    ld d, l                                       ; $733a: $55
    dec bc                                        ; $733b: $0b
    adc $a3                                       ; $733c: $ce $a3
    ld b, a                                       ; $733e: $47
    adc l                                         ; $733f: $8d
    and a                                         ; $7340: $a7
    inc hl                                        ; $7341: $23
    cp a                                          ; $7342: $bf
    xor h                                         ; $7343: $ac
    rra                                           ; $7344: $1f
    call $9f8c                                    ; $7345: $cd $8c $9f
    ld b, e                                       ; $7348: $43
    ldh [$80], a                                  ; $7349: $e0 $80
    push af                                       ; $734b: $f5
    sub c                                         ; $734c: $91
    pop hl                                        ; $734d: $e1
    ld b, b                                       ; $734e: $40
    sub [hl]                                      ; $734f: $96
    call z, $d326                                 ; $7350: $cc $26 $d3
    sbc b                                         ; $7353: $98
    rst $00                                       ; $7354: $c7
    rst $00                                       ; $7355: $c7
    ld l, e                                       ; $7356: $6b
    db $f4                                        ; $7357: $f4
    xor d                                         ; $7358: $aa
    ld b, a                                       ; $7359: $47
    ld [$6b18], sp                                ; $735a: $08 $18 $6b
    ld [hl], $64                                  ; $735d: $36 $64
    jp c, $c3d1                                   ; $735f: $da $d1 $c3

    ld a, h                                       ; $7362: $7c
    sub l                                         ; $7363: $95
    ld a, [bc]                                    ; $7364: $0a
    ld h, c                                       ; $7365: $61
    inc d                                         ; $7366: $14
    rst $18                                       ; $7367: $df
    jp c, $a566                                   ; $7368: $da $66 $a5

jr_04e_736b:
    ld c, b                                       ; $736b: $48
    ld [$d980], sp                                ; $736c: $08 $80 $d9
    sub b                                         ; $736f: $90
    ld a, c                                       ; $7370: $79
    push af                                       ; $7371: $f5
    xor [hl]                                      ; $7372: $ae
    ld a, b                                       ; $7373: $78
    inc l                                         ; $7374: $2c
    ld l, l                                       ; $7375: $6d
    jp c, $9dc7                                   ; $7376: $da $c7 $9d

    ld a, [hl-]                                   ; $7379: $3a
    ld e, l                                       ; $737a: $5d
    ld [hl+], a                                   ; $737b: $22
    pop af                                        ; $737c: $f1
    ld [hl], e                                    ; $737d: $73
    ret z                                         ; $737e: $c8

    reti                                          ; $737f: $d9


    ld l, b                                       ; $7380: $68
    ret z                                         ; $7381: $c8

    ld l, h                                       ; $7382: $6c
    ret z                                         ; $7383: $c8

    call nc, $57a9                                ; $7384: $d4 $a9 $57
    xor $b3                                       ; $7387: $ee $b3
    ret                                           ; $7389: $c9


    jr z, jr_04e_736b                             ; $738a: $28 $df

    ld c, e                                       ; $738c: $4b
    rra                                           ; $738d: $1f
    xor $1d                                       ; $738e: $ee $1d
    db $10                                        ; $7390: $10
    ld bc, $2b18                                  ; $7391: $01 $18 $2b
    ld b, l                                       ; $7394: $45
    adc $46                                       ; $7395: $ce $46
    rl [hl]                                       ; $7397: $cb $16

jr_04e_7399:
    dec e                                         ; $7399: $1d
    jr c, @+$45                                   ; $739a: $38 $43

    cp c                                          ; $739c: $b9
    ld c, $16                                     ; $739d: $0e $16
    ld b, h                                       ; $739f: $44
    adc a                                         ; $73a0: $8f
    ld c, e                                       ; $73a1: $4b
    dec l                                         ; $73a2: $2d
    rst $10                                       ; $73a3: $d7
    sbc b                                         ; $73a4: $98
    ret                                           ; $73a5: $c9


    jp z, Jump_000_367d                           ; $73a6: $ca $7d $36

    ld a, h                                       ; $73a9: $7c
    jp c, $cbd1                                   ; $73aa: $da $d1 $cb

    inc h                                         ; $73ad: $24
    ld sp, hl                                     ; $73ae: $f9
    ccf                                           ; $73af: $3f
    and [hl]                                      ; $73b0: $a6
    dec e                                         ; $73b1: $1d
    ld h, d                                       ; $73b2: $62
    dec bc                                        ; $73b3: $0b
    ld [hl+], a                                   ; $73b4: $22
    ld c, a                                       ; $73b5: $4f
    jp $9367                                      ; $73b6: $c3 $67 $93


    ld l, c                                       ; $73b9: $69
    ld c, c                                       ; $73ba: $49
    adc a                                         ; $73bb: $8f
    sub [hl]                                      ; $73bc: $96
    call z, $97ab                                 ; $73bd: $cc $ab $97
    ld [hl], $ed                                  ; $73c0: $36 $ed
    dec bc                                        ; $73c2: $0b
    add hl, de                                    ; $73c3: $19
    ld [hl], a                                    ; $73c4: $77
    ld [$8974], a                                 ; $73c5: $ea $74 $89
    call nz, $f1cf                                ; $73c8: $c4 $cf $f1
    ld [$e701], sp                                ; $73cb: $08 $01 $e7
    ret                                           ; $73ce: $c9


    sbc [hl]                                      ; $73cf: $9e
    jp $90b0                                      ; $73d0: $c3 $b0 $90


    ld [hl], c                                    ; $73d3: $71
    and a                                         ; $73d4: $a7
    ld c, [hl]                                    ; $73d5: $4e
    sub a                                         ; $73d6: $97
    ld c, b                                       ; $73d7: $48
    db $fc                                        ; $73d8: $fc
    inc e                                         ; $73d9: $1c
    ld h, a                                       ; $73da: $67
    inc bc                                        ; $73db: $03
    ld h, a                                       ; $73dc: $67
    call c, $cfa3                                 ; $73dd: $dc $a3 $cf
    ld h, [hl]                                    ; $73e0: $66
    ld d, d                                       ; $73e1: $52
    jp c, $a598                                   ; $73e2: $da $98 $a5

    add [hl]                                      ; $73e5: $86
    dec e                                         ; $73e6: $1d
    call z, $9013                                 ; $73e7: $cc $13 $90
    add b                                         ; $73ea: $80
    jr nc, jr_04e_7399                            ; $73eb: $30 $ac

    call c, Call_000_2cc7                         ; $73ed: $dc $c7 $2c
    dec [hl]                                      ; $73f0: $35
    db $fd                                        ; $73f1: $fd
    and $ec                                       ; $73f2: $e6 $ec
    ld sp, $e92d                                  ; $73f4: $31 $2d $e9
    pop de                                        ; $73f7: $d1
    sub d                                         ; $73f8: $92
    cp c                                          ; $73f9: $b9
    ld d, c                                       ; $73fa: $51
    ld c, e                                       ; $73fb: $4b
    sbc e                                         ; $73fc: $9b
    or $d9                                        ; $73fd: $f6 $d9
    xor e                                         ; $73ff: $ab
    jr nz, jr_04e_7404                            ; $7400: $20 $02

    rst $20                                       ; $7402: $e7
    ret                                           ; $7403: $c9


jr_04e_7404:
    ld [hl-], a                                   ; $7404: $32
    ld e, $62                                     ; $7405: $1e $62
    and e                                         ; $7407: $a3
    xor e                                         ; $7408: $ab
    rst $10                                       ; $7409: $d7
    add a                                         ; $740a: $87
    ei                                            ; $740b: $fb
    jr z, jr_04e_7439                             ; $740c: $28 $2b

    ld b, l                                       ; $740e: $45
    jp nz, $d7e7                                  ; $740f: $c2 $e7 $d7

    ld l, $f1                                     ; $7412: $2e $f1
    ld [de], a                                    ; $7414: $12
    xor $d4                                       ; $7415: $ee $d4
    inc hl                                        ; $7417: $23
    cp a                                          ; $7418: $bf
    ld [hl], d                                    ; $7419: $72
    xor $84                                       ; $741a: $ee $84
    jp nc, $b3f0                                  ; $741c: $d2 $f0 $b3

    dec a                                         ; $741f: $3d
    ld d, h                                       ; $7420: $54
    scf                                           ; $7421: $37
    dec bc                                        ; $7422: $0b
    ld [hl+], a                                   ; $7423: $22
    adc a                                         ; $7424: $8f
    ld c, e                                       ; $7425: $4b
    ld c, l                                       ; $7426: $4d
    xor e                                         ; $7427: $ab
    ld e, [hl]                                    ; $7428: $5e
    ld a, [$fd5f]                                 ; $7429: $fa $5f $fd
    ld a, [$53b8]                                 ; $742c: $fa $b8 $53
    ld l, e                                       ; $742f: $6b
    rlca                                          ; $7430: $07
    db $e3                                        ; $7431: $e3
    or d                                          ; $7432: $b2
    ld h, a                                       ; $7433: $67
    bit 6, d                                      ; $7434: $cb $72
    add hl, sp                                    ; $7436: $39
    ld c, $22                                     ; $7437: $0e $22

jr_04e_7439:
    ld c, a                                       ; $7439: $4f
    add e                                         ; $743a: $83
    adc [hl]                                      ; $743b: $8e
    dec sp                                        ; $743c: $3b
    or l                                          ; $743d: $b5
    halt                                          ; $743e: $76
    jr nc, jr_04e_746f                            ; $743f: $30 $2e

    dec de                                        ; $7441: $1b
    or e                                          ; $7442: $b3
    ld d, a                                       ; $7443: $57
    dec a                                         ; $7444: $3d
    ld b, d                                       ; $7445: $42
    ldh [rNR43], a                                ; $7446: $e0 $22
    db $f4                                        ; $7448: $f4
    ret z                                         ; $7449: $c8

    ld [hl], b                                    ; $744a: $70
    rrca                                          ; $744b: $0f
    dec h                                         ; $744c: $25
    ei                                            ; $744d: $fb
    ld h, l                                       ; $744e: $65
    ld h, e                                       ; $744f: $63
    ld c, a                                       ; $7450: $4f
    ldh a, [rNR13]                                ; $7451: $f0 $13
    pop hl                                        ; $7453: $e1
    ld c, [hl]                                    ; $7454: $4e
    db $fd                                        ; $7455: $fd
    ld [hl], d                                    ; $7456: $72
    cp d                                          ; $7457: $ba
    ld b, h                                       ; $7458: $44
    ld [c], a                                     ; $7459: $e2
    rst $20                                       ; $745a: $e7
    sub b                                         ; $745b: $90
    pop hl                                        ; $745c: $e1
    db $fc                                        ; $745d: $fc
    add sp, $55                                   ; $745e: $e8 $55
    inc sp                                        ; $7460: $33
    add hl, hl                                    ; $7461: $29
    ld l, l                                       ; $7462: $6d
    ldh [$93], a                                  ; $7463: $e0 $93
    db $db                                        ; $7465: $db
    dec e                                         ; $7466: $1d
    rst $38                                       ; $7467: $ff
    cpl                                           ; $7468: $2f
    sub e                                         ; $7469: $93
    sbc e                                         ; $746a: $9b
    ld [hl+], a                                   ; $746b: $22
    ld h, l                                       ; $746c: $65
    ld h, e                                       ; $746d: $63
    adc c                                         ; $746e: $89

jr_04e_746f:
    adc a                                         ; $746f: $8f
    ld e, [hl]                                    ; $7470: $5e
    dec [hl]                                      ; $7471: $35
    xor $d4                                       ; $7472: $ee $d4
    dec hl                                        ; $7474: $2b
    rst $30                                       ; $7475: $f7
    ld l, c                                       ; $7476: $69
    rst $10                                       ; $7477: $d7
    cp l                                          ; $7478: $bd
    ld d, $32                                     ; $7479: $16 $32
    ld l, d                                       ; $747b: $6a
    inc a                                         ; $747c: $3c
    dec e                                         ; $747d: $1d
    ld sp, hl                                     ; $747e: $f9
    ld h, l                                       ; $747f: $65
    db $fd                                        ; $7480: $fd
    ld l, b                                       ; $7481: $68
    ld h, [hl]                                    ; $7482: $66
    db $fc                                        ; $7483: $fc
    inc e                                         ; $7484: $1c
    ld [hl], b                                    ; $7485: $70
    ret nz                                        ; $7486: $c0

    ld a, [$10c8]                                 ; $7487: $fa $c8 $10
    ld bc, $21e7                                  ; $748a: $01 $e7 $21
    db $e3                                        ; $748d: $e3
    ld c, [hl]                                    ; $748e: $4e
    sbc l                                         ; $748f: $9d
    ld l, $91                                     ; $7490: $2e $91
    ld hl, sp+$39                                 ; $7492: $f8 $39
    ld h, h                                       ; $7494: $64
    ld [$b3d4], a                                 ; $7495: $ea $d4 $b3
    ld d, a                                       ; $7498: $57
    dec l                                         ; $7499: $2d
    ld e, l                                       ; $749a: $5d
    ld e, l                                       ; $749b: $5d
    bit 7, d                                      ; $749c: $cb $7a
    xor c                                         ; $749e: $a9
    ld [$4998], a                                 ; $749f: $ea $98 $49
    ld l, c                                       ; $74a2: $69
    bit 7, d                                      ; $74a3: $cb $7a
    xor c                                         ; $74a5: $a9
    ld [$7b80], a                                 ; $74a6: $ea $80 $7b
    ld e, h                                       ; $74a9: $5c
    ld l, d                                       ; $74aa: $6a
    ld sp, hl                                     ; $74ab: $f9
    di                                            ; $74ac: $f3
    dec a                                         ; $74ad: $3d
    cp l                                          ; $74ae: $bd
    db $ec                                        ; $74af: $ec
    inc c                                         ; $74b0: $0c
    ld e, l                                       ; $74b1: $5d
    cp c                                          ; $74b2: $b9
    rst $08                                       ; $74b3: $cf

jr_04e_74b4:
    ld h, $d3                                     ; $74b4: $26 $d3
    xor [hl]                                      ; $74b6: $ae
    ld a, e                                       ; $74b7: $7b
    push af                                       ; $74b8: $f5
    add h                                         ; $74b9: $84
    ld d, a                                       ; $74ba: $57
    add $77                                       ; $74bb: $c6 $77
    sub a                                         ; $74bd: $97
    cp [hl]                                       ; $74be: $be
    jp hl                                         ; $74bf: $e9


    ld a, a                                       ; $74c0: $7f
    adc l                                         ; $74c1: $8d
    rlca                                          ; $74c2: $07
    add hl, bc                                    ; $74c3: $09
    add a                                         ; $74c4: $87

jr_04e_74c5:
    ld [$d50f], sp                                ; $74c5: $08 $0f $d5
    call $bf62                                    ; $74c8: $cd $62 $bf
    and a                                         ; $74cb: $a7
    push de                                       ; $74cc: $d5
    call c, Call_04e_77a9                         ; $74cd: $dc $a9 $77
    db $f4                                        ; $74d0: $f4
    ld l, h                                       ; $74d1: $6c
    or d                                          ; $74d2: $b2
    dec hl                                        ; $74d3: $2b
    ld e, $c3                                     ; $74d4: $1e $c3
    ld sp, hl                                     ; $74d6: $f9
    reti                                          ; $74d7: $d9


    dec hl                                        ; $74d8: $2b
    ei                                            ; $74d9: $fb
    ld b, c                                       ; $74da: $41
    db $fc                                        ; $74db: $fc
    ld a, [de]                                    ; $74dc: $1a
    ld a, c                                       ; $74dd: $79
    add h                                         ; $74de: $84
    nop                                           ; $74df: $00
    ldh [$da], a                                  ; $74e0: $e0 $da
    ld [hl], b                                    ; $74e2: $70
    sub c                                         ; $74e3: $91
    or e                                          ; $74e4: $b3
    jp hl                                         ; $74e5: $e9


    add c                                         ; $74e6: $81
    ld c, a                                       ; $74e7: $4f
    ld l, [hl]                                    ; $74e8: $6e
    ld [hl], a                                    ; $74e9: $77
    db $fc                                        ; $74ea: $fc
    ccf                                           ; $74eb: $3f
    xor l                                         ; $74ec: $ad
    ld a, d                                       ; $74ed: $7a
    sbc c                                         ; $74ee: $99
    call c, $2914                                 ; $74ef: $dc $14 $29
    ld e, a                                       ; $74f2: $5f
    ld [c], a                                     ; $74f3: $e2
    and e                                         ; $74f4: $a3
    ld d, a                                       ; $74f5: $57
    adc l                                         ; $74f6: $8d
    dec sp                                        ; $74f7: $3b
    push af                                       ; $74f8: $f5
    jp z, Jump_04e_5e7d                           ; $74f9: $ca $7d $5e

    db $eb                                        ; $74fc: $eb
    or b                                          ; $74fd: $b0
    dec [hl]                                      ; $74fe: $35
    sbc h                                         ; $74ff: $9c
    sbc a                                         ; $7500: $9f
    sub [hl]                                      ; $7501: $96
    db $f4                                        ; $7502: $f4
    ld l, b                                       ; $7503: $68
    ret                                           ; $7504: $c9


    jr c, jr_04e_74c5                             ; $7505: $38 $be

    sub a                                         ; $7507: $97
    ld [hl], $ed                                  ; $7508: $36 $ed
    db $e3                                        ; $750a: $e3
    ld c, [hl]                                    ; $750b: $4e
    xor l                                         ; $750c: $ad
    dec e                                         ; $750d: $1d
    adc h                                         ; $750e: $8c
    push hl                                       ; $750f: $e5

jr_04e_7510:
    adc d                                         ; $7510: $8a
    ld a, [bc]                                    ; $7511: $0a
    add hl, de                                    ; $7512: $19
    adc $8f                                       ; $7513: $ce $8f
    ld e, [hl]                                    ; $7515: $5e
    dec b                                         ; $7516: $05
    rst $30                                       ; $7517: $f7
    ld h, b                                       ; $7518: $60
    or d                                          ; $7519: $b2
    ld b, e                                       ; $751a: $43
    inc b                                         ; $751b: $04
    ret nz                                        ; $751c: $c0

    sbc d                                         ; $751d: $9a
    ld d, a                                       ; $751e: $57
    dec [hl]                                      ; $751f: $35
    ld e, d                                       ; $7520: $5a
    or [hl]                                       ; $7521: $b6
    add sp, -$40                                  ; $7522: $e8 $c0
    ld e, l                                       ; $7524: $5d
    ld c, c                                       ; $7525: $49
    push bc                                       ; $7526: $c5
    xor $d2                                       ; $7527: $ee $d2
    scf                                           ; $7529: $37
    db $fd                                        ; $752a: $fd
    xor a                                         ; $752b: $af
    pop af                                        ; $752c: $f1
    jr nz, jr_04e_7510                            ; $752d: $20 $e1

    ld [hl], b                                    ; $752f: $70
    jr jr_04e_74b4                                ; $7530: $18 $82

    adc e                                         ; $7532: $8b
    ld c, $c9                                     ; $7533: $0e $c9
    and l                                         ; $7535: $a5
    db $db                                        ; $7536: $db
    ld hl, sp+$72                                 ; $7537: $f8 $72
    ld b, l                                       ; $7539: $45
    add l                                         ; $753a: $85
    call z, $148f                                 ; $753b: $cc $8f $14
    adc c                                         ; $753e: $89
    sbc [hl]                                      ; $753f: $9e
    dec c                                         ; $7540: $0d
    rra                                           ; $7541: $1f
    adc l                                         ; $7542: $8d
    db $ec                                        ; $7543: $ec
    or l                                          ; $7544: $b5
    dec hl                                        ; $7545: $2b
    add [hl]                                      ; $7546: $86
    adc [hl]                                      ; $7547: $8e
    ld a, [de]                                    ; $7548: $1a
    ld c, a                                       ; $7549: $4f
    ld b, a                                       ; $754a: $47
    sub $8f                                       ; $754b: $d6 $8f
    ld h, [hl]                                    ; $754d: $66
    add $cf                                       ; $754e: $c6 $cf
    pop de                                        ; $7550: $d1
    db $10                                        ; $7551: $10

jr_04e_7552:
    ld bc, $c34f                                  ; $7552: $01 $4f $c3
    ld h, a                                       ; $7555: $67
    sub e                                         ; $7556: $93
    ld l, c                                       ; $7557: $69
    ld c, c                                       ; $7558: $49
    adc a                                         ; $7559: $8f
    sub [hl]                                      ; $755a: $96
    call z, $97ab                                 ; $755b: $cc $ab $97

Call_04e_755e:
    ld [hl], $ed                                  ; $755e: $36 $ed
    dec bc                                        ; $7560: $0b
    add hl, de                                    ; $7561: $19
    ld [hl], a                                    ; $7562: $77
    ld [$8974], a                                 ; $7563: $ea $74 $89
    call nz, $f1cf                                ; $7566: $c4 $cf $f1
    ld [$6001], sp                                ; $7569: $08 $01 $60
    add d                                         ; $756c: $82
    add hl, bc                                    ; $756d: $09
    rlca                                          ; $756e: $07
    ld [hl], $a5                                  ; $756f: $36 $a5
    call $576b                                    ; $7571: $cd $6b $57
    inc a                                         ; $7574: $3c
    ld b, [hl]                                    ; $7575: $46
    jp $86ce                                      ; $7576: $c3 $ce $86


    call z, $ffef                                 ; $7579: $cc $ef $ff
    inc bc                                        ; $757c: $03
    sbc $2c                                       ; $757d: $de $2c
    adc [hl]                                      ; $757f: $8e
    cp e                                          ; $7580: $bb
    ld h, d                                       ; $7581: $62
    ld c, l                                       ; $7582: $4d
    sbc a                                         ; $7583: $9f
    db $ed                                        ; $7584: $ed
    add sp, -$27                                  ; $7585: $e8 $d9
    ld h, h                                       ; $7587: $64
    ld e, c                                       ; $7588: $59
    adc [hl]                                      ; $7589: $8e
    rst $38                                       ; $758a: $ff
    ld hl, $4f02                                  ; $758b: $21 $02 $4f
    rst $28                                       ; $758e: $ef
    or h                                          ; $758f: $b4
    ld [$f15d], a                                 ; $7590: $ea $5d $f1
    ret c                                         ; $7593: $d8

    ccf                                           ; $7594: $3f

jr_04e_7595:
    jp c, Jump_04e_7267                           ; $7595: $da $67 $72

    sbc [hl]                                      ; $7598: $9e
    dec c                                         ; $7599: $0d
    rst $18                                       ; $759a: $df
    ld hl, $0110                                  ; $759b: $21 $10 $01
    sbc b                                         ; $759e: $98
    ld [hl], d                                    ; $759f: $72
    ld c, d                                       ; $75a0: $4a
    add e                                         ; $75a1: $83
    ld a, e                                       ; $75a2: $7b

Jump_04e_75a3:
    ldh [rIE], a                                  ; $75a3: $e0 $ff
    sbc a                                         ; $75a5: $9f
    cp l                                          ; $75a6: $bd
    ld l, d                                       ; $75a7: $6a
    ld l, c                                       ; $75a8: $69
    db $d3                                        ; $75a9: $d3
    ld e, [hl]                                    ; $75aa: $5e
    db $e3                                        ; $75ab: $e3
    sbc d                                         ; $75ac: $9a
    sub a                                         ; $75ad: $97
    pop de                                        ; $75ae: $d1
    xor e                                         ; $75af: $ab
    ld h, [hl]                                    ; $75b0: $66
    add sp, $6c                                   ; $75b1: $e8 $6c
    or d                                          ; $75b3: $b2
    and e                                         ; $75b4: $a3
    rst $00                                       ; $75b5: $c7
    sbc l                                         ; $75b6: $9d
    ld e, d                                       ; $75b7: $5a
    dec sp                                        ; $75b8: $3b
    jr jr_04e_7552                                ; $75b9: $18 $97

    ld h, l                                       ; $75bb: $65
    adc a                                         ; $75bc: $8f
    nop                                           ; $75bd: $00
    and b                                         ; $75be: $a0
    jp Jump_04e_642e                              ; $75bf: $c3 $2e $64


    call nc, Call_000_3a78                        ; $75c2: $d4 $78 $3a
    or d                                          ; $75c5: $b2
    ld a, [hl]                                    ; $75c6: $7e
    inc [hl]                                      ; $75c7: $34
    inc sp                                        ; $75c8: $33
    ld a, [hl]                                    ; $75c9: $7e
    adc [hl]                                      ; $75ca: $8e
    or e                                          ; $75cb: $b3
    ld h, l                                       ; $75cc: $65
    ld a, [hl]                                    ; $75cd: $7e
    db $e4                                        ; $75ce: $e4
    ld d, a                                       ; $75cf: $57
    dec sp                                        ; $75d0: $3b
    ld a, e                                       ; $75d1: $7b
    inc b                                         ; $75d2: $04
    ldh [$da], a                                  ; $75d3: $e0 $da
    ld [hl], b                                    ; $75d5: $70
    sub c                                         ; $75d6: $91
    or e                                          ; $75d7: $b3
    jp hl                                         ; $75d8: $e9


    add c                                         ; $75d9: $81
    ld c, a                                       ; $75da: $4f
    ld l, [hl]                                    ; $75db: $6e
    ld [hl], a                                    ; $75dc: $77
    db $fc                                        ; $75dd: $fc
    ccf                                           ; $75de: $3f
    dec a                                         ; $75df: $3d
    ld a, h                                       ; $75e0: $7c
    ld h, d                                       ; $75e1: $62
    inc d                                         ; $75e2: $14
    ld b, h                                       ; $75e3: $44
    jr jr_04e_7595                                ; $75e4: $18 $af

    ld a, e                                       ; $75e6: $7b
    db $ed                                        ; $75e7: $ed
    ld l, $7d                                     ; $75e8: $2e $7d
    db $d3                                        ; $75ea: $d3
    rst $38                                       ; $75eb: $ff
    ld a, [de]                                    ; $75ec: $1a
    rrca                                          ; $75ed: $0f
    ld [de], a                                    ; $75ee: $12
    ld c, $77                                     ; $75ef: $0e $77
    ld a, [hl]                                    ; $75f1: $7e
    db $f4                                        ; $75f2: $f4
    cp b                                          ; $75f3: $b8
    dec hl                                        ; $75f4: $2b
    sub d                                         ; $75f5: $92
    ld h, a                                       ; $75f6: $67
    jp Jump_000_3e97                              ; $75f7: $c3 $97 $3e


    and l                                         ; $75fa: $a5
    ld c, b                                       ; $75fb: $48
    db $f4                                        ; $75fc: $f4
    inc c                                         ; $75fd: $0c
    ld e, l                                       ; $75fe: $5d
    db $fd                                        ; $75ff: $fd
    rst $28                                       ; $7600: $ef
    ld d, a                                       ; $7601: $57
    inc d                                         ; $7602: $14
    ld b, h                                       ; $7603: $44
    adc a                                         ; $7604: $8f
    ld c, e                                       ; $7605: $4b
    db $ed                                        ; $7606: $ed
    add sp, $69                                   ; $7607: $e8 $69
    ld b, a                                       ; $7609: $47
    adc a                                         ; $760a: $8f
    dec sp                                        ; $760b: $3b
    push af                                       ; $760c: $f5
    jp z, Jump_04e_5e7d                           ; $760d: $ca $7d $5e

    db $eb                                        ; $7610: $eb
    or b                                          ; $7611: $b0
    dec [hl]                                      ; $7612: $35
    sbc h                                         ; $7613: $9c
    sbc a                                         ; $7614: $9f
    sub [hl]                                      ; $7615: $96
    db $f4                                        ; $7616: $f4
    ld l, b                                       ; $7617: $68
    ret                                           ; $7618: $c9


    cp h                                          ; $7619: $bc
    ld a, d                                       ; $761a: $7a
    ld l, c                                       ; $761b: $69
    db $d3                                        ; $761c: $d3
    cp [hl]                                       ; $761d: $be
    sub b                                         ; $761e: $90
    ld [hl], c                                    ; $761f: $71
    and a                                         ; $7620: $a7
    ld c, [hl]                                    ; $7621: $4e
    sub a                                         ; $7622: $97
    ld c, b                                       ; $7623: $48
    db $fc                                        ; $7624: $fc
    inc e                                         ; $7625: $1c
    ld [hl], b                                    ; $7626: $70
    ld c, a                                       ; $7627: $4f
    db $e4                                        ; $7628: $e4
    ld [hl], d                                    ; $7629: $72
    inc e                                         ; $762a: $1c
    ld b, h                                       ; $762b: $44
    ld h, b                                       ; $762c: $60
    ld c, h                                       ; $762d: $4c
    db $d3                                        ; $762e: $d3
    ld a, [$4cbe]                                 ; $762f: $fa $be $4c
    sub d                                         ; $7632: $92
    rst $38                                       ; $7633: $ff
    ld h, e                                       ; $7634: $63
    call z, $d352                                 ; $7635: $cc $52 $d3
    ld c, $d1                                     ; $7638: $0e $d1
    ld l, a                                       ; $763a: $6f
    xor [hl]                                      ; $763b: $ae
    reti                                          ; $763c: $d9


    xor e                                         ; $763d: $ab
    and $f7                                       ; $763e: $e6 $f7
    rst $08                                       ; $7640: $cf
    add [hl]                                      ; $7641: $86
    inc c                                         ; $7642: $0c
    inc de                                        ; $7643: $13
    adc [hl]                                      ; $7644: $8e
    db $db                                        ; $7645: $db
    ld a, [c]                                     ; $7646: $f2
    add sp, -$4e                                  ; $7647: $e8 $b2
    or c                                          ; $7649: $b1
    add a                                         ; $764a: $87
    ld [de], a                                    ; $764b: $12
    sbc e                                         ; $764c: $9b
    ld [hl], $24                                  ; $764d: $36 $24
    ld h, h                                       ; $764f: $64
    ld h, b                                       ; $7650: $60
    jp hl                                         ; $7651: $e9


    ld b, b                                       ; $7652: $40
    dec de                                        ; $7653: $1b
    ld c, a                                       ; $7654: $4f
    ld b, a                                       ; $7655: $47
    sub $8f                                       ; $7656: $d6 $8f
    ld h, [hl]                                    ; $7658: $66
    add $cf                                       ; $7659: $c6 $cf
    pop de                                        ; $765b: $d1
    ld h, a                                       ; $765c: $67
    inc bc                                        ; $765d: $03
    inc h                                         ; $765e: $24
    or [hl]                                       ; $765f: $b6
    ld l, e                                       ; $7660: $6b
    sbc b                                         ; $7661: $98
    ld [hl], b                                    ; $7662: $70
    db $fc                                        ; $7663: $fc
    sub a                                         ; $7664: $97
    ld a, [hl+]                                   ; $7665: $2a
    add hl, sp                                    ; $7666: $39
    dec de                                        ; $7667: $1b
    dec c                                         ; $7668: $0d
    sbc c                                         ; $7669: $99
    dec c                                         ; $766a: $0d
    sbc c                                         ; $766b: $99
    ld d, [hl]                                    ; $766c: $56
    dec a                                         ; $766d: $3d
    cp l                                          ; $766e: $bd
    ld a, [$b8fa]                                 ; $766f: $fa $fa $b8
    ld d, e                                       ; $7672: $53
    ld h, a                                       ; $7673: $67
    dec a                                         ; $7674: $3d
    ld de, $5909                                  ; $7675: $11 $09 $59
    cp b                                          ; $7678: $b8
    rst $08                                       ; $7679: $cf
    ld c, e                                       ; $767a: $4b
    ld b, c                                       ; $767b: $41
    inc b                                         ; $767c: $04
    ld c, a                                       ; $767d: $4f
    add e                                         ; $767e: $83
    ld c, [hl]                                    ; $767f: $4e
    xor a                                         ; $7680: $af
    sbc [hl]                                      ; $7681: $9e
    dec c                                         ; $7682: $0d
    ld e, a                                       ; $7683: $5f
    ld [hl], $74                                  ; $7684: $36 $74
    sbc a                                         ; $7686: $9f
    sub a                                         ; $7687: $97
    or d                                          ; $7688: $b2
    ld sp, $021b                                  ; $7689: $31 $1b $02
    rst $30                                       ; $768c: $f7
    ld h, b                                       ; $768d: $60
    or d                                          ; $768e: $b2
    ld b, e                                       ; $768f: $43
    inc b                                         ; $7690: $04
    jr nz, @+$46                                  ; $7691: $20 $44

    add l                                         ; $7693: $85
    ret nz                                        ; $7694: $c0

    ld bc, $bf12                                  ; $7695: $01 $12 $bf
    and d                                         ; $7698: $a2
    ld b, d                                       ; $7699: $42
    sub [hl]                                      ; $769a: $96
    cp l                                          ; $769b: $bd
    ld a, [hl]                                    ; $769c: $7e
    sbc [hl]                                      ; $769d: $9e
    dec c                                         ; $769e: $0d
    ld e, c                                       ; $769f: $59
    db $fc                                        ; $76a0: $fc
    rra                                           ; $76a1: $1f
    dec a                                         ; $76a2: $3d
    sub e                                         ; $76a3: $93
    ld [hl+], a                                   ; $76a4: $22
    sbc c                                         ; $76a5: $99
    rst $18                                       ; $76a6: $df
    pop de                                        ; $76a7: $d1
    or e                                          ; $76a8: $b3
    pop hl                                        ; $76a9: $e1
    inc de                                        ; $76aa: $13
    ld e, [hl]                                    ; $76ab: $5e
    add hl, de                                    ; $76ac: $19
    ld e, c                                       ; $76ad: $59
    ld [hl], $74                                  ; $76ae: $36 $74
    sbc c                                         ; $76b0: $99
    inc e                                         ; $76b1: $1c
    call nc, $e1ab                                ; $76b2: $d4 $ab $e1
    ld e, $97                                     ; $76b5: $1e $97
    sbc d                                         ; $76b7: $9a
    ld d, [hl]                                    ; $76b8: $56
    dec a                                         ; $76b9: $3d
    cp a                                          ; $76ba: $bf
    rst $38                                       ; $76bb: $ff
    rst $08                                       ; $76bc: $cf
    and h                                         ; $76bd: $a4
    or h                                          ; $76be: $b4
    pop de                                        ; $76bf: $d1
    or b                                          ; $76c0: $b0
    ld c, e                                       ; $76c1: $4b
    sbc h                                         ; $76c2: $9c
    dec sp                                        ; $76c3: $3b
    or d                                          ; $76c4: $b2
    cpl                                           ; $76c5: $2f

jr_04e_76c6:
    ld h, h                                       ; $76c6: $64
    jp hl                                         ; $76c7: $e9


    ld hl, sp+$27                                 ; $76c8: $f8 $27
    cp c                                          ; $76ca: $b9
    and d                                         ; $76cb: $a2
    and $f7                                       ; $76cc: $e6 $f7

jr_04e_76ce:
    rst $38                                       ; $76ce: $ff
    reti                                          ; $76cf: $d9


    sub b                                         ; $76d0: $90
    ld h, l                                       ; $76d1: $65
    ld b, e                                       ; $76d2: $43
    and a                                         ; $76d3: $a7
    ld e, l                                       ; $76d4: $5d
    rst $30                                       ; $76d5: $f7
    ld [$10d9], a                                 ; $76d6: $ea $d9 $10
    jr c, @-$4e                                   ; $76d9: $38 $b0

    add hl, hl                                    ; $76db: $29
    ld l, l                                       ; $76dc: $6d
    ld d, a                                       ; $76dd: $57
    ld d, h                                       ; $76de: $54
    ld hl, sp+$34                                 ; $76df: $f8 $34
    sub e                                         ; $76e1: $93
    cp l                                          ; $76e2: $bd
    call nz, $eec6                                ; $76e3: $c4 $c6 $ee
    jp nc, $fd37                                  ; $76e6: $d2 $37 $fd

    xor a                                         ; $76e9: $af
    pop af                                        ; $76ea: $f1
    jr nz, jr_04e_76ce                            ; $76eb: $20 $e1

    ld h, a                                       ; $76ed: $67
    di                                            ; $76ee: $f3
    ld c, d                                       ; $76ef: $4a
    ld de, $0088                                  ; $76f0: $11 $88 $00
    ld h, b                                       ; $76f3: $60
    ld c, c                                       ; $76f4: $49
    jr nc, jr_04e_76c6                            ; $76f5: $30 $cf

    ld b, $2e                                     ; $76f7: $06 $2e
    ld b, d                                       ; $76f9: $42
    adc a                                         ; $76fa: $8f
    ld a, h                                       ; $76fb: $7c
    ld [hl], $9b                                  ; $76fc: $36 $9b
    ld c, h                                       ; $76fe: $4c
    xor e                                         ; $76ff: $ab
    sbc [hl]                                      ; $7700: $9e
    ld d, [hl]                                    ; $7701: $56
    sbc h                                         ; $7702: $9c
    rst $08                                       ; $7703: $cf
    ld e, [hl]                                    ; $7704: $5e
    rst $30                                       ; $7705: $f7
    db $fd                                        ; $7706: $fd
    ei                                            ; $7707: $fb
    ld a, a                                       ; $7708: $7f
    xor l                                         ; $7709: $ad
    call $aabf                                    ; $770a: $cd $bf $aa
    or $02                                        ; $770d: $f6 $02
    rst $10                                       ; $770f: $d7
    ld b, a                                       ; $7710: $47
    ld a, [hl]                                    ; $7711: $7e
    ld de, $21ee                                  ; $7712: $11 $ee $21
    jp hl                                         ; $7715: $e9


    and l                                         ; $7716: $a5
    rst $38                                       ; $7717: $ff
    db $ed                                        ; $7718: $ed
    ld sp, $ad4b                                  ; $7719: $31 $4b $ad
    db $f4                                        ; $771c: $f4
    pop de                                        ; $771d: $d1
    or b                                          ; $771e: $b0
    db $e3                                        ; $771f: $e3
    ld c, [hl]                                    ; $7720: $4e
    sbc l                                         ; $7721: $9d
    ld l, $91                                     ; $7722: $2e $91
    ld hl, sp+$39                                 ; $7724: $f8 $39
    db $e4                                        ; $7726: $e4
    ld de, $0f02                                  ; $7727: $11 $02 $0f
    push de                                       ; $772a: $d5
    or e                                          ; $772b: $b3
    ld hl, $f7fb                                  ; $772c: $21 $fb $f7
    rst $38                                       ; $772f: $ff
    ld a, [de]                                    ; $7730: $1a
    ld [hl], a                                    ; $7731: $77
    ld [$37ec], a                                 ; $7732: $ea $ec $37
    add a                                         ; $7735: $87
    call z, Call_04e_7baf                         ; $7736: $cc $af $7b
    ld sp, hl                                     ; $7739: $f9
    xor $d2                                       ; $773a: $ee $d2
    scf                                           ; $773c: $37
    db $fd                                        ; $773d: $fd
    xor a                                         ; $773e: $af
    pop af                                        ; $773f: $f1
    jr nz, @-$1d                                  ; $7740: $20 $e1

    adc a                                         ; $7742: $8f
    db $10                                        ; $7743: $10
    adc a                                         ; $7744: $8f
    db $eb                                        ; $7745: $eb
    ld l, h                                       ; $7746: $6c
    ld [hl], $64                                  ; $7747: $36 $64
    rst $38                                       ; $7749: $ff
    cp $5f                                        ; $774a: $fe $5f
    db $10                                        ; $774c: $10
    ld b, d                                       ; $774d: $42
    adc l                                         ; $774e: $8d
    sbc [hl]                                      ; $774f: $9e
    adc l                                         ; $7750: $8d
    ld e, c                                       ; $7751: $59
    or e                                          ; $7752: $b3
    pop hl                                        ; $7753: $e1
    db $d3                                        ; $7754: $d3
    xor d                                         ; $7755: $aa
    rst $00                                       ; $7756: $c7
    inc l                                         ; $7757: $2c
    dec b                                         ; $7758: $05
    rlca                                          ; $7759: $07
    ret c                                         ; $775a: $d8

    sub b                                         ; $775b: $90
    sub b                                         ; $775c: $90
    ld sp, $2d4b                                  ; $775d: $31 $4b $2d
    dec e                                         ; $7760: $1d
    jp c, $8f49                                   ; $7761: $da $49 $8f

    ld e, $77                                     ; $7764: $1e $77
    ld b, l                                       ; $7766: $45
    ld a, [c]                                     ; $7767: $f2
    xor [hl]                                      ; $7768: $ae
    ld a, b                                       ; $7769: $78
    call z, Call_000_0d1e                         ; $776a: $cc $1e $0d
    rlca                                          ; $776d: $07
    ret z                                         ; $776e: $c8

    ld d, e                                       ; $776f: $53
    sbc d                                         ; $7770: $9a
    ld sp, $11ec                                  ; $7771: $31 $ec $11
    adc a                                         ; $7774: $8f
    ld c, e                                       ; $7775: $4b
    ld c, l                                       ; $7776: $4d
    xor e                                         ; $7777: $ab
    sbc [hl]                                      ; $7778: $9e
    dec c                                         ; $7779: $0d
    reti                                          ; $777a: $d9


    dec d                                         ; $777b: $15
    rrca                                          ; $777c: $0f
    jr c, @+$12                                   ; $777d: $38 $10

    ld [c], a                                     ; $777f: $e2
    ld sp, $9266                                  ; $7780: $31 $66 $92
    ld a, l                                       ; $7783: $7d
    sub d                                         ; $7784: $92
    sbc h                                         ; $7785: $9c
    db $ed                                        ; $7786: $ed

Call_04e_7787:
    xor [hl]                                      ; $7787: $ae
    cp $af                                        ; $7788: $fe $af
    ld [hl], c                                    ; $778a: $71
    push af                                       ; $778b: $f5
    ccf                                           ; $778c: $3f
    call c, $ead3                                 ; $778d: $dc $d3 $ea
    sub c                                         ; $7790: $91
    sub d                                         ; $7791: $92
    reti                                          ; $7792: $d9


    sub b                                         ; $7793: $90
    jp hl                                         ; $7794: $e9


    push de                                       ; $7795: $d5
    push af                                       ; $7796: $f5
    ld l, b                                       ; $7797: $68
    ld h, b                                       ; $7798: $60
    ld a, b                                       ; $7799: $78
    add hl, de                                    ; $779a: $19
    ld c, l                                       ; $779b: $4d
    sub h                                         ; $779c: $94
    ld a, [$31d5]                                 ; $779d: $fa $d5 $31
    ld d, d                                       ; $77a0: $52
    sub d                                         ; $77a1: $92
    ld c, c                                       ; $77a2: $49

Jump_04e_77a3:
    db $ec                                        ; $77a3: $ec
    rra                                           ; $77a4: $1f
    add hl, sp                                    ; $77a5: $39
    ld a, d                                       ; $77a6: $7a
    ld [hl], $04                                  ; $77a7: $36 $04

Call_04e_77a9:
    ld b, d                                       ; $77a9: $42
    adc b                                         ; $77aa: $88
    nop                                           ; $77ab: $00
    adc a                                         ; $77ac: $8f
    ld c, e                                       ; $77ad: $4b
    ld c, l                                       ; $77ae: $4d
    xor e                                         ; $77af: $ab
    sbc [hl]                                      ; $77b0: $9e
    db $ed                                        ; $77b1: $ed
    ld c, d                                       ; $77b2: $4a
    and a                                         ; $77b3: $a7
    set 6, e                                      ; $77b4: $cb $f3
    ld c, d                                       ; $77b6: $4a
    rst $18                                       ; $77b7: $df
    inc de                                        ; $77b8: $13
    db $fc                                        ; $77b9: $fc
    ld b, h                                       ; $77ba: $44
    cp b                                          ; $77bb: $b8
    ld d, e                                       ; $77bc: $53
    cp a                                          ; $77bd: $bf
    sbc h                                         ; $77be: $9c
    ld l, $91                                     ; $77bf: $2e $91
    ld hl, sp+$39                                 ; $77c1: $f8 $39
    inc b                                         ; $77c3: $04
    xor $89                                       ; $77c4: $ee $89
    ld e, h                                       ; $77c6: $5c
    adc [hl]                                      ; $77c7: $8e
    add e                                         ; $77c8: $83
    inc bc                                        ; $77c9: $03
    rst $10                                       ; $77ca: $d7
    add [hl]                                      ; $77cb: $86
    adc e                                         ; $77cc: $8b
    sbc h                                         ; $77cd: $9c
    ld c, l                                       ; $77ce: $4d
    rrca                                          ; $77cf: $0f
    ld a, h                                       ; $77d0: $7c
    ld [hl], d                                    ; $77d1: $72
    cp e                                          ; $77d2: $bb
    db $e3                                        ; $77d3: $e3
    rst $38                                       ; $77d4: $ff
    ld h, l                                       ; $77d5: $65
    ld [hl], d                                    ; $77d6: $72
    ld d, e                                       ; $77d7: $53
    and h                                         ; $77d8: $a4
    ld l, h                                       ; $77d9: $6c
    adc h                                         ; $77da: $8c
    ld e, [hl]                                    ; $77db: $5e
    dec [hl]                                      ; $77dc: $35
    xor $d4                                       ; $77dd: $ee $d4
    dec hl                                        ; $77df: $2b
    rst $30                                       ; $77e0: $f7
    ld l, c                                       ; $77e1: $69
    rst $10                                       ; $77e2: $d7
    cp l                                          ; $77e3: $bd
    ld d, $32                                     ; $77e4: $16 $32
    ld l, d                                       ; $77e6: $6a
    inc a                                         ; $77e7: $3c
    dec e                                         ; $77e8: $1d
    ld sp, hl                                     ; $77e9: $f9
    ld h, l                                       ; $77ea: $65
    db $fd                                        ; $77eb: $fd
    ld l, b                                       ; $77ec: $68
    ld h, [hl]                                    ; $77ed: $66
    db $fc                                        ; $77ee: $fc
    inc e                                         ; $77ef: $1c
    ld [hl], b                                    ; $77f0: $70
    rrca                                          ; $77f1: $0f
    ld h, $3b                                     ; $77f2: $26 $3b
    inc e                                         ; $77f4: $1c
    ret z                                         ; $77f5: $c8

    sub d                                         ; $77f6: $92
    reti                                          ; $77f7: $d9


    ld h, h                                       ; $77f8: $64
    ld a, [de]                                    ; $77f9: $1a
    di                                            ; $77fa: $f3
    ld hl, sp+$78                                 ; $77fb: $f8 $78
    adc l                                         ; $77fd: $8d
    ld e, [hl]                                    ; $77fe: $5e
    push af                                       ; $77ff: $f5
    ld [$4f01], sp                                ; $7800: $08 $01 $4f
    ld h, d                                       ; $7803: $62
    add hl, bc                                    ; $7804: $09
    adc [hl]                                      ; $7805: $8e
    adc a                                         ; $7806: $8f
    add [hl]                                      ; $7807: $86
    dec e                                         ; $7808: $1d
    ld sp, hl                                     ; $7809: $f9
    sub l                                         ; $780a: $95
    ld [hl], e                                    ; $780b: $73
    daa                                           ; $780c: $27
    sub h                                         ; $780d: $94
    add [hl]                                      ; $780e: $86
    adc a                                         ; $780f: $8f
    dec sp                                        ; $7810: $3b
    push af                                       ; $7811: $f5
    ld l, b                                       ; $7812: $68
    and d                                         ; $7813: $a2
    call nc, $ceaf                                ; $7814: $d4 $af $ce
    sbc [hl]                                      ; $7817: $9e
    ret c                                         ; $7818: $d8

    dec de                                        ; $7819: $1b
    dec c                                         ; $781a: $0d
    or a                                          ; $781b: $b7
    rst $00                                       ; $781c: $c7
    and l                                         ; $781d: $a5
    and [hl]                                      ; $781e: $a6
    ld d, l                                       ; $781f: $55
    cpl                                           ; $7820: $2f
    add a                                         ; $7821: $87
    ei                                            ; $7822: $fb
    ret nz                                        ; $7823: $c0

    ld b, l                                       ; $7824: $45
    add sp, -$6f                                  ; $7825: $e8 $91
    and a                                         ; $7827: $a7
    ld hl, sp+$5d                                 ; $7828: $f8 $5d
    sbc c                                         ; $782a: $99
    ld c, c                                       ; $782b: $49
    ld l, c                                       ; $782c: $69
    ld c, e                                       ; $782d: $4b
    ld a, h                                       ; $782e: $7c
    or $e8                                        ; $782f: $f6 $e8
    add hl, bc                                    ; $7831: $09
    db $eb                                        ; $7832: $eb
    ld e, a                                       ; $7833: $5f
    dec d                                         ; $7834: $15
    ld [bc], a                                    ; $7835: $02
    ld de, $c2a0                                  ; $7836: $11 $a0 $c2
    xor e                                         ; $7839: $ab
    ld h, a                                       ; $783a: $67
    sub e                                         ; $783b: $93
    dec b                                         ; $783c: $05
    rst $20                                       ; $783d: $e7
    pop de                                        ; $783e: $d1
    inc de                                        ; $783f: $13
    sbc $57                                       ; $7840: $de $57
    xor $fb                                       ; $7842: $ee $fb
    ld b, a                                       ; $7844: $47
    xor [hl]                                      ; $7845: $ae
    ld b, a                                       ; $7846: $47
    ld [$ab4f], sp                                ; $7847: $08 $4f $ab
    ld [hl], a                                    ; $784a: $77
    db $f4                                        ; $784b: $f4
    jp nc, $8486                                  ; $784c: $d2 $86 $84

    sbc h                                         ; $784f: $9c
    dec c                                         ; $7850: $0d
    ld e, h                                       ; $7851: $5c
    add h                                         ; $7852: $84
    ld e, $f9                                     ; $7853: $1e $f9
    ld de, $e702                                  ; $7855: $11 $02 $e7
    pop hl                                        ; $7858: $e1
    dec sp                                        ; $7859: $3b
    ld a, d                                       ; $785a: $7a
    sbc c                                         ; $785b: $99
    sbc a                                         ; $785c: $9f
    scf                                           ; $785d: $37
    ld c, a                                       ; $785e: $4f
    xor [hl]                                      ; $785f: $ae
    ld a, [c]                                     ; $7860: $f2
    sub l                                         ; $7861: $95
    ei                                            ; $7862: $fb
    cp $91                                        ; $7863: $fe $91
    dec bc                                        ; $7865: $0b
    ld c, $e3                                     ; $7866: $0e $e3
    ld [hl], l                                    ; $7868: $75
    xor a                                         ; $7869: $af
    db $fd                                        ; $786a: $fd
    db $eb                                        ; $786b: $eb
    ld sp, $1f9c                                  ; $786c: $31 $9c $1f
    add $a7                                       ; $786f: $c6 $a7
    cp e                                          ; $7871: $bb
    bit 7, [hl]                                   ; $7872: $cb $7e
    db $fc                                        ; $7874: $fc
    rra                                           ; $7875: $1f
    ld c, $11                                     ; $7876: $0e $11
    ld c, a                                       ; $7878: $4f
    ld a, b                                       ; $7879: $78
    ld a, e                                       ; $787a: $7b
    db $f4                                        ; $787b: $f4
    reti                                          ; $787c: $d9


Jump_04e_787d:
    ld e, $aa                                     ; $787d: $1e $aa
    sbc e                                         ; $787f: $9b
    ld [hl], l                                    ; $7880: $75
    ld [hl], $39                                  ; $7881: $36 $39
    or d                                          ; $7883: $b2
    sub a                                         ; $7884: $97
    inc l                                         ; $7885: $2c
    dec de                                        ; $7886: $1b
    ld a, [hl-]                                   ; $7887: $3a
    ld h, c                                       ; $7888: $61
    ld b, c                                       ; $7889: $41
    inc b                                         ; $788a: $04
    jr @+$2d                                      ; $788b: $18 $2b

    ld b, l                                       ; $788d: $45
    ldh [rNR34], a                                ; $788e: $e0 $1e
    ld c, h                                       ; $7890: $4c
    halt                                          ; $7891: $76
    adc b                                         ; $7892: $88
    nop                                           ; $7893: $00
    ld c, a                                       ; $7894: $4f
    inc c                                         ; $7895: $0c
    dec e                                         ; $7896: $1d
    or e                                          ; $7897: $b3
    call nc, $9d72                                ; $7898: $d4 $72 $9d
    db $ed                                        ; $789b: $ed
    ld a, c                                       ; $789c: $79
    add hl, sp                                    ; $789d: $39
    or d                                          ; $789e: $b2
    sub a                                         ; $789f: $97
    inc a                                         ; $78a0: $3c
    rrca                                          ; $78a1: $0f
    ld de, $c10f                                  ; $78a2: $11 $0f $c1
    inc a                                         ; $78a5: $3c
    db $db                                        ; $78a6: $db
    ld b, e                                       ; $78a7: $43
    ld [hl], l                                    ; $78a8: $75
    or e                                          ; $78a9: $b3
    ldh [rLCDC], a                                ; $78aa: $e0 $40
    di                                            ; $78ac: $f3
    dec a                                         ; $78ad: $3d

Call_04e_78ae:
    sbc e                                         ; $78ae: $9b
    inc l                                         ; $78af: $2c
    ld a, l                                       ; $78b0: $7d
    cp b                                          ; $78b1: $b8
    ld [hl], a                                    ; $78b2: $77
    inc a                                         ; $78b3: $3c
    ld b, d                                       ; $78b4: $42
    adc a                                         ; $78b5: $8f
    dec bc                                        ; $78b6: $0b
    ld c, $58                                     ; $78b7: $0e $58
    rra                                           ; $78b9: $1f
    add hl, de                                    ; $78ba: $19
    ld c, $74                                     ; $78bb: $0e $74
    ret z                                         ; $78bd: $c8

    xor [hl]                                      ; $78be: $ae
    ld a, b                                       ; $78bf: $78
    xor h                                         ; $78c0: $ac
    cpl                                           ; $78c1: $2f
    pop af                                        ; $78c2: $f1
    xor e                                         ; $78c3: $ab
    ld a, h                                       ; $78c4: $7c
    jp hl                                         ; $78c5: $e9


    ld l, $88                                     ; $78c6: $2e $88
    nop                                           ; $78c8: $00
    rst $08                                       ; $78c9: $cf
    ld l, d                                       ; $78ca: $6a
    ld h, a                                       ; $78cb: $67
    sub e                                         ; $78cc: $93
    ld h, h                                       ; $78cd: $64
    db $e4                                        ; $78ce: $e4
    db $10                                        ; $78cf: $10
    ret                                           ; $78d0: $c9


    or e                                          ; $78d1: $b3
    pop hl                                        ; $78d2: $e1
    ld c, e                                       ; $78d3: $4b
    rra                                           ; $78d4: $1f
    xor $1d                                       ; $78d5: $ee $1d
    ld [hl], b                                    ; $78d7: $70
    adc a                                         ; $78d8: $8f
    ld c, e                                       ; $78d9: $4b
    call $f4db                                    ; $78da: $cd $db $f4
    jp z, $cc7d                                   ; $78dd: $ca $7d $cc

Call_04e_78e0:
    ld d, d                                       ; $78e0: $52
    inc hl                                        ; $78e1: $23
    add [hl]                                      ; $78e2: $86
    jp nc, $5de8                                  ; $78e3: $d2 $e8 $5d

    adc l                                         ; $78e6: $8d
    ld d, a                                       ; $78e7: $57
    or e                                          ; $78e8: $b3
    ld hl, $8ed3                                  ; $78e9: $21 $d3 $8e
    ld e, [hl]                                    ; $78ec: $5e
    ld a, [hl-]                                   ; $78ed: $3a
    or d                                          ; $78ee: $b2
    ld a, [hl]                                    ; $78ef: $7e
    inc [hl]                                      ; $78f0: $34
    inc sp                                        ; $78f1: $33
    ld a, [hl]                                    ; $78f2: $7e
    ld c, $99                                     ; $78f3: $0e $99
    ld c, c                                       ; $78f5: $49
    sub c                                         ; $78f6: $91
    call z, $0443                                 ; $78f7: $cc $43 $04
    adc a                                         ; $78fa: $8f
    ld c, e                                       ; $78fb: $4b
    ld c, l                                       ; $78fc: $4d
    xor e                                         ; $78fd: $ab
    sbc [hl]                                      ; $78fe: $9e
    halt                                          ; $78ff: $76
    db $dd                                        ; $7900: $dd
    res 2, a                                      ; $7901: $cb $97
    ld [hl], $24                                  ; $7903: $36 $24
    ld h, h                                       ; $7905: $64
    inc [hl]                                      ; $7906: $34
    db $ec                                        ; $7907: $ec
    xor b                                         ; $7908: $a8
    pop af                                        ; $7909: $f1
    ld [hl], h                                    ; $790a: $74
    ld h, h                                       ; $790b: $64
    db $fd                                        ; $790c: $fd
    ld l, b                                       ; $790d: $68
    ld h, [hl]                                    ; $790e: $66
    db $fc                                        ; $790f: $fc
    inc e                                         ; $7910: $1c
    dec c                                         ; $7911: $0d
    ld de, $ab4f                                  ; $7912: $11 $4f $ab
    ld [hl], a                                    ; $7915: $77
    ld d, a                                       ; $7916: $57
    rst $38                                       ; $7917: $ff
    ld c, a                                       ; $7918: $4f
    ccf                                           ; $7919: $3f
    ld a, [$90db]                                 ; $791a: $fa $db $90
    ld l, c                                       ; $791d: $69
    rst $10                                       ; $791e: $d7
    cp l                                          ; $791f: $bd
    ld l, h                                       ; $7920: $6c
    call z, $b326                                 ; $7921: $cc $26 $b3
    ld hl, $108f                                  ; $7924: $21 $8f $10
    ldh [rNR43], a                                ; $7927: $e0 $22
    db $f4                                        ; $7929: $f4
    ret z                                         ; $792a: $c8

    db $d3                                        ; $792b: $d3
    jp z, $d4c6                                   ; $792c: $ca $c6 $d4

    adc c                                         ; $792f: $89
    ld a, [$c86c]                                 ; $7930: $fa $6c $c8
    xor $c8                                       ; $7933: $ee $c8
    xor a                                         ; $7935: $af
    sbc h                                         ; $7936: $9c
    dec sp                                        ; $7937: $3b
    and c                                         ; $7938: $a1
    inc [hl]                                      ; $7939: $34
    ld a, h                                       ; $793a: $7c
    call c, $47a9                                 ; $793b: $dc $a9 $47
    inc de                                        ; $793e: $13
    and l                                         ; $793f: $a5
    ld a, [hl]                                    ; $7940: $7e
    ld [hl], l                                    ; $7941: $75
    or $c4                                        ; $7942: $f6 $c4
    sbc $68                                       ; $7944: $de $68
    adc b                                         ; $7946: $88
    nop                                           ; $7947: $00
    adc a                                         ; $7948: $8f
    ld c, e                                       ; $7949: $4b
    xor l                                         ; $794a: $ad
    and h                                         ; $794b: $a4
    ld l, h                                       ; $794c: $6c
    xor h                                         ; $794d: $ac
    call c, $c367                                 ; $794e: $dc $67 $c3
    and a                                         ; $7951: $a7
    ld d, a                                       ; $7952: $57
    rrca                                          ; $7953: $0f
    ld e, h                                       ; $7954: $5c
    add h                                         ; $7955: $84
    ld e, $19                                     ; $7956: $1e $19
    xor $f5                                       ; $7958: $ee $f5
    or a                                          ; $795a: $b7
    add [hl]                                      ; $795b: $86
    sbc e                                         ; $795c: $9b
    ld b, e                                       ; $795d: $43
    call nc, $fefc                                ; $795e: $d4 $fc $fe
    ccf                                           ; $7961: $3f
    ldh [$cd], a                                  ; $7962: $e0 $cd
    ld [c], a                                     ; $7964: $e2
    cp b                                          ; $7965: $b8
    dec hl                                        ; $7966: $2b
    sub $f4                                       ; $7967: $d6 $f4
    cp b                                          ; $7969: $b8
    ld d, e                                       ; $796a: $53
    xor a                                         ; $796b: $af
    call c, $9367                                 ; $796c: $dc $67 $93
    ld l, c                                       ; $796f: $69
    rst $10                                       ; $7970: $d7
    cp l                                          ; $7971: $bd
    ld l, h                                       ; $7972: $6c
    call z, $b4a4                                 ; $7973: $cc $a4 $b4
    pop af                                        ; $7976: $f1
    ld e, $fd                                     ; $7977: $1e $fd
    rrca                                          ; $7979: $0f
    ld a, [hl+]                                   ; $797a: $2a
    ld h, l                                       ; $797b: $65
    ld h, e                                       ; $797c: $63
    reti                                          ; $797d: $d9


    sub e                                         ; $797e: $93
    rra                                           ; $797f: $1f
    cp [hl]                                       ; $7980: $be
    db $f4                                        ; $7981: $f4
    ld c, l                                       ; $7982: $4d
    rst $38                                       ; $7983: $ff
    ld l, e                                       ; $7984: $6b
    inc a                                         ; $7985: $3c
    ld c, b                                       ; $7986: $48
    and [hl]                                      ; $7987: $a6
    push hl                                       ; $7988: $e5
    pop de                                        ; $7989: $d1
    or a                                          ; $798a: $b7
    ld a, $1c                                     ; $798b: $3e $1c
    ld [hl], b                                    ; $798d: $70
    ld a, [hl]                                    ; $798e: $7e
    ld a, [hl]                                    ; $798f: $7e
    rst $38                                       ; $7990: $ff
    ld c, a                                       ; $7991: $4f
    rla                                           ; $7992: $17
    xor c                                         ; $7993: $a9
    ld sp, hl                                     ; $7994: $f9
    db $fd                                        ; $7995: $fd
    ld a, a                                       ; $7996: $7f
    ccf                                           ; $7997: $3f
    adc b                                         ; $7998: $88
    ld e, a                                       ; $7999: $5f
    inc hl                                        ; $799a: $23
    ld hl, $e3bb                                  ; $799b: $21 $bb $e3
    ld c, [hl]                                    ; $799e: $4e
    sbc l                                         ; $799f: $9d
    push af                                       ; $79a0: $f5
    ld [$e351], a                                 ; $79a1: $ea $51 $e3
    bit 7, d                                      ; $79a4: $cb $7a
    or l                                          ; $79a6: $b5
    inc de                                        ; $79a7: $13
    inc hl                                        ; $79a8: $23
    reti                                          ; $79a9: $d9


    and e                                         ; $79aa: $a3
    ld h, a                                       ; $79ab: $67
    ld d, d                                       ; $79ac: $52
    jp c, $cf4a                                   ; $79ad: $da $4a $cf

    ccf                                           ; $79b0: $3f
    pop af                                        ; $79b1: $f1
    sbc d                                         ; $79b2: $9a
    cp l                                          ; $79b3: $bd
    or d                                          ; $79b4: $b2
    inc b                                         ; $79b5: $04
    rst $00                                       ; $79b6: $c7
    push de                                       ; $79b7: $d5
    push hl                                       ; $79b8: $e5
    inc e                                         ; $79b9: $1c
    ld [hl+], a                                   ; $79ba: $22
    and b                                         ; $79bb: $a0
    ld sp, hl                                     ; $79bc: $f9
    sbc [hl]                                      ; $79bd: $9e
    ld c, l                                       ; $79be: $4d
    sub [hl]                                      ; $79bf: $96
    ld a, $dc                                     ; $79c0: $3e $dc
    dec sp                                        ; $79c2: $3b
    adc $f6                                       ; $79c3: $ce $f6
    ld d, b                                       ; $79c5: $50
    db $dd                                        ; $79c6: $dd
    xor h                                         ; $79c7: $ac
    ld b, a                                       ; $79c8: $47
    ld [$eb8f], sp                                ; $79c9: $08 $8f $eb
    ld l, h                                       ; $79cc: $6c
    call z, $d352                                 ; $79cd: $cc $52 $d3

Call_04e_79d0:
    xor [hl]                                      ; $79d0: $ae
    ld a, e                                       ; $79d1: $7b
    reti                                          ; $79d2: $d9


    ret c                                         ; $79d3: $d8

    sub l                                         ; $79d4: $95
    db $ec                                        ; $79d5: $ec
    sbc l                                         ; $79d6: $9d

jr_04e_79d7:
    db $10                                        ; $79d7: $10
    cp a                                          ; $79d8: $bf
    ld b, [hl]                                    ; $79d9: $46
    and d                                         ; $79da: $a2
    rst $20                                       ; $79db: $e7
    rst $30                                       ; $79dc: $f7
    rst $38                                       ; $79dd: $ff
    ld d, c                                       ; $79de: $51
    db $e3                                        ; $79df: $e3
    jp hl                                         ; $79e0: $e9


    ret z                                         ; $79e1: $c8

    ld a, [$ccd1]                                 ; $79e2: $fa $d1 $cc
    ld hl, sp+$39                                 ; $79e5: $f8 $39
    inc b                                         ; $79e7: $04
    ld [hl+], a                                   ; $79e8: $22
    add b                                         ; $79e9: $80
    cp e                                          ; $79ea: $bb
    add $34                                       ; $79eb: $c6 $34
    jp hl                                         ; $79ed: $e9


    ld [hl], h                                    ; $79ee: $74
    ld sp, hl                                     ; $79ef: $f9
    reti                                          ; $79f0: $d9


    ld e, $aa                                     ; $79f1: $1e $aa
    sbc e                                         ; $79f3: $9b
    dec b                                         ; $79f4: $05
    rlca                                          ; $79f5: $07
    cp d                                          ; $79f6: $ba
    ld l, h                                       ; $79f7: $6c
    pop de                                        ; $79f8: $d1
    add c                                         ; $79f9: $81
    cp e                                          ; $79fa: $bb
    sub d                                         ; $79fb: $92
    adc d                                         ; $79fc: $8a
    and l                                         ; $79fd: $a5
    rst $38                                       ; $79fe: $ff
    db $ed                                        ; $79ff: $ed
    xor c                                         ; $7a00: $a9
    ld e, a                                       ; $7a01: $5f
    halt                                          ; $7a02: $76
    daa                                           ; $7a03: $27
    dec a                                         ; $7a04: $3d
    ld a, d                                       ; $7a05: $7a
    push hl                                       ; $7a06: $e5
    ld a, $8e                                     ; $7a07: $3e $8e
    sbc a                                         ; $7a09: $9f
    rst $18                                       ; $7a0a: $df
    rst $38                                       ; $7a0b: $ff
    db $d3                                        ; $7a0c: $d3
    ld b, l                                       ; $7a0d: $45
    ld l, d                                       ; $7a0e: $6a
    ld l, c                                       ; $7a0f: $69
    ld b, e                                       ; $7a10: $43
    ld b, d                                       ; $7a11: $42
    add [hl]                                      ; $7a12: $86
    di                                            ; $7a13: $f3
    db $d3                                        ; $7a14: $d3
    ld e, b                                       ; $7a15: $58
    rst $38                                       ; $7a16: $ff
    sub a                                         ; $7a17: $97
    ld b, b                                       ; $7a18: $40
    inc b                                         ; $7a19: $04
    rrca                                          ; $7a1a: $0f
    push de                                       ; $7a1b: $d5
    call $bf62                                    ; $7a1c: $cd $62 $bf
    di                                            ; $7a1f: $f3
    ld h, h                                       ; $7a20: $64
    jp c, $dacb                                   ; $7a21: $da $cb $da

    res 3, d                                      ; $7a24: $cb $9a
    ret                                           ; $7a26: $c9


    ld e, [hl]                                    ; $7a27: $5e
    cp l                                          ; $7a28: $bd
    dec hl                                        ; $7a29: $2b
    ld e, $fb                                     ; $7a2a: $1e $fb
    add a                                         ; $7a2c: $87
    xor b                                         ; $7a2d: $a8
    adc [hl]                                      ; $7a2e: $8e
    or e                                          ; $7a2f: $b3
    push hl                                       ; $7a30: $e5
    add sp, $31                                   ; $7a31: $e8 $31
    ld c, e                                       ; $7a33: $4b
    ld b, c                                       ; $7a34: $41
    inc b                                         ; $7a35: $04
    adc a                                         ; $7a36: $8f
    ld c, e                                       ; $7a37: $4b
    ld c, l                                       ; $7a38: $4d
    cp e                                          ; $7a39: $bb
    xor $65                                       ; $7a3a: $ee $65
    ld h, e                                       ; $7a3c: $63
    ld l, c                                       ; $7a3d: $69
    ld b, e                                       ; $7a3e: $43
    ld b, d                                       ; $7a3f: $42
    ld b, [hl]                                    ; $7a40: $46
    jp $86ce                                      ; $7a41: $c3 $ce $86


    xor h                                         ; $7a44: $ac
    rrca                                          ; $7a45: $0f
    rst $30                                       ; $7a46: $f7
    ld a, [de]                                    ; $7a47: $1a
    dec [hl]                                      ; $7a48: $35
    sbc [hl]                                      ; $7a49: $9e
    adc [hl]                                      ; $7a4a: $8e
    xor h                                         ; $7a4b: $ac
    rra                                           ; $7a4c: $1f
    call $9f8c                                    ; $7a4d: $cd $8c $9f
    ld b, e                                       ; $7a50: $43
    jr nz, jr_04e_79d7                            ; $7a51: $20 $84

    ld h, $a5                                     ; $7a53: $26 $a5
    adc l                                         ; $7a55: $8d
    ld e, c                                       ; $7a56: $59
    ld l, d                                       ; $7a57: $6a
    rst $38                                       ; $7a58: $ff
    and b                                         ; $7a59: $a0
    ld d, d                                       ; $7a5a: $52
    ld [hl], $e6                                  ; $7a5b: $36 $e6
    rst $30                                       ; $7a5d: $f7
    rst $38                                       ; $7a5e: $ff
    ld [hl], h                                    ; $7a5f: $74
    sub c                                         ; $7a60: $91
    sbc d                                         ; $7a61: $9a
    dec c                                         ; $7a62: $0d
    sbc c                                         ; $7a63: $99
    rst $18                                       ; $7a64: $df
    rst $38                                       ; $7a65: $ff
    sub a                                         ; $7a66: $97
    cp [hl]                                       ; $7a67: $be
    jp hl                                         ; $7a68: $e9


    ld a, a                                       ; $7a69: $7f
    adc l                                         ; $7a6a: $8d
    rlca                                          ; $7a6b: $07
    add hl, bc                                    ; $7a6c: $09
    add a                                         ; $7a6d: $87
    ld [$9c98], sp                                ; $7a6e: $08 $98 $9c
    ld e, $4d                                     ; $7a71: $1e $4d
    ld a, h                                       ; $7a73: $7c
    push af                                       ; $7a74: $f5
    ld [hl], d                                    ; $7a75: $72
    cp l                                          ; $7a76: $bd
    ld e, h                                       ; $7a77: $5c
    sbc l                                         ; $7a78: $9d
    ld c, $8f                                     ; $7a79: $0e $8f
    or e                                          ; $7a7b: $b3
    dec a                                         ; $7a7c: $3d

Jump_04e_7a7d:
    ld d, h                                       ; $7a7d: $54
    scf                                           ; $7a7e: $37
    db $eb                                        ; $7a7f: $eb
    ld l, h                                       ; $7a80: $6c
    ld a, b                                       ; $7a81: $78
    ld b, a                                       ; $7a82: $47
    ld [$65e6], a                                 ; $7a83: $ea $e6 $65
    ld b, e                                       ; $7a86: $43
    rst $00                                       ; $7a87: $c7
    inc l                                         ; $7a88: $2c
    dec [hl]                                      ; $7a89: $35
    xor l                                         ; $7a8a: $ad
    ld l, h                                       ; $7a8b: $6c
    ld c, h                                       ; $7a8c: $4c
    ccf                                           ; $7a8d: $3f
    call nz, $47cb                                ; $7a8e: $c4 $cb $47
    xor a                                         ; $7a91: $af
    add d                                         ; $7a92: $82
    ld a, e                                       ; $7a93: $7b
    db $ed                                        ; $7a94: $ed
    push de                                       ; $7a95: $d5
    pop hl                                        ; $7a96: $e1
    and $10                                       ; $7a97: $e6 $10
    dec [hl]                                      ; $7a99: $35
    cp a                                          ; $7a9a: $bf
    rst $38                                       ; $7a9b: $ff
    rrca                                          ; $7a9c: $0f
    ld a, b                                       ; $7a9d: $78
    cp a                                          ; $7a9e: $bf
    inc c                                         ; $7a9f: $0c
    cp h                                          ; $7aa0: $bc
    ld e, a                                       ; $7aa1: $5f
    ld b, $de                                     ; $7aa2: $06 $de
    inc l                                         ; $7aa4: $2c
    adc [hl]                                      ; $7aa5: $8e
    cp e                                          ; $7aa6: $bb
    ld h, d                                       ; $7aa7: $62
    ld c, l                                       ; $7aa8: $4d
    ld b, e                                       ; $7aa9: $43
    inc b                                         ; $7aaa: $04
    adc a                                         ; $7aab: $8f
    ld c, e                                       ; $7aac: $4b
    ld c, l                                       ; $7aad: $4d
    cp e                                          ; $7aae: $bb
    xor $65                                       ; $7aaf: $ee $65
    ld h, e                                       ; $7ab1: $63
    ld [hl], $64                                  ; $7ab2: $36 $64
    ld a, l                                       ; $7ab4: $7d
    cp b                                          ; $7ab5: $b8
    rst $10                                       ; $7ab6: $d7
    jp nc, $8486                                  ; $7ab7: $d2 $86 $84

    adc h                                         ; $7aba: $8c
    add [hl]                                      ; $7abb: $86
    dec e                                         ; $7abc: $1d
    dec [hl]                                      ; $7abd: $35
    sbc [hl]                                      ; $7abe: $9e
    adc [hl]                                      ; $7abf: $8e
    xor h                                         ; $7ac0: $ac
    rra                                           ; $7ac1: $1f
    call $9f8c                                    ; $7ac2: $cd $8c $9f
    ld b, e                                       ; $7ac5: $43
    jr nz, jr_04e_7aca                            ; $7ac6: $20 $02

    sbc b                                         ; $7ac8: $98
    sbc h                                         ; $7ac9: $9c

jr_04e_7aca:
    ld e, $4d                                     ; $7aca: $1e $4d
    ld a, h                                       ; $7acc: $7c
    push af                                       ; $7acd: $f5
    ld [hl], d                                    ; $7ace: $72
    cp l                                          ; $7acf: $bd
    ld e, h                                       ; $7ad0: $5c
    sbc l                                         ; $7ad1: $9d
    ld c, $8f                                     ; $7ad2: $0e $8f
    or e                                          ; $7ad4: $b3
    dec a                                         ; $7ad5: $3d
    ld d, h                                       ; $7ad6: $54
    scf                                           ; $7ad7: $37
    db $eb                                        ; $7ad8: $eb
    ld l, h                                       ; $7ad9: $6c
    ld a, b                                       ; $7ada: $78
    ld b, a                                       ; $7adb: $47
    ld [$65e6], a                                 ; $7adc: $ea $e6 $65
    ld b, e                                       ; $7adf: $43
    rst $00                                       ; $7ae0: $c7
    inc l                                         ; $7ae1: $2c
    dec [hl]                                      ; $7ae2: $35
    xor l                                         ; $7ae3: $ad
    ld l, h                                       ; $7ae4: $6c
    ld c, h                                       ; $7ae5: $4c
    ccf                                           ; $7ae6: $3f
    call nz, $47cb                                ; $7ae7: $c4 $cb $47
    xor a                                         ; $7aea: $af
    add d                                         ; $7aeb: $82
    ld a, e                                       ; $7aec: $7b
    db $ed                                        ; $7aed: $ed
    push de                                       ; $7aee: $d5
    pop hl                                        ; $7aef: $e1
    and $10                                       ; $7af0: $e6 $10
    dec [hl]                                      ; $7af2: $35
    cp a                                          ; $7af3: $bf
    rst $38                                       ; $7af4: $ff
    rrca                                          ; $7af5: $0f
    ld a, b                                       ; $7af6: $78
    cp a                                          ; $7af7: $bf
    inc c                                         ; $7af8: $0c
    cp h                                          ; $7af9: $bc
    ld e, a                                       ; $7afa: $5f
    ld b, $de                                     ; $7afb: $06 $de
    inc l                                         ; $7afd: $2c
    adc [hl]                                      ; $7afe: $8e
    cp e                                          ; $7aff: $bb
    ld h, d                                       ; $7b00: $62
    ld c, l                                       ; $7b01: $4d
    jp $8f01                                      ; $7b02: $c3 $01 $8f


    pop de                                        ; $7b05: $d1
    xor e                                         ; $7b06: $ab
    sub [hl]                                      ; $7b07: $96
    ld [hl], $24                                  ; $7b08: $36 $24
    ld h, h                                       ; $7b0a: $64
    sbc c                                         ; $7b0b: $99
    ld e, a                                       ; $7b0c: $5f
    ld h, $35                                     ; $7b0d: $26 $35
    ld h, [hl]                                    ; $7b0f: $66
    xor c                                         ; $7b10: $a9
    db $fd                                        ; $7b11: $fd
    add e                                         ; $7b12: $83
    ld c, d                                       ; $7b13: $4a
    call $ffef                                    ; $7b14: $cd $ef $ff
    jp hl                                         ; $7b17: $e9


    ld [hl+], a                                   ; $7b18: $22
    dec [hl]                                      ; $7b19: $35
    dec de                                        ; $7b1a: $1b
    ld [hl-], a                                   ; $7b1b: $32
    cp a                                          ; $7b1c: $bf
    rst $38                                       ; $7b1d: $ff
    adc a                                         ; $7b1e: $8f
    sub [hl]                                      ; $7b1f: $96
    dec l                                         ; $7b20: $2d
    ld a, [hl-]                                   ; $7b21: $3a
    ld [hl], b                                    ; $7b22: $70
    ld d, a                                       ; $7b23: $57
    ld d, d                                       ; $7b24: $52
    ld bc, $0f11                                  ; $7b25: $01 $11 $0f
    ld b, a                                       ; $7b28: $47
    rst $28                                       ; $7b29: $ef
    add sp, -$27                                  ; $7b2a: $e8 $d9
    db $10                                        ; $7b2c: $10
    adc b                                         ; $7b2d: $88
    nop                                           ; $7b2e: $00
    rrca                                          ; $7b2f: $0f
    ld c, c                                       ; $7b30: $49
    ld c, a                                       ; $7b31: $4f
    pop af                                        ; $7b32: $f1
    dec a                                         ; $7b33: $3d
    dec de                                        ; $7b34: $1b
    ld a, $1a                                     ; $7b35: $3e $1a
    halt                                          ; $7b37: $76
    or $ba                                        ; $7b38: $f6 $ba
    rrca                                          ; $7b3a: $0f
    rst $28                                       ; $7b3b: $ef
    sub a                                         ; $7b3c: $97
    pop af                                        ; $7b3d: $f1
    ld a, [hl]                                    ; $7b3e: $7e
    add hl, de                                    ; $7b3f: $19
    ld l, a                                       ; $7b40: $6f
    jp $e20c                                      ; $7b41: $c3 $0c $e2


    ld h, a                                       ; $7b44: $67
    ld a, e                                       ; $7b45: $7b
    xor b                                         ; $7b46: $a8
    ld l, [hl]                                    ; $7b47: $6e
    sub $23                                       ; $7b48: $d6 $23
    inc b                                         ; $7b4a: $04
    ret nz                                        ; $7b4b: $c0

    ld a, [$67c8]                                 ; $7b4c: $fa $c8 $67
    inc bc                                        ; $7b4f: $03
    db $e4                                        ; $7b50: $e4
    add hl, hl                                    ; $7b51: $29
    call $0818                                    ; $7b52: $cd $18 $08
    ld hl, $8002                                  ; $7b55: $21 $02 $80
    adc a                                         ; $7b58: $8f
    db $ec                                        ; $7b59: $ec
    dec hl                                        ; $7b5a: $2b
    rst $30                                       ; $7b5b: $f7
    reti                                          ; $7b5c: $d9


    ld h, h                                       ; $7b5d: $64
    call c, $dccb                                 ; $7b5e: $dc $cb $dc
    res 3, h                                      ; $7b61: $cb $9c
    ld l, c                                       ; $7b63: $69
    rst $08                                       ; $7b64: $cf
    add a                                         ; $7b65: $87
    ld a, e                                       ; $7b66: $7b
    db $f4                                        ; $7b67: $f4
    reti                                          ; $7b68: $d9


    ld e, $aa                                     ; $7b69: $1e $aa
    sbc e                                         ; $7b6b: $9b
    dec b                                         ; $7b6c: $05
    ld de, $c9e7                                  ; $7b6d: $11 $e7 $c9
    or h                                          ; $7b70: $b4
    ld [$9e95], a                                 ; $7b71: $ea $95 $9e
    xor $c4                                       ; $7b74: $ee $c4
    xor a                                         ; $7b76: $af
    adc a                                         ; $7b77: $8f
    ld e, [hl]                                    ; $7b78: $5e
    reti                                          ; $7b79: $d9


    rrca                                          ; $7b7a: $0f
    ld [c], a                                     ; $7b7b: $e2
    rst $10                                       ; $7b7c: $d7
    ld [$9dfb], sp                                ; $7b7d: $08 $fb $9d
    add a                                         ; $7b80: $87
    cpl                                           ; $7b81: $2f
    db $fd                                        ; $7b82: $fd
    ld l, a                                       ; $7b83: $6f
    rst $28                                       ; $7b84: $ef
    xor l                                         ; $7b85: $ad
    pop hl                                        ; $7b86: $e1

Jump_04e_7b87:
    and $10                                       ; $7b87: $e6 $10
    sub l                                         ; $7b89: $95
    ld d, a                                       ; $7b8a: $57
    cp d                                          ; $7b8b: $ba
    db $ed                                        ; $7b8c: $ed
    ld d, d                                       ; $7b8d: $52
    db $ec                                        ; $7b8e: $ec
    ld de, $c210                                  ; $7b8f: $11 $10 $c2
    dec h                                         ; $7b92: $25
    ld h, d                                       ; $7b93: $62
    and e                                         ; $7b94: $a3
    and a                                         ; $7b95: $a7
    rst $18                                       ; $7b96: $df
    ld l, a                                       ; $7b97: $6f
    ld c, c                                       ; $7b98: $49
    cp c                                          ; $7b99: $b9
    ld b, a                                       ; $7b9a: $47
    ld c, e                                       ; $7b9b: $4b
    push hl                                       ; $7b9c: $e5
    dec a                                         ; $7b9d: $3d
    cp l                                          ; $7b9e: $bd
    ld [hl], $11                                  ; $7b9f: $36 $11
    dec de                                        ; $7ba1: $1b
    sbc l                                         ; $7ba2: $9d
    cp l                                          ; $7ba3: $bd
    add e                                         ; $7ba4: $83
    ld c, c                                       ; $7ba5: $49
    or $da                                        ; $7ba6: $f6 $da
    ld a, e                                       ; $7ba8: $7b
    xor a                                         ; $7ba9: $af
    cp l                                          ; $7baa: $bd
    halt                                          ; $7bab: $76
    ld [hl], $ed                                  ; $7bac: $36 $ed
    db $f4                                        ; $7bae: $f4

Call_04e_7baf:
    rst $38                                       ; $7baf: $ff
    db $f4                                        ; $7bb0: $f4
    ei                                            ; $7bb1: $fb
    dec l                                         ; $7bb2: $2d
    add hl, hl                                    ; $7bb3: $29
    rst $30                                       ; $7bb4: $f7
    ld l, b                                       ; $7bb5: $68
    xor c                                         ; $7bb6: $a9
    pop hl                                        ; $7bb7: $e1
    db $fc                                        ; $7bb8: $fc
    jp z, $fa7d                                   ; $7bb9: $ca $7d $fa

    dec d                                         ; $7bbc: $15
    xor c                                         ; $7bbd: $a9
    or e                                          ; $7bbe: $b3
    ret                                           ; $7bbf: $c9


    pop de                                        ; $7bc0: $d1
    db $10                                        ; $7bc1: $10
    ld b, d                                       ; $7bc2: $42
    inc b                                         ; $7bc3: $04
    ld h, b                                       ; $7bc4: $60
    sbc b                                         ; $7bc5: $98
    adc c                                         ; $7bc6: $89
    xor a                                         ; $7bc7: $af
    db $f4                                        ; $7bc8: $f4
    reti                                          ; $7bc9: $d9


    ldh a, [$95]                                  ; $7bca: $f0 $95
    ld l, [hl]                                    ; $7bcc: $6e
    cp e                                          ; $7bcd: $bb
    call nc, Call_04e_7e70                        ; $7bce: $d4 $70 $7e
    ld l, a                                       ; $7bd1: $6f
    dec c                                         ; $7bd2: $0d
    scf                                           ; $7bd3: $37
    add a                                         ; $7bd4: $87
    xor b                                         ; $7bd5: $a8
    ld h, l                                       ; $7bd6: $65
    ld b, e                                       ; $7bd7: $43
    ld h, a                                       ; $7bd8: $67
    sub e                                         ; $7bd9: $93
    ld [hl], c                                    ; $7bda: $71
    ld a, h                                       ; $7bdb: $7c
    adc a                                         ; $7bdc: $8f
    dec sp                                        ; $7bdd: $3b
    push af                                       ; $7bde: $f5
    jp z, Jump_04e_5a7d                           ; $7bdf: $ca $7d $5a

    xor l                                         ; $7be2: $ad
    db $f4                                        ; $7be3: $f4
    ld [hl], h                                    ; $7be4: $74
    daa                                           ; $7be5: $27
    ld a, [hl]                                    ; $7be6: $7e
    ld a, l                                       ; $7be7: $7d
    db $f4                                        ; $7be8: $f4
    jp z, $107e                                   ; $7be9: $ca $7e $10

    cp a                                          ; $7bec: $bf
    ld b, [hl]                                    ; $7bed: $46
    adc $06                                       ; $7bee: $ce $06
    adc $b8                                       ; $7bf0: $ce $b8
    ld b, a                                       ; $7bf2: $47
    or e                                          ; $7bf3: $b3
    ld b, a                                       ; $7bf4: $47
    ld l, a                                       ; $7bf5: $6f
    dec c                                         ; $7bf6: $0d
    scf                                           ; $7bf7: $37
    add a                                         ; $7bf8: $87
    xor b                                         ; $7bf9: $a8
    cp h                                          ; $7bfa: $bc
    jp nc, $976d                                  ; $7bfb: $d2 $6d $97

    ld a, [hl-]                                   ; $7bfe: $3a
    dec de                                        ; $7bff: $1b
    db $ed                                        ; $7c00: $ed
    add c                                         ; $7c01: $81
    inc sp                                        ; $7c02: $33
    xor $d1                                       ; $7c03: $ee $d1
    ld h, a                                       ; $7c05: $67
    db $e3                                        ; $7c06: $e3
    ld c, [hl]                                    ; $7c07: $4e
    cp l                                          ; $7c08: $bd
    ld [hl], d                                    ; $7c09: $72
    sbc a                                         ; $7c0a: $9f
    ld c, l                                       ; $7c0b: $4d
    or $4b                                        ; $7c0c: $f6 $4b
    ld l, h                                       ; $7c0e: $6c
    reti                                          ; $7c0f: $d9


    jr @-$30                                      ; $7c10: $18 $ce

    adc a                                         ; $7c12: $8f
    ld e, [hl]                                    ; $7c13: $5e
    rst $30                                       ; $7c14: $f7
    ld [hl], c                                    ; $7c15: $71
    rst $00                                       ; $7c16: $c7
    ld [hl], a                                    ; $7c17: $77
    or $08                                        ; $7c18: $f6 $08
    ld c, a                                       ; $7c1a: $4f
    ld c, $35                                     ; $7c1b: $0e $35
    dec l                                         ; $7c1d: $2d
    sbc b                                         ; $7c1e: $98
    di                                            ; $7c1f: $f3
    ei                                            ; $7c20: $fb
    rst $38                                       ; $7c21: $ff
    ld e, $aa                                     ; $7c22: $1e $aa
    sbc e                                         ; $7c24: $9b
    ld [hl], l                                    ; $7c25: $75
    or [hl]                                       ; $7c26: $b6
    ld a, [$6aff]                                 ; $7c27: $fa $ff $6a
    ld b, $87                                     ; $7c2a: $06 $87
    ld a, e                                       ; $7c2c: $7b
    ld [hl], d                                    ; $7c2d: $72
    xor b                                         ; $7c2e: $a8
    ld l, c                                       ; $7c2f: $69
    pop bc                                        ; $7c30: $c1
    or h                                          ; $7c31: $b4
    db $fc                                        ; $7c32: $fc
    db $fc                                        ; $7c33: $fc
    cp $bf                                        ; $7c34: $fe $bf
    or a                                          ; $7c36: $b7
    add [hl]                                      ; $7c37: $86
    sbc e                                         ; $7c38: $9b
    ld b, e                                       ; $7c39: $43
    call nc, Call_04e_53b8                        ; $7c3a: $d4 $b8 $53

jr_04e_7c3d:
    xor a                                         ; $7c3d: $af
    call c, $d5a7                                 ; $7c3e: $dc $a7 $d5
    ld c, d                                       ; $7c41: $4a
    ld c, a                                       ; $7c42: $4f
    ld [hl], a                                    ; $7c43: $77
    ld [c], a                                     ; $7c44: $e2
    rst $10                                       ; $7c45: $d7
    ld b, a                                       ; $7c46: $47
    xor a                                         ; $7c47: $af
    db $ec                                        ; $7c48: $ec
    rlca                                          ; $7c49: $07
    pop af                                        ; $7c4a: $f1
    ld l, e                                       ; $7c4b: $6b
    db $e4                                        ; $7c4c: $e4
    ld l, h                                       ; $7c4d: $6c
    rrca                                          ; $7c4e: $0f
    push de                                       ; $7c4f: $d5
    call Call_000_0882                            ; $7c50: $cd $82 $08
    rst $20                                       ; $7c53: $e7
    ret                                           ; $7c54: $c9


    ld [hl], d                                    ; $7c55: $72
    db $f4                                        ; $7c56: $f4
    cp $f5                                        ; $7c57: $fe $f5
    sbc b                                         ; $7c59: $98
    ld [$2c93], a                                 ; $7c5a: $ea $93 $2c
    pop af                                        ; $7c5d: $f1
    or e                                          ; $7c5e: $b3
    dec a                                         ; $7c5f: $3d
    ld d, h                                       ; $7c60: $54
    scf                                           ; $7c61: $37
    dec bc                                        ; $7c62: $0b
    ld [hl+], a                                   ; $7c63: $22
    and b                                         ; $7c64: $a0
    ld sp, hl                                     ; $7c65: $f9
    sbc [hl]                                      ; $7c66: $9e
    ld c, l                                       ; $7c67: $4d
    sub [hl]                                      ; $7c68: $96
    xor $3a                                       ; $7c69: $ee $3a
    db $db                                        ; $7c6b: $db
    ld b, e                                       ; $7c6c: $43
    ld [hl], l                                    ; $7c6d: $75
    or e                                          ; $7c6e: $b3
    ld e, $21                                     ; $7c6f: $1e $21
    ret nz                                        ; $7c71: $c0

    ld c, [hl]                                    ; $7c72: $4e
    sbc l                                         ; $7c73: $9d
    ld l, $91                                     ; $7c74: $2e $91
    ld hl, sp+$39                                 ; $7c76: $f8 $39
    ld h, h                                       ; $7c78: $64
    ld b, a                                       ; $7c79: $47
    cpl                                           ; $7c7a: $2f
    ld l, l                                       ; $7c7b: $6d
    jp c, $3d8b                                   ; $7c7c: $da $8b $3d

    ld [bc], a                                    ; $7c7f: $02
    and b                                         ; $7c80: $a0
    ld sp, hl                                     ; $7c81: $f9
    sbc [hl]                                      ; $7c82: $9e
    ld c, l                                       ; $7c83: $4d
    halt                                          ; $7c84: $76
    push bc                                       ; $7c85: $c5
    ld h, e                                       ; $7c86: $63
    jp hl                                         ; $7c87: $e9


    xor [hl]                                      ; $7c88: $ae
    or e                                          ; $7c89: $b3
    dec a                                         ; $7c8a: $3d
    ld d, h                                       ; $7c8b: $54
    scf                                           ; $7c8c: $37
    db $eb                                        ; $7c8d: $eb
    ld de, $6002                                  ; $7c8e: $11 $02 $60
    add d                                         ; $7c91: $82
    ld a, c                                       ; $7c92: $79
    or [hl]                                       ; $7c93: $b6
    inc l                                         ; $7c94: $2c
    sub a                                         ; $7c95: $97
    db $e3                                        ; $7c96: $e3
    adc $c6                                       ; $7c97: $ce $c6
    push af                                       ; $7c99: $f5
    sub c                                         ; $7c9a: $91
    pop hl                                        ; $7c9b: $e1
    ret nz                                        ; $7c9c: $c0

    ld b, l                                       ; $7c9d: $45
    add sp, -$6f                                  ; $7c9e: $e8 $91
    rst $00                                       ; $7ca0: $c7
    sbc l                                         ; $7ca1: $9d
    ld e, d                                       ; $7ca2: $5a
    dec sp                                        ; $7ca3: $3b
    jr jr_04e_7c3d                                ; $7ca4: $18 $97

    adc l                                         ; $7ca6: $8d
    pop de                                        ; $7ca7: $d1
    xor e                                         ; $7ca8: $ab
    add $4c                                       ; $7ca9: $c6 $4c
    or d                                          ; $7cab: $b2
    rst $08                                       ; $7cac: $cf
    and h                                         ; $7cad: $a4
    or h                                          ; $7cae: $b4
    ld [hl], c                                    ; $7caf: $71
    scf                                           ; $7cb0: $37
    ld b, l                                       ; $7cb1: $45
    ld b, [hl]                                    ; $7cb2: $46
    xor a                                         ; $7cb3: $af
    ld e, d                                       ; $7cb4: $5a
    cp c                                          ; $7cb5: $b9
    adc a                                         ; $7cb6: $8f
    ld a, [c]                                     ; $7cb7: $f2
    cp e                                          ; $7cb8: $bb
    rst $38                                       ; $7cb9: $ff
    rla                                           ; $7cba: $17
    ld b, h                                       ; $7cbb: $44
    rrca                                          ; $7cbc: $0f
    dec h                                         ; $7cbd: $25
    db $e3                                        ; $7cbe: $e3
    ld hl, sp+$5e                                 ; $7cbf: $f8 $5e
    db $fd                                        ; $7cc1: $fd
    ld e, a                                       ; $7cc2: $5f
    dec hl                                        ; $7cc3: $2b
    rst $30                                       ; $7cc4: $f7
    ld d, c                                       ; $7cc5: $51
    ld a, [hl]                                    ; $7cc6: $7e
    rst $30                                       ; $7cc7: $f7
    rst $38                                       ; $7cc8: $ff
    add d                                         ; $7cc9: $82
    db $db                                        ; $7cca: $db
    ld a, c                                       ; $7ccb: $79
    ld hl, sp+$3e                                 ; $7ccc: $f8 $3e
    rst $28                                       ; $7cce: $ef
    pop de                                        ; $7ccf: $d1
    res 0, [hl]                                   ; $7cd0: $cb $86
    ld l, $64                                     ; $7cd2: $2e $64
    call c, $d3a9                                 ; $7cd4: $dc $a9 $d3
    dec h                                         ; $7cd7: $25
    ld [de], a                                    ; $7cd8: $12
    ccf                                           ; $7cd9: $3f
    rst $00                                       ; $7cda: $c7
    sbc h                                         ; $7cdb: $9c
    sub l                                         ; $7cdc: $95
    ld [hl+], a                                   ; $7cdd: $22
    pop de                                        ; $7cde: $d1
    ld h, e                                       ; $7cdf: $63
    sub [hl]                                      ; $7ce0: $96
    add d                                         ; $7ce1: $82
    dec sp                                        ; $7ce2: $3b
    ld c, a                                       ; $7ce3: $4f
    sub [hl]                                      ; $7ce4: $96
    ld a, $f5                                     ; $7ce5: $3e $f5
    ld a, [hl]                                    ; $7ce7: $7e
    ld a, b                                       ; $7ce8: $78
    xor l                                         ; $7ce9: $ad
    jp Jump_04e_70d6                              ; $7cea: $c3 $d6 $70


    ld a, [hl]                                    ; $7ced: $7e
    ld a, b                                       ; $7cee: $78
    dec de                                        ; $7cef: $1b
    ld l, $72                                     ; $7cf0: $2e $72
    ld [hl], $3d                                  ; $7cf2: $36 $3d
    ldh a, [$c9]                                  ; $7cf4: $f0 $c9
    db $ed                                        ; $7cf6: $ed
    adc [hl]                                      ; $7cf7: $8e
    rst $38                                       ; $7cf8: $ff
    add a                                         ; $7cf9: $87
    di                                            ; $7cfa: $f3
    di                                            ; $7cfb: $f3
    ld c, $cb                                     ; $7cfc: $0e $cb
    adc h                                         ; $7cfe: $8c
    jp hl                                         ; $7cff: $e9


    cp h                                          ; $7d00: $bc
    ld e, h                                       ; $7d01: $5c
    ld d, c                                       ; $7d02: $51
    ld hl, $0f70                                  ; $7d03: $21 $70 $0f
    dec h                                         ; $7d06: $25
    dec sp                                        ; $7d07: $3b
    ld a, d                                       ; $7d08: $7a
    ld a, [hl-]                                   ; $7d09: $3a
    rst $18                                       ; $7d0a: $df
    dec bc                                        ; $7d0b: $0b
    add $78                                       ; $7d0c: $c6 $78
    or h                                          ; $7d0e: $b4
    rrca                                          ; $7d0f: $0f
    rst $20                                       ; $7d10: $e7
    rst $00                                       ; $7d11: $c7
    sbc l                                         ; $7d12: $9d
    ld a, [hl-]                                   ; $7d13: $3a
    ld e, l                                       ; $7d14: $5d
    ld [hl+], a                                   ; $7d15: $22
    pop af                                        ; $7d16: $f1
    ld [hl], e                                    ; $7d17: $73
    inc [hl]                                      ; $7d18: $34
    ld b, h                                       ; $7d19: $44
    rst $20                                       ; $7d1a: $e7
    ret                                           ; $7d1b: $c9


    jp nc, $dea7                                  ; $7d1c: $d2 $a7 $de

    rrca                                          ; $7d1f: $0f
    xor a                                         ; $7d20: $af
    ld [hl], l                                    ; $7d21: $75
    ret c                                         ; $7d22: $d8

    ld a, [de]                                    ; $7d23: $1a
    adc $0f                                       ; $7d24: $ce $0f
    ld l, a                                       ; $7d26: $6f
    jp $ce45                                      ; $7d27: $c3 $45 $ce


    and [hl]                                      ; $7d2a: $a6
    rlca                                          ; $7d2b: $07
    ld a, $b9                                     ; $7d2c: $3e $b9
    db $dd                                        ; $7d2e: $dd
    pop af                                        ; $7d2f: $f1
    rst $38                                       ; $7d30: $ff
    ld [hl], b                                    ; $7d31: $70
    ld a, [hl]                                    ; $7d32: $7e
    sbc $61                                       ; $7d33: $de $61
    sbc c                                         ; $7d35: $99
    ld sp, $979d                                  ; $7d36: $31 $9d $97
    dec hl                                        ; $7d39: $2b
    ld a, [hl+]                                   ; $7d3a: $2a
    inc b                                         ; $7d3b: $04
    xor $a1                                       ; $7d3c: $ee $a1
    ld h, h                                       ; $7d3e: $64
    ld b, a                                       ; $7d3f: $47
    ld c, a                                       ; $7d40: $4f
    rst $20                                       ; $7d41: $e7
    ld a, e                                       ; $7d42: $7b
    pop bc                                        ; $7d43: $c1
    jr @-$6f                                      ; $7d44: $18 $8f

    or $e1                                        ; $7d46: $f6 $e1
    db $fc                                        ; $7d48: $fc
    cp b                                          ; $7d49: $b8
    ld d, e                                       ; $7d4a: $53
    and a                                         ; $7d4b: $a7
    ld c, e                                       ; $7d4c: $4b
    inc h                                         ; $7d4d: $24
    ld a, [hl]                                    ; $7d4e: $7e
    adc [hl]                                      ; $7d4f: $8e
    add [hl]                                      ; $7d50: $86
    ld [$4b8f], sp                                ; $7d51: $08 $8f $4b
    ld c, l                                       ; $7d54: $4d
    db $dd                                        ; $7d55: $dd
    inc d                                         ; $7d56: $14
    reti                                          ; $7d57: $d9


    ld e, l                                       ; $7d58: $5d
    ret z                                         ; $7d59: $c8

    cp b                                          ; $7d5a: $b8
    ld d, e                                       ; $7d5b: $53
    ld a, e                                       ; $7d5c: $7b
    sbc e                                         ; $7d5d: $9b
    rst $38                                       ; $7d5e: $ff
    ld c, e                                       ; $7d5f: $4b
    ld l, h                                       ; $7d60: $6c
    inc l                                         ; $7d61: $2c
    inc de                                        ; $7d62: $13
    di                                            ; $7d63: $f3
    ld l, e                                       ; $7d64: $6b
    ld [hl], d                                    ; $7d65: $72
    db $f4                                        ; $7d66: $f4
    sbc b                                         ; $7d67: $98
    and l                                         ; $7d68: $a5
    and [hl]                                      ; $7d69: $a6
    ld d, a                                       ; $7d6a: $57
    adc a                                         ; $7d6b: $8f
    dec h                                         ; $7d6c: $25
    xor d                                         ; $7d6d: $aa
    db $e3                                        ; $7d6e: $e3
    ld l, h                                       ; $7d6f: $6c
    inc [hl]                                      ; $7d70: $34
    ld h, h                                       ; $7d71: $64
    ld [hl], $64                                  ; $7d72: $36 $64
    rst $38                                       ; $7d74: $ff
    ld [de], a                                    ; $7d75: $12
    add hl, hl                                    ; $7d76: $29
    dec de                                        ; $7d77: $1b
    cp e                                          ; $7d78: $bb
    ld [c], a                                     ; $7d79: $e2
    or c                                          ; $7d7a: $b1
    ld a, [$cf3f]                                 ; $7d7b: $fa $3f $cf
    add [hl]                                      ; $7d7e: $86
    ld c, h                                       ; $7d7f: $4c
    dec sp                                        ; $7d80: $3b
    ld a, [de]                                    ; $7d81: $1a
    ld [hl+], a                                   ; $7d82: $22
    and b                                         ; $7d83: $a0
    adc e                                         ; $7d84: $8b
    jp nc, Jump_000_3e5a                          ; $7d85: $d2 $5a $3e

    ld d, h                                       ; $7d88: $54
    db $f4                                        ; $7d89: $f4
    jp z, $cc7d                                   ; $7d8a: $ca $7d $cc

    ld d, d                                       ; $7d8d: $52
    dec sp                                        ; $7d8e: $3b
    ld a, d                                       ; $7d8f: $7a
    call c, $bda9                                 ; $7d90: $dc $a9 $bd
    call Call_000_25ff                            ; $7d93: $cd $ff $25
    ld [hl], $ce                                  ; $7d96: $36 $ce
    ld b, [hl]                                    ; $7d98: $46
    ld b, e                                       ; $7d99: $43
    add $2c                                       ; $7d9a: $c6 $2c
    dec [hl]                                      ; $7d9c: $35
    ld l, a                                       ; $7d9d: $6f
    db $d3                                        ; $7d9e: $d3
    cp e                                          ; $7d9f: $bb
    ld [c], a                                     ; $7da0: $e2
    or c                                          ; $7da1: $b1
    ld [hl], d                                    ; $7da2: $72
    sbc a                                         ; $7da3: $9f
    dec c                                         ; $7da4: $0d
    sbc a                                         ; $7da5: $9f
    add $3c                                       ; $7da6: $c6 $3c
    ld a, $1e                                     ; $7da8: $3e $1e
    cp l                                          ; $7daa: $bd
    ld b, h                                       ; $7dab: $44
    ld l, h                                       ; $7dac: $6c
    db $f4                                        ; $7dad: $f4
    ld l, h                                       ; $7dae: $6c
    ret z                                         ; $7daf: $c8

    or h                                          ; $7db0: $b4
    and e                                         ; $7db1: $a3
    rst $30                                       ; $7db2: $f7
    add e                                         ; $7db3: $83
    ld hl, sp+$35                                 ; $7db4: $f8 $35
    ld [de], a                                    ; $7db6: $12
    ld [bc], a                                    ; $7db7: $02
    ld de, $4b8f                                  ; $7db8: $11 $8f $4b
    dec l                                         ; $7dbb: $2d
    ld b, a                                       ; $7dbc: $47
    xor a                                         ; $7dbd: $af
    call c, $9367                                 ; $7dbe: $dc $67 $93
    ld e, l                                       ; $7dc1: $5d
    pop af                                        ; $7dc2: $f1
    ld e, b                                       ; $7dc3: $58
    adc c                                         ; $7dc4: $89
    ld a, [hl]                                    ; $7dc5: $7e
    adc b                                         ; $7dc6: $88
    adc l                                         ; $7dc7: $8d
    and l                                         ; $7dc8: $a5
    dec c                                         ; $7dc9: $0d
    add hl, bc                                    ; $7dca: $09
    sbc c                                         ; $7dcb: $99
    rst $18                                       ; $7dcc: $df
    rst $38                                       ; $7dcd: $ff
    ld d, a                                       ; $7dce: $57
    xor $d3                                       ; $7dcf: $ee $d3
    ld c, $bd                                     ; $7dd1: $0e $bd
    add $9d                                       ; $7dd3: $c6 $9d
    ld a, [hl-]                                   ; $7dd5: $3a
    ld e, l                                       ; $7dd6: $5d
    ld [hl+], a                                   ; $7dd7: $22
    pop af                                        ; $7dd8: $f1
    ld [hl], e                                    ; $7dd9: $73
    ld [$1edc], sp                                ; $7dda: $08 $dc $1e
    sub a                                         ; $7ddd: $97
    sbc d                                         ; $7dde: $9a
    ld a, [hl-]                                   ; $7ddf: $3a
    push af                                       ; $7de0: $f5
    ld l, h                                       ; $7de1: $6c
    ld hl, sp+$78                                 ; $7de2: $f8 $78
    sbc a                                         ; $7de4: $9f
    cp l                                          ; $7de5: $bd
    ld a, [bc]                                    ; $7de6: $0a
    ld [hl+], a                                   ; $7de7: $22
    ld h, b                                       ; $7de8: $60
    add d                                         ; $7de9: $82
    add hl, bc                                    ; $7dea: $09
    rlca                                          ; $7deb: $07
    ld [hl], $a5                                  ; $7dec: $36 $a5
    call $576b                                    ; $7dee: $cd $6b $57
    inc a                                         ; $7df1: $3c
    ld b, [hl]                                    ; $7df2: $46
    jp $86ce                                      ; $7df3: $c3 $ce $86


    call z, $ffef                                 ; $7df6: $cc $ef $ff
    inc bc                                        ; $7df9: $03
    sbc $2c                                       ; $7dfa: $de $2c
    adc [hl]                                      ; $7dfc: $8e
    cp e                                          ; $7dfd: $bb
    ld h, d                                       ; $7dfe: $62
    ld c, l                                       ; $7dff: $4d
    rst $28                                       ; $7e00: $ef
    add sp, -$27                                  ; $7e01: $e8 $d9
    ld h, h                                       ; $7e03: $64
    ld e, c                                       ; $7e04: $59
    adc [hl]                                      ; $7e05: $8e
    rst $38                                       ; $7e06: $ff
    ld hl, $e702                                  ; $7e07: $21 $02 $e7
    pop hl                                        ; $7e0a: $e1
    ei                                            ; $7e0b: $fb
    cp h                                          ; $7e0c: $bc
    ld b, a                                       ; $7e0d: $47
    cpl                                           ; $7e0e: $2f
    dec de                                        ; $7e0f: $1b
    cp d                                          ; $7e10: $ba
    sub b                                         ; $7e11: $90
    ld [hl], c                                    ; $7e12: $71
    call Call_000_1aab                            ; $7e13: $cd $ab $1a
    ld [hl], a                                    ; $7e16: $77
    ld [$ec85], a                                 ; $7e17: $ea $85 $ec
    rra                                           ; $7e1a: $1f
    ld e, l                                       ; $7e1b: $5d
    dec e                                         ; $7e1c: $1d
    db $10                                        ; $7e1d: $10
    ld bc, $fc0f                                  ; $7e1e: $01 $0f $fc
    rst $38                                       ; $7e21: $ff
    or e                                          ; $7e22: $b3
    ld hl, $a3bb                                  ; $7e23: $21 $bb $a3
    cp h                                          ; $7e26: $bc
    ld a, h                                       ; $7e27: $7c
    ld h, [hl]                                    ; $7e28: $66
    sub d                                         ; $7e29: $92
    pop hl                                        ; $7e2a: $e1
    ret nz                                        ; $7e2b: $c0

    inc b                                         ; $7e2c: $04
    di                                            ; $7e2d: $f3
    ld l, h                                       ; $7e2e: $6c
    ld a, [$5e21]                                 ; $7e2f: $fa $21 $5e
    ld h, a                                       ; $7e32: $67
    or e                                          ; $7e33: $b3
    pop hl                                        ; $7e34: $e1
    dec sp                                        ; $7e35: $3b
    ld a, d                                       ; $7e36: $7a
    sbc c                                         ; $7e37: $99
    rra                                           ; $7e38: $1f
    dec l                                         ; $7e39: $2d
    sbc c                                         ; $7e3a: $99
    ld d, a                                       ; $7e3b: $57
    cpl                                           ; $7e3c: $2f
    ld l, l                                       ; $7e3d: $6d
    jp c, $f3a7                                   ; $7e3e: $da $a7 $f3

    db $ed                                        ; $7e41: $ed
    and [hl]                                      ; $7e42: $a6
    ld hl, $1802                                  ; $7e43: $21 $02 $18
    ld e, c                                       ; $7e46: $59
    ld a, [$7dd1]                                 ; $7e47: $fa $d1 $7d
    ld [hl], $66                                  ; $7e4a: $36 $66
    xor c                                         ; $7e4c: $a9
    sbc l                                         ; $7e4d: $9d
    inc h                                         ; $7e4e: $24
    sub e                                         ; $7e4f: $93
    ld [$fb95], a                                 ; $7e50: $ea $95 $fb
    sbc b                                         ; $7e53: $98
    and l                                         ; $7e54: $a5
    ld b, [hl]                                    ; $7e55: $46
    ld [de], a                                    ; $7e56: $12
    or c                                          ; $7e57: $b1
    ld sp, $798d                                  ; $7e58: $31 $8d $79
    ld a, h                                       ; $7e5b: $7c
    cp h                                          ; $7e5c: $bc
    and $f7                                       ; $7e5d: $e6 $f7
    ld a, a                                       ; $7e5f: $7f
    adc b                                         ; $7e60: $88
    nop                                           ; $7e61: $00
    jr nz, jr_04e_7ea8                            ; $7e62: $20 $44

    add l                                         ; $7e64: $85
    xor h                                         ; $7e65: $ac
    db $e4                                        ; $7e66: $e4
    adc d                                         ; $7e67: $8a
    add d                                         ; $7e68: $82
    ld [$d50f], sp                                ; $7e69: $08 $0f $d5
    or e                                          ; $7e6c: $b3
    ret                                           ; $7e6d: $c9


    ldh a, [$36]                                  ; $7e6e: $f0 $36

Call_04e_7e70:
    ld a, d                                       ; $7e70: $7a
    ld sp, hl                                     ; $7e71: $f9
    ld l, b                                       ; $7e72: $68
    ret c                                         ; $7e73: $d8

    cp c                                          ; $7e74: $b9
    adc $ff                                       ; $7e75: $ce $ff
    sbc c                                         ; $7e77: $99
    sub h                                         ; $7e78: $94
    ld [hl], $bd                                  ; $7e79: $36 $bd
    call c, $1e43                                 ; $7e7b: $dc $43 $1e
    ld hl, $8260                                  ; $7e7e: $21 $60 $82
    add hl, bc                                    ; $7e81: $09
    ld [hl], a                                    ; $7e82: $77
    sbc [hl]                                      ; $7e83: $9e
    adc h                                         ; $7e84: $8c
    sub h                                         ; $7e85: $94
    ld h, h                                       ; $7e86: $64
    ld [de], a                                    ; $7e87: $12
    res 4, h                                      ; $7e88: $cb $a4
    sub [hl]                                      ; $7e8a: $96
    ccf                                           ; $7e8b: $3f
    cp a                                          ; $7e8c: $bf
    inc b                                         ; $7e8d: $04
    rst $00                                       ; $7e8e: $c7
    ld h, a                                       ; $7e8f: $67
    jp Jump_000_0221                              ; $7e90: $c3 $21 $02


    adc a                                         ; $7e93: $8f
    ld c, e                                       ; $7e94: $4b
    ld c, l                                       ; $7e95: $4d
    rrca                                          ; $7e96: $0f
    rst $18                                       ; $7e97: $df
    dec d                                         ; $7e98: $15
    adc a                                         ; $7e99: $8f
    add l                                         ; $7e9a: $85
    db $e4                                        ; $7e9b: $e4
    ld l, c                                       ; $7e9c: $69
    ld c, c                                       ; $7e9d: $49
    adc a                                         ; $7e9e: $8f
    sub [hl]                                      ; $7e9f: $96
    adc h                                         ; $7ea0: $8c
    db $e3                                        ; $7ea1: $e3
    ld a, e                                       ; $7ea2: $7b
    ld l, c                                       ; $7ea3: $69
    db $d3                                        ; $7ea4: $d3
    cp [hl]                                       ; $7ea5: $be
    sub b                                         ; $7ea6: $90
    ld h, l                                       ; $7ea7: $65

jr_04e_7ea8:
    sub $77                                       ; $7ea8: $d6 $77
    xor $1f                                       ; $7eaa: $ee $1f
    add hl, hl                                    ; $7eac: $29
    ld [bc], a                                    ; $7ead: $02
    ld de, $7298                                  ; $7eae: $11 $98 $72
    ld c, d                                       ; $7eb1: $4a
    add e                                         ; $7eb2: $83
    ld a, e                                       ; $7eb3: $7b
    ldh [rIE], a                                  ; $7eb4: $e0 $ff
    sbc a                                         ; $7eb6: $9f
    cp l                                          ; $7eb7: $bd
    ld l, d                                       ; $7eb8: $6a
    ld l, c                                       ; $7eb9: $69
    db $d3                                        ; $7eba: $d3
    ld e, [hl]                                    ; $7ebb: $5e
    db $e3                                        ; $7ebc: $e3
    sbc d                                         ; $7ebd: $9a
    sub a                                         ; $7ebe: $97
    pop de                                        ; $7ebf: $d1
    xor e                                         ; $7ec0: $ab
    ld h, [hl]                                    ; $7ec1: $66
    add sp, $6c                                   ; $7ec2: $e8 $6c
    or d                                          ; $7ec4: $b2
    and e                                         ; $7ec5: $a3
    rst $00                                       ; $7ec6: $c7
    sbc l                                         ; $7ec7: $9d
    ld e, d                                       ; $7ec8: $5a
    dec sp                                        ; $7ec9: $3b
    jr @-$67                                      ; $7eca: $18 $97

    ld h, l                                       ; $7ecc: $65
    adc a                                         ; $7ecd: $8f
    nop                                           ; $7ece: $00
    rst $20                                       ; $7ecf: $e7
    pop hl                                        ; $7ed0: $e1
    inc hl                                        ; $7ed1: $23
    dec h                                         ; $7ed2: $25
    sbc c                                         ; $7ed3: $99
    call nz, $e634                                ; $7ed4: $c4 $34 $e6
    pop af                                        ; $7ed7: $f1
    pop af                                        ; $7ed8: $f1
    add sp, $19                                   ; $7ed9: $e8 $19
    ld a, [hl-]                                   ; $7edb: $3a
    sbc e                                         ; $7edc: $9b
    inc l                                         ; $7edd: $2c
    sub e                                         ; $7ede: $93
    ld c, [hl]                                    ; $7edf: $4e
    jp nc, Jump_04e_6ae9                          ; $7ee0: $d2 $e9 $6a

    adc b                                         ; $7ee3: $88
    nop                                           ; $7ee4: $00
    adc a                                         ; $7ee5: $8f
    ld c, e                                       ; $7ee6: $4b
    ld c, l                                       ; $7ee7: $4d
    db $e3                                        ; $7ee8: $e3
    rst $38                                       ; $7ee9: $ff
    adc a                                         ; $7eea: $8f
    ld e, $bd                                     ; $7eeb: $1e $bd
    ld l, d                                       ; $7eed: $6a
    ld l, c                                       ; $7eee: $69
    db $d3                                        ; $7eef: $d3
    ld e, [hl]                                    ; $7ef0: $5e
    db $e3                                        ; $7ef1: $e3
    sbc d                                         ; $7ef2: $9a
    sub a                                         ; $7ef3: $97
    ld [hl], c                                    ; $7ef4: $71
    and a                                         ; $7ef5: $a7
    ld c, [hl]                                    ; $7ef6: $4e
    sub a                                         ; $7ef7: $97
    ld c, b                                       ; $7ef8: $48
    db $fc                                        ; $7ef9: $fc
    inc e                                         ; $7efa: $1c
    dec c                                         ; $7efb: $0d
    ld de, $8260                                  ; $7efc: $11 $60 $82
    ld a, c                                       ; $7eff: $79
    ld [hl], $1a                                  ; $7f00: $36 $1a
    ld [hl-], a                                   ; $7f02: $32
    ld h, [hl]                                    ; $7f03: $66
    xor c                                         ; $7f04: $a9
    push hl                                       ; $7f05: $e5
    rst $08                                       ; $7f06: $cf
    rst $30                                       ; $7f07: $f7
    db $f4                                        ; $7f08: $f4
    or d                                          ; $7f09: $b2
    inc sp                                        ; $7f0a: $33
    ld [hl], h                                    ; $7f0b: $74
    push hl                                       ; $7f0c: $e5
    ld a, $1b                                     ; $7f0d: $3e $1b
    ld a, $ee                                     ; $7f0f: $3e $ee
    adc d                                         ; $7f11: $8a
    db $e4                                        ; $7f12: $e4
    add l                                         ; $7f13: $85
    inc l                                         ; $7f14: $2c
    ld l, l                                       ; $7f15: $6d
    ret z                                         ; $7f16: $c8

    add h                                         ; $7f17: $84
    ld d, a                                       ; $7f18: $57
    ld b, [hl]                                    ; $7f19: $46
    or d                                          ; $7f1a: $b2
    sub a                                         ; $7f1b: $97
    db $e4                                        ; $7f1c: $e4
    ld h, l                                       ; $7f1d: $65
    ld b, e                                       ; $7f1e: $43
    ld b, a                                       ; $7f1f: $47
    ld c, d                                       ; $7f20: $4a
    and [hl]                                      ; $7f21: $a6
    ld sp, $8f8f                                  ; $7f22: $31 $8f $8f
    rst $10                                       ; $7f25: $d7
    db $ec                                        ; $7f26: $ec
    ld d, l                                       ; $7f27: $55
    db $10                                        ; $7f28: $10
    ld bc, $f5cf                                  ; $7f29: $01 $cf $f5
    ld l, h                                       ; $7f2c: $6c
    ld [hl-], a                                   ; $7f2d: $32
    xor $d4                                       ; $7f2e: $ee $d4
    jp c, $b8c1                                   ; $7f30: $da $c1 $b8

    db $ec                                        ; $7f33: $ec
    and e                                         ; $7f34: $a3
    dec a                                         ; $7f35: $3d
    inc e                                         ; $7f36: $1c
    sbc h                                         ; $7f37: $9c
    ld e, a                                       ; $7f38: $5f
    push hl                                       ; $7f39: $e5
    db $ec                                        ; $7f3a: $ec
    rst $30                                       ; $7f3b: $f7
    cp b                                          ; $7f3c: $b8
    call nc, $924e                                ; $7f3d: $d4 $4e $92
    ld c, c                                       ; $7f40: $49
    push af                                       ; $7f41: $f5
    jp z, $cc7d                                   ; $7f42: $ca $7d $cc

    ld d, d                                       ; $7f45: $52
    inc sp                                        ; $7f46: $33
    add hl, hl                                    ; $7f47: $29
    sub d                                         ; $7f48: $92
    ld sp, hl                                     ; $7f49: $f9
    jp hl                                         ; $7f4a: $e9


    push de                                       ; $7f4b: $d5
    or e                                          ; $7f4c: $b3
    pop hl                                        ; $7f4d: $e1
    db $ec                                        ; $7f4e: $ec
    ld de, $4b8f                                  ; $7f4f: $11 $8f $4b
    ld c, l                                       ; $7f52: $4d
    xor e                                         ; $7f53: $ab
    sbc $15                                       ; $7f54: $de $15
    adc a                                         ; $7f56: $8f
    add hl, hl                                    ; $7f57: $29
    sbc $7d                                       ; $7f58: $de $7d
    ld [hl], $64                                  ; $7f5a: $36 $64
    inc h                                         ; $7f5c: $24
    jp hl                                         ; $7f5d: $e9


    inc e                                         ; $7f5e: $1c
    or d                                          ; $7f5f: $b2
    ld b, e                                       ; $7f60: $43
    jr nz, jr_04e_7f65                            ; $7f61: $20 $02

    and b                                         ; $7f63: $a0
    xor a                                         ; $7f64: $af

jr_04e_7f65:
    adc h                                         ; $7f65: $8c
    xor e                                         ; $7f66: $ab
    ld c, [hl]                                    ; $7f67: $4e
    or a                                          ; $7f68: $b7
    jp hl                                         ; $7f69: $e9


    ld h, c                                       ; $7f6a: $61
    cp [hl]                                       ; $7f6b: $be
    sub d                                         ; $7f6c: $92
    db $dd                                        ; $7f6d: $dd
    ret z                                         ; $7f6e: $c8

    db $f4                                        ; $7f6f: $f4
    ld [$a771], a                                 ; $7f70: $ea $71 $a7
    sub $0e                                       ; $7f73: $d6 $0e
    add $65                                       ; $7f75: $c6 $65
    pop hl                                        ; $7f77: $e1
    ld e, $4a                                     ; $7f78: $1e $4a
    sub [hl]                                      ; $7f7a: $96
    cp $a1                                        ; $7f7b: $fe $a1
    xor a                                         ; $7f7d: $af
    cp [hl]                                       ; $7f7e: $be
    db $ed                                        ; $7f7f: $ed
    xor e                                         ; $7f80: $ab
    ld d, [hl]                                    ; $7f81: $56
    ld a, [$d868]                                 ; $7f82: $fa $68 $d8
    reti                                          ; $7f85: $d9


    ld [hl], b                                    ; $7f86: $70
    adc b                                         ; $7f87: $88
    nop                                           ; $7f88: $00
    adc a                                         ; $7f89: $8f
    ld c, e                                       ; $7f8a: $4b
    ld c, l                                       ; $7f8b: $4d
    rrca                                          ; $7f8c: $0f
    rst $18                                       ; $7f8d: $df
    dec d                                         ; $7f8e: $15
    dec d                                         ; $7f8f: $15
    ld [c], a                                     ; $7f90: $e2
    ld d, a                                       ; $7f91: $57
    call nc, Call_000_1d0c                        ; $7f92: $d4 $0c $1d
    ld [hl], a                                    ; $7f95: $77
    ld [$8974], a                                 ; $7f96: $ea $74 $89
    call nz, $d1cf                                ; $7f99: $c4 $cf $d1
    db $10                                        ; $7f9c: $10
    ld bc, $dae0                                  ; $7f9d: $01 $e0 $da
    ld [hl], b                                    ; $7fa0: $70
    sub c                                         ; $7fa1: $91
    or e                                          ; $7fa2: $b3
    jp hl                                         ; $7fa3: $e9


    add c                                         ; $7fa4: $81
    ld c, a                                       ; $7fa5: $4f
    ld l, [hl]                                    ; $7fa6: $6e
    ld [hl], a                                    ; $7fa7: $77
    db $fc                                        ; $7fa8: $fc
    ccf                                           ; $7fa9: $3f
    dec a                                         ; $7faa: $3d
    ld a, h                                       ; $7fab: $7c
    ld h, d                                       ; $7fac: $62
    inc d                                         ; $7fad: $14
    ld b, h                                       ; $7fae: $44
    jr @+$6d                                      ; $7faf: $18 $6b

    or $ca                                        ; $7fb1: $f6 $ca
    cp b                                          ; $7fb3: $b8
    ld d, e                                       ; $7fb4: $53
    and a                                         ; $7fb5: $a7
    ld c, e                                       ; $7fb6: $4b
    inc h                                         ; $7fb7: $24
    ld a, [hl]                                    ; $7fb8: $7e
    adc [hl]                                      ; $7fb9: $8e
    sbc c                                         ; $7fba: $99
    sub h                                         ; $7fbb: $94
    or [hl]                                       ; $7fbc: $b6
    db $ec                                        ; $7fbd: $ec
    scf                                           ; $7fbe: $37
    ld b, l                                       ; $7fbf: $45
    ret c                                         ; $7fc0: $d8

    inc hl                                        ; $7fc1: $23
    adc a                                         ; $7fc2: $8f
    ld c, e                                       ; $7fc3: $4b
    ld c, l                                       ; $7fc4: $4d
    rrca                                          ; $7fc5: $0f
    rst $18                                       ; $7fc6: $df
    dec d                                         ; $7fc7: $15
    adc a                                         ; $7fc8: $8f
    add l                                         ; $7fc9: $85
    db $e4                                        ; $7fca: $e4
    ld l, c                                       ; $7fcb: $69
    ld c, c                                       ; $7fcc: $49
    adc a                                         ; $7fcd: $8f
    ld e, c                                       ; $7fce: $59
    ld l, d                                       ; $7fcf: $6a
    sbc c                                         ; $7fd0: $99
    inc h                                         ; $7fd1: $24
    rst $38                                       ; $7fd2: $ff
    rst $00                                       ; $7fd3: $c7
    jp nc, Jump_04e_66a7                          ; $7fd4: $d2 $a7 $66

    sub $b8                                       ; $7fd7: $d6 $b8
    ld d, e                                       ; $7fd9: $53
    sub e                                         ; $7fda: $93
    ld e, a                                       ; $7fdb: $5f
    ld e, l                                       ; $7fdc: $5d
    db $10                                        ; $7fdd: $10
    ld bc, $4b20                                  ; $7fde: $01 $20 $4b
    ld b, [hl]                                    ; $7fe1: $46
    ld c, e                                       ; $7fe2: $4b
    sub [hl]                                      ; $7fe3: $96
    cp $77                                        ; $7fe4: $fe $77
    and l                                         ; $7fe6: $a5
    adc a                                         ; $7fe7: $8f
    add [hl]                                      ; $7fe8: $86
    sbc l                                         ; $7fe9: $9d
    dec c                                         ; $7fea: $0d
    ld a, [$e768]                                 ; $7feb: $fa $68 $e7
    pop hl                                        ; $7fee: $e1
    db $d3                                        ; $7fef: $d3
    xor e                                         ; $7ff0: $ab
    ld [hl], a                                    ; $7ff1: $77
    push bc                                       ; $7ff2: $c5
    dec sp                                        ; $7ff3: $3b
    ld [hl], d                                    ; $7ff4: $72
    ld l, $71                                     ; $7ff5: $2e $71
    adc b                                         ; $7ff7: $88
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
