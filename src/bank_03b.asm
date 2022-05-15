; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    dec sp                                        ; $4000: $3b
    add c                                         ; $4001: $81
    ld d, l                                       ; $4002: $55
    rst $20                                       ; $4003: $e7
    sbc e                                         ; $4004: $9b
    add $86                                       ; $4005: $c6 $86
    sub b                                         ; $4007: $90
    ld l, e                                       ; $4008: $6b
    or d                                          ; $4009: $b2
    sub b                                         ; $400a: $90
    ld d, d                                       ; $400b: $52
    ld c, l                                       ; $400c: $4d
    inc de                                        ; $400d: $13
    cp a                                          ; $400e: $bf
    ld h, $46                                     ; $400f: $26 $46
    xor $57                                       ; $4011: $ee $57
    ld a, [hl]                                    ; $4013: $7e
    db $10                                        ; $4014: $10
    ld sp, $0d72                                  ; $4015: $31 $72 $0d
    dec a                                         ; $4018: $3d
    dec sp                                        ; $4019: $3b
    call Call_000_0dff                            ; $401a: $cd $ff $0d
    nop                                           ; $401d: $00
    rst $20                                       ; $401e: $e7
    or b                                          ; $401f: $b0
    ld b, e                                       ; $4020: $43
    or c                                          ; $4021: $b1
    ld a, c                                       ; $4022: $79
    sbc l                                         ; $4023: $9d
    ld d, d                                       ; $4024: $52
    ld d, [hl]                                    ; $4025: $56
    ld [hl], a                                    ; $4026: $77
    jp hl                                         ; $4027: $e9


    add sp, -$63                                  ; $4028: $e8 $9d
    ld a, c                                       ; $402a: $79
    sbc a                                         ; $402b: $9f
    ldh a, [rTIMA]                                ; $402c: $f0 $05
    ld h, h                                       ; $402e: $64
    adc h                                         ; $402f: $8c
    inc d                                         ; $4030: $14
    ld hl, sp+$72                                 ; $4031: $f8 $72
    ld l, a                                       ; $4033: $6f
    cp [hl]                                       ; $4034: $be
    di                                            ; $4035: $f3
    jp nc, $33a5                                  ; $4036: $d2 $a5 $33

    ld e, c                                       ; $4039: $59
    rst $20                                       ; $403a: $e7
    xor [hl]                                      ; $403b: $ae
    db $e4                                        ; $403c: $e4
    ld l, e                                       ; $403d: $6b
    and c                                         ; $403e: $a1
    push af                                       ; $403f: $f5
    ld b, $81                                     ; $4040: $06 $81
    sub h                                         ; $4042: $94
    xor [hl]                                      ; $4043: $ae
    push de                                       ; $4044: $d5
    db $ec                                        ; $4045: $ec
    sub a                                         ; $4046: $97
    ld [hl-], a                                   ; $4047: $32
    adc e                                         ; $4048: $8b
    db $e3                                        ; $4049: $e3
    ld [hl+], a                                   ; $404a: $22
    ld d, a                                       ; $404b: $57
    ld a, c                                       ; $404c: $79
    db $eb                                        ; $404d: $eb
    db $eb                                        ; $404e: $eb
    dec c                                         ; $404f: $0d
    nop                                           ; $4050: $00
    ld a, l                                       ; $4051: $7d
    ld [hl], e                                    ; $4052: $73
    sbc b                                         ; $4053: $98
    cp d                                          ; $4054: $ba
    ld h, $ac                                     ; $4055: $26 $ac
    ld d, e                                       ; $4057: $53
    rla                                           ; $4058: $17
    ld a, h                                       ; $4059: $7c
    adc l                                         ; $405a: $8d
    ccf                                           ; $405b: $3f
    adc e                                         ; $405c: $8b
    db $e3                                        ; $405d: $e3
    jr nc, jr_03b_40d5                            ; $405e: $30 $75

    sbc [hl]                                      ; $4060: $9e
    ld c, l                                       ; $4061: $4d
    ld d, a                                       ; $4062: $57
    ld [hl], c                                    ; $4063: $71
    call nc, $af28                                ; $4064: $d4 $28 $af
    add e                                         ; $4067: $83
    or d                                          ; $4068: $b2
    and h                                         ; $4069: $a4
    ld [hl], $7c                                  ; $406a: $36 $7c
    cp l                                          ; $406c: $bd
    rst $10                                       ; $406d: $d7
    dec l                                         ; $406e: $2d
    sub b                                         ; $406f: $90
    ld d, d                                       ; $4070: $52
    or c                                          ; $4071: $b1
    ld c, c                                       ; $4072: $49
    add l                                         ; $4073: $85
    rst $08                                       ; $4074: $cf
    inc b                                         ; $4075: $04
    sbc e                                         ; $4076: $9b
    ld c, c                                       ; $4077: $49
    db $ed                                        ; $4078: $ed
    ld bc, $dd00                                  ; $4079: $01 $00 $dd
    db $ec                                        ; $407c: $ec
    ld e, e                                       ; $407d: $5b
    or b                                          ; $407e: $b0
    dec b                                         ; $407f: $05
    ld e, e                                       ; $4080: $5b
    rrca                                          ; $4081: $0f
    nop                                           ; $4082: $00
    rla                                           ; $4083: $17
    db $fd                                        ; $4084: $fd
    ld b, d                                       ; $4085: $42
    or c                                          ; $4086: $b1
    add l                                         ; $4087: $85
    push de                                       ; $4088: $d5
    ld [$855f], a                                 ; $4089: $ea $5f $85
    db $fd                                        ; $408c: $fd
    pop hl                                        ; $408d: $e1
    db $eb                                        ; $408e: $eb
    sub [hl]                                      ; $408f: $96
    ld a, [hl-]                                   ; $4090: $3a
    sub e                                         ; $4091: $93
    ld [hl], l                                    ; $4092: $75
    jr z, jr_03b_40f2                             ; $4093: $28 $5d

    ld c, l                                       ; $4095: $4d
    ld d, a                                       ; $4096: $57
    ld [hl], c                                    ; $4097: $71
    call nc, $af28                                ; $4098: $d4 $28 $af
    add e                                         ; $409b: $83
    or d                                          ; $409c: $b2
    and h                                         ; $409d: $a4
    ld [hl], $7c                                  ; $409e: $36 $7c
    db $ed                                        ; $40a0: $ed
    ld bc, $7600                                  ; $40a1: $01 $00 $76
    ld a, [de]                                    ; $40a4: $1a
    ld [hl], e                                    ; $40a5: $73
    sbc b                                         ; $40a6: $98
    ld d, e                                       ; $40a7: $53
    ld l, $f8                                     ; $40a8: $2e $f8
    ld a, e                                       ; $40aa: $7b
    di                                            ; $40ab: $f3
    sbc l                                         ; $40ac: $9d
    rst $30                                       ; $40ad: $f7
    add hl, bc                                    ; $40ae: $09
    ld e, a                                       ; $40af: $5f
    or a                                          ; $40b0: $b7
    add b                                         ; $40b1: $80
    adc h                                         ; $40b2: $8c
    sub c                                         ; $40b3: $91
    jp nc, $0003                                  ; $40b4: $d2 $03 $00

    rst $20                                       ; $40b7: $e7
    ret                                           ; $40b8: $c9


    sbc e                                         ; $40b9: $9b
    or $0a                                        ; $40ba: $f6 $0a
    ld e, a                                       ; $40bc: $5f
    ld b, b                                       ; $40bd: $40
    add $48                                       ; $40be: $c6 $48
    cp c                                          ; $40c0: $b9
    rst $10                                       ; $40c1: $d7
    dec hl                                        ; $40c2: $2b
    sbc b                                         ; $40c3: $98

jr_03b_40c4:
    ld a, [c]                                     ; $40c4: $f2
    db $d3                                        ; $40c5: $d3
    rst $28                                       ; $40c6: $ef
    ld d, b                                       ; $40c7: $50
    ld h, a                                       ; $40c8: $67
    ld [hl], c                                    ; $40c9: $71
    inc e                                         ; $40ca: $1c
    and $94                                       ; $40cb: $e6 $94
    di                                            ; $40cd: $f3
    db $ec                                        ; $40ce: $ec
    ld [hl], b                                    ; $40cf: $70
    jp nz, $b2f8                                  ; $40d0: $c2 $f8 $b2

    ld e, a                                       ; $40d3: $5f
    ld c, c                                       ; $40d4: $49

jr_03b_40d5:
    sbc l                                         ; $40d5: $9d
    push bc                                       ; $40d6: $c5
    ld [hl], c                                    ; $40d7: $71
    sbc d                                         ; $40d8: $9a
    cp b                                          ; $40d9: $b8
    sbc d                                         ; $40da: $9a
    db $fd                                        ; $40db: $fd
    ld d, d                                       ; $40dc: $52
    xor b                                         ; $40dd: $a8
    or e                                          ; $40de: $b3
    jr c, jr_03b_410f                             ; $40df: $38 $2e

    ld e, $70                                     ; $40e1: $1e $70
    inc bc                                        ; $40e3: $03
    db $dd                                        ; $40e4: $dd
    ld a, [$5310]                                 ; $40e5: $fa $10 $53
    ld d, a                                       ; $40e8: $57
    ld a, a                                       ; $40e9: $7f
    ld e, c                                       ; $40ea: $59
    ld hl, sp-$0e                                 ; $40eb: $f8 $f2
    db $eb                                        ; $40ed: $eb
    di                                            ; $40ee: $f3
    and l                                         ; $40ef: $a5
    ld a, [hl-]                                   ; $40f0: $3a
    xor l                                         ; $40f1: $ad

jr_03b_40f2:
    or e                                          ; $40f2: $b3
    jr c, @+$10                                   ; $40f3: $38 $0e

    ld [hl], e                                    ; $40f5: $73
    call nc, $9df8                                ; $40f6: $d4 $f8 $9d
    rst $18                                       ; $40f9: $df
    ld e, e                                       ; $40fa: $5b
    sbc h                                         ; $40fb: $9c
    ld c, l                                       ; $40fc: $4d
    adc a                                         ; $40fd: $8f
    sbc l                                         ; $40fe: $9d
    ld e, l                                       ; $40ff: $5d
    or l                                          ; $4100: $b5
    jp Jump_03b_51c8                              ; $4101: $c3 $c8 $51


    db $e3                                        ; $4104: $e3
    cpl                                           ; $4105: $2f
    ld c, h                                       ; $4106: $4c
    db $d3                                        ; $4107: $d3
    ld l, h                                       ; $4108: $6c
    ld [hl], c                                    ; $4109: $71
    ld b, c                                       ; $410a: $41
    ld c, d                                       ; $410b: $4a
    daa                                           ; $410c: $27
    dec hl                                        ; $410d: $2b
    dec l                                         ; $410e: $2d

jr_03b_410f:
    ld a, [hl]                                    ; $410f: $7e
    ld l, c                                       ; $4110: $69
    db $fd                                        ; $4111: $fd
    rra                                           ; $4112: $1f
    inc hl                                        ; $4113: $23
    pop hl                                        ; $4114: $e1
    adc e                                         ; $4115: $8b
    sbc h                                         ; $4116: $9c
    ld [hl], c                                    ; $4117: $71
    ld a, [c]                                     ; $4118: $f2
    jp nc, $f2b5                                  ; $4119: $d2 $b5 $f2

    cp d                                          ; $411c: $ba
    jr nz, jr_03b_40c4                            ; $411d: $20 $a5

    ld sp, hl                                     ; $411f: $f9
    rst $10                                       ; $4120: $d7
    dec de                                        ; $4121: $1b
    nop                                           ; $4122: $00
    db $dd                                        ; $4123: $dd
    ld a, d                                       ; $4124: $7a
    xor c                                         ; $4125: $a9
    call Call_000_0b94                            ; $4126: $cd $94 $0b
    cp [hl]                                       ; $4129: $be
    pop hl                                        ; $412a: $e1
    ld c, h                                       ; $412b: $4c
    ld [c], a                                     ; $412c: $e2
    ld c, d                                       ; $412d: $4a
    ld [$8fea], a                                 ; $412e: $ea $ea $8f
    adc c                                         ; $4131: $89
    call nc, $001e                                ; $4132: $d4 $1e $00
    ld a, l                                       ; $4135: $7d
    sbc h                                         ; $4136: $9c
    ld [hl], l                                    ; $4137: $75
    dec e                                         ; $4138: $1d
    ld b, a                                       ; $4139: $47
    ld a, h                                       ; $413a: $7c
    ld hl, sp-$14                                 ; $413b: $f8 $ec
    ld e, a                                       ; $413d: $5f
    call nz, Call_000_037a                        ; $413e: $c4 $7a $03
    rst $20                                       ; $4141: $e7
    or b                                          ; $4142: $b0
    ld a, [hl]                                    ; $4143: $7e
    ld l, l                                       ; $4144: $6d
    rst $28                                       ; $4145: $ef
    ld a, a                                       ; $4146: $7f
    ld hl, $7f0b                                  ; $4147: $21 $0b $7f
    ld h, c                                       ; $414a: $61
    jp z, $be1c                                   ; $414b: $ca $1c $be

    ld c, $ca                                     ; $414e: $0e $ca
    sub d                                         ; $4150: $92
    jp c, $f5f0                                   ; $4151: $da $f0 $f5

    ld b, $7d                                     ; $4154: $06 $7d
    sbc h                                         ; $4156: $9c
    ld [hl], l                                    ; $4157: $75
    sbc l                                         ; $4158: $9d
    ld b, [hl]                                    ; $4159: $46
    ld e, h                                       ; $415a: $5c
    sub b                                         ; $415b: $90
    ld h, $98                                     ; $415c: $26 $98
    ldh a, [$d9]                                  ; $415e: $f0 $d9
    cp a                                          ; $4160: $bf
    adc b                                         ; $4161: $88
    dec d                                         ; $4162: $15
    ld a, $e5                                     ; $4163: $3e $e5
    ld c, d                                       ; $4165: $4a
    ld l, $12                                     ; $4166: $2e $12
    ld l, l                                       ; $4168: $6d
    ld a, [hl]                                    ; $4169: $7e
    dec [hl]                                      ; $416a: $35
    add l                                         ; $416b: $85
    and [hl]                                      ; $416c: $a6
    ld sp, hl                                     ; $416d: $f9
    cp h                                          ; $416e: $bc
    ld bc, $82bd                                  ; $416f: $01 $bd $82
    add hl, hl                                    ; $4172: $29
    ccf                                           ; $4173: $3f
    and l                                         ; $4174: $a5
    ld [hl], h                                    ; $4175: $74
    dec l                                         ; $4176: $2d
    ld h, h                                       ; $4177: $64
    ld a, [bc]                                    ; $4178: $0a
    ld a, h                                       ; $4179: $7c
    db $dd                                        ; $417a: $dd
    jr nz, jr_03b_41f6                            ; $417b: $20 $79

    db $d3                                        ; $417d: $d3
    ld e, [hl]                                    ; $417e: $5e
    rst $30                                       ; $417f: $f7
    adc e                                         ; $4180: $8b
    xor l                                         ; $4181: $ad
    rlca                                          ; $4182: $07
    nop                                           ; $4183: $00
    sub a                                         ; $4184: $97
    ld a, l                                       ; $4185: $7d
    ld e, c                                       ; $4186: $59
    add l                                         ; $4187: $85
    db $fd                                        ; $4188: $fd
    add a                                         ; $4189: $87
    add hl, sp                                    ; $418a: $39
    push hl                                       ; $418b: $e5
    db $eb                                        ; $418c: $eb
    ld h, d                                       ; $418d: $62
    ld a, [$c95c]                                 ; $418e: $fa $5c $c9
    ld e, c                                       ; $4191: $59
    inc e                                         ; $4192: $1c
    rst $20                                       ; $4193: $e7
    sbc e                                         ; $4194: $9b
    ld hl, $e2ce                                  ; $4195: $21 $ce $e2
    jr c, @+$0c                                   ; $4198: $38 $0a

    push af                                       ; $419a: $f5
    ld b, $76                                     ; $419b: $06 $76
    ld a, [de]                                    ; $419d: $1a
    cp a                                          ; $419e: $bf
    ld c, [hl]                                    ; $419f: $4e
    ld e, l                                       ; $41a0: $5d
    add hl, hl                                    ; $41a1: $29
    add h                                         ; $41a2: $84
    ld e, $7d                                     ; $41a3: $1e $7d
    xor $67                                       ; $41a5: $ee $67
    sbc a                                         ; $41a7: $9f
    db $10                                        ; $41a8: $10
    call z, $a897                                 ; $41a9: $cc $97 $a8
    rst $30                                       ; $41ac: $f7
    ld [bc], a                                    ; $41ad: $02
    ld [de], a                                    ; $41ae: $12
    sbc c                                         ; $41af: $99
    cp d                                          ; $41b0: $ba
    ld a, [c]                                     ; $41b1: $f2
    cp d                                          ; $41b2: $ba
    ld a, b                                       ; $41b3: $78
    nop                                           ; $41b4: $00
    ld [hl], $f3                                  ; $41b5: $36 $f3
    ld a, [hl-]                                   ; $41b7: $3a
    rst $08                                       ; $41b8: $cf
    reti                                          ; $41b9: $d9


    daa                                           ; $41ba: $27
    inc b                                         ; $41bb: $04
    di                                            ; $41bc: $f3
    dec h                                         ; $41bd: $25
    ld [$231e], a                                 ; $41be: $ea $1e $23
    ld [hl], l                                    ; $41c1: $75
    sbc [hl]                                      ; $41c2: $9e
    db $eb                                        ; $41c3: $eb
    ld a, h                                       ; $41c4: $7c
    cp a                                          ; $41c5: $bf
    sub a                                         ; $41c6: $97
    ld a, c                                       ; $41c7: $79
    sub [hl]                                      ; $41c8: $96
    ld b, l                                       ; $41c9: $45
    ld hl, $00de                                  ; $41ca: $21 $de $00
    ld d, a                                       ; $41cd: $57
    db $10                                        ; $41ce: $10
    sbc e                                         ; $41cf: $9b
    ld e, a                                       ; $41d0: $5f
    ld c, h                                       ; $41d1: $4c
    sbc a                                         ; $41d2: $9f
    cp d                                          ; $41d3: $ba
    jr nc, jr_03b_423b                            ; $41d4: $30 $65

    ld l, a                                       ; $41d6: $6f
    ld [hl], c                                    ; $41d7: $71
    ld [hl], $37                                  ; $41d8: $36 $37
    nop                                           ; $41da: $00
    cp l                                          ; $41db: $bd
    push bc                                       ; $41dc: $c5
    push af                                       ; $41dd: $f5
    ld a, a                                       ; $41de: $7f
    ld h, c                                       ; $41df: $61
    sbc l                                         ; $41e0: $9d
    ld a, [hl-]                                   ; $41e1: $3a
    sub [hl]                                      ; $41e2: $96
    sub l                                         ; $41e3: $95
    add a                                         ; $41e4: $87
    ld [hl], d                                    ; $41e5: $72
    call nz, $3275                                ; $41e6: $c4 $75 $32
    ld [hl], d                                    ; $41e9: $72
    pop bc                                        ; $41ea: $c1
    rst $10                                       ; $41eb: $d7
    ld hl, sp-$4d                                 ; $41ec: $f8 $b3

jr_03b_41ee:
    ld c, a                                       ; $41ee: $4f
    ld [$4be6], sp                                ; $41ef: $08 $e6 $4b
    call nc, $7d7b                                ; $41f2: $d4 $7b $7d
    ld [hl], e                                    ; $41f5: $73

jr_03b_41f6:
    ld a, [$5716]                                 ; $41f6: $fa $16 $57
    or l                                          ; $41f9: $b5
    jp hl                                         ; $41fa: $e9


    jp z, $eaeb                                   ; $41fb: $ca $eb $ea

    rst $00                                       ; $41fe: $c7
    call nc, Call_03b_5b61                        ; $41ff: $d4 $61 $5b
    ld c, c                                       ; $4202: $49
    ld e, l                                       ; $4203: $5d
    ret c                                         ; $4204: $d8

    xor b                                         ; $4205: $a8
    di                                            ; $4206: $f3
    inc l                                         ; $4207: $2c
    db $eb                                        ; $4208: $eb
    cp h                                          ; $4209: $bc
    sbc b                                         ; $420a: $98
    sbc h                                         ; $420b: $9c
    ld [hl], l                                    ; $420c: $75
    sbc b                                         ; $420d: $98
    ld a, e                                       ; $420e: $7b
    sub c                                         ; $420f: $91
    rst $10                                       ; $4210: $d7
    jr z, jr_03b_4268                             ; $4211: $28 $55

    sbc e                                         ; $4213: $9b
    xor [hl]                                      ; $4214: $ae
    cp h                                          ; $4215: $bc
    xor [hl]                                      ; $4216: $ae
    ld a, [c]                                     ; $4217: $f2
    jp nc, $ebe2                                  ; $4218: $d2 $e2 $eb

    jp nz, $b194                                  ; $421b: $c2 $94 $b1

    db $ec                                        ; $421e: $ec
    ld hl, $f7f7                                  ; $421f: $21 $f7 $f7
    ld l, $0e                                     ; $4222: $2e $0e
    jp nz, $9d67                                  ; $4224: $c2 $67 $9d

    ld [hl], c                                    ; $4227: $71
    call $cfbf                                    ; $4228: $cd $bf $cf
    sbc c                                         ; $422b: $99
    call nz, $ccb1                                ; $422c: $c4 $b1 $cc
    ld a, h                                       ; $422f: $7c
    ld sp, hl                                     ; $4230: $f9
    ld a, [$5065]                                 ; $4231: $fa $65 $50
    add e                                         ; $4234: $83
    ld e, $23                                     ; $4235: $1e $23
    ld h, a                                       ; $4237: $67
    ld e, l                                       ; $4238: $5d
    ld c, c                                       ; $4239: $49
    dec e                                         ; $423a: $1d

jr_03b_423b:
    ld sp, $a6a5                                  ; $423b: $31 $a5 $a6
    xor [hl]                                      ; $423e: $ae
    ld c, [hl]                                    ; $423f: $4e
    call nc, Call_000_2e28                        ; $4240: $d4 $28 $2e
    push af                                       ; $4243: $f5
    ld b, $dd                                     ; $4244: $06 $dd
    db $ed                                        ; $4246: $ed
    jr nc, jr_03b_41ee                            ; $4247: $30 $a5

    and [hl]                                      ; $4249: $a6
    xor [hl]                                      ; $424a: $ae
    ld c, [hl]                                    ; $424b: $4e
    call nc, Call_000_2e28                        ; $424c: $d4 $28 $2e
    or l                                          ; $424f: $b5
    daa                                           ; $4250: $27
    nop                                           ; $4251: $00
    rla                                           ; $4252: $17
    rst $30                                       ; $4253: $f7
    ei                                            ; $4254: $fb
    jp nc, Jump_03b_7535                          ; $4255: $d2 $35 $75

    ld h, c                                       ; $4258: $61
    and e                                         ; $4259: $a3
    db $fc                                        ; $425a: $fc
    inc e                                         ; $425b: $1c
    and [hl]                                      ; $425c: $a6
    adc $b8                                       ; $425d: $ce $b8
    rst $00                                       ; $425f: $c7
    sbc b                                         ; $4260: $98
    cp d                                          ; $4261: $ba
    jr nz, jr_03b_42b1                            ; $4262: $20 $4d

    or b                                          ; $4264: $b0
    push af                                       ; $4265: $f5
    ld c, a                                       ; $4266: $4f
    cp l                                          ; $4267: $bd

jr_03b_4268:
    ld bc, $a597                                  ; $4268: $01 $97 $a5
    ld c, a                                       ; $426b: $4f
    db $dd                                        ; $426c: $dd
    xor a                                         ; $426d: $af
    and h                                         ; $426e: $a4
    xor [hl]                                      ; $426f: $ae
    sub e                                         ; $4270: $93
    sub c                                         ; $4271: $91
    ld a, d                                       ; $4272: $7a
    inc bc                                        ; $4273: $03
    ld h, a                                       ; $4274: $67
    scf                                           ; $4275: $37
    ld [hl+], a                                   ; $4276: $22
    ld a, h                                       ; $4277: $7c
    pop bc                                        ; $4278: $c1
    sbc a                                         ; $4279: $9f
    ld [hl], $9f                                  ; $427a: $36 $9f
    xor e                                         ; $427c: $ab
    sbc l                                         ; $427d: $9d
    ld [hl], l                                    ; $427e: $75
    call nc, $6ad8                                ; $427f: $d4 $d8 $6a
    ld d, a                                       ; $4282: $57
    ld e, $23                                     ; $4283: $1e $23
    rst $28                                       ; $4285: $ef
    sbc l                                         ; $4286: $9d
    db $ed                                        ; $4287: $ed
    adc b                                         ; $4288: $88
    adc e                                         ; $4289: $8b
    ld a, [c]                                     ; $428a: $f2
    sbc l                                         ; $428b: $9d
    rst $28                                       ; $428c: $ef
    sub a                                         ; $428d: $97
    ldh a, [$d9]                                  ; $428e: $f0 $d9
    cp a                                          ; $4290: $bf
    adc b                                         ; $4291: $88
    push af                                       ; $4292: $f5
    ld b, $57                                     ; $4293: $06 $57
    rst $20                                       ; $4295: $e7
    call nc, $e4b6                                ; $4296: $d4 $b6 $e4
    ld a, l                                       ; $4299: $7d
    rst $18                                       ; $429a: $df
    xor e                                         ; $429b: $ab
    db $eb                                        ; $429c: $eb
    ld a, [$6fbe]                                 ; $429d: $fa $be $6f
    ld c, b                                       ; $42a0: $48
    sbc $b4                                       ; $42a1: $de $b4
    rst $10                                       ; $42a3: $d7
    dec de                                        ; $42a4: $1b
    nop                                           ; $42a5: $00
    cp l                                          ; $42a6: $bd
    add d                                         ; $42a7: $82
    add hl, hl                                    ; $42a8: $29
    ccf                                           ; $42a9: $3f
    add a                                         ; $42aa: $87
    dec bc                                        ; $42ab: $0b
    ld e, a                                       ; $42ac: $5f
    sbc c                                         ; $42ad: $99
    sub e                                         ; $42ae: $93
    xor [hl]                                      ; $42af: $ae
    or b                                          ; $42b0: $b0

jr_03b_42b1:
    ld sp, hl                                     ; $42b1: $f9
    ld e, h                                       ; $42b2: $5c
    sbc b                                         ; $42b3: $98
    or d                                          ; $42b4: $b2
    ld a, [c]                                     ; $42b5: $f2
    xor e                                         ; $42b6: $ab
    cp a                                          ; $42b7: $bf
    ld a, a                                       ; $42b8: $7f
    sbc l                                         ; $42b9: $9d
    ld [hl+], a                                   ; $42ba: $22
    ccf                                           ; $42bb: $3f
    db $eb                                        ; $42bc: $eb
    call nc, Call_03b_5a75                        ; $42bd: $d4 $75 $5a
    sbc l                                         ; $42c0: $9d
    cp d                                          ; $42c1: $ba
    ldh [rOCPD], a                                ; $42c2: $e0 $6b
    db $fc                                        ; $42c4: $fc
    reti                                          ; $42c5: $d9


    daa                                           ; $42c6: $27
    inc b                                         ; $42c7: $04
    di                                            ; $42c8: $f3
    dec h                                         ; $42c9: $25
    ld [$000d], a                                 ; $42ca: $ea $0d $00
    sub a                                         ; $42cd: $97
    dec e                                         ; $42ce: $1d
    nop                                           ; $42cf: $00
    ld e, a                                       ; $42d0: $5f
    ld [hl], a                                    ; $42d1: $77
    and c                                         ; $42d2: $a1
    ld [hl], c                                    ; $42d3: $71
    ld hl, $35e5                                  ; $42d4: $21 $e5 $35
    ld [hl], d                                    ; $42d7: $72
    pop de                                        ; $42d8: $d1
    ld c, l                                       ; $42d9: $4d
    ccf                                           ; $42da: $3f
    call z, Call_000_009e                         ; $42db: $cc $9e $00
    add c                                         ; $42de: $81
    ld [hl], $f0                                  ; $42df: $36 $f0
    ld e, l                                       ; $42e1: $5d
    ld h, $ac                                     ; $42e2: $26 $ac
    and h                                         ; $42e4: $a4
    adc h                                         ; $42e5: $8c
    ld a, [de]                                    ; $42e6: $1a
    cp e                                          ; $42e7: $bb
    or $16                                        ; $42e8: $f6 $16
    ld h, a                                       ; $42ea: $67

Jump_03b_42eb:
    inc bc                                        ; $42eb: $03
    rra                                           ; $42ec: $1f
    inc h                                         ; $42ed: $24
    ld l, a                                       ; $42ee: $6f
    jp c, Jump_000_0deb                           ; $42ef: $da $eb $0d

    nop                                           ; $42f2: $00
    ld h, a                                       ; $42f3: $67
    scf                                           ; $42f4: $37
    ld [c], a                                     ; $42f5: $e2
    cp l                                          ; $42f6: $bd
    ld e, [hl]                                    ; $42f7: $5e
    pop bc                                        ; $42f8: $c1
    sub h                                         ; $42f9: $94
    ld e, a                                       ; $42fa: $5f
    ld c, h                                       ; $42fb: $4c
    sbc a                                         ; $42fc: $9f
    cp d                                          ; $42fd: $ba
    ld a, [hl]                                    ; $42fe: $7e
    ld c, $63                                     ; $42ff: $0e $63
    ld [$c3ac], a                                 ; $4301: $ea $ac $c3
    ld e, h                                       ; $4304: $5c
    ld [$7c3e], a                                 ; $4305: $ea $3e $7c
    adc c                                         ; $4308: $89
    ld d, l                                       ; $4309: $55
    sbc e                                         ; $430a: $9b
    sbc [hl]                                      ; $430b: $9e
    or [hl]                                       ; $430c: $b6
    ldh [$5b], a                                  ; $430d: $e0 $5b
    rst $20                                       ; $430f: $e7
    ldh a, [$75]                                  ; $4310: $f0 $75

jr_03b_4312:
    xor a                                         ; $4312: $af
    ld d, $47                                     ; $4313: $16 $47
    ld c, c                                       ; $4315: $49
    ld l, l                                       ; $4316: $6d
    cp $3d                                        ; $4317: $fe $3d
    ld [hl], l                                    ; $4319: $75
    sbc [hl]                                      ; $431a: $9e
    ld e, d                                       ; $431b: $5a
    ld e, d                                       ; $431c: $5a
    rst $38                                       ; $431d: $ff
    rst $00                                       ; $431e: $c7
    ld c, b                                       ; $431f: $48
    ld e, l                                       ; $4320: $5d
    or l                                          ; $4321: $b5
    and e                                         ; $4322: $a3
    db $fc                                        ; $4323: $fc
    inc a                                         ; $4324: $3c
    set 1, h                                      ; $4325: $cb $cc
    rst $10                                       ; $4327: $d7
    dec c                                         ; $4328: $0d
    ld [hl], e                                    ; $4329: $73
    add [hl]                                      ; $432a: $86
    jr jr_03b_4312                                ; $432b: $18 $e5

    res 7, l                                      ; $432d: $cb $bd
    ld [hl], e                                    ; $432f: $73
    ld a, [hl]                                    ; $4330: $7e
    dec c                                         ; $4331: $0d
    ld [hl], d                                    ; $4332: $72
    ld e, a                                       ; $4333: $5f
    ld h, [hl]                                    ; $4334: $66
    ld [hl], c                                    ; $4335: $71
    ld e, h                                       ; $4336: $5c
    add sp, -$18                                  ; $4337: $e8 $e8
    ld a, a                                       ; $4339: $7f
    pop bc                                        ; $433a: $c1
    rst $28                                       ; $433b: $ef
    ld d, b                                       ; $433c: $50
    and $70                                       ; $433d: $e6 $70
    sub c                                         ; $433f: $91
    sbc d                                         ; $4340: $9a
    sub d                                         ; $4341: $92
    inc hl                                        ; $4342: $23
    xor [hl]                                      ; $4343: $ae
    and h                                         ; $4344: $a4
    ld l, $7c                                     ; $4345: $2e $7c
    ld l, l                                       ; $4347: $6d
    and l                                         ; $4348: $a5
    and h                                         ; $4349: $a4
    xor [hl]                                      ; $434a: $ae
    ld a, h                                       ; $434b: $7c
    and h                                         ; $434c: $a4
    ld a, h                                       ; $434d: $7c
    and c                                         ; $434e: $a1
    sbc $bb                                       ; $434f: $de $bb
    ld [c], a                                     ; $4351: $e2
    db $eb                                        ; $4352: $eb
    call nc, $8e85                                ; $4353: $d4 $85 $8e
    ld a, d                                       ; $4356: $7a
    inc bc                                        ; $4357: $03
    db $dd                                        ; $4358: $dd
    ld [bc], a                                    ; $4359: $02
    ld d, d                                       ; $435a: $52
    ld d, [hl]                                    ; $435b: $56
    db $dd                                        ; $435c: $dd
    or b                                          ; $435d: $b0
    rst $00                                       ; $435e: $c7
    cp d                                          ; $435f: $ba
    sbc l                                         ; $4360: $9d
    adc a                                         ; $4361: $8f
    sub c                                         ; $4362: $91
    jr jr_03b_43e4                                ; $4363: $18 $7f

    ld c, d                                       ; $4365: $4a
    ret z                                         ; $4366: $c8

    dec [hl]                                      ; $4367: $35
    xor c                                         ; $4368: $a9
    reti                                          ; $4369: $d9


    inc bc                                        ; $436a: $03
    nop                                           ; $436b: $00
    ld a, l                                       ; $436c: $7d
    ld [hl], e                                    ; $436d: $73
    call nc, $d2f8                                ; $436e: $d4 $f8 $d2
    and l                                         ; $4371: $a5
    ei                                            ; $4372: $fb
    jp hl                                         ; $4373: $e9


    sub a                                         ; $4374: $97
    ld c, d                                       ; $4375: $4a
    ld c, [hl]                                    ; $4376: $4e
    db $db                                        ; $4377: $db
    ld a, [hl+]                                   ; $4378: $2a
    xor a                                         ; $4379: $af
    db $d3                                        ; $437a: $d3
    inc l                                         ; $437b: $2c
    add hl, bc                                    ; $437c: $09
    sbc a                                         ; $437d: $9f
    db $fd                                        ; $437e: $fd
    adc e                                         ; $437f: $8b
    ld e, b                                       ; $4380: $58
    ld l, a                                       ; $4381: $6f
    nop                                           ; $4382: $00
    cp l                                          ; $4383: $bd
    cp a                                          ; $4384: $bf
    ld l, [hl]                                    ; $4385: $6e
    ld hl, sp+$7e                                 ; $4386: $f8 $7e
    jp nc, $3615                                  ; $4388: $d2 $15 $36

    sbc a                                         ; $438b: $9f
    ldh a, [$61]                                  ; $438c: $f0 $61
    adc $e2                                       ; $438e: $ce $e2
    ld a, [de]                                    ; $4390: $1a
    dec h                                         ; $4391: $25
    rla                                           ; $4392: $17
    adc c                                         ; $4393: $89
    sub h                                         ; $4394: $94
    ld e, c                                       ; $4395: $59
    inc e                                         ; $4396: $1c
    ld d, a                                       ; $4397: $57
    ret                                           ; $4398: $c9


    ld d, d                                       ; $4399: $52
    and c                                         ; $439a: $a1
    db $ec                                        ; $439b: $ec
    rst $10                                       ; $439c: $d7
    ld [hl], c                                    ; $439d: $71
    ld l, d                                       ; $439e: $6a
    ld e, [hl]                                    ; $439f: $5e
    or $2b                                        ; $43a0: $f6 $2b
    xor c                                         ; $43a2: $a9
    inc de                                        ; $43a3: $13
    or $7f                                        ; $43a4: $f6 $7f
    add sp, $7d                                   ; $43a6: $e8 $7d
    ld [$000d], a                                 ; $43a8: $ea $0d $00
    halt                                          ; $43ab: $76
    ld a, [de]                                    ; $43ac: $1a
    cp a                                          ; $43ad: $bf
    di                                            ; $43ae: $f3
    dec bc                                        ; $43af: $0b
    add l                                         ; $43b0: $85
    ld l, c                                       ; $43b1: $69
    ld e, h                                       ; $43b2: $5c
    ld hl, sp+$3e                                 ; $43b3: $f8 $3e
    rla                                           ; $43b5: $17
    and [hl]                                      ; $43b6: $a6
    inc l                                         ; $43b7: $2c
    ld [hl], $f8                                  ; $43b8: $36 $f8
    db $ec                                        ; $43ba: $ec
    ld e, a                                       ; $43bb: $5f
    call nz, Call_000_037a                        ; $43bc: $c4 $7a $03
    or $2f                                        ; $43bf: $f6 $2f
    ld h, d                                       ; $43c1: $62
    add l                                         ; $43c2: $85
    rrca                                          ; $43c3: $0f
    ld [hl], e                                    ; $43c4: $73
    call nc, $b5d8                                ; $43c5: $d4 $d8 $b5
    ld c, [hl]                                    ; $43c8: $4e
    inc hl                                        ; $43c9: $23
    adc $e2                                       ; $43ca: $ce $e2
    cp b                                          ; $43cc: $b8
    ret z                                         ; $43cd: $c8

    ld d, l                                       ; $43ce: $55
    sbc $fa                                       ; $43cf: $de $fa
    ld a, [hl-]                                   ; $43d1: $3a
    rst $08                                       ; $43d2: $cf
    add l                                         ; $43d3: $85
    xor a                                         ; $43d4: $af
    call z, $1759                                 ; $43d5: $cc $59 $17
    ld a, [bc]                                    ; $43d8: $0a
    db $d3                                        ; $43d9: $d3
    cp b                                          ; $43da: $b8
    sub b                                         ; $43db: $90
    cp d                                          ; $43dc: $ba
    cpl                                           ; $43dd: $2f
    xor e                                         ; $43de: $ab
    inc [hl]                                      ; $43df: $34
    or $cb                                        ; $43e0: $f6 $cb
    reti                                          ; $43e2: $d9


    ccf                                           ; $43e3: $3f

jr_03b_43e4:
    inc h                                         ; $43e4: $24
    call Call_000_00df                            ; $43e5: $cd $df $00
    sub a                                         ; $43e8: $97
    and l                                         ; $43e9: $a5
    rst $08                                       ; $43ea: $cf
    or c                                          ; $43eb: $b1

jr_03b_43ec:
    xor h                                         ; $43ec: $ac
    halt                                          ; $43ed: $76
    add sp, $73                                   ; $43ee: $e8 $73
    pop bc                                        ; $43f0: $c1
    rra                                           ; $43f1: $1f
    ld sp, $fbca                                  ; $43f2: $31 $ca $fb
    sbc h                                         ; $43f5: $9c
    push af                                       ; $43f6: $f5
    ld l, a                                       ; $43f7: $6f
    nop                                           ; $43f8: $00
    halt                                          ; $43f9: $76
    ld b, d                                       ; $43fa: $42
    ld e, l                                       ; $43fb: $5d
    ret z                                         ; $43fc: $c8

    sub h                                         ; $43fd: $94
    ld e, c                                       ; $43fe: $59
    inc e                                         ; $43ff: $1c
    rst $00                                       ; $4400: $c7
    ld [hl-], a                                   ; $4401: $32
    db $fd                                        ; $4402: $fd
    jr nc, jr_03b_43ec                            ; $4403: $30 $e7

    cp c                                          ; $4405: $b9
    cp [hl]                                       ; $4406: $be
    xor h                                         ; $4407: $ac
    or h                                          ; $4408: $b4
    ld d, d                                       ; $4409: $52
    cp b                                          ; $440a: $b8
    ldh a, [$e5]                                  ; $440b: $f0 $e5
    rla                                           ; $440d: $17
    ld d, d                                       ; $440e: $52
    inc a                                         ; $440f: $3c
    dec h                                         ; $4410: $25
    ld [de], a                                    ; $4411: $12
    cp [hl]                                       ; $4412: $be
    ld l, [hl]                                    ; $4413: $6e
    or $2f                                        ; $4414: $f6 $2f
    ld h, d                                       ; $4416: $62
    db $ed                                        ; $4417: $ed
    ld bc, $1700                                  ; $4418: $01 $00 $17
    dec d                                         ; $441b: $15
    ld b, d                                       ; $441c: $42
    cpl                                           ; $441d: $2f
    xor h                                         ; $441e: $ac
    ld d, e                                       ; $441f: $53
    rla                                           ; $4420: $17
    ld c, d                                       ; $4421: $4a
    ld h, d                                       ; $4422: $62
    call z, $befb                                 ; $4423: $cc $fb $be
    or l                                          ; $4426: $b5
    dec c                                         ; $4427: $0d
    rst $18                                       ; $4428: $df
    scf                                           ; $4429: $37
    ld c, [hl]                                    ; $442a: $4e
    cp c                                          ; $442b: $b9
    rrca                                          ; $442c: $0f
    ld e, a                                       ; $442d: $5f
    ld [c], a                                     ; $442e: $e2
    rst $18                                       ; $442f: $df
    nop                                           ; $4430: $00
    ld a, l                                       ; $4431: $7d
    ld [hl], e                                    ; $4432: $73
    cpl                                           ; $4433: $2f
    ld a, [c]                                     ; $4434: $f2
    ld a, [de]                                    ; $4435: $1a
    and l                                         ; $4436: $a5
    ld l, d                                       ; $4437: $6a
    db $d3                                        ; $4438: $d3
    sub l                                         ; $4439: $95
    call nc, $8d85                                ; $443a: $d4 $85 $8d
    ld a, d                                       ; $443d: $7a
    rst $18                                       ; $443e: $df
    rst $30                                       ; $443f: $f7
    rla                                           ; $4440: $17
    jr z, jr_03b_445a                             ; $4441: $28 $17

    and [hl]                                      ; $4443: $a6
    rla                                           ; $4444: $17
    sbc e                                         ; $4445: $9b
    rst $18                                       ; $4446: $df
    ld b, e                                       ; $4447: $43
    cpl                                           ; $4448: $2f
    ld a, [c]                                     ; $4449: $f2
    sub d                                         ; $444a: $92
    ld a, d                                       ; $444b: $7a
    inc bc                                        ; $444c: $03
    ld bc, $2b29                                  ; $444d: $01 $29 $2b
    xor a                                         ; $4450: $af
    and e                                         ; $4451: $a3
    sbc d                                         ; $4452: $9a
    cpl                                           ; $4453: $2f
    sub h                                         ; $4454: $94
    rst $10                                       ; $4455: $d7
    ld e, c                                       ; $4456: $59
    ld d, a                                       ; $4457: $57
    ld a, [bc]                                    ; $4458: $0a
    and c                                         ; $4459: $a1

jr_03b_445a:
    rla                                           ; $445a: $17
    sub $a9                                       ; $445b: $d6 $a9
    ei                                            ; $445d: $fb
    reti                                          ; $445e: $d9


    daa                                           ; $445f: $27
    inc b                                         ; $4460: $04
    di                                            ; $4461: $f3
    dec h                                         ; $4462: $25
    ld [$000d], a                                 ; $4463: $ea $0d $00
    rla                                           ; $4466: $17
    and l                                         ; $4467: $a5
    xor $8b                                       ; $4468: $ee $8b
    xor e                                         ; $446a: $ab
    ld sp, $9e75                                  ; $446b: $31 $75 $9e
    dec bc                                        ; $446e: $0b
    and l                                         ; $446f: $a5
    push de                                       ; $4470: $d5
    sub h                                         ; $4471: $94
    db $fd                                        ; $4472: $fd
    pop bc                                        ; $4473: $c1
    add hl, bc                                    ; $4474: $09
    ld e, a                                       ; $4475: $5f
    jr z, jr_03b_44d1                             ; $4476: $28 $59

    ld c, l                                       ; $4478: $4d

jr_03b_4479:
    ld c, l                                       ; $4479: $4d
    ld sp, hl                                     ; $447a: $f9
    push af                                       ; $447b: $f5
    ld sp, $25e7                                  ; $447c: $31 $e7 $25
    ld a, $f4                                     ; $447f: $3e $f4
    and l                                         ; $4481: $a5
    call c, Call_03b_6700                         ; $4482: $dc $00 $67
    scf                                           ; $4485: $37
    ld h, d                                       ; $4486: $62
    add l                                         ; $4487: $85
    ret c                                         ; $4488: $d8

    ld a, h                                       ; $4489: $7c
    ld [$f67e], a                                 ; $448a: $ea $7e $f6
    add hl, bc                                    ; $448d: $09
    pop bc                                        ; $448e: $c1
    ld a, h                                       ; $448f: $7c
    adc c                                         ; $4490: $89
    ld a, d                                       ; $4491: $7a
    rst $28                                       ; $4492: $ef
    and d                                         ; $4493: $a2
    ld e, a                                       ; $4494: $5f
    ld l, a                                       ; $4495: $6f
    ld a, [bc]                                    ; $4496: $0a
    db $eb                                        ; $4497: $eb
    call nz, $f3f6                                ; $4498: $c4 $f6 $f3
    ld e, h                                       ; $449b: $5c
    jr nz, jr_03b_44a9                            ; $449c: $20 $0b

    adc l                                         ; $449e: $8d
    ld l, c                                       ; $449f: $69
    or [hl]                                       ; $44a0: $b6
    jr c, jr_03b_4479                             ; $44a1: $38 $d6

    ld hl, $bffb                                  ; $44a3: $21 $fb $bf
    ld [hl], h                                    ; $44a6: $74
    adc l                                         ; $44a7: $8d
    cp b                                          ; $44a8: $b8

jr_03b_44a9:
    adc [hl]                                      ; $44a9: $8e
    or b                                          ; $44aa: $b0
    jp nz, $a759                                  ; $44ab: $c2 $59 $a7

    ld e, h                                       ; $44ae: $5c
    ld [$1b5e], a                                 ; $44af: $ea $5e $1b
    add h                                         ; $44b2: $84
    cpl                                           ; $44b3: $2f

Call_03b_44b4:
Jump_03b_44b4:
    ld e, l                                       ; $44b4: $5d
    cp b                                          ; $44b5: $b8
    adc d                                         ; $44b6: $8a
    and e                                         ; $44b7: $a3
    ld b, [hl]                                    ; $44b8: $46
    ld a, c                                       ; $44b9: $79
    sbc l                                         ; $44ba: $9d
    ld a, c                                       ; $44bb: $79
    ld a, l                                       ; $44bc: $7d
    dec a                                         ; $44bd: $3d
    ld [hl], l                                    ; $44be: $75
    rst $20                                       ; $44bf: $e7
    adc c                                         ; $44c0: $89
    or l                                          ; $44c1: $b5
    cp d                                          ; $44c2: $ba
    cp d                                          ; $44c3: $ba
    and c                                         ; $44c4: $a1
    ld c, a                                       ; $44c5: $4f
    add c                                         ; $44c6: $81
    rst $08                                       ; $44c7: $cf
    sbc $55                                       ; $44c8: $de $55
    ld d, a                                       ; $44ca: $57
    rla                                           ; $44cb: $17
    add [hl]                                      ; $44cc: $86
    xor [hl]                                      ; $44cd: $ae
    cp d                                          ; $44ce: $ba
    ld a, [de]                                    ; $44cf: $1a
    cp [hl]                                       ; $44d0: $be

jr_03b_44d1:
    ld c, e                                       ; $44d1: $4b
    cp a                                          ; $44d2: $bf
    ld b, d                                       ; $44d3: $42
    inc [hl]                                      ; $44d4: $34
    push hl                                       ; $44d5: $e5
    ld h, c                                       ; $44d6: $61
    jp nz, $0b97                                  ; $44d7: $c2 $97 $0b

    inc l                                         ; $44da: $2c
    sub $18                                       ; $44db: $d6 $18
    and h                                         ; $44dd: $a4
    inc [hl]                                      ; $44de: $34
    cp h                                          ; $44df: $bc
    ld h, a                                       ; $44e0: $67
    add a                                         ; $44e1: $87
    xor e                                         ; $44e2: $ab
    jr c, jr_03b_454f                             ; $44e3: $38 $6a

    sub h                                         ; $44e5: $94
    sbc a                                         ; $44e6: $9f
    ld a, c                                       ; $44e7: $79
    db $fd                                        ; $44e8: $fd
    ld d, c                                       ; $44e9: $51
    and e                                         ; $44ea: $a3
    di                                            ; $44eb: $f3
    db $ed                                        ; $44ec: $ed
    and l                                         ; $44ed: $a5
    ld l, d                                       ; $44ee: $6a
    db $d3                                        ; $44ef: $d3
    ld e, c                                       ; $44f0: $59
    rst $20                                       ; $44f1: $e7
    ld d, e                                       ; $44f2: $53
    ld [$5526], a                                 ; $44f3: $ea $26 $55
    sbc e                                         ; $44f6: $9b
    sbc $bb                                       ; $44f7: $de $bb
    ld a, d                                       ; $44f9: $7a
    ld h, $71                                     ; $44fa: $26 $71
    dec h                                         ; $44fc: $25
    ld [hl], l                                    ; $44fd: $75
    and c                                         ; $44fe: $a1
    jp Jump_000_3a98                              ; $44ff: $c3 $98 $3a


    adc e                                         ; $4502: $8b
    db $e3                                        ; $4503: $e3
    ld c, h                                       ; $4504: $4c
    and d                                         ; $4505: $a2
    ld [hl], $a8                                  ; $4506: $36 $a8
    xor e                                         ; $4508: $ab
    add hl, hl                                    ; $4509: $29
    ld a, h                                       ; $450a: $7c
    ld h, c                                       ; $450b: $61
    ld a, d                                       ; $450c: $7a
    xor c                                         ; $450d: $a9
    jp c, $d074                                   ; $450e: $da $74 $d0

    db $e3                                        ; $4511: $e3
    sra [hl]                                      ; $4512: $cb $2e
    ld a, [$0c99]                                 ; $4514: $fa $99 $0c
    ld a, a                                       ; $4517: $7f
    sbc [hl]                                      ; $4518: $9e
    dec hl                                        ; $4519: $2b
    ccf                                           ; $451a: $3f
    di                                            ; $451b: $f3
    ld a, [$0037]                                 ; $451c: $fa $37 $00
    ld bc, $f7aa                                  ; $451f: $01 $aa $f7
    ld a, l                                       ; $4522: $7d
    ld [hl], a                                    ; $4523: $77
    or a                                          ; $4524: $b7
    cp b                                          ; $4525: $b8
    xor d                                         ; $4526: $aa
    db $d3                                        ; $4527: $d3
    call nz, $d495                                ; $4528: $c4 $95 $d4
    add l                                         ; $452b: $85
    ld c, $63                                     ; $452c: $0e $63
    ld [$573c], a                                 ; $452e: $ea $3c $57
    ld a, [hl]                                    ; $4531: $7e
    and $f5                                       ; $4532: $e6 $f5
    ld a, e                                       ; $4534: $7b
    ld [bc], a                                    ; $4535: $02
    add c                                         ; $4536: $81
    inc e                                         ; $4537: $1c
    db $f4                                        ; $4538: $f4
    ld hl, sp-$48                                 ; $4539: $f8 $b8
    jr nc, jr_03b_4562                            ; $453b: $30 $25

    halt                                          ; $453d: $76
    and c                                         ; $453e: $a1
    ld c, a                                       ; $453f: $4f
    push hl                                       ; $4540: $e5
    ld a, [hl-]                                   ; $4541: $3a
    adc l                                         ; $4542: $8d
    jr c, @-$13                                   ; $4543: $38 $eb

    sub h                                         ; $4545: $94
    dec bc                                        ; $4546: $0b
    dec de                                        ; $4547: $1b
    push bc                                       ; $4548: $c5
    inc de                                        ; $4549: $13
    rst $10                                       ; $454a: $d7
    or b                                          ; $454b: $b0
    ld e, d                                       ; $454c: $5a
    ld a, [de]                                    ; $454d: $1a
    ld b, d                                       ; $454e: $42

jr_03b_454f:
    adc l                                         ; $454f: $8d
    add sp, $73                                   ; $4550: $e8 $73
    push hl                                       ; $4552: $e5
    ld [hl], l                                    ; $4553: $75
    sbc b                                         ; $4554: $98
    ld d, d                                       ; $4555: $52
    cp a                                          ; $4556: $bf
    sbc $0b                                       ; $4557: $de $0b
    db $e4                                        ; $4559: $e4
    call nc, $8fd5                                ; $455a: $d4 $d5 $8f
    ei                                            ; $455d: $fb
    or d                                          ; $455e: $b2
    ld [$5f86], a                                 ; $455f: $ea $86 $5f

jr_03b_4562:
    and $b9                                       ; $4562: $e6 $b9
    ccf                                           ; $4564: $3f
    jr c, jr_03b_45ce                             ; $4565: $38 $67

    ld e, l                                       ; $4567: $5d
    ld sp, hl                                     ; $4568: $f9
    sbc c                                         ; $4569: $99
    rst $10                                       ; $456a: $d7
    sbc a                                         ; $456b: $9f
    ld c, c                                       ; $456c: $49
    ld e, h                                       ; $456d: $5c
    db $dd                                        ; $456e: $dd
    and l                                         ; $456f: $a5
    dec bc                                        ; $4570: $0b
    dec e                                         ; $4571: $1d
    add $d4                                       ; $4572: $c6 $d4
    ld b, c                                       ; $4574: $41
    adc a                                         ; $4575: $8f
    cp a                                          ; $4576: $bf
    ld a, [c]                                     ; $4577: $f2
    inc sp                                        ; $4578: $33
    add hl, de                                    ; $4579: $19
    cp $0d                                        ; $457a: $fe $0d
    nop                                           ; $457c: $00
    db $dd                                        ; $457d: $dd
    ld a, e                                       ; $457e: $7b
    db $db                                        ; $457f: $db
    sub $39                                       ; $4580: $d6 $39
    ld [$efca], a                                 ; $4582: $ea $ca $ef
    ld d, b                                       ; $4585: $50
    ld h, l                                       ; $4586: $65
    and c                                         ; $4587: $a1
    ld sp, $16cd                                  ; $4588: $31 $cd $16
    rrca                                          ; $458b: $0f
    db $ed                                        ; $458c: $ed
    add hl, bc                                    ; $458d: $09
    nop                                           ; $458e: $00
    cp l                                          ; $458f: $bd
    add l                                         ; $4590: $85
    add hl, sp                                    ; $4591: $39
    adc e                                         ; $4592: $8b
    db $e3                                        ; $4593: $e3
    ld [hl+], a                                   ; $4594: $22
    sub c                                         ; $4595: $91
    ld [hl], l                                    ; $4596: $75
    ld [$8e2c], a                                 ; $4597: $ea $2c $8e
    dec hl                                        ; $459a: $2b
    adc $04                                       ; $459b: $ce $04
    ld e, a                                       ; $459d: $5f
    ld h, [hl]                                    ; $459e: $66
    ld [de], a                                    ; $459f: $12
    and e                                         ; $45a0: $a3
    db $fc                                        ; $45a1: $fc
    inc e                                         ; $45a2: $1c
    ld l, $4a                                     ; $45a3: $2e $4a
    sub [hl]                                      ; $45a5: $96
    ld [hl], d                                    ; $45a6: $72
    inc bc                                        ; $45a7: $03
    add c                                         ; $45a8: $81
    add h                                         ; $45a9: $84
    ld e, h                                       ; $45aa: $5c
    di                                            ; $45ab: $f3
    dec [hl]                                      ; $45ac: $35
    pop hl                                        ; $45ad: $e1
    dec bc                                        ; $45ae: $0b
    ld d, e                                       ; $45af: $53
    ld d, [hl]                                    ; $45b0: $56
    db $fd                                        ; $45b1: $fd
    sub l                                         ; $45b2: $95
    sub h                                         ; $45b3: $94
    dec de                                        ; $45b4: $1b
    nop                                           ; $45b5: $00
    halt                                          ; $45b6: $76
    ld a, [de]                                    ; $45b7: $1a
    ld d, d                                       ; $45b8: $52
    ld [hl], d                                    ; $45b9: $72
    ld d, $c7                                     ; $45ba: $16 $c7
    ld h, c                                       ; $45bc: $61
    ld [$44c2], a                                 ; $45bd: $ea $c2 $44
    add sp, $71                                   ; $45c0: $e8 $71
    call nz, $d795                                ; $45c2: $c4 $95 $d7
    push de                                       ; $45c5: $d5
    ld c, l                                       ; $45c6: $4d
    db $eb                                        ; $45c7: $eb
    sbc a                                         ; $45c8: $9f
    ld a, c                                       ; $45c9: $79
    db $fd                                        ; $45ca: $fd
    ld e, c                                       ; $45cb: $59
    ld h, a                                       ; $45cc: $67
    ld [hl], c                                    ; $45cd: $71

jr_03b_45ce:
    ld e, h                                       ; $45ce: $5c
    rst $18                                       ; $45cf: $df
    adc e                                         ; $45d0: $8b
    and a                                         ; $45d1: $a7
    db $fc                                        ; $45d2: $fc
    dec b                                         ; $45d3: $05
    ld d, $6b                                     ; $45d4: $16 $6b
    inc c                                         ; $45d6: $0c
    ld d, d                                       ; $45d7: $52
    ld a, [de]                                    ; $45d8: $1a
    sbc $eb                                       ; $45d9: $de $eb
    sbc e                                         ; $45db: $9b
    adc e                                         ; $45dc: $8b
    jp hl                                         ; $45dd: $e9


    ld d, e                                       ; $45de: $53
    and a                                         ; $45df: $a7
    adc c                                         ; $45e0: $89
    xor e                                         ; $45e1: $ab
    cp a                                          ; $45e2: $bf
    and h                                         ; $45e3: $a4
    jp nz, Jump_03b_5217                          ; $45e4: $c2 $17 $52

    ld [hl], d                                    ; $45e7: $72
    ld e, a                                       ; $45e8: $5f
    adc d                                         ; $45e9: $8a
    call $ad2a                                    ; $45ea: $cd $2a $ad
    ld b, d                                       ; $45ed: $42
    call c, $c817                                 ; $45ee: $dc $17 $c8
    ld h, c                                       ; $45f1: $61
    ld [$8a42], a                                 ; $45f2: $ea $42 $8a
    ld h, $7e                                     ; $45f5: $26 $7e
    ccf                                           ; $45f7: $3f
    ld [$f53c], a                                 ; $45f8: $ea $3c $f5
    ld hl, $ff79                                  ; $45fb: $21 $79 $ff
    sbc l                                         ; $45fe: $9d
    ld b, d                                       ; $45ff: $42
    cp l                                          ; $4600: $bd
    ld bc, $5f81                                  ; $4601: $01 $81 $5f
    sbc h                                         ; $4604: $9c
    ld c, a                                       ; $4605: $4f
    add l                                         ; $4606: $85
    rst $28                                       ; $4607: $ef
    adc e                                         ; $4608: $8b
    xor e                                         ; $4609: $ab
    ld sp, $9e75                                  ; $460a: $31 $75 $9e
    dec bc                                        ; $460d: $0b
    and l                                         ; $460e: $a5
    push de                                       ; $460f: $d5
    sub h                                         ; $4610: $94
    db $fd                                        ; $4611: $fd
    pop bc                                        ; $4612: $c1
    ld a, c                                       ; $4613: $79
    cpl                                           ; $4614: $2f
    jr nc, @-$51                                  ; $4615: $30 $ad

    db $eb                                        ; $4617: $eb
    ld d, l                                       ; $4618: $55
    ld a, [hl-]                                   ; $4619: $3a
    ld c, [hl]                                    ; $461a: $4e
    ld [hl], a                                    ; $461b: $77
    adc [hl]                                      ; $461c: $8e
    xor e                                         ; $461d: $ab
    dec sp                                        ; $461e: $3b
    add l                                         ; $461f: $85
    ld a, $85                                     ; $4620: $3e $85
    ldh a, [$9d]                                  ; $4622: $f0 $9d
    db $d3                                        ; $4624: $d3
    add h                                         ; $4625: $84
    ld h, $a6                                     ; $4626: $26 $a6
    call z, $f673                                 ; $4628: $cc $73 $f6
    add hl, bc                                    ; $462b: $09
    pop bc                                        ; $462c: $c1
    ld a, h                                       ; $462d: $7c
    adc c                                         ; $462e: $89
    ld a, d                                       ; $462f: $7a
    rst $08                                       ; $4630: $cf
    cp $0d                                        ; $4631: $fe $0d
    db $fd                                        ; $4633: $fd
    ld e, b                                       ; $4634: $58
    ld d, [hl]                                    ; $4635: $56
    db $fd                                        ; $4636: $fd
    sub l                                         ; $4637: $95
    sub h                                         ; $4638: $94
    ld a, c                                       ; $4639: $79
    adc [hl]                                      ; $463a: $8e
    ld l, b                                       ; $463b: $68
    ld [de], a                                    ; $463c: $12
    and e                                         ; $463d: $a3
    cp h                                          ; $463e: $bc
    xor h                                         ; $463f: $ac
    ld [c], a                                     ; $4640: $e2
    xor b                                         ; $4641: $a8
    ld d, c                                       ; $4642: $51
    ld a, [hl]                                    ; $4643: $7e
    dec [hl]                                      ; $4644: $35
    push af                                       ; $4645: $f5
    ld b, a                                       ; $4646: $47
    sbc h                                         ; $4647: $9c
    ld [hl], c                                    ; $4648: $71
    adc a                                         ; $4649: $8f
    ld sp, $7c17                                  ; $464a: $31 $17 $7c
    ld l, e                                       ; $464d: $6b
    ld d, a                                       ; $464e: $57
    db $d3                                        ; $464f: $d3
    ld l, c                                       ; $4650: $69
    di                                            ; $4651: $f3
    add hl, sp                                    ; $4652: $39
    ld h, l                                       ; $4653: $65
    and c                                         ; $4654: $a1
    ld sp, $f12d                                  ; $4655: $31 $2d $f1
    ld a, l                                       ; $4658: $7d
    ld [$ab88], a                                 ; $4659: $ea $88 $ab
    jr c, jr_03b_46c8                             ; $465c: $38 $6a

    sub h                                         ; $465e: $94
    sbc a                                         ; $465f: $9f
    ld a, c                                       ; $4660: $79
    db $fd                                        ; $4661: $fd
    sbc c                                         ; $4662: $99
    inc d                                         ; $4663: $14
    and c                                         ; $4664: $a1
    add [hl]                                      ; $4665: $86
    adc c                                         ; $4666: $89
    cp [hl]                                       ; $4667: $be
    ld de, $6f23                                  ; $4668: $11 $23 $6f
    nop                                           ; $466b: $00
    add a                                         ; $466c: $87
    sbc c                                         ; $466d: $99
    rst $00                                       ; $466e: $c7
    ld hl, sp-$18                                 ; $466f: $f8 $e8
    di                                            ; $4671: $f3
    ldh a, [$5d]                                  ; $4672: $f0 $5d
    rra                                           ; $4674: $1f
    ldh [$e8], a                                  ; $4675: $e0 $e8
    xor c                                         ; $4677: $a9
    adc e                                         ; $4678: $8b
    ld b, h                                       ; $4679: $44
    jp z, Jump_03b_593a                           ; $467a: $ca $3a $59

    ld [hl], a                                    ; $467d: $77
    ld a, [de]                                    ; $467e: $1a
    ld d, d                                       ; $467f: $52
    add a                                         ; $4680: $87
    add h                                         ; $4681: $84
    inc h                                         ; $4682: $24
    dec d                                         ; $4683: $15
    ld c, $00                                     ; $4684: $0e $00
    sbc d                                         ; $4686: $9a
    dec e                                         ; $4687: $1d
    and c                                         ; $4688: $a1
    and h                                         ; $4689: $a4
    xor $4b                                       ; $468a: $ee $4b
    ld c, h                                       ; $468c: $4c
    sbc l                                         ; $468d: $9d
    ld [hl], l                                    ; $468e: $75
    inc l                                         ; $468f: $2c
    add h                                         ; $4690: $84
    ld e, $23                                     ; $4691: $1e $23
    dec d                                         ; $4693: $15
    ld c, $00                                     ; $4694: $0e $00
    ld bc, $9c94                                  ; $4696: $01 $94 $9c
    dec [hl]                                      ; $4699: $35
    and a                                         ; $469a: $a7
    ld l, c                                       ; $469b: $69
    dec e                                         ; $469c: $1d
    rlc d                                         ; $469d: $cb $02
    or e                                          ; $469f: $b3
    xor $08                                       ; $46a0: $ee $08
    dec h                                         ; $46a2: $25
    rla                                           ; $46a3: $17
    ret z                                         ; $46a4: $c8

    ld b, d                                       ; $46a5: $42
    ld h, e                                       ; $46a6: $63
    ld e, d                                       ; $46a7: $5a
    ld [c], a                                     ; $46a8: $e2
    ei                                            ; $46a9: $fb
    sub h                                         ; $46aa: $94
    ld a, c                                       ; $46ab: $79
    adc $3e                                       ; $46ac: $ce $3e
    ld hl, $2f98                                  ; $46ae: $21 $98 $2f
    ld d, c                                       ; $46b1: $51
    ld bc, $85d6                                  ; $46b2: $01 $d6 $85
    adc [hl]                                      ; $46b5: $8e
    ld a, $a7                                     ; $46b6: $3e $a7
    ld l, $a4                                     ; $46b8: $2e $a4
    cp h                                          ; $46ba: $bc
    db $ec                                        ; $46bb: $ec
    rla                                           ; $46bc: $17
    db $d3                                        ; $46bd: $d3
    and a                                         ; $46be: $a7
    sbc $00                                       ; $46bf: $de $00
    ld a, l                                       ; $46c1: $7d
    ld [hl], e                                    ; $46c2: $73
    pop bc                                        ; $46c3: $c1
    or a                                          ; $46c4: $b7
    ld c, $df                                     ; $46c5: $0e $df
    rst $38                                       ; $46c7: $ff

jr_03b_46c8:
    xor b                                         ; $46c8: $a8
    ld h, $d1                                     ; $46c9: $26 $d1
    scf                                           ; $46cb: $37
    sbc a                                         ; $46cc: $9f
    inc hl                                        ; $46cd: $23
    ld l, $ba                                     ; $46ce: $2e $ba
    sbc c                                         ; $46d0: $99
    rst $28                                       ; $46d1: $ef
    or b                                          ; $46d2: $b0
    rst $38                                       ; $46d3: $ff
    inc bc                                        ; $46d4: $03
    ld d, $c7                                     ; $46d5: $16 $c7
    or c                                          ; $46d7: $b1
    inc l                                         ; $46d8: $2c
    jr nc, @-$13                                  ; $46d9: $30 $eb

    adc [hl]                                      ; $46db: $8e
    ld d, b                                       ; $46dc: $50
    ld [hl], d                                    ; $46dd: $72
    add c                                         ; $46de: $81
    inc l                                         ; $46df: $2c
    inc [hl]                                      ; $46e0: $34
    and [hl]                                      ; $46e1: $a6
    dec h                                         ; $46e2: $25
    cp [hl]                                       ; $46e3: $be
    ld c, a                                       ; $46e4: $4f
    add hl, de                                    ; $46e5: $19
    and $42                                       ; $46e6: $e6 $42
    ld b, a                                       ; $46e8: $47
    rst $38                                       ; $46e9: $ff
    xor e                                         ; $46ea: $ab
    ld d, b                                       ; $46eb: $50
    nop                                           ; $46ec: $00
    cp l                                          ; $46ed: $bd
    call nc, $1666                                ; $46ee: $d4 $66 $16
    rst $00                                       ; $46f1: $c7
    add l                                         ; $46f2: $85
    ld [c], a                                     ; $46f3: $e2
    xor d                                         ; $46f4: $aa
    halt                                          ; $46f5: $76
    cp [hl]                                       ; $46f6: $be
    and $ac                                       ; $46f7: $e6 $ac
    adc e                                         ; $46f9: $8b
    sbc h                                         ; $46fa: $9c
    ld l, a                                       ; $46fb: $6f
    ld d, d                                       ; $46fc: $52
    dec d                                         ; $46fd: $15
    nop                                           ; $46fe: $00
    sbc $16                                       ; $46ff: $de $16
    dec a                                         ; $4701: $3d
    rst $20                                       ; $4702: $e7
    reti                                          ; $4703: $d9


    and c                                         ; $4704: $a1
    adc [hl]                                      ; $4705: $8e
    ld a, [de]                                    ; $4706: $1a
    ld e, a                                       ; $4707: $5f
    xor $43                                       ; $4708: $ee $43
    ld bc, $cedd                                  ; $470a: $01 $dd $ce
    sub e                                         ; $470d: $93
    ld b, a                                       ; $470e: $47
    adc b                                         ; $470f: $88
    ld [bc], a                                    ; $4710: $02

Call_03b_4711:
    sbc a                                         ; $4711: $9f
    dec a                                         ; $4712: $3d
    and l                                         ; $4713: $a5
    ld l, [hl]                                    ; $4714: $6e
    adc c                                         ; $4715: $89
    db $ec                                        ; $4716: $ec
    ld bc, $dd00                                  ; $4717: $01 $00 $dd
    adc $13                                       ; $471a: $ce $13
    ld l, e                                       ; $471c: $6b
    ld [hl], l                                    ; $471d: $75
    ld [hl], l                                    ; $471e: $75
    ld b, e                                       ; $471f: $43

Jump_03b_4720:
    sbc a                                         ; $4720: $9f
    jp nc, $0003                                  ; $4721: $d2 $03 $00

    db $dd                                        ; $4724: $dd
    ld [bc], a                                    ; $4725: $02
    ld [hl-], a                                   ; $4726: $32
    ld b, [hl]                                    ; $4727: $46
    ld a, [bc]                                    ; $4728: $0a
    ld a, h                                       ; $4729: $7c
    or $2f                                        ; $472a: $f6 $2f
    ld h, d                                       ; $472c: $62
    db $ed                                        ; $472d: $ed
    ld bc, $8100                                  ; $472e: $01 $00 $81
    push bc                                       ; $4731: $c5
    ld a, [de]                                    ; $4732: $1a
    add e                                         ; $4733: $83
    sub h                                         ; $4734: $94
    add [hl]                                      ; $4735: $86
    jp $2f84                                      ; $4736: $c3 $84 $2f


    or b                                          ; $4739: $b0
    ld e, b                                       ; $473a: $58
    ld h, e                                       ; $473b: $63
    sub b                                         ; $473c: $90
    jp nc, $9870                                  ; $473d: $d2 $70 $98

    rst $30                                       ; $4740: $f7
    ld a, l                                       ; $4741: $7d
    inc bc                                        ; $4742: $03
    ld h, a                                       ; $4743: $67
    dec sp                                        ; $4744: $3b
    ld h, d                                       ; $4745: $62
    jp nz, Jump_03b_6da7                          ; $4746: $c2 $a7 $6d

    call nc, $a5d8                                ; $4749: $d4 $d8 $a5
    ld d, e                                       ; $474c: $53
    ld b, d                                       ; $474d: $42
    ld c, [hl]                                    ; $474e: $4e
    ld a, [c]                                     ; $474f: $f2
    cp [hl]                                       ; $4750: $be
    rst $28                                       ; $4751: $ef
    sbc d                                         ; $4752: $9a
    db $fd                                        ; $4753: $fd
    ld d, d                                       ; $4754: $52
    ld h, [hl]                                    ; $4755: $66
    ld [hl], c                                    ; $4756: $71
    sbc h                                         ; $4757: $9c
    ld a, [c]                                     ; $4758: $f2
    ld [hl], a                                    ; $4759: $77
    sbc $a5                                       ; $475a: $de $a5
    ld d, a                                       ; $475c: $57
    sbc a                                         ; $475d: $9f
    ld a, e                                       ; $475e: $7b
    xor $f9                                       ; $475f: $ee $f9
    ld a, l                                       ; $4761: $7d
    rst $08                                       ; $4762: $cf
    cp c                                          ; $4763: $b9
    ld hl, sp-$2e                                 ; $4764: $f8 $d2
    dec de                                        ; $4766: $1b
    nop                                           ; $4767: $00
    rst $20                                       ; $4768: $e7
    adc c                                         ; $4769: $89
    or l                                          ; $476a: $b5
    cp d                                          ; $476b: $ba
    cp d                                          ; $476c: $ba
    and c                                         ; $476d: $a1
    ld c, a                                       ; $476e: $4f
    add hl, de                                    ; $476f: $19
    ld [hl], l                                    ; $4770: $75
    push hl                                       ; $4771: $e5
    ld h, a                                       ; $4772: $67
    ld e, [hl]                                    ; $4773: $5e
    ld a, a                                       ; $4774: $7f
    ld hl, $9aa5                                  ; $4775: $21 $a5 $9a
    ld h, $fe                                     ; $4778: $26 $fe
    jp nz, $5f97                                  ; $477a: $c2 $97 $5f

    ld l, h                                       ; $477d: $6c
    ldh a, [$d9]                                  ; $477e: $f0 $d9
    cp a                                          ; $4780: $bf
    adc b                                         ; $4781: $88

jr_03b_4782:
    push af                                       ; $4782: $f5
    sbc [hl]                                      ; $4783: $9e
    dec e                                         ; $4784: $1d
    ld a, [de]                                    ; $4785: $1a
    ld b, a                                       ; $4786: $47
    adc h                                         ; $4787: $8c
    ld a, [c]                                     ; $4788: $f2
    adc e                                         ; $4789: $8b
    ld l, [hl]                                    ; $478a: $6e
    dec [hl]                                      ; $478b: $35
    push af                                       ; $478c: $f5
    ld l, a                                       ; $478d: $6f
    nop                                           ; $478e: $00
    halt                                          ; $478f: $76
    ld l, b                                       ; $4790: $68
    inc e                                         ; $4791: $1c
    ld sp, $2fca                                  ; $4792: $31 $ca $2f
    cp d                                          ; $4795: $ba
    push de                                       ; $4796: $d5
    call nc, Call_000_2f87                        ; $4797: $d4 $87 $2f
    jr nz, jr_03b_47ff                            ; $479a: $20 $63

    and h                                         ; $479c: $a4
    ret nz                                        ; $479d: $c0

    rst $10                                       ; $479e: $d7
    dec a                                         ; $479f: $3d
    rst $30                                       ; $47a0: $f7
    and $35                                       ; $47a1: $e6 $35
    ld h, a                                       ; $47a3: $67
    ld [hl], c                                    ; $47a4: $71
    adc l                                         ; $47a5: $8d
    ld b, d                                       ; $47a6: $42
    dec e                                         ; $47a7: $1d
    db $eb                                        ; $47a8: $eb
    sub b                                         ; $47a9: $90
    db $fd                                        ; $47aa: $fd
    ld e, a                                       ; $47ab: $5f
    or $0b                                        ; $47ac: $f6 $0b
    add hl, hl                                    ; $47ae: $29
    sbc [hl]                                      ; $47af: $9e
    or d                                          ; $47b0: $b2
    ret nc                                        ; $47b1: $d0

    ld h, c                                       ; $47b2: $61
    ld c, h                                       ; $47b3: $4c
    db $ed                                        ; $47b4: $ed
    add hl, bc                                    ; $47b5: $09
    nop                                           ; $47b6: $00
    cp l                                          ; $47b7: $bd
    sbc h                                         ; $47b8: $9c
    cp e                                          ; $47b9: $bb
    rst $28                                       ; $47ba: $ef
    cp e                                          ; $47bb: $bb
    ld l, [hl]                                    ; $47bc: $6e
    inc sp                                        ; $47bd: $33
    rst $18                                       ; $47be: $df
    ld h, c                                       ; $47bf: $61
    rst $38                                       ; $47c0: $ff
    cp a                                          ; $47c1: $bf
    rst $28                                       ; $47c2: $ef
    dec de                                        ; $47c3: $1b
    nop                                           ; $47c4: $00
    halt                                          ; $47c5: $76
    ld l, b                                       ; $47c6: $68
    inc e                                         ; $47c7: $1c
    ld sp, $2fca                                  ; $47c8: $31 $ca $2f
    cp d                                          ; $47cb: $ba
    push de                                       ; $47cc: $d5
    call nc, $cf87                                ; $47cd: $d4 $87 $cf
    cp $45                                        ; $47d0: $fe $45
    xor h                                         ; $47d2: $ac
    ldh a, [rLYC]                                 ; $47d3: $f0 $45
    ld [hl+], a                                   ; $47d5: $22
    sub h                                         ; $47d6: $94
    or e                                          ; $47d7: $b3
    jr c, jr_03b_4808                             ; $47d8: $38 $2e

    dec sp                                        ; $47da: $3b
    ld c, d                                       ; $47db: $4a
    xor c                                         ; $47dc: $a9
    cp h                                          ; $47dd: $bc
    xor h                                         ; $47de: $ac
    db $fc                                        ; $47df: $fc
    inc c                                         ; $47e0: $0c
    add l                                         ; $47e1: $85
    ld [hl], l                                    ; $47e2: $75
    ld h, d                                       ; $47e3: $62
    ei                                            ; $47e4: $fb
    dec de                                        ; $47e5: $1b
    nop                                           ; $47e6: $00
    add c                                         ; $47e7: $81
    ld b, a                                       ; $47e8: $47
    ld [$4a91], a                                 ; $47e9: $ea $91 $4a
    jp hl                                         ; $47ec: $e9


    ld e, d                                       ; $47ed: $5a
    call Call_000_297e                            ; $47ee: $cd $7e $29
    or e                                          ; $47f1: $b3
    jr c, jr_03b_4782                             ; $47f2: $38 $8e

    ld l, b                                       ; $47f4: $68
    inc e                                         ; $47f5: $1c
    ld sp, $750a                                  ; $47f6: $31 $0a $75
    pop de                                        ; $47f9: $d1
    xor l                                         ; $47fa: $ad
    and [hl]                                      ; $47fb: $a6
    cp $7d                                        ; $47fc: $fe $7d
    rst $18                                       ; $47fe: $df

jr_03b_47ff:
    add sp, -$30                                  ; $47ff: $e8 $d0
    db $fc                                        ; $4801: $fc
    sub h                                         ; $4802: $94
    db $d3                                        ; $4803: $d3
    rst $28                                       ; $4804: $ef
    ld [hl], b                                    ; $4805: $70
    ld d, $d7                                     ; $4806: $16 $d7

jr_03b_4808:
    xor d                                         ; $4808: $aa
    ld [c], a                                     ; $4809: $e2
    ld b, d                                       ; $480a: $42
    ld b, a                                       ; $480b: $47
    rst $08                                       ; $480c: $cf
    ld d, c                                       ; $480d: $51
    db $e3                                        ; $480e: $e3
    set 5, d                                      ; $480f: $cb $ea
    ld h, $8f                                     ; $4811: $26 $8f
    ld a, $6f                                     ; $4813: $3e $6f
    nop                                           ; $4815: $00
    or $6f                                        ; $4816: $f6 $6f
    db $dd                                        ; $4818: $dd
    rla                                           ; $4819: $17
    ret z                                         ; $481a: $c8

    ld h, c                                       ; $481b: $61
    ld [$c5b4], a                                 ; $481c: $ea $b4 $c5
    sub [hl]                                      ; $481f: $96
    ld a, [hl-]                                   ; $4820: $3a
    rst $08                                       ; $4821: $cf
    reti                                          ; $4822: $d9


    daa                                           ; $4823: $27
    inc b                                         ; $4824: $04
    di                                            ; $4825: $f3
    dec h                                         ; $4826: $25
    ld [$257e], a                                 ; $4827: $ea $7e $25
    ld [hl], l                                    ; $482a: $75
    ld d, $c7                                     ; $482b: $16 $c7
    ld b, l                                       ; $482d: $45
    adc [hl]                                      ; $482e: $8e
    ld a, [de]                                    ; $482f: $1a
    cp e                                          ; $4830: $bb
    ld d, $4a                                     ; $4831: $16 $4a
    ld b, $5b                                     ; $4833: $06 $5b
    and a                                         ; $4835: $a7
    ld sp, hl                                     ; $4836: $f9
    inc e                                         ; $4837: $1c
    ld sp, $0bca                                  ; $4838: $31 $ca $0b
    ld a, h                                       ; $483b: $7c
    or $2f                                        ; $483c: $f6 $2f
    ld h, d                                       ; $483e: $62
    cp l                                          ; $483f: $bd
    ld bc, $eddd                                  ; $4840: $01 $dd $ed
    ld [hl], h                                    ; $4843: $74
    call nc, Call_000_2bf8                        ; $4844: $d4 $f8 $2b
    cp a                                          ; $4847: $bf
    sbc d                                         ; $4848: $9a
    ld a, [$dcf3]                                 ; $4849: $fa $f3 $dc
    ld a, c                                       ; $484c: $79
    ld h, d                                       ; $484d: $62
    xor l                                         ; $484e: $ad
    xor [hl]                                      ; $484f: $ae
    ld l, [hl]                                    ; $4850: $6e
    add sp, $53                                   ; $4851: $e8 $53
    ld a, d                                       ; $4853: $7a
    ld [bc], a                                    ; $4854: $02
    ld a, l                                       ; $4855: $7d
    inc de                                        ; $4856: $13
    ld a, $cd                                     ; $4857: $3e $cd
    ld a, [hl-]                                   ; $4859: $3a
    ld [hl], l                                    ; $485a: $75
    sbc [hl]                                      ; $485b: $9e
    or e                                          ; $485c: $b3
    ld [hl], a                                    ; $485d: $77
    push de                                       ; $485e: $d5
    push de                                       ; $485f: $d5
    add l                                         ; $4860: $85
    and c                                         ; $4861: $a1
    xor e                                         ; $4862: $ab
    xor [hl]                                      ; $4863: $ae
    cp [hl]                                       ; $4864: $be
    ld bc, $ecdd                                  ; $4865: $01 $dd $ec
    ld e, l                                       ; $4868: $5d
    ld [hl], l                                    ; $4869: $75
    ld [hl], l                                    ; $486a: $75
    ld h, c                                       ; $486b: $61
    add sp, -$56                                  ; $486c: $e8 $aa
    xor e                                         ; $486e: $ab
    ld b, a                                       ; $486f: $47
    ld e, l                                       ; $4870: $5d
    ld sp, hl                                     ; $4871: $f9
    push de                                       ; $4872: $d5
    db $ec                                        ; $4873: $ec
    sub a                                         ; $4874: $97
    jp nc, $0003                                  ; $4875: $d2 $03 $00

    rla                                           ; $4878: $17
    push hl                                       ; $4879: $e5
    or h                                          ; $487a: $b4
    ld de, $c263                                  ; $487b: $11 $63 $c2
    ld b, a                                       ; $487e: $47
    adc l                                         ; $487f: $8d
    add hl, sp                                    ; $4880: $39
    ld [$fd2e], a                                 ; $4881: $ea $2e $fd
    ld a, [bc]                                    ; $4884: $0a
    pop de                                        ; $4885: $d1
    sub h                                         ; $4886: $94
    add a                                         ; $4887: $87
    ld a, c                                       ; $4888: $79
    inc bc                                        ; $4889: $03
    db $dd                                        ; $488a: $dd
    ld l, $fd                                     ; $488b: $2e $fd
    ld a, [bc]                                    ; $488d: $0a
    pop de                                        ; $488e: $d1
    sub h                                         ; $488f: $94
    add a                                         ; $4890: $87
    add hl, sp                                    ; $4891: $39
    ld [$561a], a                                 ; $4892: $ea $1a $56
    adc b                                         ; $4895: $88
    and [hl]                                      ; $4896: $a6

Jump_03b_4897:
    ld [hl], l                                    ; $4897: $75
    ld a, [bc]                                    ; $4898: $0a
    ld a, e                                       ; $4899: $7b
    nop                                           ; $489a: $00
    db $dd                                        ; $489b: $dd
    db $ed                                        ; $489c: $ed
    inc [hl]                                      ; $489d: $34
    halt                                          ; $489e: $76
    dec l                                         ; $489f: $2d
    ld a, $ce                                     ; $48a0: $3e $ce
    ld d, e                                       ; $48a2: $53
    ld d, e                                       ; $48a3: $53
    inc a                                         ; $48a4: $3c
    pop af                                        ; $48a5: $f1
    db $fd                                        ; $48a6: $fd
    xor a                                         ; $48a7: $af
    db $fc                                        ; $48a8: $fc
    call z, $cfeb                                 ; $48a9: $cc $eb $cf
    ld h, h                                       ; $48ac: $64
    sbc l                                         ; $48ad: $9d
    and e                                         ; $48ae: $a3
    add $5f                                       ; $48af: $c6 $5f
    ld c, l                                       ; $48b1: $4d
    db $fd                                        ; $48b2: $fd
    sbc [hl]                                      ; $48b3: $9e
    nop                                           ; $48b4: $00
    db $dd                                        ; $48b5: $dd
    db $ec                                        ; $48b6: $ec
    inc [hl]                                      ; $48b7: $34
    cp $a8                                        ; $48b8: $fe $a8
    dec bc                                        ; $48ba: $0b
    inc l                                         ; $48bb: $2c
    sub $18                                       ; $48bc: $d6 $18
    and h                                         ; $48be: $a4
    inc [hl]                                      ; $48bf: $34
    db $ec                                        ; $48c0: $ec
    ld bc, $dd00                                  ; $48c1: $01 $00 $dd
    xor [hl]                                      ; $48c4: $ae
    ld l, b                                       ; $48c5: $68
    sub l                                         ; $48c6: $95
    ld e, a                                       ; $48c7: $5f
    ld h, b                                       ; $48c8: $60
    or c                                          ; $48c9: $b1
    add $20                                       ; $48ca: $c6 $20
    and l                                         ; $48cc: $a5
    ld h, c                                       ; $48cd: $61
    rrca                                          ; $48ce: $0f
    nop                                           ; $48cf: $00
    halt                                          ; $48d0: $76
    cp d                                          ; $48d1: $ba
    xor d                                         ; $48d2: $aa
    dec b                                         ; $48d3: $05
    cp [hl]                                       ; $48d4: $be
    ld l, [hl]                                    ; $48d5: $6e
    or $2f                                        ; $48d6: $f6 $2f
    ld h, d                                       ; $48d8: $62
    ld e, l                                       ; $48d9: $5d
    ld b, b                                       ; $48da: $40
    add $48                                       ; $48db: $c6 $48
    jp hl                                         ; $48dd: $e9


    ld bc, $9700                                  ; $48de: $01 $00 $97
    cp b                                          ; $48e1: $b8
    xor d                                         ; $48e2: $aa
    xor e                                         ; $48e3: $ab
    cp a                                          ; $48e4: $bf
    call z, $38e2                                 ; $48e5: $cc $e2 $38
    call z, $df05                                 ; $48e8: $cc $05 $df
    ld a, [$a9ab]                                 ; $48eb: $fa $ab $a9
    cp a                                          ; $48ee: $bf
    ld a, $0e                                     ; $48ef: $3e $0e
    add d                                         ; $48f1: $82
    ld a, [bc]                                    ; $48f2: $0a
    rla                                           ; $48f3: $17
    cp [hl]                                       ; $48f4: $be
    db $fc                                        ; $48f5: $fc
    ld h, d                                       ; $48f6: $62
    add e                                         ; $48f7: $83
    cpl                                           ; $48f8: $2f
    jr nz, jr_03b_495e                            ; $48f9: $20 $63

    and h                                         ; $48fb: $a4
    call c, $8100                                 ; $48fc: $dc $00 $81
    ld c, l                                       ; $48ff: $4d
    sub $b7                                       ; $4900: $d6 $b7
    sbc c                                         ; $4902: $99
    ld h, b                                       ; $4903: $60
    sub [hl]                                      ; $4904: $96
    rst $10                                       ; $4905: $d7
    ld a, c                                       ; $4906: $79
    xor [hl]                                      ; $4907: $ae
    ld c, a                                       ; $4908: $4f
    xor e                                         ; $4909: $ab
    push de                                       ; $490a: $d5
    ld a, d                                       ; $490b: $7a
    ld h, h                                       ; $490c: $64
    ld b, b                                       ; $490d: $40
    ld c, d                                       ; $490e: $4a
    ret c                                         ; $490f: $d8

    db $10                                        ; $4910: $10
    adc d                                         ; $4911: $8a
    adc c                                         ; $4912: $89
    ldh a, [$9d]                                  ; $4913: $f0 $9d
    ei                                            ; $4915: $fb
    jr jr_03b_4977                                ; $4916: $18 $5f

    db $eb                                        ; $4918: $eb
    rst $18                                       ; $4919: $df
    and l                                         ; $491a: $a5
    call nc, $89e6                                ; $491b: $d4 $e6 $89
    sub c                                         ; $491e: $91
    di                                            ; $491f: $f3
    ld e, h                                       ; $4920: $5c
    ld sp, hl                                     ; $4921: $f9
    push bc                                       ; $4922: $c5
    inc d                                         ; $4923: $14
    pop hl                                        ; $4924: $e1
    inc a                                         ; $4925: $3c
    ld [hl], a                                    ; $4926: $77
    sbc [hl]                                      ; $4927: $9e
    ld e, b                                       ; $4928: $58
    xor e                                         ; $4929: $ab
    xor e                                         ; $492a: $ab
    dec de                                        ; $492b: $1b
    ld a, [$7b94]                                 ; $492c: $fa $94 $7b
    db $dd                                        ; $492f: $dd
    db $ed                                        ; $4930: $ed
    ld [hl], b                                    ; $4931: $70
    ld d, $57                                     ; $4932: $16 $57
    ld [hl], l                                    ; $4934: $75
    and c                                         ; $4935: $a1
    and e                                         ; $4936: $a3
    rst $08                                       ; $4937: $cf
    add hl, hl                                    ; $4938: $29
    and l                                         ; $4939: $a5
    jp nc, $b0a4                                  ; $493a: $d2 $a4 $b0

    daa                                           ; $493d: $27
    nop                                           ; $493e: $00
    halt                                          ; $493f: $76
    cp d                                          ; $4940: $ba
    xor d                                         ; $4941: $aa
    ld h, l                                       ; $4942: $65
    sbc [hl]                                      ; $4943: $9e
    xor e                                         ; $4944: $ab
    ld d, b                                       ; $4945: $50
    db $fc                                        ; $4946: $fc
    ei                                            ; $4947: $fb
    ld a, e                                       ; $4948: $7b
    halt                                          ; $4949: $76
    ld l, b                                       ; $494a: $68
    ld e, $e3                                     ; $494b: $1e $e3
    ei                                            ; $494d: $fb
    sbc h                                         ; $494e: $9c
    rst $20                                       ; $494f: $e7
    ld [hl+], a                                   ; $4950: $22
    sub c                                         ; $4951: $91
    ld [de], a                                    ; $4952: $12
    add hl, sp                                    ; $4953: $39
    ld h, d                                       ; $4954: $62
    inc d                                         ; $4955: $14
    ld c, $53                                     ; $4956: $0e $53
    inc sp                                        ; $4958: $33
    ld c, d                                       ; $4959: $4a
    ld [$000d], a                                 ; $495a: $ea $0d $00
    rst $30                                       ; $495d: $f7

jr_03b_495e:
    ld a, l                                       ; $495e: $7d
    inc bc                                        ; $495f: $03
    ld bc, $342f                                  ; $4960: $01 $2f $34
    call nc, Call_03b_5c39                        ; $4963: $d4 $39 $5c
    ld l, h                                       ; $4966: $6c
    ld h, c                                       ; $4967: $61
    ld c, [hl]                                    ; $4968: $4e
    ld e, e                                       ; $4969: $5b
    dec e                                         ; $496a: $1d
    halt                                          ; $496b: $76
    push bc                                       ; $496c: $c5
    ld h, [hl]                                    ; $496d: $66
    ld [de], a                                    ; $496e: $12
    cp [hl]                                       ; $496f: $be
    sub b                                         ; $4970: $90
    sub d                                         ; $4971: $92
    and e                                         ; $4972: $a3
    add $1f                                       ; $4973: $c6 $1f
    and $a8                                       ; $4975: $e6 $a8

jr_03b_4977:
    adc e                                         ; $4977: $8b
    ld l, [hl]                                    ; $4978: $6e
    dec [hl]                                      ; $4979: $35
    push af                                       ; $497a: $f5
    ld l, a                                       ; $497b: $6f
    nop                                           ; $497c: $00
    ld a, l                                       ; $497d: $7d
    ld [hl], e                                    ; $497e: $73
    call nc, $b745                                ; $497f: $d4 $45 $b7
    sbc d                                         ; $4982: $9a
    ld a, [$7df7]                                 ; $4983: $fa $f7 $7d
    sub a                                         ; $4986: $97
    sbc h                                         ; $4987: $9c
    ld [hl], $62                                  ; $4988: $36 $62
    call z, $befb                                 ; $498a: $cc $fb $be
    ld bc, $ecdd                                  ; $498d: $01 $dd $ec
    inc [hl]                                      ; $4990: $34
    cp $a8                                        ; $4991: $fe $a8
    dec a                                         ; $4993: $3d
    sub $cd                                       ; $4994: $d6 $cd
    ld c, $cd                                     ; $4996: $0e $cd
    ld h, e                                       ; $4998: $63
    ld a, h                                       ; $4999: $7c
    sbc a                                         ; $499a: $9f
    ld a, [hl-]                                   ; $499b: $3a
    rst $08                                       ; $499c: $cf
    ld e, c                                       ; $499d: $59
    inc e                                         ; $499e: $1c

Call_03b_499f:
    and a                                         ; $499f: $a7
    ld a, h                                       ; $49a0: $7c
    sbc l                                         ; $49a1: $9d
    jp $e79c                                      ; $49a2: $c3 $9c $e7


    jr nc, jr_03b_49dc                            ; $49a5: $30 $35

    and e                                         ; $49a7: $a3
    and h                                         ; $49a8: $a4
    or $00                                        ; $49a9: $f6 $00
    db $dd                                        ; $49ab: $dd
    db $ec                                        ; $49ac: $ec
    ld e, a                                       ; $49ad: $5f
    call nz, Call_03b_63da                        ; $49ae: $c4 $da $63
    db $dd                                        ; $49b1: $dd
    ld [bc], a                                    ; $49b2: $02
    ld d, d                                       ; $49b3: $52
    or $16                                        ; $49b4: $f6 $16
    ld h, a                                       ; $49b6: $67
    db $d3                                        ; $49b7: $d3
    inc bc                                        ; $49b8: $03
    nop                                           ; $49b9: $00
    rst $20                                       ; $49ba: $e7
    ret                                           ; $49bb: $c9


    sbc e                                         ; $49bc: $9b
    or $7a                                        ; $49bd: $f6 $7a
    xor a                                         ; $49bf: $af
    rla                                           ; $49c0: $17
    ld a, [$fcef]                                 ; $49c1: $fa $ef $fc
    inc e                                         ; $49c4: $1c
    ld l, $4c                                     ; $49c5: $2e $4c
    sub e                                         ; $49c7: $93
    dec bc                                        ; $49c8: $0b
    add hl, hl                                    ; $49c9: $29
    cp [hl]                                       ; $49ca: $be
    ld sp, hl                                     ; $49cb: $f9
    cp h                                          ; $49cc: $bc
    ld bc, $2fdd                                  ; $49cd: $01 $dd $2f
    ld [hl], c                                    ; $49d0: $71
    xor l                                         ; $49d1: $ad
    ld a, [hl+]                                   ; $49d2: $2a

jr_03b_49d3:
    adc [hl]                                      ; $49d3: $8e
    ld a, [hl-]                                   ; $49d4: $3a
    ld a, [hl+]                                   ; $49d5: $2a
    rla                                           ; $49d6: $17
    call z, Call_000_23ba                         ; $49d7: $cc $ba $23
    sbc h                                         ; $49da: $9c
    rst $20                                       ; $49db: $e7

jr_03b_49dc:
    call z, $2fcb                                 ; $49dc: $cc $cb $2f
    ld a, $ee                                     ; $49df: $3e $ee
    ld hl, $df69                                  ; $49e1: $21 $69 $df
    ld [hl], e                                    ; $49e4: $73
    ld bc, $342f                                  ; $49e5: $01 $2f $34
    sbc h                                         ; $49e8: $9c
    push bc                                       ; $49e9: $c5
    ld [hl], c                                    ; $49ea: $71
    dec [hl]                                      ; $49eb: $35
    sub a                                         ; $49ec: $97
    cp [hl]                                       ; $49ed: $be
    db $fd                                        ; $49ee: $fd
    dec c                                         ; $49ef: $0d
    nop                                           ; $49f0: $00
    halt                                          ; $49f1: $76
    cp d                                          ; $49f2: $ba
    ld b, b                                       ; $49f3: $40
    db $fc                                        ; $49f4: $fc
    sub b                                         ; $49f5: $90
    ldh a, [$b1]                                  ; $49f6: $f0 $b1
    inc l                                         ; $49f8: $2c
    sub h                                         ; $49f9: $94
    xor h                                         ; $49fa: $ac
    and [hl]                                      ; $49fb: $a6
    and [hl]                                      ; $49fc: $a6
    call z, Call_03b_6173                         ; $49fd: $cc $73 $61
    sbc d                                         ; $4a00: $9a
    sub [hl]                                      ; $4a01: $96
    ld c, b                                       ; $4a02: $48
    sbc l                                         ; $4a03: $9d
    ld [hl], l                                    ; $4a04: $75
    db $fd                                        ; $4a05: $fd
    ld e, b                                       ; $4a06: $58
    call Call_000_2e79                            ; $4a07: $cd $79 $2e
    or b                                          ; $4a0a: $b0
    ld e, b                                       ; $4a0b: $58
    ld h, e                                       ; $4a0c: $63
    sub b                                         ; $4a0d: $90
    jp nc, Jump_03b_5ef0                          ; $4a0e: $d2 $f0 $5e

    ld l, a                                       ; $4a11: $6f
    rst $10                                       ; $4a12: $d7
    db $fc                                        ; $4a13: $fc
    ei                                            ; $4a14: $fb
    sbc h                                         ; $4a15: $9c
    ld c, c                                       ; $4a16: $49
    ld e, h                                       ; $4a17: $5c
    push de                                       ; $4a18: $d5
    ld [hl], d                                    ; $4a19: $72
    rst $08                                       ; $4a1a: $cf
    xor [hl]                                      ; $4a1b: $ae
    call z, Call_000_2cb3                         ; $4a1c: $cc $b3 $2c
    ld a, [hl-]                                   ; $4a1f: $3a
    jp hl                                         ; $4a20: $e9


    inc a                                         ; $4a21: $3c
    ld b, [hl]                                    ; $4a22: $46
    adc [hl]                                      ; $4a23: $8e
    cp d                                          ; $4a24: $ba
    ld c, e                                       ; $4a25: $4b
    ld e, h                                       ; $4a26: $5c
    inc de                                        ; $4a27: $13
    ld h, c                                       ; $4a28: $61
    add hl, hl                                    ; $4a29: $29
    and a                                         ; $4a2a: $a7
    adc l                                         ; $4a2b: $8d
    xor b                                         ; $4a2c: $a8
    inc a                                         ; $4a2d: $3c
    ld hl, sp+$77                                 ; $4a2e: $f8 $77
    ld c, $ab                                     ; $4a30: $0e $ab
    adc c                                         ; $4a32: $89
    ld a, [$8933]                                 ; $4a33: $fa $33 $89
    ld d, c                                       ; $4a36: $51
    ld a, [hl]                                    ; $4a37: $7e
    push hl                                       ; $4a38: $e5
    ld [hl], l                                    ; $4a39: $75
    cp l                                          ; $4a3a: $bd
    inc h                                         ; $4a3b: $24
    ld d, d                                       ; $4a3c: $52
    ld [hl], a                                    ; $4a3d: $77
    or c                                          ; $4a3e: $b1
    ld a, [de]                                    ; $4a3f: $1a
    daa                                           ; $4a40: $27
    xor a                                         ; $4a41: $af
    rst $30                                       ; $4a42: $f7
    adc $69                                       ; $4a43: $ce $69
    add [hl]                                      ; $4a45: $86
    jr c, jr_03b_49d3                             ; $4a46: $38 $8b

    db $e3                                        ; $4a48: $e3
    ld [bc], a                                    ; $4a49: $02

Jump_03b_4a4a:
    pop af                                        ; $4a4a: $f1
    ld b, e                                       ; $4a4b: $43
    adc $e2                                       ; $4a4c: $ce $e2
    ld a, [de]                                    ; $4a4e: $1a
    add l                                         ; $4a4f: $85
    ld d, e                                       ; $4a50: $53
    or a                                          ; $4a51: $b7
    ret nc                                        ; $4a52: $d0

    ld d, c                                       ; $4a53: $51
    ld h, e                                       ; $4a54: $63
    sbc $00                                       ; $4a55: $de $00
    db $dd                                        ; $4a57: $dd
    ld a, [$c170]                                 ; $4a58: $fa $70 $c1
    rst $00                                       ; $4a5b: $c7
    add hl, hl                                    ; $4a5c: $29
    dec bc                                        ; $4a5d: $0b
    adc l                                         ; $4a5e: $8d
    ld l, c                                       ; $4a5f: $69
    adc c                                         ; $4a60: $89
    rst $28                                       ; $4a61: $ef
    ld [hl], e                                    ; $4a62: $73
    pop hl                                        ; $4a63: $e1
    set 5, a                                      ; $4a64: $cb $ef
    inc a                                         ; $4a66: $3c
    or c                                          ; $4a67: $b1
    ld d, [hl]                                    ; $4a68: $56

Call_03b_4a69:
    ld d, a                                       ; $4a69: $57

Call_03b_4a6a:
    scf                                           ; $4a6a: $37
    db $f4                                        ; $4a6b: $f4
    add hl, hl                                    ; $4a6c: $29
    dec a                                         ; $4a6d: $3d
    nop                                           ; $4a6e: $00
    db $dd                                        ; $4a6f: $dd
    ld a, [$eb38]                                 ; $4a70: $fa $38 $eb

Call_03b_4a73:
    ld a, [hl-]                                   ; $4a73: $3a
    adc l                                         ; $4a74: $8d
    ld [$a5df], sp                                ; $4a75: $08 $df $a5
    adc c                                         ; $4a78: $89
    dec a                                         ; $4a79: $3d
    nop                                           ; $4a7a: $00
    db $dd                                        ; $4a7b: $dd
    db $ec                                        ; $4a7c: $ec
    inc [hl]                                      ; $4a7d: $34
    cp [hl]                                       ; $4a7e: $be
    ld [hl], h                                    ; $4a7f: $74
    jp hl                                         ; $4a80: $e9


    ld c, h                                       ; $4a81: $4c
    ld [c], a                                     ; $4a82: $e2
    ld h, d                                       ; $4a83: $62
    ld a, [$61d4]                                 ; $4a84: $fa $d4 $61
    ld l, d                                       ; $4a87: $6a
    ld b, [hl]                                    ; $4a88: $46
    ld c, c                                       ; $4a89: $49
    db $ed                                        ; $4a8a: $ed
    ld bc, $dd00                                  ; $4a8b: $01 $00 $dd
    cpl                                           ; $4a8e: $2f
    ld c, e                                       ; $4a8f: $4b
    sbc a                                         ; $4a90: $9f
    jp c, $6773                                   ; $4a91: $da $73 $67

    dec sp                                        ; $4a94: $3b
    ld h, d                                       ; $4a95: $62
    sbc $f7                                       ; $4a96: $de $f7
    db $ed                                        ; $4a98: $ed
    ld [$befb], a                                 ; $4a99: $ea $fb $be
    db $eb                                        ; $4a9c: $eb
    cp d                                          ; $4a9d: $ba
    cp [hl]                                       ; $4a9e: $be
    rst $28                                       ; $4a9f: $ef
    dec de                                        ; $4aa0: $1b
    nop                                           ; $4aa1: $00
    rla                                           ; $4aa2: $17
    db $fd                                        ; $4aa3: $fd
    sub h                                         ; $4aa4: $94
    add l                                         ; $4aa5: $85
    add $34                                       ; $4aa6: $c6 $34
    ld e, e                                       ; $4aa8: $5b
    ld e, h                                       ; $4aa9: $5c
    ldh a, [$67]                                  ; $4aaa: $f0 $67
    ld [de], a                                    ; $4aac: $12
    ld c, l                                       ; $4aad: $4d
    ld [hl], c                                    ; $4aae: $71
    call $bde7                                    ; $4aaf: $cd $e7 $bd
    ld l, [hl]                                    ; $4ab2: $6e
    ld h, a                                       ; $4ab3: $67
    scf                                           ; $4ab4: $37
    ld h, d                                       ; $4ab5: $62
    add l                                         ; $4ab6: $85
    ret c                                         ; $4ab7: $d8

    ld a, h                                       ; $4ab8: $7c
    ld [$0e7e], a                                 ; $4ab9: $ea $7e $0e
    add a                                         ; $4abc: $87
    adc [hl]                                      ; $4abd: $8e
    sub l                                         ; $4abe: $95
    call c, $9c1f                                 ; $4abf: $dc $1f $9c
    inc hl                                        ; $4ac2: $23
    adc $3e                                       ; $4ac3: $ce $3e
    ld hl, $2f98                                  ; $4ac5: $21 $98 $2f
    ld d, c                                       ; $4ac8: $51
    ld a, e                                       ; $4ac9: $7b
    db $ec                                        ; $4aca: $ec
    ld [de], a                                    ; $4acb: $12
    rst $00                                       ; $4acc: $c7
    or c                                          ; $4acd: $b1
    ld c, $1b                                     ; $4ace: $0e $1b
    dec c                                         ; $4ad0: $0d
    rst $00                                       ; $4ad1: $c7
    or d                                          ; $4ad2: $b2
    adc $a3                                       ; $4ad3: $ce $a3
    push bc                                       ; $4ad5: $c5
    ld sp, $06f2                                  ; $4ad6: $31 $f2 $06
    rst $20                                       ; $4ad9: $e7
    ld a, h                                       ; $4ada: $7c
    db $e4                                        ; $4adb: $e4
    ld b, d                                       ; $4adc: $42
    ld l, c                                       ; $4add: $69
    ld a, [$5f0b]                                 ; $4ade: $fa $0b $5f
    ld a, [hl]                                    ; $4ae1: $7e
    and l                                         ; $4ae2: $a5
    db $10                                        ; $4ae3: $10
    ld a, d                                       ; $4ae4: $7a
    reti                                          ; $4ae5: $d9


    sub a                                         ; $4ae6: $97
    sbc l                                         ; $4ae7: $9d
    daa                                           ; $4ae8: $27
    adc a                                         ; $4ae9: $8f
    db $eb                                        ; $4aea: $eb
    sbc l                                         ; $4aeb: $9d
    dec [hl]                                      ; $4aec: $35
    ld a, l                                       ; $4aed: $7d
    jp z, $dd72                                   ; $4aee: $ca $72 $dd

    jr nc, @+$19                                  ; $4af1: $30 $17

    add hl, sp                                    ; $4af3: $39
    ld h, l                                       ; $4af4: $65
    and c                                         ; $4af5: $a1
    ld sp, $f12d                                  ; $4af6: $31 $2d $f1
    and l                                         ; $4af9: $a5
    dec bc                                        ; $4afa: $0b
    ld a, e                                       ; $4afb: $7b
    nop                                           ; $4afc: $00
    ld a, l                                       ; $4afd: $7d
    ld [hl], e                                    ; $4afe: $73
    pop bc                                        ; $4aff: $c1
    or a                                          ; $4b00: $b7

jr_03b_4b01:
    ld l, $36                                     ; $4b01: $2e $36
    sub $61                                       ; $4b03: $d6 $61
    ld l, $7c                                     ; $4b05: $2e $7c
    ld sp, hl                                     ; $4b07: $f9
    sbc c                                         ; $4b08: $99

Call_03b_4b09:
    ldh [rWX], a                                  ; $4b09: $e0 $4b
    ld a, c                                       ; $4b0b: $79
    add l                                         ; $4b0c: $85
    xor a                                         ; $4b0d: $af
    and $62                                       ; $4b0e: $e6 $62
    inc hl                                        ; $4b10: $23
    ld [de], a                                    ; $4b11: $12
    ld h, a                                       ; $4b12: $67
    ld [hl], c                                    ; $4b13: $71
    sbc h                                         ; $4b14: $9c
    or d                                          ; $4b15: $b2
    ret nc                                        ; $4b16: $d0

    sbc b                                         ; $4b17: $98
    sub [hl]                                      ; $4b18: $96
    ld hl, sp+$72                                 ; $4b19: $f8 $72
    inc bc                                        ; $4b1b: $03
    ld a, l                                       ; $4b1c: $7d
    ld [hl], e                                    ; $4b1d: $73
    pop bc                                        ; $4b1e: $c1
    or a                                          ; $4b1f: $b7
    ld c, $df                                     ; $4b20: $0e $df
    rst $38                                       ; $4b22: $ff
    inc l                                         ; $4b23: $2c
    adc [hl]                                      ; $4b24: $8e
    dec bc                                        ; $4b25: $0b
    cp [hl]                                       ; $4b26: $be
    and c                                         ; $4b27: $a1
    db $ec                                        ; $4b28: $ec
    dec l                                         ; $4b29: $2d
    adc $66                                       ; $4b2a: $ce $66
    push de                                       ; $4b2c: $d5
    adc [hl]                                      ; $4b2d: $8e
    ld a, [c]                                     ; $4b2e: $f2
    rst $30                                       ; $4b2f: $f7
    ld l, $4b                                     ; $4b30: $2e $4b
    rst $38                                       ; $4b32: $ff
    dec hl                                        ; $4b33: $2b
    cp a                                          ; $4b34: $bf
    scf                                           ; $4b35: $37
    and [hl]                                      ; $4b36: $a6
    reti                                          ; $4b37: $d9


    ld [c], a                                     ; $4b38: $e2
    and d                                         ; $4b39: $a2
    inc a                                         ; $4b3a: $3c
    xor d                                         ; $4b3b: $aa
    ld [hl], c                                    ; $4b3c: $71
    ld [hl+], a                                   ; $4b3d: $22
    inc e                                         ; $4b3e: $1c
    ld [hl], c                                    ; $4b3f: $71
    inc l                                         ; $4b40: $2c
    dec sp                                        ; $4b41: $3b
    ld c, a                                       ; $4b42: $4f
    ld e, $d7                                     ; $4b43: $1e $d7
    dec sp                                        ; $4b45: $3b
    ld l, e                                       ; $4b46: $6b
    ld a, [$1b94]                                 ; $4b47: $fa $94 $1b
    nop                                           ; $4b4a: $00
    add c                                         ; $4b4b: $81
    ld l, l                                       ; $4b4c: $6d
    or c                                          ; $4b4d: $b1
    ld de, $b3a9                                  ; $4b4e: $11 $a9 $b3
    jr c, jr_03b_4b01                             ; $4b51: $38 $ae

    inc d                                         ; $4b53: $14
    ld b, d                                       ; $4b54: $42
    cpl                                           ; $4b55: $2f
    sub e                                         ; $4b56: $93
    xor [hl]                                      ; $4b57: $ae
    or b                                          ; $4b58: $b0
    ld sp, hl                                     ; $4b59: $f9
    call c, Call_03b_5997                         ; $4b5a: $dc $97 $59
    ld e, h                                       ; $4b5d: $5c
    jp $0b98                                      ; $4b5e: $c3 $98 $0b


    sbc e                                         ; $4b61: $9b
    ld h, $7c                                     ; $4b62: $26 $7c
    pop bc                                        ; $4b64: $c1
    or a                                          ; $4b65: $b7
    adc $e1                                       ; $4b66: $ce $e1
    cpl                                           ; $4b68: $2f
    ld [hl], h                                    ; $4b69: $74
    sub h                                         ; $4b6a: $94
    ld hl, sp-$55                                 ; $4b6b: $f8 $ab
    cp e                                          ; $4b6d: $bb
    and b                                         ; $4b6e: $a0
    ld h, [hl]                                    ; $4b6f: $66
    ld a, [hl]                                    ; $4b70: $7e
    call nz, Call_000_2351                        ; $4b71: $c4 $51 $23
    rla                                           ; $4b74: $17
    cp [hl]                                       ; $4b75: $be
    or [hl]                                       ; $4b76: $b6
    ld d, d                                       ; $4b77: $52
    ld [hl], d                                    ; $4b78: $72
    ld d, $c7                                     ; $4b79: $16 $c7
    ld b, l                                       ; $4b7b: $45
    xor [hl]                                      ; $4b7c: $ae
    inc d                                         ; $4b7d: $14
    ld d, [hl]                                    ; $4b7e: $56
    ld e, [hl]                                    ; $4b7f: $5e
    cp d                                          ; $4b80: $ba
    ld d, $7c                                     ; $4b81: $16 $7c
    adc l                                         ; $4b83: $8d
    cp a                                          ; $4b84: $bf
    cpl                                           ; $4b85: $2f
    push bc                                       ; $4b86: $c5
    and $06                                       ; $4b87: $e6 $06
    ld bc, $342f                                  ; $4b89: $01 $2f $34
    sbc h                                         ; $4b8c: $9c
    push bc                                       ; $4b8d: $c5
    ld [hl], c                                    ; $4b8e: $71
    add c                                         ; $4b8f: $81
    ld hl, sp+$21                                 ; $4b90: $f8 $21
    ld b, a                                       ; $4b92: $47
    adc l                                         ; $4b93: $8d
    ld e, l                                       ; $4b94: $5d
    inc hl                                        ; $4b95: $23
    ld l, $a6                                     ; $4b96: $2e $a6
    ld c, a                                       ; $4b98: $4f
    sbc l                                         ; $4b99: $9d
    or [hl]                                       ; $4b9a: $b6
    ret c                                         ; $4b9b: $d8

    ld d, d                                       ; $4b9c: $52
    pop hl                                        ; $4b9d: $e1
    dec bc                                        ; $4b9e: $0b
    ld d, e                                       ; $4b9f: $53
    inc l                                         ; $4ba0: $2c
    adc [hl]                                      ; $4ba1: $8e
    db $d3                                        ; $4ba2: $d3
    rst $28                                       ; $4ba3: $ef
    ld [hl], b                                    ; $4ba4: $70
    sbc $16                                       ; $4ba5: $de $16
    dec a                                         ; $4ba7: $3d
    ld b, a                                       ; $4ba8: $47
    adc l                                         ; $4ba9: $8d
    ld e, l                                       ; $4baa: $5d
    cp b                                          ; $4bab: $b8
    ld a, [c]                                     ; $4bac: $f2
    cp d                                          ; $4bad: $ba
    ret nc                                        ; $4bae: $d0

    ld d, c                                       ; $4baf: $51
    ld [c], a                                     ; $4bb0: $e2
    db $eb                                        ; $4bb1: $eb
    ld [$a82e], a                                 ; $4bb2: $ea $2e $a8
    sbc c                                         ; $4bb5: $99
    rst $10                                       ; $4bb6: $d7
    ld a, e                                       ; $4bb7: $7b
    rla                                           ; $4bb8: $17
    db $fd                                        ; $4bb9: $fd
    inc l                                         ; $4bba: $2c
    adc [hl]                                      ; $4bbb: $8e
    xor e                                         ; $4bbc: $ab
    cp e                                          ; $4bbd: $bb
    ld [hl], h                                    ; $4bbe: $74
    ld c, [hl]                                    ; $4bbf: $4e
    ld a, a                                       ; $4bc0: $7f
    call nc, $9f95                                ; $4bc1: $d4 $95 $9f
    rst $20                                       ; $4bc4: $e7
    xor b                                         ; $4bc5: $a8
    sub c                                         ; $4bc6: $91
    dec bc                                        ; $4bc7: $0b
    ld e, a                                       ; $4bc8: $5f
    ld e, e                                       ; $4bc9: $5b

Jump_03b_4bca:
    add hl, hl                                    ; $4bca: $29
    ld a, c                                       ; $4bcb: $79
    inc bc                                        ; $4bcc: $03
    rla                                           ; $4bcd: $17
    db $fd                                        ; $4bce: $fd
    ld c, h                                       ; $4bcf: $4c
    ld a, c                                       ; $4bd0: $79
    push hl                                       ; $4bd1: $e5
    xor h                                         ; $4bd2: $ac
    ld h, e                                       ; $4bd3: $63
    sbc c                                         ; $4bd4: $99
    and a                                         ; $4bd5: $a7
    add [hl]                                      ; $4bd6: $86
    ld l, a                                       ; $4bd7: $6f
    add d                                         ; $4bd8: $82
    add hl, sp                                    ; $4bd9: $39
    rst $08                                       ; $4bda: $cf
    dec b                                         ; $4bdb: $05
    ld [c], a                                     ; $4bdc: $e2
    add a                                         ; $4bdd: $87
    inc e                                         ; $4bde: $1c
    dec [hl]                                      ; $4bdf: $35
    halt                                          ; $4be0: $76
    pop hl                                        ; $4be1: $e1
    sbc $e2                                       ; $4be2: $de $e2
    ld l, h                                       ; $4be4: $6c
    or $9d                                        ; $4be5: $f6 $9d
    rst $28                                       ; $4be7: $ef
    sub a                                         ; $4be8: $97
    rst $30                                       ; $4be9: $f7
    db $ec                                        ; $4bea: $ec
    ld [hl], h                                    ; $4beb: $74
    inc l                                         ; $4bec: $2c
    dec bc                                        ; $4bed: $0b
    dec h                                         ; $4bee: $25

Call_03b_4bef:
    xor e                                         ; $4bef: $ab
    add hl, sp                                    ; $4bf0: $39
    adc e                                         ; $4bf1: $8b
    db $e3                                        ; $4bf2: $e3
    ld [$5d2e], a                                 ; $4bf3: $ea $2e $5d
    db $dd                                        ; $4bf6: $dd
    add sp, $73                                   ; $4bf7: $e8 $73
    cp $6f                                        ; $4bf9: $fe $6f
    nop                                           ; $4bfb: $00
    halt                                          ; $4bfc: $76
    ld h, l                                       ; $4bfd: $65
    sbc [hl]                                      ; $4bfe: $9e
    ld a, [de]                                    ; $4bff: $1a
    cp [hl]                                       ; $4c00: $be
    add hl, bc                                    ; $4c01: $09
    and $3c                                       ; $4c02: $e6 $3c
    rst $10                                       ; $4c04: $d7
    rst $00                                       ; $4c05: $c7
    sbc h                                         ; $4c06: $9c
    sub a                                         ; $4c07: $97
    ld hl, sp-$30                                 ; $4c08: $f8 $d0
    sub a                                         ; $4c0a: $97
    ld [hl-], a                                   ; $4c0b: $32
    ld l, d                                       ; $4c0c: $6a
    db $ec                                        ; $4c0d: $ec
    ld a, [de]                                    ; $4c0e: $1a
    ld [hl], c                                    ; $4c0f: $71
    call nc, $0bf8                                ; $4c10: $d4 $f8 $0b
    bit 4, e                                      ; $4c13: $cb $63
    db $fc                                        ; $4c15: $fc
    ld a, e                                       ; $4c16: $7b
    db $dd                                        ; $4c17: $dd
    ld a, [$4ae6]                                 ; $4c18: $fa $e6 $4a
    ld hl, $a8e4                                  ; $4c1b: $21 $e4 $a8
    adc e                                         ; $4c1e: $8b
    cpl                                           ; $4c1f: $2f
    sbc [hl]                                      ; $4c20: $9e
    ei                                            ; $4c21: $fb
    xor c                                         ; $4c22: $a9
    db $d3                                        ; $4c23: $d3
    sbc c                                         ; $4c24: $99
    ld a, [c]                                     ; $4c25: $f2
    ld c, d                                       ; $4c26: $4a
    db $ed                                        ; $4c27: $ed
    ld bc, $9700                                  ; $4c28: $01 $00 $97
    ld de, $5c67                                  ; $4c2b: $11 $67 $5c
    di                                            ; $4c2e: $f3
    rst $28                                       ; $4c2f: $ef
    di                                            ; $4c30: $f3
    ld e, [hl]                                    ; $4c31: $5e
    xor a                                         ; $4c32: $af
    ld d, l                                       ; $4c33: $55
    ld l, b                                       ; $4c34: $68
    xor b                                         ; $4c35: $a8
    inc hl                                        ; $4c36: $23
    xor [hl]                                      ; $4c37: $ae
    cp h                                          ; $4c38: $bc
    adc $94                                       ; $4c39: $ce $94
    ld d, a                                       ; $4c3b: $57
    ld [$f3ac], a                                 ; $4c3c: $ea $ac $f3
    call nc, Call_03b_4df0                        ; $4c3f: $d4 $f0 $4d
    jr nc, jr_03b_4cb9                            ; $4c42: $30 $75

    sub l                                         ; $4c44: $95
    scf                                           ; $4c45: $37
    ld [hl], $a9                                  ; $4c46: $36 $a9
    ld d, e                                       ; $4c48: $53
    adc [hl]                                      ; $4c49: $8e
    ld l, d                                       ; $4c4a: $6a
    ld [de], a                                    ; $4c4b: $12
    dec a                                         ; $4c4c: $3d
    ld [hl], c                                    ; $4c4d: $71
    ld h, $f5                                     ; $4c4e: $26 $f5
    ld [hl], l                                    ; $4c50: $75

jr_03b_4c51:
    call nc, $c590                                ; $4c51: $d4 $90 $c5
    push af                                       ; $4c54: $f5
    rst $00                                       ; $4c55: $c7
    rst $00                                       ; $4c56: $c7
    ld c, b                                       ; $4c57: $48
    cp l                                          ; $4c58: $bd
    ld bc, $737d                                  ; $4c59: $01 $7d $73
    ld l, d                                       ; $4c5c: $6a
    ld e, e                                       ; $4c5d: $5b
    ld [hl], d                                    ; $4c5e: $72

Jump_03b_4c5f:
    ld [hl], l                                    ; $4c5f: $75
    sub e                                         ; $4c60: $93
    ld e, h                                       ; $4c61: $5c
    ld c, c                                       ; $4c62: $49
    sbc l                                         ; $4c63: $9d
    or b                                          ; $4c64: $b0

jr_03b_4c65:
    ld h, h                                       ; $4c65: $64
    ccf                                           ; $4c66: $3f
    ld [$f73c], a                                 ; $4c67: $ea $3c $f7
    ld b, d                                       ; $4c6a: $42
    db $fc                                        ; $4c6b: $fc
    add l                                         ; $4c6c: $85
    cpl                                           ; $4c6d: $2f
    cp a                                          ; $4c6e: $bf
    ld a, [bc]                                    ; $4c6f: $0a
    ld h, l                                       ; $4c70: $65
    ld d, $57                                     ; $4c71: $16 $57
    ld [hl], l                                    ; $4c73: $75
    and $f5                                       ; $4c74: $e6 $f5
    ld d, a                                       ; $4c76: $57
    ld sp, hl                                     ; $4c77: $f9
    sbc c                                         ; $4c78: $99
    call nz, $8855                                ; $4c79: $c4 $55 $88
    pop af                                        ; $4c7c: $f1
    ei                                            ; $4c7d: $fb
    dec a                                         ; $4c7e: $3d
    ld a, h                                       ; $4c7f: $7c
    pop af                                        ; $4c80: $f1
    db $eb                                        ; $4c81: $eb
    ld c, [hl]                                    ; $4c82: $4e
    xor e                                         ; $4c83: $ab
    adc d                                         ; $4c84: $8a
    dec hl                                        ; $4c85: $2b
    cp c                                          ; $4c86: $b9
    ldh [rSCX], a                                 ; $4c87: $e0 $43
    cp c                                          ; $4c89: $b9
    jr nc, jr_03b_4c51                            ; $4c8a: $30 $c5

    ld [c], a                                     ; $4c8c: $e2
    jr c, jr_03b_4c65                             ; $4c8d: $38 $d6

jr_03b_4c8f:
    dec l                                         ; $4c8f: $2d
    ld [de], a                                    ; $4c90: $12
    rst $20                                       ; $4c91: $e7
    xor c                                         ; $4c92: $a9
    sub c                                         ; $4c93: $91
    and l                                         ; $4c94: $a5
    and h                                         ; $4c95: $a4

jr_03b_4c96:
    sbc $00                                       ; $4c96: $de $00
    cp l                                          ; $4c98: $bd
    ld a, [bc]                                    ; $4c99: $0a
    sub h                                         ; $4c9a: $94
    sub e                                         ; $4c9b: $93
    sub a                                         ; $4c9c: $97
    ld e, h                                       ; $4c9d: $5c
    ld hl, sp-$06                                 ; $4c9e: $f8 $fa
    inc hl                                        ; $4ca0: $23
    adc [hl]                                      ; $4ca1: $8e
    ld h, l                                       ; $4ca2: $65
    cpl                                           ; $4ca3: $2f
    push af                                       ; $4ca4: $f5
    ld c, e                                       ; $4ca5: $4b
    bit 7, c                                      ; $4ca6: $cb $79
    adc [hl]                                      ; $4ca8: $8e
    ld l, d                                       ; $4ca9: $6a
    or d                                          ; $4caa: $b2
    di                                            ; $4cab: $f3
    ld a, [hl-]                                   ; $4cac: $3a
    rst $08                                       ; $4cad: $cf
    sbc l                                         ; $4cae: $9d
    db $db                                        ; $4caf: $db
    adc d                                         ; $4cb0: $8a

Call_03b_4cb1:
    add hl, bc                                    ; $4cb1: $09
    sbc $bb                                       ; $4cb2: $de $bb
    adc b                                         ; $4cb4: $88
    xor e                                         ; $4cb5: $ab
    jr nc, jr_03b_4cff                            ; $4cb6: $30 $47

    adc h                                         ; $4cb8: $8c

jr_03b_4cb9:
    ld a, [c]                                     ; $4cb9: $f2
    ld [bc], a                                    ; $4cba: $02
    ld e, a                                       ; $4cbb: $5f
    ld c, b                                       ; $4cbc: $48
    ret                                           ; $4cbd: $c9


    ld h, c                                       ; $4cbe: $61
    ld c, [hl]                                    ; $4cbf: $4e
    cp a                                          ; $4cc0: $bf
    inc [hl]                                      ; $4cc1: $34
    cp c                                          ; $4cc2: $b9
    ld bc, $bd17                                  ; $4cc3: $01 $17 $bd
    ld c, $ea                                     ; $4cc6: $0e $ea
    ld [de], a                                    ; $4cc8: $12
    jr z, jr_03b_4c96                             ; $4cc9: $28 $cb

    db $eb                                        ; $4ccb: $eb
    inc a                                         ; $4ccc: $3c
    ld d, a                                       ; $4ccd: $57
    ld a, [hl]                                    ; $4cce: $7e
    ld a, [$e7e5]                                 ; $4ccf: $fa $e5 $e7
    cp c                                          ; $4cd2: $b9
    ld d, b                                       ; $4cd3: $50
    or d                                          ; $4cd4: $b2
    sbc d                                         ; $4cd5: $9a
    sbc d                                         ; $4cd6: $9a
    ld b, d                                       ; $4cd7: $42
    ld e, l                                       ; $4cd8: $5d
    and l                                         ; $4cd9: $a5
    ld b, c                                       ; $4cda: $41
    xor l                                         ; $4cdb: $ad
    inc a                                         ; $4cdc: $3c
    xor [hl]                                      ; $4cdd: $ae

jr_03b_4cde:
    db $fc                                        ; $4cde: $fc
    ld b, d                                       ; $4cdf: $42
    ld b, a                                       ; $4ce0: $47
    adc c                                         ; $4ce1: $89
    cp a                                          ; $4ce2: $bf
    sbc b                                         ; $4ce3: $98
    ld a, $c7                                     ; $4ce4: $3e $c7
    ld [hl-], a                                   ; $4ce6: $32
    ld l, a                                       ; $4ce7: $6f
    di                                            ; $4ce8: $f3
    ldh a, [$85]                                  ; $4ce9: $f0 $85

Jump_03b_4ceb:
    sub h                                         ; $4ceb: $94
    sbc h                                         ; $4cec: $9c
    ld [hl], a                                    ; $4ced: $77
    sub h                                         ; $4cee: $94
    sbc d                                         ; $4cef: $9a
    cp b                                          ; $4cf0: $b8
    jr nc, jr_03b_4d58                            ; $4cf1: $30 $65

    push hl                                       ; $4cf3: $e5
    add a                                         ; $4cf4: $87
    ld l, c                                       ; $4cf5: $69
    add d                                         ; $4cf6: $82
    cp h                                          ; $4cf7: $bc
    ld bc, $9c81                                  ; $4cf8: $01 $81 $9c
    cp d                                          ; $4cfb: $ba
    jr nc, jr_03b_4c8f                            ; $4cfc: $30 $91

    or e                                          ; $4cfe: $b3

jr_03b_4cff:
    jr c, @+$30                                   ; $4cff: $38 $2e

    ld hl, sp-$2a                                 ; $4d01: $f8 $d6
    add hl, sp                                    ; $4d03: $39
    db $fc                                        ; $4d04: $fc
    ld d, c                                       ; $4d05: $51
    call $ca17                                    ; $4d06: $cd $17 $ca
    ld c, a                                       ; $4d09: $4f
    ld l, c                                       ; $4d0a: $69
    add h                                         ; $4d0b: $84
    pop af                                        ; $4d0c: $f1
    ld h, a                                       ; $4d0d: $67
    ld [hl], c                                    ; $4d0e: $71
    ld e, h                                       ; $4d0f: $5c
    add hl, hl                                    ; $4d10: $29
    xor h                                         ; $4d11: $ac
    db $fc                                        ; $4d12: $fc
    ld a, [hl]                                    ; $4d13: $7e
    push hl                                       ; $4d14: $e5
    ld h, a                                       ; $4d15: $67
    call c, $fc4b                                 ; $4d16: $dc $4b $fc
    add l                                         ; $4d19: $85
    push hl                                       ; $4d1a: $e5
    ld sp, $88fe                                  ; $4d1b: $31 $fe $88
    and e                                         ; $4d1e: $a3
    ld b, [hl]                                    ; $4d1f: $46
    ld l, $7c                                     ; $4d20: $2e $7c
    ld l, l                                       ; $4d22: $6d
    and l                                         ; $4d23: $a5
    inc h                                         ; $4d24: $24
    ld a, h                                       ; $4d25: $7c
    ld hl, $8725                                  ; $4d26: $21 $25 $87
    add hl, sp                                    ; $4d29: $39

Jump_03b_4d2a:
    xor l                                         ; $4d2a: $ad
    cp d                                          ; $4d2b: $ba
    sub d                                         ; $4d2c: $92
    or e                                          ; $4d2d: $b3
    jr c, jr_03b_4cde                             ; $4d2e: $38 $ae

    db $fc                                        ; $4d30: $fc
    xor b                                         ; $4d31: $a8
    ld h, $d1                                     ; $4d32: $26 $d1
    di                                            ; $4d34: $f3
    ld b, $bd                                     ; $4d35: $06 $bd
    ld e, l                                       ; $4d37: $5d
    di                                            ; $4d38: $f3
    rst $28                                       ; $4d39: $ef
    ld [hl], e                                    ; $4d3a: $73
    jp c, Jump_03b_7956                           ; $4d3b: $da $56 $79

    db $dd                                        ; $4d3e: $dd
    sub a                                         ; $4d3f: $97
    ld a, c                                       ; $4d40: $79
    ld l, d                                       ; $4d41: $6a
    ld hl, sp+$26                                 ; $4d42: $f8 $26
    sbc b                                         ; $4d44: $98
    di                                            ; $4d45: $f3
    call c, $a5b9                                 ; $4d46: $dc $b9 $a5
    ld b, l                                       ; $4d49: $45
    sbc b                                         ; $4d4a: $98
    call Call_000_38c0                            ; $4d4b: $cd $c0 $38
    ld l, l                                       ; $4d4e: $6d
    db $fd                                        ; $4d4f: $fd
    sbc h                                         ; $4d50: $9c
    add $dc                                       ; $4d51: $c6 $dc
    sub a                                         ; $4d53: $97
    sub l                                         ; $4d54: $95
    rst $30                                       ; $4d55: $f7
    add hl, sp                                    ; $4d56: $39
    rst $08                                       ; $4d57: $cf

jr_03b_4d58:
    xor c                                         ; $4d58: $a9
    ld e, e                                       ; $4d59: $5b
    add sp, $28                                   ; $4d5a: $e8 $28
    pop af                                        ; $4d5c: $f1
    rla                                           ; $4d5d: $17
    ld a, h                                       ; $4d5e: $7c
    db $eb                                        ; $4d5f: $eb
    inc e                                         ; $4d60: $1c
    cp $e4                                        ; $4d61: $fe $e4
    db $eb                                        ; $4d63: $eb
    ldh a, [$67]                                  ; $4d64: $f0 $67
    ld [hl], c                                    ; $4d66: $71
    sbc h                                         ; $4d67: $9c
    ld a, [hl]                                    ; $4d68: $7e
    pop hl                                        ; $4d69: $e1
    inc a                                         ; $4d6a: $3c
    sla d                                         ; $4d6b: $cb $22
    push bc                                       ; $4d6d: $c5
    ld d, b                                       ; $4d6e: $50
    ld d, $36                                     ; $4d6f: $16 $36
    call $001b                                    ; $4d71: $cd $1b $00
    rst $20                                       ; $4d74: $e7
    ld [hl], b                                    ; $4d75: $70
    ld e, a                                       ; $4d76: $5f
    jr nz, @-$77                                  ; $4d77: $20 $87

    cp a                                          ; $4d79: $bf
    ld a, [$f291]                                 ; $4d7a: $fa $91 $f2
    ld d, e                                       ; $4d7d: $53
    ld c, [hl]                                    ; $4d7e: $4e

Call_03b_4d7f:
    ld e, l                                       ; $4d7f: $5d
    sbc b                                         ; $4d80: $98
    ret z                                         ; $4d81: $c8

    ld e, c                                       ; $4d82: $59
    inc e                                         ; $4d83: $1c
    rst $20                                       ; $4d84: $e7
    ldh a, [$e7]                                  ; $4d85: $f0 $e7
    add hl, sp                                    ; $4d87: $39
    ld [$a8eb], a                                 ; $4d88: $ea $eb $a8
    pop af                                        ; $4d8b: $f1
    and e                                         ; $4d8c: $a3
    ld a, e                                       ; $4d8d: $7b
    dec e                                         ; $4d8e: $1d
    inc h                                         ; $4d8f: $24
    xor l                                         ; $4d90: $ad
    ld a, [hl-]                                   ; $4d91: $3a
    ld d, a                                       ; $4d92: $57
    ld a, [bc]                                    ; $4d93: $0a
    dec hl                                        ; $4d94: $2b
    cp a                                          ; $4d95: $bf
    ld e, a                                       ; $4d96: $5f
    ld b, [hl]                                    ; $4d97: $46
    ret                                           ; $4d98: $c9


    add l                                         ; $4d99: $85
    xor a                                         ; $4d9a: $af
    xor l                                         ; $4d9b: $ad
    sub h                                         ; $4d9c: $94
    cp h                                          ; $4d9d: $bc
    ld bc, $6397                                  ; $4d9e: $01 $97 $63
    ld [$573c], a                                 ; $4da1: $ea $3c $57
    ld d, d                                       ; $4da4: $52
    rlca                                          ; $4da5: $07
    ld c, c                                       ; $4da6: $49
    xor e                                         ; $4da7: $ab
    ld c, [hl]                                    ; $4da8: $4e
    ld e, l                                       ; $4da9: $5d
    db $e4                                        ; $4daa: $e4
    ld b, d                                       ; $4dab: $42
    ld b, a                                       ; $4dac: $47
    rst $08                                       ; $4dad: $cf
    sub l                                         ; $4dae: $95
    jp nz, $cbca                                  ; $4daf: $c2 $ca $cb

    ld a, [hl]                                    ; $4db2: $7e
    add hl, de                                    ; $4db3: $19
    push hl                                       ; $4db4: $e5
    rla                                           ; $4db5: $17
    sub [hl]                                      ; $4db6: $96
    rst $00                                       ; $4db7: $c7
    ld hl, sp-$09                                 ; $4db8: $f8 $f7
    ld a, l                                       ; $4dba: $7d
    ld l, e                                       ; $4dbb: $6b
    jp Jump_03b_59d5                              ; $4dbc: $c3 $d5 $59


    and c                                         ; $4dbf: $a1
    ld b, h                                       ; $4dc0: $44
    ld c, [hl]                                    ; $4dc1: $4e
    sbc e                                         ; $4dc2: $9b
    push bc                                       ; $4dc3: $c5
    dec [hl]                                      ; $4dc4: $35
    jp z, Jump_000_00df                           ; $4dc5: $ca $df $00

    ld a, l                                       ; $4dc8: $7d
    dec e                                         ; $4dc9: $1d
    sbc d                                         ; $4dca: $9a
    ld e, a                                       ; $4dcb: $5f
    sub b                                         ; $4dcc: $90
    xor e                                         ; $4dcd: $ab
    inc [hl]                                      ; $4dce: $34
    adc l                                         ; $4dcf: $8d
    cp c                                          ; $4dd0: $b9
    rra                                           ; $4dd1: $1f
    cp [hl]                                       ; $4dd2: $be
    ld l, a                                       ; $4dd3: $6f
    inc e                                         ; $4dd4: $1c

Call_03b_4dd5:
    ld sp, $cbca                                  ; $4dd5: $31 $ca $cb
    jp nz, Jump_03b_5194                          ; $4dd8: $c2 $94 $51

    ld a, a                                       ; $4ddb: $7f
    and c                                         ; $4ddc: $a1
    and e                                         ; $4ddd: $a3
    call nz, $a19f                                ; $4dde: $c4 $9f $a1
    ret z                                         ; $4de1: $c8

    ei                                            ; $4de2: $fb
    rst $18                                       ; $4de3: $df
    sub a                                         ; $4de4: $97
    sub l                                         ; $4de5: $95
    rst $30                                       ; $4de6: $f7
    add hl, sp                                    ; $4de7: $39
    rst $08                                       ; $4de8: $cf
    ld [hl-], a                                   ; $4de9: $32
    inc de                                        ; $4dea: $13
    ld a, h                                       ; $4deb: $7c
    ld sp, $0379                                  ; $4dec: $31 $79 $03
    ld a, l                                       ; $4def: $7d

Call_03b_4df0:
    ld [hl], e                                    ; $4df0: $73
    call nz, $d428                                ; $4df1: $c4 $28 $d4
    ld de, $f0e7                                  ; $4df4: $11 $e7 $f0
    ld h, a                                       ; $4df7: $67
    jp z, Jump_03b_672b                           ; $4df8: $ca $2b $67

    call c, $cfa3                                 ; $4dfb: $dc $a3 $cf
    ld e, c                                       ; $4dfe: $59
    ld a, a                                       ; $4dff: $7f
    pop bc                                        ; $4e00: $c1
    or a                                          ; $4e01: $b7
    cp $58                                        ; $4e02: $fe $58
    add a                                         ; $4e04: $87
    db $ec                                        ; $4e05: $ec
    rst $38                                       ; $4e06: $ff
    ld a, $ef                                     ; $4e07: $3e $ef
    ld e, l                                       ; $4e09: $5d
    db $f4                                        ; $4e0a: $f4
    xor e                                         ; $4e0b: $ab
    rst $18                                       ; $4e0c: $df
    sbc d                                         ; $4e0d: $9a
    ld h, d                                       ; $4e0e: $62
    di                                            ; $4e0f: $f3
    di                                            ; $4e10: $f3
    ld e, h                                       ; $4e11: $5c
    ld c, c                                       ; $4e12: $49
    ld e, l                                       ; $4e13: $5d
    jr z, jr_03b_4e6f                             ; $4e14: $28 $59

    ld c, l                                       ; $4e16: $4d
    ld c, l                                       ; $4e17: $4d
    and c                                         ; $4e18: $a1
    ld l, $72                                     ; $4e19: $2e $72
    ld d, $d7                                     ; $4e1b: $16 $d7
    ld [c], a                                     ; $4e1d: $e2
    ld c, e                                       ; $4e1e: $4b
    rla                                           ; $4e1f: $17
    ld l, $c0                                     ; $4e20: $2e $c0
    ld h, c                                       ; $4e22: $61
    ld c, h                                       ; $4e23: $4c
    add l                                         ; $4e24: $85
    ld c, a                                       ; $4e25: $4f
    db $db                                        ; $4e26: $db
    ld c, d                                       ; $4e27: $4a
    ld [$461a], a                                 ; $4e28: $ea $1a $46
    adc d                                         ; $4e2b: $8a
    cp b                                          ; $4e2c: $b8
    ld a, [hl-]                                   ; $4e2d: $3a
    and h                                         ; $4e2e: $a4
    sbc $00                                       ; $4e2f: $de $00
    ld bc, $bf2f                                  ; $4e31: $01 $2f $bf
    adc $f7                                       ; $4e34: $ce $f7
    ld a, e                                       ; $4e36: $7b
    sbc c                                         ; $4e37: $99
    ld [hl], h                                    ; $4e38: $74
    add l                                         ; $4e39: $85
    call Call_03b_4d7f                            ; $4e3a: $cd $7f $4d
    adc h                                         ; $4e3d: $8c
    call c, $2997                                 ; $4e3e: $dc $97 $29
    ld hl, $3e87                                  ; $4e41: $21 $87 $3e
    rla                                           ; $4e44: $17
    ld [hl], $4d                                  ; $4e45: $36 $4d
    ld hl, sp-$7e                                 ; $4e47: $f8 $82
    rst $18                                       ; $4e49: $df
    cp a                                          ; $4e4a: $bf
    db $e4                                        ; $4e4b: $e4
    jp nz, $9594                                  ; $4e4c: $c2 $94 $95

    sbc a                                         ; $4e4f: $9f
    ld a, h                                       ; $4e50: $7c
    dec e                                         ; $4e51: $1d
    cp $d2                                        ; $4e52: $fe $d2
    cp b                                          ; $4e54: $b8
    ld [de], a                                    ; $4e55: $12
    ld a, a                                       ; $4e56: $7f
    ld e, a                                       ; $4e57: $5f
    ld d, [hl]                                    ; $4e58: $56
    db $dd                                        ; $4e59: $dd
    ldh a, [$cb]                                  ; $4e5a: $f0 $cb
    inc a                                         ; $4e5c: $3c
    set 0, d                                      ; $4e5d: $cb $c2
    rst $10                                       ; $4e5f: $d7
    ld d, [hl]                                    ; $4e60: $56
    ld c, d                                       ; $4e61: $4a
    sbc $00                                       ; $4e62: $de $00
    sub a                                         ; $4e64: $97
    ld de, $5c67                                  ; $4e65: $11 $67 $5c
    di                                            ; $4e68: $f3
    rst $28                                       ; $4e69: $ef
    ld [hl], e                                    ; $4e6a: $73
    call nz, $8cb1                                ; $4e6b: $c4 $b1 $8c
    or b                                          ; $4e6e: $b0

jr_03b_4e6f:
    and d                                         ; $4e6f: $a2
    or b                                          ; $4e70: $b0
    adc $61                                       ; $4e71: $ce $61
    ld c, d                                       ; $4e73: $4a
    db $e4                                        ; $4e74: $e4
    inc a                                         ; $4e75: $3c
    ld b, a                                       ; $4e76: $47
    adc l                                         ; $4e77: $8d
    ld e, h                                       ; $4e78: $5c

Call_03b_4e79:
    ld hl, sp-$26                                 ; $4e79: $f8 $da
    ld c, d                                       ; $4e7b: $4a
    ret                                           ; $4e7c: $c9


    ld a, e                                       ; $4e7d: $7b
    ld bc, $a5e9                                  ; $4e7e: $01 $e9 $a5
    ld c, e                                       ; $4e81: $4b
    rst $30                                       ; $4e82: $f7
    and $3b                                       ; $4e83: $e6 $3b
    cpl                                           ; $4e85: $2f
    inc hl                                        ; $4e86: $23
    ld l, $a3                                     ; $4e87: $2e $a3
    db $fc                                        ; $4e89: $fc
    jp nz, $18f2                                  ; $4e8a: $c2 $f2 $18

    rra                                           ; $4e8d: $1f
    ld a, $6d                                     ; $4e8e: $3e $6d
    jp $dd5c                                      ; $4e90: $c3 $5c $dd


    db $e4                                        ; $4e93: $e4
    ld [hl], l                                    ; $4e94: $75
    sbc $16                                       ; $4e95: $de $16
    dec a                                         ; $4e97: $3d
    rla                                           ; $4e98: $17
    ld [hl], $7d                                  ; $4e99: $36 $7d
    cp l                                          ; $4e9b: $bd
    ld bc, $9a7d                                  ; $4e9c: $01 $7d $9a
    db $fc                                        ; $4e9f: $fc
    adc b                                         ; $4ea0: $88
    dec hl                                        ; $4ea1: $2b
    xor c                                         ; $4ea2: $a9
    inc de                                        ; $4ea3: $13
    sbc d                                         ; $4ea4: $9a
    xor h                                         ; $4ea5: $ac
    ret nc                                        ; $4ea6: $d0

    and h                                         ; $4ea7: $a4
    ld l, $4c                                     ; $4ea8: $2e $4c
    ld e, c                                       ; $4eaa: $59
    ld c, h                                       ; $4eab: $4c
    sbc a                                         ; $4eac: $9f
    ld h, e                                       ; $4ead: $63
    sbc c                                         ; $4eae: $99
    ret                                           ; $4eaf: $c9


    ld b, d                                       ; $4eb0: $42
    xor b                                         ; $4eb1: $a8
    push hl                                       ; $4eb2: $e5
    cp l                                          ; $4eb3: $bd
    adc e                                         ; $4eb4: $8b
    ld d, d                                       ; $4eb5: $52
    rst $30                                       ; $4eb6: $f7
    push bc                                       ; $4eb7: $c5
    push de                                       ; $4eb8: $d5
    sbc b                                         ; $4eb9: $98
    ld a, [hl-]                                   ; $4eba: $3a
    xor d                                         ; $4ebb: $aa
    ld c, c                                       ; $4ebc: $49
    db $f4                                        ; $4ebd: $f4
    call nz, $d499                                ; $4ebe: $c4 $99 $d4
    rst $10                                       ; $4ec1: $d7
    ld de, $52c7                                  ; $4ec2: $11 $c7 $52
    ld d, d                                       ; $4ec5: $52
    rst $20                                       ; $4ec6: $e7
    xor c                                         ; $4ec7: $a9
    sbc [hl]                                      ; $4ec8: $9e
    or e                                          ; $4ec9: $b3
    jr c, @-$30                                   ; $4eca: $38 $ce

    ld a, $21                                     ; $4ecc: $3e $21
    sbc b                                         ; $4ece: $98
    cpl                                           ; $4ecf: $2f
    ld d, c                                       ; $4ed0: $51
    ld b, a                                       ; $4ed1: $47
    ld e, b                                       ; $4ed2: $58
    ld c, l                                       ; $4ed3: $4d

jr_03b_4ed4:
    inc hl                                        ; $4ed4: $23
    ld l, a                                       ; $4ed5: $6f
    nop                                           ; $4ed6: $00
    ld a, l                                       ; $4ed7: $7d
    cp b                                          ; $4ed8: $b8
    ld d, b                                       ; $4ed9: $50
    ld [$8c39], sp                                ; $4eda: $08 $39 $8c
    add hl, sp                                    ; $4edd: $39
    adc e                                         ; $4ede: $8b
    db $e3                                        ; $4edf: $e3
    add d                                         ; $4ee0: $82
    rst $18                                       ; $4ee1: $df
    sub c                                         ; $4ee2: $91
    xor [hl]                                      ; $4ee3: $ae
    ld de, $e547                                  ; $4ee4: $11 $47 $e5
    jp nz, $56d7                                  ; $4ee7: $c2 $d7 $56

    ld c, d                                       ; $4eea: $4a
    xor [hl]                                      ; $4eeb: $ae
    ld a, h                                       ; $4eec: $7c
    and h                                         ; $4eed: $a4
    ld a, h                                       ; $4eee: $7c
    add c                                         ; $4eef: $81
    cpl                                           ; $4ef0: $2f
    ld c, h                                       ; $4ef1: $4c
    add hl, de                                    ; $4ef2: $19
    sra h                                         ; $4ef3: $cb $2c
    adc [hl]                                      ; $4ef5: $8e
    dec sp                                        ; $4ef6: $3b
    rst $00                                       ; $4ef7: $c7
    push de                                       ; $4ef8: $d5
    sbc l                                         ; $4ef9: $9d
    ld b, d                                       ; $4efa: $42
    sbc a                                         ; $4efb: $9f
    jp nz, $ea61                                  ; $4efc: $c2 $61 $ea

    jp nz, $9be6                                  ; $4eff: $c2 $e6 $9b

    db $ed                                        ; $4f02: $ed
    inc l                                         ; $4f03: $2c
    adc [hl]                                      ; $4f04: $8e
    jp $f85c                                      ; $4f05: $c3 $5c $f8


    jp c, Jump_03b_5f25                           ; $4f08: $da $25 $5f

    and a                                         ; $4f0b: $a7
    ld [bc], a                                    ; $4f0c: $02
    sub a                                         ; $4f0d: $97
    cp b                                          ; $4f0e: $b8
    ld h, $c2                                     ; $4f0f: $26 $c2
    ld d, d                                       ; $4f11: $52
    or $26                                        ; $4f12: $f6 $26
    ld e, $f0                                     ; $4f14: $1e $f0
    inc sp                                        ; $4f16: $33
    ld e, c                                       ; $4f17: $59
    rst $20                                       ; $4f18: $e7
    or h                                          ; $4f19: $b4
    dec l                                         ; $4f1a: $2d
    cp d                                          ; $4f1b: $ba
    ld c, d                                       ; $4f1c: $4a
    and e                                         ; $4f1d: $a3
    db $fc                                        ; $4f1e: $fc
    ld [$9f46], a                                 ; $4f1f: $ea $46 $9f
    di                                            ; $4f22: $f3
    ld e, h                                       ; $4f23: $5c
    ld c, h                                       ; $4f24: $4c
    sbc a                                         ; $4f25: $9f
    rst $30                                       ; $4f26: $f7
    ld [bc], a                                    ; $4f27: $02
    jr z, jr_03b_4f63                             ; $4f28: $28 $39

    add a                                         ; $4f2a: $87
    cp a                                          ; $4f2b: $bf
    ld a, [bc]                                    ; $4f2c: $0a
    ei                                            ; $4f2d: $fb
    adc a                                         ; $4f2e: $8f
    ld a, [de]                                    ; $4f2f: $1a
    ld e, l                                       ; $4f30: $5d
    add l                                         ; $4f31: $85
    inc hl                                        ; $4f32: $23
    ld c, [hl]                                    ; $4f33: $4e
    db $dd                                        ; $4f34: $dd
    inc a                                         ; $4f35: $3c
    dec [hl]                                      ; $4f36: $35
    ld a, h                                       ; $4f37: $7c
    inc de                                        ; $4f38: $13
    call z, Call_03b_5759                         ; $4f39: $cc $59 $57
    ld [hl], e                                    ; $4f3c: $73
    xor a                                         ; $4f3d: $af
    ld c, [hl]                                    ; $4f3e: $4e
    and e                                         ; $4f3f: $a3
    db $ed                                        ; $4f40: $ed
    dec c                                         ; $4f41: $0d
    nop                                           ; $4f42: $00
    db $dd                                        ; $4f43: $dd
    db $ed                                        ; $4f44: $ed
    ld e, a                                       ; $4f45: $5f
    ld b, a                                       ; $4f46: $47
    adc l                                         ; $4f47: $8d
    rst $28                                       ; $4f48: $ef
    ld [hl], e                                    ; $4f49: $73
    ld e, a                                       ; $4f4a: $5f
    jr nz, jr_03b_4ed4                            ; $4f4b: $20 $87

    cp a                                          ; $4f4d: $bf
    ld a, [bc]                                    ; $4f4e: $0a
    ei                                            ; $4f4f: $fb
    adc a                                         ; $4f50: $8f
    jr c, @-$68                                   ; $4f51: $38 $96

    dec b                                         ; $4f53: $05
    ld a, [hl]                                    ; $4f54: $7e
    or c                                          ; $4f55: $b1
    push bc                                       ; $4f56: $c5
    ld a, c                                       ; $4f57: $79
    xor [hl]                                      ; $4f58: $ae
    and h                                         ; $4f59: $a4
    xor $32                                       ; $4f5a: $ee $32
    ret                                           ; $4f5c: $c9


    ld l, d                                       ; $4f5d: $6a
    and [hl]                                      ; $4f5e: $a6
    or $5c                                        ; $4f5f: $f6 $5c
    ld b, b                                       ; $4f61: $40
    ld a, d                                       ; $4f62: $7a

jr_03b_4f63:
    or c                                          ; $4f63: $b1
    ld sp, hl                                     ; $4f64: $f9
    cp l                                          ; $4f65: $bd
    ld [de], a                                    ; $4f66: $12
    ld [hl], d                                    ; $4f67: $72
    ld a, [c]                                     ; $4f68: $f2
    ld [hl-], a                                   ; $4f69: $32
    adc e                                         ; $4f6a: $8b
    db $e3                                        ; $4f6b: $e3
    jp z, Jump_03b_5eeb                           ; $4f6c: $ca $eb $5e

    ld [$4ef7], a                                 ; $4f6f: $ea $f7 $4e
    ld e, [hl]                                    ; $4f72: $5e
    and a                                         ; $4f73: $a7
    ld e, h                                       ; $4f74: $5c
    db $ed                                        ; $4f75: $ed
    ld e, b                                       ; $4f76: $58
    ld hl, $b8ce                                  ; $4f77: $21 $ce $b8
    ld b, a                                       ; $4f7a: $47
    sbc a                                         ; $4f7b: $9f
    jp $dd5c                                      ; $4f7c: $c3 $5c $dd


    db $e4                                        ; $4f7f: $e4
    push af                                       ; $4f80: $f5
    ld b, $f6                                     ; $4f81: $06 $f6
    ld l, a                                       ; $4f83: $6f
    sbc l                                         ; $4f84: $9d
    jp $fc7d                                      ; $4f85: $c3 $7d $fc


    ld a, [hl]                                    ; $4f88: $7e
    cp c                                          ; $4f89: $b9
    ldh a, [$e5]                                  ; $4f8a: $f0 $e5
    ld d, a                                       ; $4f8c: $57
    ld a, [bc]                                    ; $4f8d: $0a
    and c                                         ; $4f8e: $a1
    sub a                                         ; $4f8f: $97
    db $fd                                        ; $4f90: $fd
    jp z, $ab4f                                   ; $4f91: $ca $4f $ab

    add [hl]                                      ; $4f94: $86
    or c                                          ; $4f95: $b1
    push de                                       ; $4f96: $d5
    cp a                                          ; $4f97: $bf
    or b                                          ; $4f98: $b0
    inc a                                         ; $4f99: $3c
    add $df                                       ; $4f9a: $c6 $df
    sub a                                         ; $4f9c: $97
    ld d, l                                       ; $4f9d: $55
    scf                                           ; $4f9e: $37
    db $fc                                        ; $4f9f: $fc
    ld [hl-], a                                   ; $4fa0: $32
    rst $08                                       ; $4fa1: $cf
    ld d, c                                       ; $4fa2: $51
    inc hl                                        ; $4fa3: $23
    rla                                           ; $4fa4: $17
    cp [hl]                                       ; $4fa5: $be
    or [hl]                                       ; $4fa6: $b6
    ld d, d                                       ; $4fa7: $52
    ld a, [c]                                     ; $4fa8: $f2
    ld b, $17                                     ; $4fa9: $06 $17
    db $fd                                        ; $4fab: $fd

jr_03b_4fac:
    xor d                                         ; $4fac: $aa
    ld d, e                                       ; $4fad: $53
    ld [$dd5f], a                                 ; $4fae: $ea $5f $dd
    and l                                         ; $4fb1: $a5
    sub e                                         ; $4fb2: $93
    xor [hl]                                      ; $4fb3: $ae
    or b                                          ; $4fb4: $b0
    ld sp, hl                                     ; $4fb5: $f9
    sbc a                                         ; $4fb6: $9f
    rst $20                                       ; $4fb7: $e7
    ld c, d                                       ; $4fb8: $4a
    ld hl, $b2f4                                  ; $4fb9: $21 $f4 $b2
    rst $18                                       ; $4fbc: $df
    ld a, c                                       ; $4fbd: $79
    ld h, d                                       ; $4fbe: $62
    xor l                                         ; $4fbf: $ad
    xor [hl]                                      ; $4fc0: $ae
    ld l, [hl]                                    ; $4fc1: $6e
    add sp, $53                                   ; $4fc2: $e8 $53
    and $a9                                       ; $4fc4: $e6 $a9
    sbc [hl]                                      ; $4fc6: $9e
    ld a, e                                       ; $4fc7: $7b
    adc e                                         ; $4fc8: $8b
    or e                                          ; $4fc9: $b3
    add hl, de                                    ; $4fca: $19
    ld [hl], l                                    ; $4fcb: $75
    cp a                                          ; $4fcc: $bf
    jr z, jr_03b_502e                             ; $4fcd: $28 $5f

    xor c                                         ; $4fcf: $a9
    xor d                                         ; $4fd0: $aa
    di                                            ; $4fd1: $f3
    ld e, h                                       ; $4fd2: $5c
    ld sp, hl                                     ; $4fd3: $f9
    add l                                         ; $4fd4: $85
    adc [hl]                                      ; $4fd5: $8e
    ld [de], a                                    ; $4fd6: $12
    ld a, a                                       ; $4fd7: $7f
    ld [hl], l                                    ; $4fd8: $75
    rla                                           ; $4fd9: $17
    call nc, $efcc                                ; $4fda: $d4 $cc $ef
    res 5, d                                      ; $4fdd: $cb $aa
    dec de                                        ; $4fdf: $1b
    ld a, [hl]                                    ; $4fe0: $7e
    sbc c                                         ; $4fe1: $99
    ld h, a                                       ; $4fe2: $67
    ld e, c                                       ; $4fe3: $59
    ld hl, sp-$26                                 ; $4fe4: $f8 $da
    ld c, d                                       ; $4fe6: $4a
    ret                                           ; $4fe7: $c9


    dec de                                        ; $4fe8: $1b
    nop                                           ; $4fe9: $00
    or $5c                                        ; $4fea: $f6 $5c
    jp c, $9cf8                                   ; $4fec: $da $f8 $9c

    push bc                                       ; $4fef: $c5
    ld [hl], c                                    ; $4ff0: $71
    pop bc                                        ; $4ff1: $c1
    or a                                          ; $4ff2: $b7
    adc $e1                                       ; $4ff3: $ce $e1
    ld a, $7e                                     ; $4ff5: $3e $7e
    cp a                                          ; $4ff7: $bf
    ld e, h                                       ; $4ff8: $5c
    ldh a, [$35]                                  ; $4ff9: $f0 $35
    cp $ca                                        ; $4ffb: $fe $ca
    ld c, a                                       ; $4ffd: $4f
    add hl, bc                                    ; $4ffe: $09
    dec hl                                        ; $4fff: $2b
    cp $c2                                        ; $5000: $fe $c2

jr_03b_5002:
    ld a, [c]                                     ; $5002: $f2
    jr jr_03b_5084                                ; $5003: $18 $7f

    call nz, $5f95                                ; $5005: $c4 $95 $5f
    ld hl, sp+$12                                 ; $5008: $f8 $12
    add hl, sp                                    ; $500a: $39
    dec sp                                        ; $500b: $3b
    adc l                                         ; $500c: $8d
    sbc h                                         ; $500d: $9c
    ld h, a                                       ; $500e: $67
    ld e, c                                       ; $500f: $59
    ld hl, sp-$26                                 ; $5010: $f8 $da
    ld c, d                                       ; $5012: $4a
    ret                                           ; $5013: $c9


    dec de                                        ; $5014: $1b
    nop                                           ; $5015: $00
    add c                                         ; $5016: $81
    sbc h                                         ; $5017: $9c
    cp d                                          ; $5018: $ba
    jr nc, jr_03b_4fac                            ; $5019: $30 $91

    or e                                          ; $501b: $b3
    jr c, jr_03b_4fac                             ; $501c: $38 $8e

    ld h, l                                       ; $501e: $65
    call nc, $fd90                                ; $501f: $d4 $90 $fd
    ld [hl], d                                    ; $5022: $72
    sbc [hl]                                      ; $5023: $9e
    dec hl                                        ; $5024: $2b
    cp a                                          ; $5025: $bf
    ret nc                                        ; $5026: $d0

    ld d, c                                       ; $5027: $51
    ld [c], a                                     ; $5028: $e2
    rst $08                                       ; $5029: $cf
    ld [c], a                                     ; $502a: $e2
    jr c, @+$01                                   ; $502b: $38 $ff

    ei                                            ; $502d: $fb

jr_03b_502e:
    sub l                                         ; $502e: $95
    rra                                           ; $502f: $1f
    or c                                          ; $5030: $b1
    sbc d                                         ; $5031: $9a
    ld d, d                                       ; $5032: $52
    ld d, e                                       ; $5033: $53
    ld l, h                                       ; $5034: $6c
    ld a, [hl]                                    ; $5035: $7e
    and l                                         ; $5036: $a5
    or b                                          ; $5037: $b0
    ld a, [c]                                     ; $5038: $f2
    ei                                            ; $5039: $fb
    ld a, l                                       ; $503a: $7d
    add c                                         ; $503b: $81
    ld c, $c0                                     ; $503c: $0e $c0
    ld l, c                                       ; $503e: $69
    adc e                                         ; $503f: $8b
    dec l                                         ; $5040: $2d
    ld l, a                                       ; $5041: $6f
    nop                                           ; $5042: $00
    ld a, l                                       ; $5043: $7d
    jp c, $f7c2                                   ; $5044: $da $c2 $f7

    jp nz, $9cd5                                  ; $5047: $c2 $d5 $9c

    ld l, a                                       ; $504a: $6f
    db $fd                                        ; $504b: $fd
    ld [hl], d                                    ; $504c: $72
    ld d, $c7                                     ; $504d: $16 $c7
    ld l, c                                       ; $504f: $69
    ld d, $9b                                     ; $5050: $16 $9b
    ld e, a                                       ; $5052: $5f
    ldh a, [$3b]                                  ; $5053: $f0 $3b
    sub h                                         ; $5055: $94
    add hl, sp                                    ; $5056: $39
    ld e, h                                       ; $5057: $5c
    ld hl, sp-$06                                 ; $5058: $f8 $fa
    db $fd                                        ; $505a: $fd
    jr c, jr_03b_5002                             ; $505b: $38 $a5

    ld de, $9cc6                                  ; $505d: $11 $c6 $9c
    ld h, a                                       ; $5060: $67
    sub h                                         ; $5061: $94
    ld l, $9d                                     ; $5062: $2e $9d
    ld h, a                                       ; $5064: $67
    add hl, de                                    ; $5065: $19
    dec [hl]                                      ; $5066: $35
    ld h, h                                       ; $5067: $64
    cp a                                          ; $5068: $bf
    inc e                                         ; $5069: $1c
    ld [hl], c                                    ; $506a: $71
    ld c, $27                                     ; $506b: $0e $27
    dec c                                         ; $506d: $0d
    adc l                                         ; $506e: $8d
    dec l                                         ; $506f: $2d
    adc $73                                       ; $5070: $ce $73
    call nc, $85c8                                ; $5072: $d4 $c8 $85
    xor a                                         ; $5075: $af
    xor l                                         ; $5076: $ad
    sub h                                         ; $5077: $94
    cp h                                          ; $5078: $bc
    ld bc, $3767                                  ; $5079: $01 $67 $37
    ld b, h                                       ; $507c: $44
    dec e                                         ; $507d: $1d
    ld d, c                                       ; $507e: $51
    ld a, c                                       ; $507f: $79
    ldh a, [$cf]                                  ; $5080: $f0 $cf
    cp [hl]                                       ; $5082: $be
    ld l, c                                       ; $5083: $69

jr_03b_5084:
    ld c, h                                       ; $5084: $4c
    ld l, c                                       ; $5085: $69
    ccf                                           ; $5086: $3f
    rst $08                                       ; $5087: $cf
    sub l                                         ; $5088: $95
    ld e, a                                       ; $5089: $5f
    sbc a                                         ; $508a: $9f
    add a                                         ; $508b: $87
    jp c, Jump_000_388f                           ; $508c: $da $8f $38

    ld l, d                                       ; $508f: $6a
    db $fc                                        ; $5090: $fc
    add l                                         ; $5091: $85
    push hl                                       ; $5092: $e5
    ld sp, $7dfe                                  ; $5093: $31 $fe $7d
    rst $18                                       ; $5096: $df
    jp c, $5ca6                                   ; $5097: $da $a6 $5c

    pop hl                                        ; $509a: $e1
    ld b, d                                       ; $509b: $42
    ld b, a                                       ; $509c: $47
    rst $08                                       ; $509d: $cf
    sub l                                         ; $509e: $95
    ld a, [c]                                     ; $509f: $f2
    push af                                       ; $50a0: $f5
    res 1, b                                      ; $50a1: $cb $88
    jp z, Jump_03b_5f83                           ; $50a3: $ca $83 $5f

    or $2b                                        ; $50a6: $f6 $2b
    add hl, sp                                    ; $50a8: $39
    adc e                                         ; $50a9: $8b
    db $e3                                        ; $50aa: $e3
    add d                                         ; $50ab: $82
    ld l, a                                       ; $50ac: $6f
    ld a, b                                       ; $50ad: $78
    inc bc                                        ; $50ae: $03
    cp l                                          ; $50af: $bd
    add l                                         ; $50b0: $85
    add hl, sp                                    ; $50b1: $39
    adc e                                         ; $50b2: $8b
    db $e3                                        ; $50b3: $e3
    adc $6e                                       ; $50b4: $ce $6e
    adc b                                         ; $50b6: $88
    cp d                                          ; $50b7: $ba
    ld c, b                                       ; $50b8: $48
    or h                                          ; $50b9: $b4
    ld sp, hl                                     ; $50ba: $f9
    xor c                                         ; $50bb: $a9
    sbc e                                         ; $50bc: $9b
    and a                                         ; $50bd: $a7
    add [hl]                                      ; $50be: $86
    ld l, a                                       ; $50bf: $6f
    add d                                         ; $50c0: $82
    add hl, sp                                    ; $50c1: $39
    ld [c], a                                     ; $50c2: $e2
    xor b                                         ; $50c3: $a8
    pop af                                        ; $50c4: $f1
    rla                                           ; $50c5: $17
    sub [hl]                                      ; $50c6: $96
    rst $00                                       ; $50c7: $c7
    ld hl, sp-$10                                 ; $50c8: $f8 $f0
    dec a                                         ; $50ca: $3d
    ld b, [hl]                                    ; $50cb: $46
    ld [$673c], a                                 ; $50cc: $ea $3c $67
    ld [hl], c                                    ; $50cf: $71
    ld e, h                                       ; $50d0: $5c
    db $ed                                        ; $50d1: $ed
    and h                                         ; $50d2: $a4
    ld d, c                                       ; $50d3: $51
    add hl, sp                                    ; $50d4: $39
    db $eb                                        ; $50d5: $eb
    ld e, b                                       ; $50d6: $58
    add a                                         ; $50d7: $87
    db $ec                                        ; $50d8: $ec
    rst $38                                       ; $50d9: $ff
    jp z, $c2fd                                   ; $50da: $ca $fd $c2

    rst $10                                       ; $50dd: $d7
    sub a                                         ; $50de: $97
    sub l                                         ; $50df: $95
    rst $10                                       ; $50e0: $d7
    dec b                                         ; $50e1: $05
    ld d, e                                       ; $50e2: $53
    ld e, [hl]                                    ; $50e3: $5e
    ld b, a                                       ; $50e4: $47
    ld e, h                                       ; $50e5: $5c
    ld sp, hl                                     ; $50e6: $f9
    jp hl                                         ; $50e7: $e9


    sub a                                         ; $50e8: $97
    sbc a                                         ; $50e9: $9f
    rst $20                                       ; $50ea: $e7
    ld b, d                                       ; $50eb: $42
    ret                                           ; $50ec: $c9


    ld l, d                                       ; $50ed: $6a
    ld l, d                                       ; $50ee: $6a
    ld a, [bc]                                    ; $50ef: $0a
    push af                                       ; $50f0: $f5
    ld b, $17                                     ; $50f1: $06 $17
    db $fd                                        ; $50f3: $fd
    adc b                                         ; $50f4: $88
    push de                                       ; $50f5: $d5
    sub h                                         ; $50f6: $94
    sbc d                                         ; $50f7: $9a
    ld h, d                                       ; $50f8: $62
    di                                            ; $50f9: $f3
    and e                                         ; $50fa: $a3
    add $ae                                       ; $50fb: $c6 $ae
    ld de, $8d47                                  ; $50fd: $11 $47 $8d
    cp a                                          ; $5100: $bf
    or b                                          ; $5101: $b0
    inc a                                         ; $5102: $3c
    add $bf                                       ; $5103: $c6 $bf
    rst $10                                       ; $5105: $d7
    add a                                         ; $5106: $87
    ei                                            ; $5107: $fb
    ret nc                                        ; $5108: $d0

    ld d, c                                       ; $5109: $51
    ld h, e                                       ; $510a: $63
    xor $67                                       ; $510b: $ee $67
    ld [hl], c                                    ; $510d: $71
    ld e, h                                       ; $510e: $5c
    ld sp, hl                                     ; $510f: $f9
    ld de, $29ab                                  ; $5110: $11 $ab $29
    dec [hl]                                      ; $5113: $35
    push hl                                       ; $5114: $e5
    rla                                           ; $5115: $17
    sub b                                         ; $5116: $90
    ld [hl], l                                    ; $5117: $75
    or l                                          ; $5118: $b5
    ret nc                                        ; $5119: $d0

    ld a, [hl-]                                   ; $511a: $3a
    ret z                                         ; $511b: $c8

    cp l                                          ; $511c: $bd
    ld hl, sp-$61                                 ; $511d: $f8 $9f
    jp $89d5                                      ; $511f: $c3 $d5 $89


    pop de                                        ; $5122: $d1
    ld d, $e7                                     ; $5123: $16 $e7
    cp c                                          ; $5125: $b9
    jr nc, jr_03b_5175                            ; $5126: $30 $4d

    or e                                          ; $5128: $b3
    push bc                                       ; $5129: $c5
    add hl, de                                    ; $512a: $19
    daa                                           ; $512b: $27
    rra                                           ; $512c: $1f
    ld e, e                                       ; $512d: $5b
    push hl                                       ; $512e: $e5
    rla                                           ; $512f: $17
    and h                                         ; $5130: $a4
    ld [hl], h                                    ; $5131: $74
    or d                                          ; $5132: $b2
    jp nc, $97e2                                  ; $5133: $d2 $e2 $97

    sub $ff                                       ; $5136: $d6 $ff
    ld sp, $06f2                                  ; $5138: $31 $f2 $06
    or $6f                                        ; $513b: $f6 $6f
    sbc l                                         ; $513d: $9d
    jp $e85f                                      ; $513e: $c3 $5f $e8


    jr z, @-$0d                                   ; $5141: $28 $f1

    ld d, a                                       ; $5143: $57
    ld [hl], a                                    ; $5144: $77
    ld b, c                                       ; $5145: $41
    call $88fc                                    ; $5146: $cd $fc $88
    and e                                         ; $5149: $a3
    ld b, [hl]                                    ; $514a: $46
    ld l, $7c                                     ; $514b: $2e $7c
    ld l, l                                       ; $514d: $6d
    and l                                         ; $514e: $a5
    db $e4                                        ; $514f: $e4
    inc l                                         ; $5150: $2c
    adc [hl]                                      ; $5151: $8e
    db $eb                                        ; $5152: $eb
    ld a, h                                       ; $5153: $7c
    cp a                                          ; $5154: $bf
    ld e, a                                       ; $5155: $5f
    ldh a, [$35]                                  ; $5156: $f0 $35
    cp $ca                                        ; $5158: $fe $ca
    db $eb                                        ; $515a: $eb
    ld [$5fef], a                                 ; $515b: $ea $ef $5f
    and a                                         ; $515e: $a7
    ret z                                         ; $515f: $c8

    db $eb                                        ; $5160: $eb
    dec a                                         ; $5161: $3d
    dec sp                                        ; $5162: $3b
    ld e, l                                       ; $5163: $5d
    jr z, jr_03b_51c3                             ; $5164: $28 $5d

    ld h, $36                                     ; $5166: $26 $36
    di                                            ; $5168: $f3
    db $d3                                        ; $5169: $d3
    or [hl]                                       ; $516a: $b6
    ld d, d                                       ; $516b: $52
    ld [$2ebd], sp                                ; $516c: $08 $bd $2e
    cp [hl]                                       ; $516f: $be
    ld a, b                                       ; $5170: $78
    xor $57                                       ; $5171: $ee $57
    ld a, [hl]                                    ; $5173: $7e
    and [hl]                                      ; $5174: $a6

jr_03b_5175:
    cp h                                          ; $5175: $bc
    ld [hl], d                                    ; $5176: $72
    sbc [hl]                                      ; $5177: $9e
    dec bc                                        ; $5178: $0b
    call nz, Call_03b_790f                        ; $5179: $c4 $0f $79
    inc bc                                        ; $517c: $03
    sub a                                         ; $517d: $97
    and l                                         ; $517e: $a5
    ld a, a                                       ; $517f: $7f
    ld e, l                                       ; $5180: $5d
    ld a, c                                       ; $5181: $79
    sbc l                                         ; $5182: $9d
    add hl, hl                                    ; $5183: $29
    xor a                                         ; $5184: $af
    call nc, Call_03b_71f5                        ; $5185: $d4 $f5 $71
    db $10                                        ; $5188: $10
    ld d, h                                       ; $5189: $54
    jr c, jr_03b_51d9                             ; $518a: $38 $4d

    inc e                                         ; $518c: $1c
    ld [hl], c                                    ; $518d: $71
    call nc, $85c8                                ; $518e: $d4 $c8 $85
    ld c, l                                       ; $5191: $4d
    inc de                                        ; $5192: $13
    cp [hl]                                       ; $5193: $be

Jump_03b_5194:
    ldh [rOCPD], a                                ; $5194: $e0 $6b
    db $fc                                        ; $5196: $fc
    push af                                       ; $5197: $f5
    sub d                                         ; $5198: $92
    ret z                                         ; $5199: $c8

    ld e, c                                       ; $519a: $59

jr_03b_519b:
    rst $10                                       ; $519b: $d7
    rst $20                                       ; $519c: $e7
    nop                                           ; $519d: $00
    ld l, l                                       ; $519e: $6d
    and $6f                                       ; $519f: $e6 $6f
    nop                                           ; $51a1: $00
    or $6f                                        ; $51a2: $f6 $6f
    sbc l                                         ; $51a4: $9d
    jp $e85f                                      ; $51a5: $c3 $5f $e8


    jr z, jr_03b_519b                             ; $51a8: $28 $f1

jr_03b_51aa:
    ld d, a                                       ; $51aa: $57
    ld [hl], a                                    ; $51ab: $77
    ld b, c                                       ; $51ac: $41
    call $88fc                                    ; $51ad: $cd $fc $88
    and e                                         ; $51b0: $a3
    ld b, [hl]                                    ; $51b1: $46
    ld l, $7c                                     ; $51b2: $2e $7c
    ld l, l                                       ; $51b4: $6d
    and l                                         ; $51b5: $a5
    db $e4                                        ; $51b6: $e4
    inc l                                         ; $51b7: $2c
    adc [hl]                                      ; $51b8: $8e
    adc e                                         ; $51b9: $8b
    ld e, h                                       ; $51ba: $5c
    add hl, hl                                    ; $51bb: $29
    xor h                                         ; $51bc: $ac
    cp h                                          ; $51bd: $bc
    ld [hl], h                                    ; $51be: $74
    db $ed                                        ; $51bf: $ed
    set 1, d                                      ; $51c0: $cb $ca
    ei                                            ; $51c2: $fb

jr_03b_51c3:
    sbc h                                         ; $51c3: $9c

jr_03b_51c4:
    rst $20                                       ; $51c4: $e7
    jp z, $94cf                                   ; $51c5: $ca $cf $94

Jump_03b_51c8:
    ld d, a                                       ; $51c8: $57
    adc $73                                       ; $51c9: $ce $73
    rst $20                                       ; $51cb: $e7
    sub [hl]                                      ; $51cc: $96
    ld d, $61                                     ; $51cd: $16 $61
    ld [hl], $03                                  ; $51cf: $36 $03
    db $e3                                        ; $51d1: $e3
    ld b, $97                                     ; $51d2: $06 $97
    ld de, $5c67                                  ; $51d4: $11 $67 $5c
    di                                            ; $51d7: $f3
    rst $28                                       ; $51d8: $ef

jr_03b_51d9:
    ld [hl], e                                    ; $51d9: $73
    jp c, $b916                                   ; $51da: $da $16 $b9

    sbc d                                         ; $51dd: $9a
    sub c                                         ; $51de: $91
    ld a, [hl-]                                   ; $51df: $3a
    ld [c], a                                     ; $51e0: $e2
    ld c, h                                       ; $51e1: $4c
    ld a, c                                       ; $51e2: $79
    and l                                         ; $51e3: $a5
    xor [hl]                                      ; $51e4: $ae
    ld a, [c]                                     ; $51e5: $f2
    add $e6                                       ; $51e6: $c6 $e6
    push af                                       ; $51e8: $f5
    cp [hl]                                       ; $51e9: $be
    rst $28                                       ; $51ea: $ef
    jr nc, jr_03b_51aa                            ; $51eb: $30 $bd

    ret c                                         ; $51ed: $d8

    cp h                                          ; $51ee: $bc
    adc [hl]                                      ; $51ef: $8e
    ld l, b                                       ; $51f0: $68
    ld [de], a                                    ; $51f1: $12
    and e                                         ; $51f2: $a3
    cp h                                          ; $51f3: $bc
    ld b, h                                       ; $51f4: $44
    adc $24                                       ; $51f5: $ce $24
    xor $0b                                       ; $51f7: $ee $0b
    sub h                                         ; $51f9: $94
    di                                            ; $51fa: $f3
    call nc, $e487                                ; $51fb: $d4 $87 $e4
    db $fd                                        ; $51fe: $fd
    ld [hl], a                                    ; $51ff: $77
    ld a, [bc]                                    ; $5200: $0a
    ld l, a                                       ; $5201: $6f
    nop                                           ; $5202: $00
    halt                                          ; $5203: $76
    ld h, l                                       ; $5204: $65
    cp l                                          ; $5205: $bd
    adc e                                         ; $5206: $8b
    db $eb                                        ; $5207: $eb
    call z, $bd73                                 ; $5208: $cc $73 $bd
    dec h                                         ; $520b: $25
    db $eb                                        ; $520c: $eb
    call nc, $ee79                                ; $520d: $d4 $79 $ee
    ld l, h                                       ; $5210: $6c
    ld [hl], c                                    ; $5211: $71
    db $fd                                        ; $5212: $fd
    ld e, [hl]                                    ; $5213: $5e
    ld h, a                                       ; $5214: $67
    ld e, l                                       ; $5215: $5d
    sbc a                                         ; $5216: $9f

Jump_03b_5217:
    add a                                         ; $5217: $87
    ld d, d                                       ; $5218: $52
    ld [hl], a                                    ; $5219: $77
    xor $d7                                       ; $521a: $ee $d7
    xor c                                         ; $521c: $a9
    xor c                                         ; $521d: $a9
    and e                                         ; $521e: $a3
    adc $e1                                       ; $521f: $ce $e1
    ld a, [hl-]                                   ; $5221: $3a
    adc [hl]                                      ; $5222: $8e
    cp b                                          ; $5223: $b8
    ld [c], a                                     ; $5224: $e2
    and b                                         ; $5225: $a0
    sub a                                         ; $5226: $97
    add l                                         ; $5227: $85
    cpl                                           ; $5228: $2f
    cp a                                          ; $5229: $bf
    ld d, b                                       ; $522a: $50
    or d                                          ; $522b: $b2
    di                                            ; $522c: $f3
    ld [hl-], a                                   ; $522d: $32
    sub e                                         ; $522e: $93
    jr c, jr_03b_51c4                             ; $522f: $38 $93

    ld [hl], l                                    ; $5231: $75
    and a                                         ; $5232: $a7
    pop hl                                        ; $5233: $e1
    sbc e                                         ; $5234: $9b
    sub [hl]                                      ; $5235: $96
    ld c, b                                       ; $5236: $48
    sbc l                                         ; $5237: $9d
    rst $20                                       ; $5238: $e7
    adc h                                         ; $5239: $8c
    ld h, h                                       ; $523a: $64
    sbc l                                         ; $523b: $9d

jr_03b_523c:
    ld a, d                                       ; $523c: $7a
    inc bc                                        ; $523d: $03
    sub a                                         ; $523e: $97
    db $eb                                        ; $523f: $eb
    xor a                                         ; $5240: $af
    db $fc                                        ; $5241: $fc
    ld b, d                                       ; $5242: $42
    ld b, a                                       ; $5243: $47
    adc c                                         ; $5244: $89
    cp a                                          ; $5245: $bf
    cp d                                          ; $5246: $ba
    dec bc                                        ; $5247: $0b
    ld l, d                                       ; $5248: $6a
    and $e7                                       ; $5249: $e6 $e7
    cp c                                          ; $524b: $b9
    ld a, [c]                                     ; $524c: $f2
    dec bc                                        ; $524d: $0b
    ld e, a                                       ; $524e: $5f
    add sp, $67                                   ; $524f: $e8 $67
    and a                                         ; $5251: $a7
    sub c                                         ; $5252: $91
    dec bc                                        ; $5253: $0b
    ld e, a                                       ; $5254: $5f
    ld a, [hl]                                    ; $5255: $7e
    ld [$4d3a], a                                 ; $5256: $ea $3a $4d
    or $65                                        ; $5259: $f6 $65
    add $bd                                       ; $525b: $c6 $bd
    call nz, $d85c                                ; $525d: $c4 $5c $d8
    inc [hl]                                      ; $5260: $34
    rst $28                                       ; $5261: $ef
    ld e, l                                       ; $5262: $5d
    add $95                                       ; $5263: $c6 $95
    jp nz, Jump_03b_4bca                          ; $5265: $c2 $ca $4b

    rst $10                                       ; $5268: $d7
    ld a, [hl]                                    ; $5269: $7e
    push hl                                       ; $526a: $e5
    ld b, a                                       ; $526b: $47
    xor h                                         ; $526c: $ac
    and [hl]                                      ; $526d: $a6
    call nc, $9b14                                ; $526e: $d4 $14 $9b
    sbc a                                         ; $5271: $9f
    ld [hl], h                                    ; $5272: $74
    add l                                         ; $5273: $85
    call Call_03b_4d7f                            ; $5274: $cd $7f $4d
    adc h                                         ; $5277: $8c
    add h                                         ; $5278: $84
    ld c, a                                       ; $5279: $4f
    db $db                                        ; $527a: $db
    xor b                                         ; $527b: $a8
    or c                                          ; $527c: $b1
    ld c, e                                       ; $527d: $4b
    rla                                           ; $527e: $17
    and h                                         ; $527f: $a4
    inc [hl]                                      ; $5280: $34
    sbc a                                         ; $5281: $9f
    scf                                           ; $5282: $37
    nop                                           ; $5283: $00
    rst $20                                       ; $5284: $e7
    or [hl]                                       ; $5285: $b6
    ld h, d                                       ; $5286: $62
    add d                                         ; $5287: $82
    db $d3                                        ; $5288: $d3
    cpl                                           ; $5289: $2f
    sbc h                                         ; $528a: $9c
    ld h, a                                       ; $528b: $67
    ld e, c                                       ; $528c: $59
    jr z, jr_03b_523c                             ; $528d: $28 $ad

    and [hl]                                      ; $528f: $a6
    inc l                                         ; $5290: $2c
    ld l, h                                       ; $5291: $6c
    sbc d                                         ; $5292: $9a
    or e                                          ; $5293: $b3
    xor [hl]                                      ; $5294: $ae
    inc d                                         ; $5295: $14
    ld b, d                                       ; $5296: $42
    cp a                                          ; $5297: $bf
    ld e, a                                       ; $5298: $5f
    ld d, l                                       ; $5299: $55
    adc l                                         ; $529a: $8d
    ld e, h                                       ; $529b: $5c
    rst $20                                       ; $529c: $e7
    dec [hl]                                      ; $529d: $35
    ld a, $46                                     ; $529e: $3e $46
    ld c, [hl]                                    ; $52a0: $4e
    cp d                                          ; $52a1: $ba
    jp nz, $f3e6                                  ; $52a2: $c2 $e6 $f3

    ld e, [hl]                                    ; $52a5: $5e
    ld l, a                                       ; $52a6: $6f
    ld h, c                                       ; $52a7: $61
    adc $e2                                       ; $52a8: $ce $e2
    cp b                                          ; $52aa: $b8
    ret c                                         ; $52ab: $d8

    adc b                                         ; $52ac: $88
    sbc h                                         ; $52ad: $9c
    jp $e85f                                      ; $52ae: $c3 $5f $e8


    jr z, @-$0d                                   ; $52b1: $28 $f1

    ld d, a                                       ; $52b3: $57
    ld [hl], a                                    ; $52b4: $77
    ld b, c                                       ; $52b5: $41

jr_03b_52b6:
    call $88fc                                    ; $52b6: $cd $fc $88
    ld d, e                                       ; $52b9: $53
    scf                                           ; $52ba: $37
    ld c, a                                       ; $52bb: $4f
    dec c                                         ; $52bc: $0d
    rst $18                                       ; $52bd: $df
    inc b                                         ; $52be: $04
    ld [hl], e                                    ; $52bf: $73
    add hl, sp                                    ; $52c0: $39
    ld [c], a                                     ; $52c1: $e2
    ld e, b                                       ; $52c2: $58
    or $52                                        ; $52c3: $f6 $52
    cp a                                          ; $52c5: $bf
    or h                                          ; $52c6: $b4
    ld e, h                                       ; $52c7: $5c
    ld hl, sp-$0e                                 ; $52c8: $f8 $f2
    and e                                         ; $52ca: $a3
    sbc d                                         ; $52cb: $9a
    db $ec                                        ; $52cc: $ec
    cp h                                          ; $52cd: $bc
    adc $e2                                       ; $52ce: $ce $e2
    cp b                                          ; $52d0: $b8
    ld d, d                                       ; $52d1: $52
    ld e, b                                       ; $52d2: $58
    ld sp, hl                                     ; $52d3: $f9
    dec b                                         ; $52d4: $05
    ld e, a                                       ; $52d5: $5f
    db $e3                                        ; $52d6: $e3
    rst $28                                       ; $52d7: $ef
    dec l                                         ; $52d8: $2d
    adc $e6                                       ; $52d9: $ce $e6
    ld b, $81                                     ; $52db: $06 $81
    ld l, l                                       ; $52dd: $6d
    ld d, $d7                                     ; $52de: $16 $d7
    jr z, jr_03b_52b6                             ; $52e0: $28 $d4

    sub l                                         ; $52e2: $95
    ld b, d                                       ; $52e3: $42
    add sp, $65                                   ; $52e4: $e8 $65
    ld e, a                                       ; $52e6: $5f
    ld h, [hl]                                    ; $52e7: $66
    call c, $cc4b                                 ; $52e8: $dc $4b $cc
    add l                                         ; $52eb: $85
    ld c, l                                       ; $52ec: $4d
    ld [hl], e                                    ; $52ed: $73
    jp nc, $3615                                  ; $52ee: $d2 $15 $36

    rst $38                                       ; $52f1: $ff
    dec [hl]                                      ; $52f2: $35
    ld sp, $be12                                  ; $52f3: $31 $12 $be
    adc [hl]                                      ; $52f6: $8e
    ld d, e                                       ; $52f7: $53
    di                                            ; $52f8: $f3
    dec hl                                        ; $52f9: $2b
    xor a                                         ; $52fa: $af
    and e                                         ; $52fb: $a3

jr_03b_52fc:
    sbc d                                         ; $52fc: $9a
    cpl                                           ; $52fd: $2f
    sub h                                         ; $52fe: $94
    rst $10                                       ; $52ff: $d7
    ld de, $7e57                                  ; $5300: $11 $57 $7e
    pop hl                                        ; $5303: $e1
    ld c, e                                       ; $5304: $4b
    db $e4                                        ; $5305: $e4
    ld [bc], a                                    ; $5306: $02
    sbc l                                         ; $5307: $9d
    call z, Call_000_2cb3                         ; $5308: $cc $b3 $2c
    ld a, h                                       ; $530b: $7c
    ld l, l                                       ; $530c: $6d
    and l                                         ; $530d: $a5
    db $e4                                        ; $530e: $e4
    dec c                                         ; $530f: $0d
    nop                                           ; $5310: $00
    halt                                          ; $5311: $76
    ld h, l                                       ; $5312: $65
    ld e, a                                       ; $5313: $5f
    ld [$5537], a                                 ; $5314: $ea $37 $55
    ld [hl], c                                    ; $5317: $71
    sbc [hl]                                      ; $5318: $9e
    dec sp                                        ; $5319: $3b
    or a                                          ; $531a: $b7
    dec d                                         ; $531b: $15
    inc de                                        ; $531c: $13
    inc e                                         ; $531d: $1c
    dec [hl]                                      ; $531e: $35
    halt                                          ; $531f: $76
    adc l                                         ; $5320: $8d
    jr c, jr_03b_538d                             ; $5321: $38 $6a

    db $e4                                        ; $5323: $e4
    jp nz, Jump_03b_79a6                          ; $5324: $c2 $a6 $79

    rst $28                                       ; $5327: $ef
    sbc h                                         ; $5328: $9c
    ld h, [hl]                                    ; $5329: $66
    adc b                                         ; $532a: $88
    or e                                          ; $532b: $b3
    jr c, jr_03b_52fc                             ; $532c: $38 $ce

    inc de                                        ; $532e: $13
    and e                                         ; $532f: $a3
    db $e4                                        ; $5330: $e4
    sub h                                         ; $5331: $94
    and e                                         ; $5332: $a3
    sbc d                                         ; $5333: $9a
    ld b, h                                       ; $5334: $44
    ld c, a                                       ; $5335: $4f
    sbc h                                         ; $5336: $9c
    and [hl]                                      ; $5337: $a6
    add h                                         ; $5338: $84
    ld b, d                                       ; $5339: $42
    ld a, l                                       ; $533a: $7d
    sbc l                                         ; $533b: $9d
    and a                                         ; $533c: $a7
    ld a, $24                                     ; $533d: $3e $24
    rst $28                                       ; $533f: $ef
    cp a                                          ; $5340: $bf
    ld d, e                                       ; $5341: $53
    xor b                                         ; $5342: $a8
    scf                                           ; $5343: $37
    nop                                           ; $5344: $00
    or $6f                                        ; $5345: $f6 $6f
    sbc l                                         ; $5347: $9d
    jp $d4bd                                      ; $5348: $c3 $bd $d4


    cpl                                           ; $534b: $2f
    dec l                                         ; $534c: $2d
    ld h, a                                       ; $534d: $67
    ld [de], a                                    ; $534e: $12
    ld d, a                                       ; $534f: $57
    ld a, a                                       ; $5350: $7f
    and h                                         ; $5351: $a4
    or h                                          ; $5352: $b4
    cpl                                           ; $5353: $2f
    di                                            ; $5354: $f3
    inc e                                         ; $5355: $1c
    push de                                       ; $5356: $d5
    ld c, b                                       ; $5357: $48
    adc e                                         ; $5358: $8b
    add hl, hl                                    ; $5359: $29
    dec l                                         ; $535a: $2d
    ld b, a                                       ; $535b: $47
    ld e, h                                       ; $535c: $5c
    ld sp, hl                                     ; $535d: $f9
    ld d, c                                       ; $535e: $51
    dec l                                         ; $535f: $2d
    xor [hl]                                      ; $5360: $ae
    pop hl                                        ; $5361: $e1
    rst $18                                       ; $5362: $df
    cp e                                          ; $5363: $bb
    inc e                                         ; $5364: $1c
    ld a, a                                       ; $5365: $7f
    dec d                                         ; $5366: $15
    or $5f                                        ; $5367: $f6 $5f
    jp c, Jump_03b_5c4c                           ; $5369: $da $4c $5c

    di                                            ; $536c: $f3
    xor c                                         ; $536d: $a9
    inc hl                                        ; $536e: $23
    xor h                                         ; $536f: $ac
    jr z, jr_03b_53f1                             ; $5370: $28 $7f

    ld [hl], b                                    ; $5372: $70
    ld [$8e2c], a                                 ; $5373: $ea $2c $8e
    db $d3                                        ; $5376: $d3
    cpl                                           ; $5377: $2f
    ld [hl], $8f                                  ; $5378: $36 $8f
    di                                            ; $537a: $f3
    call c, Call_03b_6d07                         ; $537b: $dc $07 $6d
    ld l, [hl]                                    ; $537e: $6e
    nop                                           ; $537f: $00
    ld a, l                                       ; $5380: $7d
    ld [hl], e                                    ; $5381: $73
    and c                                         ; $5382: $a1

Jump_03b_5383:
    and e                                         ; $5383: $a3
    rst $08                                       ; $5384: $cf
    ld d, c                                       ; $5385: $51
    ld b, e                                       ; $5386: $43
    jp z, $7ecb                                   ; $5387: $ca $cb $7e

    cp $65                                        ; $538a: $fe $65
    xor a                                         ; $538c: $af

jr_03b_538d:
    ld d, c                                       ; $538d: $51
    ld [de], a                                    ; $538e: $12

jr_03b_538f:
    or e                                          ; $538f: $b3
    or [hl]                                       ; $5390: $b6
    ld sp, hl                                     ; $5391: $f9
    ld a, e                                       ; $5392: $7b
    rla                                           ; $5393: $17
    db $fd                                        ; $5394: $fd
    ld b, d                                       ; $5395: $42
    ld b, a                                       ; $5396: $47
    adc c                                         ; $5397: $89
    ccf                                           ; $5398: $3f
    adc e                                         ; $5399: $8b
    db $e3                                        ; $539a: $e3
    ld a, [hl+]                                   ; $539b: $2a
    cp a                                          ; $539c: $bf
    ld e, a                                       ; $539d: $5f
    ld sp, hl                                     ; $539e: $f9
    push bc                                       ; $539f: $c5
    inc d                                         ; $53a0: $14
    pop hl                                        ; $53a1: $e1
    inc a                                         ; $53a2: $3c
    rst $30                                       ; $53a3: $f7
    ld a, [de]                                    ; $53a4: $1a
    dec h                                         ; $53a5: $25
    ld sp, $9b6b                                  ; $53a6: $31 $6b $9b
    rra                                           ; $53a9: $1f
    ld [hl], l                                    ; $53aa: $75
    pop af                                        ; $53ab: $f1
    ld [hl], c                                    ; $53ac: $71
    sub c                                         ; $53ad: $91
    jr jr_03b_538f                                ; $53ae: $18 $df

    and a                                         ; $53b0: $a7
    db $fc                                        ; $53b1: $fc
    ld a, l                                       ; $53b2: $7d
    rst $18                                       ; $53b3: $df
    nop                                           ; $53b4: $00
    halt                                          ; $53b5: $76
    jp z, $a309                                   ; $53b6: $ca $09 $a3

    ld a, h                                       ; $53b9: $7c
    call z, $ae79                                 ; $53ba: $cc $79 $ae
    db $fc                                        ; $53bd: $fc
    jp nz, $fa17                                  ; $53be: $c2 $17 $fa

    push af                                       ; $53c1: $f5
    ld c, l                                       ; $53c2: $4d
    adc c                                         ; $53c3: $89
    cp h                                          ; $53c4: $bc
    rst $28                                       ; $53c5: $ef
    cp e                                          ; $53c6: $bb
    rst $10                                       ; $53c7: $d7
    ld a, [hl+]                                   ; $53c8: $2a
    inc [hl]                                      ; $53c9: $34
    call nc, Call_03b_5c95                        ; $53ca: $d4 $95 $5c
    ld [hl], $28                                  ; $53cd: $36 $28
    ld d, a                                       ; $53cf: $57
    dec sp                                        ; $53d0: $3b
    xor c                                         ; $53d1: $a9
    sbc l                                         ; $53d2: $9d
    cp h                                          ; $53d3: $bc
    call z, $bea4                                 ; $53d4: $cc $a4 $be
    sbc $00                                       ; $53d7: $de $00
    ld a, l                                       ; $53d9: $7d
    ld [hl], e                                    ; $53da: $73
    sbc [hl]                                      ; $53db: $9e
    db $fd                                        ; $53dc: $fd
    ld [hl], d                                    ; $53dd: $72
    sbc [hl]                                      ; $53de: $9e
    xor e                                         ; $53df: $ab
    sbc e                                         ; $53e0: $9b
    cp h                                          ; $53e1: $bc
    adc h                                         ; $53e2: $8c
    jr c, jr_03b_544f                             ; $53e3: $38 $6a

    db $fc                                        ; $53e5: $fc
    ld b, c                                       ; $53e6: $41
    ld a, [c]                                     ; $53e7: $f2
    cp b                                          ; $53e8: $b8
    ld c, [hl]                                    ; $53e9: $4e
    sub [hl]                                      ; $53ea: $96
    sbc a                                         ; $53eb: $9f
    rst $20                                       ; $53ec: $e7
    adc h                                         ; $53ed: $8c
    inc [hl]                                      ; $53ee: $34
    adc l                                         ; $53ef: $8d
    ld e, a                                       ; $53f0: $5f

jr_03b_53f1:
    ldh [$0b], a                                  ; $53f1: $e0 $0b
    add hl, hl                                    ; $53f3: $29
    add hl, sp                                    ; $53f4: $39
    ld [hl], h                                    ; $53f5: $74
    ld l, b                                       ; $53f6: $68
    ld a, [hl]                                    ; $53f7: $7e
    ld h, $51                                     ; $53f8: $26 $51
    dec de                                        ; $53fa: $1b
    sub h                                         ; $53fb: $94
    xor e                                         ; $53fc: $ab
    ld d, b                                       ; $53fd: $50
    add $b2                                       ; $53fe: $c6 $b2
    ld l, d                                       ; $5400: $6a
    rla                                           ; $5401: $17
    sbc l                                         ; $5402: $9d
    db $e4                                        ; $5403: $e4
    dec c                                         ; $5404: $0d
    nop                                           ; $5405: $00
    halt                                          ; $5406: $76
    ld a, [de]                                    ; $5407: $1a
    ld d, d                                       ; $5408: $52
    ld [hl], d                                    ; $5409: $72
    ld d, $c7                                     ; $540a: $16 $c7
    dec b                                         ; $540c: $05
    rst $18                                       ; $540d: $df
    jp c, Jump_03b_74d5                           ; $540e: $da $d5 $74

    cp [hl]                                       ; $5411: $be
    ld l, c                                       ; $5412: $69
    or l                                          ; $5413: $b5
    cp b                                          ; $5414: $b8
    ld hl, sp+$3e                                 ; $5415: $f8 $3e
    rst $20                                       ; $5417: $e7
    ld e, c                                       ; $5418: $59
    sub $79                                       ; $5419: $d6 $79
    or h                                          ; $541b: $b4
    jr c, jr_03b_5464                             ; $541c: $38 $46

    adc $73                                       ; $541e: $ce $73
    sbc l                                         ; $5420: $9d
    ld b, [hl]                                    ; $5421: $46
    xor h                                         ; $5422: $ac
    db $10                                        ; $5423: $10
    sbc e                                         ; $5424: $9b
    rst $38                                       ; $5425: $ff
    ld a, e                                       ; $5426: $7b
    cp l                                          ; $5427: $bd
    add d                                         ; $5428: $82
    add hl, hl                                    ; $5429: $29
    cp a                                          ; $542a: $bf
    ld l, [hl]                                    ; $542b: $6e
    cp a                                          ; $542c: $bf
    adc [hl]                                      ; $542d: $8e
    ld d, e                                       ; $542e: $53
    di                                            ; $542f: $f3
    or d                                          ; $5430: $b2
    adc d                                         ; $5431: $8a
    and e                                         ; $5432: $a3
    ld b, [hl]                                    ; $5433: $46
    ld a, c                                       ; $5434: $79
    sbc l                                         ; $5435: $9d
    ld a, c                                       ; $5436: $79
    ld a, l                                       ; $5437: $7d
    db $ed                                        ; $5438: $ed
    ld bc, $dd00                                  ; $5439: $01 $00 $dd
    rst $08                                       ; $543c: $cf
    or c                                          ; $543d: $b1
    ld b, l                                       ; $543e: $45
    rst $08                                       ; $543f: $cf
    ld d, c                                       ; $5440: $51
    ld h, e                                       ; $5441: $63
    rst $10                                       ; $5442: $d7
    adc $13                                       ; $5443: $ce $13
    ld l, e                                       ; $5445: $6b
    ld [hl], l                                    ; $5446: $75
    ld [hl], l                                    ; $5447: $75
    ld b, e                                       ; $5448: $43
    sbc a                                         ; $5449: $9f
    jp nc, Jump_000_0013                          ; $544a: $d2 $13 $00

    ld d, a                                       ; $544d: $57
    rst $38                                       ; $544e: $ff

jr_03b_544f:
    xor b                                         ; $544f: $a8
    or c                                          ; $5450: $b1
    ld l, e                                       ; $5451: $6b
    call nz, $501d                                ; $5452: $c4 $1d $50
    ld h, d                                       ; $5455: $62
    xor e                                         ; $5456: $ab
    ld [hl], e                                    ; $5457: $73
    push bc                                       ; $5458: $c5
    ld b, c                                       ; $5459: $41
    cpl                                           ; $545a: $2f
    ldh a, [rBCPD]                                ; $545b: $f0 $69
    dec de                                        ; $545d: $1b
    and $6a                                       ; $545e: $e6 $6a
    adc [hl]                                      ; $5460: $8e
    ld d, $d7                                     ; $5461: $16 $d7
    ld a, [hl+]                                   ; $5463: $2a

jr_03b_5464:
    ld l, c                                       ; $5464: $69
    ld a, [c]                                     ; $5465: $f2
    ld b, $17                                     ; $5466: $06 $17
    push hl                                       ; $5468: $e5
    or h                                          ; $5469: $b4
    ld de, $c263                                  ; $546a: $11 $63 $c2
    add a                                         ; $546d: $87
    add hl, sp                                    ; $546e: $39
    ld [$36ea], a                                 ; $546f: $ea $ea $36
    di                                            ; $5472: $f3
    ld a, [$0037]                                 ; $5473: $fa $37 $00
    rst $20                                       ; $5476: $e7
    inc [hl]                                      ; $5477: $34
    dec [hl]                                      ; $5478: $35
    xor [hl]                                      ; $5479: $ae
    add h                                         ; $547a: $84
    add h                                         ; $547b: $84
    cpl                                           ; $547c: $2f
    sub h                                         ; $547d: $94
    xor h                                         ; $547e: $ac
    and [hl]                                      ; $547f: $a6
    and [hl]                                      ; $5480: $a6
    ret nz                                        ; $5481: $c0

    rst $10                                       ; $5482: $d7
    db $dd                                        ; $5483: $dd
    db $db                                        ; $5484: $db
    and d                                         ; $5485: $a2
    rst $20                                       ; $5486: $e7
    xor b                                         ; $5487: $a8
    or c                                          ; $5488: $b1
    ld l, e                                       ; $5489: $6b
    rst $20                                       ; $548a: $e7
    adc c                                         ; $548b: $89
    or l                                          ; $548c: $b5
    cp d                                          ; $548d: $ba
    cp d                                          ; $548e: $ba
    and c                                         ; $548f: $a1
    ld c, a                                       ; $5490: $4f
    jp hl                                         ; $5491: $e9


    add hl, bc                                    ; $5492: $09
    nop                                           ; $5493: $00
    add c                                         ; $5494: $81
    sub h                                         ; $5495: $94
    xor [hl]                                      ; $5496: $ae
    push de                                       ; $5497: $d5
    db $ec                                        ; $5498: $ec
    sub a                                         ; $5499: $97
    ld [hl-], a                                   ; $549a: $32
    adc e                                         ; $549b: $8b
    db $e3                                        ; $549c: $e3
    jp z, Jump_03b_688f                           ; $549d: $ca $8f $68

    inc e                                         ; $54a0: $1c
    ld sp, $750a                                  ; $54a1: $31 $0a $75
    adc a                                         ; $54a4: $8f
    sub c                                         ; $54a5: $91
    ld a, [hl-]                                   ; $54a6: $3a
    rst $08                                       ; $54a7: $cf
    ld e, c                                       ; $54a8: $59
    inc e                                         ; $54a9: $1c
    rst $30                                       ; $54aa: $f7
    pop hl                                        ; $54ab: $e1
    ld b, e                                       ; $54ac: $43
    adc [hl]                                      ; $54ad: $8e
    cp b                                          ; $54ae: $b8
    ld a, [c]                                     ; $54af: $f2
    cp d                                          ; $54b0: $ba
    ld [c], a                                     ; $54b1: $e2
    inc c                                         ; $54b2: $0c
    dec d                                         ; $54b3: $15
    cp [hl]                                       ; $54b4: $be
    add b                                         ; $54b5: $80
    adc h                                         ; $54b6: $8c
    sub c                                         ; $54b7: $91
    ld [hl], d                                    ; $54b8: $72
    inc bc                                        ; $54b9: $03
    ld a, l                                       ; $54ba: $7d
    ld [hl], e                                    ; $54bb: $73
    dec h                                         ; $54bc: $25
    and a                                         ; $54bd: $a7
    ld d, l                                       ; $54be: $55
    ld l, a                                       ; $54bf: $6f
    nop                                           ; $54c0: $00
    ld bc, $c5e9                                  ; $54c1: $01 $e9 $c5
    and $47                                       ; $54c4: $e6 $47
    adc l                                         ; $54c6: $8d
    cpl                                           ; $54c7: $2f
    inc hl                                        ; $54c8: $23
    adc $b8                                       ; $54c9: $ce $b8
    cpl                                           ; $54cb: $2f
    ld d, $d7                                     ; $54cc: $16 $d7
    jr z, @-$2b                                   ; $54ce: $28 $d3

    ld d, $5b                                     ; $54d0: $16 $5b
    sbc $00                                       ; $54d2: $de $00
    ld a, l                                       ; $54d4: $7d
    jp c, Jump_000_1bbb                           ; $54d5: $da $bb $1b

    nop                                           ; $54d8: $00
    db $dd                                        ; $54d9: $dd
    adc $61                                       ; $54da: $ce $61
    cp a                                          ; $54dc: $bf
    sbc a                                         ; $54dd: $9f
    rst $20                                       ; $54de: $e7
    ld [$d42c], a                                 ; $54df: $ea $2c $d4
    ld hl, sp-$4e                                 ; $54e2: $f8 $b2
    ld e, a                                       ; $54e4: $5f
    ld sp, hl                                     ; $54e5: $f9
    add l                                         ; $54e6: $85
    reti                                          ; $54e7: $d9


    ld de, $902e                                  ; $54e8: $11 $2e $90
    rlca                                          ; $54eb: $07
    and a                                         ; $54ec: $a7
    db $fc                                        ; $54ed: $fc
    ld a, [$48a6]                                 ; $54ee: $fa $a6 $48
    db $d3                                        ; $54f1: $d3
    ld e, $dd                                     ; $54f2: $1e $dd
    ld a, [$52e6]                                 ; $54f4: $fa $e6 $52
    rla                                           ; $54f7: $17
    ld [hl], $8a                                  ; $54f8: $36 $8a
    rst $08                                       ; $54fa: $cf
    ld a, c                                       ; $54fb: $79
    xor [hl]                                      ; $54fc: $ae
    jp nc, Jump_03b_7e34                          ; $54fd: $d2 $34 $7e

    rrca                                          ; $5500: $0f
    nop                                           ; $5501: $00
    ld a, l                                       ; $5502: $7d
    ld [hl], e                                    ; $5503: $73
    call nc, $d698                                ; $5504: $d4 $98 $d6
    add hl, hl                                    ; $5507: $29
    ld hl, $7927                                  ; $5508: $21 $27 $79
    rst $18                                       ; $550b: $df
    ld [hl], a                                    ; $550c: $77
    ld c, b                                       ; $550d: $48
    ret                                           ; $550e: $c9


    add hl, de                                    ; $550f: $19
    ld h, c                                       ; $5510: $61
    adc $e2                                       ; $5511: $ce $e2
    cp b                                          ; $5513: $b8
    cp d                                          ; $5514: $ba
    ld c, e                                       ; $5515: $4b
    rst $30                                       ; $5516: $f7
    ld [hl+], a                                   ; $5517: $22
    xor l                                         ; $5518: $ad
    di                                            ; $5519: $f3
    rst $30                                       ; $551a: $f7
    ld a, l                                       ; $551b: $7d
    inc bc                                        ; $551c: $03
    sub a                                         ; $551d: $97
    dec sp                                        ; $551e: $3b
    rlca                                          ; $551f: $07
    ld e, a                                       ; $5520: $5f
    jr nc, jr_03b_5568                            ; $5521: $30 $45

    ld e, d                                       ; $5523: $5a
    and a                                         ; $5524: $a7
    ld d, b                                       ; $5525: $50
    add a                                         ; $5526: $87
    ld e, c                                       ; $5527: $59
    ld sp, hl                                     ; $5528: $f9
    sbc b                                         ; $5529: $98
    cp d                                          ; $552a: $ba
    jr nc, jr_03b_5592                            ; $552b: $30 $65

    ld sp, $ebfd                                  ; $552d: $31 $fd $eb
    jp nz, Jump_03b_4897                          ; $5530: $c2 $97 $48

    cp l                                          ; $5533: $bd
    ld bc, $b3bd                                  ; $5534: $01 $bd $b3
    ld c, $6d                                     ; $5537: $0e $6d
    dec h                                         ; $5539: $25
    ld a, [hl]                                    ; $553a: $7e
    inc h                                         ; $553b: $24
    ld a, h                                       ; $553c: $7c
    ld bc, $8564                                  ; $553d: $01 $64 $85
    ld a, d                                       ; $5540: $7a
    rst $18                                       ; $5541: $df
    ld [hl], a                                    ; $5542: $77
    rst $30                                       ; $5543: $f7
    sbc h                                         ; $5544: $9c
    push bc                                       ; $5545: $c5
    dec [hl]                                      ; $5546: $35
    ld a, [bc]                                    ; $5547: $0a
    ld [hl], l                                    ; $5548: $75
    ld d, $c7                                     ; $5549: $16 $c7
    sub l                                         ; $554b: $95
    ld a, [c]                                     ; $554c: $f2
    dec [hl]                                      ; $554d: $35
    rst $30                                       ; $554e: $f7
    ld h, l                                       ; $554f: $65
    ld h, a                                       ; $5550: $67
    cp a                                          ; $5551: $bf
    ret c                                         ; $5552: $d8

    ld [c], a                                     ; $5553: $e2
    ld [bc], a                                    ; $5554: $02
    rra                                           ; $5555: $1f
    ld hl, $f0d7                                  ; $5556: $21 $d7 $f0
    and l                                         ; $5559: $a5
    ld h, l                                       ; $555a: $65
    ld c, a                                       ; $555b: $4f
    nop                                           ; $555c: $00
    add c                                         ; $555d: $81
    or [hl]                                       ; $555e: $b6
    dec h                                         ; $555f: $25
    rst $10                                       ; $5560: $d7
    jr nc, jr_03b_5575                            ; $5561: $30 $12

    ld h, e                                       ; $5563: $63
    adc $b7                                       ; $5564: $ce $b7
    ld a, [bc]                                    ; $5566: $0a
    dec h                                         ; $5567: $25

jr_03b_5568:
    ld [hl], $a9                                  ; $5568: $36 $a9
    ld a, c                                       ; $556a: $79
    rst $18                                       ; $556b: $df
    scf                                           ; $556c: $37
    nop                                           ; $556d: $00
    db $dd                                        ; $556e: $dd
    cpl                                           ; $556f: $2f
    ld [hl], c                                    ; $5570: $71
    ld d, l                                       ; $5571: $55
    rla                                           ; $5572: $17
    db $fc                                        ; $5573: $fc
    ld l, c                                       ; $5574: $69

jr_03b_5575:
    di                                            ; $5575: $f3
    add hl, sp                                    ; $5576: $39
    ld l, d                                       ; $5577: $6a
    or $04                                        ; $5578: $f6 $04
    ld bc, $8564                                  ; $557a: $01 $64 $85
    ld a, [hl-]                                   ; $557d: $3a
    sub [hl]                                      ; $557e: $96
    dec b                                         ; $557f: $05
    ld h, h                                       ; $5580: $64
    adc c                                         ; $5581: $89

jr_03b_5582:
    inc d                                         ; $5582: $14
    adc b                                         ; $5583: $88
    ld c, l                                       ; $5584: $4d
    db $e3                                        ; $5585: $e3
    cp l                                          ; $5586: $bd
    ld l, [hl]                                    ; $5587: $6e
    sub a                                         ; $5588: $97
    ld de, $5c67                                  ; $5589: $11 $67 $5c
    di                                            ; $558c: $f3
    rst $28                                       ; $558d: $ef
    ld [hl], e                                    ; $558e: $73
    ld h, $71                                     ; $558f: $26 $71
    ld d, l                                       ; $5591: $55

jr_03b_5592:
    ld c, e                                       ; $5592: $4b
    adc a                                         ; $5593: $8f
    reti                                          ; $5594: $d9


    sub l                                         ; $5595: $95
    sbc l                                         ; $5596: $9d

jr_03b_5597:
    db $fd                                        ; $5597: $fd
    ld h, d                                       ; $5598: $62
    adc e                                         ; $5599: $8b
    dec bc                                        ; $559a: $0b
    ld a, h                                       ; $559b: $7c
    add h                                         ; $559c: $84
    ld e, h                                       ; $559d: $5c
    jp $9697                                      ; $559e: $c3 $97 $96


    ldh a, [rHDMA5]                               ; $55a1: $f0 $55
    ccf                                           ; $55a3: $3f
    add $d7                                       ; $55a4: $c6 $d7
    ld a, [$b9e7]                                 ; $55a6: $fa $e7 $b9
    ld a, [c]                                     ; $55a9: $f2
    inc sp                                        ; $55aa: $33
    xor a                                         ; $55ab: $af
    cp a                                          ; $55ac: $bf
    ret nz                                        ; $55ad: $c0

    ld h, d                                       ; $55ae: $62
    adc l                                         ; $55af: $8d
    ld b, c                                       ; $55b0: $41
    ld c, d                                       ; $55b1: $4a
    ld b, e                                       ; $55b2: $43
    ld hl, sp-$58                                 ; $55b3: $f8 $a8
    ld h, e                                       ; $55b5: $63
    reti                                          ; $55b6: $d9


    ld bc, $4cd8                                  ; $55b7: $01 $d8 $4c
    adc $e2                                       ; $55ba: $ce $e2
    cp b                                          ; $55bc: $b8
    ret nc                                        ; $55bd: $d0

    pop de                                        ; $55be: $d1
    ld [hl], e                                    ; $55bf: $73
    ld h, $31                                     ; $55c0: $26 $31
    ld c, d                                       ; $55c2: $4a
    sub [hl]                                      ; $55c3: $96
    sub a                                         ; $55c4: $97
    sub d                                         ; $55c5: $92
    scf                                           ; $55c6: $37
    nop                                           ; $55c7: $00
    ld h, a                                       ; $55c8: $67
    dec sp                                        ; $55c9: $3b
    dec [hl]                                      ; $55ca: $35
    ccf                                           ; $55cb: $3f
    add a                                         ; $55cc: $87
    cp a                                          ; $55cd: $bf
    ld [hl], e                                    ; $55ce: $73
    cp [hl]                                       ; $55cf: $be
    cp $9d                                        ; $55d0: $fe $9d
    sub a                                         ; $55d2: $97
    ld [c], a                                     ; $55d3: $e2

Jump_03b_55d4:
    ld a, a                                       ; $55d4: $7f
    ld h, $71                                     ; $55d5: $26 $71
    ld c, $57                                     ; $55d7: $0e $57
    and c                                         ; $55d9: $a1

jr_03b_55da:
    add $e6                                       ; $55da: $c6 $e6
    ld [hl], e                                    ; $55dc: $73
    sub d                                         ; $55dd: $92
    ld a, [$7df7]                                 ; $55de: $fa $f7 $7d
    ld d, e                                       ; $55e1: $53
    rla                                           ; $55e2: $17
    db $d3                                        ; $55e3: $d3
    rst $20                                       ; $55e4: $e7
    ld c, d                                       ; $55e5: $4a
    adc $e2                                       ; $55e6: $ce $e2
    jr c, jr_03b_5597                             ; $55e8: $38 $ad

    ld a, d                                       ; $55ea: $7a
    inc bc                                        ; $55eb: $03
    add c                                         ; $55ec: $81
    sbc h                                         ; $55ed: $9c
    cp d                                          ; $55ee: $ba
    jr nc, jr_03b_5582                            ; $55ef: $30 $91

    or e                                          ; $55f1: $b3
    jr c, jr_03b_5582                             ; $55f2: $38 $8e

    ld a, [de]                                    ; $55f4: $1a
    cp e                                          ; $55f5: $bb
    ld b, [hl]                                    ; $55f6: $46
    sbc h                                         ; $55f7: $9c
    jp Jump_03b_4c5f                              ; $55f8: $c3 $5f $4c


    ld de, $bbde                                  ; $55fb: $11 $de $bb
    db $ec                                        ; $55fe: $ec
    sra d                                         ; $55ff: $cb $2a
    db $ec                                        ; $5601: $ec
    ccf                                           ; $5602: $3f
    rst $08                                       ; $5603: $cf
    ld c, $c5                                     ; $5604: $0e $c5
    and $75                                       ; $5606: $e6 $75
    ld [hl], l                                    ; $5608: $75
    sub e                                         ; $5609: $93
    sub a                                         ; $560a: $97
    add hl, sp                                    ; $560b: $39
    ld c, h                                       ; $560c: $4c
    ld e, l                                       ; $560d: $5d
    ret c                                         ; $560e: $d8

    inc [hl]                                      ; $560f: $34
    ld [hl], l                                    ; $5610: $75
    ld [hl], l                                    ; $5611: $75
    sub a                                         ; $5612: $97
    xor $45                                       ; $5613: $ee $45
    ld e, d                                       ; $5615: $5a
    rst $20                                       ; $5616: $e7
    ld l, a                                       ; $5617: $6f
    nop                                           ; $5618: $00
    ld a, l                                       ; $5619: $7d
    sbc d                                         ; $561a: $9a
    db $fc                                        ; $561b: $fc
    ld e, [hl]                                    ; $561c: $5e
    and h                                         ; $561d: $a4
    ld [hl], l                                    ; $561e: $75
    ld e, $3e                                     ; $561f: $1e $3e
    call z, $e77d                                 ; $5621: $cc $7d $e7
    ei                                            ; $5624: $fb
    push hl                                       ; $5625: $e5
    dec c                                         ; $5626: $0d
    nop                                           ; $5627: $00
    or $5c                                        ; $5628: $f6 $5c
    jp c, $9cf8                                   ; $562a: $da $f8 $9c

    push bc                                       ; $562d: $c5
    ld [hl], c                                    ; $562e: $71
    call nc, $9df8                                ; $562f: $d4 $f8 $9d
    sbc a                                         ; $5632: $9f
    and c                                         ; $5633: $a1
    sbc b                                         ; $5634: $98
    sbc a                                         ; $5635: $9f
    rst $20                                       ; $5636: $e7
    inc e                                         ; $5637: $1c
    cp $20                                        ; $5638: $fe $20
    ld a, c                                       ; $563a: $79
    ld e, h                                       ; $563b: $5c
    daa                                           ; $563c: $27
    set 1, a                                      ; $563d: $cb $cf
    ld [hl], e                                    ; $563f: $73
    ld b, [hl]                                    ; $5640: $46
    sbc d                                         ; $5641: $9a
    add $2f                                       ; $5642: $c6 $2f
    scf                                           ; $5644: $37
    nop                                           ; $5645: $00
    ld bc, $9e8e                                  ; $5646: $01 $8e $9e
    or e                                          ; $5649: $b3
    jr c, jr_03b_55da                             ; $564a: $38 $8e

    ld a, [de]                                    ; $564c: $1a
    xor e                                         ; $564d: $ab
    adc $33                                       ; $564e: $ce $33
    ld c, d                                       ; $5650: $4a
    sub a                                         ; $5651: $97
    adc $73                                       ; $5652: $ce $73
    ld c, $67                                     ; $5654: $0e $67
    call c, $c97b                                 ; $5656: $dc $7b $c9
    dec de                                        ; $5659: $1b
    nop                                           ; $565a: $00
    ld a, l                                       ; $565b: $7d
    ld [hl], e                                    ; $565c: $73

jr_03b_565d:
    call nc, $b5d8                                ; $565d: $d4 $d8 $b5
    jp nz, $a97e                                  ; $5660: $c2 $7e $a9

    rst $30                                       ; $5663: $f7
    ld a, l                                       ; $5664: $7d
    db $e3                                        ; $5665: $e3
    ei                                            ; $5666: $fb
    ld e, a                                       ; $5667: $5f
    ld h, c                                       ; $5668: $61
    cp a                                          ; $5669: $bf
    call nc, $001b                                ; $566a: $d4 $1b $00
    db $dd                                        ; $566d: $dd
    inc bc                                        ; $566e: $03
    cp a                                          ; $566f: $bf
    ld b, e                                       ; $5670: $43
    ld e, l                                       ; $5671: $5d
    ldh a, [$3b]                                  ; $5672: $f0 $3b
    push hl                                       ; $5674: $e5
    and l                                         ; $5675: $a5
    daa                                           ; $5676: $27
    nop                                           ; $5677: $00
    db $dd                                        ; $5678: $dd
    xor a                                         ; $5679: $af
    ld e, [hl]                                    ; $567a: $5e
    sbc b                                         ; $567b: $98
    ld [hl-], a                                   ; $567c: $32
    adc e                                         ; $567d: $8b
    xor e                                         ; $567e: $ab
    ld a, [hl-]                                   ; $567f: $3a
    call z, $77e9                                 ; $5680: $cc $e9 $77
    call nz, $17e6                                ; $5683: $c4 $e6 $17
    db $fc                                        ; $5686: $fc
    ld c, [hl]                                    ; $5687: $4e
    ld a, c                                       ; $5688: $79
    jp hl                                         ; $5689: $e9


    add hl, bc                                    ; $568a: $09
    nop                                           ; $568b: $00
    db $dd                                        ; $568c: $dd
    inc bc                                        ; $568d: $03
    cp a                                          ; $568e: $bf
    ld b, e                                       ; $568f: $43
    sbc l                                         ; $5690: $9d
    or a                                          ; $5691: $b7
    ld b, l                                       ; $5692: $45
    rst $08                                       ; $5693: $cf
    ld d, c                                       ; $5694: $51
    ld h, e                                       ; $5695: $63

jr_03b_5696:
    rst $10                                       ; $5696: $d7
    adc $13                                       ; $5697: $ce $13
    ld l, e                                       ; $5699: $6b
    ld [hl], l                                    ; $569a: $75
    ld [hl], l                                    ; $569b: $75
    ld b, e                                       ; $569c: $43
    sbc a                                         ; $569d: $9f
    jp nc, Jump_000_0013                          ; $569e: $d2 $13 $00

    cp l                                          ; $56a1: $bd
    bit 1, e                                      ; $56a2: $cb $4b
    adc $e2                                       ; $56a4: $ce $e2
    jr c, jr_03b_565d                             ; $56a6: $38 $b5

    cp c                                          ; $56a8: $b9
    rla                                           ; $56a9: $17
    sbc b                                         ; $56aa: $98
    sub $95                                       ; $56ab: $d6 $95
    rra                                           ; $56ad: $1f
    db $e4                                        ; $56ae: $e4
    ld e, [hl]                                    ; $56af: $5e
    ld a, h                                       ; $56b0: $7c
    ld a, e                                       ; $56b1: $7b
    db $fc                                        ; $56b2: $fc
    ld a, c                                       ; $56b3: $79
    xor $3c                                       ; $56b4: $ee $3c
    or c                                          ; $56b6: $b1
    ld d, [hl]                                    ; $56b7: $56
    ld d, a                                       ; $56b8: $57
    scf                                           ; $56b9: $37
    db $f4                                        ; $56ba: $f4
    add hl, hl                                    ; $56bb: $29
    scf                                           ; $56bc: $37
    nop                                           ; $56bd: $00
    db $dd                                        ; $56be: $dd
    ld a, e                                       ; $56bf: $7b
    db $db                                        ; $56c0: $db
    sub $39                                       ; $56c1: $d6 $39
    ld h, d                                       ; $56c3: $62
    sub h                                         ; $56c4: $94
    db $ec                                        ; $56c5: $ec
    add hl, bc                                    ; $56c6: $09
    nop                                           ; $56c7: $00
    rst $20                                       ; $56c8: $e7
    ld [hl], h                                    ; $56c9: $74
    and c                                         ; $56ca: $a1
    rst $08                                       ; $56cb: $cf
    sbc d                                         ; $56cc: $9a
    ld h, e                                       ; $56cd: $63
    sbc c                                         ; $56ce: $99
    ld a, $c6                                     ; $56cf: $3e $c6
    sbc h                                         ; $56d1: $9c
    ld [hl], l                                    ; $56d2: $75
    jp z, $ff83                                   ; $56d3: $ca $83 $ff

    ld b, $dd                                     ; $56d6: $06 $dd
    inc bc                                        ; $56d8: $03
    jr z, jr_03b_5714                             ; $56d9: $28 $39

    db $e3                                        ; $56db: $e3
    cp d                                          ; $56dc: $ba

jr_03b_56dd:
    jp z, $02ec                                   ; $56dd: $ca $ec $02

    rst $00                                       ; $56e0: $c7
    ld [hl-], a                                   ; $56e1: $32
    ld a, l                                       ; $56e2: $7d
    adc h                                         ; $56e3: $8c
    add hl, sp                                    ; $56e4: $39
    db $eb                                        ; $56e5: $eb
    sub h                                         ; $56e6: $94
    rlca                                          ; $56e7: $07
    ld a, a                                       ; $56e8: $7f
    ld c, a                                       ; $56e9: $4f
    nop                                           ; $56ea: $00
    ld d, a                                       ; $56eb: $57
    rst $38                                       ; $56ec: $ff
    jr nc, jr_03b_5696                            ; $56ed: $30 $a7

    inc d                                         ; $56ef: $14
    sbc e                                         ; $56f0: $9b
    sbc a                                         ; $56f1: $9f
    jp $8d29                                      ; $56f2: $c3 $29 $8d


    jr nc, jr_03b_56dd                            ; $56f5: $30 $e6

    or h                                          ; $56f7: $b4
    dec l                                         ; $56f8: $2d

Jump_03b_56f9:
    ld [hl], d                                    ; $56f9: $72
    dec h                                         ; $56fa: $25
    rst $20                                       ; $56fb: $e7
    ld e, e                                       ; $56fc: $5b
    ccf                                           ; $56fd: $3f
    jp z, Jump_000_17c3                           ; $56fe: $ca $c3 $17

    inc de                                        ; $5701: $13
    ld h, e                                       ; $5702: $63
    adc d                                         ; $5703: $8a
    ret c                                         ; $5704: $d8

    ld [c], a                                     ; $5705: $e2
    cp l                                          ; $5706: $bd
    res 1, b                                      ; $5707: $cb $88
    ld e, [hl]                                    ; $5709: $5e
    cp d                                          ; $570a: $ba
    ld [hl], h                                    ; $570b: $74
    ld d, $c7                                     ; $570c: $16 $c7
    cp l                                          ; $570e: $bd
    ld l, a                                       ; $570f: $6f
    sub l                                         ; $5710: $95

Call_03b_5711:
    add [hl]                                      ; $5711: $86
    cpl                                           ; $5712: $2f
    dec h                                         ; $5713: $25

jr_03b_5714:
    rla                                           ; $5714: $17
    and [hl]                                      ; $5715: $a6
    inc l                                         ; $5716: $2c
    cp d                                          ; $5717: $ba
    add hl, de                                    ; $5718: $19
    ld b, a                                       ; $5719: $47
    adc h                                         ; $571a: $8c
    ld a, a                                       ; $571b: $7f
    inc bc                                        ; $571c: $03
    db $dd                                        ; $571d: $dd
    cpl                                           ; $571e: $2f
    db $e3                                        ; $571f: $e3
    db $f4                                        ; $5720: $f4
    dec sp                                        ; $5721: $3b
    call nc, Call_03b_4cb1                        ; $5722: $d4 $b1 $4c
    rra                                           ; $5725: $1f
    ld h, e                                       ; $5726: $63
    adc $3a                                       ; $5727: $ce $3a
    push hl                                       ; $5729: $e5
    pop bc                                        ; $572a: $c1
    ccf                                           ; $572b: $3f
    rst $08                                       ; $572c: $cf
    sbc l                                         ; $572d: $9d
    daa                                           ; $572e: $27
    sub $ea                                       ; $572f: $d6 $ea
    ld [$3e86], a                                 ; $5731: $ea $86 $3e
    and l                                         ; $5734: $a5
    daa                                           ; $5735: $27
    nop                                           ; $5736: $00
    ld bc, $e842                                  ; $5737: $01 $42 $e8
    nop                                           ; $573a: $00
    adc h                                         ; $573b: $8c
    ld e, a                                       ; $573c: $5f
    cp b                                          ; $573d: $b8
    rst $18                                       ; $573e: $df
    rla                                           ; $573f: $17
    ret z                                         ; $5740: $c8

    dec [hl]                                      ; $5741: $35
    ld [c], a                                     ; $5742: $e2
    inc a                                         ; $5743: $3c
    ld [hl], a                                    ; $5744: $77
    sbc [hl]                                      ; $5745: $9e
    ld e, b                                       ; $5746: $58
    xor e                                         ; $5747: $ab
    xor e                                         ; $5748: $ab
    dec de                                        ; $5749: $1b
    ld a, [$1b94]                                 ; $574a: $fa $94 $1b
    nop                                           ; $574d: $00
    ld a, l                                       ; $574e: $7d
    db $db                                        ; $574f: $db
    or h                                          ; $5750: $b4
    ld e, c                                       ; $5751: $59
    ld e, h                                       ; $5752: $5c
    and e                                         ; $5753: $a3
    db $fc                                        ; $5754: $fc
    ld l, d                                       ; $5755: $6a
    ld c, [hl]                                    ; $5756: $4e
    xor e                                         ; $5757: $ab
    adc [hl]                                      ; $5758: $8e

Call_03b_5759:
    ld h, l                                       ; $5759: $65
    or l                                          ; $575a: $b5
    ld c, l                                       ; $575b: $4d
    sbc $00                                       ; $575c: $de $00
    db $dd                                        ; $575e: $dd
    cpl                                           ; $575f: $2f
    db $e3                                        ; $5760: $e3
    db $f4                                        ; $5761: $f4
    dec sp                                        ; $5762: $3b
    call nc, Call_03b_4cb1                        ; $5763: $d4 $b1 $4c
    rra                                           ; $5766: $1f
    ld h, e                                       ; $5767: $63
    adc $3a                                       ; $5768: $ce $3a

Call_03b_576a:
    push hl                                       ; $576a: $e5
    pop bc                                        ; $576b: $c1
    cp a                                          ; $576c: $bf
    ldh a, [$e5]                                  ; $576d: $f0 $e5
    ld b, a                                       ; $576f: $47
    adc h                                         ; $5770: $8c
    ld a, [c]                                     ; $5771: $f2
    ld [hl-], a                                   ; $5772: $32
    ld [c], a                                     ; $5773: $e2
    adc $13                                       ; $5774: $ce $13
    ld l, e                                       ; $5776: $6b
    ld [hl], l                                    ; $5777: $75
    ld [hl], l                                    ; $5778: $75
    ld b, e                                       ; $5779: $43
    sbc a                                         ; $577a: $9f
    jp nc, Jump_000_0013                          ; $577b: $d2 $13 $00

    db $dd                                        ; $577e: $dd
    ld [bc], a                                    ; $577f: $02
    add hl, hl                                    ; $5780: $29
    ld [hl], $3f                                  ; $5781: $36 $3f
    add a                                         ; $5783: $87
    xor e                                         ; $5784: $ab
    ld a, [hl]                                    ; $5785: $7e
    adc h                                         ; $5786: $8c
    xor a                                         ; $5787: $af
    push af                                       ; $5788: $f5
    rst $08                                       ; $5789: $cf
    ld [hl], e                                    ; $578a: $73
    push hl                                       ; $578b: $e5
    ld h, a                                       ; $578c: $67
    ld e, [hl]                                    ; $578d: $5e
    ld a, a                                       ; $578e: $7f
    dec [hl]                                      ; $578f: $35
    ld a, l                                       ; $5790: $7d
    ld c, e                                       ; $5791: $4b
    inc hl                                        ; $5792: $23
    sbc h                                         ; $5793: $9c
    or [hl]                                       ; $5794: $b6
    ld h, c                                       ; $5795: $61
    xor [hl]                                      ; $5796: $ae
    db $e4                                        ; $5797: $e4
    call nc, $8d85                                ; $5798: $d4 $85 $8d
    ld a, [c]                                     ; $579b: $f2
    dec a                                         ; $579c: $3d
    nop                                           ; $579d: $00
    db $dd                                        ; $579e: $dd
    ld a, e                                       ; $579f: $7b
    cp e                                          ; $57a0: $bb
    xor [hl]                                      ; $57a1: $ae
    ld [hl-], a                                   ; $57a2: $32
    ld l, d                                       ; $57a3: $6a
    ld c, a                                       ; $57a4: $4f
    nop                                           ; $57a5: $00
    ld bc, $6ad2                                  ; $57a6: $01 $d2 $6a
    ld c, d                                       ; $57a9: $4a
    sbc $f7                                       ; $57aa: $de $f7
    dec e                                         ; $57ac: $1d
    cp a                                          ; $57ad: $bf
    xor h                                         ; $57ae: $ac
    jp nz, $0bfe                                  ; $57af: $c2 $fe $0b

    db $d3                                        ; $57b2: $d3
    adc e                                         ; $57b3: $8b
    call $82eb                                    ; $57b4: $cd $eb $82
    ld l, a                                       ; $57b7: $6f
    jr z, jr_03b_57ef                             ; $57b8: $28 $35

    rst $20                                       ; $57ba: $e7
    ld [hl], b                                    ; $57bb: $70
    push de                                       ; $57bc: $d5
    ld e, a                                       ; $57bd: $5f
    ld c, c                                       ; $57be: $49
    cp c                                          ; $57bf: $b9
    rst $28                                       ; $57c0: $ef
    dec de                                        ; $57c1: $1b
    nop                                           ; $57c2: $00
    db $dd                                        ; $57c3: $dd
    cpl                                           ; $57c4: $2f
    ld [hl], c                                    ; $57c5: $71
    ld d, l                                       ; $57c6: $55
    ld h, a                                       ; $57c7: $67
    jp z, $e72b                                   ; $57c8: $ca $2b $e7

    cp c                                          ; $57cb: $b9
    ld [$a4af], a                                 ; $57cc: $ea $af $a4
    db $f4                                        ; $57cf: $f4
    inc b                                         ; $57d0: $04
    halt                                          ; $57d1: $76
    jr c, jr_03b_583e                             ; $57d2: $38 $6a

    ld c, h                                       ; $57d4: $4c
    ld e, l                                       ; $57d5: $5d
    ld hl, sp-$26                                 ; $57d6: $f8 $da
    ld c, d                                       ; $57d8: $4a
    ld c, c                                       ; $57d9: $49
    ld e, l                                       ; $57da: $5d
    add sp, -$18                                  ; $57db: $e8 $e8
    cp c                                          ; $57dd: $b9
    ld d, d                                       ; $57de: $52
    ld [$ecbd], sp                                ; $57df: $08 $bd $ec
    rla                                           ; $57e2: $17
    db $fc                                        ; $57e3: $fc
    ld c, $65                                     ; $57e4: $0e $65
    or l                                          ; $57e6: $b5
    inc sp                                        ; $57e7: $33
    pop bc                                        ; $57e8: $c1
    ld e, h                                       ; $57e9: $5c
    and l                                         ; $57ea: $a5
    ld de, $de63                                  ; $57eb: $11 $63 $de
    rst $30                                       ; $57ee: $f7

Call_03b_57ef:
jr_03b_57ef:
    xor l                                         ; $57ef: $ad
    ld e, h                                       ; $57f0: $5c
    db $e4                                        ; $57f1: $e4
    ld b, d                                       ; $57f2: $42
    ld b, a                                       ; $57f3: $47

jr_03b_57f4:
    rst $08                                       ; $57f4: $cf
    ld a, c                                       ; $57f5: $79
    ld l, d                                       ; $57f6: $6a
    ld e, b                                       ; $57f7: $58
    or d                                          ; $57f8: $b2
    ld a, [hl]                                    ; $57f9: $7e
    ld e, c                                       ; $57fa: $59
    ld sp, hl                                     ; $57fb: $f9
    sbc c                                         ; $57fc: $99
    rst $28                                       ; $57fd: $ef
    or b                                          ; $57fe: $b0
    rst $38                                       ; $57ff: $ff
    rst $08                                       ; $5800: $cf
    cp b                                          ; $5801: $b8
    ld b, a                                       ; $5802: $47
    sbc a                                         ; $5803: $9f
    xor e                                         ; $5804: $ab
    adc c                                         ; $5805: $89
    xor c                                         ; $5806: $a9
    adc e                                         ; $5807: $8b
    ld e, h                                       ; $5808: $5c
    ret                                           ; $5809: $c9


    ld d, c                                       ; $580a: $51
    ld b, e                                       ; $580b: $43
    jp z, Jump_000_0deb                           ; $580c: $ca $eb $0d

    nop                                           ; $580f: $00
    sub a                                         ; $5810: $97
    ld a, l                                       ; $5811: $7d
    ld e, c                                       ; $5812: $59
    add l                                         ; $5813: $85
    db $fd                                        ; $5814: $fd
    rla                                           ; $5815: $17
    and [hl]                                      ; $5816: $a6
    rla                                           ; $5817: $17
    sbc e                                         ; $5818: $9b
    rst $10                                       ; $5819: $d7
    ld de, $624d                                  ; $581a: $11 $4d $62
    sub h                                         ; $581d: $94
    sub a                                         ; $581e: $97
    ld a, l                                       ; $581f: $7d
    add c                                         ; $5820: $81
    ld [hl], d                                    ; $5821: $72
    pop hl                                        ; $5822: $e1
    set 1, a                                      ; $5823: $cb $cf
    ld [c], a                                     ; $5825: $e2
    jr c, jr_03b_57f4                             ; $5826: $38 $cc

    add hl, hl                                    ; $5828: $29
    ld d, a                                       ; $5829: $57
    ld h, a                                       ; $582a: $67
    and l                                         ; $582b: $a5
    ld d, c                                       ; $582c: $51
    ld a, [hl]                                    ; $582d: $7e
    pop af                                        ; $582e: $f1
    ld sp, $0de6                                  ; $582f: $31 $e6 $0d
    nop                                           ; $5832: $00
    db $dd                                        ; $5833: $dd
    ld a, e                                       ; $5834: $7b
    db $db                                        ; $5835: $db
    sub $39                                       ; $5836: $d6 $39
    adc e                                         ; $5838: $8b
    xor e                                         ; $5839: $ab
    jp c, Jump_000_0013                           ; $583a: $da $13 $00

    cp l                                          ; $583d: $bd

jr_03b_583e:
    inc de                                        ; $583e: $13
    rst $20                                       ; $583f: $e7
    ldh a, [$57]                                  ; $5840: $f0 $57
    ld l, c                                       ; $5842: $69
    db $ec                                        ; $5843: $ec
    rst $30                                       ; $5844: $f7
    inc sp                                        ; $5845: $33
    add hl, hl                                    ; $5846: $29
    sbc l                                         ; $5847: $9d
    adc a                                         ; $5848: $8f
    cp a                                          ; $5849: $bf
    jp z, Jump_000_2f17                           ; $584a: $ca $17 $2f

    ld [hl], $7f                                  ; $584d: $36 $7f
    inc bc                                        ; $584f: $03
    db $dd                                        ; $5850: $dd
    xor [hl]                                      ; $5851: $ae
    cp $45                                        ; $5852: $fe $45
    ld [hl+], a                                   ; $5854: $22
    sub h                                         ; $5855: $94
    ld [hl], e                                    ; $5856: $73
    ld hl, sp+$3d                                 ; $5857: $f8 $3d
    nop                                           ; $5859: $00
    db $dd                                        ; $585a: $dd
    db $ec                                        ; $585b: $ec
    inc [hl]                                      ; $585c: $34
    cp d                                          ; $585d: $ba
    sub b                                         ; $585e: $90
    add sp, -$4d                                  ; $585f: $e8 $b3
    rst $00                                       ; $5861: $c7
    cp d                                          ; $5862: $ba
    push af                                       ; $5863: $f5
    ld d, d                                       ; $5864: $52
    sbc e                                         ; $5865: $9b
    sub l                                         ; $5866: $95
    sbc a                                         ; $5867: $9f
    ld c, c                                       ; $5868: $49
    sub e                                         ; $5869: $93
    sub d                                         ; $586a: $92
    pop af                                        ; $586b: $f1
    ld b, a                                       ; $586c: $47
    adc l                                         ; $586d: $8d
    cpl                                           ; $586e: $2f
    ld e, l                                       ; $586f: $5d
    inc hl                                        ; $5870: $23
    ld c, [hl]                                    ; $5871: $4e
    db $dd                                        ; $5872: $dd
    or h                                          ; $5873: $b4
    push bc                                       ; $5874: $c5
    sub [hl]                                      ; $5875: $96
    dec a                                         ; $5876: $3d
    ld h, [hl]                                    ; $5877: $66
    ld d, a                                       ; $5878: $57
    and [hl]                                      ; $5879: $a6
    adc a                                         ; $587a: $8f
    ld sp, $9d67                                  ; $587b: $31 $67 $9d
    ld a, [c]                                     ; $587e: $f2
    ldh [$1f], a                                  ; $587f: $e0 $1f
    ld [hl], l                                    ; $5881: $75
    add a                                         ; $5882: $87
    or $fe                                        ; $5883: $f6 $fe
    ret nc                                        ; $5885: $d0

    push bc                                       ; $5886: $c5
    sbc l                                         ; $5887: $9d
    inc hl                                        ; $5888: $23
    ld l, a                                       ; $5889: $6f
    ld [de], a                                    ; $588a: $12
    sbc e                                         ; $588b: $9b
    ld e, $7a                                     ; $588c: $1e $7a
    xor a                                         ; $588e: $af

Jump_03b_588f:
    sbc e                                         ; $588f: $9b
    db $fd                                        ; $5890: $fd
    ld l, e                                       ; $5891: $6b
    db $fc                                        ; $5892: $fc
    dec d                                         ; $5893: $15
    ld b, a                                       ; $5894: $47
    jr z, @+$7d                                   ; $5895: $28 $7b

    nop                                           ; $5897: $00
    db $dd                                        ; $5898: $dd
    rst $08                                       ; $5899: $cf
    or c                                          ; $589a: $b1
    ld b, l                                       ; $589b: $45

jr_03b_589c:
    rst $08                                       ; $589c: $cf
    add l                                         ; $589d: $85
    adc [hl]                                      ; $589e: $8e
    ld a, $47                                     ; $589f: $3e $47
    inc [hl]                                      ; $58a1: $34
    adc c                                         ; $58a2: $89
    ld d, c                                       ; $58a3: $51
    ld e, [hl]                                    ; $58a4: $5e
    and $f0                                       ; $58a5: $e6 $f0
    ld a, e                                       ; $58a7: $7b
    ld [bc], a                                    ; $58a8: $02
    cp l                                          ; $58a9: $bd
    add l                                         ; $58aa: $85
    add hl, sp                                    ; $58ab: $39
    adc e                                         ; $58ac: $8b
    db $e3                                        ; $58ad: $e3
    add d                                         ; $58ae: $82
    ld e, h                                       ; $58af: $5c
    and l                                         ; $58b0: $a5
    ld l, c                                       ; $58b1: $69
    call z, $fc39                                 ; $58b2: $cc $39 $fc
    ld de, $b2c7                                  ; $58b5: $11 $c7 $b2
    ld a, [bc]                                    ; $58b8: $0a
    dec [hl]                                      ; $58b9: $35
    jp c, Jump_03b_5c74                           ; $58ba: $da $74 $5c

    ret                                           ; $58bd: $c9


    dec de                                        ; $58be: $1b
    nop                                           ; $58bf: $00
    db $dd                                        ; $58c0: $dd
    db $ed                                        ; $58c1: $ed
    ld [hl], h                                    ; $58c2: $74
    call nc, Call_000_2bf8                        ; $58c3: $d4 $f8 $2b
    ccf                                           ; $58c6: $3f
    sub e                                         ; $58c7: $93

jr_03b_58c8:
    jp nc, $f8f9                                  ; $58c8: $d2 $f9 $f8

    or e                                          ; $58cb: $b3
    jr c, jr_03b_589c                             ; $58cc: $38 $ce

    ld [c], a                                     ; $58ce: $e2
    ld a, [de]                                    ; $58cf: $1a
    add l                                         ; $58d0: $85
    jp c, Jump_000_0013                           ; $58d1: $da $13 $00

    ld a, l                                       ; $58d4: $7d
    ld [hl], e                                    ; $58d5: $73
    ld b, c                                       ; $58d6: $41
    adc [hl]                                      ; $58d7: $8e
    ld l, b                                       ; $58d8: $68
    ld [de], a                                    ; $58d9: $12
    and e                                         ; $58da: $a3
    cp h                                          ; $58db: $bc
    rst $08                                       ; $58dc: $cf
    ld h, c                                       ; $58dd: $61
    ld b, e                                       ; $58de: $43
    ret z                                         ; $58df: $c8

    pop hl                                        ; $58e0: $e1
    rst $18                                       ; $58e1: $df
    nop                                           ; $58e2: $00
    db $dd                                        ; $58e3: $dd
    db $ed                                        ; $58e4: $ed
    ld e, a                                       ; $58e5: $5f
    ld d, a                                       ; $58e6: $57
    scf                                           ; $58e7: $37
    ld a, c                                       ; $58e8: $79
    sbc a                                         ; $58e9: $9f
    inc hl                                        ; $58ea: $23
    adc [hl]                                      ; $58eb: $8e
    ld h, l                                       ; $58ec: $65
    dec d                                         ; $58ed: $15
    ld l, d                                       ; $58ee: $6a

jr_03b_58ef:
    or h                                          ; $58ef: $b4
    jp hl                                         ; $58f0: $e9


    cp b                                          ; $58f1: $b8
    sub d                                         ; $58f2: $92
    dec a                                         ; $58f3: $3d
    rst $10                                       ; $58f4: $d7
    ld e, e                                       ; $58f5: $5b
    sbc b                                         ; $58f6: $98
    or e                                          ; $58f7: $b3
    jr c, jr_03b_58c8                             ; $58f8: $38 $ce

    pop hl                                        ; $58fa: $e1
    rrca                                          ; $58fb: $0f
    ld [$2812], a                                 ; $58fc: $ea $12 $28
    res 5, a                                      ; $58ff: $cb $af
    inc d                                         ; $5901: $14
    ld d, [hl]                                    ; $5902: $56
    cp [hl]                                       ; $5903: $be
    di                                            ; $5904: $f3
    ei                                            ; $5905: $fb
    ld [bc], a                                    ; $5906: $02
    push hl                                       ; $5907: $e5
    ld l, d                                       ; $5908: $6a
    ld h, a                                       ; $5909: $67
    ld e, l                                       ; $590a: $5d
    ld hl, sp+$42                                 ; $590b: $f8 $42
    db $d3                                        ; $590d: $d3
    ld a, h                                       ; $590e: $7c
    xor $e7                                       ; $590f: $ee $e7
    ldh a, [$67]                                  ; $5911: $f0 $67
    ld d, d                                       ; $5913: $52
    ld a, [hl-]                                   ; $5914: $3a
    rra                                           ; $5915: $1f
    rst $38                                       ; $5916: $ff
    sbc $65                                       ; $5917: $de $65
    ld e, a                                       ; $5919: $5f
    ld d, [hl]                                    ; $591a: $56
    ld h, c                                       ; $591b: $61
    rst $38                                       ; $591c: $ff
    ld a, c                                       ; $591d: $79
    halt                                          ; $591e: $76
    jr z, jr_03b_5957                             ; $591f: $28 $36

    xor a                                         ; $5921: $af
    xor e                                         ; $5922: $ab
    ld h, h                                       ; $5923: $64
    xor c                                         ; $5924: $a9
    ld d, b                                       ; $5925: $50
    or $ab                                        ; $5926: $f6 $ab
    sbc e                                         ; $5928: $9b
    cp h                                          ; $5929: $bc
    call c, $dd00                                 ; $592a: $dc $00 $dd
    cpl                                           ; $592d: $2f
    ld [hl], c                                    ; $592e: $71
    ld d, l                                       ; $592f: $55
    ld b, a                                       ; $5930: $47
    sbc l                                         ; $5931: $9d
    jp $af5d                                      ; $5932: $c3 $5d $af


    adc a                                         ; $5935: $8f
    ld sp, $9d67                                  ; $5936: $31 $67 $9d
    ld a, [c]                                     ; $5939: $f2

Jump_03b_593a:
    ldh [$3f], a                                  ; $593a: $e0 $3f
    or h                                          ; $593c: $b4
    daa                                           ; $593d: $27
    nop                                           ; $593e: $00
    ld a, l                                       ; $593f: $7d
    jr c, jr_03b_58ef                             ; $5940: $38 $ad

    ld a, [hl-]                                   ; $5942: $3a
    sub [hl]                                      ; $5943: $96
    push de                                       ; $5944: $d5
    ld [hl], $09                                  ; $5945: $36 $09
    ld e, a                                       ; $5947: $5f
    ld c, b                                       ; $5948: $48
    ret                                           ; $5949: $c9


    ld h, c                                       ; $594a: $61
    adc [hl]                                      ; $594b: $8e
    ld h, l                                       ; $594c: $65
    pop de                                        ; $594d: $d1
    ld e, c                                       ; $594e: $59
    di                                            ; $594f: $f3
    ld b, $7d                                     ; $5950: $06 $7d
    inc de                                        ; $5952: $13
    cp [hl]                                       ; $5953: $be
    sub d                                         ; $5954: $92
    db $d3                                        ; $5955: $d3
    ld b, [hl]                                    ; $5956: $46

jr_03b_5957:
    adc h                                         ; $5957: $8c
    ld a, c                                       ; $5958: $79
    inc bc                                        ; $5959: $03
    ld a, l                                       ; $595a: $7d
    db $db                                        ; $595b: $db
    sbc d                                         ; $595c: $9a
    rst $20                                       ; $595d: $e7
    rst $18                                       ; $595e: $df
    nop                                           ; $595f: $00
    rst $20                                       ; $5960: $e7
    ld h, e                                       ; $5961: $63
    inc h                                         ; $5962: $24
    add $df                                       ; $5963: $c6 $df
    push af                                       ; $5965: $f5
    rst $20                                       ; $5966: $e7
    ld [hl], b                                    ; $5967: $70
    ld c, d                                       ; $5968: $4a
    ret z                                         ; $5969: $c8

    and c                                         ; $596a: $a1
    rst $38                                       ; $596b: $ff
    ld b, e                                       ; $596c: $43
    rst $28                                       ; $596d: $ef
    ld e, l                                       ; $596e: $5d
    call nz, $8485                                ; $596f: $c4 $85 $84
    ld a, [hl]                                    ; $5972: $7e
    or l                                          ; $5973: $b5
    inc sp                                        ; $5974: $33
    pop bc                                        ; $5975: $c1
    cp h                                          ; $5976: $bc
    ld bc, $b0e7                                  ; $5977: $01 $e7 $b0
    ld a, [hl]                                    ; $597a: $7e
    ld l, l                                       ; $597b: $6d
    rst $28                                       ; $597c: $ef
    ld [hl], e                                    ; $597d: $73
    pop hl                                        ; $597e: $e1
    res 5, a                                      ; $597f: $cb $af
    or [hl]                                       ; $5981: $b6
    cp c                                          ; $5982: $b9
    ld bc, $59f6                                  ; $5983: $01 $f6 $59
    ld a, [hl]                                    ; $5986: $7e
    sbc [hl]                                      ; $5987: $9e
    ld b, e                                       ; $5988: $43
    rst $00                                       ; $5989: $c7
    ld c, d                                       ; $598a: $4a
    sbc $00                                       ; $598b: $de $00
    db $dd                                        ; $598d: $dd
    ld a, d                                       ; $598e: $7a
    ld a, a                                       ; $598f: $7f
    add sp, -$1e                                  ; $5990: $e8 $e2
    adc $91                                       ; $5992: $ce $91
    scf                                           ; $5994: $37
    adc c                                         ; $5995: $89
    ld c, l                                       ; $5996: $4d

Call_03b_5997:
    ld a, e                                       ; $5997: $7b
    nop                                           ; $5998: $00
    ld h, a                                       ; $5999: $67
    scf                                           ; $599a: $37
    ld h, d                                       ; $599b: $62
    add l                                         ; $599c: $85
    ret c                                         ; $599d: $d8

    ld a, h                                       ; $599e: $7c
    xor $77                                       ; $599f: $ee $77
    sbc [hl]                                      ; $59a1: $9e
    ld e, b                                       ; $59a2: $58
    xor e                                         ; $59a3: $ab
    xor e                                         ; $59a4: $ab
    dec de                                        ; $59a5: $1b
    ld a, [$f814]                                 ; $59a6: $fa $14 $f8
    inc l                                         ; $59a9: $2c
    adc [hl]                                      ; $59aa: $8e
    jp nc, $de7c                                  ; $59ab: $d2 $7c $de

    db $eb                                        ; $59ae: $eb
    push hl                                       ; $59af: $e5
    ld e, c                                       ; $59b0: $59
    ld e, $23                                     ; $59b1: $1e $23
    ld l, a                                       ; $59b3: $6f
    nop                                           ; $59b4: $00
    or $59                                        ; $59b5: $f6 $59
    cp $06                                        ; $59b7: $fe $06
    ld h, a                                       ; $59b9: $67
    scf                                           ; $59ba: $37
    ld h, d                                       ; $59bb: $62
    add l                                         ; $59bc: $85
    ret c                                         ; $59bd: $d8

    ld a, h                                       ; $59be: $7c
    xor $57                                       ; $59bf: $ee $57
    ld a, [hl]                                    ; $59c1: $7e
    cp l                                          ; $59c2: $bd
    ld e, a                                       ; $59c3: $5f
    ld a, a                                       ; $59c4: $7f
    rst $20                                       ; $59c5: $e7
    adc c                                         ; $59c6: $89
    or l                                          ; $59c7: $b5
    cp d                                          ; $59c8: $ba
    cp d                                          ; $59c9: $ba
    and c                                         ; $59ca: $a1
    ld c, a                                       ; $59cb: $4f
    cp c                                          ; $59cc: $b9
    rst $10                                       ; $59cd: $d7
    res 6, e                                      ; $59ce: $cb $b3
    inc a                                         ; $59d0: $3c
    ld b, [hl]                                    ; $59d1: $46
    jp nz, Jump_03b_7167                          ; $59d2: $c2 $67 $71

Jump_03b_59d5:
    sub h                                         ; $59d5: $94
    and $f3                                       ; $59d6: $e6 $f3
    ld b, $dd                                     ; $59d8: $06 $dd
    ld l, $a5                                     ; $59da: $2e $a5
    ld [hl], c                                    ; $59dc: $71
    inc d                                         ; $59dd: $14
    rst $38                                       ; $59de: $ff
    dec a                                         ; $59df: $3d
    ld h, [hl]                                    ; $59e0: $66
    ld d, a                                       ; $59e1: $57
    and [hl]                                      ; $59e2: $a6
    adc a                                         ; $59e3: $8f
    ld sp, $9d67                                  ; $59e4: $31 $67 $9d
    ld a, [c]                                     ; $59e7: $f2
    ldh [$1f], a                                  ; $59e8: $e0 $1f
    ld [hl], l                                    ; $59ea: $75
    add a                                         ; $59eb: $87
    or $fe                                        ; $59ec: $f6 $fe
    ret nc                                        ; $59ee: $d0

    push bc                                       ; $59ef: $c5
    sbc l                                         ; $59f0: $9d
    inc hl                                        ; $59f1: $23
    ld l, a                                       ; $59f2: $6f
    ld [de], a                                    ; $59f3: $12
    sbc e                                         ; $59f4: $9b
    ld e, $7a                                     ; $59f5: $1e $7a
    inc bc                                        ; $59f7: $03
    cp l                                          ; $59f8: $bd
    inc a                                         ; $59f9: $3c
    bit 4, e                                      ; $59fa: $cb $63
    inc h                                         ; $59fc: $24
    ld a, h                                       ; $59fd: $7c
    ld d, $47                                     ; $59fe: $16 $47
    ld l, c                                       ; $5a00: $69
    ld a, $6f                                     ; $5a01: $3e $6f
    nop                                           ; $5a03: $00
    db $dd                                        ; $5a04: $dd
    adc $6e                                       ; $5a05: $ce $6e
    call nz, $b10a                                ; $5a07: $c4 $0a $b1
    ld sp, hl                                     ; $5a0a: $f9
    call c, $3cef                                 ; $5a0b: $dc $ef $3c
    or c                                          ; $5a0e: $b1
    ld d, [hl]                                    ; $5a0f: $56
    ld d, a                                       ; $5a10: $57
    scf                                           ; $5a11: $37
    db $f4                                        ; $5a12: $f4
    add hl, hl                                    ; $5a13: $29
    ldh a, [$d9]                                  ; $5a14: $f0 $d9
    cp a                                          ; $5a16: $bf
    adc b                                         ; $5a17: $88
    or l                                          ; $5a18: $b5
    rst $00                                       ; $5a19: $c7
    db $ec                                        ; $5a1a: $ec
    ld c, h                                       ; $5a1b: $4c
    ldh a, [$e7]                                  ; $5a1c: $f0 $e7
    ld [hl], b                                    ; $5a1e: $70
    sub l                                         ; $5a1f: $95
    and [hl]                                      ; $5a20: $a6
    pop af                                        ; $5a21: $f1
    ei                                            ; $5a22: $fb
    rst $20                                       ; $5a23: $e7
    dec c                                         ; $5a24: $0d
    nop                                           ; $5a25: $00
    sub a                                         ; $5a26: $97
    cp b                                          ; $5a27: $b8
    xor d                                         ; $5a28: $aa
    db $eb                                        ; $5a29: $eb
    inc [hl]                                      ; $5a2a: $34
    ld [c], a                                     ; $5a2b: $e2
    xor b                                         ; $5a2c: $a8
    pop af                                        ; $5a2d: $f1
    ld h, l                                       ; $5a2e: $65
    ld l, a                                       ; $5a2f: $6f
    ld [hl], c                                    ; $5a30: $71
    ld [hl], $0b                                  ; $5a31: $36 $0b
    ld d, e                                       ; $5a33: $53
    ld d, [hl]                                    ; $5a34: $56
    db $dd                                        ; $5a35: $dd
    ldh a, [rTMA]                                 ; $5a36: $f0 $06
    db $dd                                        ; $5a38: $dd
    ld a, e                                       ; $5a39: $7b
    call $a2db                                    ; $5a3a: $cd $db $a2
    rst $20                                       ; $5a3d: $e7
    ld a, [hl+]                                   ; $5a3e: $2a
    xor a                                         ; $5a3f: $af
    dec a                                         ; $5a40: $3d
    rst $10                                       ; $5a41: $d7
    call $ccae                                    ; $5a42: $cd $ae $cc
    and a                                         ; $5a45: $a7
    call nc, $a62d                                ; $5a46: $d4 $2d $a6
    or h                                          ; $5a49: $b4
    sbc h                                         ; $5a4a: $9c
    rst $20                                       ; $5a4b: $e7
    jp z, Jump_03b_4ceb                           ; $5a4c: $ca $eb $4c

    or b                                          ; $5a4f: $b0
    sbc c                                         ; $5a50: $99
    rst $10                                       ; $5a51: $d7
    ld d, c                                       ; $5a52: $51
    ld h, e                                       ; $5a53: $63
    rst $10                                       ; $5a54: $d7
    jp nz, Jump_03b_7d94                          ; $5a55: $c2 $94 $7d

    ret nc                                        ; $5a58: $d0

    and [hl]                                      ; $5a59: $a6
    rst $00                                       ; $5a5a: $c7
    cp d                                          ; $5a5b: $ba
    ld e, l                                       ; $5a5c: $5d
    sub h                                         ; $5a5d: $94
    ld a, [hl-]                                   ; $5a5e: $3a
    inc de                                        ; $5a5f: $13
    ld l, h                                       ; $5a60: $6c
    ld h, $75                                     ; $5a61: $26 $75
    ld a, l                                       ; $5a63: $7d
    cpl                                           ; $5a64: $2f
    ld e, [hl]                                    ; $5a65: $5e
    add sp, -$18                                  ; $5a66: $e8 $e8
    adc c                                         ; $5a68: $89
    inc hl                                        ; $5a69: $23
    ld b, [hl]                                    ; $5a6a: $46
    ld a, c                                       ; $5a6b: $79
    jp hl                                         ; $5a6c: $e9


    ld bc, $7d00                                  ; $5a6d: $01 $00 $7d
    ld [hl], e                                    ; $5a70: $73
    sub c                                         ; $5a71: $91
    bit 2, d                                      ; $5a72: $cb $52
    ld l, c                                       ; $5a74: $69

Call_03b_5a75:
    sbc [hl]                                      ; $5a75: $9e
    ld a, [hl-]                                   ; $5a76: $3a
    rst $08                                       ; $5a77: $cf
    push de                                       ; $5a78: $d5
    ld c, l                                       ; $5a79: $4d
    ld e, [hl]                                    ; $5a7a: $5e
    ld b, [hl]                                    ; $5a7b: $46
    inc e                                         ; $5a7c: $1c
    set 4, d                                      ; $5a7d: $cb $e2
    ld [hl], a                                    ; $5a7f: $77
    adc d                                         ; $5a80: $8a
    dec l                                         ; $5a81: $2d
    adc $73                                       ; $5a82: $ce $73
    adc a                                         ; $5a84: $8f
    ld c, $4d                                     ; $5a85: $0e $4d
    ld c, e                                       ; $5a87: $4b
    cp l                                          ; $5a88: $bd
    ld bc, $7197                                  ; $5a89: $01 $97 $71
    and c                                         ; $5a8c: $a1
    and e                                         ; $5a8d: $a3
    and a                                         ; $5a8e: $a7
    xor [hl]                                      ; $5a8f: $ae
    ld h, [hl]                                    ; $5a90: $66
    and h                                         ; $5a91: $a4
    adc h                                         ; $5a92: $8c
    cp b                                          ; $5a93: $b8
    ld h, d                                       ; $5a94: $62
    sub e                                         ; $5a95: $93
    ld a, [bc]                                    ; $5a96: $0a
    sbc a                                         ; $5a97: $9f
    or [hl]                                       ; $5a98: $b6
    jp hl                                         ; $5a99: $e9


    rla                                           ; $5a9a: $17
    ld [$773c], a                                 ; $5a9b: $ea $3c $77
    sbc [hl]                                      ; $5a9e: $9e
    ld e, b                                       ; $5a9f: $58
    xor e                                         ; $5aa0: $ab
    xor e                                         ; $5aa1: $ab
    dec de                                        ; $5aa2: $1b
    ld a, [$8594]                                 ; $5aa3: $fa $94 $85
    add hl, hl                                    ; $5aa6: $29
    dec hl                                        ; $5aa7: $2b
    ccf                                           ; $5aa8: $3f
    ld c, h                                       ; $5aa9: $4c
    inc de                                        ; $5aaa: $13
    db $e4                                        ; $5aab: $e4
    ld a, l                                       ; $5aac: $7d
    rst $18                                       ; $5aad: $df
    ld hl, $a725                                  ; $5aae: $21 $25 $a7
    or [hl]                                       ; $5ab1: $b6
    dec h                                         ; $5ab2: $25
    and a                                         ; $5ab3: $a7
    ld l, l                                       ; $5ab4: $6d

jr_03b_5ab5:
    sub c                                         ; $5ab5: $91
    dec bc                                        ; $5ab6: $0b
    ld e, e                                       ; $5ab7: $5b
    add hl, hl                                    ; $5ab8: $29
    adc a                                         ; $5ab9: $8f
    scf                                           ; $5aba: $37
    nop                                           ; $5abb: $00
    halt                                          ; $5abc: $76
    ld a, [de]                                    ; $5abd: $1a
    ld d, d                                       ; $5abe: $52
    ld [hl], d                                    ; $5abf: $72
    ld d, $c7                                     ; $5ac0: $16 $c7
    ld b, c                                       ; $5ac2: $41
    adc a                                         ; $5ac3: $8f
    xor h                                         ; $5ac4: $ac
    ld d, e                                       ; $5ac5: $53
    ld [hl], a                                    ; $5ac6: $77
    pop de                                        ; $5ac7: $d1
    rst $08                                       ; $5ac8: $cf
    ld h, h                                       ; $5ac9: $64
    ld hl, sp-$0d                                 ; $5aca: $f8 $f3

jr_03b_5acc:
    ld e, h                                       ; $5acc: $5c
    ld sp, hl                                     ; $5acd: $f9
    sbc c                                         ; $5ace: $99
    rst $10                                       ; $5acf: $d7
    rra                                           ; $5ad0: $1f
    dec [hl]                                      ; $5ad1: $35
    ld [hl], d                                    ; $5ad2: $72
    ld a, a                                       ; $5ad3: $7f
    ld [hl], b                                    ; $5ad4: $70
    sbc $eb                                       ; $5ad5: $de $eb
    ld d, $58                                     ; $5ad7: $16 $58
    xor h                                         ; $5ad9: $ac
    ld sp, $6948                                  ; $5ada: $31 $48 $69
    cp b                                          ; $5add: $b8
    ld d, d                                       ; $5ade: $52
    ld e, b                                       ; $5adf: $58
    ld sp, hl                                     ; $5ae0: $f9
    ld b, c                                       ; $5ae1: $41
    adc a                                         ; $5ae2: $8f
    adc a                                         ; $5ae3: $8f
    ld a, $a7                                     ; $5ae4: $3e $a7
    ld l, h                                       ; $5ae6: $6c
    cp d                                          ; $5ae7: $ba
    ccf                                           ; $5ae8: $3f
    jr c, jr_03b_5b60                             ; $5ae9: $38 $75

    ld c, d                                       ; $5aeb: $4a
    ret z                                         ; $5aec: $c8

    dec [hl]                                      ; $5aed: $35
    sbc a                                         ; $5aee: $9f
    jp c, $0003                                   ; $5aef: $da $03 $00

    add c                                         ; $5af2: $81
    ld l, l                                       ; $5af3: $6d
    ld d, $d7                                     ; $5af4: $16 $d7
    jr z, jr_03b_5acc                             ; $5af6: $28 $d4

    jp hl                                         ; $5af8: $e9


    ld [hl], a                                    ; $5af9: $77
    jr z, jr_03b_5b27                             ; $5afa: $28 $2b

    xor c                                         ; $5afc: $a9
    dec bc                                        ; $5afd: $0b
    dec e                                         ; $5afe: $1d
    add $d4                                       ; $5aff: $c6 $d4
    ld a, c                                       ; $5b01: $79
    xor [hl]                                      ; $5b02: $ae
    db $fc                                        ; $5b03: $fc
    call z, $c3eb                                 ; $5b04: $cc $eb $c3
    ld d, a                                       ; $5b07: $57
    scf                                           ; $5b08: $37
    ld sp, hl                                     ; $5b09: $f9
    sub l                                         ; $5b0a: $95
    call nc, Call_03b_4b09                        ; $5b0b: $d4 $09 $4b
    or $a3                                        ; $5b0e: $f6 $a3
    adc $73                                       ; $5b10: $ce $73
    cpl                                           ; $5b12: $2f
    call nz, Call_03b_679f                        ; $5b13: $c4 $9f $67
    ld e, c                                       ; $5b16: $59
    add l                                         ; $5b17: $85
    ld a, [de]                                    ; $5b18: $1a
    ld l, l                                       ; $5b19: $6d
    ld a, [hl-]                                   ; $5b1a: $3a
    xor [hl]                                      ; $5b1b: $ae
    db $e4                                        ; $5b1c: $e4
    dec c                                         ; $5b1d: $0d
    nop                                           ; $5b1e: $00
    add c                                         ; $5b1f: $81
    sbc h                                         ; $5b20: $9c
    cp d                                          ; $5b21: $ba
    jr nc, jr_03b_5ab5                            ; $5b22: $30 $91

    or e                                          ; $5b24: $b3
    jr c, jr_03b_5b55                             ; $5b25: $38 $2e

jr_03b_5b27:
    ld hl, sp-$2a                                 ; $5b27: $f8 $d6
    add hl, sp                                    ; $5b29: $39
    db $fc                                        ; $5b2a: $fc
    sbc c                                         ; $5b2b: $99
    rst $28                                       ; $5b2c: $ef
    rst $30                                       ; $5b2d: $f7
    di                                            ; $5b2e: $f3
    ld e, h                                       ; $5b2f: $5c
    halt                                          ; $5b30: $76
    ld a, [$a631]                                 ; $5b31: $fa $31 $a6

Call_03b_5b34:
    adc $24                                       ; $5b34: $ce $24
    ld d, [hl]                                    ; $5b36: $56
    scf                                           ; $5b37: $37
    dec [hl]                                      ; $5b38: $35
    rst $28                                       ; $5b39: $ef
    ld d, e                                       ; $5b3a: $53
    ld b, a                                       ; $5b3b: $47
    ld e, h                                       ; $5b3c: $5c
    ld sp, hl                                     ; $5b3d: $f9
    jp hl                                         ; $5b3e: $e9


    sub a                                         ; $5b3f: $97
    sbc a                                         ; $5b40: $9f
    rst $20                                       ; $5b41: $e7
    ld b, d                                       ; $5b42: $42
    ret                                           ; $5b43: $c9


    ld l, d                                       ; $5b44: $6a
    ld l, d                                       ; $5b45: $6a
    ld a, [bc]                                    ; $5b46: $0a
    push af                                       ; $5b47: $f5
    ld e, [hl]                                    ; $5b48: $5e
    jr nz, @+$23                                  ; $5b49: $20 $21

    daa                                           ; $5b4b: $27
    add hl, sp                                    ; $5b4c: $39
    adc e                                         ; $5b4d: $8b
    db $e3                                        ; $5b4e: $e3
    xor b                                         ; $5b4f: $a8
    or c                                          ; $5b50: $b1
    ld l, e                                       ; $5b51: $6b
    and l                                         ; $5b52: $a5
    db $10                                        ; $5b53: $10
    ld a, a                                       ; $5b54: $7f

jr_03b_5b55:
    sbc [hl]                                      ; $5b55: $9e
    inc sp                                        ; $5b56: $33
    xor c                                         ; $5b57: $a9
    xor a                                         ; $5b58: $af
    inc sp                                        ; $5b59: $33
    ld b, c                                       ; $5b5a: $41
    ld d, a                                       ; $5b5b: $57
    ld e, [hl]                                    ; $5b5c: $5e
    ld l, a                                       ; $5b5d: $6f
    nop                                           ; $5b5e: $00
    ld a, l                                       ; $5b5f: $7d

jr_03b_5b60:
    dec e                                         ; $5b60: $1d

Call_03b_5b61:
    dec [hl]                                      ; $5b61: $35
    jp z, $942f                                   ; $5b62: $ca $2f $94

    ld d, [hl]                                    ; $5b65: $56
    ld d, e                                       ; $5b66: $53
    ld a, [hl]                                    ; $5b67: $7e
    and [hl]                                      ; $5b68: $a6
    cp h                                          ; $5b69: $bc
    ld [hl], d                                    ; $5b6a: $72
    call nc, $9f95                                ; $5b6b: $d4 $95 $9f
    rst $20                                       ; $5b6e: $e7
    ld [bc], a                                    ; $5b6f: $02
    jp nc, Jump_03b_44b4                          ; $5b70: $d2 $b4 $44

    ld [$e24c], a                                 ; $5b73: $ea $4c $e2
    ld e, b                                       ; $5b76: $58
    ld d, $4a                                     ; $5b77: $16 $4a
    ld d, [hl]                                    ; $5b79: $56
    ld d, e                                       ; $5b7a: $53
    ld d, e                                       ; $5b7b: $53
    ld d, $88                                     ; $5b7c: $16 $88
    rra                                           ; $5b7e: $1f
    ld a, [c]                                     ; $5b7f: $f2
    cp [hl]                                       ; $5b80: $be
    rst $28                                       ; $5b81: $ef
    ld l, [hl]                                    ; $5b82: $6e
    sub $95                                       ; $5b83: $d6 $95
    call nc, Call_000_1605                        ; $5b85: $d4 $05 $16
    ld l, e                                       ; $5b88: $6b
    inc c                                         ; $5b89: $0c
    ld d, d                                       ; $5b8a: $52
    ld a, [de]                                    ; $5b8b: $1a
    ld l, d                                       ; $5b8c: $6a
    rrca                                          ; $5b8d: $0f
    nop                                           ; $5b8e: $00
    add c                                         ; $5b8f: $81
    ld e, h                                       ; $5b90: $5c
    add l                                         ; $5b91: $85
    add sp, -$77                                  ; $5b92: $e8 $89
    add e                                         ; $5b94: $83
    or d                                          ; $5b95: $b2
    and h                                         ; $5b96: $a4
    ld [hl], $7c                                  ; $5b97: $36 $7c
    cp l                                          ; $5b99: $bd
    rla                                           ; $5b9a: $17

jr_03b_5b9b:
    jr nz, jr_03b_5bd1                            ; $5b9b: $20 $34

    dec l                                         ; $5b9d: $2d
    ld [hl], l                                    ; $5b9e: $75
    ld a, [c]                                     ; $5b9f: $f2
    db $fd                                        ; $5ba0: $fd
    inc de                                        ; $5ba1: $13
    cp a                                          ; $5ba2: $bf
    ld d, e                                       ; $5ba3: $53
    xor b                                         ; $5ba4: $a8
    rst $30                                       ; $5ba5: $f7
    adc $6d                                       ; $5ba6: $ce $6d
    ld d, d                                       ; $5ba8: $52
    cp a                                          ; $5ba9: $bf
    rst $08                                       ; $5baa: $cf
    ld d, e                                       ; $5bab: $53
    ld [hl], a                                    ; $5bac: $77
    xor [hl]                                      ; $5bad: $ae
    ret nc                                        ; $5bae: $d0

    rst $08                                       ; $5baf: $cf
    cp d                                          ; $5bb0: $ba
    di                                            ; $5bb1: $f3
    sbc b                                         ; $5bb2: $98
    ld [bc], a                                    ; $5bb3: $02
    ld [hl], c                                    ; $5bb4: $71
    ld d, a                                       ; $5bb5: $57
    ld a, [c]                                     ; $5bb6: $f2
    or l                                          ; $5bb7: $b5
    ret nc                                        ; $5bb8: $d0

    ld a, [bc]                                    ; $5bb9: $0a
    nop                                           ; $5bba: $00
    rst $20                                       ; $5bbb: $e7
    or [hl]                                       ; $5bbc: $b6
    ld h, d                                       ; $5bbd: $62
    add d                                         ; $5bbe: $82
    ldh a, [$b1]                                  ; $5bbf: $f0 $b1
    call z, $bcb0                                 ; $5bc1: $cc $b0 $bc
    ld c, a                                       ; $5bc4: $4f
    ld e, c                                       ; $5bc5: $59
    ld [$c684], a                                 ; $5bc6: $ea $84 $c6
    ld d, c                                       ; $5bc9: $51
    db $fc                                        ; $5bca: $fc
    rst $08                                       ; $5bcb: $cf
    ld [c], a                                     ; $5bcc: $e2
    jr c, jr_03b_5b9b                             ; $5bcd: $38 $cc

    add hl, hl                                    ; $5bcf: $29
    rst $20                                       ; $5bd0: $e7

jr_03b_5bd1:
    reti                                          ; $5bd1: $d9


    pop hl                                        ; $5bd2: $e1
    ld e, b                                       ; $5bd3: $58
    add a                                         ; $5bd4: $87
    add l                                         ; $5bd5: $85
    cpl                                           ; $5bd6: $2f
    dec hl                                        ; $5bd7: $2b
    cp a                                          ; $5bd8: $bf
    ld a, [$f6a1]                                 ; $5bd9: $fa $a1 $f6
    inc hl                                        ; $5bdc: $23
    xor [hl]                                      ; $5bdd: $ae
    and h                                         ; $5bde: $a4
    ld l, $7c                                     ; $5bdf: $2e $7c
    ld l, l                                       ; $5be1: $6d
    and l                                         ; $5be2: $a5
    and h                                         ; $5be3: $a4
    adc $b3                                       ; $5be4: $ce $b3
    call z, $2164                                 ; $5be6: $cc $64 $21
    call nc, $c472                                ; $5be9: $d4 $72 $c4
    jr z, @+$5e                                   ; $5bec: $28 $5c

    ld a, c                                       ; $5bee: $79
    sbc l                                         ; $5bef: $9d
    add hl, hl                                    ; $5bf0: $29
    xor a                                         ; $5bf1: $af
    call nc, Call_000_177b                        ; $5bf2: $d4 $7b $17
    and l                                         ; $5bf5: $a5
    adc $e2                                       ; $5bf6: $ce $e2
    cp b                                          ; $5bf8: $b8
    add [hl]                                      ; $5bf9: $86
    push de                                       ; $5bfa: $d5
    jp nc, $dfb0                                  ; $5bfb: $d2 $b0 $df

    db $e3                                        ; $5bfe: $e3
    xor b                                         ; $5bff: $a8
    pop af                                        ; $5c00: $f1
    add a                                         ; $5c01: $87
    add hl, hl                                    ; $5c02: $29
    push af                                       ; $5c03: $f5
    cpl                                           ; $5c04: $2f
    and h                                         ; $5c05: $a4
    ld a, b                                       ; $5c06: $78
    ld c, d                                       ; $5c07: $4a
    rla                                           ; $5c08: $17
    ld l, $74                                     ; $5c09: $2e $74
    jr @+$55                                      ; $5c0b: $18 $53

    rla                                           ; $5c0d: $17
    cp [hl]                                       ; $5c0e: $be
    db $fc                                        ; $5c0f: $fc
    call nc, $bccd                                ; $5c10: $d4 $cd $bc
    cp $0d                                        ; $5c13: $fe $0d
    nop                                           ; $5c15: $00
    halt                                          ; $5c16: $76
    ld h, l                                       ; $5c17: $65
    sbc l                                         ; $5c18: $9d
    ld d, h                                       ; $5c19: $54
    adc e                                         ; $5c1a: $8b
    db $e3                                        ; $5c1b: $e3
    xor b                                         ; $5c1c: $a8
    or c                                          ; $5c1d: $b1
    ld l, e                                       ; $5c1e: $6b
    and c                                         ; $5c1f: $a1
    ld h, h                                       ; $5c20: $64
    or b                                          ; $5c21: $b0
    ld [hl], l                                    ; $5c22: $75
    sbc d                                         ; $5c23: $9a
    rst $08                                       ; $5c24: $cf
    add l                                         ; $5c25: $85
    cpl                                           ; $5c26: $2f
    cp a                                          ; $5c27: $bf
    sbc b                                         ; $5c28: $98
    ld a, $75                                     ; $5c29: $3e $75
    dec h                                         ; $5c2b: $25
    ld [hl], l                                    ; $5c2c: $75
    ld e, a                                       ; $5c2d: $5f
    ld e, h                                       ; $5c2e: $5c
    adc l                                         ; $5c2f: $8d
    xor c                                         ; $5c30: $a9
    inc hl                                        ; $5c31: $23
    ld l, $a6                                     ; $5c32: $2e $a6
    rst $08                                       ; $5c34: $cf
    push de                                       ; $5c35: $d5
    ld e, c                                       ; $5c36: $59
    inc de                                        ; $5c37: $13
    ld h, e                                       ; $5c38: $63

Call_03b_5c39:
    sbc $00                                       ; $5c39: $de $00
    halt                                          ; $5c3b: $76
    ld h, l                                       ; $5c3c: $65
    pop hl                                        ; $5c3d: $e1
    ld l, e                                       ; $5c3e: $6b
    dec hl                                        ; $5c3f: $2b
    dec h                                         ; $5c40: $25
    rst $20                                       ; $5c41: $e7
    ld e, c                                       ; $5c42: $59
    ld d, $29                                     ; $5c43: $16 $29
    add [hl]                                      ; $5c45: $86
    or d                                          ; $5c46: $b2
    or b                                          ; $5c47: $b0
    ld l, c                                       ; $5c48: $69
    xor $57                                       ; $5c49: $ee $57
    ld a, [hl]                                    ; $5c4b: $7e

Jump_03b_5c4c:
    sbc [hl]                                      ; $5c4c: $9e
    ld b, d                                       ; $5c4d: $42
    inc de                                        ; $5c4e: $13
    db $fc                                        ; $5c4f: $fc
    ld d, c                                       ; $5c50: $51
    ld h, e                                       ; $5c51: $63
    rst $10                                       ; $5c52: $d7
    xor d                                         ; $5c53: $aa
    dec e                                         ; $5c54: $1d
    push hl                                       ; $5c55: $e5
    rst $20                                       ; $5c56: $e7
    cp c                                          ; $5c57: $b9
    sub d                                         ; $5c58: $92
    cp d                                          ; $5c59: $ba
    ld h, d                                       ; $5c5a: $62
    ld d, e                                       ; $5c5b: $53
    or a                                          ; $5c5c: $b7
    ld c, b                                       ; $5c5d: $48
    ld e, l                                       ; $5c5e: $5d
    ld hl, sp-$0e                                 ; $5c5f: $f8 $f2
    ld h, e                                       ; $5c61: $63
    sbc c                                         ; $5c62: $99
    push bc                                       ; $5c63: $c5
    ld [hl], c                                    ; $5c64: $71
    sbc b                                         ; $5c65: $98
    or e                                          ; $5c66: $b3
    cp b                                          ; $5c67: $b8
    ld b, [hl]                                    ; $5c68: $46
    ld sp, hl                                     ; $5c69: $f9
    push de                                       ; $5c6a: $d5
    add hl, hl                                    ; $5c6b: $29
    ld c, l                                       ; $5c6c: $4d
    and $b9                                       ; $5c6d: $e6 $b9
    ld [$fa94], a                                 ; $5c6f: $ea $94 $fa
    ld d, a                                       ; $5c72: $57
    dec sp                                        ; $5c73: $3b

Jump_03b_5c74:
    db $eb                                        ; $5c74: $eb
    ld a, h                                       ; $5c75: $7c
    sub [hl]                                      ; $5c76: $96
    sub h                                         ; $5c77: $94
    call nc, Call_03b_77bf                        ; $5c78: $d4 $bf $77
    ld l, [hl]                                    ; $5c7b: $6e
    sub e                                         ; $5c7c: $93
    ld a, [$9e7d]                                 ; $5c7d: $fa $7d $9e
    cp d                                          ; $5c80: $ba
    ld e, [hl]                                    ; $5c81: $5e
    and l                                         ; $5c82: $a5
    db $e3                                        ; $5c83: $e3
    ld [hl], h                                    ; $5c84: $74
    rst $20                                       ; $5c85: $e7
    cp b                                          ; $5c86: $b8
    cp d                                          ; $5c87: $ba
    ld d, e                                       ; $5c88: $53
    add sp, $53                                   ; $5c89: $e8 $53
    ld [$7600], sp                                ; $5c8b: $08 $00 $76
    ld h, l                                       ; $5c8e: $65
    ld a, [$7318]                                 ; $5c8f: $fa $18 $73
    sub $29                                       ; $5c92: $d6 $29
    rrca                                          ; $5c94: $0f

Call_03b_5c95:
    cp $53                                        ; $5c95: $fe $53
    rst $10                                       ; $5c97: $d7
    ei                                            ; $5c98: $fb
    ld b, e                                       ; $5c99: $43
    rla                                           ; $5c9a: $17
    ld [hl], a                                    ; $5c9b: $77
    adc [hl]                                      ; $5c9c: $8e
    cp h                                          ; $5c9d: $bc
    ld c, c                                       ; $5c9e: $49
    ld l, h                                       ; $5c9f: $6c
    ld a, [bc]                                    ; $5ca0: $0a
    nop                                           ; $5ca1: $00
    halt                                          ; $5ca2: $76
    ld a, [de]                                    ; $5ca3: $1a
    add hl, sp                                    ; $5ca4: $39
    ld [$e658], a                                 ; $5ca5: $ea $58 $e6
    ld d, e                                       ; $5ca8: $53
    ld [$5316], a                                 ; $5ca9: $ea $16 $53

jr_03b_5cac:
    ld e, d                                       ; $5cac: $5a
    adc $73                                       ; $5cad: $ce $73
    dec h                                         ; $5caf: $25
    ld [hl], l                                    ; $5cb0: $75
    ld h, $d8                                     ; $5cb1: $26 $d8
    ld c, h                                       ; $5cb3: $4c
    ld [$8bbd], a                                 ; $5cb4: $ea $bd $8b
    ld d, d                                       ; $5cb7: $52
    rst $30                                       ; $5cb8: $f7
    push bc                                       ; $5cb9: $c5
    push de                                       ; $5cba: $d5
    sbc b                                         ; $5cbb: $98
    ld a, [hl-]                                   ; $5cbc: $3a
    rst $08                                       ; $5cbd: $cf
    add l                                         ; $5cbe: $85
    jp nc, $ca6a                                  ; $5cbf: $d2 $6a $ca

    cp $e0                                        ; $5cc2: $fe $e0
    sbc h                                         ; $5cc4: $9c
    ld [hl], a                                    ; $5cc5: $77
    sub h                                         ; $5cc6: $94
    sbc d                                         ; $5cc7: $9a
    jr c, jr_03b_5cac                             ; $5cc8: $38 $e2

    xor b                                         ; $5cca: $a8
    sub c                                         ; $5ccb: $91
    dec bc                                        ; $5ccc: $0b
    and l                                         ; $5ccd: $a5
    push de                                       ; $5cce: $d5
    sub h                                         ; $5ccf: $94
    add l                                         ; $5cd0: $85
    ld c, l                                       ; $5cd1: $4d
    di                                            ; $5cd2: $f3
    ld b, $01                                     ; $5cd3: $06 $01
    sub d                                         ; $5cd5: $92
    jp c, Jump_03b_4720                           ; $5cd6: $da $20 $47

    ld e, h                                       ; $5cd9: $5c
    ld a, c                                       ; $5cda: $79
    ld e, l                                       ; $5cdb: $5d
    jp $350a                                      ; $5cdc: $c3 $0a $35


    ld [hl], $e8                                  ; $5cdf: $36 $e8
    ld c, l                                       ; $5ce1: $4d
    ld c, e                                       ; $5ce2: $4b
    and h                                         ; $5ce3: $a4
    adc $b3                                       ; $5ce4: $ce $b3
    db $ec                                        ; $5ce6: $ec
    push af                                       ; $5ce7: $f5
    ld c, e                                       ; $5ce8: $4b
    call z, Call_000_1c59                         ; $5ce9: $cc $59 $1c
    rla                                           ; $5cec: $17
    ld e, l                                       ; $5ced: $5d
    dec h                                         ; $5cee: $25
    ld d, a                                       ; $5cef: $57
    inc e                                         ; $5cf0: $1c
    db $f4                                        ; $5cf1: $f4
    ld [hl-], a                                   ; $5cf2: $32
    ld [c], a                                     ; $5cf3: $e2
    adc $93                                       ; $5cf4: $ce $93
    add [hl]                                      ; $5cf6: $86
    ld d, b                                       ; $5cf7: $50
    add $a8                                       ; $5cf8: $c6 $a8
    rst $30                                       ; $5cfa: $f7
    ld [bc], a                                    ; $5cfb: $02
    add hl, sp                                    ; $5cfc: $39
    inc hl                                        ; $5cfd: $23
    db $e4                                        ; $5cfe: $e4
    inc l                                         ; $5cff: $2c
    adc [hl]                                      ; $5d00: $8e
    ld d, e                                       ; $5d01: $53
    ld l, $ca                                     ; $5d02: $2e $ca
    rst $00                                       ; $5d04: $c7
    sbc a                                         ; $5d05: $9f
    ld h, a                                       ; $5d06: $67
    ld e, c                                       ; $5d07: $59
    sub h                                         ; $5d08: $94
    rst $28                                       ; $5d09: $ef
    ld a, h                                       ; $5d0a: $7c
    cp a                                          ; $5d0b: $bf
    sbc h                                         ; $5d0c: $9c
    rst $20                                       ; $5d0d: $e7
    ld [$5287], a                                 ; $5d0e: $ea $87 $52
    sub a                                         ; $5d11: $97
    db $eb                                        ; $5d12: $eb
    adc b                                         ; $5d13: $88
    db $eb                                        ; $5d14: $eb
    rst $30                                       ; $5d15: $f7
    cp d                                          ; $5d16: $ba
    ld c, b                                       ; $5d17: $48
    ld h, h                                       ; $5d18: $64
    ld b, a                                       ; $5d19: $47
    ld d, d                                       ; $5d1a: $52
    ld d, e                                       ; $5d1b: $53
    rst $28                                       ; $5d1c: $ef
    push af                                       ; $5d1d: $f5
    call Call_000_1729                            ; $5d1e: $cd $29 $17
    ld a, h                                       ; $5d21: $7c
    ld e, h                                       ; $5d22: $5c
    add hl, hl                                    ; $5d23: $29
    xor h                                         ; $5d24: $ac
    cp h                                          ; $5d25: $bc
    rst $08                                       ; $5d26: $cf
    pop hl                                        ; $5d27: $e1
    ei                                            ; $5d28: $fb
    ccf                                           ; $5d29: $3f
    ld [hl], l                                    ; $5d2a: $75
    push hl                                       ; $5d2b: $e5
    ld h, a                                       ; $5d2c: $67
    cp d                                          ; $5d2d: $ba
    ld [$9f97], a                                 ; $5d2e: $ea $97 $9f
    push bc                                       ; $5d31: $c5
    ld [hl], c                                    ; $5d32: $71
    jp z, $a755                                   ; $5d33: $ca $55 $a7

    db $f4                                        ; $5d36: $f4
    or a                                          ; $5d37: $b7
    ld e, l                                       ; $5d38: $5d
    ldh a, [$3b]                                  ; $5d39: $f0 $3b
    ld [hl], $3f                                  ; $5d3b: $36 $3f
    ld l, l                                       ; $5d3d: $6d
    ld a, $57                                     ; $5d3e: $3e $57
    ld a, c                                       ; $5d40: $79
    db $d3                                        ; $5d41: $d3
    sbc $ff                                       ; $5d42: $de $ff
    sbc $e2                                       ; $5d44: $de $e2
    ld e, b                                       ; $5d46: $58
    ld d, [hl]                                    ; $5d47: $56

Call_03b_5d48:
    scf                                           ; $5d48: $37
    xor l                                         ; $5d49: $ad
    ld [hl], e                                    ; $5d4a: $73
    sbc $e6                                       ; $5d4b: $de $e6
    rst $28                                       ; $5d4d: $ef
    dec e                                         ; $5d4e: $1d
    ld a, [de]                                    ; $5d4f: $1a
    ld b, b                                       ; $5d50: $40
    ret                                           ; $5d51: $c9


    ld h, c                                       ; $5d52: $61
    xor [hl]                                      ; $5d53: $ae
    ld a, [c]                                     ; $5d54: $f2
    ld [hl], l                                    ; $5d55: $75
    ld [$9e7e], a                                 ; $5d56: $ea $7e $9e
    and [hl]                                      ; $5d59: $a6
    ld c, c                                       ; $5d5a: $49
    and c                                         ; $5d5b: $a1
    adc $e2                                       ; $5d5c: $ce $e2
    xor d                                         ; $5d5e: $aa
    ld l, $f8                                     ; $5d5f: $2e $f8
    dec e                                         ; $5d61: $1d
    sbc e                                         ; $5d62: $9b
    rst $18                                       ; $5d63: $df
    sub a                                         ; $5d64: $97
    ld h, d                                       ; $5d65: $62
    inc bc                                        ; $5d66: $03
    rst $18                                       ; $5d67: $df
    xor e                                         ; $5d68: $ab
    call $8e2c                                    ; $5d69: $cd $2c $8e
    xor e                                         ; $5d6c: $ab
    rra                                           ; $5d6d: $1f
    inc hl                                        ; $5d6e: $23
    ld de, $5c7a                                  ; $5d6f: $11 $7a $5c
    ld a, c                                       ; $5d72: $79
    dec e                                         ; $5d73: $1d
    cp [hl]                                       ; $5d74: $be
    inc [hl]                                      ; $5d75: $34
    ld b, e                                       ; $5d76: $43
    ld e, l                                       ; $5d77: $5d
    or l                                          ; $5d78: $b5
    and e                                         ; $5d79: $a3
    inc a                                         ; $5d7a: $3c
    ld a, h                                       ; $5d7b: $7c
    jp c, $dfa6                                   ; $5d7c: $da $a6 $df

    ld hl, $e4ae                                  ; $5d7f: $21 $ae $e4
    inc l                                         ; $5d82: $2c
    adc [hl]                                      ; $5d83: $8e
    dec hl                                        ; $5d84: $2b
    call nc, $c499                                ; $5d85: $d4 $99 $c4
    ld c, d                                       ; $5d88: $4a
    inc hl                                        ; $5d89: $23
    ld [de], a                                    ; $5d8a: $12
    ld a, $4f                                     ; $5d8b: $3e $4f
    ld d, e                                       ; $5d8d: $53
    ld e, [hl]                                    ; $5d8e: $5e
    ld l, h                                       ; $5d8f: $6c
    rst $20                                       ; $5d90: $e7
    ld [hl], b                                    ; $5d91: $70
    ld d, b                                       ; $5d92: $50
    halt                                          ; $5d93: $76
    ld c, d                                       ; $5d94: $4a
    jp $2985                                      ; $5d95: $c3 $85 $29


    pop af                                        ; $5d98: $f1
    dec hl                                        ; $5d99: $2b
    reti                                          ; $5d9a: $d9


    ld a, a                                       ; $5d9b: $7f
    sbc [hl]                                      ; $5d9c: $9e
    dec sp                                        ; $5d9d: $3b
    ld c, a                                       ; $5d9e: $4f
    ld a, [de]                                    ; $5d9f: $1a
    ld b, d                                       ; $5da0: $42
    add hl, de                                    ; $5da1: $19
    and e                                         ; $5da2: $a3
    ld e, $7a                                     ; $5da3: $1e $7a
    inc bc                                        ; $5da5: $03
    add c                                         ; $5da6: $81
    sub h                                         ; $5da7: $94
    xor [hl]                                      ; $5da8: $ae
    push de                                       ; $5da9: $d5
    db $ec                                        ; $5daa: $ec
    sub a                                         ; $5dab: $97
    ld [hl-], a                                   ; $5dac: $32
    adc e                                         ; $5dad: $8b
    db $e3                                        ; $5dae: $e3
    jr nc, @+$77                                  ; $5daf: $30 $75

    ld l, a                                       ; $5db1: $6f
    ld d, d                                       ; $5db2: $52
    inc hl                                        ; $5db3: $23
    db $eb                                        ; $5db4: $eb
    call nc, $9285                                ; $5db5: $d4 $85 $92
    jr jr_03b_5dcd                                ; $5db8: $18 $13

    ld a, $fb                                     ; $5dba: $3e $fb
    rla                                           ; $5dbc: $17
    or c                                          ; $5dbd: $b1
    sbc $eb                                       ; $5dbe: $de $eb
    di                                            ; $5dc0: $f3
    rlca                                          ; $5dc1: $07
    ccf                                           ; $5dc2: $3f
    cp $a8                                        ; $5dc3: $fe $a8
    ld [hl], e                                    ; $5dc5: $73
    jr c, jr_03b_5e10                             ; $5dc6: $38 $48

    ld e, $e7                                     ; $5dc8: $1e $e7
    ld l, l                                       ; $5dca: $6d
    cp $06                                        ; $5dcb: $fe $06

jr_03b_5dcd:
    halt                                          ; $5dcd: $76
    ld a, [de]                                    ; $5dce: $1a
    db $d3                                        ; $5dcf: $d3
    ld a, [hl-]                                   ; $5dd0: $3a
    rst $08                                       ; $5dd1: $cf
    ld a, [$bdb5]                                 ; $5dd2: $fa $b5 $bd
    rst $08                                       ; $5dd5: $cf
    sbc c                                         ; $5dd6: $99
    ld b, a                                       ; $5dd7: $47
    ld a, l                                       ; $5dd8: $7d
    sbc a                                         ; $5dd9: $9f
    dec bc                                        ; $5dda: $0b
    ld e, a                                       ; $5ddb: $5f
    ld a, [hl]                                    ; $5ddc: $7e
    ld c, d                                       ; $5ddd: $4a
    ret z                                         ; $5dde: $c8

    dec [hl]                                      ; $5ddf: $35
    ld e, c                                       ; $5de0: $59
    ldh a, [$3b]                                  ; $5de1: $f0 $3b
    push hl                                       ; $5de3: $e5
    pop de                                        ; $5de4: $d1
    rst $20                                       ; $5de5: $e7
    dec c                                         ; $5de6: $0d
    nop                                           ; $5de7: $00
    sub a                                         ; $5de8: $97
    add hl, bc                                    ; $5de9: $09
    dec hl                                        ; $5dea: $2b
    add hl, hl                                    ; $5deb: $29
    or e                                          ; $5dec: $b3
    adc $9a                                       ; $5ded: $ce $9a
    jp Jump_03b_55d4                              ; $5def: $c3 $d4 $55


    cp [hl]                                       ; $5df2: $be
    ld c, [hl]                                    ; $5df3: $4e
    db $dd                                        ; $5df4: $dd
    xor a                                         ; $5df5: $af
    db $fc                                        ; $5df6: $fc
    call z, Call_000_0fd7                         ; $5df7: $cc $d7 $0f
    ld e, a                                       ; $5dfa: $5f
    rst $30                                       ; $5dfb: $f7
    ld a, [bc]                                    ; $5dfc: $0a
    push bc                                       ; $5dfd: $c5
    cp a                                          ; $5dfe: $bf
    rst $18                                       ; $5dff: $df
    ld h, l                                       ; $5e00: $65
    jp nz, Jump_03b_4a4a                          ; $5e01: $c2 $4a $4a

    rst $08                                       ; $5e04: $cf
    ld [hl], l                                    ; $5e05: $75
    cp a                                          ; $5e06: $bf
    ld c, h                                       ; $5e07: $4c
    ld e, b                                       ; $5e08: $58
    ld c, c                                       ; $5e09: $49
    cp c                                          ; $5e0a: $b9
    rst $28                                       ; $5e0b: $ef
    cp e                                          ; $5e0c: $bb
    daa                                           ; $5e0d: $27
    nop                                           ; $5e0e: $00
    ld h, a                                       ; $5e0f: $67

jr_03b_5e10:
    dec sp                                        ; $5e10: $3b
    ld [c], a                                     ; $5e11: $e2
    db $eb                                        ; $5e12: $eb
    jr nc, jr_03b_5e62                            ; $5e13: $30 $4d

    sub b                                         ; $5e15: $90
    ld a, [bc]                                    ; $5e16: $0a
    sbc a                                         ; $5e17: $9f
    db $fd                                        ; $5e18: $fd
    adc e                                         ; $5e19: $8b
    ld e, b                                       ; $5e1a: $58
    rst $28                                       ; $5e1b: $ef
    reti                                          ; $5e1c: $d9


    jp hl                                         ; $5e1d: $e9


    inc e                                         ; $5e1e: $1c
    ld l, $98                                     ; $5e1f: $2e $98
    sbc b                                         ; $5e21: $98
    ld [hl-], a                                   ; $5e22: $32
    sub e                                         ; $5e23: $93
    ld [hl], l                                    ; $5e24: $75
    ld hl, sp+$12                                 ; $5e25: $f8 $12
    sbc e                                         ; $5e27: $9b
    adc h                                         ; $5e28: $8c
    ld a, [de]                                    ; $5e29: $1a
    ld a, a                                       ; $5e2a: $7f
    and $f5                                       ; $5e2b: $e6 $f5
    ld h, a                                       ; $5e2d: $67
    ld [de], a                                    ; $5e2e: $12
    ld h, e                                       ; $5e2f: $63
    add e                                         ; $5e30: $83
    ld a, [c]                                     ; $5e31: $f2
    ld b, $76                                     ; $5e32: $06 $76
    ld a, [de]                                    ; $5e34: $1a
    db $d3                                        ; $5e35: $d3
    ld a, [hl-]                                   ; $5e36: $3a
    rst $08                                       ; $5e37: $cf
    ld a, [$bdb5]                                 ; $5e38: $fa $b5 $bd
    rst $08                                       ; $5e3b: $cf
    sbc c                                         ; $5e3c: $99
    ld b, a                                       ; $5e3d: $47
    ld a, l                                       ; $5e3e: $7d
    sbc a                                         ; $5e3f: $9f
    dec bc                                        ; $5e40: $0b
    ld e, a                                       ; $5e41: $5f
    ld a, [hl]                                    ; $5e42: $7e
    pop bc                                        ; $5e43: $c1
    rst $28                                       ; $5e44: $ef
    sub h                                         ; $5e45: $94
    sub a                                         ; $5e46: $97
    ld a, e                                       ; $5e47: $7b
    ld h, a                                       ; $5e48: $67
    dec sp                                        ; $5e49: $3b
    ld [c], a                                     ; $5e4a: $e2
    db $eb                                        ; $5e4b: $eb
    jr nc, jr_03b_5e9b                            ; $5e4c: $30 $4d

    sub b                                         ; $5e4e: $90
    ld a, d                                       ; $5e4f: $7a
    inc bc                                        ; $5e50: $03
    ld h, a                                       ; $5e51: $67
    dec sp                                        ; $5e52: $3b
    ld [c], a                                     ; $5e53: $e2
    db $eb                                        ; $5e54: $eb
    jr nc, jr_03b_5ea4                            ; $5e55: $30 $4d

    sub b                                         ; $5e57: $90
    ld a, [bc]                                    ; $5e58: $0a
    sbc a                                         ; $5e59: $9f
    db $fd                                        ; $5e5a: $fd
    adc e                                         ; $5e5b: $8b
    ld e, b                                       ; $5e5c: $58
    ld l, a                                       ; $5e5d: $6f
    nop                                           ; $5e5e: $00
    rst $20                                       ; $5e5f: $e7
    ld a, h                                       ; $5e60: $7c
    db $e4                                        ; $5e61: $e4

jr_03b_5e62:
    ld b, d                                       ; $5e62: $42
    ld l, c                                       ; $5e63: $69
    ld a, [$d9f0]                                 ; $5e64: $fa $f0 $d9
    cp a                                          ; $5e67: $bf
    adc b                                         ; $5e68: $88
    push af                                       ; $5e69: $f5
    ld e, [hl]                                    ; $5e6a: $5e
    scf                                           ; $5e6b: $37
    ei                                            ; $5e6c: $fb
    or a                                          ; $5e6d: $b7
    adc $e2                                       ; $5e6e: $ce $e2
    cp b                                          ; $5e70: $b8
    ld d, d                                       ; $5e71: $52
    ld [$ecbd], sp                                ; $5e72: $08 $bd $ec
    ld d, a                                       ; $5e75: $57
    ld a, [hl]                                    ; $5e76: $7e
    and [hl]                                      ; $5e77: $a6
    cp h                                          ; $5e78: $bc
    ld [hl], d                                    ; $5e79: $72
    sbc [hl]                                      ; $5e7a: $9e
    dec bc                                        ; $5e7b: $0b
    ld c, b                                       ; $5e7c: $48
    db $d3                                        ; $5e7d: $d3

jr_03b_5e7e:
    ld [de], a                                    ; $5e7e: $12
    xor c                                         ; $5e7f: $a9
    dec a                                         ; $5e80: $3d
    sub $ad                                       ; $5e81: $d6 $ad
    rst $10                                       ; $5e83: $d7
    ld [bc], a                                    ; $5e84: $02
    pop af                                        ; $5e85: $f1
    ld b, e                                       ; $5e86: $43
    ld c, $73                                     ; $5e87: $0e $73
    add l                                         ; $5e89: $85
    add e                                         ; $5e8a: $83
    sbc h                                         ; $5e8b: $9c
    add $9f                                       ; $5e8c: $c6 $9f
    push bc                                       ; $5e8e: $c5
    ld [hl], c                                    ; $5e8f: $71
    and l                                         ; $5e90: $a5
    db $10                                        ; $5e91: $10
    ld [hl], d                                    ; $5e92: $72
    xor h                                         ; $5e93: $ac
    ld d, e                                       ; $5e94: $53
    rla                                           ; $5e95: $17
    ld e, a                                       ; $5e96: $5f
    inc a                                         ; $5e97: $3c
    ld a, e                                       ; $5e98: $7b
    nop                                           ; $5e99: $00
    cp l                                          ; $5e9a: $bd

jr_03b_5e9b:
    add hl, hl                                    ; $5e9b: $29
    ld a, [c]                                     ; $5e9c: $f2
    cp $6f                                        ; $5e9d: $fe $6f
    nop                                           ; $5e9f: $00
    db $dd                                        ; $5ea0: $dd
    rst $08                                       ; $5ea1: $cf
    or c                                          ; $5ea2: $b1
    ld b, l                                       ; $5ea3: $45

jr_03b_5ea4:
    rst $08                                       ; $5ea4: $cf
    ld d, c                                       ; $5ea5: $51
    ld h, e                                       ; $5ea6: $63
    rst $10                                       ; $5ea7: $d7
    jp z, $94cf                                   ; $5ea8: $ca $cf $94

    ld d, a                                       ; $5eab: $57
    adc $73                                       ; $5eac: $ce $73
    ld bc, $5a69                                  ; $5eae: $01 $69 $5a
    ld [hl+], a                                   ; $5eb1: $22
    or l                                          ; $5eb2: $b5
    daa                                           ; $5eb3: $27
    nop                                           ; $5eb4: $00
    sub a                                         ; $5eb5: $97
    dec a                                         ; $5eb6: $3d
    xor [hl]                                      ; $5eb7: $ae
    or b                                          ; $5eb8: $b0
    ld e, a                                       ; $5eb9: $5f
    ld [$f73c], a                                 ; $5eba: $ea $3c $f7
    ld d, $67                                     ; $5ebd: $16 $67
    inc sp                                        ; $5ebf: $33
    sub e                                         ; $5ec0: $93
    ld [hl], l                                    ; $5ec1: $75
    ld l, $74                                     ; $5ec2: $2e $74
    db $f4                                        ; $5ec4: $f4
    xor a                                         ; $5ec5: $af
    db $d3                                        ; $5ec6: $d3
    add [hl]                                      ; $5ec7: $86
    db $d3                                        ; $5ec8: $d3
    cpl                                           ; $5ec9: $2f
    ld c, l                                       ; $5eca: $4d
    and $59                                       ; $5ecb: $e6 $59
    ld b, [hl]                                    ; $5ecd: $46
    rst $18                                       ; $5ece: $df
    xor d                                         ; $5ecf: $aa
    sbc e                                         ; $5ed0: $9b
    ld l, c                                       ; $5ed1: $69
    ld a, c                                       ; $5ed2: $79
    rst $08                                       ; $5ed3: $cf
    cp $ad                                        ; $5ed4: $fe $ad
    xor e                                         ; $5ed6: $ab
    ld c, [hl]                                    ; $5ed7: $4e
    xor c                                         ; $5ed8: $a9
    ld e, a                                       ; $5ed9: $5f
    rst $20                                       ; $5eda: $e7
    cp c                                          ; $5edb: $b9
    ld d, d                                       ; $5edc: $52
    ld [$ecbd], sp                                ; $5edd: $08 $bd $ec
    ld c, e                                       ; $5ee0: $4b
    or c                                          ; $5ee1: $b1
    ld e, c                                       ; $5ee2: $59
    db $dd                                        ; $5ee3: $dd
    and l                                         ; $5ee4: $a5
    sub e                                         ; $5ee5: $93
    xor [hl]                                      ; $5ee6: $ae
    or b                                          ; $5ee7: $b0
    ld sp, hl                                     ; $5ee8: $f9
    add h                                         ; $5ee9: $84
    ld c, a                                       ; $5eea: $4f

Jump_03b_5eeb:
    db $db                                        ; $5eeb: $db
    jp z, Jump_000_3aeb                           ; $5eec: $ca $eb $3a

    ld c, [hl]                                    ; $5eef: $4e

Jump_03b_5ef0:
    call Call_000_0deb                            ; $5ef0: $cd $eb $0d
    nop                                           ; $5ef3: $00
    halt                                          ; $5ef4: $76
    jr c, jr_03b_5e7e                             ; $5ef5: $38 $87

    dec hl                                        ; $5ef7: $2b
    ld c, $7a                                     ; $5ef8: $0e $7a
    ld e, c                                       ; $5efa: $59
    jr z, jr_03b_5f56                             ; $5efb: $28 $59

    db $ed                                        ; $5efd: $ed
    ret nc                                        ; $5efe: $d0

    daa                                           ; $5eff: $27
    ld a, h                                       ; $5f00: $7c
    xor c                                         ; $5f01: $a9
    add $49                                       ; $5f02: $c6 $49
    jp nz, $7f57                                  ; $5f04: $c2 $57 $7f

    pop de                                        ; $5f07: $d1
    rst $00                                       ; $5f08: $c7
    cp h                                          ; $5f09: $bc
    rst $28                                       ; $5f0a: $ef
    cp e                                          ; $5f0b: $bb
    sbc a                                         ; $5f0c: $9f
    db $d3                                        ; $5f0d: $d3
    sbc b                                         ; $5f0e: $98

Call_03b_5f0f:
    dec hl                                        ; $5f0f: $2b
    add hl, sp                                    ; $5f10: $39
    adc e                                         ; $5f11: $8b
    db $e3                                        ; $5f12: $e3
    ld a, [bc]                                    ; $5f13: $0a
    rlca                                          ; $5f14: $07
    add hl, sp                                    ; $5f15: $39
    adc l                                         ; $5f16: $8d
    cp a                                          ; $5f17: $bf
    ld b, b                                       ; $5f18: $40
    db $fc                                        ; $5f19: $fc
    sub b                                         ; $5f1a: $90
    scf                                           ; $5f1b: $37
    nop                                           ; $5f1c: $00
    add a                                         ; $5f1d: $87
    or $7e                                        ; $5f1e: $f6 $7e
    ld [c], a                                     ; $5f20: $e2
    ld c, d                                       ; $5f21: $4a
    ld [$a142], a                                 ; $5f22: $ea $42 $a1

Jump_03b_5f25:
    ld l, c                                       ; $5f25: $69
    xor c                                         ; $5f26: $a9
    di                                            ; $5f27: $f3

Call_03b_5f28:
    ld e, h                                       ; $5f28: $5c
    ld a, c                                       ; $5f29: $79
    ld e, l                                       ; $5f2a: $5d
    sbc b                                         ; $5f2b: $98
    and [hl]                                      ; $5f2c: $a6
    dec h                                         ; $5f2d: $25
    ld d, d                                       ; $5f2e: $52
    pop hl                                        ; $5f2f: $e1
    adc e                                         ; $5f30: $8b
    ld e, a                                       ; $5f31: $5f
    ld d, [hl]                                    ; $5f32: $56
    ld h, c                                       ; $5f33: $61
    rst $38                                       ; $5f34: $ff
    ld de, $9be7                                  ; $5f35: $11 $e7 $9b
    ret nc                                        ; $5f38: $d0

    sbc b                                         ; $5f39: $98
    ld h, [hl]                                    ; $5f3a: $66
    adc e                                         ; $5f3b: $8b
    ei                                            ; $5f3c: $fb
    sub l                                         ; $5f3d: $95
    rst $10                                       ; $5f3e: $d7
    push de                                       ; $5f3f: $d5
    rst $18                                       ; $5f40: $df
    cp a                                          ; $5f41: $bf
    ld c, [hl]                                    ; $5f42: $4e
    sub c                                         ; $5f43: $91
    rst $10                                       ; $5f44: $d7
    ld b, e                                       ; $5f45: $43
    ld bc, $0ebd                                  ; $5f46: $01 $bd $0e
    ret nz                                        ; $5f49: $c0

    ld b, l                                       ; $5f4a: $45
    adc $e2                                       ; $5f4b: $ce $e2
    add sp, $7f                                   ; $5f4d: $e8 $7f
    ld c, $d7                                     ; $5f4f: $0e $d7
    ld [hl], c                                    ; $5f51: $71
    call nz, $a145                                ; $5f52: $c4 $45 $a1
    add hl, bc                                    ; $5f55: $09

jr_03b_5f56:
    and $0d                                       ; $5f56: $e6 $0d
    nop                                           ; $5f58: $00
    ld h, a                                       ; $5f59: $67
    dec sp                                        ; $5f5a: $3b
    dec [hl]                                      ; $5f5b: $35
    cp c                                          ; $5f5c: $b9
    ld a, [c]                                     ; $5f5d: $f2
    inc hl                                        ; $5f5e: $23
    ld d, [hl]                                    ; $5f5f: $56
    ld d, e                                       ; $5f60: $53
    ld l, d                                       ; $5f61: $6a
    adc d                                         ; $5f62: $8a
    call $f7df                                    ; $5f63: $cd $df $f7
    db $dd                                        ; $5f66: $dd
    dec bc                                        ; $5f67: $0b
    db $d3                                        ; $5f68: $d3
    inc b                                         ; $5f69: $04
    add hl, sp                                    ; $5f6a: $39
    sub e                                         ; $5f6b: $93
    or l                                          ; $5f6c: $b5
    call $eb3c                                    ; $5f6d: $cd $3c $eb
    rst $10                                       ; $5f70: $d7
    or $3e                                        ; $5f71: $f6 $3e
    ld l, a                                       ; $5f73: $6f
    nop                                           ; $5f74: $00
    ld a, l                                       ; $5f75: $7d
    ld a, [de]                                    ; $5f76: $1a
    ld sp, $ebca                                  ; $5f77: $31 $ca $eb
    jr nc, @-$57                                  ; $5f7a: $30 $a7

    xor [hl]                                      ; $5f7c: $ae
    di                                            ; $5f7d: $f3
    cp d                                          ; $5f7e: $ba
    ld e, h                                       ; $5f7f: $5c
    db $e4                                        ; $5f80: $e4
    inc l                                         ; $5f81: $2c
    adc [hl]                                      ; $5f82: $8e

Jump_03b_5f83:
    sbc [hl]                                      ; $5f83: $9e
    ld a, [hl-]                                   ; $5f84: $3a
    adc e                                         ; $5f85: $8b
    ld l, e                                       ; $5f86: $6b
    adc h                                         ; $5f87: $8c
    add hl, bc                                    ; $5f88: $09
    ld e, a                                       ; $5f89: $5f
    push hl                                       ; $5f8a: $e5
    ld [hl], l                                    ; $5f8b: $75
    call nz, $9f95                                ; $5f8c: $c4 $95 $9f
    ld l, a                                       ; $5f8f: $6f
    ld b, d                                       ; $5f90: $42
    ld h, e                                       ; $5f91: $63
    sbc d                                         ; $5f92: $9a
    dec l                                         ; $5f93: $2d
    adc $a4                                       ; $5f94: $ce $a4
    ld [$fc4d], sp                                ; $5f96: $08 $4d $fc
    dec de                                        ; $5f99: $1b
    nop                                           ; $5f9a: $00
    db $dd                                        ; $5f9b: $dd
    xor [hl]                                      ; $5f9c: $ae

jr_03b_5f9d:
    cp $45                                        ; $5f9d: $fe $45
    ld [hl+], a                                   ; $5f9f: $22
    sub h                                         ; $5fa0: $94
    ld d, e                                       ; $5fa1: $53
    ld d, a                                       ; $5fa2: $57
    db $dd                                        ; $5fa3: $dd
    ld c, h                                       ; $5fa4: $4c
    inc hl                                        ; $5fa5: $23
    ld b, [hl]                                    ; $5fa6: $46
    adc $24                                       ; $5fa7: $ce $24
    ld l, $8d                                     ; $5fa9: $2e $8d
    dec bc                                        ; $5fab: $0b
    ld e, a                                       ; $5fac: $5f
    ld l, d                                       ; $5fad: $6a
    adc $73                                       ; $5fae: $ce $73
    ld [hl], l                                    ; $5fb0: $75
    ld e, e                                       ; $5fb1: $5b
    jr z, @+$1b                                   ; $5fb2: $28 $19

    or [hl]                                       ; $5fb4: $b6
    ld e, h                                       ; $5fb5: $5c
    jr nc, jr_03b_5f9d                            ; $5fb6: $30 $e5

    and l                                         ; $5fb8: $a5
    ld h, l                                       ; $5fb9: $65
    rrca                                          ; $5fba: $0f
    nop                                           ; $5fbb: $00
    halt                                          ; $5fbc: $76
    ld h, l                                       ; $5fbd: $65
    sbc [hl]                                      ; $5fbe: $9e
    ld a, [de]                                    ; $5fbf: $1a
    cp [hl]                                       ; $5fc0: $be
    add hl, bc                                    ; $5fc1: $09
    and $3c                                       ; $5fc2: $e6 $3c
    rla                                           ; $5fc4: $17
    adc b                                         ; $5fc5: $88
    rra                                           ; $5fc6: $1f
    ld [hl], d                                    ; $5fc7: $72
    call nc, Call_000_35d8                        ; $5fc8: $d4 $d8 $35
    ld [c], a                                     ; $5fcb: $e2
    jp z, $eaeb                                   ; $5fcc: $ca $eb $ea

    rst $28                                       ; $5fcf: $ef
    ld e, a                                       ; $5fd0: $5f
    and a                                         ; $5fd1: $a7
    ret z                                         ; $5fd2: $c8

    db $eb                                        ; $5fd3: $eb
    cp l                                          ; $5fd4: $bd
    ld b, b                                       ; $5fd5: $40
    or a                                          ; $5fd6: $b7
    ld [hl], a                                    ; $5fd7: $77
    push hl                                       ; $5fd8: $e5
    rst $20                                       ; $5fd9: $e7
    reti                                          ; $5fda: $d9


    and c                                         ; $5fdb: $a1
    ret c                                         ; $5fdc: $d8

    db $fc                                        ; $5fdd: $fc
    xor b                                         ; $5fde: $a8
    pop af                                        ; $5fdf: $f1
    ld h, l                                       ; $5fe0: $65
    add [hl]                                      ; $5fe1: $86
    ld h, d                                       ; $5fe2: $62
    cp $06                                        ; $5fe3: $fe $06
    db $dd                                        ; $5fe5: $dd
    ld a, [$eb38]                                 ; $5fe6: $fa $38 $eb
    ld b, d                                       ; $5fe9: $42
    ret                                           ; $5fea: $c9


    or b                                          ; $5feb: $b0
    push hl                                       ; $5fec: $e5
    inc a                                         ; $5fed: $3c
    rst $20                                       ; $5fee: $e7
    ld [hl], b                                    ; $5fef: $70
    rst $20                                       ; $5ff0: $e7
    adc c                                         ; $5ff1: $89
    or l                                          ; $5ff2: $b5
    cp d                                          ; $5ff3: $ba
    cp d                                          ; $5ff4: $ba
    and c                                         ; $5ff5: $a1
    ld c, a                                       ; $5ff6: $4f
    add hl, de                                    ; $5ff7: $19
    dec [hl]                                      ; $5ff8: $35
    cp [hl]                                       ; $5ff9: $be
    inc l                                         ; $5ffa: $2c
    and h                                         ; $5ffb: $a4
    ld hl, sp-$1a                                 ; $5ffc: $f8 $e6
    or e                                          ; $5ffe: $b3
    rlca                                          ; $5fff: $07
    nop                                           ; $6000: $00
    db $dd                                        ; $6001: $dd
    ld l, $3b                                     ; $6002: $2e $3b
    and b                                         ; $6004: $a0
    rst $00                                       ; $6005: $c7
    cp d                                          ; $6006: $ba
    rlca                                          ; $6007: $07
    and h                                         ; $6008: $a4
    call z, $aae2                                 ; $6009: $cc $e2 $aa
    ld c, $73                                     ; $600c: $0e $73
    call nc, $a5d8                                ; $600e: $d4 $d8 $a5
    inc hl                                        ; $6011: $23
    adc $94                                       ; $6012: $ce $94
    ld d, a                                       ; $6014: $57
    or $04                                        ; $6015: $f6 $04
    rst $20                                       ; $6017: $e7
    ld h, e                                       ; $6018: $63
    inc h                                         ; $6019: $24
    add $1c                                       ; $601a: $c6 $1c
    pop de                                        ; $601c: $d1
    inc h                                         ; $601d: $24
    ld b, [hl]                                    ; $601e: $46
    ld a, c                                       ; $601f: $79
    add hl, de                                    ; $6020: $19
    set 3, [hl]                                   ; $6021: $cb $de
    sub l                                         ; $6023: $95
    sbc a                                         ; $6024: $9f
    rst $20                                       ; $6025: $e7
    ld [bc], a                                    ; $6026: $02
    jp nc, Jump_03b_44b4                          ; $6027: $d2 $b4 $44

    ld [$000d], a                                 ; $602a: $ea $0d $00
    db $dd                                        ; $602d: $dd
    db $ec                                        ; $602e: $ec
    inc [hl]                                      ; $602f: $34
    halt                                          ; $6030: $76
    adc l                                         ; $6031: $8d
    cp b                                          ; $6032: $b8
    ld a, [c]                                     ; $6033: $f2
    cp d                                          ; $6034: $ba
    ld a, [$d7fb]                                 ; $6035: $fa $fb $d7
    add hl, hl                                    ; $6038: $29
    ld a, [c]                                     ; $6039: $f2
    jp c, $dd63                                   ; $603a: $da $63 $dd

    db $ec                                        ; $603d: $ec
    ld e, a                                       ; $603e: $5f
    db $e3                                        ; $603f: $e3
    xor a                                         ; $6040: $af
    and h                                         ; $6041: $a4
    adc $73                                       ; $6042: $ce $73
    and c                                         ; $6044: $a1
    or h                                          ; $6045: $b4
    sbc d                                         ; $6046: $9a
    or d                                          ; $6047: $b2
    ccf                                           ; $6048: $3f
    jr c, jr_03b_60a2                             ; $6049: $38 $57

    ld [hl], d                                    ; $604b: $72
    ld a, [$621d]                                 ; $604c: $fa $1d $62
    rrca                                          ; $604f: $0f
    nop                                           ; $6050: $00
    db $dd                                        ; $6051: $dd
    xor [hl]                                      ; $6052: $ae
    ld h, b                                       ; $6053: $60
    db $e4                                        ; $6054: $e4
    ld a, [hl]                                    ; $6055: $7e
    and [hl]                                      ; $6056: $a6
    cp h                                          ; $6057: $bc
    ld [de], a                                    ; $6058: $12
    cp [hl]                                       ; $6059: $be
    add b                                         ; $605a: $80
    adc h                                         ; $605b: $8c
    sub c                                         ; $605c: $91
    jp nc, $0003                                  ; $605d: $d2 $03 $00

    ld h, a                                       ; $6060: $67
    scf                                           ; $6061: $37
    ld [hl+], a                                   ; $6062: $22
    ld a, h                                       ; $6063: $7c
    or $2f                                        ; $6064: $f6 $2f
    ld h, d                                       ; $6066: $62
    ld e, l                                       ; $6067: $5d
    ld b, b                                       ; $6068: $40
    add $48                                       ; $6069: $c6 $48
    cp c                                          ; $606b: $b9
    rst $10                                       ; $606c: $d7
    rst $10                                       ; $606d: $d7
    ld d, c                                       ; $606e: $51
    and e                                         ; $606f: $a3
    db $fc                                        ; $6070: $fc
    ret nc                                        ; $6071: $d0

    or c                                          ; $6072: $b1
    ld a, [c]                                     ; $6073: $f2
    rst $30                                       ; $6074: $f7
    ld a, l                                       ; $6075: $7d
    dec de                                        ; $6076: $1b
    ld d, $76                                     ; $6077: $16 $76
    and h                                         ; $6079: $a4
    ld sp, hl                                     ; $607a: $f9
    rst $30                                       ; $607b: $f7
    rst $30                                       ; $607c: $f7
    ld [bc], a                                    ; $607d: $02
    ld e, e                                       ; $607e: $5b
    ld d, l                                       ; $607f: $55
    adc h                                         ; $6080: $8c
    rra                                           ; $6081: $1f
    add hl, bc                                    ; $6082: $09
    rst $18                                       ; $6083: $df
    and e                                         ; $6084: $a3
    rst $38                                       ; $6085: $ff
    dec de                                        ; $6086: $1b
    nop                                           ; $6087: $00
    ld bc, $2319                                  ; $6088: $01 $19 $23
    dec b                                         ; $608b: $05
    cp [hl]                                       ; $608c: $be
    xor $de                                       ; $608d: $ee $de
    ld d, $3d                                     ; $608f: $16 $3d
    rst $10                                       ; $6091: $d7
    ld [hl], c                                    ; $6092: $71
    ld l, d                                       ; $6093: $6a
    ld e, [hl]                                    ; $6094: $5e
    ld l, h                                       ; $6095: $6c
    ld e, [hl]                                    ; $6096: $5e
    and a                                         ; $6097: $a7
    ld l, l                                       ; $6098: $6d

Jump_03b_6099:
    sub c                                         ; $6099: $91
    dec bc                                        ; $609a: $0b
    sbc e                                         ; $609b: $9b
    rst $08                                       ; $609c: $cf
    ld e, c                                       ; $609d: $59
    inc e                                         ; $609e: $1c
    ld d, a                                       ; $609f: $57
    ld [hl], e                                    ; $60a0: $73
    ld b, h                                       ; $60a1: $44

jr_03b_60a2:
    db $e3                                        ; $60a2: $e3
    adc b                                         ; $60a3: $88
    ld d, c                                       ; $60a4: $51
    xor b                                         ; $60a5: $a8
    ld [hl], e                                    ; $60a6: $73
    cp b                                          ; $60a7: $b8
    ld c, $fb                                     ; $60a8: $0e $fb
    rst $20                                       ; $60aa: $e7
    ld c, e                                       ; $60ab: $4b
    ld c, a                                       ; $60ac: $4f
    nop                                           ; $60ad: $00
    db $dd                                        ; $60ae: $dd
    xor [hl]                                      ; $60af: $ae
    adc $95                                       ; $60b0: $ce $95
    sbc h                                         ; $60b2: $9c
    ld d, [hl]                                    ; $60b3: $56
    add l                                         ; $60b4: $85
    rst $08                                       ; $60b5: $cf
    sbc d                                         ; $60b6: $9a
    dec hl                                        ; $60b7: $2b
    add hl, sp                                    ; $60b8: $39
    xor l                                         ; $60b9: $ad
    jp c, $0003                                   ; $60ba: $da $03 $00

    ld a, l                                       ; $60bd: $7d
    ld [hl], e                                    ; $60be: $73
    dec h                                         ; $60bf: $25
    and a                                         ; $60c0: $a7
    ld d, l                                       ; $60c1: $55
    pop hl                                        ; $60c2: $e1
    ld d, e                                       ; $60c3: $53
    ld e, $9c                                     ; $60c4: $1e $9c
    ld [hl], d                                    ; $60c6: $72
    xor a                                         ; $60c7: $af
    ld a, e                                       ; $60c8: $7b
    ld b, b                                       ; $60c9: $40
    jp z, $ae2c                                   ; $60ca: $ca $2c $ae

    ld [$a730], a                                 ; $60cd: $ea $30 $a7
    ld e, h                                       ; $60d0: $5c
    ret                                           ; $60d1: $c9


    add l                                         ; $60d2: $85
    ld b, d                                       ; $60d3: $42
    ret z                                         ; $60d4: $c8

    ld h, c                                       ; $60d5: $61
    db $fc                                        ; $60d6: $fc
    db $fd                                        ; $60d7: $fd
    db $ec                                        ; $60d8: $ec
    add hl, hl                                    ; $60d9: $29
    ld [hl], l                                    ; $60da: $75
    ld c, e                                       ; $60db: $4b
    ld h, h                                       ; $60dc: $64
    rst $08                                       ; $60dd: $cf
    push af                                       ; $60de: $f5
    ld d, $e6                                     ; $60df: $16 $e6
    inc l                                         ; $60e1: $2c
    adc [hl]                                      ; $60e2: $8e
    ld h, e                                       ; $60e3: $63
    add hl, hl                                    ; $60e4: $29
    cp a                                          ; $60e5: $bf
    sub d                                         ; $60e6: $92
    db $d3                                        ; $60e7: $d3
    rst $28                                       ; $60e8: $ef
    ldh a, [rTMA]                                 ; $60e9: $f0 $06
    sub a                                         ; $60eb: $97
    db $e3                                        ; $60ec: $e3
    ld b, d                                       ; $60ed: $42

jr_03b_60ee:
    add a                                         ; $60ee: $87
    ld sp, $1357                                  ; $60ef: $31 $57 $13
    ld d, e                                       ; $60f2: $53
    rla                                           ; $60f3: $17
    cp [hl]                                       ; $60f4: $be
    db $fc                                        ; $60f5: $fc
    adc $13                                       ; $60f6: $ce $13
    ld l, e                                       ; $60f8: $6b
    ld [hl], l                                    ; $60f9: $75
    ld [hl], l                                    ; $60fa: $75
    ld b, e                                       ; $60fb: $43
    sbc a                                         ; $60fc: $9f
    ld [bc], a                                    ; $60fd: $02
    ld e, a                                       ; $60fe: $5f
    ld b, b                                       ; $60ff: $40
    add $48                                       ; $6100: $c6 $48
    cp c                                          ; $6102: $b9
    ld bc, $7add                                  ; $6103: $01 $dd $7a
    add hl, sp                                    ; $6106: $39
    ld hl, sp-$22                                 ; $6107: $f8 $de
    pop bc                                        ; $6109: $c1
    rst $30                                       ; $610a: $f7
    xor [hl]                                      ; $610b: $ae
    rlca                                          ; $610c: $07
    nop                                           ; $610d: $00
    ld bc, $342f                                  ; $610e: $01 $2f $34
    sbc h                                         ; $6111: $9c
    push bc                                       ; $6112: $c5
    ld [hl], c                                    ; $6113: $71
    pop de                                        ; $6114: $d1
    db $ed                                        ; $6115: $ed
    db $eb                                        ; $6116: $eb
    ld b, $e5                                     ; $6117: $06 $e5
    ld e, b                                       ; $6119: $58
    ld d, $28                                     ; $611a: $16 $28
    rst $30                                       ; $611c: $f7
    ld l, $4a                                     ; $611d: $2e $4a
    add h                                         ; $611f: $84
    ld a, [hl-]                                   ; $6120: $3a
    add hl, de                                    ; $6121: $19
    ld h, e                                       ; $6122: $63
    sub $53                                       ; $6123: $d6 $53
    ld l, $f8                                     ; $6125: $2e $f8
    dec bc                                        ; $6127: $0b
    jp nc, Jump_03b_7304                          ; $6128: $d2 $04 $73

    cp $0f                                        ; $612b: $fe $0f

jr_03b_612d:
    adc $7b                                       ; $612d: $ce $7b
    sub a                                         ; $612f: $97
    ld [hl], c                                    ; $6130: $71
    sbc [hl]                                      ; $6131: $9e
    db $fd                                        ; $6132: $fd
    ld e, [hl]                                    ; $6133: $5e
    xor d                                         ; $6134: $aa
    adc $e2                                       ; $6135: $ce $e2
    cp b                                          ; $6137: $b8
    adc [hl]                                      ; $6138: $8e
    ld d, e                                       ; $6139: $53
    adc e                                         ; $613a: $8b
    and e                                         ; $613b: $a3
    xor [hl]                                      ; $613c: $ae
    and h                                         ; $613d: $a4
    xor [hl]                                      ; $613e: $ae
    ld hl, $f424                                  ; $613f: $21 $24 $f4
    adc l                                         ; $6142: $8d
    jr jr_03b_60ee                                ; $6143: $18 $a9

    dec bc                                        ; $6145: $0b
    ld e, a                                       ; $6146: $5f
    ld a, [hl]                                    ; $6147: $7e
    add $c9                                       ; $6148: $c6 $c9
    ld c, e                                       ; $614a: $4b
    ld c, c                                       ; $614b: $49
    ld hl, sp+$02                                 ; $614c: $f8 $02
    ld [hl-], a                                   ; $614e: $32
    ld b, [hl]                                    ; $614f: $46
    jp z, Jump_000_000d                           ; $6150: $ca $0d $00

    ld bc, $bc94                                  ; $6153: $01 $94 $bc

Jump_03b_6156:
    rst $28                                       ; $6156: $ef
    dec de                                        ; $6157: $1b
    nop                                           ; $6158: $00
    sub a                                         ; $6159: $97
    dec [hl]                                      ; $615a: $35
    ld [hl+], a                                   ; $615b: $22
    ld [hl], l                                    ; $615c: $75
    ld d, $c7                                     ; $615d: $16 $c7
    ld de, $624d                                  ; $615f: $11 $4d $62
    sub h                                         ; $6162: $94
    sub a                                         ; $6163: $97

jr_03b_6164:
    dec e                                         ; $6164: $1d
    cp e                                          ; $6165: $bb
    jr nc, jr_03b_612d                            ; $6166: $30 $c5

    or h                                          ; $6168: $b4
    ld b, h                                       ; $6169: $44
    ld [$973c], a                                 ; $616a: $ea $3c $97
    db $fd                                        ; $616d: $fd
    ld d, d                                       ; $616e: $52
    rst $20                                       ; $616f: $e7
    add hl, sp                                    ; $6170: $39
    xor d                                         ; $6171: $aa
    ld a, c                                       ; $6172: $79

Call_03b_6173:
    ld sp, hl                                     ; $6173: $f9
    adc $f7                                       ; $6174: $ce $f7
    ld c, e                                       ; $6176: $4b
    ld hl, sp-$72                                 ; $6177: $f8 $8e
    ld e, c                                       ; $6179: $59
    sbc b                                         ; $617a: $98
    ld h, d                                       ; $617b: $62
    sbc d                                         ; $617c: $9a
    dec l                                         ; $617d: $2d
    adc $73                                       ; $617e: $ce $73
    ld h, $4b                                     ; $6180: $26 $4b
    db $dd                                        ; $6182: $dd
    ld c, d                                       ; $6183: $4a
    ld c, c                                       ; $6184: $49
    sbc l                                         ; $6185: $9d
    rst $20                                       ; $6186: $e7
    sub h                                         ; $6187: $94
    ld [de], a                                    ; $6188: $12
    ld [hl], $62                                  ; $6189: $36 $62
    db $e4                                        ; $618b: $e4
    xor h                                         ; $618c: $ac
    dec sp                                        ; $618d: $3b
    ld h, [hl]                                    ; $618e: $66
    ld h, c                                       ; $618f: $61
    adc d                                         ; $6190: $8a
    ld l, c                                       ; $6191: $69
    or [hl]                                       ; $6192: $b6
    jr c, jr_03b_6164                             ; $6193: $38 $cf

    add l                                         ; $6195: $85
    adc l                                         ; $6196: $8d
    ld h, l                                       ; $6197: $65
    sbc [hl]                                      ; $6198: $9e
    db $eb                                        ; $6199: $eb
    ld h, h                                       ; $619a: $64
    sub $5a                                       ; $619b: $d6 $5a
    ld e, $a1                                     ; $619d: $1e $a1
    ld a, e                                       ; $619f: $7b
    ld h, a                                       ; $61a0: $67
    rra                                           ; $61a1: $1f
    and b                                         ; $61a2: $a0
    and $4b                                       ; $61a3: $e6 $4b
    ld [$b388], a                                 ; $61a5: $ea $88 $b3
    ld c, a                                       ; $61a8: $4f
    ld [$4be6], sp                                ; $61a9: $08 $e6 $4b
    call nc, $f759                                ; $61ac: $d4 $59 $f7
    ld b, l                                       ; $61af: $45
    add sp, -$17                                  ; $61b0: $e8 $e9
    ld d, e                                       ; $61b2: $53
    xor b                                         ; $61b3: $a8
    scf                                           ; $61b4: $37
    nop                                           ; $61b5: $00
    rst $20                                       ; $61b6: $e7
    ld a, h                                       ; $61b7: $7c
    db $e4                                        ; $61b8: $e4
    ld b, d                                       ; $61b9: $42
    ld l, c                                       ; $61ba: $69
    ld a, [$d9f0]                                 ; $61bb: $fa $f0 $d9
    cp a                                          ; $61be: $bf
    adc b                                         ; $61bf: $88
    push af                                       ; $61c0: $f5
    cp [hl]                                       ; $61c1: $be
    ld l, a                                       ; $61c2: $6f
    nop                                           ; $61c3: $00
    rst $30                                       ; $61c4: $f7
    ld a, l                                       ; $61c5: $7d
    ld [hl], a                                    ; $61c6: $77
    xor e                                         ; $61c7: $ab
    add hl, sp                                    ; $61c8: $39
    rst $28                                       ; $61c9: $ef
    ld e, b                                       ; $61ca: $58
    cp b                                          ; $61cb: $b8
    jp c, Jump_03b_6099                           ; $61cc: $da $99 $60

    or $00                                        ; $61cf: $f6 $00
    ld a, l                                       ; $61d1: $7d
    ld [hl], e                                    ; $61d2: $73
    ld b, h                                       ; $61d3: $44
    sub e                                         ; $61d4: $93

Call_03b_61d5:
    jr @-$19                                      ; $61d5: $18 $e5

    and l                                         ; $61d7: $a5
    ld c, e                                       ; $61d8: $4b
    ld d, a                                       ; $61d9: $57
    ld [hl], d                                    ; $61da: $72
    ld d, $c7                                     ; $61db: $16 $c7
    dec a                                         ; $61dd: $3d
    ld a, [$75d7]                                 ; $61de: $fa $d7 $75
    sbc h                                         ; $61e1: $9c
    sbc d                                         ; $61e2: $9a
    ld b, a                                       ; $61e3: $47
    sbc a                                         ; $61e4: $9f
    dec bc                                        ; $61e5: $0b
    ld d, e                                       ; $61e6: $53
    or $16                                        ; $61e7: $f6 $16
    ld h, a                                       ; $61e9: $67
    or e                                          ; $61ea: $b3
    add b                                         ; $61eb: $80
    adc h                                         ; $61ec: $8c
    sub c                                         ; $61ed: $91
    ld [hl], d                                    ; $61ee: $72
    inc bc                                        ; $61ef: $03
    halt                                          ; $61f0: $76
    ld a, [$2fd3]                                 ; $61f1: $fa $d3 $2f
    ccf                                           ; $61f4: $3f
    ld [$cf02], a                                 ; $61f5: $ea $02 $cf
    cp h                                          ; $61f8: $bc
    add sp, -$1e                                  ; $61f9: $e8 $e2
    add l                                         ; $61fb: $85
    cpl                                           ; $61fc: $2f
    cp a                                          ; $61fd: $bf
    cpl                                           ; $61fe: $2f
    xor [hl]                                      ; $61ff: $ae
    add $d4                                       ; $6200: $c6 $d4
    ld a, l                                       ; $6202: $7d
    push hl                                       ; $6203: $e5
    or c                                          ; $6204: $b1
    rst $38                                       ; $6205: $ff
    ei                                            ; $6206: $fb
    ld d, h                                       ; $6207: $54
    ld hl, sp+$02                                 ; $6208: $f8 $02
    ld [hl-], a                                   ; $620a: $32
    ld b, [hl]                                    ; $620b: $46
    jp z, Jump_000_000d                           ; $620c: $ca $0d $00

    or $2f                                        ; $620f: $f6 $2f
    ld h, d                                       ; $6211: $62
    add l                                         ; $6212: $85
    xor a                                         ; $6213: $af
    cp e                                          ; $6214: $bb
    push bc                                       ; $6215: $c5
    ld d, l                                       ; $6216: $55
    ld e, l                                       ; $6217: $5d
    ldh a, [$0d]                                  ; $6218: $f0 $0d
    ld [hl], l                                    ; $621a: $75
    push de                                       ; $621b: $d5
    adc [hl]                                      ; $621c: $8e
    ld a, [c]                                     ; $621d: $f2
    di                                            ; $621e: $f3
    sbc h                                         ; $621f: $9c
    add hl, hl                                    ; $6220: $29
    xor a                                         ; $6221: $af
    db $ec                                        ; $6222: $ec
    cp c                                          ; $6223: $b9
    ret nz                                        ; $6224: $c0

    or h                                          ; $6225: $b4
    ld l, $14                                     ; $6226: $2e $14
    ld d, [hl]                                    ; $6228: $56
    db $d3                                        ; $6229: $d3
    call nz, $ef84                                ; $622a: $c4 $84 $ef
    push de                                       ; $622d: $d5
    ld h, [hl]                                    ; $622e: $66
    ld d, $c7                                     ; $622f: $16 $c7
    ld b, l                                       ; $6231: $45
    xor [hl]                                      ; $6232: $ae
    db $e4                                        ; $6233: $e4
    ld [hl+], a                                   ; $6234: $22
    ld de, $59ca                                  ; $6235: $11 $ca $59
    inc e                                         ; $6238: $1c
    rla                                           ; $6239: $17
    ld a, [bc]                                    ; $623a: $0a
    ld hl, $f187                                  ; $623b: $21 $87 $f1
    push hl                                       ; $623e: $e5
    ld b, $7d                                     ; $623f: $06 $7d
    ld e, c                                       ; $6241: $59
    ld l, c                                       ; $6242: $69
    and l                                         ; $6243: $a5
    ld [hl], b                                    ; $6244: $70
    pop bc                                        ; $6245: $c1
    ld e, a                                       ; $6246: $5f
    inc h                                         ; $6247: $24
    ld [hl], $9f                                  ; $6248: $36 $9f
    ld [hl], e                                    ; $624a: $73
    cp b                                          ; $624b: $b8
    scf                                           ; $624c: $37
    and [hl]                                      ; $624d: $a6
    ld a, c                                       ; $624e: $79
    ld h, d                                       ; $624f: $62
    db $e4                                        ; $6250: $e4
    xor h                                         ; $6251: $ac
    ld d, e                                       ; $6252: $53
    ld l, $f8                                     ; $6253: $2e $f8
    dec bc                                        ; $6255: $0b
    jp nc, Jump_03b_7304                          ; $6256: $d2 $04 $73

    cp $0f                                        ; $6259: $fe $0f
    ld c, [hl]                                    ; $625b: $4e
    ld hl, sp+$5e                                 ; $625c: $f8 $5e
    ld l, l                                       ; $625e: $6d
    ld h, [hl]                                    ; $625f: $66
    ld [hl], c                                    ; $6260: $71
    ld e, h                                       ; $6261: $5c
    jr nz, jr_03b_62e2                            ; $6262: $20 $7e

    ret z                                         ; $6264: $c8

    push de                                       ; $6265: $d5
    ld e, h                                       ; $6266: $5c
    db $fd                                        ; $6267: $fd
    add sp, $6d                                   ; $6268: $e8 $6d
    rst $30                                       ; $626a: $f7
    db $eb                                        ; $626b: $eb
    jr c, jr_03b_62a3                             ; $626c: $38 $35

    cpl                                           ; $626e: $2f
    dec hl                                        ; $626f: $2b
    xor c                                         ; $6270: $a9
    ld l, e                                       ; $6271: $6b
    ld [$7d09], sp                                ; $6272: $08 $09 $7d
    inc hl                                        ; $6275: $23
    ld b, [hl]                                    ; $6276: $46
    ld [$97c2], a                                 ; $6277: $ea $c2 $97
    ld e, a                                       ; $627a: $5f
    ld sp, hl                                     ; $627b: $f9
    add l                                         ; $627c: $85
    ld l, c                                       ; $627d: $69
    sbc d                                         ; $627e: $9a
    dec l                                         ; $627f: $2d
    adc $e2                                       ; $6280: $ce $e2
    cp b                                          ; $6282: $b8
    sub d                                         ; $6283: $92
    inc sp                                        ; $6284: $33
    ld c, [hl]                                    ; $6285: $4e
    ld a, b                                       ; $6286: $78

jr_03b_6287:
    inc bc                                        ; $6287: $03
    or $df                                        ; $6288: $f6 $df

jr_03b_628a:
    add hl, hl                                    ; $628a: $29
    ccf                                           ; $628b: $3f
    sub e                                         ; $628c: $93
    jr c, jr_03b_628a                             ; $628d: $38 $fb

    add a                                         ; $628f: $87
    and h                                         ; $6290: $a4
    ld sp, hl                                     ; $6291: $f9
    ld a, e                                       ; $6292: $7b
    add c                                         ; $6293: $81
    adc [hl]                                      ; $6294: $8e
    add l                                         ; $6295: $85
    db $d3                                        ; $6296: $d3
    rst $28                                       ; $6297: $ef
    ld d, b                                       ; $6298: $50
    ld d, [hl]                                    ; $6299: $56
    ld [hl], d                                    ; $629a: $72
    ld d, $c7                                     ; $629b: $16 $c7
    dec b                                         ; $629d: $05
    rst $18                                       ; $629e: $df
    cp d                                          ; $629f: $ba
    jr nc, jr_03b_6307                            ; $62a0: $30 $65

    rra                                           ; $62a2: $1f

jr_03b_62a3:
    or h                                          ; $62a3: $b4
    cp c                                          ; $62a4: $b9
    ld bc, $03dd                                  ; $62a5: $01 $dd $03
    ld d, d                                       ; $62a8: $52
    ld h, [hl]                                    ; $62a9: $66
    ld [hl], c                                    ; $62aa: $71
    ld d, l                                       ; $62ab: $55
    ld b, a                                       ; $62ac: $47
    adc l                                         ; $62ad: $8d
    ld e, l                                       ; $62ae: $5d
    cp d                                          ; $62af: $ba
    ld l, d                                       ; $62b0: $6a
    ld b, a                                       ; $62b1: $47
    ld sp, hl                                     ; $62b2: $f9
    ld de, $4c17                                  ; $62b3: $11 $17 $4c
    ld a, c                                       ; $62b6: $79
    sbc l                                         ; $62b7: $9d
    rst $20                                       ; $62b8: $e7
    ld c, h                                       ; $62b9: $4c
    ld a, c                                       ; $62ba: $79
    dec h                                         ; $62bb: $25
    ld a, h                                       ; $62bc: $7c
    or $2f                                        ; $62bd: $f6 $2f
    ld h, d                                       ; $62bf: $62
    db $ed                                        ; $62c0: $ed
    add hl, bc                                    ; $62c1: $09
    nop                                           ; $62c2: $00
    halt                                          ; $62c3: $76
    ld h, l                                       ; $62c4: $65
    and c                                         ; $62c5: $a1
    ld h, h                                       ; $62c6: $64
    dec [hl]                                      ; $62c7: $35
    dec [hl]                                      ; $62c8: $35
    ld h, l                                       ; $62c9: $65
    add c                                         ; $62ca: $81
    ld hl, sp+$21                                 ; $62cb: $f8 $21
    ld d, a                                       ; $62cd: $57
    ld [hl], e                                    ; $62ce: $73
    push af                                       ; $62cf: $f5
    and e                                         ; $62d0: $a3
    or a                                          ; $62d1: $b7
    db $dd                                        ; $62d2: $dd
    xor a                                         ; $62d3: $af
    db $e3                                        ; $62d4: $e3
    call nc, $acbc                                ; $62d5: $d4 $bc $ac
    ld hl, $f424                                  ; $62d8: $21 $24 $f4
    adc l                                         ; $62db: $8d
    jr jr_03b_6287                                ; $62dc: $18 $a9

    dec bc                                        ; $62de: $0b
    ld e, a                                       ; $62df: $5f
    ld a, [hl]                                    ; $62e0: $7e
    push hl                                       ; $62e1: $e5

jr_03b_62e2:
    rla                                           ; $62e2: $17
    and [hl]                                      ; $62e3: $a6
    ld l, c                                       ; $62e4: $69
    or [hl]                                       ; $62e5: $b6
    ld a, b                                       ; $62e6: $78
    ld [$5fb2], a                                 ; $62e7: $ea $b2 $5f
    ld [$473c], a                                 ; $62ea: $ea $3c $47
    dec [hl]                                      ; $62ed: $35
    cpl                                           ; $62ee: $2f
    rst $18                                       ; $62ef: $df
    ld sp, hl                                     ; $62f0: $f9
    ld a, [hl]                                    ; $62f1: $7e
    add hl, bc                                    ; $62f2: $09
    ld e, a                                       ; $62f3: $5f
    ret c                                         ; $62f4: $d8

    ld e, b                                       ; $62f5: $58
    and $b9                                       ; $62f6: $e6 $b9
    ld c, [hl]                                    ; $62f8: $4e
    ld h, [hl]                                    ; $62f9: $66
    xor l                                         ; $62fa: $ad
    push hl                                       ; $62fb: $e5
    ld de, $759a                                  ; $62fc: $11 $9a $75
    ld h, $4b                                     ; $62ff: $26 $4b
    db $dd                                        ; $6301: $dd
    ld c, d                                       ; $6302: $4a
    ld c, c                                       ; $6303: $49
    sbc l                                         ; $6304: $9d
    rst $20                                       ; $6305: $e7
    sub h                                         ; $6306: $94

jr_03b_6307:
    ld [de], a                                    ; $6307: $12
    ld [hl], $62                                  ; $6308: $36 $62

jr_03b_630a:
    db $e4                                        ; $630a: $e4
    dec c                                         ; $630b: $0d
    nop                                           ; $630c: $00
    cp l                                          ; $630d: $bd
    ld d, [hl]                                    ; $630e: $56
    and c                                         ; $630f: $a1
    and c                                         ; $6310: $a1
    ld c, [hl]                                    ; $6311: $4e
    add hl, sp                                    ; $6312: $39
    and d                                         ; $6313: $a2
    ld [hl], c                                    ; $6314: $71
    call nz, $8f28                                ; $6315: $c4 $28 $8f
    di                                            ; $6318: $f3
    inc e                                         ; $6319: $1c
    dec [hl]                                      ; $631a: $35
    ld [hl], l                                    ; $631b: $75
    ld h, c                                       ; $631c: $61
    jp z, $ea4a                                   ; $631d: $ca $4a $ea

    ld [hl+], a                                   ; $6320: $22
    ld b, l                                       ; $6321: $45
    adc b                                         ; $6322: $88
    xor c                                         ; $6323: $a9
    di                                            ; $6324: $f3
    inc l                                         ; $6325: $2c
    inc sp                                        ; $6326: $33
    ld e, c                                       ; $6327: $59
    ld [$bcb5], sp                                ; $6328: $08 $b5 $bc
    ld h, a                                       ; $632b: $67
    add a                                         ; $632c: $87
    inc sp                                        ; $632d: $33
    xor $31                                       ; $632e: $ee $31
    and $7e                                       ; $6330: $e6 $7e
    push hl                                       ; $6332: $e5
    rla                                           ; $6333: $17
    ld [hl], $96                                  ; $6334: $36 $96
    ld a, c                                       ; $6336: $79
    xor [hl]                                      ; $6337: $ae
    sub e                                         ; $6338: $93
    ld e, c                                       ; $6339: $59
    ld l, e                                       ; $633a: $6b
    ld a, c                                       ; $633b: $79
    add h                                         ; $633c: $84
    ldh [$c3], a                                  ; $633d: $e0 $c3
    ld e, h                                       ; $633f: $5c
    call Call_03b_4a69                            ; $6340: $cd $69 $4a
    jr z, jr_03b_6389                             ; $6343: $28 $44

    ld c, a                                       ; $6345: $4f
    or c                                          ; $6346: $b1
    ld sp, hl                                     ; $6347: $f9
    pop hl                                        ; $6348: $e1
    ei                                            ; $6349: $fb
    sbc a                                         ; $634a: $9f
    push bc                                       ; $634b: $c5
    ld [hl], c                                    ; $634c: $71
    add c                                         ; $634d: $81

Jump_03b_634e:
    ld hl, sp+$21                                 ; $634e: $f8 $21
    ld d, a                                       ; $6350: $57
    ld a, [hl]                                    ; $6351: $7e
    pop de                                        ; $6352: $d1
    ld d, l                                       ; $6353: $55
    ld a, [de]                                    ; $6354: $1a
    push hl                                       ; $6355: $e5
    ld b, a                                       ; $6356: $47
    sbc h                                         ; $6357: $9c
    cp d                                          ; $6358: $ba
    ld a, c                                       ; $6359: $79
    ld l, d                                       ; $635a: $6a
    ld hl, sp+$26                                 ; $635b: $f8 $26
    sbc b                                         ; $635d: $98
    rst $30                                       ; $635e: $f7
    ld l, $e2                                     ; $635f: $2e $e2
    jr nz, jr_03b_630a                            ; $6361: $20 $a7

    pop af                                        ; $6363: $f1
    ld [hl], c                                    ; $6364: $71
    pop af                                        ; $6365: $f1
    ld sp, $cae6                                  ; $6366: $31 $e6 $ca

Call_03b_6369:
    db $eb                                        ; $6369: $eb
    sub h                                         ; $636a: $94
    ld [de], a                                    ; $636b: $12
    ld [hl], $62                                  ; $636c: $36 $62
    and h                                         ; $636e: $a4
    adc $3a                                       ; $636f: $ce $3a
    ld [$4ceb], a                                 ; $6371: $ea $eb $4c
    ld [$0deb], a                                 ; $6374: $ea $eb $0d
    nop                                           ; $6377: $00
    db $dd                                        ; $6378: $dd
    db $ec                                        ; $6379: $ec
    inc [hl]                                      ; $637a: $34
    halt                                          ; $637b: $76
    jp hl                                         ; $637c: $e9


    ld a, [de]                                    ; $637d: $1a
    ld b, [hl]                                    ; $637e: $46
    adc d                                         ; $637f: $8a
    cp b                                          ; $6380: $b8
    ld a, [hl-]                                   ; $6381: $3a
    ld l, h                                       ; $6382: $6c
    ld b, h                                       ; $6383: $44
    sbc a                                         ; $6384: $9f
    ld [hl], e                                    ; $6385: $73
    ld hl, sp+$33                                 ; $6386: $f8 $33
    push hl                                       ; $6388: $e5

jr_03b_6389:
    sub l                                         ; $6389: $95
    dec a                                         ; $638a: $3d
    sub $ad                                       ; $638b: $d6 $ad
    ld [hl], a                                    ; $638d: $77
    ld b, e                                       ; $638e: $43
    sub e                                         ; $638f: $93
    dec bc                                        ; $6390: $0b
    dec e                                         ; $6391: $1d
    add $d4                                       ; $6392: $c6 $d4
    push de                                       ; $6394: $d5
    call nz, Call_03b_79d4                        ; $6395: $c4 $d4 $79
    adc $bc                                       ; $6398: $ce $bc
    add $06                                       ; $639a: $c6 $06
    push hl                                       ; $639c: $e5
    jp nz, $df97                                  ; $639d: $c2 $97 $df

    ld a, c                                       ; $63a0: $79
    ld h, d                                       ; $63a1: $62
    xor l                                         ; $63a2: $ad
    xor [hl]                                      ; $63a3: $ae
    ld l, [hl]                                    ; $63a4: $6e
    add sp, $53                                   ; $63a5: $e8 $53
    ld a, d                                       ; $63a7: $7a
    nop                                           ; $63a8: $00
    sub a                                         ; $63a9: $97
    db $e3                                        ; $63aa: $e3
    ld [$89ac], a                                 ; $63ab: $ea $ac $89
    ld sp, $fbef                                  ; $63ae: $31 $ef $fb
    xor $66                                       ; $63b1: $ee $66
    rst $38                                       ; $63b3: $ff
    sub b                                         ; $63b4: $90
    inc [hl]                                      ; $63b5: $34
    ccf                                           ; $63b6: $3f
    rst $18                                       ; $63b7: $df
    ld a, [$2ce5]                                 ; $63b8: $fa $e5 $2c
    adc [hl]                                      ; $63bb: $8e
    and e                                         ; $63bc: $a3
    add $ef                                       ; $63bd: $c6 $ef
    db $fc                                        ; $63bf: $fc
    xor d                                         ; $63c0: $aa
    ld e, l                                       ; $63c1: $5d
    db $dd                                        ; $63c2: $dd
    and b                                         ; $63c3: $a0
    ld b, a                                       ; $63c4: $47
    sbc a                                         ; $63c5: $9f
    and e                                         ; $63c6: $a3
    sbc d                                         ; $63c7: $9a
    sub a                                         ; $63c8: $97
    rst $28                                       ; $63c9: $ef
    ld a, h                                       ; $63ca: $7c
    cp a                                          ; $63cb: $bf
    call nc, $2985                                ; $63cc: $d4 $85 $29
    ld a, e                                       ; $63cf: $7b
    adc e                                         ; $63d0: $8b
    or e                                          ; $63d1: $b3
    jp hl                                         ; $63d2: $e9


    ld bc, $7d00                                  ; $63d3: $01 $00 $7d
    sbc h                                         ; $63d6: $9c
    ld [hl], l                                    ; $63d7: $75
    sbc l                                         ; $63d8: $9d
    ld b, [hl]                                    ; $63d9: $46

Call_03b_63da:
    add h                                         ; $63da: $84
    xor a                                         ; $63db: $af
    ld e, e                                       ; $63dc: $5b
    or $4b                                        ; $63dd: $f6 $4b
    sbc l                                         ; $63df: $9d
    rst $20                                       ; $63e0: $e7
    xor b                                         ; $63e1: $a8
    and $e5                                       ; $63e2: $e6 $e5
    dec sp                                        ; $63e4: $3b
    rst $18                                       ; $63e5: $df
    cpl                                           ; $63e6: $2f
    ld a, e                                       ; $63e7: $7b
    nop                                           ; $63e8: $00
    ld bc, $342f                                  ; $63e9: $01 $2f $34
    call nz, $bf65                                ; $63ec: $c4 $65 $bf
    call nc, $ae79                                ; $63ef: $d4 $79 $ae
    and c                                         ; $63f2: $a1
    jp nc, $bcc4                                  ; $63f3: $d2 $c4 $bc

    rst $28                                       ; $63f6: $ef
    db $db                                        ; $63f7: $db
    ld h, h                                       ; $63f8: $64
    sbc l                                         ; $63f9: $9d
    di                                            ; $63fa: $f3
    sbc h                                         ; $63fb: $9c
    jp $cd51                                      ; $63fc: $c3 $51 $cd


    bit 6, a                                      ; $63ff: $cb $77
    cp [hl]                                       ; $6401: $be
    ld e, a                                       ; $6402: $5f
    sbc $00                                       ; $6403: $de $00
    halt                                          ; $6405: $76
    ld a, [de]                                    ; $6406: $1a
    ld a, a                                       ; $6407: $7f
    ld c, d                                       ; $6408: $4a
    add hl, bc                                    ; $6409: $09
    dec de                                        ; $640a: $1b
    ld sp, $b172                                  ; $640b: $31 $72 $b1
    ld de, $8739                                  ; $640e: $11 $39 $87
    cp a                                          ; $6411: $bf
    ldh a, [rNR51]                                ; $6412: $f0 $25
    ld [hl], d                                    ; $6414: $72
    add h                                         ; $6415: $84
    dec d                                         ; $6416: $15
    push hl                                       ; $6417: $e5
    rrca                                          ; $6418: $0f
    cp $fb                                        ; $6419: $fe $fb
    cp [hl]                                       ; $641b: $be
    ld bc, $3a76                                  ; $641c: $01 $76 $3a
    add a                                         ; $641f: $87
    cp a                                          ; $6420: $bf
    or b                                          ; $6421: $b0
    or c                                          ; $6422: $b1
    call z, Call_03b_4a73                         ; $6423: $cc $73 $4a
    add hl, bc                                    ; $6426: $09
    dec de                                        ; $6427: $1b
    ld sp, $c272                                  ; $6428: $31 $72 $c2
    cpl                                           ; $642b: $2f
    rst $30                                       ; $642c: $f7
    ld l, $c7                                     ; $642d: $2e $c7
    push de                                       ; $642f: $d5
    ld e, c                                       ; $6430: $59
    inc de                                        ; $6431: $13
    ld h, e                                       ; $6432: $63
    sbc $f7                                       ; $6433: $de $f7
    db $dd                                        ; $6435: $dd
    call $afe1                                    ; $6436: $cd $e1 $af
    sub e                                         ; $6439: $93
    ld e, c                                       ; $643a: $59
    ld l, e                                       ; $643b: $6b
    ld a, c                                       ; $643c: $79
    add h                                         ; $643d: $84
    ld b, [hl]                                    ; $643e: $46
    sbc l                                         ; $643f: $9d
    jp $529f                                      ; $6440: $c3 $9f $52


    jp nz, $8c46                                  ; $6443: $c2 $46 $8c

    db $ec                                        ; $6446: $ec
    ld bc, $dd00                                  ; $6447: $01 $00 $dd
    cpl                                           ; $644a: $2f
    ld [hl], c                                    ; $644b: $71
    ld d, l                                       ; $644c: $55
    rla                                           ; $644d: $17
    ld a, h                                       ; $644e: $7c
    db $eb                                        ; $644f: $eb
    adc b                                         ; $6450: $88
    ld d, c                                       ; $6451: $51
    cp b                                          ; $6452: $b8
    ld a, [c]                                     ; $6453: $f2
    ld a, [hl-]                                   ; $6454: $3a
    add sp, $45                                   ; $6455: $e8 $45
    ld e, [hl]                                    ; $6457: $5e
    rst $20                                       ; $6458: $e7
    cp c                                          ; $6459: $b9
    sub d                                         ; $645a: $92
    ld a, [hl-]                                   ; $645b: $3a
    ld c, b                                       ; $645c: $48
    ld e, d                                       ; $645d: $5a
    ld [hl], l                                    ; $645e: $75
    ld l, d                                       ; $645f: $6a
    ld c, a                                       ; $6460: $4f
    nop                                           ; $6461: $00
    rst $20                                       ; $6462: $e7
    or b                                          ; $6463: $b0
    ld b, e                                       ; $6464: $43
    sbc h                                         ; $6465: $9c
    ld d, d                                       ; $6466: $52
    ld h, [hl]                                    ; $6467: $66
    or d                                          ; $6468: $b2
    call nc, $94ad                                ; $6469: $d4 $ad $94
    call nc, Call_03b_4e79                        ; $646c: $d4 $79 $4e
    add hl, hl                                    ; $646f: $29
    ld h, c                                       ; $6470: $61
    inc hl                                        ; $6471: $23
    ld b, [hl]                                    ; $6472: $46
    sbc $eb                                       ; $6473: $de $eb
    dec l                                         ; $6475: $2d
    call z, Call_000_1c59                         ; $6476: $cc $59 $1c
    ld d, a                                       ; $6479: $57
    ld [hl], e                                    ; $647a: $73
    sub l                                         ; $647b: $95
    cpl                                           ; $647c: $2f
    ld e, [hl]                                    ; $647d: $5e
    cp d                                          ; $647e: $ba
    ldh a, [rTMA]                                 ; $647f: $f0 $06
    rst $20                                       ; $6481: $e7
    db $e3                                        ; $6482: $e3
    ld a, e                                       ; $6483: $7b
    ld a, [de]                                    ; $6484: $1a
    rst $30                                       ; $6485: $f7
    ld a, $f5                                     ; $6486: $3e $f5
    sbc $e5                                       ; $6488: $de $e5
    cp b                                          ; $648a: $b8
    ret nc                                        ; $648b: $d0

    ld h, c                                       ; $648c: $61
    call z, $c4d5                                 ; $648d: $cc $d5 $c4
    call nc, Call_000_017b                        ; $6490: $d4 $7b $01
    cpl                                           ; $6493: $2f
    inc [hl]                                      ; $6494: $34
    sbc h                                         ; $6495: $9c
    push bc                                       ; $6496: $c5
    ld [hl], c                                    ; $6497: $71
    push hl                                       ; $6498: $e5
    ld d, a                                       ; $6499: $57
    db $fd                                        ; $649a: $fd
    push af                                       ; $649b: $f5
    rrca                                          ; $649c: $0f
    ld [hl], e                                    ; $649d: $73
    dec h                                         ; $649e: $25
    ld b, a                                       ; $649f: $47
    ld e, l                                       ; $64a0: $5d
    ld c, h                                       ; $64a1: $4c
    sbc a                                         ; $64a2: $9f
    rst $30                                       ; $64a3: $f7
    ld [bc], a                                    ; $64a4: $02
    dec de                                        ; $64a5: $1b
    db $e4                                        ; $64a6: $e4
    cp b                                          ; $64a7: $b8
    adc [hl]                                      ; $64a8: $8e
    ld d, e                                       ; $64a9: $53
    di                                            ; $64aa: $f3
    add sp, -$0d                                  ; $64ab: $e8 $f3
    ld b, $e7                                     ; $64ad: $06 $e7
    and e                                         ; $64af: $a3
    ret                                           ; $64b0: $c9


    ld a, [hl-]                                   ; $64b1: $3a
    inc l                                         ; $64b2: $2c
    adc h                                         ; $64b3: $8c
    xor c                                         ; $64b4: $a9
    rst $30                                       ; $64b5: $f7
    ld l, $c7                                     ; $64b6: $2e $c7
    add l                                         ; $64b8: $85
    ld c, $63                                     ; $64b9: $0e $63
    xor [hl]                                      ; $64bb: $ae
    ld h, $a6                                     ; $64bc: $26 $a6
    sbc $b3                                       ; $64be: $de $b3
    db $d3                                        ; $64c0: $d3
    ret c                                         ; $64c1: $d8

    and l                                         ; $64c2: $a5
    xor e                                         ; $64c3: $ab
    cp $52                                        ; $64c4: $fe $52
    ld e, $7d                                     ; $64c6: $1e $7d
    xor $17                                       ; $64c8: $ee $17
    db $dd                                        ; $64ca: $dd
    cp [hl]                                       ; $64cb: $be
    ld l, [hl]                                    ; $64cc: $6e
    ld d, b                                       ; $64cd: $50
    xor $a2                                       ; $64ce: $ee $a2
    ld b, h                                       ; $64d0: $44
    xor b                                         ; $64d1: $a8
    sub e                                         ; $64d2: $93
    ld sp, $7d66                                  ; $64d3: $31 $66 $7d
    inc bc                                        ; $64d6: $03
    ld a, l                                       ; $64d7: $7d
    sbc h                                         ; $64d8: $9c
    ld [hl], l                                    ; $64d9: $75
    ld h, c                                       ; $64da: $61
    sbc d                                         ; $64db: $9a
    call nc, $8435                                ; $64dc: $d4 $35 $84
    add h                                         ; $64df: $84
    cp [hl]                                       ; $64e0: $be
    ld de, $1523                                  ; $64e1: $11 $23 $15
    cp [hl]                                       ; $64e4: $be
    add b                                         ; $64e5: $80
    adc h                                         ; $64e6: $8c
    sub c                                         ; $64e7: $91
    ld [hl], d                                    ; $64e8: $72
    rst $28                                       ; $64e9: $ef
    ld a, [bc]                                    ; $64ea: $0a
    rst $00                                       ; $64eb: $c7
    ld d, d                                       ; $64ec: $52
    pop hl                                        ; $64ed: $e1
    ld a, [hl]                                    ; $64ee: $7e
    dec e                                         ; $64ef: $1d
    and a                                         ; $64f0: $a7
    and $e5                                       ; $64f1: $e6 $e5
    ld b, $97                                     ; $64f3: $06 $97
    cp c                                          ; $64f5: $b9
    ld a, l                                       ; $64f6: $7d
    db $dd                                        ; $64f7: $dd
    and b                                         ; $64f8: $a0
    inc e                                         ; $64f9: $1c
    and $82                                       ; $64fa: $e6 $82
    cp a                                          ; $64fc: $bf
    jr nc, jr_03b_657c                            ; $64fd: $30 $7d

    di                                            ; $64ff: $f3
    add hl, sp                                    ; $6500: $39
    ld l, d                                       ; $6501: $6a
    ld c, b                                       ; $6502: $48
    ld a, c                                       ; $6503: $79
    sbc c                                         ; $6504: $99
    ld [hl], l                                    ; $6505: $75
    call nc, Call_000_35d8                        ; $6506: $d4 $d8 $35
    ld [c], a                                     ; $6509: $e2
    jp z, Jump_03b_588f                           ; $650a: $ca $8f $58

    ld c, l                                       ; $650d: $4d
    xor c                                         ; $650e: $a9
    add hl, hl                                    ; $650f: $29
    ld [hl], $7f                                  ; $6510: $36 $7f
    xor a                                         ; $6512: $af
    rst $08                                       ; $6513: $cf
    sub a                                         ; $6514: $97
    dec b                                         ; $6515: $05
    ld l, c                                       ; $6516: $69
    add d                                         ; $6517: $82
    add hl, bc                                    ; $6518: $09
    ld e, a                                       ; $6519: $5f
    ld b, b                                       ; $651a: $40
    add $48                                       ; $651b: $c6 $48
    cp c                                          ; $651d: $b9
    or a                                          ; $651e: $b7
    inc de                                        ; $651f: $13
    ld d, $3a                                     ; $6520: $16 $3a
    adc h                                         ; $6522: $8c
    xor c                                         ; $6523: $a9
    xor e                                         ; $6524: $ab
    adc c                                         ; $6525: $89
    xor c                                         ; $6526: $a9
    dec bc                                        ; $6527: $0b
    ld e, a                                       ; $6528: $5f
    ld a, [hl]                                    ; $6529: $7e
    rst $20                                       ; $652a: $e7
    adc c                                         ; $652b: $89
    or l                                          ; $652c: $b5
    cp d                                          ; $652d: $ba
    cp d                                          ; $652e: $ba
    and c                                         ; $652f: $a1
    ld c, a                                       ; $6530: $4f
    cp c                                          ; $6531: $b9
    or a                                          ; $6532: $b7
    ld b, b                                       ; $6533: $40
    xor $cd                                       ; $6534: $ee $cd
    ld [hl], a                                    ; $6536: $77
    ld l, h                                       ; $6537: $6c
    ld d, a                                       ; $6538: $57
    ld a, [hl]                                    ; $6539: $7e
    and [hl]                                      ; $653a: $a6
    cp h                                          ; $653b: $bc
    ld a, [c]                                     ; $653c: $f2

jr_03b_653d:
    ld b, $57                                     ; $653d: $06 $57
    rst $38                                       ; $653f: $ff
    xor b                                         ; $6540: $a8
    or c                                          ; $6541: $b1
    dec bc                                        ; $6542: $0b
    cp [hl]                                       ; $6543: $be
    jr nz, jr_03b_653d                            ; $6544: $20 $f7

    and $3b                                       ; $6546: $e6 $3b
    rst $28                                       ; $6548: $ef
    di                                            ; $6549: $f3
    ld e, [hl]                                    ; $654a: $5e
    or a                                          ; $654b: $b7
    ld e, [hl]                                    ; $654c: $5e
    xor e                                         ; $654d: $ab
    ld d, b                                       ; $654e: $50
    ld h, [hl]                                    ; $654f: $66
    ld l, h                                       ; $6550: $6c
    db $eb                                        ; $6551: $eb
    ld e, h                                       ; $6552: $5c
    jr nz, @+$80                                  ; $6553: $20 $7e

    ret z                                         ; $6555: $c8

    push de                                       ; $6556: $d5
    sbc h                                         ; $6557: $9c
    push bc                                       ; $6558: $c5
    or l                                          ; $6559: $b5
    ld hl, sp+$0b                                 ; $655a: $f8 $0b
    dec e                                         ; $655c: $1d
    add $d4                                       ; $655d: $c6 $d4
    ld a, l                                       ; $655f: $7d
    jr nc, @-$19                                  ; $6560: $30 $e5

    ld a, e                                       ; $6562: $7b
    nop                                           ; $6563: $00
    add c                                         ; $6564: $81
    ld l, h                                       ; $6565: $6c
    cp d                                          ; $6566: $ba
    ret nc                                        ; $6567: $d0

    ld h, c                                       ; $6568: $61
    ld c, h                                       ; $6569: $4c
    ld e, l                                       ; $656a: $5d
    db $dd                                        ; $656b: $dd
    and l                                         ; $656c: $a5
    dec bc                                        ; $656d: $0b
    ld d, e                                       ; $656e: $53
    ld b, [hl]                                    ; $656f: $46
    inc [hl]                                      ; $6570: $34
    adc c                                         ; $6571: $89
    ld d, c                                       ; $6572: $51
    ld e, [hl]                                    ; $6573: $5e
    ld d, [hl]                                    ; $6574: $56
    ld d, d                                       ; $6575: $52
    rst $10                                       ; $6576: $d7
    db $10                                        ; $6577: $10
    ld [de], a                                    ; $6578: $12
    ld a, [$8c46]                                 ; $6579: $fa $46 $8c

jr_03b_657c:
    ld d, h                                       ; $657c: $54
    ld hl, sp+$42                                 ; $657d: $f8 $42
    ld c, d                                       ; $657f: $4a
    ld l, $72                                     ; $6580: $2e $72
    ld d, $d7                                     ; $6582: $16 $d7
    ld [c], a                                     ; $6584: $e2
    ld c, e                                       ; $6585: $4b
    push de                                       ; $6586: $d5
    add hl, sp                                    ; $6587: $39
    call z, $2985                                 ; $6588: $cc $85 $29
    ld d, $c7                                     ; $658b: $16 $c7
    dec b                                         ; $658d: $05
    ld e, a                                       ; $658e: $5f
    rla                                           ; $658f: $17
    ld e, a                                       ; $6590: $5f
    db $fc                                        ; $6591: $fc
    ei                                            ; $6592: $fb
    sbc h                                         ; $6593: $9c
    ld h, a                                       ; $6594: $67
    db $fd                                        ; $6595: $fd
    jp c, $e7de                                   ; $6596: $da $de $e7

    cp l                                          ; $6599: $bd
    ld e, [hl]                                    ; $659a: $5e
    pop bc                                        ; $659b: $c1
    sub h                                         ; $659c: $94
    sbc a                                         ; $659d: $9f
    ld c, c                                       ; $659e: $49
    ld de, $57ee                                  ; $659f: $11 $ee $57
    ld a, [hl]                                    ; $65a2: $7e
    and c                                         ; $65a3: $a1
    ret c                                         ; $65a4: $d8

    jp nz, $f56a                                  ; $65a5: $c2 $6a $f5

    rst $08                                       ; $65a8: $cf
    sub h                                         ; $65a9: $94
    ld d, a                                       ; $65aa: $57
    jp nz, $c3f7                                  ; $65ab: $c2 $f7 $c3

    sbc h                                         ; $65ae: $9c
    ld d, d                                       ; $65af: $52
    ld h, [hl]                                    ; $65b0: $66
    ld [hl], c                                    ; $65b1: $71
    sbc h                                         ; $65b2: $9c
    push bc                                       ; $65b3: $c5
    dec [hl]                                      ; $65b4: $35
    jp z, Jump_03b_42eb                           ; $65b5: $ca $eb $42

    adc d                                         ; $65b8: $8a
    and a                                         ; $65b9: $a7
    xor h                                         ; $65ba: $ac

jr_03b_65bb:
    xor $d2                                       ; $65bb: $ee $d2
    add l                                         ; $65bd: $85
    ld c, $63                                     ; $65be: $0e $63
    ld [$97c2], a                                 ; $65c0: $ea $c2 $97
    ld e, a                                       ; $65c3: $5f
    ld [hl], h                                    ; $65c4: $74
    inc sp                                        ; $65c5: $33
    xor a                                         ; $65c6: $af
    ld a, a                                       ; $65c7: $7f
    inc bc                                        ; $65c8: $03
    ld a, l                                       ; $65c9: $7d
    ld [hl], e                                    ; $65ca: $73
    ld h, c                                       ; $65cb: $61
    and e                                         ; $65cc: $a3
    ld hl, sp-$29                                 ; $65cd: $f8 $d7
    ld a, c                                       ; $65cf: $79
    xor [hl]                                      ; $65d0: $ae
    jp nc, $fe34                                  ; $65d1: $d2 $34 $fe

    jp z, $ceeb                                   ; $65d4: $ca $eb $ce

    db $eb                                        ; $65d7: $eb
    ld [de], a                                    ; $65d8: $12
    jr z, @-$33                                   ; $65d9: $28 $cb

    rst $08                                       ; $65db: $cf
    or e                                          ; $65dc: $b3
    xor h                                         ; $65dd: $ac
    ld b, d                                       ; $65de: $42
    adc l                                         ; $65df: $8d
    ld [hl], $1d                                  ; $65e0: $36 $1d
    ld d, a                                       ; $65e2: $57
    ld a, [c]                                     ; $65e3: $f2
    ld e, [hl]                                    ; $65e4: $5e
    xor a                                         ; $65e5: $af
    ld [bc], a                                    ; $65e6: $02
    cp c                                          ; $65e7: $b9
    ld b, [hl]                                    ; $65e8: $46
    ld e, h                                       ; $65e9: $5c
    db $dd                                        ; $65ea: $dd
    and l                                         ; $65eb: $a5
    dec hl                                        ; $65ec: $2b
    cp a                                          ; $65ed: $bf
    ld c, d                                       ; $65ee: $4a
    add e                                         ; $65ef: $83
    ld e, d                                       ; $65f0: $5a
    ld sp, hl                                     ; $65f1: $f9
    dec de                                        ; $65f2: $1b
    nop                                           ; $65f3: $00
    ld a, l                                       ; $65f4: $7d
    sbc d                                         ; $65f5: $9a
    db $fc                                        ; $65f6: $fc
    inc c                                         ; $65f7: $0c
    push bc                                       ; $65f8: $c5
    db $fc                                        ; $65f9: $fc
    inc a                                         ; $65fa: $3c
    ld d, a                                       ; $65fb: $57
    ld a, [hl]                                    ; $65fc: $7e
    cp l                                          ; $65fd: $bd
    cp a                                          ; $65fe: $bf
    di                                            ; $65ff: $f3
    rlca                                          ; $6600: $07
    rst $38                                       ; $6601: $ff
    inc a                                         ; $6602: $3c
    ld h, a                                       ; $6603: $67
    rst $38                                       ; $6604: $ff
    sub b                                         ; $6605: $90
    inc [hl]                                      ; $6606: $34
    ld a, a                                       ; $6607: $7f
    rst $08                                       ; $6608: $cf
    ld c, $f7                                     ; $6609: $0e $f7
    dec b                                         ; $660b: $05
    ld [hl], d                                    ; $660c: $72
    ld hl, sp+$4b                                 ; $660d: $f8 $4b
    di                                            ; $660f: $f3
    jp c, Jump_03b_716c                           ; $6610: $da $6c $71

    ld b, h                                       ; $6613: $44
    sub e                                         ; $6614: $93
    jr @-$59                                      ; $6615: $18 $a5

    ld [$ea4a], a                                 ; $6617: $ea $4a $ea

jr_03b_661a:
    ld a, [de]                                    ; $661a: $1a
    ld b, d                                       ; $661b: $42
    ld b, d                                       ; $661c: $42
    rst $18                                       ; $661d: $df
    adc b                                         ; $661e: $88
    sub c                                         ; $661f: $91
    ld a, [hl-]                                   ; $6620: $3a
    ld [c], a                                     ; $6621: $e2
    call nc, $dfad                                ; $6622: $d4 $ad $df
    adc e                                         ; $6625: $8b
    or a                                          ; $6626: $b7
    pop bc                                        ; $6627: $c1
    dec de                                        ; $6628: $1b
    nop                                           ; $6629: $00
    cp l                                          ; $662a: $bd
    add l                                         ; $662b: $85
    add hl, sp                                    ; $662c: $39
    adc e                                         ; $662d: $8b
    db $e3                                        ; $662e: $e3
    ld a, [hl+]                                   ; $662f: $2a
    ld l, l                                       ; $6630: $6d
    ld e, a                                       ; $6631: $5f
    jr nz, jr_03b_65bb                            ; $6632: $20 $87

    xor c                                         ; $6634: $a9
    inc hl                                        ; $6635: $23
    xor [hl]                                      ; $6636: $ae
    cp h                                          ; $6637: $bc
    adc $a4                                       ; $6638: $ce $a4
    cp [hl]                                       ; $663a: $be
    adc $b3                                       ; $663b: $ce $b3
    xor h                                         ; $663d: $ac
    ret nc                                        ; $663e: $d0

    ld d, $67                                     ; $663f: $16 $67
    ld [de], a                                    ; $6641: $12
    ld h, a                                       ; $6642: $67
    cp [hl]                                       ; $6643: $be
    jp Jump_000_3ffe                              ; $6644: $c3 $fe $3f


    rst $08                                       ; $6647: $cf
    ld [hl], l                                    ; $6648: $75
    ld b, c                                       ; $6649: $41
    xor [hl]                                      ; $664a: $ae
    sub l                                         ; $664b: $95
    sbc a                                         ; $664c: $9f
    ld h, a                                       ; $664d: $67
    sbc c                                         ; $664e: $99
    ld [de], a                                    ; $664f: $12
    ld [hl], d                                    ; $6650: $72
    add sp, $73                                   ; $6651: $e8 $73
    ld h, c                                       ; $6653: $61
    db $d3                                        ; $6654: $d3
    cp h                                          ; $6655: $bc
    ld bc, $3876                                  ; $6656: $01 $76 $38
    sub [hl]                                      ; $6659: $96
    ld a, c                                       ; $665a: $79
    ld l, d                                       ; $665b: $6a
    ld hl, sp+$26                                 ; $665c: $f8 $26
    sbc b                                         ; $665e: $98
    di                                            ; $665f: $f3
    ld e, h                                       ; $6660: $5c
    jr nz, jr_03b_66e1                            ; $6661: $20 $7e

    ret z                                         ; $6663: $c8

    xor c                                         ; $6664: $a9
    ld h, e                                       ; $6665: $63
    pop hl                                        ; $6666: $e1
    add d                                         ; $6667: $82
    rst $18                                       ; $6668: $df
    and c                                         ; $6669: $a1
    xor h                                         ; $666a: $ac
    ld hl, $f424                                  ; $666b: $21 $24 $f4
    adc l                                         ; $666e: $8d
    jr jr_03b_661a                                ; $666f: $18 $a9

    rst $30                                       ; $6671: $f7
    ld [bc], a                                    ; $6672: $02
    inc e                                         ; $6673: $1c
    dec a                                         ; $6674: $3d
    ld [hl], c                                    ; $6675: $71
    call nc, Call_000_32f8                        ; $6676: $d4 $f8 $32
    ld [c], a                                     ; $6679: $e2
    adc h                                         ; $667a: $8c
    ei                                            ; $667b: $fb
    ld h, d                                       ; $667c: $62
    ld [hl], c                                    ; $667d: $71
    adc l                                         ; $667e: $8d
    ld [hl-], a                                   ; $667f: $32
    ld l, l                                       ; $6680: $6d
    or c                                          ; $6681: $b1
    dec h                                         ; $6682: $25
    ld a, h                                       ; $6683: $7c
    pop bc                                        ; $6684: $c1
    rst $10                                       ; $6685: $d7
    ld hl, sp+$23                                 ; $6686: $f8 $23
    xor [hl]                                      ; $6688: $ae
    cp h                                          ; $6689: $bc
    ld l, $7c                                     ; $668a: $2e $7c
    and c                                         ; $668c: $a1
    and a                                         ; $668d: $a7
    sbc $00                                       ; $668e: $de $00
    db $dd                                        ; $6690: $dd
    db $ed                                        ; $6691: $ed
    ld e, a                                       ; $6692: $5f
    ld d, a                                       ; $6693: $57
    ld l, c                                       ; $6694: $69
    ld a, [de]                                    ; $6695: $1a
    ld [hl], e                                    ; $6696: $73
    dec c                                         ; $6697: $0d
    ld hl, $6fa1                                  ; $6698: $21 $a1 $6f
    call nz, Call_03b_5d48                        ; $669b: $c4 $48 $5d
    ld hl, sp-$0e                                 ; $669e: $f8 $f2
    dec bc                                        ; $66a0: $0b
    db $d3                                        ; $66a1: $d3
    or h                                          ; $66a2: $b4
    ld b, h                                       ; $66a3: $44
    ld [$94c2], a                                 ; $66a4: $ea $c2 $94
    cp l                                          ; $66a7: $bd
    push bc                                       ; $66a8: $c5
    reti                                          ; $66a9: $d9


    db $f4                                        ; $66aa: $f4
    inc b                                         ; $66ab: $04
    ld a, l                                       ; $66ac: $7d
    dec de                                        ; $66ad: $1b
    ld b, d                                       ; $66ae: $42
    ld c, $7f                                     ; $66af: $0e $7f
    ld h, c                                       ; $66b1: $61
    sbc d                                         ; $66b2: $9a
    ld h, [hl]                                    ; $66b3: $66
    adc e                                         ; $66b4: $8b
    dec bc                                        ; $66b5: $0b
    db $d3                                        ; $66b6: $d3
    ld c, e                                       ; $66b7: $4b
    rst $10                                       ; $66b8: $d7
    adc h                                         ; $66b9: $8c
    sub e                                         ; $66ba: $93
    sub a                                         ; $66bb: $97
    sub l                                         ; $66bc: $95
    sbc h                                         ; $66bd: $9c
    push bc                                       ; $66be: $c5
    ld [hl], c                                    ; $66bf: $71
    inc d                                         ; $66c0: $14
    ld a, [hl+]                                   ; $66c1: $2a
    ld a, h                                       ; $66c2: $7c
    ld bc, $2319                                  ; $66c3: $01 $19 $23
    push hl                                       ; $66c6: $e5
    ld b, $97                                     ; $66c7: $06 $97
    ld de, $5c67                                  ; $66c9: $11 $67 $5c
    di                                            ; $66cc: $f3

jr_03b_66cd:
    rst $28                                       ; $66cd: $ef
    ld [hl], e                                    ; $66ce: $73
    sbc b                                         ; $66cf: $98
    adc e                                         ; $66d0: $8b
    ld e, h                                       ; $66d1: $5c

jr_03b_66d2:
    push hl                                       ; $66d2: $e5
    xor l                                         ; $66d3: $ad
    xor a                                         ; $66d4: $af
    ei                                            ; $66d5: $fb
    dec e                                         ; $66d6: $1d
    ld l, d                                       ; $66d7: $6a
    sbc [hl]                                      ; $66d8: $9e
    ld [hl], d                                    ; $66d9: $72
    add sp, -$78                                  ; $66da: $e8 $88
    ld [hl], e                                    ; $66dc: $73
    jr c, jr_03b_66d2                             ; $66dd: $38 $f3

    push bc                                       ; $66df: $c5
    ld d, e                                       ; $66e0: $53

jr_03b_66e1:
    ld [de], a                                    ; $66e1: $12
    cp [hl]                                       ; $66e2: $be
    add b                                         ; $66e3: $80
    adc h                                         ; $66e4: $8c
    sub c                                         ; $66e5: $91
    ld [hl], d                                    ; $66e6: $72
    inc bc                                        ; $66e7: $03
    rst $20                                       ; $66e8: $e7
    inc [hl]                                      ; $66e9: $34
    ld b, e                                       ; $66ea: $43
    sbc h                                         ; $66eb: $9c
    push bc                                       ; $66ec: $c5
    ld [hl], c                                    ; $66ed: $71
    cp a                                          ; $66ee: $bf
    ld b, b                                       ; $66ef: $40
    db $fc                                        ; $66f0: $fc
    sub b                                         ; $66f1: $90
    ld d, e                                       ; $66f2: $53
    db $db                                        ; $66f3: $db
    sub d                                         ; $66f4: $92
    dec hl                                        ; $66f5: $2b
    inc e                                         ; $66f6: $1c
    db $e4                                        ; $66f7: $e4
    inc [hl]                                      ; $66f8: $34
    ld a, $ae                                     ; $66f9: $3e $ae
    and h                                         ; $66fb: $a4
    ld l, $b0                                     ; $66fc: $2e $b0
    ld e, b                                       ; $66fe: $58
    ld h, e                                       ; $66ff: $63

Call_03b_6700:
    sub b                                         ; $6700: $90
    jp nc, $e150                                  ; $6701: $d2 $50 $e1

    dec bc                                        ; $6704: $0b
    ld d, e                                       ; $6705: $53
    inc l                                         ; $6706: $2c
    adc [hl]                                      ; $6707: $8e
    and e                                         ; $6708: $a3
    adc [hl]                                      ; $6709: $8e
    ld h, l                                       ; $670a: $65
    db $fd                                        ; $670b: $fd
    ld e, b                                       ; $670c: $58
    call Call_03b_4e79                            ; $670d: $cd $79 $4e
    db $dd                                        ; $6710: $dd

Jump_03b_6711:
    call z, $dfeb                                 ; $6711: $cc $eb $df
    nop                                           ; $6714: $00
    add c                                         ; $6715: $81
    ld hl, sp+$21                                 ; $6716: $f8 $21
    ld d, a                                       ; $6718: $57
    ld [hl], e                                    ; $6719: $73
    ld h, c                                       ; $671a: $61
    ld [hl+], a                                   ; $671b: $22
    ld d, a                                       ; $671c: $57
    ld a, [hl]                                    ; $671d: $7e
    and $05                                       ; $671e: $e6 $05
    add hl, sp                                    ; $6720: $39
    rst $08                                       ; $6721: $cf
    ld b, c                                       ; $6722: $41
    ld e, a                                       ; $6723: $5f
    ld c, d                                       ; $6724: $4a
    jp $01bf                                      ; $6725: $c3 $bf $01


    ld a, l                                       ; $6728: $7d
    jr c, jr_03b_66cd                             ; $6729: $38 $a2

Jump_03b_672b:
    ld a, c                                       ; $672b: $79
    adc h                                         ; $672c: $8c
    cpl                                           ; $672d: $2f
    ld [hl], $bf                                  ; $672e: $36 $bf
    rrca                                          ; $6730: $0f
    add l                                         ; $6731: $85
    add sp, $29                                   ; $6732: $e8 $29
    ei                                            ; $6734: $fb
    dec b                                         ; $6735: $05
    rst $18                                       ; $6736: $df
    ld d, b                                       ; $6737: $50
    sub $61                                       ; $6738: $d6 $61
    and a                                         ; $673a: $a7
    ld sp, hl                                     ; $673b: $f9
    rst $10                                       ; $673c: $d7
    ld b, c                                       ; $673d: $41
    xor a                                         ; $673e: $af
    ld c, h                                       ; $673f: $4c
    ld a, l                                       ; $6740: $7d
    cp l                                          ; $6741: $bd
    ld bc, $2901                                  ; $6742: $01 $01 $29
    ld a, e                                       ; $6745: $7b
    adc e                                         ; $6746: $8b
    or e                                          ; $6747: $b3
    ld e, c                                       ; $6748: $59
    ret nc                                        ; $6749: $d0

    or c                                          ; $674a: $b1
    ld [hl], b                                    ; $674b: $70
    cp a                                          ; $674c: $bf
    and b                                         ; $674d: $a0
    ld h, e                                       ; $674e: $63
    dec h                                         ; $674f: $25
    rla                                           ; $6750: $17
    and [hl]                                      ; $6751: $a6
    sub a                                         ; $6752: $97
    and $f3                                       ; $6753: $e6 $f3
    ld b, $7d                                     ; $6755: $06 $7d
    jp c, $9482                                   ; $6757: $da $82 $94

    ld a, [$5731]                                 ; $675a: $fa $31 $57
    ld [hl], e                                    ; $675d: $73
    cp [hl]                                       ; $675e: $be
    push af                                       ; $675f: $f5
    bit 3, c                                      ; $6760: $cb $59
    inc e                                         ; $6762: $1c
    and a                                         ; $6763: $a7
    ld l, l                                       ; $6764: $6d
    rrca                                          ; $6765: $0f
    or l                                          ; $6766: $b5
    ld hl, sp-$63                                 ; $6767: $f8 $9d
    sbc a                                         ; $6769: $9f
    jp $cb55                                      ; $676a: $c3 $55 $cb


    xor e                                         ; $676d: $ab
    ret                                           ; $676e: $c9


    sub l                                         ; $676f: $95
    ld b, d                                       ; $6770: $42
    call z, $ce79                                 ; $6771: $cc $79 $ce
    pop hl                                        ; $6774: $e1
    cpl                                           ; $6775: $2f
    ld c, h                                       ; $6776: $4c
    db $d3                                        ; $6777: $d3
    ld l, h                                       ; $6778: $6c
    ld de, $f0be                                  ; $6779: $11 $be $f0
    push af                                       ; $677c: $f5
    push bc                                       ; $677d: $c5
    and $f7                                       ; $677e: $e6 $f7
    dec b                                         ; $6780: $05
    jp z, Jump_03b_56f9                           ; $6781: $ca $f9 $56

    and c                                         ; $6784: $a1
    call nz, $f3e6                                ; $6785: $c4 $e6 $f3
    ld b, $97                                     ; $6788: $06 $97
    cp b                                          ; $678a: $b8
    ld b, [hl]                                    ; $678b: $46
    ret                                           ; $678c: $c9


    ld a, l                                       ; $678d: $7d
    jr z, jr_03b_67d4                             ; $678e: $28 $44

    ld c, a                                       ; $6790: $4f
    reti                                          ; $6791: $d9


    cpl                                           ; $6792: $2f
    ld hl, sp-$7a                                 ; $6793: $f8 $86
    ld [hl-], a                                   ; $6795: $32
    add a                                         ; $6796: $87
    cp a                                          ; $6797: $bf
    jr nc, @+$4f                                  ; $6798: $30 $4d

    or e                                          ; $679a: $b3
    push bc                                       ; $679b: $c5
    add hl, de                                    ; $679c: $19
    daa                                           ; $679d: $27
    rra                                           ; $679e: $1f

Call_03b_679f:
    ld e, e                                       ; $679f: $5b
    push hl                                       ; $67a0: $e5
    pop hl                                        ; $67a1: $e1
    dec bc                                        ; $67a2: $0b
    ld d, e                                       ; $67a3: $53
    inc l                                         ; $67a4: $2c
    adc [hl]                                      ; $67a5: $8e
    dec hl                                        ; $67a6: $2b
    xor c                                         ; $67a7: $a9
    dec bc                                        ; $67a8: $0b
    inc l                                         ; $67a9: $2c
    sub $18                                       ; $67aa: $d6 $18
    and h                                         ; $67ac: $a4
    inc [hl]                                      ; $67ad: $34
    call nc, Call_03b_6369                        ; $67ae: $d4 $69 $63
    dec e                                         ; $67b1: $1d
    ld a, [bc]                                    ; $67b2: $0a
    ld d, a                                       ; $67b3: $57
    ld [hl], e                                    ; $67b4: $73
    ld h, c                                       ; $67b5: $61
    ld [hl+], a                                   ; $67b6: $22
    ld [hl], c                                    ; $67b7: $71
    push hl                                       ; $67b8: $e5
    rst $10                                       ; $67b9: $d7
    rst $38                                       ; $67ba: $ff
    pop de                                        ; $67bb: $d1
    cp h                                          ; $67bc: $bc
    ld l, a                                       ; $67bd: $6f
    and l                                         ; $67be: $a5
    db $fc                                        ; $67bf: $fc
    adc b                                         ; $67c0: $88
    ld h, e                                       ; $67c1: $63
    ld e, c                                       ; $67c2: $59
    ld hl, sp-$26                                 ; $67c3: $f8 $da
    ld c, d                                       ; $67c5: $4a
    ret                                           ; $67c6: $c9


    dec de                                        ; $67c7: $1b
    nop                                           ; $67c8: $00
    rst $20                                       ; $67c9: $e7
    ld h, e                                       ; $67ca: $63
    inc h                                         ; $67cb: $24
    add $1f                                       ; $67cc: $c6 $1f
    and $ea                                       ; $67ce: $e6 $ea
    call nz, Call_000_32f8                        ; $67d0: $c4 $f8 $32
    rst $08                                       ; $67d3: $cf

jr_03b_67d4:
    ld a, [$bdb5]                                 ; $67d4: $fa $b5 $bd
    rst $08                                       ; $67d7: $cf
    push af                                       ; $67d8: $f5
    ei                                            ; $67d9: $fb
    jp nz, $2f84                                  ; $67da: $c2 $84 $2f

    jr nz, jr_03b_6842                            ; $67dd: $20 $63

    and h                                         ; $67df: $a4
    call c, Call_03b_7600                         ; $67e0: $dc $00 $76
    ld a, [de]                                    ; $67e3: $1a
    ld d, d                                       ; $67e4: $52
    ld [hl], d                                    ; $67e5: $72
    ld d, $c7                                     ; $67e6: $16 $c7
    ld h, c                                       ; $67e8: $61
    ld c, [hl]                                    ; $67e9: $4e
    cp c                                          ; $67ea: $b9
    sbc d                                         ; $67eb: $9a
    di                                            ; $67ec: $f3
    inc d                                         ; $67ed: $14
    ld sp, hl                                     ; $67ee: $f9
    sbc d                                         ; $67ef: $9a
    jp Jump_000_0ff7                              ; $67f0: $c3 $f7 $0f


    sbc a                                         ; $67f3: $9f
    ret                                           ; $67f4: $c9


    ld a, [hl-]                                   ; $67f5: $3a
    rst $20                                       ; $67f6: $e7
    add hl, sp                                    ; $67f7: $39
    sub e                                         ; $67f8: $93
    ld a, [de]                                    ; $67f9: $1a
    ld e, l                                       ; $67fa: $5d
    db $dd                                        ; $67fb: $dd
    ld de, $00de                                  ; $67fc: $11 $de $00
    ld a, l                                       ; $67ff: $7d
    jp c, Jump_000_17cc                           ; $6800: $da $cc $17

    ld c, a                                       ; $6803: $4f
    ret                                           ; $6804: $c9


    ld [hl], l                                    ; $6805: $75
    and h                                         ; $6806: $a4
    sub l                                         ; $6807: $95
    ld a, [c]                                     ; $6808: $f2
    xor e                                         ; $6809: $ab
    cp e                                          ; $680a: $bb
    ld [hl], h                                    ; $680b: $74
    ld d, $c7                                     ; $680c: $16 $c7
    sub l                                         ; $680e: $95
    call nc, $ae79                                ; $680f: $d4 $79 $ae
    and h                                         ; $6812: $a4
    adc $b3                                       ; $6813: $ce $b3
    xor $d2                                       ; $6815: $ee $d2
    ld a, e                                       ; $6817: $7b
    rst $20                                       ; $6818: $e7
    or b                                          ; $6819: $b0
    ld b, e                                       ; $681a: $43
    or c                                          ; $681b: $b1
    ld a, c                                       ; $681c: $79
    sbc l                                         ; $681d: $9d
    cp [hl]                                       ; $681e: $be
    ld a, c                                       ; $681f: $79
    add hl, hl                                    ; $6820: $29
    ld e, h                                       ; $6821: $5c
    ld b, a                                       ; $6822: $47
    ld e, d                                       ; $6823: $5a
    add hl, hl                                    ; $6824: $29
    cp c                                          ; $6825: $b9
    cpl                                           ; $6826: $2f
    adc e                                         ; $6827: $8b
    adc $9a                                       ; $6828: $ce $9a
    adc e                                         ; $682a: $8b
    ld e, a                                       ; $682b: $5f
    ld [hl], a                                    ; $682c: $77
    ld e, d                                       ; $682d: $5a
    ld d, l                                       ; $682e: $55
    cp h                                          ; $682f: $bc
    ld bc, $9a7d                                  ; $6830: $01 $7d $9a
    ld l, $48                                     ; $6833: $2e $48
    xor c                                         ; $6835: $a9
    rra                                           ; $6836: $1f
    ld d, e                                       ; $6837: $53
    rst $20                                       ; $6838: $e7
    sbc e                                         ; $6839: $9b

jr_03b_683a:
    ld hl, $e2ce                                  ; $683a: $21 $ce $e2
    cp b                                          ; $683d: $b8
    ld b, b                                       ; $683e: $40
    db $fc                                        ; $683f: $fc
    sub b                                         ; $6840: $90
    and e                                         ; $6841: $a3

jr_03b_6842:
    ld l, $3e                                     ; $6842: $2e $3e
    adc $3b                                       ; $6844: $ce $3b
    ret                                           ; $6846: $c9


    sbc c                                         ; $6847: $99
    xor h                                         ; $6848: $ac
    ld [hl], e                                    ; $6849: $73
    rra                                           ; $684a: $1f
    cp [hl]                                       ; $684b: $be
    db $10                                        ; $684c: $10
    db $e3                                        ; $684d: $e3
    rst $18                                       ; $684e: $df
    nop                                           ; $684f: $00
    cp l                                          ; $6850: $bd
    sra e                                         ; $6851: $cb $2b
    ld [hl], l                                    ; $6853: $75
    sbc [hl]                                      ; $6854: $9e
    dec bc                                        ; $6855: $0b
    sub b                                         ; $6856: $90
    ld d, [hl]                                    ; $6857: $56
    ld d, e                                       ; $6858: $53
    sub $eb                                       ; $6859: $d6 $eb
    ldh [$3c], a                                  ; $685b: $e0 $3c
    ld [hl], l                                    ; $685d: $75
    sub a                                         ; $685e: $97
    ret                                           ; $685f: $c9


    and e                                         ; $6860: $a3
    ld d, [hl]                                    ; $6861: $56
    and a                                         ; $6862: $a7
    call nc, $5a6f                                ; $6863: $d4 $6f $5a
    ld [hl+], a                                   ; $6866: $22
    dec d                                         ; $6867: $15
    cp [hl]                                       ; $6868: $be
    add b                                         ; $6869: $80
    inc [hl]                                      ; $686a: $34
    dec l                                         ; $686b: $2d
    sub c                                         ; $686c: $91
    ld a, [bc]                                    ; $686d: $0a
    sbc a                                         ; $686e: $9f
    dec e                                         ; $686f: $1d
    sbc d                                         ; $6870: $9a
    rst $00                                       ; $6871: $c7
    ld hl, sp+$75                                 ; $6872: $f8 $75
    inc hl                                        ; $6874: $23
    add $54                                       ; $6875: $c6 $54
    ld hl, sp-$14                                 ; $6877: $f8 $ec
    sbc e                                         ; $6879: $9b
    add $94                                       ; $687a: $c6 $94
    or $f3                                        ; $687c: $f6 $f3
    ld e, h                                       ; $687e: $5c
    ld sp, hl                                     ; $687f: $f9
    push af                                       ; $6880: $f5
    ld a, c                                       ; $6881: $79
    xor b                                         ; $6882: $a8
    dec a                                         ; $6883: $3d
    ld a, h                                       ; $6884: $7c
    or $94                                        ; $6885: $f6 $94
    ld c, [hl]                                    ; $6887: $4e
    sub [hl]                                      ; $6888: $96
    add h                                         ; $6889: $84
    ld l, h                                       ; $688a: $6c
    ld e, $be                                     ; $688b: $1e $be
    ld [hl], e                                    ; $688d: $73
    ld e, b                                       ; $688e: $58

Jump_03b_688f:
    ld c, l                                       ; $688f: $4d
    call nc, Call_03b_499f                        ; $6890: $d4 $9f $49
    adc h                                         ; $6893: $8c
    ld a, [c]                                     ; $6894: $f2
    dec hl                                        ; $6895: $2b
    xor a                                         ; $6896: $af
    db $eb                                        ; $6897: $eb
    dec h                                         ; $6898: $25
    sub c                                         ; $6899: $91
    cp d                                          ; $689a: $ba
    adc e                                         ; $689b: $8b
    push de                                       ; $689c: $d5
    jr c, jr_03b_6918                             ; $689d: $38 $79

    sbc l                                         ; $689f: $9d
    ld [hl], l                                    ; $68a0: $75
    ld d, a                                       ; $68a1: $57
    jr c, jr_03b_683a                             ; $68a2: $38 $96

    cp h                                          ; $68a4: $bc
    ld bc, $7ce7                                  ; $68a5: $01 $e7 $7c
    db $e4                                        ; $68a8: $e4
    ld b, d                                       ; $68a9: $42
    ld l, c                                       ; $68aa: $69
    ld a, [$8eb3]                                 ; $68ab: $fa $b3 $8e
    ld l, b                                       ; $68ae: $68
    inc e                                         ; $68af: $1c
    ld sp, $afca                                  ; $68b0: $31 $ca $af
    db $fc                                        ; $68b3: $fc
    or h                                          ; $68b4: $b4
    ld b, c                                       ; $68b5: $41
    xor [hl]                                      ; $68b6: $ae
    ld de, $6723                                  ; $68b7: $11 $23 $67
    jp z, Jump_03b_6f2b                           ; $68ba: $ca $2b $6f

    nop                                           ; $68bd: $00
    add c                                         ; $68be: $81
    ld l, l                                       ; $68bf: $6d
    sbc b                                         ; $68c0: $98
    db $d3                                        ; $68c1: $d3
    rst $28                                       ; $68c2: $ef
    ld d, b                                       ; $68c3: $50
    ld d, a                                       ; $68c4: $57
    ld e, [hl]                                    ; $68c5: $5e
    ld h, a                                       ; $68c6: $67
    jp z, Jump_03b_752b                           ; $68c7: $ca $2b $75

    ld d, $c7                                     ; $68ca: $16 $c7
    push bc                                       ; $68cc: $c5
    ld b, [hl]                                    ; $68cd: $46
    and h                                         ; $68ce: $a4
    jp nz, Jump_000_3757                          ; $68cf: $c2 $57 $37

    ld sp, hl                                     ; $68d2: $f9
    or c                                          ; $68d3: $b1
    inc l                                         ; $68d4: $2c
    ld a, [hl]                                    ; $68d5: $7e
    and a                                         ; $68d6: $a7
    ret c                                         ; $68d7: $d8

    ld [c], a                                     ; $68d8: $e2
    inc a                                         ; $68d9: $3c
    rst $30                                       ; $68da: $f7
    add sp, -$30                                  ; $68db: $e8 $d0
    or h                                          ; $68dd: $b4
    call nc, Call_03b_5711                        ; $68de: $d4 $11 $57
    ld a, [hl]                                    ; $68e1: $7e
    ld a, [$d7e5]                                 ; $68e2: $fa $e5 $d7
    dec sp                                        ; $68e5: $3b
    db $eb                                        ; $68e6: $eb
    inc bc                                        ; $68e7: $03
    ld [hl], b                                    ; $68e8: $70
    sbc [hl]                                      ; $68e9: $9e
    adc e                                         ; $68ea: $8b
    ld l, [hl]                                    ; $68eb: $6e
    and $f5                                       ; $68ec: $e6 $f5
    ld l, a                                       ; $68ee: $6f
    nop                                           ; $68ef: $00
    ld d, a                                       ; $68f0: $57
    and h                                         ; $68f1: $a4
    ld [hl], l                                    ; $68f2: $75
    pop hl                                        ; $68f3: $e1
    res 5, a                                      ; $68f4: $cb $af
    db $fc                                        ; $68f6: $fc
    ld c, h                                       ; $68f7: $4c
    ld a, c                                       ; $68f8: $79
    push hl                                       ; $68f9: $e5
    inc a                                         ; $68fa: $3c
    ld h, a                                       ; $68fb: $67
    ld c, a                                       ; $68fc: $4f
    jp hl                                         ; $68fd: $e9


    ld h, h                                       ; $68fe: $64
    ld c, c                                       ; $68ff: $49
    ret z                                         ; $6900: $c8

    and $ef                                       ; $6901: $e6 $ef
    dec b                                         ; $6903: $05
    ld [hl], d                                    ; $6904: $72
    cp $57                                        ; $6905: $fe $57
    db $ed                                        ; $6907: $ed
    jr z, jr_03b_6949                             ; $6908: $28 $3f

    ld [c], a                                     ; $690a: $e2
    ld c, d                                       ; $690b: $4a
    ld [$561a], a                                 ; $690c: $ea $1a $56
    jr z, @-$06                                   ; $690f: $28 $f8

    sbc [hl]                                      ; $6911: $9e
    sub d                                         ; $6912: $92
    ld a, d                                       ; $6913: $7a
    inc bc                                        ; $6914: $03
    ld h, a                                       ; $6915: $67
    dec sp                                        ; $6916: $3b
    dec [hl]                                      ; $6917: $35

jr_03b_6918:
    cp c                                          ; $6918: $b9
    ld a, [c]                                     ; $6919: $f2
    inc sp                                        ; $691a: $33
    push hl                                       ; $691b: $e5
    sub l                                         ; $691c: $95
    di                                            ; $691d: $f3
    sbc h                                         ; $691e: $9c
    dec e                                         ; $691f: $1d
    sbc d                                         ; $6920: $9a
    rst $00                                       ; $6921: $c7
    ld hl, sp+$75                                 ; $6922: $f8 $75
    inc hl                                        ; $6924: $23
    add $d4                                       ; $6925: $c6 $d4
    ld a, e                                       ; $6927: $7b

jr_03b_6928:
    cp l                                          ; $6928: $bd
    add l                                         ; $6929: $85
    add hl, sp                                    ; $692a: $39
    adc e                                         ; $692b: $8b
    db $e3                                        ; $692c: $e3
    xor b                                         ; $692d: $a8
    or c                                          ; $692e: $b1
    ld l, e                                       ; $692f: $6b
    call nz, Call_03b_4cb1                        ; $6930: $c4 $b1 $4c
    add hl, bc                                    ; $6933: $09
    add hl, sp                                    ; $6934: $39
    db $f4                                        ; $6935: $f4
    cp c                                          ; $6936: $b9
    or b                                          ; $6937: $b0
    ld l, c                                       ; $6938: $69
    sbc $00                                       ; $6939: $de $00
    rst $20                                       ; $693b: $e7
    or b                                          ; $693c: $b0
    sbc d                                         ; $693d: $9a
    xor b                                         ; $693e: $a8
    ccf                                           ; $693f: $3f
    sub e                                         ; $6940: $93
    jr jr_03b_6928                                ; $6941: $18 $e5

    ld d, a                                       ; $6943: $57
    ld e, [hl]                                    ; $6944: $5e
    rst $10                                       ; $6945: $d7
    ld c, e                                       ; $6946: $4b
    ld [hl+], a                                   ; $6947: $22
    ld [hl], l                                    ; $6948: $75

jr_03b_6949:
    rla                                           ; $6949: $17
    xor e                                         ; $694a: $ab
    ld [hl], c                                    ; $694b: $71
    ld a, [c]                                     ; $694c: $f2
    ld a, [hl-]                                   ; $694d: $3a
    ld [hl], l                                    ; $694e: $75
    call nz, $ac5f                                ; $694f: $c4 $5f $ac
    ld a, [de]                                    ; $6952: $1a
    and l                                         ; $6953: $a5
    sbc c                                         ; $6954: $99
    cp h                                          ; $6955: $bc
    rla                                           ; $6956: $17
    ret z                                         ; $6957: $c8

    ld sp, hl                                     ; $6958: $f9
    rra                                           ; $6959: $1f
    ld [hl], c                                    ; $695a: $71
    inc l                                         ; $695b: $2c
    adc e                                         ; $695c: $8b
    inc d                                         ; $695d: $14
    ld b, e                                       ; $695e: $43
    ld e, c                                       ; $695f: $59
    ret c                                         ; $6960: $d8

    inc [hl]                                      ; $6961: $34
    ld l, a                                       ; $6962: $6f
    nop                                           ; $6963: $00
    ld a, l                                       ; $6964: $7d
    ld [hl], e                                    ; $6965: $73
    pop bc                                        ; $6966: $c1
    or a                                          ; $6967: $b7
    ld c, $1b                                     ; $6968: $0e $1b
    ld b, d                                       ; $696a: $42
    ld c, $7f                                     ; $696b: $0e $7f
    rst $28                                       ; $696d: $ef
    jp z, $b88f                                   ; $696e: $ca $8f $b8

    ld a, [c]                                     ; $6971: $f2
    dec bc                                        ; $6972: $0b
    bit 4, e                                      ; $6973: $cb $63
    db $fc                                        ; $6975: $fc
    ld [hl], l                                    ; $6976: $75
    cp [hl]                                       ; $6977: $be
    rst $18                                       ; $6978: $df
    rst $18                                       ; $6979: $df
    nop                                           ; $697a: $00
    rla                                           ; $697b: $17
    cp l                                          ; $697c: $bd
    xor $5d                                       ; $697d: $ee $5d
    ld a, c                                       ; $697f: $79
    sbc l                                         ; $6980: $9d
    rst $20                                       ; $6981: $e7
    ld b, d                                       ; $6982: $42
    ld l, c                                       ; $6983: $69
    dec [hl]                                      ; $6984: $35
    ld h, l                                       ; $6985: $65
    ld a, a                                       ; $6986: $7f
    ld [hl], b                                    ; $6987: $70
    xor $c3                                       ; $6988: $ee $c3
    rla                                           ; $698a: $17
    ld a, [de]                                    ; $698b: $1a
    ld [c], a                                     ; $698c: $e2
    adc b                                         ; $698d: $88
    ld h, e                                       ; $698e: $63
    ld e, c                                       ; $698f: $59
    db $fc                                        ; $6990: $fc
    ld c, [hl]                                    ; $6991: $4e
    or c                                          ; $6992: $b1
    push bc                                       ; $6993: $c5
    ld a, c                                       ; $6994: $79
    xor $d1                                       ; $6995: $ee $d1
    and c                                         ; $6997: $a1
    ld l, c                                       ; $6998: $69
    xor c                                         ; $6999: $a9
    inc hl                                        ; $699a: $23
    xor [hl]                                      ; $699b: $ae
    db $fc                                        ; $699c: $fc
    db $f4                                        ; $699d: $f4
    res 5, a                                      ; $699e: $cb $af
    ld [hl], a                                    ; $69a0: $77
    sub $07                                       ; $69a1: $d6 $07
    ldh [$3c], a                                  ; $69a3: $e0 $3c
    ld [hl], a                                    ; $69a5: $77

jr_03b_69a6:
    sbc [hl]                                      ; $69a6: $9e
    ld e, b                                       ; $69a7: $58
    xor e                                         ; $69a8: $ab
    xor e                                         ; $69a9: $ab
    dec de                                        ; $69aa: $1b
    ld a, [$1b94]                                 ; $69ab: $fa $94 $1b
    nop                                           ; $69ae: $00
    ld bc, $5a69                                  ; $69af: $01 $69 $5a
    ld [hl+], a                                   ; $69b2: $22
    ld [hl], l                                    ; $69b3: $75
    call nc, $df95                                ; $69b4: $d4 $95 $df
    ld bc, $ccd8                                  ; $69b7: $01 $d8 $cc
    rst $08                                       ; $69ba: $cf
    sub h                                         ; $69bb: $94
    ld d, a                                       ; $69bc: $57
    adc $e2                                       ; $69bd: $ce $e2
    jr c, jr_03b_69a6                             ; $69bf: $38 $e5

    db $fc                                        ; $69c1: $fc
    rst $28                                       ; $69c2: $ef
    dec l                                         ; $69c3: $2d
    adc $66                                       ; $69c4: $ce $66
    rst $18                                       ; $69c6: $df
    ld sp, hl                                     ; $69c7: $f9
    ld a, [hl]                                    ; $69c8: $7e
    ld a, c                                       ; $69c9: $79
    inc bc                                        ; $69ca: $03
    rla                                           ; $69cb: $17
    rst $30                                       ; $69cc: $f7
    ei                                            ; $69cd: $fb
    jp nc, $e8b5                                  ; $69ce: $d2 $b5 $e8

    ld a, [hl+]                                   ; $69d1: $2a
    adc l                                         ; $69d2: $8d
    ld a, [c]                                     ; $69d3: $f2
    xor e                                         ; $69d4: $ab
    cp e                                          ; $69d5: $bb
    ld [hl], h                                    ; $69d6: $74
    sbc [hl]                                      ; $69d7: $9e
    ld [hl], e                                    ; $69d8: $73
    ld hl, sp+$33                                 ; $69d9: $f8 $33
    push hl                                       ; $69db: $e5
    sub l                                         ; $69dc: $95
    inc hl                                        ; $69dd: $23
    xor [hl]                                      ; $69de: $ae
    cp h                                          ; $69df: $bc
    xor [hl]                                      ; $69e0: $ae
    cp $fe                                        ; $69e1: $fe $fe
    ld [hl], l                                    ; $69e3: $75
    adc d                                         ; $69e4: $8a
    cp h                                          ; $69e5: $bc
    sbc $b3                                       ; $69e6: $de $b3
    db $d3                                        ; $69e8: $d3
    ret c                                         ; $69e9: $d8

    dec [hl]                                      ; $69ea: $35

jr_03b_69eb:
    ld b, e                                       ; $69eb: $43
    ld sp, $cf3f                                  ; $69ec: $31 $3f $cf
    push de                                       ; $69ef: $d5
    ld l, l                                       ; $69f0: $6d
    and $f5                                       ; $69f1: $e6 $f5
    ld l, a                                       ; $69f3: $6f
    nop                                           ; $69f4: $00
    ld a, l                                       ; $69f5: $7d
    ld [hl], e                                    ; $69f6: $73
    pop bc                                        ; $69f7: $c1
    or a                                          ; $69f8: $b7
    xor $5d                                       ; $69f9: $ee $5d
    ld a, c                                       ; $69fb: $79
    dec e                                         ; $69fc: $1d
    ld [hl], c                                    ; $69fd: $71
    call nc, $85c8                                ; $69fe: $d4 $c8 $85
    ld c, l                                       ; $6a01: $4d
    di                                            ; $6a02: $f3
    ld b, $17                                     ; $6a03: $06 $17
    db $fd                                        ; $6a05: $fd
    ld [$a6b7], a                                 ; $6a06: $ea $b7 $a6
    ret c                                         ; $6a09: $d8

    db $fc                                        ; $6a0a: $fc
    inc a                                         ; $6a0b: $3c
    ld d, a                                       ; $6a0c: $57
    ld e, [hl]                                    ; $6a0d: $5e
    rst $30                                       ; $6a0e: $f7
    xor [hl]                                      ; $6a0f: $ae
    cp h                                          ; $6a10: $bc
    adc $73                                       ; $6a11: $ce $73
    and c                                         ; $6a13: $a1
    or h                                          ; $6a14: $b4
    sbc d                                         ; $6a15: $9a
    or d                                          ; $6a16: $b2

jr_03b_6a17:
    ccf                                           ; $6a17: $3f
    jr c, jr_03b_6a61                             ; $6a18: $38 $47

    adc l                                         ; $6a1a: $8d
    ld e, l                                       ; $6a1b: $5d
    cp b                                          ; $6a1c: $b8
    rla                                           ; $6a1d: $17
    ld l, c                                       ; $6a1e: $69
    sbc l                                         ; $6a1f: $9d
    add a                                         ; $6a20: $87
    ld c, a                                       ; $6a21: $4f
    cp a                                          ; $6a22: $bf
    ld d, h                                       ; $6a23: $54
    ld [hl], d                                    ; $6a24: $72
    ld bc, $5a69                                  ; $6a25: $01 $69 $5a
    ld [hl+], a                                   ; $6a28: $22
    ld [hl], l                                    ; $6a29: $75
    sub $d9                                       ; $6a2a: $d6 $d9
    ld d, e                                       ; $6a2c: $53
    ld a, [hl-]                                   ; $6a2d: $3a
    ld e, c                                       ; $6a2e: $59
    ld [de], a                                    ; $6a2f: $12
    or d                                          ; $6a30: $b2
    ld sp, hl                                     ; $6a31: $f9
    dec de                                        ; $6a32: $1b
    nop                                           ; $6a33: $00
    rla                                           ; $6a34: $17
    db $fd                                        ; $6a35: $fd
    ld [bc], a                                    ; $6a36: $02
    cp a                                          ; $6a37: $bf
    db $fc                                        ; $6a38: $fc
    inc a                                         ; $6a39: $3c
    rla                                           ; $6a3a: $17
    ld c, d                                       ; $6a3b: $4a
    ld d, [hl]                                    ; $6a3c: $56
    ld d, e                                       ; $6a3d: $53
    ld d, e                                       ; $6a3e: $53
    xor b                                         ; $6a3f: $a8
    and e                                         ; $6a40: $a3
    add $ae                                       ; $6a41: $c6 $ae
    ld de, $8d47                                  ; $6a43: $11 $47 $8d
    ld e, h                                       ; $6a46: $5c
    ret c                                         ; $6a47: $d8

    inc [hl]                                      ; $6a48: $34
    pop hl                                        ; $6a49: $e1
    dec bc                                        ; $6a4a: $0b
    add hl, hl                                    ; $6a4b: $29
    cp c                                          ; $6a4c: $b9
    or a                                          ; $6a4d: $b7
    jr c, jr_03b_69eb                             ; $6a4e: $38 $9b

    ld h, c                                       ; $6a50: $61
    ld l, $f8                                     ; $6a51: $2e $f8
    sub $bd                                       ; $6a53: $d6 $bd
    dec hl                                        ; $6a55: $2b
    xor a                                         ; $6a56: $af
    scf                                           ; $6a57: $37
    nop                                           ; $6a58: $00
    ld a, l                                       ; $6a59: $7d
    ld [hl], e                                    ; $6a5a: $73
    ld e, d                                       ; $6a5b: $5a
    ld [hl], l                                    ; $6a5c: $75
    sbc $16                                       ; $6a5d: $de $16
    dec a                                         ; $6a5f: $3d
    rla                                           ; $6a60: $17

jr_03b_6a61:
    adc c                                         ; $6a61: $89
    ld d, b                                       ; $6a62: $50
    adc $e2                                       ; $6a63: $ce $e2
    cp b                                          ; $6a65: $b8
    ld h, $37                                     ; $6a66: $26 $37
    nop                                           ; $6a68: $00
    db $dd                                        ; $6a69: $dd
    db $ed                                        ; $6a6a: $ed
    inc [hl]                                      ; $6a6b: $34
    halt                                          ; $6a6c: $76
    adc l                                         ; $6a6d: $8d
    ld h, l                                       ; $6a6e: $65
    rst $28                                       ; $6a6f: $ef

jr_03b_6a70:
    jp z, Jump_03b_73cf                           ; $6a70: $ca $cf $73

    sub a                                         ; $6a73: $97
    ret                                           ; $6a74: $c9


    and e                                         ; $6a75: $a3
    ld d, [hl]                                    ; $6a76: $56
    and a                                         ; $6a77: $a7
    call nc, $5a6f                                ; $6a78: $d4 $6f $5a
    ld [hl+], a                                   ; $6a7b: $22
    ld [hl], l                                    ; $6a7c: $75
    call nz, Call_000_2351                        ; $6a7d: $c4 $51 $23
    rla                                           ; $6a80: $17
    ld [hl], $cd                                  ; $6a81: $36 $cd
    sbc [hl]                                      ; $6a83: $9e
    db $eb                                        ; $6a84: $eb
    jp $d6f9                                      ; $6a85: $c3 $f9 $d6


    adc a                                         ; $6a88: $8f
    sub d                                         ; $6a89: $92
    jr c, jr_03b_6a17                             ; $6a8a: $38 $8b

    db $e3                                        ; $6a8c: $e3
    call nc, Call_000_06e6                        ; $6a8d: $d4 $e6 $06
    rla                                           ; $6a90: $17
    db $fd                                        ; $6a91: $fd
    ld c, h                                       ; $6a92: $4c
    ld a, c                                       ; $6a93: $79
    push hl                                       ; $6a94: $e5
    inc a                                         ; $6a95: $3c
    ld [hl], a                                    ; $6a96: $77
    sbc c                                         ; $6a97: $99
    inc a                                         ; $6a98: $3c
    ld l, d                                       ; $6a99: $6a
    ld [hl], l                                    ; $6a9a: $75
    ld c, d                                       ; $6a9b: $4a
    db $fd                                        ; $6a9c: $fd
    and [hl]                                      ; $6a9d: $a6
    dec h                                         ; $6a9e: $25
    ld d, d                                       ; $6a9f: $52
    rst $20                                       ; $6aa0: $e7
    cp c                                          ; $6aa1: $b9
    ld a, [c]                                     ; $6aa2: $f2
    dec bc                                        ; $6aa3: $0b
    dec h                                         ; $6aa4: $25
    xor e                                         ; $6aa5: $ab
    xor c                                         ; $6aa6: $a9
    add hl, hl                                    ; $6aa7: $29
    cp a                                          ; $6aa8: $bf
    ld a, $e6                                     ; $6aa9: $3e $e6
    cp h                                          ; $6aab: $bc
    call nz, $be87                                ; $6aac: $c4 $87 $be
    sub h                                         ; $6aaf: $94
    push bc                                       ; $6ab0: $c5
    ld b, [hl]                                    ; $6ab1: $46
    db $e4                                        ; $6ab2: $e4
    inc l                                         ; $6ab3: $2c
    adc [hl]                                      ; $6ab4: $8e
    and e                                         ; $6ab5: $a3
    add $97                                       ; $6ab6: $c6 $97
    add l                                         ; $6ab8: $85

jr_03b_6ab9:
    add hl, hl                                    ; $6ab9: $29
    ld a, e                                       ; $6aba: $7b
    adc e                                         ; $6abb: $8b
    or e                                          ; $6abc: $b3
    cp c                                          ; $6abd: $b9
    ld bc, $b87d                                  ; $6abe: $01 $7d $b8
    ld d, b                                       ; $6ac1: $50
    ld [$8c39], sp                                ; $6ac2: $08 $39 $8c
    add hl, sp                                    ; $6ac5: $39
    db $e3                                        ; $6ac6: $e3
    cp d                                          ; $6ac7: $ba
    jr nc, jr_03b_6a70                            ; $6ac8: $30 $a6

    xor $8b                                       ; $6aca: $ee $8b
    xor e                                         ; $6acc: $ab
    ld sp, $4a75                                  ; $6acd: $31 $75 $4a
    jp hl                                         ; $6ad0: $e9


    jp nz, $ae79                                  ; $6ad1: $c2 $79 $ae

    ld a, [$56eb]                                 ; $6ad4: $fa $eb $56
    jp c, Jump_03b_6aeb                           ; $6ad7: $da $eb $6a

    rst $20                                       ; $6ada: $e7
    and b                                         ; $6adb: $a0
    jp nz, $001b                                  ; $6adc: $c2 $1b $00

    add c                                         ; $6adf: $81
    ld l, l                                       ; $6ae0: $6d
    dec e                                         ; $6ae1: $1d
    and a                                         ; $6ae2: $a7
    and $75                                       ; $6ae3: $e6 $75
    inc l                                         ; $6ae5: $2c
    ld a, e                                       ; $6ae6: $7b
    ld d, a                                       ; $6ae7: $57
    ld a, [hl]                                    ; $6ae8: $7e
    sbc [hl]                                      ; $6ae9: $9e
    or e                                          ; $6aea: $b3

Call_03b_6aeb:
Jump_03b_6aeb:
    ld b, e                                       ; $6aeb: $43
    di                                            ; $6aec: $f3
    jr @-$3f                                      ; $6aed: $18 $bf

    ld l, [hl]                                    ; $6aef: $6e
    call nz, Call_000_0a98                        ; $6af0: $c4 $98 $0a
    rra                                           ; $6af3: $1f
    dec [hl]                                      ; $6af4: $35
    halt                                          ; $6af5: $76
    db $ed                                        ; $6af6: $ed
    rrc b                                         ; $6af7: $cb $08
    dec hl                                        ; $6af9: $2b
    ld a, [bc]                                    ; $6afa: $0a
    db $eb                                        ; $6afb: $eb
    ld e, h                                       ; $6afc: $5c
    rst $18                                       ; $6afd: $df
    sub h                                         ; $6afe: $94
    ret z                                         ; $6aff: $c8

    ld a, c                                       ; $6b00: $79
    adc [hl]                                      ; $6b01: $8e
    ld a, [de]                                    ; $6b02: $1a
    cp c                                          ; $6b03: $b9
    ldh a, [$b5]                                  ; $6b04: $f0 $b5
    sub l                                         ; $6b06: $95
    sub d                                         ; $6b07: $92
    scf                                           ; $6b08: $37
    nop                                           ; $6b09: $00
    or $6f                                        ; $6b0a: $f6 $6f
    sbc l                                         ; $6b0c: $9d
    jp Jump_03b_7e9f                              ; $6b0d: $c3 $9f $7e


    ld sp, hl                                     ; $6b10: $f9
    ld b, c                                       ; $6b11: $41
    ld a, [c]                                     ; $6b12: $f2
    add sp, -$47                                  ; $6b13: $e8 $b9
    ld d, d                                       ; $6b15: $52
    adc b                                         ; $6b16: $88
    ccf                                           ; $6b17: $3f
    rst $08                                       ; $6b18: $cf
    sub l                                         ; $6b19: $95
    sub $91                                       ; $6b1a: $d6 $91
    call nc, Call_03b_4711                        ; $6b1c: $d4 $11 $47
    adc l                                         ; $6b1f: $8d
    ld e, h                                       ; $6b20: $5c
    ret c                                         ; $6b21: $d8

    inc [hl]                                      ; $6b22: $34
    rst $28                                       ; $6b23: $ef
    dec b                                         ; $6b24: $05
    ld [de], a                                    ; $6b25: $12
    ld [hl], d                                    ; $6b26: $72
    sub d                                         ; $6b27: $92
    or e                                          ; $6b28: $b3
    jr c, jr_03b_6ab9                             ; $6b29: $38 $8e

    cp d                                          ; $6b2b: $ba
    ld a, [c]                                     ; $6b2c: $f2
    db $eb                                        ; $6b2d: $eb
    or h                                          ; $6b2e: $b4
    ld c, [hl]                                    ; $6b2f: $4e
    ld l, c                                       ; $6b30: $69
    add hl, de                                    ; $6b31: $19
    ld l, c                                       ; $6b32: $69
    cp $06                                        ; $6b33: $fe $06
    halt                                          ; $6b35: $76
    ld h, l                                       ; $6b36: $65
    rst $28                                       ; $6b37: $ef
    jp z, Jump_03b_73cf                           ; $6b38: $ca $cf $73

    halt                                          ; $6b3b: $76
    ld l, b                                       ; $6b3c: $68
    ld e, $e3                                     ; $6b3d: $1e $e3
    rst $10                                       ; $6b3f: $d7
    adc l                                         ; $6b40: $8d
    jr jr_03b_6b96                                ; $6b41: $18 $53

    ld b, a                                       ; $6b43: $47
    adc l                                         ; $6b44: $8d
    ld e, l                                       ; $6b45: $5d
    inc hl                                        ; $6b46: $23
    ld b, [hl]                                    ; $6b47: $46
    pop hl                                        ; $6b48: $e1
    ld c, d                                       ; $6b49: $4a
    ld [$ea7c], a                                 ; $6b4a: $ea $7c $ea
    ld [c], a                                     ; $6b4d: $e2
    add a                                         ; $6b4e: $87
    call $f750                                    ; $6b4f: $cd $50 $f7
    ld h, l                                       ; $6b52: $65
    push de                                       ; $6b53: $d5
    dec c                                         ; $6b54: $0d
    cp a                                          ; $6b55: $bf
    call z, Call_000_2cb3                         ; $6b56: $cc $b3 $2c
    ld a, h                                       ; $6b59: $7c
    ld l, l                                       ; $6b5a: $6d
    and l                                         ; $6b5b: $a5
    db $e4                                        ; $6b5c: $e4
    dec c                                         ; $6b5d: $0d
    nop                                           ; $6b5e: $00
    rst $20                                       ; $6b5f: $e7
    or b                                          ; $6b60: $b0
    sbc d                                         ; $6b61: $9a
    xor b                                         ; $6b62: $a8
    ccf                                           ; $6b63: $3f
    sub e                                         ; $6b64: $93
    jr @-$19                                      ; $6b65: $18 $e5

    ld d, a                                       ; $6b67: $57
    ld e, [hl]                                    ; $6b68: $5e
    rst $10                                       ; $6b69: $d7
    ld c, e                                       ; $6b6a: $4b
    ld [hl+], a                                   ; $6b6b: $22
    ld [hl], l                                    ; $6b6c: $75
    rla                                           ; $6b6d: $17
    xor e                                         ; $6b6e: $ab
    ld [hl], c                                    ; $6b6f: $71
    ld a, [c]                                     ; $6b70: $f2
    ld a, [hl-]                                   ; $6b71: $3a
    push hl                                       ; $6b72: $e5
    db $fc                                        ; $6b73: $fc
    adc a                                         ; $6b74: $8f
    jr c, jr_03b_6be1                             ; $6b75: $38 $6a

    db $fc                                        ; $6b77: $fc
    add l                                         ; $6b78: $85
    push hl                                       ; $6b79: $e5
    ld sp, $0dfe                                  ; $6b7a: $31 $fe $0d
    nop                                           ; $6b7d: $00
    halt                                          ; $6b7e: $76
    ld h, l                                       ; $6b7f: $65
    sbc [hl]                                      ; $6b80: $9e
    ld a, [de]                                    ; $6b81: $1a
    cp [hl]                                       ; $6b82: $be
    add hl, bc                                    ; $6b83: $09
    and $3c                                       ; $6b84: $e6 $3c
    bit 0, d                                      ; $6b86: $cb $42
    ret                                           ; $6b88: $c9


    ld l, d                                       ; $6b89: $6a
    ld l, d                                       ; $6b8a: $6a
    jp z, $712e                                   ; $6b8b: $ca $2e $71

    ld c, l                                       ; $6b8e: $4d
    add h                                         ; $6b8f: $84
    and l                                         ; $6b90: $a5
    adc h                                         ; $6b91: $8c
    ld a, [de]                                    ; $6b92: $1a
    cp e                                          ; $6b93: $bb
    ld d, $a6                                     ; $6b94: $16 $a6

jr_03b_6b96:
    db $ec                                        ; $6b96: $ec
    ld c, e                                       ; $6b97: $4b
    or c                                          ; $6b98: $b1
    cp c                                          ; $6b99: $b9
    rla                                           ; $6b9a: $17
    add sp, $66                                   ; $6b9b: $e8 $66
    jp z, $e72b                                   ; $6b9d: $ca $2b $e7

    cp c                                          ; $6ba0: $b9
    ld [hl], e                                    ; $6ba1: $73
    ld e, b                                       ; $6ba2: $58
    ld c, l                                       ; $6ba3: $4d
    call nc, Call_03b_499f                        ; $6ba4: $d4 $9f $49
    adc h                                         ; $6ba7: $8c
    ld a, [c]                                     ; $6ba8: $f2
    dec hl                                        ; $6ba9: $2b
    xor a                                         ; $6baa: $af
    db $eb                                        ; $6bab: $eb
    dec h                                         ; $6bac: $25
    sub c                                         ; $6bad: $91
    cp d                                          ; $6bae: $ba
    adc e                                         ; $6baf: $8b
    push de                                       ; $6bb0: $d5
    jr c, jr_03b_6c2c                             ; $6bb1: $38 $79

    sbc l                                         ; $6bb3: $9d
    ld h, a                                       ; $6bb4: $67
    add a                                         ; $6bb5: $87
    and e                                         ; $6bb6: $a3
    add $97                                       ; $6bb7: $c6 $97
    add hl, de                                    ; $6bb9: $19
    adc d                                         ; $6bba: $8a
    ld sp, hl                                     ; $6bbb: $f9
    dec de                                        ; $6bbc: $1b
    nop                                           ; $6bbd: $00
    rla                                           ; $6bbe: $17
    db $fd                                        ; $6bbf: $fd
    ld b, d                                       ; $6bc0: $42
    ld b, a                                       ; $6bc1: $47
    adc c                                         ; $6bc2: $89
    ccf                                           ; $6bc3: $3f
    adc e                                         ; $6bc4: $8b
    db $e3                                        ; $6bc5: $e3
    ld a, [hl+]                                   ; $6bc6: $2a
    cp a                                          ; $6bc7: $bf
    cpl                                           ; $6bc8: $2f
    jp Jump_03b_6156                              ; $6bc9: $c3 $56 $61


    sbc c                                         ; $6bcc: $99
    cp d                                          ; $6bcd: $ba
    sub b                                         ; $6bce: $90
    jp nc, $e652                                  ; $6bcf: $d2 $52 $e6

    cp c                                          ; $6bd2: $b9
    ld a, [c]                                     ; $6bd3: $f2
    db $eb                                        ; $6bd4: $eb
    or h                                          ; $6bd5: $b4
    ld c, [hl]                                    ; $6bd6: $4e
    ld l, c                                       ; $6bd7: $69
    add hl, de                                    ; $6bd8: $19
    ld l, c                                       ; $6bd9: $69
    ld a, [hl]                                    ; $6bda: $7e
    call nc, Call_000_35d8                        ; $6bdb: $d4 $d8 $35
    inc hl                                        ; $6bde: $23
    xor [hl]                                      ; $6bdf: $ae
    rst $38                                       ; $6be0: $ff

jr_03b_6be1:
    and e                                         ; $6be1: $a3
    rst $08                                       ; $6be2: $cf
    or c                                          ; $6be3: $b1
    inc l                                         ; $6be4: $2c
    ld a, h                                       ; $6be5: $7c
    ld l, l                                       ; $6be6: $6d
    and l                                         ; $6be7: $a5
    db $e4                                        ; $6be8: $e4
    inc a                                         ; $6be9: $3c
    push de                                       ; $6bea: $d5
    ld [hl], e                                    ; $6beb: $73
    push hl                                       ; $6bec: $e5
    ld h, a                                       ; $6bed: $67
    jp z, $e72b                                   ; $6bee: $ca $2b $e7

    cp c                                          ; $6bf1: $b9
    ld [hl], e                                    ; $6bf2: $73
    ld e, b                                       ; $6bf3: $58
    ld c, l                                       ; $6bf4: $4d
    call nc, Call_03b_499f                        ; $6bf5: $d4 $9f $49
    adc h                                         ; $6bf8: $8c
    ld a, [c]                                     ; $6bf9: $f2
    dec hl                                        ; $6bfa: $2b
    xor a                                         ; $6bfb: $af
    db $eb                                        ; $6bfc: $eb
    dec h                                         ; $6bfd: $25

jr_03b_6bfe:
    sub c                                         ; $6bfe: $91
    cp d                                          ; $6bff: $ba
    adc e                                         ; $6c00: $8b
    push de                                       ; $6c01: $d5
    jr c, jr_03b_6c7d                             ; $6c02: $38 $79

    cp l                                          ; $6c04: $bd
    ld bc, $03dd                                  ; $6c05: $01 $dd $03
    ld d, d                                       ; $6c08: $52
    ld h, [hl]                                    ; $6c09: $66
    ld [hl], c                                    ; $6c0a: $71
    ld d, l                                       ; $6c0b: $55
    rla                                           ; $6c0c: $17
    adc c                                         ; $6c0d: $89
    ld d, b                                       ; $6c0e: $50
    adc $e2                                       ; $6c0f: $ce $e2
    jr c, jr_03b_6c7d                             ; $6c11: $38 $6a

    ld a, h                                       ; $6c13: $7c
    sbc c                                         ; $6c14: $99
    and a                                         ; $6c15: $a7
    add [hl]                                      ; $6c16: $86
    adc l                                         ; $6c17: $8d
    ld [de], a                                    ; $6c18: $12
    ld [hl], e                                    ; $6c19: $73
    call nz, $9f95                                ; $6c1a: $c4 $95 $9f
    add hl, hl                                    ; $6c1d: $29
    xor a                                         ; $6c1e: $af
    sbc h                                         ; $6c1f: $9c
    rst $20                                       ; $6c20: $e7
    db $ec                                        ; $6c21: $ec
    sbc e                                         ; $6c22: $9b
    add $94                                       ; $6c23: $c6 $94
    or $f3                                        ; $6c25: $f6 $f3
    ld e, h                                       ; $6c27: $5c
    ld sp, hl                                     ; $6c28: $f9
    push af                                       ; $6c29: $f5
    ld a, c                                       ; $6c2a: $79
    xor b                                         ; $6c2b: $a8

jr_03b_6c2c:
    db $fd                                        ; $6c2c: $fd
    or h                                          ; $6c2d: $b4
    adc l                                         ; $6c2e: $8d
    ld h, l                                       ; $6c2f: $65
    and c                                         ; $6c30: $a1
    ld h, h                                       ; $6c31: $64
    dec [hl]                                      ; $6c32: $35
    dec [hl]                                      ; $6c33: $35
    ld h, l                                       ; $6c34: $65
    jp z, Jump_000_1c59                           ; $6c35: $ca $59 $1c

    db $fd                                        ; $6c38: $fd
    rst $08                                       ; $6c39: $cf
    and a                                         ; $6c3a: $a7
    call nc, $e7cd                                ; $6c3b: $d4 $cd $e7
    ld h, d                                       ; $6c3e: $62
    ld a, [$cb1c]                                 ; $6c3f: $fa $1c $cb
    db $e4                                        ; $6c42: $e4
    ld h, e                                       ; $6c43: $63
    or $04                                        ; $6c44: $f6 $04
    add c                                         ; $6c46: $81
    ld l, l                                       ; $6c47: $6d
    dec e                                         ; $6c48: $1d
    and a                                         ; $6c49: $a7
    and $75                                       ; $6c4a: $e6 $75
    or $4d                                        ; $6c4c: $f6 $4d
    ld h, e                                       ; $6c4e: $63
    ld c, d                                       ; $6c4f: $4a
    ei                                            ; $6c50: $fb
    ld a, c                                       ; $6c51: $79
    xor [hl]                                      ; $6c52: $ae
    db $fc                                        ; $6c53: $fc
    ld a, [$d43c]                                 ; $6c54: $fa $3c $d4
    ld e, $3e                                     ; $6c57: $1e $3e
    push hl                                       ; $6c59: $e5
    db $fc                                        ; $6c5a: $fc
    adc a                                         ; $6c5b: $8f
    jr c, jr_03b_6cc8                             ; $6c5c: $38 $6a

    db $e4                                        ; $6c5e: $e4
    jp nz, Jump_03b_79a6                          ; $6c5f: $c2 $a6 $79

    inc bc                                        ; $6c62: $03
    rla                                           ; $6c63: $17
    and l                                         ; $6c64: $a5
    xor $8b                                       ; $6c65: $ee $8b
    xor e                                         ; $6c67: $ab
    ld sp, $9e75                                  ; $6c68: $31 $75 $9e
    ld a, e                                       ; $6c6b: $7b
    sub c                                         ; $6c6c: $91
    sub $f9                                       ; $6c6d: $d6 $f9
    push de                                       ; $6c6f: $d5
    sbc h                                         ; $6c70: $9c
    ld l, a                                       ; $6c71: $6f
    db $fd                                        ; $6c72: $fd
    jr z, jr_03b_6bfe                             ; $6c73: $28 $89

    or e                                          ; $6c75: $b3
    jr c, @-$50                                   ; $6c76: $38 $ae

    di                                            ; $6c78: $f3
    db $fd                                        ; $6c79: $fd
    ld e, [hl]                                    ; $6c7a: $5e
    ld a, [hl]                                    ; $6c7b: $7e
    ld l, a                                       ; $6c7c: $6f

jr_03b_6c7d:
    ld [hl], c                                    ; $6c7d: $71
    ld [hl], $f7                                  ; $6c7e: $36 $f7
    cp d                                          ; $6c80: $ba
    ld e, a                                       ; $6c81: $5f

jr_03b_6c82:
    cp l                                          ; $6c82: $bd
    rrca                                          ; $6c83: $0f
    and [hl]                                      ; $6c84: $a6
    db $fc                                        ; $6c85: $fc
    inc l                                         ; $6c86: $2c
    xor [hl]                                      ; $6c87: $ae
    ld l, d                                       ; $6c88: $6a
    ld c, a                                       ; $6c89: $4f
    nop                                           ; $6c8a: $00
    cp l                                          ; $6c8b: $bd
    inc l                                         ; $6c8c: $2c
    adc $66                                       ; $6c8d: $ce $66

jr_03b_6c8f:
    cpl                                           ; $6c8f: $2f
    jp nc, Jump_000_3f3a                          ; $6c90: $d2 $3a $3f

    call z, $df05                                 ; $6c93: $cc $05 $df
    ld a, [hl-]                                   ; $6c96: $3a
    ld l, h                                       ; $6c97: $6c
    ld [$fc39], sp                                ; $6c98: $08 $39 $fc
    sbc c                                         ; $6c9b: $99
    ld a, [c]                                     ; $6c9c: $f2
    jp z, Jump_000_2e79                           ; $6c9d: $ca $79 $2e

    sub h                                         ; $6ca0: $94
    ld d, [hl]                                    ; $6ca1: $56
    ld d, e                                       ; $6ca2: $53
    or $07                                        ; $6ca3: $f6 $07
    rst $20                                       ; $6ca5: $e7
    dec c                                         ; $6ca6: $0d
    nop                                           ; $6ca7: $00
    ld a, l                                       ; $6ca8: $7d
    ld [hl], e                                    ; $6ca9: $73
    sub c                                         ; $6caa: $91
    ld [$88e5], sp                                ; $6cab: $08 $e5 $88
    xor e                                         ; $6cae: $ab

jr_03b_6caf:
    db $db                                        ; $6caf: $db
    add d                                         ; $6cb0: $82
    add hl, hl                                    ; $6cb1: $29
    cpl                                           ; $6cb2: $2f
    dec l                                         ; $6cb3: $2d
    add a                                         ; $6cb4: $87
    dec c                                         ; $6cb5: $0d
    ld hl, $3f87                                  ; $6cb6: $21 $87 $3f
    rst $08                                       ; $6cb9: $cf
    sub l                                         ; $6cba: $95
    rst $10                                       ; $6cbb: $d7
    sbc c                                         ; $6cbc: $99
    ld a, [c]                                     ; $6cbd: $f2
    ld c, d                                       ; $6cbe: $4a
    sbc l                                         ; $6cbf: $9d
    push bc                                       ; $6cc0: $c5
    ld [hl], c                                    ; $6cc1: $71
    jp z, $c7f9                                   ; $6cc2: $ca $f9 $c7

    ld de, $8d47                                  ; $6cc5: $11 $47 $8d

jr_03b_6cc8:
    ld e, h                                       ; $6cc8: $5c
    ret c                                         ; $6cc9: $d8

    inc [hl]                                      ; $6cca: $34
    ld l, a                                       ; $6ccb: $6f
    nop                                           ; $6ccc: $00
    ld a, l                                       ; $6ccd: $7d
    jr c, jr_03b_6caf                             ; $6cce: $38 $df

    ld a, [$1251]                                 ; $6cd0: $fa $51 $12
    ld h, a                                       ; $6cd3: $67
    ld [hl], c                                    ; $6cd4: $71
    ld e, h                                       ; $6cd5: $5c
    ld c, h                                       ; $6cd6: $4c
    rst $38                                       ; $6cd7: $ff
    cp d                                          ; $6cd8: $ba
    ld a, [c]                                     ; $6cd9: $f2
    ld a, [hl-]                                   ; $6cda: $3a
    ld d, e                                       ; $6cdb: $53
    ld e, [hl]                                    ; $6cdc: $5e
    xor c                                         ; $6cdd: $a9
    di                                            ; $6cde: $f3
    ld e, h                                       ; $6cdf: $5c
    jr z, jr_03b_6c8f                             ; $6ce0: $28 $ad

    and [hl]                                      ; $6ce2: $a6
    db $ec                                        ; $6ce3: $ec
    rrca                                          ; $6ce4: $0f
    adc $51                                       ; $6ce5: $ce $51
    ld h, e                                       ; $6ce7: $63
    rla                                           ; $6ce8: $17
    adc [hl]                                      ; $6ce9: $8e
    jr c, jr_03b_6c82                             ; $6cea: $38 $96

    add hl, de                                    ; $6cec: $19
    rst $30                                       ; $6ced: $f7
    ld [de], a                                    ; $6cee: $12
    ld [hl], e                                    ; $6cef: $73
    ld h, c                                       ; $6cf0: $61
    db $d3                                        ; $6cf1: $d3
    ld e, h                                       ; $6cf2: $5c
    xor [hl]                                      ; $6cf3: $ae
    xor $d2                                       ; $6cf4: $ee $d2
    ld a, l                                       ; $6cf6: $7d
    rst $20                                       ; $6cf7: $e7
    ei                                            ; $6cf8: $fb
    push hl                                       ; $6cf9: $e5
    dec c                                         ; $6cfa: $0d
    nop                                           ; $6cfb: $00
    sub a                                         ; $6cfc: $97
    and l                                         ; $6cfd: $a5
    ld a, a                                       ; $6cfe: $7f
    ld e, l                                       ; $6cff: $5d
    ld a, c                                       ; $6d00: $79
    sbc l                                         ; $6d01: $9d
    add hl, hl                                    ; $6d02: $29
    xor a                                         ; $6d03: $af
    call nc, Call_000_2e79                        ; $6d04: $d4 $79 $2e

Call_03b_6d07:
    sub h                                         ; $6d07: $94
    ld d, [hl]                                    ; $6d08: $56
    ld d, e                                       ; $6d09: $53
    or $07                                        ; $6d0a: $f6 $07
    rst $20                                       ; $6d0c: $e7
    sub h                                         ; $6d0d: $94
    inc hl                                        ; $6d0e: $23
    ld a, [hl+]                                   ; $6d0f: $2a
    rrca                                          ; $6d10: $0f
    ld a, [hl]                                    ; $6d11: $7e
    inc e                                         ; $6d12: $1c
    ld [hl], c                                    ; $6d13: $71
    dec h                                         ; $6d14: $25
    ld [hl], l                                    ; $6d15: $75
    ld h, c                                       ; $6d16: $61
    db $d3                                        ; $6d17: $d3
    call nc, $ac35                                ; $6d18: $d4 $35 $ac
    and [hl]                                      ; $6d1b: $a6
    or h                                          ; $6d1c: $b4
    inc d                                         ; $6d1d: $14
    ld [$000d], a                                 ; $6d1e: $ea $0d $00
    ld a, l                                       ; $6d21: $7d
    jr c, jr_03b_6d86                             ; $6d22: $38 $62

    and h                                         ; $6d24: $a4
    ld d, h                                       ; $6d25: $54
    sbc l                                         ; $6d26: $9d
    rst $20                                       ; $6d27: $e7
    adc h                                         ; $6d28: $8c
    db $eb                                        ; $6d29: $eb
    ld a, [hl+]                                   ; $6d2a: $2a
    call nc, Call_000_1e51                        ; $6d2b: $d4 $51 $1e
    ld d, a                                       ; $6d2e: $57
    scf                                           ; $6d2f: $37
    sbc l                                         ; $6d30: $9d
    add hl, hl                                    ; $6d31: $29
    xor a                                         ; $6d32: $af
    call nc, Call_03b_4dd5                        ; $6d33: $d4 $d5 $4d
    ld e, $7d                                     ; $6d36: $1e $7d
    adc [hl]                                      ; $6d38: $8e
    ld h, l                                       ; $6d39: $65
    pop af                                        ; $6d3a: $f1
    dec sp                                        ; $6d3b: $3b
    push bc                                       ; $6d3c: $c5
    ld d, $e7                                     ; $6d3d: $16 $e7
    cp c                                          ; $6d3f: $b9
    ld b, a                                       ; $6d40: $47
    add a                                         ; $6d41: $87
    and [hl]                                      ; $6d42: $a6
    and l                                         ; $6d43: $a5
    adc $73                                       ; $6d44: $ce $73
    push hl                                       ; $6d46: $e5
    and a                                         ; $6d47: $a7
    ld e, a                                       ; $6d48: $5f
    ld a, [hl]                                    ; $6d49: $7e
    cp l                                          ; $6d4a: $bd
    or e                                          ; $6d4b: $b3
    ld a, $00                                     ; $6d4c: $3e $00
    rst $20                                       ; $6d4e: $e7
    cp c                                          ; $6d4f: $b9
    ld a, [c]                                     ; $6d50: $f2
    inc sp                                        ; $6d51: $33
    xor a                                         ; $6d52: $af
    ld a, a                                       ; $6d53: $7f
    inc bc                                        ; $6d54: $03
    ld a, l                                       ; $6d55: $7d
    ld [hl], e                                    ; $6d56: $73
    dec [hl]                                      ; $6d57: $35
    and a                                         ; $6d58: $a7
    adc [hl]                                      ; $6d59: $8e
    ld hl, sp-$3d                                 ; $6d5a: $f8 $c3
    add [hl]                                      ; $6d5c: $86
    sub b                                         ; $6d5d: $90

jr_03b_6d5e:
    jp $e79f                                      ; $6d5e: $c3 $9f $e7


    jp z, Jump_03b_4ceb                           ; $6d61: $ca $eb $4c

    ld a, c                                       ; $6d64: $79
    and l                                         ; $6d65: $a5
    adc $73                                       ; $6d66: $ce $73
    call nc, $85c8                                ; $6d68: $d4 $c8 $85
    ld c, l                                       ; $6d6b: $4d
    di                                            ; $6d6c: $f3
    ld b, $81                                     ; $6d6d: $06 $81
    ld l, $4c                                     ; $6d6f: $2e $4c
    add h                                         ; $6d71: $84
    ld [hl], d                                    ; $6d72: $72
    ld d, $c7                                     ; $6d73: $16 $c7
    cp l                                          ; $6d75: $bd
    push bc                                       ; $6d76: $c5
    reti                                          ; $6d77: $d9


    db $ec                                        ; $6d78: $ec
    ld b, l                                       ; $6d79: $45
    ld e, d                                       ; $6d7a: $5a
    rst $20                                       ; $6d7b: $e7
    add a                                         ; $6d7c: $87
    add hl, sp                                    ; $6d7d: $39
    push hl                                       ; $6d7e: $e5
    db $fc                                        ; $6d7f: $fc
    db $e3                                        ; $6d80: $e3
    ld c, h                                       ; $6d81: $4c
    ld a, c                                       ; $6d82: $79
    and l                                         ; $6d83: $a5
    ld l, $7c                                     ; $6d84: $2e $7c

jr_03b_6d86:
    ld sp, hl                                     ; $6d86: $f9
    sub l                                         ; $6d87: $95
    call nc, Call_000_2e79                        ; $6d88: $d4 $79 $2e
    sub h                                         ; $6d8b: $94
    ld d, [hl]                                    ; $6d8c: $56
    ld d, e                                       ; $6d8d: $53
    or $07                                        ; $6d8e: $f6 $07
    rst $20                                       ; $6d90: $e7
    dec c                                         ; $6d91: $0d
    nop                                           ; $6d92: $00
    halt                                          ; $6d93: $76
    ld h, l                                       ; $6d94: $65
    and c                                         ; $6d95: $a1
    or b                                          ; $6d96: $b0
    sbc d                                         ; $6d97: $9a
    ld h, $e6                                     ; $6d98: $26 $e6
    inc a                                         ; $6d9a: $3c
    ld d, a                                       ; $6d9b: $57
    or a                                          ; $6d9c: $b7
    sbc c                                         ; $6d9d: $99
    rst $10                                       ; $6d9e: $d7
    ld e, a                                       ; $6d9f: $5f
    call $d6f9                                    ; $6da0: $cd $f9 $d6
    cpl                                           ; $6da3: $2f

jr_03b_6da4:
    ld h, a                                       ; $6da4: $67
    ld [hl], c                                    ; $6da5: $71
    ld e, h                                       ; $6da6: $5c

Jump_03b_6da7:
    rst $20                                       ; $6da7: $e7
    ei                                            ; $6da8: $fb
    cp l                                          ; $6da9: $bd
    db $fc                                        ; $6daa: $fc
    ld a, [hl]                                    ; $6dab: $7e
    and [hl]                                      ; $6dac: $a6
    cp h                                          ; $6dad: $bc
    ld a, [c]                                     ; $6dae: $f2
    sbc $39                                       ; $6daf: $de $39
    db $ec                                        ; $6db1: $ec
    ld [hl], b                                    ; $6db2: $70
    ld d, $47                                     ; $6db3: $16 $47
    and c                                         ; $6db5: $a1
    call z, $34d3                                 ; $6db6: $cc $d3 $34
    sbc c                                         ; $6db9: $99
    push bc                                       ; $6dba: $c5
    ld [hl], c                                    ; $6dbb: $71
    call nc, $b5d8                                ; $6dbc: $d4 $d8 $b5
    adc $f7                                       ; $6dbf: $ce $f7
    ld a, e                                       ; $6dc1: $7b
    db $f4                                        ; $6dc2: $f4
    cp c                                          ; $6dc3: $b9
    ld a, [c]                                     ; $6dc4: $f2
    ld a, [hl-]                                   ; $6dc5: $3a
    xor d                                         ; $6dc6: $aa
    ld sp, hl                                     ; $6dc7: $f9
    ld b, d                                       ; $6dc8: $42
    ld a, c                                       ; $6dc9: $79
    cp l                                          ; $6dca: $bd
    ld bc, $a517                                  ; $6dcb: $01 $17 $a5
    adc $73                                       ; $6dce: $ce $73
    and c                                         ; $6dd0: $a1
    or h                                          ; $6dd1: $b4
    sbc d                                         ; $6dd2: $9a
    or d                                          ; $6dd3: $b2
    ccf                                           ; $6dd4: $3f
    jr c, jr_03b_6d5e                             ; $6dd5: $38 $87

    cp c                                          ; $6dd7: $b9
    ld c, b                                       ; $6dd8: $48
    db $f4                                        ; $6dd9: $f4
    jp nz, Jump_03b_753a                          ; $6dda: $c2 $3a $75

    and [hl]                                      ; $6ddd: $a6
    cp h                                          ; $6dde: $bc
    ld d, d                                       ; $6ddf: $52
    ld b, a                                       ; $6de0: $47
    inc e                                         ; $6de1: $1c
    dec [hl]                                      ; $6de2: $35
    ld [hl], d                                    ; $6de3: $72
    ld h, c                                       ; $6de4: $61
    db $d3                                        ; $6de5: $d3
    sbc h                                         ; $6de6: $9c
    ld [hl], a                                    ; $6de7: $77
    ld a, [c]                                     ; $6de8: $f2
    jr jr_03b_6da4                                ; $6de9: $18 $b9

    jp c, Jump_03b_6099                           ; $6deb: $da $99 $60

    ld l, $36                                     ; $6dee: $2e $36
    sub $61                                       ; $6df0: $d6 $61
    sbc $00                                       ; $6df2: $de $00
    cp l                                          ; $6df4: $bd
    ld a, [hl+]                                   ; $6df5: $2a
    sub h                                         ; $6df6: $94
    or $3e                                        ; $6df7: $f6 $3e
    ld l, a                                       ; $6df9: $6f
    nop                                           ; $6dfa: $00
    sub a                                         ; $6dfb: $97
    dec sp                                        ; $6dfc: $3b
    rlca                                          ; $6dfd: $07
    ld e, a                                       ; $6dfe: $5f
    scf                                           ; $6dff: $37
    add a                                         ; $6e00: $87
    dec bc                                        ; $6e01: $0b
    and [hl]                                      ; $6e02: $a6
    ld c, b                                       ; $6e03: $48
    db $eb                                        ; $6e04: $eb
    inc d                                         ; $6e05: $14
    ld c, $b3                                     ; $6e06: $0e $b3
    ld a, [c]                                     ; $6e08: $f2
    ld sp, $2567                                  ; $6e09: $31 $67 $25
    ld a, [$cfdc]                                 ; $6e0c: $fa $dc $cf
    sub h                                         ; $6e0f: $94
    ld d, a                                       ; $6e10: $57
    or $58                                        ; $6e11: $f6 $58
    rst $30                                       ; $6e13: $f7
    ld e, [hl]                                    ; $6e14: $5e
    di                                            ; $6e15: $f3
    or [hl]                                       ; $6e16: $b6
    add sp, -$47                                  ; $6e17: $e8 $b9
    jp z, $04f7                                   ; $6e19: $ca $f7 $04

    ld bc, $39af                                  ; $6e1c: $01 $af $39
    rst $08                                       ; $6e1f: $cf
    push bc                                       ; $6e20: $c5
    ld b, $5f                                     ; $6e21: $06 $5f
    nop                                           ; $6e23: $00
    ld e, c                                       ; $6e24: $59
    and c                                         ; $6e25: $a1
    sbc $00                                       ; $6e26: $de $00
    halt                                          ; $6e28: $76
    jr jr_03b_6e3e                                ; $6e29: $18 $13

    dec c                                         ; $6e2b: $0d
    ld [hl], l                                    ; $6e2c: $75
    pop af                                        ; $6e2d: $f1
    sra d                                         ; $6e2e: $cb $2a
    db $ec                                        ; $6e30: $ec
    ccf                                           ; $6e31: $3f
    rst $08                                       ; $6e32: $cf
    ld c, $c5                                     ; $6e33: $0e $c5
    and $e7                                       ; $6e35: $e6 $e7
    ld e, a                                       ; $6e37: $5f
    ld [hl+], a                                   ; $6e38: $22
    rst $30                                       ; $6e39: $f7
    dec b                                         ; $6e3a: $05
    jp z, $2f85                                   ; $6e3b: $ca $85 $2f

jr_03b_6e3e:
    ccf                                           ; $6e3e: $3f
    adc e                                         ; $6e3f: $8b
    db $e3                                        ; $6e40: $e3
    ld l, d                                       ; $6e41: $6a
    ld l, $d8                                     ; $6e42: $2e $d8
    ld c, h                                       ; $6e44: $4c
    and e                                         ; $6e45: $a3
    cp h                                          ; $6e46: $bc
    adc $bc                                       ; $6e47: $ce $bc
    and $0d                                       ; $6e49: $e6 $0d
    nop                                           ; $6e4b: $00
    cp l                                          ; $6e4c: $bd
    ld c, h                                       ; $6e4d: $4c
    ldh a, [$80]                                  ; $6e4e: $f0 $80
    ei                                            ; $6e50: $fb
    cp [hl]                                       ; $6e51: $be
    ei                                            ; $6e52: $fb
    push af                                       ; $6e53: $f5
    db $eb                                        ; $6e54: $eb
    rst $10                                       ; $6e55: $d7
    rst $28                                       ; $6e56: $ef
    cp [hl]                                       ; $6e57: $be
    rst $28                                       ; $6e58: $ef
    scf                                           ; $6e59: $37
    pop bc                                        ; $6e5a: $c1
    inc bc                                        ; $6e5b: $03
    xor $fb                                       ; $6e5c: $ee $fb
    ld b, $17                                     ; $6e5e: $06 $17
    db $10                                        ; $6e60: $10
    cp [hl]                                       ; $6e61: $be
    ld a, [hl]                                    ; $6e62: $7e
    add h                                         ; $6e63: $84
    xor a                                         ; $6e64: $af
    rra                                           ; $6e65: $1f
    pop hl                                        ; $6e66: $e1
    db $eb                                        ; $6e67: $eb
    rst $00                                       ; $6e68: $c7
    ei                                            ; $6e69: $fb
    cp [hl]                                       ; $6e6a: $be
    ld bc, $4cbd                                  ; $6e6b: $01 $bd $4c
    ldh a, [rP1]                                  ; $6e6e: $f0 $00
    ld hl, sp+$14                                 ; $6e70: $f8 $14
    ld e, e                                       ; $6e72: $5b
    dec [hl]                                      ; $6e73: $35
    ld a, h                                       ; $6e74: $7c
    adc d                                         ; $6e75: $8a
    xor l                                         ; $6e76: $ad
    ld a, [$6fbe]                                 ; $6e77: $fa $be $6f
    nop                                           ; $6e7a: $00
    add c                                         ; $6e7b: $81
    ld b, a                                       ; $6e7c: $47
    ld b, $1e                                     ; $6e7d: $06 $1e
    add hl, de                                    ; $6e7f: $19
    jr z, @-$07                                   ; $6e80: $28 $f7

    ld [bc], a                                    ; $6e82: $02
    ld [hl-], a                                   ; $6e83: $32
    ld b, [hl]                                    ; $6e84: $46
    ld a, [bc]                                    ; $6e85: $0a
    ld a, h                                       ; $6e86: $7c
    db $dd                                        ; $6e87: $dd
    xor c                                         ; $6e88: $a9
    or c                                          ; $6e89: $b1
    ld l, e                                       ; $6e8a: $6b
    call nz, Call_03b_4a6a                        ; $6e8b: $c4 $6a $4a
    sbc l                                         ; $6e8e: $9d
    dec a                                         ; $6e8f: $3d
    ld bc, $137d                                  ; $6e90: $01 $7d $13
    cp [hl]                                       ; $6e93: $be
    nop                                           ; $6e94: $00
    or d                                          ; $6e95: $b2
    ld b, d                                       ; $6e96: $42
    ld e, l                                       ; $6e97: $5d
    call $f9bd                                    ; $6e98: $cd $bd $f9
    adc $cf                                       ; $6e9b: $ce $cf
    ld [hl], e                                    ; $6e9d: $73
    push hl                                       ; $6e9e: $e5
    or c                                          ; $6e9f: $b1
    rst $38                                       ; $6ea0: $ff
    rr h                                          ; $6ea1: $cb $1c
    ld l, $48                                     ; $6ea3: $2e $48
    inc de                                        ; $6ea5: $13
    ld l, h                                       ; $6ea6: $6c
    db $fd                                        ; $6ea7: $fd
    di                                            ; $6ea8: $f3
    ld e, [hl]                                    ; $6ea9: $5e
    cpl                                           ; $6eaa: $2f
    inc de                                        ; $6eab: $13
    inc a                                         ; $6eac: $3c
    nop                                           ; $6ead: $00
    ld a, $c5                                     ; $6eae: $3e $c5
    ld d, [hl]                                    ; $6eb0: $56
    ld a, l                                       ; $6eb1: $7d
    rst $18                                       ; $6eb2: $df
    scf                                           ; $6eb3: $37
    nop                                           ; $6eb4: $00
    cp l                                          ; $6eb5: $bd
    sub $ef                                       ; $6eb6: $d6 $ef
    ret z                                         ; $6eb8: $c8

    ld a, [hl]                                    ; $6eb9: $7e
    ld b, a                                       ; $6eba: $47
    or $73                                        ; $6ebb: $f6 $73
    db $fd                                        ; $6ebd: $fd
    and c                                         ; $6ebe: $a1
    sub a                                         ; $6ebf: $97
    add l                                         ; $6ec0: $85
    add hl, hl                                    ; $6ec1: $29
    dec hl                                        ; $6ec2: $2b
    xor c                                         ; $6ec3: $a9
    ld d, e                                       ; $6ec4: $53
    dec de                                        ; $6ec5: $1b
    adc h                                         ; $6ec6: $8c
    ld e, c                                       ; $6ec7: $59
    cp a                                          ; $6ec8: $bf
    jp nz, $9be7                                  ; $6ec9: $c2 $e7 $9b

    ret c                                         ; $6ecc: $d8

    db $fc                                        ; $6ecd: $fc
    inc l                                         ; $6ece: $2c
    adc [hl]                                      ; $6ecf: $8e
    and e                                         ; $6ed0: $a3
    add $2e                                       ; $6ed1: $c6 $2e

jr_03b_6ed3:
    ld e, l                                       ; $6ed3: $5d
    rst $20                                       ; $6ed4: $e7
    ei                                            ; $6ed5: $fb
    push hl                                       ; $6ed6: $e5
    ld c, d                                       ; $6ed7: $4a
    ld [$4d58], a                                 ; $6ed8: $ea $58 $4d
    inc de                                        ; $6edb: $13
    ld d, e                                       ; $6edc: $53
    rst $20                                       ; $6edd: $e7
    cp c                                          ; $6ede: $b9
    ld a, $ce                                     ; $6edf: $3e $ce
    jr c, jr_03b_6f40                             ; $6ee1: $38 $5d

    cpl                                           ; $6ee3: $2f
    cp a                                          ; $6ee4: $bf
    cp [hl]                                       ; $6ee5: $be
    rst $28                                       ; $6ee6: $ef
    sub h                                         ; $6ee7: $94
    xor [hl]                                      ; $6ee8: $ae
    cp [hl]                                       ; $6ee9: $be
    rst $28                                       ; $6eea: $ef
    cp e                                          ; $6eeb: $bb
    db $db                                        ; $6eec: $db
    ld b, l                                       ; $6eed: $45
    cp a                                          ; $6eee: $bf
    ld a, $47                                     ; $6eef: $3e $47
    or $39                                        ; $6ef1: $f6 $39
    or d                                          ; $6ef3: $b2
    rst $08                                       ; $6ef4: $cf
    rla                                           ; $6ef5: $17
    rst $18                                       ; $6ef6: $df
    ld c, h                                       ; $6ef7: $4c
    or e                                          ; $6ef8: $b3
    push bc                                       ; $6ef9: $c5
    ld a, c                                       ; $6efa: $79
    xor [hl]                                      ; $6efb: $ae
    and h                                         ; $6efc: $a4
    xor $1c                                       ; $6efd: $ee $1c
    sub $89                                       ; $6eff: $d6 $89
    dec l                                         ; $6f01: $2d
    or l                                          ; $6f02: $b5
    rlca                                          ; $6f03: $07
    nop                                           ; $6f04: $00
    db $dd                                        ; $6f05: $dd
    ld a, d                                       ; $6f06: $7a
    sbc c                                         ; $6f07: $99
    ldh [rSB], a                                  ; $6f08: $e0 $01
    dec a                                         ; $6f0a: $3d
    nop                                           ; $6f0b: $00
    halt                                          ; $6f0c: $76
    or b                                          ; $6f0d: $b0
    sbc $c4                                       ; $6f0e: $de $c4
    xor a                                         ; $6f10: $af
    adc c                                         ; $6f11: $89
    sub c                                         ; $6f12: $91
    rst $30                                       ; $6f13: $f7
    db $ec                                        ; $6f14: $ec
    adc [hl]                                      ; $6f15: $8e
    or h                                          ; $6f16: $b4
    dec sp                                        ; $6f17: $3b
    jp nc, Jump_03b_634e                          ; $6f18: $d2 $4e $63

    ld c, [hl]                                    ; $6f1b: $4e
    ld l, b                                       ; $6f1c: $68
    ld [hl], c                                    ; $6f1d: $71
    adc l                                         ; $6f1e: $8d
    jp nz, $fc39                                  ; $6f1f: $c2 $39 $fc

    push bc                                       ; $6f22: $c5
    rla                                           ; $6f23: $17
    cp $a8                                        ; $6f24: $fe $a8
    ld hl, $fb4d                                  ; $6f26: $21 $4d $fb
    ld [hl-], a                                   ; $6f29: $32
    adc e                                         ; $6f2a: $8b

Jump_03b_6f2b:
    db $e3                                        ; $6f2b: $e3
    jr nc, jr_03b_6ed3                            ; $6f2c: $30 $a5

    cp $52                                        ; $6f2e: $fe $52

jr_03b_6f30:
    inc de                                        ; $6f30: $13
    inc hl                                        ; $6f31: $23
    and a                                         ; $6f32: $a7
    or [hl]                                       ; $6f33: $b6
    dec h                                         ; $6f34: $25
    ld d, a                                       ; $6f35: $57
    cp b                                          ; $6f36: $b8
    ld a, [$bfd1]                                 ; $6f37: $fa $d1 $bf
    ret c                                         ; $6f3a: $d8

    db $fc                                        ; $6f3b: $fc
    ld a, [hl]                                    ; $6f3c: $7e
    ld c, $47                                     ; $6f3d: $0e $47
    adc l                                         ; $6f3f: $8d

jr_03b_6f40:
    adc $b7                                       ; $6f40: $ce $b7
    rst $00                                       ; $6f42: $c7
    ret z                                         ; $6f43: $c8

    push de                                       ; $6f44: $d5
    ld e, l                                       ; $6f45: $5d
    ld a, [hl-]                                   ; $6f46: $3a
    ld e, $c9                                     ; $6f47: $1e $c9
    inc hl                                        ; $6f49: $23
    add hl, bc                                    ; $6f4a: $09
    dec hl                                        ; $6f4b: $2b
    and h                                         ; $6f4c: $a4
    or h                                          ; $6f4d: $b4
    sbc d                                         ; $6f4e: $9a
    jr jr_03b_6f30                                ; $6f4f: $18 $df

    daa                                           ; $6f51: $27
    ld a, h                                       ; $6f52: $7c
    ld hl, $6725                                  ; $6f53: $21 $25 $67
    or d                                          ; $6f56: $b2
    adc $51                                       ; $6f57: $ce $51
    xor b                                         ; $6f59: $a8
    or e                                          ; $6f5a: $b3
    ccf                                           ; $6f5b: $3f
    jp nc, $48fe                                  ; $6f5c: $d2 $fe $48

    ei                                            ; $6f5f: $fb
    rla                                           ; $6f60: $17
    or c                                          ; $6f61: $b1
    ld l, $20                                     ; $6f62: $2e $20
    ld h, e                                       ; $6f64: $63
    and h                                         ; $6f65: $a4
    call c, $0df7                                 ; $6f66: $dc $f7 $0d
    nop                                           ; $6f69: $00
    db $dd                                        ; $6f6a: $dd
    rst $08                                       ; $6f6b: $cf
    pop hl                                        ; $6f6c: $e1
    inc l                                         ; $6f6d: $2c

jr_03b_6f6e:
    xor [hl]                                      ; $6f6e: $ae
    ld [$8b94], a                                 ; $6f6f: $ea $94 $8b
    ld a, [c]                                     ; $6f72: $f2
    pop af                                        ; $6f73: $f1
    ld a, e                                       ; $6f74: $7b
    ld l, $10                                     ; $6f75: $2e $10
    ld e, e                                       ; $6f77: $5b
    push af                                       ; $6f78: $f5
    dec c                                         ; $6f79: $0d
    nop                                           ; $6f7a: $00
    halt                                          ; $6f7b: $76
    ld l, b                                       ; $6f7c: $68
    inc e                                         ; $6f7d: $1c
    ld sp, $afca                                  ; $6f7e: $31 $ca $af
    db $fc                                        ; $6f81: $fc
    call z, $e691                                 ; $6f82: $cc $91 $e6
    ld c, b                                       ; $6f85: $48
    sub e                                         ; $6f86: $93
    jr jr_03b_6f6e                                ; $6f87: $18 $e5

    db $eb                                        ; $6f89: $eb
    cpl                                           ; $6f8a: $2f
    cp [hl]                                       ; $6f8b: $be
    sbc c                                         ; $6f8c: $99
    ld h, [hl]                                    ; $6f8d: $66
    adc e                                         ; $6f8e: $8b
    rst $30                                       ; $6f8f: $f7
    xor [hl]                                      ; $6f90: $ae
    sbc [hl]                                      ; $6f91: $9e
    rst $38                                       ; $6f92: $ff
    ret z                                         ; $6f93: $c8

    add l                                         ; $6f94: $85
    jp nc, $eff4                                  ; $6f95: $d2 $f4 $ef

    ei                                            ; $6f98: $fb
    ld l, $bf                                     ; $6f99: $2e $bf
    ld a, $5f                                     ; $6f9b: $3e $5f
    ld a, h                                       ; $6f9d: $7c
    inc sp                                        ; $6f9e: $33
    call $e716                                    ; $6f9f: $cd $16 $e7
    cp c                                          ; $6fa2: $b9
    sub d                                         ; $6fa3: $92
    cp d                                          ; $6fa4: $ba
    ld [hl], e                                    ; $6fa5: $73
    ld e, b                                       ; $6fa6: $58
    daa                                           ; $6fa7: $27
    or [hl]                                       ; $6fa8: $b6
    call nc, Call_000_2e45                        ; $6fa9: $d4 $45 $2e
    ld hl, sp-$2e                                 ; $6fac: $f8 $d2
    dec [hl]                                      ; $6fae: $35
    di                                            ; $6faf: $f3
    cp $57                                        ; $6fb0: $fe $57
    ld h, c                                       ; $6fb2: $61
    rst $38                                       ; $6fb3: $ff
    push de                                       ; $6fb4: $d5
    ld e, l                                       ; $6fb5: $5d
    ld a, [hl-]                                   ; $6fb6: $3a
    ld a, a                                       ; $6fb7: $7f
    and h                                         ; $6fb8: $a4
    ccf                                           ; $6fb9: $3f
    jp nc, $ed57                                  ; $6fba: $d2 $57 $ed

    or h                                          ; $6fbd: $b4
    or d                                          ; $6fbe: $b2
    ldh [rOCPD], a                                ; $6fbf: $e0 $6b
    db $fc                                        ; $6fc1: $fc
    ld e, c                                       ; $6fc2: $59
    inc e                                         ; $6fc3: $1c
    rla                                           ; $6fc4: $17
    adc c                                         ; $6fc5: $89
    ret nc                                        ; $6fc6: $d0

    db $e3                                        ; $6fc7: $e3
    inc l                                         ; $6fc8: $2c
    adc [hl]                                      ; $6fc9: $8e
    xor e                                         ; $6fca: $ab
    adc a                                         ; $6fcb: $8f
    xor h                                         ; $6fcc: $ac
    adc a                                         ; $6fcd: $8f
    xor h                                         ; $6fce: $ac
    add hl, de                                    ; $6fcf: $19
    add hl, hl                                    ; $6fd0: $29
    sub c                                         ; $6fd1: $91
    inc hl                                        ; $6fd2: $23
    xor [hl]                                      ; $6fd3: $ae
    db $fc                                        ; $6fd4: $fc
    call z, Call_03b_7fd7                         ; $6fd5: $cc $d7 $7f
    inc bc                                        ; $6fd8: $03
    cp l                                          ; $6fd9: $bd
    inc l                                         ; $6fda: $2c
    adc $66                                       ; $6fdb: $ce $66
    sbc b                                         ; $6fdd: $98
    inc hl                                        ; $6fde: $23
    sbc d                                         ; $6fdf: $9a
    call nz, $2f28                                ; $6fe0: $c4 $28 $2f
    ld e, l                                       ; $6fe3: $5d
    cp d                                          ; $6fe4: $ba
    ld a, [c]                                     ; $6fe5: $f2
    inc sp                                        ; $6fe6: $33
    ld b, a                                       ; $6fe7: $47
    sbc d                                         ; $6fe8: $9a
    inc hl                                        ; $6fe9: $23
    ld c, l                                       ; $6fea: $4d
    ld h, d                                       ; $6feb: $62
    sub h                                         ; $6fec: $94
    xor a                                         ; $6fed: $af
    cp a                                          ; $6fee: $bf
    ld hl, sp+$66                                 ; $6fef: $f8 $66
    sbc d                                         ; $6ff1: $9a
    dec l                                         ; $6ff2: $2d
    jp nz, $cdd7                                  ; $6ff3: $c2 $d7 $cd

    cp $45                                        ; $6ff6: $fe $45
    xor h                                         ; $6ff8: $ac
    dec a                                         ; $6ff9: $3d
    nop                                           ; $6ffa: $00
    ld a, l                                       ; $6ffb: $7d
    di                                            ; $6ffc: $f3
    cp [hl]                                       ; $6ffd: $be
    rst $28                                       ; $6ffe: $ef
    sbc d                                         ; $6fff: $9a
    inc hl                                        ; $7000: $23
    ld a, [de]                                    ; $7001: $1a
    ld b, a                                       ; $7002: $47
    adc h                                         ; $7003: $8c
    sub d                                         ; $7004: $92
    rst $30                                       ; $7005: $f7
    ld a, l                                       ; $7006: $7d
    rst $10                                       ; $7007: $d7
    adc $ba                                       ; $7008: $ce $ba
    ld c, [hl]                                    ; $700a: $4e
    inc hl                                        ; $700b: $23
    sbc $f7                                       ; $700c: $de $f7
    dec c                                         ; $700e: $0d
    nop                                           ; $700f: $00

jr_03b_7010:
    db $dd                                        ; $7010: $dd
    cpl                                           ; $7011: $2f
    db $e3                                        ; $7012: $e3
    or h                                          ; $7013: $b4
    ld de, $7523                                  ; $7014: $11 $23 $75
    dec [hl]                                      ; $7017: $35
    ei                                            ; $7018: $fb
    and l                                         ; $7019: $a5
    db $f4                                        ; $701a: $f4
    ld e, h                                       ; $701b: $5c
    ret nz                                        ; $701c: $c0

    dec bc                                        ; $701d: $0b
    adc l                                         ; $701e: $8d
    call Call_03b_6aeb                            ; $701f: $cd $eb $6a
    ld h, a                                       ; $7022: $67
    dec e                                         ; $7023: $1d
    or c                                          ; $7024: $b1
    sbc d                                         ; $7025: $9a
    ld d, d                                       ; $7026: $52
    rst $20                                       ; $7027: $e7
    adc h                                         ; $7028: $8c
    ld a, e                                       ; $7029: $7b
    db $f4                                        ; $702a: $f4
    cp c                                          ; $702b: $b9
    ret z                                         ; $702c: $c8

    ld b, l                                       ; $702d: $45
    ld sp, hl                                     ; $702e: $f9
    ld a, [hl]                                    ; $702f: $7e
    sub h                                         ; $7030: $94
    call nz, $001b                                ; $7031: $c4 $1b $00
    sub a                                         ; $7034: $97
    ld de, $5ca1                                  ; $7035: $11 $a1 $5c
    ld sp, hl                                     ; $7038: $f9
    push af                                       ; $7039: $f5
    ld sp, hl                                     ; $703a: $f9
    ld [c], a                                     ; $703b: $e2
    sbc e                                         ; $703c: $9b
    ld l, c                                       ; $703d: $69
    or [hl]                                       ; $703e: $b6
    jr c, jr_03b_7010                             ; $703f: $38 $cf

    sub l                                         ; $7041: $95
    call nc, $c39d                                ; $7042: $d4 $9d $c3
    ld a, [hl-]                                   ; $7045: $3a
    or c                                          ; $7046: $b1
    and l                                         ; $7047: $a5
    sbc $0b                                       ; $7048: $de $0b
    call nz, Call_03b_7d56                        ; $704a: $c4 $56 $7d
    rst $08                                       ; $704d: $cf
    xor [hl]                                      ; $704e: $ae
    inc l                                         ; $704f: $2c
    sub h                                         ; $7050: $94
    xor h                                         ; $7051: $ac
    and [hl]                                      ; $7052: $a6
    and [hl]                                      ; $7053: $a6
    db $ec                                        ; $7054: $ec
    ld [de], a                                    ; $7055: $12
    rst $10                                       ; $7056: $d7
    ld b, h                                       ; $7057: $44
    ld e, b                                       ; $7058: $58
    jp z, $ae6a                                   ; $7059: $ca $6a $ae

    ld a, [hl]                                    ; $705c: $7e
    db $f4                                        ; $705d: $f4
    or [hl]                                       ; $705e: $b6
    ei                                            ; $705f: $fb
    ld de, $624d                                  ; $7060: $11 $4d $62
    sub h                                         ; $7063: $94
    sub a                                         ; $7064: $97
    add hl, sp                                    ; $7065: $39
    db $fc                                        ; $7066: $fc
    sbc c                                         ; $7067: $99
    call nz, Call_03b_5f28                        ; $7068: $c4 $28 $5f
    ld a, a                                       ; $706b: $7f
    pop af                                        ; $706c: $f1
    call Call_03b_5b34                            ; $706d: $cd $34 $5b
    cp h                                          ; $7070: $bc
    rst $10                                       ; $7071: $d7
    rlc h                                         ; $7072: $cb $04
    rrca                                          ; $7074: $0f
    cp b                                          ; $7075: $b8
    rst $10                                       ; $7076: $d7
    cp l                                          ; $7077: $bd
    rrca                                          ; $7078: $0f
    rst $30                                       ; $7079: $f7
    ld d, [hl]                                    ; $707a: $56
    rst $20                                       ; $707b: $e7
    cp a                                          ; $707c: $bf
    daa                                           ; $707d: $27
    nop                                           ; $707e: $00
    sub a                                         ; $707f: $97
    ld h, l                                       ; $7080: $65
    db $fd                                        ; $7081: $fd
    and e                                         ; $7082: $a3
    add $5f                                       ; $7083: $c6 $5f
    ld b, b                                       ; $7085: $40
    sbc d                                         ; $7086: $9a
    ld h, [hl]                                    ; $7087: $66
    adc e                                         ; $7088: $8b
    or e                                          ; $7089: $b3
    and a                                         ; $708a: $a7
    ld [hl], h                                    ; $708b: $74
    or d                                          ; $708c: $b2
    jp nc, $97e2                                  ; $708d: $d2 $e2 $97

    sub $ff                                       ; $7090: $d6 $ff
    ld sp, $b4f2                                  ; $7092: $31 $f2 $b4
    ld h, c                                       ; $7095: $61
    ld l, $72                                     ; $7096: $2e $72
    ld d, $d7                                     ; $7098: $16 $d7
    ld [c], a                                     ; $709a: $e2
    ld c, e                                       ; $709b: $4b
    rst $10                                       ; $709c: $d7
    jp z, $feaf                                   ; $709d: $ca $af $fe

    ld [c], a                                     ; $70a0: $e2
    sbc e                                         ; $70a1: $9b
    ld l, c                                       ; $70a2: $69
    or [hl]                                       ; $70a3: $b6
    ld [$485f], sp                                ; $70a4: $08 $5f $48
    ret                                           ; $70a7: $c9


    ld b, l                                       ; $70a8: $45
    ld l, $f8                                     ; $70a9: $2e $f8
    jp nc, $2535                                  ; $70ab: $d2 $35 $25

    add $26                                       ; $70ae: $c6 $26
    sub c                                         ; $70b0: $91
    xor e                                         ; $70b1: $ab
    reti                                          ; $70b2: $d9


    cpl                                           ; $70b3: $2f
    push hl                                       ; $70b4: $e5
    ld b, $e7                                     ; $70b5: $06 $e7
    ret                                           ; $70b7: $c9


    sbc e                                         ; $70b8: $9b
    or $0a                                        ; $70b9: $f6 $0a
    ld e, a                                       ; $70bb: $5f
    jr nz, jr_03b_70cd                            ; $70bc: $20 $0f

    ld c, [hl]                                    ; $70be: $4e
    ld sp, hl                                     ; $70bf: $f9
    dec b                                         ; $70c0: $05
    ld h, h                                       ; $70c1: $64
    ld e, l                                       ; $70c2: $5d
    dec l                                         ; $70c3: $2d
    or h                                          ; $70c4: $b4
    sbc $00                                       ; $70c5: $de $00
    sub a                                         ; $70c7: $97
    ld [hl], c                                    ; $70c8: $71
    cp [hl]                                       ; $70c9: $be
    push af                                       ; $70ca: $f5
    db $e3                                        ; $70cb: $e3
    inc l                                         ; $70cc: $2c

jr_03b_70cd:
    adc [hl]                                      ; $70cd: $8e
    and e                                         ; $70ce: $a3
    add $5c                                       ; $70cf: $c6 $5c
    ld hl, sp-$06                                 ; $70d1: $f8 $fa
    ld h, d                                       ; $70d3: $62
    di                                            ; $70d4: $f3
    scf                                           ; $70d5: $37
    nop                                           ; $70d6: $00
    db $dd                                        ; $70d7: $dd
    inc bc                                        ; $70d8: $03
    cp a                                          ; $70d9: $bf
    jp $ac99                                      ; $70da: $c3 $99 $ac


    ld [hl], e                                    ; $70dd: $73
    and c                                         ; $70de: $a1
    and e                                         ; $70df: $a3
    rst $08                                       ; $70e0: $cf
    dec a                                         ; $70e1: $3d
    cp d                                          ; $70e2: $ba
    ld a, [c]                                     ; $70e3: $f2
    or d                                          ; $70e4: $b2
    ld a, [c]                                     ; $70e5: $f2
    xor e                                         ; $70e6: $ab
    cp a                                          ; $70e7: $bf
    ld hl, sp+$66                                 ; $70e8: $f8 $66
    sbc d                                         ; $70ea: $9a
    dec l                                         ; $70eb: $2d
    or $04                                        ; $70ec: $f6 $04
    sub a                                         ; $70ee: $97
    dec e                                         ; $70ef: $1d
    jr nc, @-$43                                  ; $70f0: $30 $bb

    ld c, e                                       ; $70f2: $4b
    db $ed                                        ; $70f3: $ed
    ld [bc], a                                    ; $70f4: $02
    rst $20                                       ; $70f5: $e7
    ldh a, [$57]                                  ; $70f6: $f0 $57
    ld a, a                                       ; $70f8: $7f
    pop af                                        ; $70f9: $f1
    call Call_03b_5b34                            ; $70fa: $cd $34 $5b
    add h                                         ; $70fd: $84
    cpl                                           ; $70fe: $2f
    jr nz, jr_03b_7164                            ; $70ff: $20 $63

    and h                                         ; $7101: $a4
    ret nz                                        ; $7102: $c0

    ld h, a                                       ; $7103: $67
    db $dd                                        ; $7104: $dd
    push bc                                       ; $7105: $c5
    rla                                           ; $7106: $17
    db $f4                                        ; $7107: $f4
    cp d                                          ; $7108: $ba
    add sp, -$70                                  ; $7109: $e8 $90
    xor c                                         ; $710b: $a9
    dec bc                                        ; $710c: $0b
    dec de                                        ; $710d: $1b
    push hl                                       ; $710e: $e5
    ld h, a                                       ; $710f: $67
    or d                                          ; $7110: $b2
    adc $3d                                       ; $7111: $ce $3d
    cp d                                          ; $7113: $ba
    ld a, [c]                                     ; $7114: $f2
    ld [de], a                                    ; $7115: $12
    cp c                                          ; $7116: $b9
    ld e, a                                       ; $7117: $5f
    ld l, h                                       ; $7118: $6c
    scf                                           ; $7119: $37
    nop                                           ; $711a: $00
    halt                                          ; $711b: $76
    ld a, [de]                                    ; $711c: $1a
    cp e                                          ; $711d: $bb
    ld [hl], h                                    ; $711e: $74
    or l                                          ; $711f: $b5
    inc sp                                        ; $7120: $33
    pop bc                                        ; $7121: $c1
    sbc h                                         ; $7122: $9c
    ld a, h                                       ; $7123: $7c
    call z, Call_000_3b55                         ; $7124: $cc $55 $3b
    jp z, Jump_03b_73cf                           ; $7127: $ca $cf $73

    and [hl]                                      ; $712a: $a6
    cp h                                          ; $712b: $bc
    ld [de], a                                    ; $712c: $12
    ld a, $fb                                     ; $712d: $3e $fb
    rla                                           ; $712f: $17
    or c                                          ; $7130: $b1
    sbc $00                                       ; $7131: $de $00
    sub a                                         ; $7133: $97
    ld de, $9ca1                                  ; $7134: $11 $a1 $9c
    jp $fd5f                                      ; $7137: $c3 $5f $fd


jr_03b_713a:
    push bc                                       ; $713a: $c5
    scf                                           ; $713b: $37
    db $d3                                        ; $713c: $d3
    ld l, h                                       ; $713d: $6c
    ld de, $c53e                                  ; $713e: $11 $3e $c5
    ld d, [hl]                                    ; $7141: $56
    ld a, l                                       ; $7142: $7d
    inc bc                                        ; $7143: $03
    db $dd                                        ; $7144: $dd
    cpl                                           ; $7145: $2f
    ld [hl], c                                    ; $7146: $71
    xor l                                         ; $7147: $ad
    ld a, [hl+]                                   ; $7148: $2a
    ld l, $72                                     ; $7149: $2e $72
    push hl                                       ; $714b: $e5
    ld b, a                                       ; $714c: $47
    inc de                                        ; $714d: $13
    ld a, h                                       ; $714e: $7c
    sbc a                                         ; $714f: $9f
    dec a                                         ; $7150: $3d
    ld bc, $6401                                  ; $7151: $01 $01 $64
    add l                                         ; $7154: $85
    ld a, d                                       ; $7155: $7a
    xor a                                         ; $7156: $af
    rrca                                          ; $7157: $0f
    ld d, a                                       ; $7158: $57
    ld e, $fb                                     ; $7159: $1e $fb
    db $db                                        ; $715b: $db
    xor [hl]                                      ; $715c: $ae
    db $fc                                        ; $715d: $fc
    ld a, [$f17c]                                 ; $715e: $fa $7c $f1
    call Call_03b_5b34                            ; $7161: $cd $34 $5b

jr_03b_7164:
    sbc h                                         ; $7164: $9c
    rst $20                                       ; $7165: $e7
    ld c, d                                       ; $7166: $4a

Jump_03b_7167:
    ld [$61ce], a                                 ; $7167: $ea $ce $61
    sbc l                                         ; $716a: $9d
    ret c                                         ; $716b: $d8

Jump_03b_716c:
    ld d, d                                       ; $716c: $52
    ld h, a                                       ; $716d: $67
    db $dd                                        ; $716e: $dd
    dec h                                         ; $716f: $25
    xor [hl]                                      ; $7170: $ae
    adc c                                         ; $7171: $89
    or b                                          ; $7172: $b0
    sub h                                         ; $7173: $94
    push de                                       ; $7174: $d5
    ld e, h                                       ; $7175: $5c
    db $fd                                        ; $7176: $fd
    add sp, $6d                                   ; $7177: $e8 $6d
    rst $30                                       ; $7179: $f7
    inc hl                                        ; $717a: $23
    sbc d                                         ; $717b: $9a
    call nz, $2f28                                ; $717c: $c4 $28 $2f
    ld h, e                                       ; $717f: $63
    reti                                          ; $7180: $d9


    ld h, e                                       ; $7181: $63
    or h                                          ; $7182: $b4
    pop af                                        ; $7183: $f1
    add hl, de                                    ; $7184: $19
    di                                            ; $7185: $f3
    ld e, [hl]                                    ; $7186: $5e
    jr nz, @-$48                                  ; $7187: $20 $b6

    ld [$001b], a                                 ; $7189: $ea $1b $00
    rla                                           ; $718c: $17
    db $fd                                        ; $718d: $fd
    ld [$be2f], a                                 ; $718e: $ea $2f $be
    sbc c                                         ; $7191: $99
    ld h, [hl]                                    ; $7192: $66
    adc e                                         ; $7193: $8b
    adc e                                         ; $7194: $8b
    sbc h                                         ; $7195: $9c
    ld h, a                                       ; $7196: $67
    and a                                         ; $7197: $a7
    sub l                                         ; $7198: $95
    ld d, $5f                                     ; $7199: $16 $5f
    cp d                                          ; $719b: $ba
    ld h, [hl]                                    ; $719c: $66
    sbc $ff                                       ; $719d: $de $ff
    ld a, [hl+]                                   ; $719f: $2a
    db $ec                                        ; $71a0: $ec
    cp a                                          ; $71a1: $bf
    cp d                                          ; $71a2: $ba
    ld c, e                                       ; $71a3: $4b
    rst $28                                       ; $71a4: $ef
    dec b                                         ; $71a5: $05
    ld [de], a                                    ; $71a6: $12
    ld [hl], d                                    ; $71a7: $72
    sub d                                         ; $71a8: $92
    or e                                          ; $71a9: $b3
    jr c, jr_03b_713a                             ; $71aa: $38 $8e

    cp b                                          ; $71ac: $b8
    ld a, [c]                                     ; $71ad: $f2
    db $eb                                        ; $71ae: $eb
    or h                                          ; $71af: $b4
    ld c, [hl]                                    ; $71b0: $4e
    ld l, c                                       ; $71b1: $69
    add hl, de                                    ; $71b2: $19
    ld l, c                                       ; $71b3: $69
    ld a, [hl]                                    ; $71b4: $7e
    pop bc                                        ; $71b5: $c1
    or a                                          ; $71b6: $b7
    xor $0b                                       ; $71b7: $ee $0b
    sub h                                         ; $71b9: $94
    or e                                          ; $71ba: $b3
    jr c, jr_03b_71eb                             ; $71bb: $38 $2e

    ld c, h                                       ; $71bd: $4c
    cpl                                           ; $71be: $2f
    ld [hl], $bf                                  ; $71bf: $36 $bf
    or a                                          ; $71c1: $b7
    ld a, [hl-]                                   ; $71c2: $3a
    rst $38                                       ; $71c3: $ff
    ld [de], a                                    ; $71c4: $12
    ld a, c                                       ; $71c5: $79
    inc bc                                        ; $71c6: $03
    db $dd                                        ; $71c7: $dd
    db $ec                                        ; $71c8: $ec
    ld e, a                                       ; $71c9: $5f
    call nz, Call_03b_63da                        ; $71ca: $c4 $da $63
    db $dd                                        ; $71cd: $dd
    inc bc                                        ; $71ce: $03
    ld d, d                                       ; $71cf: $52
    ld h, [hl]                                    ; $71d0: $66
    ld [hl], c                                    ; $71d1: $71
    ld d, l                                       ; $71d2: $55
    add a                                         ; $71d3: $87
    add hl, sp                                    ; $71d4: $39
    ld l, d                                       ; $71d5: $6a
    db $ec                                        ; $71d6: $ec
    jp nc, Jump_03b_6711                          ; $71d7: $d2 $11 $67

    jp z, Jump_03b_7b2b                           ; $71da: $ca $2b $7b

    ld [bc], a                                    ; $71dd: $02
    halt                                          ; $71de: $76
    ld h, l                                       ; $71df: $65
    and c                                         ; $71e0: $a1
    ld h, h                                       ; $71e1: $64
    dec [hl]                                      ; $71e2: $35
    dec [hl]                                      ; $71e3: $35
    ld h, l                                       ; $71e4: $65
    sub a                                         ; $71e5: $97
    cp b                                          ; $71e6: $b8
    ld h, $c2                                     ; $71e7: $26 $c2
    ld d, d                                       ; $71e9: $52
    ld d, [hl]                                    ; $71ea: $56

jr_03b_71eb:
    ld [hl], e                                    ; $71eb: $73
    pop bc                                        ; $71ec: $c1
    ld e, a                                       ; $71ed: $5f
    db $fd                                        ; $71ee: $fd
    add sp, -$21                                  ; $71ef: $e8 $df
    rst $20                                       ; $71f1: $e7
    jp nz, $9f97                                  ; $71f2: $c2 $97 $9f

Call_03b_71f5:
    push bc                                       ; $71f5: $c5
    ld [hl], c                                    ; $71f6: $71
    rra                                           ; $71f7: $1f
    ld a, [bc]                                    ; $71f8: $0a
    pop de                                        ; $71f9: $d1
    rst $38                                       ; $71fa: $ff
    ld a, [hl]                                    ; $71fb: $7e
    ld d, $d7                                     ; $71fc: $16 $d7
    ld [c], a                                     ; $71fe: $e2
    ld c, e                                       ; $71ff: $4b
    call $5f95                                    ; $7200: $cd $95 $5f
    db $fd                                        ; $7203: $fd
    push bc                                       ; $7204: $c5
    scf                                           ; $7205: $37
    db $d3                                        ; $7206: $d3
    ld l, h                                       ; $7207: $6c
    ld [hl], c                                    ; $7208: $71
    ld d, $c7                                     ; $7209: $16 $c7
    xor c                                         ; $720b: $a9
    xor e                                         ; $720c: $ab
    sub [hl]                                      ; $720d: $96
    cp h                                          ; $720e: $bc
    rst $10                                       ; $720f: $d7
    rlc h                                         ; $7210: $cb $04
    rrca                                          ; $7212: $0f
    nop                                           ; $7213: $00
    ld bc, $c842                                  ; $7214: $01 $42 $c8
    ld h, c                                       ; $7217: $61
    db $fc                                        ; $7218: $fc
    ld de, $7e57                                  ; $7219: $11 $57 $7e
    sbc l                                         ; $721c: $9d
    sub $29                                       ; $721d: $d6 $29
    dec l                                         ; $721f: $2d
    inc hl                                        ; $7220: $23
    call Call_03b_57ef                            ; $7221: $cd $ef $57
    ld a, [hl]                                    ; $7224: $7e
    jp z, Jump_03b_5383                           ; $7225: $ca $83 $53

    ld a, [hl]                                    ; $7228: $7e
    ld bc, $0d0d                                  ; $7229: $01 $0d $0d
    rst $28                                       ; $722c: $ef
    ld e, l                                       ; $722d: $5d
    db $f4                                        ; $722e: $f4
    ld d, e                                       ; $722f: $53
    ld a, [de]                                    ; $7230: $1a
    db $d3                                        ; $7231: $d3
    ld l, h                                       ; $7232: $6c
    ld [hl], c                                    ; $7233: $71
    sbc [hl]                                      ; $7234: $9e
    inc de                                        ; $7235: $13
    ld d, [hl]                                    ; $7236: $56
    ld d, e                                       ; $7237: $53
    adc b                                         ; $7238: $88
    and [hl]                                      ; $7239: $a6
    db $fd                                        ; $723a: $fd
    and d                                         ; $723b: $a2
    ld a, h                                       ; $723c: $7c
    db $fc                                        ; $723d: $fc
    sub l                                         ; $723e: $95
    rst $10                                       ; $723f: $d7
    sbc c                                         ; $7240: $99
    call nz, Call_03b_5f28                        ; $7241: $c4 $28 $5f
    ld a, a                                       ; $7244: $7f
    pop af                                        ; $7245: $f1
    call Call_03b_44b4                            ; $7246: $cd $b4 $44
    ld [$af3a], a                                 ; $7249: $ea $3a $af
    pop af                                        ; $724c: $f1
    ld sp, $9d72                                  ; $724d: $31 $72 $9d
    ld b, [hl]                                    ; $7250: $46
    cp h                                          ; $7251: $bc
    ld bc, $03dd                                  ; $7252: $01 $dd $03
    cp a                                          ; $7255: $bf
    ld b, e                                       ; $7256: $43
    sbc l                                         ; $7257: $9d
    ret                                           ; $7258: $c9


    ld a, [hl-]                                   ; $7259: $3a
    rla                                           ; $725a: $17
    ld a, [hl-]                                   ; $725b: $3a
    ld a, [$c59c]                                 ; $725c: $fa $9c $c5
    or l                                          ; $725f: $b5
    ld hl, sp+$52                                 ; $7260: $f8 $52
    ld [hl], e                                    ; $7262: $73
    ld c, $7f                                     ; $7263: $0e $7f
    push af                                       ; $7265: $f5
    rla                                           ; $7266: $17
    rst $18                                       ; $7267: $df
    ld c, h                                       ; $7268: $4c
    or e                                          ; $7269: $b3
    push bc                                       ; $726a: $c5
    sbc [hl]                                      ; $726b: $9e
    nop                                           ; $726c: $00
    ld a, l                                       ; $726d: $7d
    di                                            ; $726e: $f3
    sbc $d5                                       ; $726f: $de $d5
    dec bc                                        ; $7271: $0b
    ld d, e                                       ; $7272: $53
    ld d, [hl]                                    ; $7273: $56
    db $fd                                        ; $7274: $fd
    sub l                                         ; $7275: $95
    sub h                                         ; $7276: $94
    ld h, c                                       ; $7277: $61
    ld l, $72                                     ; $7278: $2e $72
    push hl                                       ; $727a: $e5
    rla                                           ; $727b: $17
    push hl                                       ; $727c: $e5
    dec de                                        ; $727d: $1b
    db $f4                                        ; $727e: $f4
    cp d                                          ; $727f: $ba
    rst $18                                       ; $7280: $df
    ld a, c                                       ; $7281: $79
    ld h, d                                       ; $7282: $62
    xor l                                         ; $7283: $ad
    xor [hl]                                      ; $7284: $ae
    ld l, [hl]                                    ; $7285: $6e
    add sp, $53                                   ; $7286: $e8 $53
    ld l, [hl]                                    ; $7288: $6e
    nop                                           ; $7289: $00
    cp l                                          ; $728a: $bd
    ld c, $c0                                     ; $728b: $0e $c0
    ld h, c                                       ; $728d: $61
    xor [hl]                                      ; $728e: $ae
    db $e4                                        ; $728f: $e4
    add d                                         ; $7290: $82
    xor h                                         ; $7291: $ac
    ld d, e                                       ; $7292: $53
    rst $30                                       ; $7293: $f7
    and c                                         ; $7294: $a1
    db $10                                        ; $7295: $10
    ld a, l                                       ; $7296: $7d
    di                                            ; $7297: $f3
    ld a, c                                       ; $7298: $79
    inc bc                                        ; $7299: $03
    cp l                                          ; $729a: $bd
    ld a, [$bbf5]                                 ; $729b: $fa $f5 $bb
    rla                                           ; $729e: $17
    ret c                                         ; $729f: $d8

    ld b, [hl]                                    ; $72a0: $46
    adc l                                         ; $72a1: $8d
    ld e, l                                       ; $72a2: $5d
    cp d                                          ; $72a3: $ba
    ld a, [$6f8b]                                 ; $72a4: $fa $8b $6f
    ld sp, $ebe1                                  ; $72a7: $31 $e1 $eb
    or $61                                        ; $72aa: $f6 $61
    sub a                                         ; $72ac: $97
    call nz, $9c8f                                ; $72ad: $c4 $8f $9c
    rst $20                                       ; $72b0: $e7
    ld l, d                                       ; $72b1: $6a
    sbc e                                         ; $72b2: $9b
    ld e, $00                                     ; $72b3: $1e $00
    cp l                                          ; $72b5: $bd
    inc de                                        ; $72b6: $13
    rst $20                                       ; $72b7: $e7
    ldh a, [$67]                                  ; $72b8: $f0 $67
    ld [de], a                                    ; $72ba: $12
    and e                                         ; $72bb: $a3
    ld a, h                                       ; $72bc: $7c
    db $fd                                        ; $72bd: $fd
    push bc                                       ; $72be: $c5
    scf                                           ; $72bf: $37
    db $d3                                        ; $72c0: $d3
    ld l, h                                       ; $72c1: $6c
    ld de, $eebe                                  ; $72c2: $11 $be $ee
    sbc [hl]                                      ; $72c5: $9e
    or e                                          ; $72c6: $b3
    cp b                                          ; $72c7: $b8
    xor d                                         ; $72c8: $aa
    sra b                                         ; $72c9: $cb $28
    cp a                                          ; $72cb: $bf
    ld a, [$f291]                                 ; $72cc: $fa $91 $f2
    dec a                                         ; $72cf: $3d
    ld bc, $6576                                  ; $72d0: $01 $76 $65
    and c                                         ; $72d3: $a1
    ld h, h                                       ; $72d4: $64
    dec [hl]                                      ; $72d5: $35
    dec [hl]                                      ; $72d6: $35
    ld h, l                                       ; $72d7: $65
    sub a                                         ; $72d8: $97
    cp b                                          ; $72d9: $b8
    ld h, $c2                                     ; $72da: $26 $c2
    ld d, d                                       ; $72dc: $52
    ld d, [hl]                                    ; $72dd: $56
    ld [hl], d                                    ; $72de: $72
    ld a, [$e91d]                                 ; $72df: $fa $1d $e9
    cp d                                          ; $72e2: $ba
    ld bc, $9a7d                                  ; $72e3: $01 $7d $9a
    db $fc                                        ; $72e6: $fc
    adc b                                         ; $72e7: $88
    dec hl                                        ; $72e8: $2b
    cp a                                          ; $72e9: $bf
    ld c, [hl]                                    ; $72ea: $4e
    db $eb                                        ; $72eb: $eb
    sub h                                         ; $72ec: $94
    sub [hl]                                      ; $72ed: $96
    sub c                                         ; $72ee: $91
    and $ef                                       ; $72ef: $e6 $ef
    ld e, l                                       ; $72f1: $5d
    sub $88                                       ; $72f2: $d6 $88
    ld e, h                                       ; $72f4: $5c
    ld c, h                                       ; $72f5: $4c
    sbc a                                         ; $72f6: $9f
    adc e                                         ; $72f7: $8b
    dec l                                         ; $72f8: $2d
    call z, $ae79                                 ; $72f9: $cc $79 $ae
    or h                                          ; $72fc: $b4
    adc [hl]                                      ; $72fd: $8e
    and h                                         ; $72fe: $a4
    sbc $00                                       ; $72ff: $de $00
    or $5c                                        ; $7301: $f6 $5c
    add l                                         ; $7303: $85

Jump_03b_7304:
    ret c                                         ; $7304: $d8

    ld a, h                                       ; $7305: $7c
    xor $d7                                       ; $7306: $ee $d7
    ld [hl], c                                    ; $7308: $71
    ld l, d                                       ; $7309: $6a
    ld e, [hl]                                    ; $730a: $5e
    ld h, [hl]                                    ; $730b: $66
    ld l, h                                       ; $730c: $6c
    db $eb                                        ; $730d: $eb
    sbc h                                         ; $730e: $9c
    push bc                                       ; $730f: $c5
    or l                                          ; $7310: $b5
    ld hl, sp+$52                                 ; $7311: $f8 $52
    ld [hl], e                                    ; $7313: $73
    ld c, $7f                                     ; $7314: $0e $7f
    push af                                       ; $7316: $f5
    rla                                           ; $7317: $17
    rst $18                                       ; $7318: $df
    ld c, h                                       ; $7319: $4c
    or e                                          ; $731a: $b3
    push bc                                       ; $731b: $c5
    ld a, e                                       ; $731c: $7b
    add c                                         ; $731d: $81
    ret c                                         ; $731e: $d8

    xor d                                         ; $731f: $aa
    ld l, a                                       ; $7320: $6f
    nop                                           ; $7321: $00
    ld a, l                                       ; $7322: $7d
    ld d, e                                       ; $7323: $53
    ld [$352f], a                                 ; $7324: $ea $2f $35
    ld sp, $9172                                  ; $7327: $31 $72 $91
    di                                            ; $732a: $f3
    ld c, l                                       ; $732b: $4d
    ld l, h                                       ; $732c: $6c
    ld a, [hl]                                    ; $732d: $7e
    ld d, $c7                                     ; $732e: $16 $c7
    push de                                       ; $7330: $d5
    ld c, l                                       ; $7331: $4d
    ld e, [hl]                                    ; $7332: $5e
    ld e, [hl]                                    ; $7333: $5e
    ld b, a                                       ; $7334: $47
    inc e                                         ; $7335: $1c
    set 7, d                                      ; $7336: $cb $fa
    inc a                                         ; $7338: $3c
    cp d                                          ; $7339: $ba
    cpl                                           ; $733a: $2f
    db $eb                                        ; $733b: $eb
    ld h, l                                       ; $733c: $65
    and d                                         ; $733d: $a2
    ei                                            ; $733e: $fb
    jp nc, $bffa                                  ; $733f: $d2 $fa $bf

    rst $08                                       ; $7342: $cf
    ld a, c                                       ; $7343: $79
    xor [hl]                                      ; $7344: $ae
    ld [hl], a                                    ; $7345: $77
    ld h, d                                       ; $7346: $62
    sub h                                         ; $7347: $94
    xor a                                         ; $7348: $af
    cp a                                          ; $7349: $bf
    ld hl, sp+$66                                 ; $734a: $f8 $66
    ld e, d                                       ; $734c: $5a
    ld [hl+], a                                   ; $734d: $22
    dec d                                         ; $734e: $15
    cp [hl]                                       ; $734f: $be
    ld b, b                                       ; $7350: $40
    ld b, d                                       ; $7351: $42
    ld c, $fd                                     ; $7352: $0e $fd
    rst $08                                       ; $7354: $cf
    adc $37                                       ; $7355: $ce $37
    db $d3                                        ; $7357: $d3
    ld l, h                                       ; $7358: $6c
    ld [hl], c                                    ; $7359: $71
    sub a                                         ; $735a: $97
    or d                                          ; $735b: $b2
    jp nc, $fdf4                                  ; $735c: $d2 $f4 $fd

    jp Jump_03b_5217                              ; $735f: $c3 $17 $52


    ld [hl], d                                    ; $7362: $72
    pop bc                                        ; $7363: $c1
    scf                                           ; $7364: $37
    ld e, h                                       ; $7365: $5c
    ld l, h                                       ; $7366: $6c
    xor h                                         ; $7367: $ac
    jp $c59c                                      ; $7368: $c3 $9c $c5


    ld [hl], c                                    ; $736b: $71
    sbc b                                         ; $736c: $98
    and e                                         ; $736d: $a3
    add $ae                                       ; $736e: $c6 $ae
    ld de, $5257                                  ; $7370: $11 $57 $52
    ld b, a                                       ; $7373: $47
    adc l                                         ; $7374: $8d
    adc a                                         ; $7375: $8f
    sub c                                         ; $7376: $91
    ld a, d                                       ; $7377: $7a
    inc bc                                        ; $7378: $03
    db $dd                                        ; $7379: $dd
    cpl                                           ; $737a: $2f
    ld [hl], c                                    ; $737b: $71
    xor l                                         ; $737c: $ad
    ld a, [hl+]                                   ; $737d: $2a
    xor [hl]                                      ; $737e: $ae
    db $e4                                        ; $737f: $e4
    add d                                         ; $7380: $82
    ccf                                           ; $7381: $3f
    ld a, l                                       ; $7382: $7d
    di                                            ; $7383: $f3
    ld a, $7b                                     ; $7384: $3e $7b
    xor [hl]                                      ; $7386: $ae
    sub a                                         ; $7387: $97
    add hl, bc                                    ; $7388: $09
    ld e, $70                                     ; $7389: $1e $70
    inc bc                                        ; $738b: $03
    ld a, l                                       ; $738c: $7d
    rst $18                                       ; $738d: $df
    scf                                           ; $738e: $37
    sbc $bb                                       ; $738f: $de $bb
    ld a, b                                       ; $7391: $78
    dec h                                         ; $7392: $25
    rla                                           ; $7393: $17
    ld a, h                                       ; $7394: $7c
    sbc h                                         ; $7395: $9c
    ld h, h                                       ; $7396: $64
    rst $20                                       ; $7397: $e7
    ld a, l                                       ; $7398: $7d
    ld l, $f7                                     ; $7399: $2e $f7
    dec b                                         ; $739b: $05
    ld [hl], d                                    ; $739c: $72
    adc l                                         ; $739d: $8d
    jr c, jr_03b_740a                             ; $739e: $38 $6a

    db $ec                                        ; $73a0: $ec
    ld a, [de]                                    ; $73a1: $1a
    db $f4                                        ; $73a2: $f4
    ld a, [de]                                    ; $73a3: $1a
    rra                                           ; $73a4: $1f
    ld a, l                                       ; $73a5: $7d
    adc $e1                                       ; $73a6: $ce $e1
    xor a                                         ; $73a8: $af
    inc hl                                        ; $73a9: $23
    ld e, c                                       ; $73aa: $59
    rst $38                                       ; $73ab: $ff
    cp l                                          ; $73ac: $bd
    ld a, $5c                                     ; $73ad: $3e $5c
    ldh a, [$71]                                  ; $73af: $f0 $71
    ld e, c                                       ; $73b1: $59
    dec l                                         ; $73b2: $2d
    inc [hl]                                      ; $73b3: $34
    call $1ce7                                    ; $73b4: $cd $e7 $1c
    cp $84                                        ; $73b7: $fe $84
    ld h, $eb                                     ; $73b9: $26 $eb
    sub b                                         ; $73bb: $90
    xor b                                         ; $73bc: $a8
    cp a                                          ; $73bd: $bf
    jr nc, jr_03b_7425                            ; $73be: $30 $65

    ld [$59e6], a                                 ; $73c0: $ea $e6 $59
    ret                                           ; $73c3: $c9


    ld [c], a                                     ; $73c4: $e2
    ld c, h                                       ; $73c5: $4c
    or e                                          ; $73c6: $b3
    push bc                                       ; $73c7: $c5
    ld a, e                                       ; $73c8: $7b
    ld d, a                                       ; $73c9: $57
    rrca                                          ; $73ca: $0f
    rst $18                                       ; $73cb: $df
    rst $38                                       ; $73cc: $ff
    inc a                                         ; $73cd: $3c
    ld b, a                                       ; $73ce: $47

Jump_03b_73cf:
    adc l                                         ; $73cf: $8d
    add hl, hl                                    ; $73d0: $29
    add sp, -$04                                  ; $73d1: $e8 $fc
    res 1, b                                      ; $73d3: $cb $88
    dec hl                                        ; $73d5: $2b
    cp a                                          ; $73d6: $bf
    ld c, [hl]                                    ; $73d7: $4e
    db $eb                                        ; $73d8: $eb
    sub h                                         ; $73d9: $94
    sub [hl]                                      ; $73da: $96
    sub c                                         ; $73db: $91
    and $e1                                       ; $73dc: $e6 $e1
    dec bc                                        ; $73de: $0b
    ld d, e                                       ; $73df: $53
    ld d, [hl]                                    ; $73e0: $56
    db $fd                                        ; $73e1: $fd
    sub l                                         ; $73e2: $95
    sub h                                         ; $73e3: $94
    dec de                                        ; $73e4: $1b
    nop                                           ; $73e5: $00

Call_03b_73e6:
    halt                                          ; $73e6: $76
    ld a, [de]                                    ; $73e7: $1a
    cp e                                          ; $73e8: $bb
    sub $69                                       ; $73e9: $d6 $69
    ld b, h                                       ; $73eb: $44
    ld hl, sp+$02                                 ; $73ec: $f8 $02
    ret z                                         ; $73ee: $c8

    ld a, [bc]                                    ; $73ef: $0a
    dec d                                         ; $73f0: $15
    ld a, $eb                                     ; $73f1: $3e $eb
    cpl                                           ; $73f3: $2f
    ld [hl], d                                    ; $73f4: $72
    pop bc                                        ; $73f5: $c1
    rst $10                                       ; $73f6: $d7
    ld sp, hl                                     ; $73f7: $f9
    ld d, [hl]                                    ; $73f8: $56
    and c                                         ; $73f9: $a1
    call nz, Call_03b_73e6                        ; $73fa: $c4 $e6 $73
    ld [$9baa], a                                 ; $73fd: $ea $aa $9b
    ld l, c                                       ; $7400: $69
    call nz, Call_000_1dc8                        ; $7401: $c4 $c8 $1d
    and [hl]                                      ; $7404: $a6
    ret c                                         ; $7405: $d8

    xor d                                         ; $7406: $aa
    rrca                                          ; $7407: $0f
    cp a                                          ; $7408: $bf
    rst $10                                       ; $7409: $d7

jr_03b_740a:
    cp l                                          ; $740a: $bd
    or a                                          ; $740b: $b7
    ld l, l                                       ; $740c: $6d
    sbc l                                         ; $740d: $9d
    dec bc                                        ; $740e: $0b
    dec e                                         ; $740f: $1d
    ld a, l                                       ; $7410: $7d
    xor [hl]                                      ; $7411: $ae
    or h                                          ; $7412: $b4
    adc [hl]                                      ; $7413: $8e
    cp h                                          ; $7414: $bc
    call nc, $e79c                                ; $7415: $d4 $9c $e7
    jp z, $feaf                                   ; $7418: $ca $af $fe

    ld [c], a                                     ; $741b: $e2
    sbc e                                         ; $741c: $9b
    ld l, c                                       ; $741d: $69
    or [hl]                                       ; $741e: $b6
    ret c                                         ; $741f: $d8

    inc de                                        ; $7420: $13
    nop                                           ; $7421: $00
    db $dd                                        ; $7422: $dd
    db $ed                                        ; $7423: $ed
    ld a, a                                       ; $7424: $7f

jr_03b_7425:
    ld [hl], l                                    ; $7425: $75
    sub e                                         ; $7426: $93
    rst $30                                       ; $7427: $f7
    add hl, sp                                    ; $7428: $39
    sub [hl]                                      ; $7429: $96
    dec b                                         ; $742a: $05
    ld d, e                                       ; $742b: $53
    and h                                         ; $742c: $a4
    ld [hl], l                                    ; $742d: $75
    ld a, [bc]                                    ; $742e: $0a
    add a                                         ; $742f: $87
    ld e, c                                       ; $7430: $59
    ld sp, hl                                     ; $7431: $f9
    sbc b                                         ; $7432: $98
    inc hl                                        ; $7433: $23
    xor [hl]                                      ; $7434: $ae
    db $fc                                        ; $7435: $fc
    ld a, [hl-]                                   ; $7436: $3a
    xor l                                         ; $7437: $ad
    ld d, e                                       ; $7438: $53
    ld e, d                                       ; $7439: $5a
    ld b, [hl]                                    ; $743a: $46
    sbc d                                         ; $743b: $9a
    rst $28                                       ; $743c: $ef
    add hl, bc                                    ; $743d: $09
    nop                                           ; $743e: $00
    add c                                         ; $743f: $81
    ld [hl], $f0                                  ; $7440: $36 $f0
    or c                                          ; $7442: $b1
    inc l                                         ; $7443: $2c
    sbc b                                         ; $7444: $98
    ld [hl+], a                                   ; $7445: $22
    rst $30                                       ; $7446: $f7
    ld a, l                                       ; $7447: $7d
    cp e                                          ; $7448: $bb
    ld a, [de]                                    ; $7449: $1a
    ld a, $b5                                     ; $744a: $3e $b5
    sbc c                                         ; $744c: $99
    push af                                       ; $744d: $f5
    ld d, a                                       ; $744e: $57
    ld [hl], d                                    ; $744f: $72
    ld b, c                                       ; $7450: $41
    ld l, $48                                     ; $7451: $2e $48
    inc de                                        ; $7453: $13
    call z, Call_03b_767b                         ; $7454: $cc $7b $76
    ld h, l                                       ; $7457: $65
    and l                                         ; $7458: $a5
    ld [hl], l                                    ; $7459: $75
    inc h                                         ; $745a: $24
    ld h, a                                       ; $745b: $67
    ld [hl], c                                    ; $745c: $71
    ld e, h                                       ; $745d: $5c
    push hl                                       ; $745e: $e5
    dec bc                                        ; $745f: $0b
    add a                                         ; $7460: $87
    add hl, sp                                    ; $7461: $39
    ld l, d                                       ; $7462: $6a
    db $ec                                        ; $7463: $ec
    cp d                                          ; $7464: $ba
    rst $10                                       ; $7465: $d7
    xor l                                         ; $7466: $ad
    sub a                                         ; $7467: $97
    add hl, bc                                    ; $7468: $09
    ld e, $d0                                     ; $7469: $1e $d0
    inc bc                                        ; $746b: $03
    nop                                           ; $746c: $00
    ld a, l                                       ; $746d: $7d
    ld [hl], e                                    ; $746e: $73
    dec h                                         ; $746f: $25
    rla                                           ; $7470: $17
    adc c                                         ; $7471: $89
    ld d, b                                       ; $7472: $50
    sbc $eb                                       ; $7473: $de $eb
    dec d                                         ; $7475: $15
    ld c, h                                       ; $7476: $4c
    ld sp, hl                                     ; $7477: $f9
    ld h, c                                       ; $7478: $61
    sbc $eb                                       ; $7479: $de $eb

jr_03b_747b:
    ld a, [hl]                                    ; $747b: $7e
    adc [hl]                                      ; $747c: $8e
    dec l                                         ; $747d: $2d
    ld a, d                                       ; $747e: $7a
    adc [hl]                                      ; $747f: $8e
    ld a, [de]                                    ; $7480: $1a
    ld e, a                                       ; $7481: $5f
    cp d                                          ; $7482: $ba
    ld a, d                                       ; $7483: $7a
    xor [hl]                                      ; $7484: $ae
    rst $10                                       ; $7485: $d7
    ld c, d                                       ; $7486: $4a
    xor [hl]                                      ; $7487: $ae
    ld h, [hl]                                    ; $7488: $66
    cp a                                          ; $7489: $bf
    sub h                                         ; $748a: $94
    sub l                                         ; $748b: $95
    inc e                                         ; $748c: $1c
    dec [hl]                                      ; $748d: $35
    halt                                          ; $748e: $76
    adc l                                         ; $748f: $8d
    ld a, [de]                                    ; $7490: $1a
    sbc l                                         ; $7491: $9d
    ld l, a                                       ; $7492: $6f
    adc a                                         ; $7493: $8f
    ld a, $e7                                     ; $7494: $3e $e7
    ld [hl], b                                    ; $7496: $70
    ld a, l                                       ; $7497: $7d
    inc e                                         ; $7498: $1c
    inc b                                         ; $7499: $04
    dec d                                         ; $749a: $15
    sbc $f7                                       ; $749b: $de $f7
    dec c                                         ; $749d: $0d
    nop                                           ; $749e: $00
    sub a                                         ; $749f: $97
    ld de, $5ca1                                  ; $74a0: $11 $a1 $5c
    ld sp, hl                                     ; $74a3: $f9
    push af                                       ; $74a4: $f5
    ld sp, hl                                     ; $74a5: $f9
    ld [c], a                                     ; $74a6: $e2
    sbc e                                         ; $74a7: $9b
    ld l, c                                       ; $74a8: $69
    or [hl]                                       ; $74a9: $b6
    jr c, jr_03b_747b                             ; $74aa: $38 $cf

    sub l                                         ; $74ac: $95
    call nc, $c39d                                ; $74ad: $d4 $9d $c3
    ld a, [hl-]                                   ; $74b0: $3a
    or c                                          ; $74b1: $b1
    and l                                         ; $74b2: $a5
    sbc $0b                                       ; $74b3: $de $0b
    call nz, Call_03b_7d56                        ; $74b5: $c4 $56 $7d
    rst $08                                       ; $74b8: $cf
    xor [hl]                                      ; $74b9: $ae
    inc l                                         ; $74ba: $2c
    sub h                                         ; $74bb: $94
    xor h                                         ; $74bc: $ac
    and [hl]                                      ; $74bd: $a6
    and [hl]                                      ; $74be: $a6
    db $ec                                        ; $74bf: $ec
    ld [de], a                                    ; $74c0: $12
    rst $10                                       ; $74c1: $d7
    ld b, h                                       ; $74c2: $44
    ld e, b                                       ; $74c3: $58
    jp z, $ae6a                                   ; $74c4: $ca $6a $ae

    ld a, [hl]                                    ; $74c7: $7e
    db $f4                                        ; $74c8: $f4
    or [hl]                                       ; $74c9: $b6
    or e                                          ; $74ca: $b3
    jr c, jr_03b_747b                             ; $74cb: $38 $ae

    db $e3                                        ; $74cd: $e3
    call nc, $fcbc                                ; $74ce: $d4 $bc $fc
    inc e                                         ; $74d1: $1c
    cp $4c                                        ; $74d2: $fe $4c
    ld h, d                                       ; $74d4: $62

Jump_03b_74d5:
    sub h                                         ; $74d5: $94
    xor a                                         ; $74d6: $af
    cp a                                          ; $74d7: $bf
    ld hl, sp+$66                                 ; $74d8: $f8 $66
    sbc d                                         ; $74da: $9a
    dec l                                         ; $74db: $2d
    sbc $eb                                       ; $74dc: $de $eb
    ld h, l                                       ; $74de: $65
    add d                                         ; $74df: $82
    rlca                                          ; $74e0: $07
    call c, Call_000_1eeb                         ; $74e1: $dc $eb $1e
    ldh [$e8], a                                  ; $74e4: $e0 $e8
    xor c                                         ; $74e6: $a9
    ld a, e                                       ; $74e7: $7b
    xor e                                         ; $74e8: $ab
    di                                            ; $74e9: $f3
    cpl                                           ; $74ea: $2f
    dec [hl]                                      ; $74eb: $35
    ld a, e                                       ; $74ec: $7b
    ld [bc], a                                    ; $74ed: $02
    cp l                                          ; $74ee: $bd
    ld [hl+], a                                   ; $74ef: $22
    ld sp, $7ee6                                  ; $74f0: $31 $e6 $7e
    push hl                                       ; $74f3: $e5
    ld h, a                                       ; $74f4: $67
    jp z, $e72b                                   ; $74f5: $ca $2b $e7

    add hl, sp                                    ; $74f8: $39
    dec sp                                        ; $74f9: $3b
    adc l                                         ; $74fa: $8d
    adc $b7                                       ; $74fb: $ce $b7
    call nc, Call_03b_71f5                        ; $74fd: $d4 $f5 $71
    db $10                                        ; $7500: $10
    ld d, h                                       ; $7501: $54
    xor b                                         ; $7502: $a8
    rst $30                                       ; $7503: $f7
    xor [hl]                                      ; $7504: $ae
    dec l                                         ; $7505: $2d
    or c                                          ; $7506: $b1
    push de                                       ; $7507: $d5
    ld e, a                                       ; $7508: $5f
    inc de                                        ; $7509: $13
    inc hl                                        ; $750a: $23
    rla                                           ; $750b: $17
    db $e4                                        ; $750c: $e4
    ld a, [hl+]                                   ; $750d: $2a
    ld c, l                                       ; $750e: $4d
    ld h, e                                       ; $750f: $63
    xor $17                                       ; $7510: $ee $17
    ld b, b                                       ; $7512: $40
    ld d, [hl]                                    ; $7513: $56
    xor b                                         ; $7514: $a8
    inc hl                                        ; $7515: $23
    ld b, [hl]                                    ; $7516: $46
    ld a, c                                       ; $7517: $79
    db $f4                                        ; $7518: $f4
    add hl, sp                                    ; $7519: $39
    db $eb                                        ; $751a: $eb
    db $f4                                        ; $751b: $f4
    ld c, e                                       ; $751c: $4b
    inc hl                                        ; $751d: $23
    ld a, [$01bc]                                 ; $751e: $fa $bc $01
    db $dd                                        ; $7521: $dd
    rst $08                                       ; $7522: $cf
    halt                                          ; $7523: $76
    ld l, d                                       ; $7524: $6a
    ld e, [hl]                                    ; $7525: $5e
    rst $30                                       ; $7526: $f7
    dec b                                         ; $7527: $05
    jp z, Jump_000_1c59                           ; $7528: $ca $59 $1c

Jump_03b_752b:
    ld d, a                                       ; $752b: $57
    ld c, b                                       ; $752c: $48
    jp hl                                         ; $752d: $e9


    add hl, bc                                    ; $752e: $09
    nop                                           ; $752f: $00
    db $dd                                        ; $7530: $dd
    rst $08                                       ; $7531: $cf
    or c                                          ; $7532: $b1
    ld b, l                                       ; $7533: $45
    rst $08                                       ; $7534: $cf

Jump_03b_7535:
    ld d, c                                       ; $7535: $51
    ld h, e                                       ; $7536: $63
    rst $10                                       ; $7537: $d7
    ld e, b                                       ; $7538: $58
    ld d, [hl]                                    ; $7539: $56

Jump_03b_753a:
    ld e, d                                       ; $753a: $5a
    ld b, a                                       ; $753b: $47
    ld [de], a                                    ; $753c: $12
    cp [hl]                                       ; $753d: $be
    nop                                           ; $753e: $00
    or d                                          ; $753f: $b2
    ld b, d                                       ; $7540: $42
    db $ed                                        ; $7541: $ed
    add hl, bc                                    ; $7542: $09
    nop                                           ; $7543: $00
    rla                                           ; $7544: $17
    sub c                                         ; $7545: $91
    ld [hl-], a                                   ; $7546: $32
    ld [$e3be], a                                 ; $7547: $ea $be $e3
    ld b, h                                       ; $754a: $44
    sbc d                                         ; $754b: $9a
    rst $08                                       ; $754c: $cf
    ld a, e                                       ; $754d: $7b
    ld a, l                                       ; $754e: $7d
    ret c                                         ; $754f: $d8

    cpl                                           ; $7550: $2f
    ld h, l                                       ; $7551: $65
    dec d                                         ; $7552: $15
    jp z, Jump_000_2fca                           ; $7553: $ca $ca $2f

    or d                                          ; $7556: $b2
    ldh a, [rTMA]                                 ; $7557: $f0 $06
    ld d, a                                       ; $7559: $57
    db $10                                        ; $755a: $10
    and c                                         ; $755b: $a1
    add a                                         ; $755c: $87
    rst $08                                       ; $755d: $cf
    cp $45                                        ; $755e: $fe $45
    xor h                                         ; $7560: $ac
    ldh a, [$99]                                  ; $7561: $f0 $99
    rst $10                                       ; $7563: $d7
    ld [hl], $93                                  ; $7564: $36 $93
    ld [hl], l                                    ; $7566: $75
    ld c, $1d                                     ; $7567: $0e $1d
    dec hl                                        ; $7569: $2b
    ld a, c                                       ; $756a: $79
    inc bc                                        ; $756b: $03
    rst $20                                       ; $756c: $e7
    ret                                           ; $756d: $c9


    sbc e                                         ; $756e: $9b
    or $7a                                        ; $756f: $f6 $7a
    xor a                                         ; $7571: $af
    sub a                                         ; $7572: $97
    add hl, bc                                    ; $7573: $09
    ld e, $00                                     ; $7574: $1e $00
    nop                                           ; $7576: $00
    cp l                                          ; $7577: $bd
    or e                                          ; $7578: $b3
    adc $75                                       ; $7579: $ce $75
    ld a, [de]                                    ; $757b: $1a
    ld [hl], c                                    ; $757c: $71
    ld b, c                                       ; $757d: $41
    adc $37                                       ; $757e: $ce $37
    inc de                                        ; $7580: $13
    ld c, h                                       ; $7581: $4c
    ld hl, sp+$0e                                 ; $7582: $f8 $0e
    dec [hl]                                      ; $7584: $35
    xor a                                         ; $7585: $af
    db $ed                                        ; $7586: $ed
    ret nc                                        ; $7587: $d0

    dec de                                        ; $7588: $1b
    nop                                           ; $7589: $00
    or $59                                        ; $758a: $f6 $59
    ld e, $3e                                     ; $758c: $1e $3e
    ei                                            ; $758e: $fb
    rla                                           ; $758f: $17
    or c                                          ; $7590: $b1
    sbc $eb                                       ; $7591: $de $eb

jr_03b_7593:
    ld a, [hl]                                    ; $7593: $7e
    add hl, de                                    ; $7594: $19
    ld b, a                                       ; $7595: $47
    inc [hl]                                      ; $7596: $34
    adc [hl]                                      ; $7597: $8e
    jr @-$19                                      ; $7598: $18 $e5

    ld [hl], l                                    ; $759a: $75
    dec [hl]                                      ; $759b: $35
    ei                                            ; $759c: $fb
    and l                                         ; $759d: $a5
    db $f4                                        ; $759e: $f4
    inc b                                         ; $759f: $04
    add c                                         ; $75a0: $81
    ld [hl], $f7                                  ; $75a1: $36 $f7
    ld [bc], a                                    ; $75a3: $02
    or c                                          ; $75a4: $b1
    ld d, l                                       ; $75a5: $55
    rst $18                                       ; $75a6: $df
    dec bc                                        ; $75a7: $0b
    and b                                         ; $75a8: $a0
    db $e4                                        ; $75a9: $e4
    jr nc, jr_03b_7593                            ; $75aa: $30 $e7

    ld e, c                                       ; $75ac: $59
    ld d, $d3                                     ; $75ad: $16 $d3
    rst $20                                       ; $75af: $e7
    dec c                                         ; $75b0: $0d
    nop                                           ; $75b1: $00
    cp l                                          ; $75b2: $bd
    add d                                         ; $75b3: $82
    ldh a, [$d5]                                  ; $75b4: $f0 $d5
    sbc h                                         ; $75b6: $9c
    ld [hl], $62                                  ; $75b7: $36 $62
    call z, $ecd5                                 ; $75b9: $cc $d5 $ec
    sub a                                         ; $75bc: $97
    ld [hl], d                                    ; $75bd: $72
    xor a                                         ; $75be: $af
    or a                                          ; $75bf: $b7
    jr nc, jr_03b_7629                            ; $75c0: $30 $67

    ld [hl], c                                    ; $75c2: $71
    ld e, h                                       ; $75c3: $5c
    db $fc                                        ; $75c4: $fc
    cp d                                          ; $75c5: $ba
    db $d3                                        ; $75c6: $d3
    xor d                                         ; $75c7: $aa
    ld [c], a                                     ; $75c8: $e2
    add h                                         ; $75c9: $84
    add $51                                       ; $75ca: $c6 $51
    ld a, h                                       ; $75cc: $7c
    adc [hl]                                      ; $75cd: $8e
    ld a, [de]                                    ; $75ce: $1a
    cp c                                          ; $75cf: $b9
    jr nz, @+$4f                                  ; $75d0: $20 $4d

    or b                                          ; $75d2: $b0
    push af                                       ; $75d3: $f5
    rst $08                                       ; $75d4: $cf
    dec de                                        ; $75d5: $1b
    nop                                           ; $75d6: $00
    or $1c                                        ; $75d7: $f6 $1c
    pop de                                        ; $75d9: $d1
    inc h                                         ; $75da: $24
    ld b, [hl]                                    ; $75db: $46
    ld a, c                                       ; $75dc: $79
    sbc a                                         ; $75dd: $9f
    ld h, e                                       ; $75de: $63
    ld e, c                                       ; $75df: $59
    ld l, c                                       ; $75e0: $69
    dec e                                         ; $75e1: $1d
    ret                                           ; $75e2: $c9


    ld a, c                                       ; $75e3: $79
    adc $24                                       ; $75e4: $ce $24
    ld b, [hl]                                    ; $75e6: $46
    ld sp, hl                                     ; $75e7: $f9
    ld a, [$6f8b]                                 ; $75e8: $fa $8b $6f
    and [hl]                                      ; $75eb: $a6
    dec h                                         ; $75ec: $25
    ld d, d                                       ; $75ed: $52
    ld l, a                                       ; $75ee: $6f
    nop                                           ; $75ef: $00
    db $dd                                        ; $75f0: $dd
    rst $08                                       ; $75f1: $cf
    or c                                          ; $75f2: $b1
    ld b, l                                       ; $75f3: $45
    rst $08                                       ; $75f4: $cf
    ld a, c                                       ; $75f5: $79
    sub $89                                       ; $75f6: $d6 $89
    dec l                                         ; $75f8: $2d
    ld [hl], l                                    ; $75f9: $75
    dec h                                         ; $75fa: $25
    ld b, a                                       ; $75fb: $47
    inc [hl]                                      ; $75fc: $34
    adc c                                         ; $75fd: $89
    ld d, c                                       ; $75fe: $51
    ld e, [hl]                                    ; $75ff: $5e

Call_03b_7600:
    inc hl                                        ; $7600: $23
    ld a, e                                       ; $7601: $7b
    ld [bc], a                                    ; $7602: $02
    ld bc, $8564                                  ; $7603: $01 $64 $85
    cp d                                          ; $7606: $ba
    sub d                                         ; $7607: $92
    dec bc                                        ; $7608: $0b
    ld a, [hl]                                    ; $7609: $7e
    rst $00                                       ; $760a: $c7
    and $47                                       ; $760b: $e6 $47
    dec [hl]                                      ; $760d: $35
    adc c                                         ; $760e: $89
    cp [hl]                                       ; $760f: $be
    ld sp, hl                                     ; $7610: $f9
    inc e                                         ; $7611: $1c
    ld [hl], c                                    ; $7612: $71
    push hl                                       ; $7613: $e5
    ld h, a                                       ; $7614: $67
    jp z, $e72b                                   ; $7615: $ca $2b $e7

    add hl, sp                                    ; $7618: $39
    dec sp                                        ; $7619: $3b
    adc l                                         ; $761a: $8d
    adc $b7                                       ; $761b: $ce $b7
    call nc, Call_03b_71f5                        ; $761d: $d4 $f5 $71
    db $10                                        ; $7620: $10
    ld d, h                                       ; $7621: $54
    xor b                                         ; $7622: $a8
    scf                                           ; $7623: $37
    nop                                           ; $7624: $00
    sub a                                         ; $7625: $97
    ld de, $d8bd                                  ; $7626: $11 $bd $d8

jr_03b_7629:
    db $fc                                        ; $7629: $fc
    inc l                                         ; $762a: $2c
    adc [hl]                                      ; $762b: $8e
    dec bc                                        ; $762c: $0b
    ld a, [hl]                                    ; $762d: $7e
    add a                                         ; $762e: $87
    ld d, d                                       ; $762f: $52
    ld [hl], e                                    ; $7630: $73
    xor l                                         ; $7631: $ad
    ld a, [hl]                                    ; $7632: $7e
    xor b                                         ; $7633: $a8
    pop hl                                        ; $7634: $e1
    ei                                            ; $7635: $fb
    sbc h                                         ; $7636: $9c
    push bc                                       ; $7637: $c5
    ld [hl], c                                    ; $7638: $71
    sub h                                         ; $7639: $94
    ld e, a                                       ; $763a: $5f
    nop                                           ; $763b: $00
    ld e, c                                       ; $763c: $59
    and c                                         ; $763d: $a1
    sbc $3b                                       ; $763e: $de $3b
    or $84                                        ; $7640: $f6 $84
    add l                                         ; $7642: $85
    ld c, $63                                     ; $7643: $0e $63
    ld [$97c2], a                                 ; $7645: $ea $c2 $97
    rst $18                                       ; $7648: $df
    ld a, c                                       ; $7649: $79
    ld h, d                                       ; $764a: $62
    xor l                                         ; $764b: $ad
    xor [hl]                                      ; $764c: $ae
    ld l, [hl]                                    ; $764d: $6e
    add sp, $53                                   ; $764e: $e8 $53
    ld d, $a6                                     ; $7650: $16 $a6
    ld c, h                                       ; $7652: $4c
    ld l, b                                       ; $7653: $68
    ld e, h                                       ; $7654: $5c
    ld c, b                                       ; $7655: $48
    ld a, c                                       ; $7656: $79
    sbc c                                         ; $7657: $99
    ld [hl], l                                    ; $7658: $75
    sbc [hl]                                      ; $7659: $9e
    sub l                                         ; $765a: $95
    inc l                                         ; $765b: $2c
    dec d                                         ; $765c: $15
    jp z, $8fea                                   ; $765d: $ca $ea $8f

    sub h                                         ; $7660: $94
    or $65                                        ; $7661: $f6 $65
    sub d                                         ; $7663: $92
    sbc l                                         ; $7664: $9d
    rst $30                                       ; $7665: $f7
    add hl, sp                                    ; $7666: $39
    rst $08                                       ; $7667: $cf
    sub l                                         ; $7668: $95
    ld e, a                                       ; $7669: $5f
    and a                                         ; $766a: $a7
    ld [hl], l                                    ; $766b: $75
    ld c, d                                       ; $766c: $4a
    bit 1, b                                      ; $766d: $cb $48
    di                                            ; $766f: $f3
    rst $30                                       ; $7670: $f7
    xor [hl]                                      ; $7671: $ae
    ld [hl], b                                    ; $7672: $70
    inc l                                         ; $7673: $2c
    dec d                                         ; $7674: $15
    xor $57                                       ; $7675: $ee $57
    ld a, [hl]                                    ; $7677: $7e
    and [hl]                                      ; $7678: $a6
    cp h                                          ; $7679: $bc
    ld [hl], d                                    ; $767a: $72

Call_03b_767b:
    sbc [hl]                                      ; $767b: $9e
    dec sp                                        ; $767c: $3b
    add a                                         ; $767d: $87
    push de                                       ; $767e: $d5
    ld b, h                                       ; $767f: $44
    db $fd                                        ; $7680: $fd
    sbc c                                         ; $7681: $99
    call nz, $bf28                                ; $7682: $c4 $28 $bf
    ld a, [c]                                     ; $7685: $f2
    cp d                                          ; $7686: $ba
    ld e, [hl]                                    ; $7687: $5e
    ld [de], a                                    ; $7688: $12
    xor c                                         ; $7689: $a9
    cp e                                          ; $768a: $bb
    ld e, b                                       ; $768b: $58
    adc l                                         ; $768c: $8d
    sub e                                         ; $768d: $93
    rst $10                                       ; $768e: $d7
    add l                                         ; $768f: $85
    cpl                                           ; $7690: $2f
    ccf                                           ; $7691: $3f
    sub e                                         ; $7692: $93
    ld [hl], l                                    ; $7693: $75
    ld e, b                                       ; $7694: $58
    jr jr_03b_76f6                                ; $7695: $18 $5f

    ld d, $dd                                     ; $7697: $16 $dd
    ld [c], a                                     ; $7699: $e2
    dec bc                                        ; $769a: $0b
    rst $38                                       ; $769b: $ff
    ld b, $dd                                     ; $769c: $06 $dd
    cpl                                           ; $769e: $2f
    db $e3                                        ; $769f: $e3
    adc b                                         ; $76a0: $88
    add $11                                       ; $76a1: $c6 $11
    and e                                         ; $76a3: $a3
    cp h                                          ; $76a4: $bc
    xor [hl]                                      ; $76a5: $ae
    ld h, [hl]                                    ; $76a6: $66
    cp a                                          ; $76a7: $bf
    inc d                                         ; $76a8: $14
    ld hl, sp-$14                                 ; $76a9: $f8 $ec
    ld e, a                                       ; $76ab: $5f
    call nz, Call_000_13da                        ; $76ac: $c4 $da $13

Jump_03b_76af:
    nop                                           ; $76af: $00
    add c                                         ; $76b0: $81
    ld [hl], $f0                                  ; $76b1: $36 $f0
    dec b                                         ; $76b3: $05
    add hl, sp                                    ; $76b4: $39
    and d                                         ; $76b5: $a2
    ld c, c                                       ; $76b6: $49
    adc h                                         ; $76b7: $8c
    ld a, [c]                                     ; $76b8: $f2
    ld a, $57                                     ; $76b9: $3e $57
    ld a, [hl]                                    ; $76bb: $7e
    push de                                       ; $76bc: $d5
    or [hl]                                       ; $76bd: $b6
    ld d, d                                       ; $76be: $52
    cp e                                          ; $76bf: $bb
    ld a, [c]                                     ; $76c0: $f2
    dec bc                                        ; $76c1: $0b
    ld e, a                                       ; $76c2: $5f
    ld a, [hl]                                    ; $76c3: $7e
    push hl                                       ; $76c4: $e5
    ld h, a                                       ; $76c5: $67
    ld [de], a                                    ; $76c6: $12
    and e                                         ; $76c7: $a3
    ld a, h                                       ; $76c8: $7c
    db $fd                                        ; $76c9: $fd
    push bc                                       ; $76ca: $c5
    scf                                           ; $76cb: $37
    db $d3                                        ; $76cc: $d3
    ld l, h                                       ; $76cd: $6c
    pop af                                        ; $76ce: $f1
    ld b, $67                                     ; $76cf: $06 $67
    scf                                           ; $76d1: $37
    ld [c], a                                     ; $76d2: $e2
    add d                                         ; $76d3: $82
    inc [hl]                                      ; $76d4: $34
    pop bc                                        ; $76d5: $c1
    add h                                         ; $76d6: $84
    rst $08                                       ; $76d7: $cf
    cp $45                                        ; $76d8: $fe $45
    xor h                                         ; $76da: $ac
    rst $30                                       ; $76db: $f7
    ld l, $fa                                     ; $76dc: $2e $fa
    add hl, hl                                    ; $76de: $29
    rrca                                          ; $76df: $0f
    ld c, [hl]                                    ; $76e0: $4e
    ld sp, hl                                     ; $76e1: $f9
    dec b                                         ; $76e2: $05
    inc [hl]                                      ; $76e3: $34
    inc [hl]                                      ; $76e4: $34
    inc e                                         ; $76e5: $1c
    dec [hl]                                      ; $76e6: $35
    cp [hl]                                       ; $76e7: $be
    ld [hl], h                                    ; $76e8: $74
    xor l                                         ; $76e9: $ad
    halt                                          ; $76ea: $76
    sub $99                                       ; $76eb: $d6 $99
    call nz, $8c48                                ; $76ed: $c4 $48 $8c
    ccf                                           ; $76f0: $3f
    rst $08                                       ; $76f1: $cf
    dec b                                         ; $76f2: $05
    cp a                                          ; $76f3: $bf
    ld b, e                                       ; $76f4: $43
    sbc c                                         ; $76f5: $99

jr_03b_76f6:
    ret nc                                        ; $76f6: $d0

    cp b                                          ; $76f7: $b8
    sub b                                         ; $76f8: $90
    ld a, [c]                                     ; $76f9: $f2
    ld a, $c7                                     ; $76fa: $3e $c7
    or d                                          ; $76fc: $b2
    jp nc, $923a                                  ; $76fd: $d2 $3a $92

    scf                                           ; $7700: $37
    nop                                           ; $7701: $00
    db $dd                                        ; $7702: $dd
    db $ec                                        ; $7703: $ec
    ld e, a                                       ; $7704: $5f
    call nz, Call_03b_63da                        ; $7705: $c4 $da $63
    ld d, a                                       ; $7708: $57
    jr nc, @+$69                                  ; $7709: $30 $67

    ld [hl], c                                    ; $770b: $71
    sbc h                                         ; $770c: $9c
    push af                                       ; $770d: $f5
    add a                                         ; $770e: $87
    add hl, sp                                    ; $770f: $39
    ld e, $c9                                     ; $7710: $1e $c9
    inc hl                                        ; $7712: $23
    xor c                                         ; $7713: $a9
    ld sp, $9d05                                  ; $7714: $31 $05 $9d
    ld a, a                                       ; $7717: $7f
    cp l                                          ; $7718: $bd
    ld bc, $6876                                  ; $7719: $01 $76 $68
    ld [de], a                                    ; $771c: $12
    and e                                         ; $771d: $a3
    ld d, h                                       ; $771e: $54
    sbc l                                         ; $771f: $9d
    jp $d695                                      ; $7720: $c3 $95 $d6


    sub c                                         ; $7723: $91
    sbc h                                         ; $7724: $9c
    ld c, c                                       ; $7725: $49
    ld e, h                                       ; $7726: $5c
    ld sp, hl                                     ; $7727: $f9
    sbc c                                         ; $7728: $99
    call nz, Call_03b_5f28                        ; $7729: $c4 $28 $5f
    ld a, a                                       ; $772c: $7f
    pop af                                        ; $772d: $f1
    call Call_03b_5b34                            ; $772e: $cd $34 $5b
    call c, $1a7b                                 ; $7731: $dc $7b $1a
    rst $30                                       ; $7734: $f7
    cp $ef                                        ; $7735: $fe $ef
    ei                                            ; $7737: $fb
    or [hl]                                       ; $7738: $b6
    xor [hl]                                      ; $7739: $ae
    db $e4                                        ; $773a: $e4
    inc a                                         ; $773b: $3c
    dec hl                                        ; $773c: $2b
    ld e, c                                       ; $773d: $59
    ld a, [hl+]                                   ; $773e: $2a
    ld [hl], $fb                                  ; $773f: $36 $fb
    sub l                                         ; $7741: $95
    ld e, a                                       ; $7742: $5f
    and a                                         ; $7743: $a7
    ld [hl], l                                    ; $7744: $75
    ld c, d                                       ; $7745: $4a
    bit 1, b                                      ; $7746: $cb $48
    di                                            ; $7748: $f3
    scf                                           ; $7749: $37
    nop                                           ; $774a: $00
    halt                                          ; $774b: $76
    or b                                          ; $774c: $b0
    inc c                                         ; $774d: $0c
    dec bc                                        ; $774e: $0b
    ld sp, $f172                                  ; $774f: $31 $72 $f1
    ret z                                         ; $7752: $c8

    ld a, b                                       ; $7753: $78
    ld h, h                                       ; $7754: $64
    sub h                                         ; $7755: $94
    rst $28                                       ; $7756: $ef
    ld a, h                                       ; $7757: $7c
    cp a                                          ; $7758: $bf
    add h                                         ; $7759: $84
    rst $08                                       ; $775a: $cf
    cp $45                                        ; $775b: $fe $45
    xor h                                         ; $775d: $ac
    ldh a, [$f5]                                  ; $775e: $f0 $f5
    ld [hl], e                                    ; $7760: $73
    ld a, [de]                                    ; $7761: $1a
    ld [hl], e                                    ; $7762: $73
    dec h                                         ; $7763: $25
    ld h, a                                       ; $7764: $67
    ld [hl], c                                    ; $7765: $71
    inc e                                         ; $7766: $1c
    dec [hl]                                      ; $7767: $35
    and h                                         ; $7768: $a4
    ld a, h                                       ; $7769: $7c
    rst $20                                       ; $776a: $e7
    rst $28                                       ; $776b: $ef
    dec e                                         ; $776c: $1d
    ld [hl], e                                    ; $776d: $73
    db $f4                                        ; $776e: $f4
    ld b, d                                       ; $776f: $42
    add a                                         ; $7770: $87
    ld sp, $e175                                  ; $7771: $31 $75 $e1
    set 5, a                                      ; $7774: $cb $ef
    inc a                                         ; $7776: $3c
    add hl, sp                                    ; $7777: $39
    ld a, [c]                                     ; $7778: $f2
    inc a                                         ; $7779: $3c
    add hl, sp                                    ; $777a: $39
    ld a, [c]                                     ; $777b: $f2
    inc a                                         ; $777c: $3c
    or c                                          ; $777d: $b1
    ld d, [hl]                                    ; $777e: $56
    ld d, a                                       ; $777f: $57
    scf                                           ; $7780: $37
    db $f4                                        ; $7781: $f4
    add hl, hl                                    ; $7782: $29
    scf                                           ; $7783: $37
    nop                                           ; $7784: $00
    halt                                          ; $7785: $76
    ld l, b                                       ; $7786: $68
    ld [de], a                                    ; $7787: $12
    and e                                         ; $7788: $a3
    ld d, h                                       ; $7789: $54
    sbc l                                         ; $778a: $9d
    jp $d695                                      ; $778b: $c3 $95 $d6


    sub c                                         ; $778e: $91
    sbc h                                         ; $778f: $9c
    ld c, c                                       ; $7790: $49
    ld e, h                                       ; $7791: $5c
    ld sp, hl                                     ; $7792: $f9
    sbc c                                         ; $7793: $99
    call nz, Call_03b_5f28                        ; $7794: $c4 $28 $5f
    ld a, a                                       ; $7797: $7f
    pop af                                        ; $7798: $f1
    call Call_03b_5b34                            ; $7799: $cd $34 $5b
    call c, $1a7b                                 ; $779c: $dc $7b $1a
    rst $30                                       ; $779f: $f7
    cp $6f                                        ; $77a0: $fe $6f
    nop                                           ; $77a2: $00
    halt                                          ; $77a3: $76
    or b                                          ; $77a4: $b0
    inc c                                         ; $77a5: $0c
    dec bc                                        ; $77a6: $0b
    ld sp, $f172                                  ; $77a7: $31 $72 $f1
    ret z                                         ; $77aa: $c8

    ld a, b                                       ; $77ab: $78
    ld h, h                                       ; $77ac: $64
    sub h                                         ; $77ad: $94
    rst $28                                       ; $77ae: $ef
    ld a, h                                       ; $77af: $7c
    cp a                                          ; $77b0: $bf
    add h                                         ; $77b1: $84
    rst $08                                       ; $77b2: $cf
    cp $45                                        ; $77b3: $fe $45
    xor h                                         ; $77b5: $ac
    ldh a, [$f5]                                  ; $77b6: $f0 $f5
    ld [hl], e                                    ; $77b8: $73
    ld a, [de]                                    ; $77b9: $1a
    ld [hl], e                                    ; $77ba: $73
    dec h                                         ; $77bb: $25
    ld h, a                                       ; $77bc: $67
    ld [hl], c                                    ; $77bd: $71
    inc e                                         ; $77be: $1c

Call_03b_77bf:
    dec [hl]                                      ; $77bf: $35
    and h                                         ; $77c0: $a4
    ld a, h                                       ; $77c1: $7c
    rst $20                                       ; $77c2: $e7
    rst $28                                       ; $77c3: $ef
    dec e                                         ; $77c4: $1d
    ld [hl], e                                    ; $77c5: $73
    db $f4                                        ; $77c6: $f4
    ld b, d                                       ; $77c7: $42
    add a                                         ; $77c8: $87
    ld sp, $e175                                  ; $77c9: $31 $75 $e1
    set 5, a                                      ; $77cc: $cb $ef
    inc a                                         ; $77ce: $3c
    add hl, sp                                    ; $77cf: $39
    ld a, [c]                                     ; $77d0: $f2
    inc a                                         ; $77d1: $3c
    add hl, sp                                    ; $77d2: $39
    ld a, [c]                                     ; $77d3: $f2
    inc a                                         ; $77d4: $3c
    or c                                          ; $77d5: $b1
    ld d, [hl]                                    ; $77d6: $56
    ld d, a                                       ; $77d7: $57
    scf                                           ; $77d8: $37
    db $f4                                        ; $77d9: $f4
    add hl, hl                                    ; $77da: $29
    rst $30                                       ; $77db: $f7
    adc $f9                                       ; $77dc: $ce $f9
    sbc d                                         ; $77de: $9a
    ld h, e                                       ; $77df: $63
    ld e, c                                       ; $77e0: $59
    add hl, sp                                    ; $77e1: $39
    or d                                          ; $77e2: $b2
    inc e                                         ; $77e3: $1c
    ld e, c                                       ; $77e4: $59
    ld e, d                                       ; $77e5: $5a
    ld b, a                                       ; $77e6: $47
    ld [hl], d                                    ; $77e7: $72
    sub $29                                       ; $77e8: $d6 $29
    ld d, a                                       ; $77ea: $57
    ld [hl], d                                    ; $77eb: $72
    sbc [hl]                                      ; $77ec: $9e
    sub l                                         ; $77ed: $95
    inc l                                         ; $77ee: $2c
    dec d                                         ; $77ef: $15
    ld c, d                                       ; $77f0: $4a
    push de                                       ; $77f1: $d5
    db $fd                                        ; $77f2: $fd
    jp z, $794f                                   ; $77f3: $ca $4f $79

    ld [hl], b                                    ; $77f6: $70
    jp z, $a02f                                   ; $77f7: $ca $2f $a0

    and c                                         ; $77fa: $a1
    pop hl                                        ; $77fb: $e1
    dec c                                         ; $77fc: $0d
    nop                                           ; $77fd: $00
    cp l                                          ; $77fe: $bd
    inc l                                         ; $77ff: $2c
    adc $66                                       ; $7800: $ce $66
    call nc, $75d8                                ; $7802: $d4 $d8 $75
    inc bc                                        ; $7805: $03
    db $dd                                        ; $7806: $dd
    ld a, e                                       ; $7807: $7b
    db $db                                        ; $7808: $db
    sub $b9                                       ; $7809: $d6 $b9
    jp z, $ba2f                                   ; $780b: $ca $2f $ba

    add l                                         ; $780e: $85
    ld b, a                                       ; $780f: $47
    add [hl]                                      ; $7810: $86
    ld b, a                                       ; $7811: $47
    add [hl]                                      ; $7812: $86
    sub d                                         ; $7813: $92
    ld d, [hl]                                    ; $7814: $56
    sbc d                                         ; $7815: $9a
    sbc b                                         ; $7816: $98
    ldh a, [$d9]                                  ; $7817: $f0 $d9
    cp a                                          ; $7819: $bf
    adc b                                         ; $781a: $88
    or l                                          ; $781b: $b5
    daa                                           ; $781c: $27
    nop                                           ; $781d: $00
    cp l                                          ; $781e: $bd
    ld c, h                                       ; $781f: $4c
    ldh a, [rP1]                                  ; $7820: $f0 $00
    ld hl, sp+$14                                 ; $7822: $f8 $14
    ld e, e                                       ; $7824: $5b
    push af                                       ; $7825: $f5
    ld a, l                                       ; $7826: $7d
    rst $18                                       ; $7827: $df
    nop                                           ; $7828: $00
    ld a, l                                       ; $7829: $7d
    ret c                                         ; $782a: $d8

    cpl                                           ; $782b: $2f
    ld h, l                                       ; $782c: $65
    ld d, $c7                                     ; $782d: $16 $c7
    ld d, l                                       ; $782f: $55
    adc [hl]                                      ; $7830: $8e
    xor h                                         ; $7831: $ac
    inc e                                         ; $7832: $1c
    ld e, c                                       ; $7833: $59
    ld [hl], c                                    ; $7834: $71
    inc l                                         ; $7835: $2c
    sub l                                         ; $7836: $95
    rst $10                                       ; $7837: $d7
    db $fd                                        ; $7838: $fd
    jp z, $bccf                                   ; $7839: $ca $cf $bc

    ld b, b                                       ; $783c: $40
    rrca                                          ; $783d: $0f
    sbc a                                         ; $783e: $9f
    db $fd                                        ; $783f: $fd
    adc e                                         ; $7840: $8b
    ld e, b                                       ; $7841: $58
    ld l, a                                       ; $7842: $6f
    nop                                           ; $7843: $00
    db $dd                                        ; $7844: $dd
    db $ec                                        ; $7845: $ec
    ld e, a                                       ; $7846: $5f
    rst $10                                       ; $7847: $d7
    jr nc, jr_03b_789c                            ; $7848: $30 $52

    call nz, Call_03b_61d5                        ; $784a: $c4 $d5 $61
    di                                            ; $784d: $f3
    add hl, sp                                    ; $784e: $39
    add a                                         ; $784f: $87
    ccf                                           ; $7850: $3f
    ld d, e                                       ; $7851: $53
    ld e, [hl]                                    ; $7852: $5e
    reti                                          ; $7853: $d9


    ld h, e                                       ; $7854: $63
    db $dd                                        ; $7855: $dd
    ld a, d                                       ; $7856: $7a
    scf                                           ; $7857: $37
    inc [hl]                                      ; $7858: $34
    cp c                                          ; $7859: $b9
    ret nc                                        ; $785a: $d0

    ld h, c                                       ; $785b: $61
    ld c, h                                       ; $785c: $4c
    ld e, l                                       ; $785d: $5d
    ld c, l                                       ; $785e: $4d
    ld c, h                                       ; $785f: $4c
    sbc l                                         ; $7860: $9d
    ret                                           ; $7861: $c9


    ld a, [hl-]                                   ; $7862: $3a
    ld h, a                                       ; $7863: $67
    ld e, [hl]                                    ; $7864: $5e
    ld h, e                                       ; $7865: $63
    add e                                         ; $7866: $83
    ld [hl], d                                    ; $7867: $72
    pop hl                                        ; $7868: $e1
    sra a                                         ; $7869: $cb $2f
    cp d                                          ; $786b: $ba
    sbc c                                         ; $786c: $99
    rst $10                                       ; $786d: $d7
    rst $28                                       ; $786e: $ef
    ld bc, $f700                                  ; $786f: $01 $00 $f7
    ld a, l                                       ; $7872: $7d
    rst $08                                       ; $7873: $cf
    dec sp                                        ; $7874: $3b
    ld a, c                                       ; $7875: $79
    adc h                                         ; $7876: $8c
    ld e, h                                       ; $7877: $5c
    ld sp, hl                                     ; $7878: $f9
    jp hl                                         ; $7879: $e9


    sub a                                         ; $787a: $97
    jp z, $e3f7                                   ; $787b: $ca $f7 $e3

    db $ec                                        ; $787e: $ec
    dec e                                         ; $787f: $1d
    dec bc                                        ; $7880: $0b
    db $f4                                        ; $7881: $f4
    di                                            ; $7882: $f3
    ld e, h                                       ; $7883: $5c
    ld a, c                                       ; $7884: $79
    db $dd                                        ; $7885: $dd
    ld a, c                                       ; $7886: $79
    ld e, l                                       ; $7887: $5d
    ld [bc], a                                    ; $7888: $02

jr_03b_7889:
    ld h, l                                       ; $7889: $65
    ld a, c                                       ; $788a: $79
    dec e                                         ; $788b: $1d
    ld [hl], c                                    ; $788c: $71
    rst $00                                       ; $788d: $c7
    sbc h                                         ; $788e: $9c
    ld [hl], d                                    ; $788f: $72
    call z, $f031                                 ; $7890: $cc $31 $f0
    sub l                                         ; $7893: $95
    call nc, $1f41                                ; $7894: $d4 $41 $1f
    ld d, e                                       ; $7897: $53
    ld d, a                                       ; $7898: $57
    daa                                           ; $7899: $27
    ld b, [hl]                                    ; $789a: $46
    ld a, [hl+]                                   ; $789b: $2a

jr_03b_789c:
    ld [hl], l                                    ; $789c: $75
    xor l                                         ; $789d: $ad
    di                                            ; $789e: $f3
    jr c, jr_03b_7889                             ; $789f: $38 $e8

    pop af                                        ; $78a1: $f1
    pop de                                        ; $78a2: $d1
    rst $20                                       ; $78a3: $e7
    adc h                                         ; $78a4: $8c
    ld a, e                                       ; $78a5: $7b
    db $f4                                        ; $78a6: $f4
    ld a, c                                       ; $78a7: $79
    rst $18                                       ; $78a8: $df
    scf                                           ; $78a9: $37
    nop                                           ; $78aa: $00
    sub a                                         ; $78ab: $97
    ld de, $1ca1                                  ; $78ac: $11 $a1 $1c
    sla b                                         ; $78af: $cb $20
    and a                                         ; $78b1: $a7
    ld sp, $39e7                                  ; $78b2: $31 $e7 $39
    di                                            ; $78b5: $f3
    ld a, [de]                                    ; $78b6: $1a
    dec de                                        ; $78b7: $1b
    db $f4                                        ; $78b8: $f4
    ld [de], a                                    ; $78b9: $12
    add hl, sp                                    ; $78ba: $39
    sub e                                         ; $78bb: $93
    cp b                                          ; $78bc: $b8
    inc de                                        ; $78bd: $13
    ld d, $3a                                     ; $78be: $16 $3a
    adc h                                         ; $78c0: $8c
    xor c                                         ; $78c1: $a9
    xor e                                         ; $78c2: $ab
    adc c                                         ; $78c3: $89
    xor c                                         ; $78c4: $a9
    dec bc                                        ; $78c5: $0b
    ld d, e                                       ; $78c6: $53
    sub $30                                       ; $78c7: $d6 $30
    ld d, d                                       ; $78c9: $52
    call nz, Call_03b_61d5                        ; $78ca: $c4 $d5 $61
    sub e                                         ; $78cd: $93
    push de                                       ; $78ce: $d5
    ld l, l                                       ; $78cf: $6d
    and [hl]                                      ; $78d0: $a6
    cp h                                          ; $78d1: $bc
    ld [de], a                                    ; $78d2: $12
    cp [hl]                                       ; $78d3: $be
    add b                                         ; $78d4: $80
    adc h                                         ; $78d5: $8c
    sub c                                         ; $78d6: $91

jr_03b_78d7:
    jp nc, $0003                                  ; $78d7: $d2 $03 $00

    daa                                           ; $78da: $27
    inc l                                         ; $78db: $2c
    ld [hl], h                                    ; $78dc: $74
    jr jr_03b_7932                                ; $78dd: $18 $53

    rst $20                                       ; $78df: $e7
    add hl, sp                                    ; $78e0: $39
    di                                            ; $78e1: $f3
    ld a, [de]                                    ; $78e2: $1a
    dec de                                        ; $78e3: $1b
    sub h                                         ; $78e4: $94
    ldh a, [rTIMA]                                ; $78e5: $f0 $05
    jp z, $80bd                                   ; $78e7: $ca $bd $80

    adc h                                         ; $78ea: $8c
    sub c                                         ; $78eb: $91
    ld [bc], a                                    ; $78ec: $02
    ld e, a                                       ; $78ed: $5f
    or a                                          ; $78ee: $b7
    jr nc, jr_03b_7956                            ; $78ef: $30 $65

    rra                                           ; $78f1: $1f
    add hl, hl                                    ; $78f2: $29
    jp nc, $bffa                                  ; $78f3: $d2 $fa $bf

    adc h                                         ; $78f6: $8c
    cp b                                          ; $78f7: $b8
    cp d                                          ; $78f8: $ba
    call Call_000_1d7c                            ; $78f9: $cd $7c $1d
    ld h, [hl]                                    ; $78fc: $66
    rrca                                          ; $78fd: $0f
    nop                                           ; $78fe: $00
    rst $20                                       ; $78ff: $e7
    ret nc                                        ; $7900: $d0

    inc [hl]                                      ; $7901: $34
    ld e, a                                       ; $7902: $5f
    cp b                                          ; $7903: $b8
    ld h, b                                       ; $7904: $60
    sub [hl]                                      ; $7905: $96
    rst $18                                       ; $7906: $df
    rst $08                                       ; $7907: $cf
    cp $45                                        ; $7908: $fe $45
    xor h                                         ; $790a: $ac
    rst $30                                       ; $790b: $f7
    adc $69                                       ; $790c: $ce $69
    add l                                         ; $790e: $85

Call_03b_790f:
    ld a, e                                       ; $790f: $7b
    rst $18                                       ; $7910: $df
    ld l, h                                       ; $7911: $6c
    ld [hl], l                                    ; $7912: $75
    cp a                                          ; $7913: $bf
    inc de                                        ; $7914: $13
    ld d, $3a                                     ; $7915: $16 $3a
    adc h                                         ; $7917: $8c
    xor c                                         ; $7918: $a9
    ldh a, [$d9]                                  ; $7919: $f0 $d9
    cp a                                          ; $791b: $bf
    adc b                                         ; $791c: $88
    dec d                                         ; $791d: $15
    cp [hl]                                       ; $791e: $be
    jr nc, jr_03b_7986                            ; $791f: $30 $65

    dec c                                         ; $7921: $0d
    inc hl                                        ; $7922: $23
    ld b, l                                       ; $7923: $45
    ld e, h                                       ; $7924: $5c
    dec e                                         ; $7925: $1d
    ld [hl], $99                                  ; $7926: $36 $99
    jp $299f                                      ; $7928: $c3 $9f $29


    xor a                                         ; $792b: $af
    cp h                                          ; $792c: $bc
    ld bc, $1a76                                  ; $792d: $01 $76 $1a
    cp e                                          ; $7930: $bb
    ld [hl], h                                    ; $7931: $74

jr_03b_7932:
    ld c, $17                                     ; $7932: $0e $17
    and [hl]                                      ; $7934: $a6
    ret                                           ; $7935: $c9


    ld d, l                                       ; $7936: $55
    jr z, jr_03b_78d7                             ; $7937: $28 $9e

    ldh a, [$d9]                                  ; $7939: $f0 $d9
    cp a                                          ; $793b: $bf
    adc b                                         ; $793c: $88
    push af                                       ; $793d: $f5
    ld b, $dd                                     ; $793e: $06 $dd
    db $ed                                        ; $7940: $ed
    inc [hl]                                      ; $7941: $34
    halt                                          ; $7942: $76
    jp hl                                         ; $7943: $e9


    ld a, [hl-]                                   ; $7944: $3a
    adc l                                         ; $7945: $8d
    ld [$fd9f], sp                                ; $7946: $08 $9f $fd
    adc e                                         ; $7949: $8b
    ld e, b                                       ; $794a: $58
    ld a, e                                       ; $794b: $7b
    ld [bc], a                                    ; $794c: $02
    db $dd                                        ; $794d: $dd
    ld l, $73                                     ; $794e: $2e $73
    xor e                                         ; $7950: $ab
    cp a                                          ; $7951: $bf
    ld hl, sp+$66                                 ; $7952: $f8 $66
    sbc d                                         ; $7954: $9a
    dec l                                         ; $7955: $2d

Jump_03b_7956:
jr_03b_7956:
    ld l, $f8                                     ; $7956: $2e $f8
    di                                            ; $7958: $f3
    call nc, Call_03b_5f0f                        ; $7959: $d4 $0f $5f
    ld l, b                                       ; $795c: $68
    sbc d                                         ; $795d: $9a
    rst $08                                       ; $795e: $cf
    ld e, $00                                     ; $795f: $1e $00
    db $dd                                        ; $7961: $dd
    ei                                            ; $7962: $fb
    and $22                                       ; $7963: $e6 $22
    ld b, a                                       ; $7965: $47
    inc [hl]                                      ; $7966: $34
    adc [hl]                                      ; $7967: $8e
    jr @-$19                                      ; $7968: $18 $e5

    ld [hl], l                                    ; $796a: $75
    sbc l                                         ; $796b: $9d
    ld b, [hl]                                    ; $796c: $46
    add h                                         ; $796d: $84
    rst $08                                       ; $796e: $cf
    cp $45                                        ; $796f: $fe $45
    xor h                                         ; $7971: $ac
    dec a                                         ; $7972: $3d
    ld bc, $3681                                  ; $7973: $01 $81 $36
    ldh a, [$bd]                                  ; $7976: $f0 $bd
    add hl, bc                                    ; $7978: $09
    ld e, $00                                     ; $7979: $1e $00
    sbc a                                         ; $797b: $9f
    ld h, d                                       ; $797c: $62
    xor e                                         ; $797d: $ab
    cp [hl]                                       ; $797e: $be
    rla                                           ; $797f: $17
    ld b, b                                       ; $7980: $40
    ld d, [hl]                                    ; $7981: $56
    xor b                                         ; $7982: $a8
    ld a, e                                       ; $7983: $7b
    di                                            ; $7984: $f3
    sbc l                                         ; $7985: $9d

jr_03b_7986:
    sbc a                                         ; $7986: $9f
    rst $20                                       ; $7987: $e7
    jp z, $ff63                                   ; $7988: $ca $63 $ff

    sub a                                         ; $798b: $97
    sbc d                                         ; $798c: $9a
    ld [hl], e                                    ; $798d: $73
    cp b                                          ; $798e: $b8
    jr nz, jr_03b_79de                            ; $798f: $20 $4d

    or b                                          ; $7991: $b0
    push af                                       ; $7992: $f5
    rst $08                                       ; $7993: $cf
    ld e, c                                       ; $7994: $59
    ld d, a                                       ; $7995: $57
    ld [hl], e                                    ; $7996: $73
    ld b, c                                       ; $7997: $41
    ld l, $74                                     ; $7998: $2e $74
    call nc, $2398                                ; $799a: $d4 $98 $23
    ld d, [hl]                                    ; $799d: $56
    ld d, e                                       ; $799e: $53
    ld [$01bc], a                                 ; $799f: $ea $bc $01
    ld bc, $1c89                                  ; $79a2: $01 $89 $1c
    or c                                          ; $79a5: $b1

Jump_03b_79a6:
    sbc d                                         ; $79a6: $9a
    ld d, d                                       ; $79a7: $52
    rst $20                                       ; $79a8: $e7
    ld a, [hl]                                    ; $79a9: $7e
    ld sp, $8e7d                                  ; $79aa: $31 $7d $8e
    ld h, l                                       ; $79ad: $65
    or l                                          ; $79ae: $b5
    ld b, e                                       ; $79af: $43
    sbc a                                         ; $79b0: $9f
    rst $30                                       ; $79b1: $f7
    ld a, [$ea70]                                 ; $79b2: $fa $70 $ea
    adc b                                         ; $79b5: $88
    cp a                                          ; $79b6: $bf
    ld e, a                                       ; $79b7: $5f
    db $fd                                        ; $79b8: $fd
    push bc                                       ; $79b9: $c5
    scf                                           ; $79ba: $37
    db $d3                                        ; $79bb: $d3
    ld l, h                                       ; $79bc: $6c
    pop af                                        ; $79bd: $f1
    sbc $39                                       ; $79be: $de $39
    db $ec                                        ; $79c0: $ec
    ld d, b                                       ; $79c1: $50
    ld l, h                                       ; $79c2: $6c
    ld e, [hl]                                    ; $79c3: $5e
    rst $10                                       ; $79c4: $d7
    ld h, h                                       ; $79c5: $64
    cp a                                          ; $79c6: $bf
    ld a, [bc]                                    ; $79c7: $0a
    ld h, l                                       ; $79c8: $65
    ld e, a                                       ; $79c9: $5f
    ld d, $4a                                     ; $79ca: $16 $4a
    ld d, [hl]                                    ; $79cc: $56
    ld d, e                                       ; $79cd: $53
    ld d, e                                       ; $79ce: $53
    halt                                          ; $79cf: $76
    adc c                                         ; $79d0: $89

jr_03b_79d1:
    ld l, e                                       ; $79d1: $6b
    ld [hl+], a                                   ; $79d2: $22
    inc l                                         ; $79d3: $2c

Call_03b_79d4:
    ld h, l                                       ; $79d4: $65
    call nz, Call_000_2cb1                        ; $79d5: $c4 $b1 $2c
    ld d, d                                       ; $79d8: $52
    inc c                                         ; $79d9: $0c
    ld h, l                                       ; $79da: $65
    ld h, c                                       ; $79db: $61
    db $d3                                        ; $79dc: $d3
    cp h                                          ; $79dd: $bc

jr_03b_79de:
    ld h, a                                       ; $79de: $67
    and a                                         ; $79df: $a7
    ld h, e                                       ; $79e0: $63
    add hl, de                                    ; $79e1: $19
    ld h, c                                       ; $79e2: $61
    add l                                         ; $79e3: $85
    sub h                                         ; $79e4: $94
    sbc b                                         ; $79e5: $98
    inc hl                                        ; $79e6: $23
    xor [hl]                                      ; $79e7: $ae
    cp $e2                                        ; $79e8: $fe $e2
    sbc e                                         ; $79ea: $9b
    ld l, c                                       ; $79eb: $69
    adc c                                         ; $79ec: $89
    call nc, $ae79                                ; $79ed: $d4 $79 $ae
    db $fc                                        ; $79f0: $fc
    call z, $dfeb                                 ; $79f1: $cc $eb $df
    nop                                           ; $79f4: $00
    rst $20                                       ; $79f5: $e7
    or b                                          ; $79f6: $b0
    ld b, e                                       ; $79f7: $43
    or c                                          ; $79f8: $b1
    ld a, c                                       ; $79f9: $79
    ld e, l                                       ; $79fa: $5d
    add l                                         ; $79fb: $85
    or d                                          ; $79fc: $b2
    cpl                                           ; $79fd: $2f
    dec bc                                        ; $79fe: $0b
    dec h                                         ; $79ff: $25
    xor e                                         ; $7a00: $ab
    xor c                                         ; $7a01: $a9
    add hl, hl                                    ; $7a02: $29
    cp e                                          ; $7a03: $bb
    call nz, Call_000_1135                        ; $7a04: $c4 $35 $11
    sub [hl]                                      ; $7a07: $96
    ld [hl-], a                                   ; $7a08: $32
    ld [c], a                                     ; $7a09: $e2
    ld e, b                                       ; $7a0a: $58
    ld d, $29                                     ; $7a0b: $16 $29
    add [hl]                                      ; $7a0d: $86
    or d                                          ; $7a0e: $b2
    or b                                          ; $7a0f: $b0
    ld l, c                                       ; $7a10: $69
    sbc $b3                                       ; $7a11: $de $b3
    db $d3                                        ; $7a13: $d3
    or c                                          ; $7a14: $b1
    adc h                                         ; $7a15: $8c
    or b                                          ; $7a16: $b0
    ld b, d                                       ; $7a17: $42
    ld c, d                                       ; $7a18: $4a
    call z, Call_03b_5711                         ; $7a19: $cc $11 $57
    ld a, a                                       ; $7a1c: $7f
    pop af                                        ; $7a1d: $f1
    call Call_03b_44b4                            ; $7a1e: $cd $b4 $44
    ld [$573c], a                                 ; $7a21: $ea $3c $57
    ld a, [hl]                                    ; $7a24: $7e
    and $f5                                       ; $7a25: $e6 $f5
    ld l, a                                       ; $7a27: $6f
    nop                                           ; $7a28: $00
    cp l                                          ; $7a29: $bd
    db $dd                                        ; $7a2a: $dd
    and e                                         ; $7a2b: $a3
    rst $08                                       ; $7a2c: $cf
    ld d, c                                       ; $7a2d: $51
    ld a, [hl]                                    ; $7a2e: $7e
    db $fd                                        ; $7a2f: $fd
    or d                                          ; $7a30: $b2
    ld b, d                                       ; $7a31: $42
    ld e, h                                       ; $7a32: $5c
    or l                                          ; $7a33: $b5
    ld l, e                                       ; $7a34: $6b
    ei                                            ; $7a35: $fb
    sub l                                         ; $7a36: $95
    rra                                           ; $7a37: $1f
    push de                                       ; $7a38: $d5
    jr c, jr_03b_79d1                             ; $7a39: $38 $96

    sbc a                                         ; $7a3b: $9f
    rst $20                                       ; $7a3c: $e7
    adc b                                         ; $7a3d: $88
    and $31                                       ; $7a3e: $e6 $31
    ld a, [hl]                                    ; $7a40: $7e
    db $dd                                        ; $7a41: $dd
    adc b                                         ; $7a42: $88
    ld sp, $be15                                  ; $7a43: $31 $15 $be
    sub b                                         ; $7a46: $90
    sub d                                         ; $7a47: $92
    jp $e51c                                      ; $7a48: $c3 $1c $e5


    add a                                         ; $7a4b: $87
    rst $28                                       ; $7a4c: $ef
    ld a, a                                       ; $7a4d: $7f
    ld h, $eb                                     ; $7a4e: $26 $eb
    ldh a, [$e5]                                  ; $7a50: $f0 $e5
    ld a, l                                       ; $7a52: $7d
    adc $24                                       ; $7a53: $ce $24
    adc [hl]                                      ; $7a55: $8e
    ld a, [de]                                    ; $7a56: $1a
    di                                            ; $7a57: $f3
    ld b, $7d                                     ; $7a58: $06 $7d
    cp [hl]                                       ; $7a5a: $be
    xor $9a                                       ; $7a5b: $ee $9a
    ld l, a                                       ; $7a5d: $6f
    add [hl]                                      ; $7a5e: $86
    or e                                          ; $7a5f: $b3
    jr c, jr_03b_7ab0                             ; $7a60: $38 $4e

    db $d3                                        ; $7a62: $d3
    ld a, [hl-]                                   ; $7a63: $3a
    add a                                         ; $7a64: $87
    inc hl                                        ; $7a65: $23
    sbc d                                         ; $7a66: $9a
    rst $00                                       ; $7a67: $c7
    sbc b                                         ; $7a68: $98
    ldh a, [$85]                                  ; $7a69: $f0 $85
    sub h                                         ; $7a6b: $94
    inc e                                         ; $7a6c: $1c
    and $8c                                       ; $7a6d: $e6 $8c
    jr nc, jr_03b_7ad8                            ; $7a6f: $30 $67

    ld [hl], c                                    ; $7a71: $71
    ld e, h                                       ; $7a72: $5c
    call $9369                                    ; $7a73: $cd $69 $93
    jp z, Jump_03b_76af                           ; $7a76: $ca $af $76

    ld h, $98                                     ; $7a79: $26 $98
    inc hl                                        ; $7a7b: $23
    adc [hl]                                      ; $7a7c: $8e
    ld a, [de]                                    ; $7a7d: $1a
    ld a, a                                       ; $7a7e: $7f
    and [hl]                                      ; $7a7f: $a6
    cp h                                          ; $7a80: $bc
    ld a, [c]                                     ; $7a81: $f2
    ld b, $57                                     ; $7a82: $06 $57
    jr nc, jr_03b_7aed                            ; $7a84: $30 $67

    ld [hl], c                                    ; $7a86: $71
    inc e                                         ; $7a87: $1c
    and $9c                                       ; $7a88: $e6 $9c
    cp [hl]                                       ; $7a8a: $be
    ld b, [hl]                                    ; $7a8b: $46
    adc [hl]                                      ; $7a8c: $8e
    ld h, l                                       ; $7a8d: $65
    and l                                         ; $7a8e: $a5
    ld [hl], l                                    ; $7a8f: $75
    inc h                                         ; $7a90: $24
    rla                                           ; $7a91: $17
    cp [hl]                                       ; $7a92: $be
    db $fc                                        ; $7a93: $fc
    inc l                                         ; $7a94: $2c
    xor [hl]                                      ; $7a95: $ae
    push bc                                       ; $7a96: $c5
    sub a                                         ; $7a97: $97
    ret z                                         ; $7a98: $c8

    sub l                                         ; $7a99: $95
    ld e, a                                       ; $7a9a: $5f
    db $fd                                        ; $7a9b: $fd
    push bc                                       ; $7a9c: $c5
    scf                                           ; $7a9d: $37
    db $d3                                        ; $7a9e: $d3
    ld l, h                                       ; $7a9f: $6c
    pop af                                        ; $7aa0: $f1
    sbc $45                                       ; $7aa1: $de $45
    cp c                                          ; $7aa3: $b9
    ldh [rWX], a                                  ; $7aa4: $e0 $4b
    push de                                       ; $7aa6: $d5
    add l                                         ; $7aa7: $85
    add hl, hl                                    ; $7aa8: $29
    adc e                                         ; $7aa9: $8b
    db $ed                                        ; $7aaa: $ed
    ld b, $7d                                     ; $7aab: $06 $7d
    di                                            ; $7aad: $f3
    sbc $d5                                       ; $7aae: $de $d5

jr_03b_7ab0:
    dec bc                                        ; $7ab0: $0b
    ld d, e                                       ; $7ab1: $53
    ld d, [hl]                                    ; $7ab2: $56
    db $fd                                        ; $7ab3: $fd
    sub l                                         ; $7ab4: $95
    sub h                                         ; $7ab5: $94
    ld h, c                                       ; $7ab6: $61
    ld l, $72                                     ; $7ab7: $2e $72
    push hl                                       ; $7ab9: $e5
    rla                                           ; $7aba: $17
    push hl                                       ; $7abb: $e5
    dec de                                        ; $7abc: $1b
    db $f4                                        ; $7abd: $f4
    cp d                                          ; $7abe: $ba
    rst $18                                       ; $7abf: $df
    ld a, c                                       ; $7ac0: $79
    ld h, d                                       ; $7ac1: $62
    xor l                                         ; $7ac2: $ad
    xor [hl]                                      ; $7ac3: $ae
    ld l, [hl]                                    ; $7ac4: $6e
    add sp, $53                                   ; $7ac5: $e8 $53
    ld l, [hl]                                    ; $7ac7: $6e
    nop                                           ; $7ac8: $00
    ld a, l                                       ; $7ac9: $7d
    cp d                                          ; $7aca: $ba
    ld [hl], h                                    ; $7acb: $74
    sbc l                                         ; $7acc: $9d
    ld b, [hl]                                    ; $7acd: $46
    ld e, h                                       ; $7ace: $5c
    ld hl, sp+$42                                 ; $7acf: $f8 $42
    jp $fc39                                      ; $7ad1: $c3 $39 $fc


    add l                                         ; $7ad4: $85
    ld b, d                                       ; $7ad5: $42
    ret z                                         ; $7ad6: $c8

    ld h, c                                       ; $7ad7: $61

jr_03b_7ad8:
    db $fc                                        ; $7ad8: $fc
    add l                                         ; $7ad9: $85
    cpl                                           ; $7ada: $2f
    ccf                                           ; $7adb: $3f
    add a                                         ; $7adc: $87
    dec bc                                        ; $7add: $0b
    dec h                                         ; $7ade: $25
    xor e                                         ; $7adf: $ab
    xor c                                         ; $7ae0: $a9
    add hl, hl                                    ; $7ae1: $29
    scf                                           ; $7ae2: $37
    nop                                           ; $7ae3: $00
    ld bc, $9189                                  ; $7ae4: $01 $89 $91
    ei                                            ; $7ae7: $fb
    sub l                                         ; $7ae8: $95
    ld e, a                                       ; $7ae9: $5f
    ld [hl], c                                    ; $7aea: $71
    db $fd                                        ; $7aeb: $fd
    rst $20                                       ; $7aec: $e7

jr_03b_7aed:
    cp c                                          ; $7aed: $b9
    ld a, [c]                                     ; $7aee: $f2
    dec hl                                        ; $7aef: $2b
    ld c, $ff                                     ; $7af0: $0e $ff
    ld e, [hl]                                    ; $7af2: $5e
    rst $18                                       ; $7af3: $df
    add h                                         ; $7af4: $84
    adc a                                         ; $7af5: $8f
    ld a, [de]                                    ; $7af6: $1a
    ld d, d                                       ; $7af7: $52
    ld e, $3e                                     ; $7af8: $1e $3e
    ld l, d                                       ; $7afa: $6a
    adc [hl]                                      ; $7afb: $8e
    cp d                                          ; $7afc: $ba
    ldh a, [$e5]                                  ; $7afd: $f0 $e5
    ld h, a                                       ; $7aff: $67
    ld [hl], c                                    ; $7b00: $71
    dec l                                         ; $7b01: $2d
    cp [hl]                                       ; $7b02: $be
    xor h                                         ; $7b03: $ac
    ld b, d                                       ; $7b04: $42
    ld de, $bd07                                  ; $7b05: $11 $07 $bd
    sbc $00                                       ; $7b08: $de $00
    rla                                           ; $7b0a: $17
    push hl                                       ; $7b0b: $e5
    or h                                          ; $7b0c: $b4
    ld de, $c263                                  ; $7b0d: $11 $63 $c2
    sub a                                         ; $7b10: $97
    db $fd                                        ; $7b11: $fd
    cp [hl]                                       ; $7b12: $be
    ld [hl], h                                    ; $7b13: $74
    dec l                                         ; $7b14: $2d
    ld [hl], h                                    ; $7b15: $74

Call_03b_7b16:
    cp [hl]                                       ; $7b16: $be
    ld d, c                                       ; $7b17: $51
    ld a, [hl]                                    ; $7b18: $7e
    ld l, a                                       ; $7b19: $6f
    ld [hl], l                                    ; $7b1a: $75
    cp $25                                        ; $7b1b: $fe $25
    ld a, [c]                                     ; $7b1d: $f2
    ld b, $7d                                     ; $7b1e: $06 $7d
    db $db                                        ; $7b20: $db
    sbc d                                         ; $7b21: $9a
    rst $20                                       ; $7b22: $e7
    rst $18                                       ; $7b23: $df
    nop                                           ; $7b24: $00
    db $dd                                        ; $7b25: $dd
    cpl                                           ; $7b26: $2f
    ld c, d                                       ; $7b27: $4a
    ld e, l                                       ; $7b28: $5d
    ldh a, [$75]                                  ; $7b29: $f0 $75

Jump_03b_7b2b:
    dec c                                         ; $7b2b: $0d
    inc hl                                        ; $7b2c: $23
    ld sp, $cfbe                                  ; $7b2d: $31 $be $cf
    sbc c                                         ; $7b30: $99
    call nz, $e43d                                ; $7b31: $c4 $3d $e4
    ld a, [hl]                                    ; $7b34: $7e
    sub $f5                                       ; $7b35: $d6 $f5
    ei                                            ; $7b37: $fb
    adc [hl]                                      ; $7b38: $8e
    dec l                                         ; $7b39: $2d
    or $04                                        ; $7b3a: $f6 $04
    ld a, l                                       ; $7b3c: $7d
    di                                            ; $7b3d: $f3
    sbc $65                                       ; $7b3e: $de $65
    ld e, a                                       ; $7b40: $5f
    ld d, [hl]                                    ; $7b41: $56
    ld h, c                                       ; $7b42: $61
    rst $38                                       ; $7b43: $ff
    ld a, c                                       ; $7b44: $79
    halt                                          ; $7b45: $76
    jr z, @+$38                                   ; $7b46: $28 $36

    xor a                                         ; $7b48: $af
    inc sp                                        ; $7b49: $33

Call_03b_7b4a:
    adc c                                         ; $7b4a: $89
    ld [$7c4a], a                                 ; $7b4b: $ea $4a $7c
    add hl, hl                                    ; $7b4e: $29
    ld a, c                                       ; $7b4f: $79
    inc bc                                        ; $7b50: $03
    ld a, l                                       ; $7b51: $7d
    db $db                                        ; $7b52: $db
    or h                                          ; $7b53: $b4
    ld e, c                                       ; $7b54: $59
    ld e, h                                       ; $7b55: $5c
    and e                                         ; $7b56: $a3
    db $fc                                        ; $7b57: $fc
    or h                                          ; $7b58: $b4
    ld [$6d8c], a                                 ; $7b59: $ea $8c $6d
    sbc l                                         ; $7b5c: $9d
    or e                                          ; $7b5d: $b3
    cp b                                          ; $7b5e: $b8
    ld d, $5f                                     ; $7b5f: $16 $5f
    and $f0                                       ; $7b61: $e6 $f0
    ld d, a                                       ; $7b63: $57
    ccf                                           ; $7b64: $3f
    sbc d                                         ; $7b65: $9a
    ldh [$cf], a                                  ; $7b66: $e0 $cf
    ld [hl], e                                    ; $7b68: $73
    dec [hl]                                      ; $7b69: $35
    and l                                         ; $7b6a: $a5
    ld h, [hl]                                    ; $7b6b: $66
    ld a, c                                       ; $7b6c: $79
    rst $38                                       ; $7b6d: $ff
    scf                                           ; $7b6e: $37
    nop                                           ; $7b6f: $00
    cp l                                          ; $7b70: $bd
    ld a, [$bbf5]                                 ; $7b71: $fa $f5 $bb
    rla                                           ; $7b74: $17
    ret c                                         ; $7b75: $d8

    ld b, [hl]                                    ; $7b76: $46
    adc l                                         ; $7b77: $8d
    ld e, l                                       ; $7b78: $5d
    cp d                                          ; $7b79: $ba
    ld a, [$6f8b]                                 ; $7b7a: $fa $8b $6f
    ld sp, $ebe1                                  ; $7b7d: $31 $e1 $eb
    add [hl]                                      ; $7b80: $86
    cp c                                          ; $7b81: $b9
    sbc d                                         ; $7b82: $9a
    adc e                                         ; $7b83: $8b
    ld l, c                                       ; $7b84: $69
    ld [hl], c                                    ; $7b85: $71
    call nc, $001e                                ; $7b86: $d4 $1e $00
    cp l                                          ; $7b89: $bd
    inc de                                        ; $7b8a: $13
    ld d, a                                       ; $7b8b: $57
    dec l                                         ; $7b8c: $2d
    add hl, de                                    ; $7b8d: $19
    ld e, a                                       ; $7b8e: $5f
    and $d9                                       ; $7b8f: $e6 $d9
    and c                                         ; $7b91: $a1
    ret c                                         ; $7b92: $d8

    db $fc                                        ; $7b93: $fc
    ld a, [hl+]                                   ; $7b94: $2a
    ld e, a                                       ; $7b95: $5f
    jr z, jr_03b_7bcf                             ; $7b96: $28 $37

    nop                                           ; $7b98: $00
    ld a, l                                       ; $7b99: $7d
    ld [hl], e                                    ; $7b9a: $73
    ld d, $d7                                     ; $7b9b: $16 $d7
    jr z, jr_03b_7bd8                             ; $7b9d: $28 $39

    db $fd                                        ; $7b9f: $fd
    ld c, $65                                     ; $7ba0: $0e $65
    ld hl, sp-$02                                 ; $7ba2: $f8 $fe
    rst $20                                       ; $7ba4: $e7
    cp c                                          ; $7ba5: $b9
    ld a, [$6f8b]                                 ; $7ba6: $fa $8b $6f
    and [hl]                                      ; $7ba9: $a6
    dec h                                         ; $7baa: $25
    ld d, d                                       ; $7bab: $52
    ld l, a                                       ; $7bac: $6f
    nop                                           ; $7bad: $00
    ld a, l                                       ; $7bae: $7d
    inc de                                        ; $7baf: $13
    cp [hl]                                       ; $7bb0: $be
    sub b                                         ; $7bb1: $90
    sub d                                         ; $7bb2: $92
    ld d, e                                       ; $7bb3: $53
    ld b, d                                       ; $7bb4: $42
    ld c, [hl]                                    ; $7bb5: $4e
    ld [hl], d                                    ; $7bb6: $72
    ld d, $c7                                     ; $7bb7: $16 $c7
    dec b                                         ; $7bb9: $05
    rst $18                                       ; $7bba: $df
    ld a, [hl-]                                   ; $7bbb: $3a
    add a                                         ; $7bbc: $87
    dec hl                                        ; $7bbd: $2b
    xor l                                         ; $7bbe: $ad
    inc hl                                        ; $7bbf: $23
    add hl, sp                                    ; $7bc0: $39
    sbc a                                         ; $7bc1: $9f
    add sp, -$47                                  ; $7bc2: $e8 $b9
    jr nc, jr_03b_7bd7                            ; $7bc4: $30 $11

    ld a, [$db19]                                 ; $7bc6: $fa $19 $db
    ld a, [hl-]                                   ; $7bc9: $3a
    and a                                         ; $7bca: $a7
    ld e, h                                       ; $7bcb: $5c
    ldh a, [$0d]                                  ; $7bcc: $f0 $0d
    ld l, a                                       ; $7bce: $6f

jr_03b_7bcf:
    nop                                           ; $7bcf: $00
    db $dd                                        ; $7bd0: $dd
    cpl                                           ; $7bd1: $2f
    db $e3                                        ; $7bd2: $e3
    add d                                         ; $7bd3: $82
    adc a                                         ; $7bd4: $8f
    and e                                         ; $7bd5: $a3
    add hl, bc                                    ; $7bd6: $09

jr_03b_7bd7:
    cp [hl]                                       ; $7bd7: $be

jr_03b_7bd8:
    rst $08                                       ; $7bd8: $cf
    add hl, sp                                    ; $7bd9: $39
    db $fc                                        ; $7bda: $fc
    push de                                       ; $7bdb: $d5
    ld e, a                                       ; $7bdc: $5f
    ld a, h                                       ; $7bdd: $7c
    inc sp                                        ; $7bde: $33
    call Call_03b_7b16                            ; $7bdf: $cd $16 $7b
    xor [hl]                                      ; $7be2: $ae
    db $db                                        ; $7be3: $db
    ld a, c                                       ; $7be4: $79
    call nz, $a5f6                                ; $7be5: $c4 $f6 $a5
    rst $00                                       ; $7be8: $c7
    cp d                                          ; $7be9: $ba
    ld e, l                                       ; $7bea: $5d
    call c, Call_03b_4bef                         ; $7beb: $dc $ef $4b
    rst $10                                       ; $7bee: $d7
    ld l, d                                       ; $7bef: $6a
    ld l, $e8                                     ; $7bf0: $2e $e8
    ld a, [hl-]                                   ; $7bf2: $3a
    adc l                                         ; $7bf3: $8d
    ld a, [c]                                     ; $7bf4: $f2
    dec bc                                        ; $7bf5: $0b
    ld e, a                                       ; $7bf6: $5f
    rst $18                                       ; $7bf7: $df
    rst $20                                       ; $7bf8: $e7
    ld a, [hl]                                    ; $7bf9: $7e
    or l                                          ; $7bfa: $b5
    ld c, l                                       ; $7bfb: $4d
    rrca                                          ; $7bfc: $0f
    nop                                           ; $7bfd: $00
    cp l                                          ; $7bfe: $bd
    ld c, $c0                                     ; $7bff: $0e $c0
    ld h, c                                       ; $7c01: $61
    ld l, $c8                                     ; $7c02: $2e $c8
    ld b, l                                       ; $7c04: $45
    ld h, d                                       ; $7c05: $62
    di                                            ; $7c06: $f3
    add hl, sp                                    ; $7c07: $39
    ld [$94cf], a                                 ; $7c08: $ea $cf $94
    ld d, a                                       ; $7c0b: $57
    sbc $00                                       ; $7c0c: $de $00
    cp l                                          ; $7c0e: $bd
    ld d, [hl]                                    ; $7c0f: $56
    or a                                          ; $7c10: $b7
    ld b, l                                       ; $7c11: $45
    sbc e                                         ; $7c12: $9b
    call c, Call_000_0d95                         ; $7c13: $dc $95 $0d
    dec [hl]                                      ; $7c16: $35
    ld h, $ae                                     ; $7c17: $26 $ae
    ld [hl], b                                    ; $7c19: $70
    inc [hl]                                      ; $7c1a: $34
    pop bc                                        ; $7c1b: $c1
    sub a                                         ; $7c1c: $97
    call nz, $fc39                                ; $7c1d: $c4 $39 $fc
    push de                                       ; $7c20: $d5
    ld e, a                                       ; $7c21: $5f
    ld a, h                                       ; $7c22: $7c
    inc sp                                        ; $7c23: $33
    call $ef16                                    ; $7c24: $cd $16 $ef
    push af                                       ; $7c27: $f5
    ld [hl], l                                    ; $7c28: $75
    ld l, b                                       ; $7c29: $68
    ld a, [hl]                                    ; $7c2a: $7e
    and c                                         ; $7c2b: $a1
    di                                            ; $7c2c: $f3
    cp c                                          ; $7c2d: $b9
    jp nc, $f23a                                  ; $7c2e: $d2 $3a $f2

    and d                                         ; $7c31: $a2
    sbc h                                         ; $7c32: $9c
    rst $20                                       ; $7c33: $e7
    ld e, b                                       ; $7c34: $58
    jp z, Jump_000_00df                           ; $7c35: $ca $df $00

    ld a, l                                       ; $7c38: $7d
    ld [hl], e                                    ; $7c39: $73
    ld e, d                                       ; $7c3a: $5a
    ld [hl], l                                    ; $7c3b: $75
    ld hl, sp-$02                                 ; $7c3c: $f8 $fe
    rst $20                                       ; $7c3e: $e7
    cp c                                          ; $7c3f: $b9
    ld a, [$6f8b]                                 ; $7c40: $fa $8b $6f
    and [hl]                                      ; $7c43: $a6
    dec h                                         ; $7c44: $25
    ld d, d                                       ; $7c45: $52
    ld l, a                                       ; $7c46: $6f
    nop                                           ; $7c47: $00
    halt                                          ; $7c48: $76
    ld h, l                                       ; $7c49: $65
    and c                                         ; $7c4a: $a1
    ld h, h                                       ; $7c4b: $64
    dec [hl]                                      ; $7c4c: $35
    dec [hl]                                      ; $7c4d: $35
    ld h, l                                       ; $7c4e: $65
    sub a                                         ; $7c4f: $97
    cp b                                          ; $7c50: $b8
    ld h, $c2                                     ; $7c51: $26 $c2
    ld d, d                                       ; $7c53: $52
    ld d, [hl]                                    ; $7c54: $56
    ld [hl], d                                    ; $7c55: $72
    ld a, [$e91d]                                 ; $7c56: $fa $1d $e9
    cp d                                          ; $7c59: $ba
    ld bc, $aedd                                  ; $7c5a: $01 $dd $ae
    ld h, b                                       ; $7c5d: $60
    db $e4                                        ; $7c5e: $e4
    ld c, h                                       ; $7c5f: $4c
    ld [c], a                                     ; $7c60: $e2
    and d                                         ; $7c61: $a2
    ld e, e                                       ; $7c62: $5b
    db $fd                                        ; $7c63: $fd
    push bc                                       ; $7c64: $c5
    scf                                           ; $7c65: $37
    db $d3                                        ; $7c66: $d3
    ld l, h                                       ; $7c67: $6c
    ld [hl], c                                    ; $7c68: $71
    cp a                                          ; $7c69: $bf
    adc h                                         ; $7c6a: $8c
    ld a, [c]                                     ; $7c6b: $f2
    dec bc                                        ; $7c6c: $0b
    ld e, a                                       ; $7c6d: $5f
    ld [hl+], a                                   ; $7c6e: $22
    ld a, e                                       ; $7c6f: $7b
    nop                                           ; $7c70: $00
    ld a, l                                       ; $7c71: $7d
    ld [hl], e                                    ; $7c72: $73
    ld e, d                                       ; $7c73: $5a
    ld [hl], l                                    ; $7c74: $75
    add $b6                                       ; $7c75: $c6 $b6
    adc $79                                       ; $7c77: $ce $79
    ld a, [de]                                    ; $7c79: $1a
    dec de                                        ; $7c7a: $1b
    adc c                                         ; $7c7b: $89
    inc l                                         ; $7c7c: $2c
    ld a, c                                       ; $7c7d: $79
    inc bc                                        ; $7c7e: $03
    db $dd                                        ; $7c7f: $dd
    inc bc                                        ; $7c80: $03
    cp c                                          ; $7c81: $b9
    ret nc                                        ; $7c82: $d0

    pop de                                        ; $7c83: $d1
    inc de                                        ; $7c84: $13
    ld h, a                                       ; $7c85: $67
    ld [hl], c                                    ; $7c86: $71
    dec l                                         ; $7c87: $2d
    cp [hl]                                       ; $7c88: $be
    db $f4                                        ; $7c89: $f4
    ld e, h                                       ; $7c8a: $5c
    or a                                          ; $7c8b: $b7
    ld c, e                                       ; $7c8c: $4b
    ld e, h                                       ; $7c8d: $5c
    push de                                       ; $7c8e: $d5
    dec [hl]                                      ; $7c8f: $35
    adc h                                         ; $7c90: $8c
    inc d                                         ; $7c91: $14
    ld [$6463], a                                 ; $7c92: $ea $63 $64
    rrca                                          ; $7c95: $0f
    nop                                           ; $7c96: $00
    ld a, l                                       ; $7c97: $7d
    sbc d                                         ; $7c98: $9a
    db $fc                                        ; $7c99: $fc
    adc b                                         ; $7c9a: $88
    dec hl                                        ; $7c9b: $2b
    cp a                                          ; $7c9c: $bf
    ld c, [hl]                                    ; $7c9d: $4e
    db $eb                                        ; $7c9e: $eb
    sub h                                         ; $7c9f: $94
    sub [hl]                                      ; $7ca0: $96
    sub c                                         ; $7ca1: $91
    and $ef                                       ; $7ca2: $e6 $ef
    ld e, l                                       ; $7ca4: $5d
    sub $88                                       ; $7ca5: $d6 $88
    call nz, $f4c5                                ; $7ca7: $c4 $c5 $f4
    cp c                                          ; $7caa: $b9
    ret c                                         ; $7cab: $d8

    jp nz, $e79c                                  ; $7cac: $c2 $9c $e7

    ld c, d                                       ; $7caf: $4a
    db $eb                                        ; $7cb0: $eb
    ld c, b                                       ; $7cb1: $48

jr_03b_7cb2:
    ld [$000d], a                                 ; $7cb2: $ea $0d $00
    ld bc, $bf2f                                  ; $7cb5: $01 $2f $bf
    ld d, b                                       ; $7cb8: $50
    sbc $c4                                       ; $7cb9: $de $c4
    ld h, [hl]                                    ; $7cbb: $66
    ld e, [hl]                                    ; $7cbc: $5e
    ldh [$eb], a                                  ; $7cbd: $e0 $eb
    ld e, $a6                                     ; $7cbf: $1e $a6
    call z, $aae2                                 ; $7cc1: $cc $e2 $aa
    ld c, $73                                     ; $7cc4: $0e $73
    sub c                                         ; $7cc6: $91
    ld h, e                                       ; $7cc7: $63
    ld l, c                                       ; $7cc8: $69
    ld [hl], l                                    ; $7cc9: $75
    jp $fdd7                                      ; $7cca: $c3 $d7 $fd


    ld h, d                                       ; $7ccd: $62
    ld e, e                                       ; $7cce: $5b
    db $dd                                        ; $7ccf: $dd
    or h                                          ; $7cd0: $b4
    adc $9e                                       ; $7cd1: $ce $9e
    nop                                           ; $7cd3: $00
    add c                                         ; $7cd4: $81
    ld l, l                                       ; $7cd5: $6d
    pop hl                                        ; $7cd6: $e1
    db $eb                                        ; $7cd7: $eb
    db $eb                                        ; $7cd8: $eb
    inc a                                         ; $7cd9: $3c
    rst $00                                       ; $7cda: $c7
    ld d, d                                       ; $7cdb: $52
    ld e, $be                                     ; $7cdc: $1e $be
    ld hl, sp+$65                                 ; $7cde: $f8 $65
    dec d                                         ; $7ce0: $15
    or $9f                                        ; $7ce1: $f6 $9f
    ld [hl], d                                    ; $7ce3: $72
    call nc, Call_03b_576a                        ; $7ce4: $d4 $6a $57
    di                                            ; $7ce7: $f3
    ld b, $7d                                     ; $7ce8: $06 $7d
    sbc d                                         ; $7cea: $9a
    ld l, $7c                                     ; $7ceb: $2e $7c
    cpl                                           ; $7ced: $2f
    call nc, $ae61                                ; $7cee: $d4 $61 $ae
    and $3c                                       ; $7cf1: $e6 $3c
    ei                                            ; $7cf3: $fb
    dec a                                         ; $7cf4: $3d
    ld c, $db                                     ; $7cf5: $0e $db
    ld [$9e2f], a                                 ; $7cf7: $ea $2f $9e
    and [hl]                                      ; $7cfa: $a6
    ret                                           ; $7cfb: $c9


    or b                                          ; $7cfc: $b0
    xor l                                         ; $7cfd: $ad
    ld d, e                                       ; $7cfe: $53
    ld e, [hl]                                    ; $7cff: $5e

Call_03b_7d00:
    xor e                                         ; $7d00: $ab
    ld e, c                                       ; $7d01: $59
    cp a                                          ; $7d02: $bf
    ret nz                                        ; $7d03: $c0

    rst $30                                       ; $7d04: $f7
    ld l, d                                       ; $7d05: $6a
    inc sp                                        ; $7d06: $33
    adc e                                         ; $7d07: $8b
    db $e3                                        ; $7d08: $e3
    jr nc, jr_03b_7cb2                            ; $7d09: $30 $a7

    ld d, l                                       ; $7d0b: $55
    add a                                         ; $7d0c: $87
    rst $28                                       ; $7d0d: $ef
    ld a, a                                       ; $7d0e: $7f
    sbc [hl]                                      ; $7d0f: $9e
    and e                                         ; $7d10: $a3
    and $0d                                       ; $7d11: $e6 $0d
    nop                                           ; $7d13: $00
    ld a, l                                       ; $7d14: $7d
    inc de                                        ; $7d15: $13
    cp [hl]                                       ; $7d16: $be
    sub b                                         ; $7d17: $90
    sub d                                         ; $7d18: $92
    bit 7, [hl]                                   ; $7d19: $cb $7e
    ld e, a                                       ; $7d1b: $5f
    cp d                                          ; $7d1c: $ba
    and [hl]                                      ; $7d1d: $a6
    ld l, $6c                                     ; $7d1e: $2e $6c
    sub h                                         ; $7d20: $94
    rra                                           ; $7d21: $1f
    ld c, l                                       ; $7d22: $4d
    ldh a, [$a5]                                  ; $7d23: $f0 $a5
    cp h                                          ; $7d25: $bc
    sbc $eb                                       ; $7d26: $de $eb
    ld h, [hl]                                    ; $7d28: $66
    and a                                         ; $7d29: $a7
    pop af                                        ; $7d2a: $f1
    push bc                                       ; $7d2b: $c5
    and $07                                       ; $7d2c: $e6 $07
    cp c                                          ; $7d2e: $b9
    or a                                          ; $7d2f: $b7
    or $00                                        ; $7d30: $f6 $00
    ld bc, $c842                                  ; $7d32: $01 $42 $c8
    ld h, c                                       ; $7d35: $61
    db $fc                                        ; $7d36: $fc

jr_03b_7d37:
    ld de, $7e57                                  ; $7d37: $11 $57 $7e
    sbc l                                         ; $7d3a: $9d
    sub $29                                       ; $7d3b: $d6 $29
    dec l                                         ; $7d3d: $2d
    inc hl                                        ; $7d3e: $23
    call Call_03b_57ef                            ; $7d3f: $cd $ef $57
    ld a, [hl]                                    ; $7d42: $7e
    jp z, Jump_03b_5383                           ; $7d43: $ca $83 $53

    ld a, [hl]                                    ; $7d46: $7e
    ld bc, $0d0d                                  ; $7d47: $01 $0d $0d
    rst $28                                       ; $7d4a: $ef
    dec b                                         ; $7d4b: $05
    and h                                         ; $7d4c: $a4
    sub a                                         ; $7d4d: $97
    xor [hl]                                      ; $7d4e: $ae
    ld sp, hl                                     ; $7d4f: $f9
    sub a                                         ; $7d50: $97
    ret z                                         ; $7d51: $c8

    add hl, sp                                    ; $7d52: $39
    db $fc                                        ; $7d53: $fc
    add l                                         ; $7d54: $85
    ld c, l                                       ; $7d55: $4d

Call_03b_7d56:
    db $e3                                        ; $7d56: $e3
    rst $18                                       ; $7d57: $df
    nop                                           ; $7d58: $00
    ld a, l                                       ; $7d59: $7d
    sbc d                                         ; $7d5a: $9a
    ld l, $7c                                     ; $7d5b: $2e $7c
    cpl                                           ; $7d5d: $2f
    call nc, Call_000_1669                        ; $7d5e: $d4 $69 $16
    sbc e                                         ; $7d61: $9b
    rst $00                                       ; $7d62: $c7
    ld a, c                                       ; $7d63: $79
    sbc d                                         ; $7d64: $9a
    ld h, $b3                                     ; $7d65: $26 $b3
    jr c, jr_03b_7d37                             ; $7d67: $38 $ce

    sbc d                                         ; $7d69: $9a
    and e                                         ; $7d6a: $a3
    db $fc                                        ; $7d6b: $fc
    inc e                                         ; $7d6c: $1c
    cp $ea                                        ; $7d6d: $fe $ea
    cpl                                           ; $7d6f: $2f
    cp [hl]                                       ; $7d70: $be
    sbc c                                         ; $7d71: $99
    ld h, [hl]                                    ; $7d72: $66
    adc e                                         ; $7d73: $8b
    rst $30                                       ; $7d74: $f7
    ld a, [$2c70]                                 ; $7d75: $fa $70 $2c
    xor l                                         ; $7d78: $ad
    ld l, [hl]                                    ; $7d79: $6e
    ld hl, sp-$6e                                 ; $7d7a: $f8 $92
    cp b                                          ; $7d7c: $b8
    ld a, [$77d1]                                 ; $7d7d: $fa $d1 $77
    and c                                         ; $7d80: $a1
    rst $08                                       ; $7d81: $cf
    sbc d                                         ; $7d82: $9a
    ld a, e                                       ; $7d83: $7b
    adc e                                         ; $7d84: $8b
    or e                                          ; $7d85: $b3
    cp c                                          ; $7d86: $b9
    ld bc, $137d                                  ; $7d87: $01 $7d $13
    ld a, $4d                                     ; $7d8a: $3e $4d
    db $eb                                        ; $7d8c: $eb
    inc e                                         ; $7d8d: $1c
    ld c, $b3                                     ; $7d8e: $0e $b3
    ld a, [c]                                     ; $7d90: $f2
    ld sp, $b267                                  ; $7d91: $31 $67 $b2

Jump_03b_7d94:
    adc $c5                                       ; $7d94: $ce $c5

jr_03b_7d96:
    inc bc                                        ; $7d96: $03
    ld l, [hl]                                    ; $7d97: $6e
    nop                                           ; $7d98: $00
    ld bc, $9d92                                  ; $7d99: $01 $92 $9d
    rst $28                                       ; $7d9c: $ef
    inc d                                         ; $7d9d: $14
    sub $c4                                       ; $7d9e: $d6 $c4
    ret z                                         ; $7da0: $c8

    push bc                                       ; $7da1: $c5
    ld b, [hl]                                    ; $7da2: $46
    and h                                         ; $7da3: $a4
    adc $e2                                       ; $7da4: $ce $e2
    cp b                                          ; $7da6: $b8
    add [hl]                                      ; $7da7: $86
    dec d                                         ; $7da8: $15
    ld l, d                                       ; $7da9: $6a
    ld l, h                                       ; $7daa: $6c
    ret nc                                        ; $7dab: $d0

    set 5, d                                      ; $7dac: $cb $ea
    ld l, $5d                                     ; $7dae: $2e $5d
    ld hl, sp-$0e                                 ; $7db0: $f8 $f2
    ei                                            ; $7db2: $fb
    ld d, b                                       ; $7db3: $50
    adc b                                         ; $7db4: $88
    sbc [hl]                                      ; $7db5: $9e
    or d                                          ; $7db6: $b2
    ld e, a                                       ; $7db7: $5f
    ldh a, [$0d]                                  ; $7db8: $f0 $0d
    and l                                         ; $7dba: $a5
    db $e4                                        ; $7dbb: $e4
    dec c                                         ; $7dbc: $0d
    nop                                           ; $7dbd: $00
    rla                                           ; $7dbe: $17
    push hl                                       ; $7dbf: $e5
    or h                                          ; $7dc0: $b4
    ld de, $c263                                  ; $7dc1: $11 $63 $c2
    rst $30                                       ; $7dc4: $f7
    rlca                                          ; $7dc5: $07
    ldh [$30], a                                  ; $7dc6: $e0 $30
    rla                                           ; $7dc8: $17
    ld h, h                                       ; $7dc9: $64
    sbc l                                         ; $7dca: $9d
    cp d                                          ; $7dcb: $ba
    ld d, d                                       ; $7dcc: $52
    ld [$cfbd], sp                                ; $7dcd: $08 $bd $cf
    db $fd                                        ; $7dd0: $fd
    xor b                                         ; $7dd1: $a8
    sbc h                                         ; $7dd2: $9c
    ld sp, hl                                     ; $7dd3: $f9
    ret nc                                        ; $7dd4: $d0

    ld h, $ba                                     ; $7dd5: $26 $ba
    sub d                                         ; $7dd7: $92
    scf                                           ; $7dd8: $37
    nop                                           ; $7dd9: $00
    db $dd                                        ; $7dda: $dd
    cpl                                           ; $7ddb: $2f
    ld [hl], c                                    ; $7ddc: $71
    ld d, l                                       ; $7ddd: $55
    ld d, a                                       ; $7dde: $57
    ld a, [bc]                                    ; $7ddf: $0a
    dec hl                                        ; $7de0: $2b
    xor a                                         ; $7de1: $af
    ei                                            ; $7de2: $fb
    and b                                         ; $7de3: $a0
    dec c                                         ; $7de4: $0d
    ld a, h                                       ; $7de5: $7c
    ld a, l                                       ; $7de6: $7d
    ld e, c                                       ; $7de7: $59
    ld l, c                                       ; $7de8: $69
    and l                                         ; $7de9: $a5
    or b                                          ; $7dea: $b0
    daa                                           ; $7deb: $27
    nop                                           ; $7dec: $00
    sub a                                         ; $7ded: $97
    db $e3                                        ; $7dee: $e3
    rst $28                                       ; $7def: $ef
    ld d, d                                       ; $7df0: $52
    sbc d                                         ; $7df1: $9a
    inc d                                         ; $7df2: $14
    rst $38                                       ; $7df3: $ff
    ld a, $e5                                     ; $7df4: $3e $e5
    ld h, a                                       ; $7df6: $67
    ld [hl], c                                    ; $7df7: $71
    ld e, h                                       ; $7df8: $5c
    call Call_03b_7f05                            ; $7df9: $cd $05 $7f
    call nz, Call_03b_7b4a                        ; $7dfc: $c4 $4a $7b
    sbc a                                         ; $7dff: $9f
    xor e                                         ; $7e00: $ab
    db $db                                        ; $7e01: $db
    cp [hl]                                       ; $7e02: $be
    db $e3                                        ; $7e03: $e3
    ld e, b                                       ; $7e04: $58
    cp $5e                                        ; $7e05: $fe $5e
    ldh [rPCM34], a                               ; $7e07: $e0 $77
    jr c, jr_03b_7d96                             ; $7e09: $38 $8b

    db $e3                                        ; $7e0b: $e3
    ld l, d                                       ; $7e0c: $6a
    ld l, $4b                                     ; $7e0d: $2e $4b
    and l                                         ; $7e0f: $a5
    ld sp, hl                                     ; $7e10: $f9
    sbc h                                         ; $7e11: $9c
    rst $20                                       ; $7e12: $e7
    jp z, Jump_03b_4ceb                           ; $7e13: $ca $eb $4c

    ld [$0deb], a                                 ; $7e16: $ea $eb $0d
    nop                                           ; $7e19: $00
    db $dd                                        ; $7e1a: $dd
    ld a, d                                       ; $7e1b: $7a
    sub a                                         ; $7e1c: $97
    ld d, a                                       ; $7e1d: $57
    or $58                                        ; $7e1e: $f6 $58
    or a                                          ; $7e20: $b7
    ld e, [hl]                                    ; $7e21: $5e
    xor e                                         ; $7e22: $ab
    jr c, jr_03b_7e8f                             ; $7e23: $38 $6a

    sub h                                         ; $7e25: $94
    rst $10                                       ; $7e26: $d7
    ld d, c                                       ; $7e27: $51
    ld c, l                                       ; $7e28: $4d
    halt                                          ; $7e29: $76
    ld e, [hl]                                    ; $7e2a: $5e
    ld a, e                                       ; $7e2b: $7b
    nop                                           ; $7e2c: $00
    db $dd                                        ; $7e2d: $dd
    ld [bc], a                                    ; $7e2e: $02
    ld [de], a                                    ; $7e2f: $12
    jp hl                                         ; $7e30: $e9


    ld d, a                                       ; $7e31: $57
    ld a, [hl]                                    ; $7e32: $7e
    push af                                       ; $7e33: $f5

Jump_03b_7e34:
    ld h, e                                       ; $7e34: $63
    adc $53                                       ; $7e35: $ce $53
    ld l, b                                       ; $7e37: $68
    add d                                         ; $7e38: $82
    ccf                                           ; $7e39: $3f
    call $708e                                    ; $7e3a: $cd $8e $70
    dec d                                         ; $7e3d: $15
    ld b, a                                       ; $7e3e: $47
    adc l                                         ; $7e3f: $8d
    ld a, [c]                                     ; $7e40: $f2
    ld a, [hl-]                                   ; $7e41: $3a
    xor d                                         ; $7e42: $aa
    ret                                           ; $7e43: $c9


    adc $eb                                       ; $7e44: $ce $eb
    xor h                                         ; $7e46: $ac
    di                                            ; $7e47: $f3
    inc [hl]                                      ; $7e48: $34
    call $d0ef                                    ; $7e49: $cd $ef $d0
    ld e, [hl]                                    ; $7e4c: $5e
    ld [hl+], a                                   ; $7e4d: $22
    xor l                                         ; $7e4e: $ad
    di                                            ; $7e4f: $f3
    add a                                         ; $7e50: $87
    or $00                                        ; $7e51: $f6 $00
    db $dd                                        ; $7e53: $dd
    ld a, d                                       ; $7e54: $7a
    adc c                                         ; $7e55: $89
    or h                                          ; $7e56: $b4
    adc $f7                                       ; $7e57: $ce $f7
    nop                                           ; $7e59: $00
    db $dd                                        ; $7e5a: $dd
    ld a, d                                       ; $7e5b: $7a
    adc c                                         ; $7e5c: $89
    or h                                          ; $7e5d: $b4
    adc $f7                                       ; $7e5e: $ce $f7
    nop                                           ; $7e60: $00
    db $dd                                        ; $7e61: $dd
    ld a, d                                       ; $7e62: $7a
    adc c                                         ; $7e63: $89
    or h                                          ; $7e64: $b4
    adc $f7                                       ; $7e65: $ce $f7
    nop                                           ; $7e67: $00
    db $dd                                        ; $7e68: $dd
    xor [hl]                                      ; $7e69: $ae
    ld [hl], b                                    ; $7e6a: $70
    inc l                                         ; $7e6b: $2c
    dec d                                         ; $7e6c: $15
    xor $2d                                       ; $7e6d: $ee $2d
    adc $06                                       ; $7e6f: $ce $06
    ld a, $13                                     ; $7e71: $3e $13
    ld l, h                                       ; $7e73: $6c
    ld h, $7b                                     ; $7e74: $26 $7b
    nop                                           ; $7e76: $00
    cp l                                          ; $7e77: $bd
    xor h                                         ; $7e78: $ac
    ld d, [hl]                                    ; $7e79: $56
    db $eb                                        ; $7e7a: $eb
    ld a, l                                       ; $7e7b: $7d
    rst $18                                       ; $7e7c: $df
    nop                                           ; $7e7d: $00
    ld bc, $342f                                  ; $7e7e: $01 $2f $34
    sbc h                                         ; $7e81: $9c
    push bc                                       ; $7e82: $c5
    ld [hl], c                                    ; $7e83: $71
    sub c                                         ; $7e84: $91
    dec bc                                        ; $7e85: $0b
    cp [hl]                                       ; $7e86: $be
    ld c, [hl]                                    ; $7e87: $4e
    ld [hl-], a                                   ; $7e88: $32
    and $ca                                       ; $7e89: $e6 $ca
    xor a                                         ; $7e8b: $af
    halt                                          ; $7e8c: $76
    rlca                                          ; $7e8d: $07
    db $d3                                        ; $7e8e: $d3

jr_03b_7e8f:
    db $fc                                        ; $7e8f: $fc
    cp l                                          ; $7e90: $bd
    ld c, e                                       ; $7e91: $4b
    inc e                                         ; $7e92: $1c
    add a                                         ; $7e93: $87
    rst $28                                       ; $7e94: $ef
    dec de                                        ; $7e95: $1b
    and a                                         ; $7e96: $a7
    ld e, h                                       ; $7e97: $5c
    db $ed                                        ; $7e98: $ed
    ld e, b                                       ; $7e99: $58
    ld sp, hl                                     ; $7e9a: $f9
    ld h, c                                       ; $7e9b: $61
    ld e, e                                       ; $7e9c: $5b
    push bc                                       ; $7e9d: $c5
    or c                                          ; $7e9e: $b1

Jump_03b_7e9f:
    ld [hl], b                                    ; $7e9f: $70
    ld [hl], l                                    ; $7ea0: $75
    inc hl                                        ; $7ea1: $23
    ld b, [hl]                                    ; $7ea2: $46
    ld a, c                                       ; $7ea3: $79
    ld e, l                                       ; $7ea4: $5d
    add hl, hl                                    ; $7ea5: $29
    xor h                                         ; $7ea6: $ac
    db $e4                                        ; $7ea7: $e4
    ld a, [hl]                                    ; $7ea8: $7e
    call nc, $99c8                                ; $7ea9: $d4 $c8 $99
    ld h, b                                       ; $7eac: $60
    inc sp                                        ; $7ead: $33
    cp c                                          ; $7eae: $b9
    ld e, a                                       ; $7eaf: $5f
    ld sp, hl                                     ; $7eb0: $f9
    ld de, $29ab                                  ; $7eb1: $11 $ab $29
    dec [hl]                                      ; $7eb4: $35
    push bc                                       ; $7eb5: $c5
    and $6f                                       ; $7eb6: $e6 $6f
    nop                                           ; $7eb8: $00
    db $dd                                        ; $7eb9: $dd
    ld l, $78                                     ; $7eba: $2e $78
    ld hl, sp-$06                                 ; $7ebc: $f8 $fa
    dec a                                         ; $7ebe: $3d
    ld a, h                                       ; $7ebf: $7c
    db $fd                                        ; $7ec0: $fd
    cp [hl]                                       ; $7ec1: $be
    rst $00                                       ; $7ec2: $c7
    ld l, $23                                     ; $7ec3: $2e $23
    ld a, d                                       ; $7ec5: $7a
    or c                                          ; $7ec6: $b1
    ld sp, hl                                     ; $7ec7: $f9
    and [hl]                                      ; $7ec8: $a6
    or e                                          ; $7ec9: $b3
    jr c, jr_03b_7efa                             ; $7eca: $38 $2e

    ld hl, sp+$1d                                 ; $7ecc: $f8 $1d
    jp z, Jump_03b_4d2a                           ; $7ece: $ca $2a $4d

    ld h, e                                       ; $7ed1: $63
    ld c, [hl]                                    ; $7ed2: $4e
    db $dd                                        ; $7ed3: $dd
    call z, $c3cb                                 ; $7ed4: $cc $cb $c3
    rst $10                                       ; $7ed7: $d7
    adc l                                         ; $7ed8: $8d
    ld h, l                                       ; $7ed9: $65
    or l                                          ; $7eda: $b5
    or e                                          ; $7edb: $b3
    xor [hl]                                      ; $7edc: $ae
    sub e                                         ; $7edd: $93
    sbc l                                         ; $7ede: $9d
    db $ec                                        ; $7edf: $ec
    ld bc, $dd00                                  ; $7ee0: $01 $00 $dd
    ld a, d                                       ; $7ee3: $7a
    ld [hl], a                                    ; $7ee4: $77
    sub l                                         ; $7ee5: $95
    ld a, [c]                                     ; $7ee6: $f2
    sub c                                         ; $7ee7: $91
    ldh a, [$f5]                                  ; $7ee8: $f0 $f5
    ld sp, hl                                     ; $7eea: $f9
    ld d, d                                       ; $7eeb: $52
    sbc l                                         ; $7eec: $9d
    sub $1e                                       ; $7eed: $d6 $1e
    nop                                           ; $7eef: $00
    db $dd                                        ; $7ef0: $dd
    cpl                                           ; $7ef1: $2f
    ld [hl], c                                    ; $7ef2: $71
    ld d, l                                       ; $7ef3: $55
    ld b, a                                       ; $7ef4: $47
    dec e                                         ; $7ef5: $1d
    dec [hl]                                      ; $7ef6: $35
    ld a, e                                       ; $7ef7: $7b
    ld [bc], a                                    ; $7ef8: $02
    halt                                          ; $7ef9: $76

jr_03b_7efa:
    cp d                                          ; $7efa: $ba
    ld a, [c]                                     ; $7efb: $f2
    adc e                                         ; $7efc: $8b
    adc c                                         ; $7efd: $89
    sub c                                         ; $7efe: $91
    ld h, d                                       ; $7eff: $62
    di                                            ; $7f00: $f3
    and e                                         ; $7f01: $a3
    cp $2c                                        ; $7f02: $fe $2c
    adc [hl]                                      ; $7f04: $8e

Call_03b_7f05:
    dec hl                                        ; $7f05: $2b
    ld e, h                                       ; $7f06: $5c
    ldh a, [rBGP]                                 ; $7f07: $f0 $47
    xor h                                         ; $7f09: $ac
    or h                                          ; $7f0a: $b4
    rst $30                                       ; $7f0b: $f7
    cp c                                          ; $7f0c: $b9
    rst $18                                       ; $7f0d: $df
    ld b, l                                       ; $7f0e: $45
    adc c                                         ; $7f0f: $89
    ld d, b                                       ; $7f10: $50
    daa                                           ; $7f11: $27
    ld h, e                                       ; $7f12: $63
    call z, $ea7a                                 ; $7f13: $cc $7a $ea
    or $1d                                        ; $7f16: $f6 $1d
    rst $00                                       ; $7f18: $c7
    ld a, [c]                                     ; $7f19: $f2
    scf                                           ; $7f1a: $37
    nop                                           ; $7f1b: $00
    db $dd                                        ; $7f1c: $dd
    db $ec                                        ; $7f1d: $ec
    ld [hl], h                                    ; $7f1e: $74
    push hl                                       ; $7f1f: $e5
    ld [hl], a                                    ; $7f20: $77
    add hl, hl                                    ; $7f21: $29
    ld c, l                                       ; $7f22: $4d
    adc d                                         ; $7f23: $8a
    ld a, a                                       ; $7f24: $7f
    sbc a                                         ; $7f25: $9f
    ld a, [c]                                     ; $7f26: $f2
    di                                            ; $7f27: $f3
    ld e, h                                       ; $7f28: $5c
    ld e, a                                       ; $7f29: $5f
    ld d, [hl]                                    ; $7f2a: $56
    ld e, d                                       ; $7f2b: $5a

jr_03b_7f2c:
    add hl, hl                                    ; $7f2c: $29
    db $ec                                        ; $7f2d: $ec
    or c                                          ; $7f2e: $b1
    ld l, [hl]                                    ; $7f2f: $6e
    rst $20                                       ; $7f30: $e7
    or b                                          ; $7f31: $b0
    ld [c], a                                     ; $7f32: $e2
    xor d                                         ; $7f33: $aa
    sub [hl]                                      ; $7f34: $96
    ld a, [bc]                                    ; $7f35: $0a
    sub l                                         ; $7f36: $95
    push hl                                       ; $7f37: $e5
    ld a, e                                       ; $7f38: $7b
    nop                                           ; $7f39: $00
    db $dd                                        ; $7f3a: $dd
    xor [hl]                                      ; $7f3b: $ae
    jr nz, jr_03b_7f2c                            ; $7f3c: $20 $ee

    rst $10                                       ; $7f3e: $d7
    ld [hl], c                                    ; $7f3f: $71
    ld l, d                                       ; $7f40: $6a
    ld e, [hl]                                    ; $7f41: $5e
    jp z, Jump_000_17c3                           ; $7f42: $ca $c3 $17

    sub b                                         ; $7f45: $90
    ld sp, $7a52                                  ; $7f46: $31 $52 $7a
    nop                                           ; $7f49: $00
    db $dd                                        ; $7f4a: $dd
    adc $6e                                       ; $7f4b: $ce $6e
    call nz, $2985                                ; $7f4d: $c4 $85 $29
    adc e                                         ; $7f50: $8b
    dec c                                         ; $7f51: $0d
    ld a, $fb                                     ; $7f52: $3e $fb
    rla                                           ; $7f54: $17
    or c                                          ; $7f55: $b1
    or $00                                        ; $7f56: $f6 $00
    or $2f                                        ; $7f58: $f6 $2f
    ld h, d                                       ; $7f5a: $62
    add l                                         ; $7f5b: $85
    xor a                                         ; $7f5c: $af
    dec de                                        ; $7f5d: $1b
    and [hl]                                      ; $7f5e: $a6
    ld l, $4c                                     ; $7f5f: $2e $4c
    cpl                                           ; $7f61: $2f
    ld [hl], $af                                  ; $7f62: $36 $af
    dec bc                                        ; $7f64: $0b
    ld a, [hl]                                    ; $7f65: $7e
    add a                                         ; $7f66: $87
    or d                                          ; $7f67: $b2
    sbc d                                         ; $7f68: $9a
    or c                                          ; $7f69: $b1
    ld sp, hl                                     ; $7f6a: $f9
    call c, $a62f                                 ; $7f6b: $dc $2f $a6
    ld c, a                                       ; $7f6e: $4f
    dec e                                         ; $7f6f: $1d
    ld [hl], c                                    ; $7f70: $71
    ld c, $57                                     ; $7f71: $0e $57
    ld l, h                                       ; $7f73: $6c
    or d                                          ; $7f74: $b2
    rlca                                          ; $7f75: $07
    nop                                           ; $7f76: $00
    db $dd                                        ; $7f77: $dd
    ld a, [$d2b2]                                 ; $7f78: $fa $b2 $d2
    ld c, d                                       ; $7f7b: $4a
    ld h, c                                       ; $7f7c: $61
    adc a                                         ; $7f7d: $8f
    ld [hl], l                                    ; $7f7e: $75
    rst $28                                       ; $7f7f: $ef
    ld l, l                                       ; $7f80: $6d
    ld e, e                                       ; $7f81: $5b
    rst $20                                       ; $7f82: $e7
    xor b                                         ; $7f83: $a8
    or c                                          ; $7f84: $b1
    ld c, e                                       ; $7f85: $4b
    ld a, e                                       ; $7f86: $7b
    ld [bc], a                                    ; $7f87: $02
    rla                                           ; $7f88: $17
    db $fd                                        ; $7f89: $fd
    sub h                                         ; $7f8a: $94
    rlca                                          ; $7f8b: $07
    and a                                         ; $7f8c: $a7
    db $fc                                        ; $7f8d: $fc
    ld [bc], a                                    ; $7f8e: $02
    or d                                          ; $7f8f: $b2
    xor [hl]                                      ; $7f90: $ae
    ld d, $5a                                     ; $7f91: $16 $5a
    ld d, a                                       ; $7f93: $57
    ld [hl], e                                    ; $7f94: $73
    pop bc                                        ; $7f95: $c1
    sbc a                                         ; $7f96: $9f
    ld [hl], c                                    ; $7f97: $71
    ld a, [c]                                     ; $7f98: $f2
    ld a, $47                                     ; $7f99: $3e $47
    ld e, h                                       ; $7f9b: $5c
    ld sp, hl                                     ; $7f9c: $f9
    ld de, $29ab                                  ; $7f9d: $11 $ab $29
    dec [hl]                                      ; $7fa0: $35
    push bc                                       ; $7fa1: $c5
    and $6f                                       ; $7fa2: $e6 $6f
    nop                                           ; $7fa4: $00
    or $1c                                        ; $7fa5: $f6 $1c
    dec [hl]                                      ; $7fa7: $35
    cp [hl]                                       ; $7fa8: $be
    rst $08                                       ; $7fa9: $cf
    ld h, l                                       ; $7faa: $65
    ld b, a                                       ; $7fab: $47
    add hl, hl                                    ; $7fac: $29
    sub l                                         ; $7fad: $95
    ld b, a                                       ; $7fae: $47
    sbc a                                         ; $7faf: $9f
    adc e                                         ; $7fb0: $8b
    ld l, [hl]                                    ; $7fb1: $6e
    ld hl, $8e2d                                  ; $7fb2: $21 $2d $8e
    rlca                                          ; $7fb5: $07
    rst $38                                       ; $7fb6: $ff
    cp [hl]                                       ; $7fb7: $be
    ld b, d                                       ; $7fb8: $42
    adc h                                         ; $7fb9: $8c
    ld c, [hl]                                    ; $7fba: $4e
    ld e, $3e                                     ; $7fbb: $1e $3e
    ei                                            ; $7fbd: $fb
    rla                                           ; $7fbe: $17
    or c                                          ; $7fbf: $b1
    ld l, $20                                     ; $7fc0: $2e $20
    ld h, e                                       ; $7fc2: $63
    and h                                         ; $7fc3: $a4
    call c, Call_03b_7d00                         ; $7fc4: $dc $00 $7d
    ld [$befb], a                                 ; $7fc7: $ea $fb $be
    add hl, de                                    ; $7fca: $19
    cp h                                          ; $7fcb: $bc
    rst $28                                       ; $7fcc: $ef
    dec sp                                        ; $7fcd: $3b
    and a                                         ; $7fce: $a7
    db $fc                                        ; $7fcf: $fc
    ei                                            ; $7fd0: $fb
    cp [hl]                                       ; $7fd1: $be
    ld bc, $737d                                  ; $7fd2: $01 $7d $73
    dec d                                         ; $7fd5: $15
    rst $00                                       ; $7fd6: $c7

Call_03b_7fd7:
    ld d, d                                       ; $7fd7: $52
    ld a, c                                       ; $7fd8: $79
    db $dd                                        ; $7fd9: $dd
    cpl                                           ; $7fda: $2f
    ld hl, sp-$7a                                 ; $7fdb: $f8 $86
    ld d, d                                       ; $7fdd: $52
    ld [hl], d                                    ; $7fde: $72
    db $fd                                        ; $7fdf: $fd
    cp [hl]                                       ; $7fe0: $be
    xor $d2                                       ; $7fe1: $ee $d2
    ld a, e                                       ; $7fe3: $7b
    ld d, a                                       ; $7fe4: $57
    rst $38                                       ; $7fe5: $ff
    add d                                         ; $7fe6: $82
    rst $18                                       ; $7fe7: $df
    add hl, hl                                    ; $7fe8: $29
    cpl                                           ; $7fe9: $2f
    xor h                                         ; $7fea: $ac
    ld d, e                                       ; $7feb: $53
    ld d, a                                       ; $7fec: $57
    inc e                                         ; $7fed: $1c
    and c                                         ; $7fee: $a1
    cp h                                          ; $7fef: $bc
    rla                                           ; $7ff0: $17
    ret z                                         ; $7ff1: $c8

    cp l                                          ; $7ff2: $bd
    ld sp, hl                                     ; $7ff3: $f9
    adc [hl]                                      ; $7ff4: $8e
    db $ed                                        ; $7ff5: $ed
    jp z, $94cf                                   ; $7ff6: $ca $cf $94

    ld d, a                                       ; $7ff9: $57
    sbc $00                                       ; $7ffa: $de $00
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
