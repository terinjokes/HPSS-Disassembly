; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

    ld d, c                                       ; $4000: $51
    dec de                                        ; $4001: $1b
    add e                                         ; $4002: $83
    daa                                           ; $4003: $27
    ld a, b                                       ; $4004: $78
    db $fc                                        ; $4005: $fc
    ld [$e2a5], a                                 ; $4006: $ea $a5 $e2
    ld a, a                                       ; $4009: $7f
    or e                                          ; $400a: $b3
    dec sp                                        ; $400b: $3b
    dec de                                        ; $400c: $1b
    ld [hl-], a                                   ; $400d: $32
    call c, $c9e0                                 ; $400e: $dc $e0 $c9
    ccf                                           ; $4011: $3f
    cp d                                          ; $4012: $ba
    and $6d                                       ; $4013: $e6 $6d
    cp $27                                        ; $4015: $fe $27
    push de                                       ; $4017: $d5
    ccf                                           ; $4018: $3f
    xor e                                         ; $4019: $ab
    ld c, [hl]                                    ; $401a: $4e
    ld [hl], b                                    ; $401b: $70
    inc a                                         ; $401c: $3c
    ld h, h                                       ; $401d: $64
    db $18, $b5                                   ; $401e: $18 $b5
    jr @-$18                                      ; $4020: $18 $e6

    cp b                                          ; $4022: $b8
    ld l, l                                       ; $4023: $6d
    rst $30                                       ; $4024: $f7
    db $e4                                        ; $4025: $e4
    ld h, [hl]                                    ; $4026: $66
    adc a                                         ; $4027: $8f
    adc $10                                       ; $4028: $ce $10
    ld bc, $031b                                  ; $402a: $01 $1b $03
    ret nz                                        ; $402d: $c0

    pop de                                        ; $402e: $d1
    daa                                           ; $402f: $27
    ld l, d                                       ; $4030: $6a
    rst $00                                       ; $4031: $c7
    sbc l                                         ; $4032: $9d
    ld a, d                                       ; $4033: $7a
    push hl                                       ; $4034: $e5
    ld a, $ad                                     ; $4035: $3e $ad
    sub [hl]                                      ; $4037: $96
    cp b                                          ; $4038: $b8
    ld e, $29                                     ; $4039: $1e $29
    ld a, [c]                                     ; $403b: $f2
    bit 4, a                                      ; $403c: $cb $67
    ld b, e                                       ; $403e: $43
    and [hl]                                      ; $403f: $a6
    ld e, b                                       ; $4040: $58
    rst $38                                       ; $4041: $ff
    add a                                         ; $4042: $87
    call nz, $ea40                                ; $4043: $c4 $40 $ea
    scf                                           ; $4046: $37
    ld b, l                                       ; $4047: $45
    ld b, d                                       ; $4048: $42
    jr nz, jr_051_404d                            ; $4049: $20 $02

    dec de                                        ; $404b: $1b
    add e                                         ; $404c: $83

jr_051_404d:
    add a                                         ; $404d: $87
    ld [$1075], a                                 ; $404e: $ea $75 $10
    db $d3                                        ; $4051: $d3
    ld [hl], $7c                                  ; $4052: $36 $7c
    call c, $c7a9                                 ; $4054: $dc $a9 $c7
    db $fd                                        ; $4057: $fd
    ret z                                         ; $4058: $c8

    cp [hl]                                       ; $4059: $be
    ld [de], a                                    ; $405a: $12
    xor a                                         ; $405b: $af
    ccf                                           ; $405c: $3f
    push bc                                       ; $405d: $c5
    inc [hl]                                      ; $405e: $34
    ld l, l                                       ; $405f: $6d
    ld b, a                                       ; $4060: $47
    ld sp, hl                                     ; $4061: $f9
    cp a                                          ; $4062: $bf
    dec sp                                        ; $4063: $3b
    ldh a, [$c9]                                  ; $4064: $f0 $c9
    or l                                          ; $4066: $b5
    or $7a                                        ; $4067: $f6 $7a
    ld c, d                                       ; $4069: $4a
    ld e, e                                       ; $406a: $5b
    ld [hl+], a                                   ; $406b: $22
    ld [hl], $7a                                  ; $406c: $36 $7a
    ld [hl], $64                                  ; $406e: $36 $64
    ld hl, $7e2a                                  ; $4070: $21 $2a $7e
    ld h, $b5                                     ; $4073: $26 $b5
    ld a, h                                       ; $4075: $7c
    ld h, h                                       ; $4076: $64
    inc hl                                        ; $4077: $23
    ld a, [hl+]                                   ; $4078: $2a
    ld h, h                                       ; $4079: $64
    ld [hl], $7c                                  ; $407a: $36 $7c
    jp c, $cbd1                                   ; $407c: $da $d1 $cb

    ld b, c                                       ; $407f: $41
    ld a, [hl]                                    ; $4080: $7e
    jr c, jr_051_40c7                             ; $4081: $38 $44

    dec de                                        ; $4083: $1b
    inc bc                                        ; $4084: $03
    ld d, b                                       ; $4085: $50
    and l                                         ; $4086: $a5
    ld c, b                                       ; $4087: $48
    pop hl                                        ; $4088: $e1
    ld e, $b2                                     ; $4089: $1e $b2
    dec sp                                        ; $408b: $3b
    ld e, e                                       ; $408c: $5b
    inc [hl]                                      ; $408d: $34
    ld e, d                                       ; $408e: $5a
    ld a, [hl+]                                   ; $408f: $2a
    rst $28                                       ; $4090: $ef
    adc d                                         ; $4091: $8a
    ld b, a                                       ; $4092: $47
    ld c, e                                       ; $4093: $4b
    ld sp, hl                                     ; $4094: $f9
    dec [hl]                                      ; $4095: $35
    ld [de], a                                    ; $4096: $12
    rst $38                                       ; $4097: $ff
    rst $10                                       ; $4098: $d7
    ret nz                                        ; $4099: $c0

    daa                                           ; $409a: $27
    rst $10                                       ; $409b: $d7
    jp c, $29eb                                   ; $409c: $da $eb $29

    db $ed                                        ; $409f: $ed
    sub a                                         ; $40a0: $97
    ld a, [hl-]                                   ; $40a1: $3a
    db $db                                        ; $40a2: $db
    add e                                         ; $40a3: $83
    ld sp, hl                                     ; $40a4: $f9
    inc l                                         ; $40a5: $2c
    dec l                                         ; $40a6: $2d
    jp z, $a1ee                                   ; $40a7: $ca $ee $a1

    ld a, [de]                                    ; $40aa: $1a
    cp a                                          ; $40ab: $bf
    sub c                                         ; $40ac: $91
    ld hl, $1b02                                  ; $40ad: $21 $02 $1b
    add e                                         ; $40b0: $83
    di                                            ; $40b1: $f3
    sub b                                         ; $40b2: $90
    add l                                         ; $40b3: $85
    ret c                                         ; $40b4: $d8

    ld a, [de]                                    ; $40b5: $1a
    ld hl, sp-$1c                                 ; $40b6: $f8 $e4
    ld e, d                                       ; $40b8: $5a
    ld a, e                                       ; $40b9: $7b
    dec a                                         ; $40ba: $3d
    and l                                         ; $40bb: $a5
    ld e, c                                       ; $40bc: $59
    ld b, e                                       ; $40bd: $43
    xor e                                         ; $40be: $ab
    ld h, e                                       ; $40bf: $63
    reti                                          ; $40c0: $d9


    ret nc                                        ; $40c1: $d0

    add hl, bc                                    ; $40c2: $09
    xor a                                         ; $40c3: $af
    adc h                                         ; $40c4: $8c
    db $e4                                        ; $40c5: $e4
    dec hl                                        ; $40c6: $2b

jr_051_40c7:
    or e                                          ; $40c7: $b3
    daa                                           ; $40c8: $27
    rst $30                                       ; $40c9: $f7
    dec h                                         ; $40ca: $25
    ld h, d                                       ; $40cb: $62
    and e                                         ; $40cc: $a3
    rla                                           ; $40cd: $17
    ld [hl-], a                                   ; $40ce: $32
    ld e, d                                       ; $40cf: $5a
    sbc [hl]                                      ; $40d0: $9e
    jp nc, $0220                                  ; $40d1: $d2 $20 $02

    dec de                                        ; $40d4: $1b
    inc bc                                        ; $40d5: $03
    ldh [$9d], a                                  ; $40d6: $e0 $9d
    adc b                                         ; $40d8: $88
    xor l                                         ; $40d9: $ad
    adc [hl]                                      ; $40da: $8e
    sub l                                         ; $40db: $95
    ld a, $30                                     ; $40dc: $3e $30
    sub a                                         ; $40de: $97
    and [hl]                                      ; $40df: $a6
    sub e                                         ; $40e0: $93
    inc a                                         ; $40e1: $3c
    and d                                         ; $40e2: $a2
    ld d, a                                       ; $40e3: $57
    halt                                          ; $40e4: $76
    ld [hl], d                                    ; $40e5: $72
    ldh [$78], a                                  ; $40e6: $e0 $78
    or $fb                                        ; $40e8: $f6 $fb
    cp a                                          ; $40ea: $bf
    ld e, $4d                                     ; $40eb: $1e $4d
    db $e4                                        ; $40ed: $e4
    adc d                                         ; $40ee: $8a
    add d                                         ; $40ef: $82
    ld [$031b], sp                                ; $40f0: $08 $1b $03

Jump_051_40f3:
    jr nc, @-$75                                  ; $40f3: $30 $89

    ld e, [hl]                                    ; $40f5: $5e
    ld e, l                                       ; $40f6: $5d
    ld h, d                                       ; $40f7: $62
    ld h, e                                       ; $40f8: $63
    and [hl]                                      ; $40f9: $a6
    dec l                                         ; $40fa: $2d
    ld [hl], a                                    ; $40fb: $77
    ld [$1b12], a                                 ; $40fc: $ea $12 $1b
    db $e3                                        ; $40ff: $e3
    ld c, [hl]                                    ; $4100: $4e
    dec a                                         ; $4101: $3d
    ldh a, [$c9]                                  ; $4102: $f0 $c9
    or l                                          ; $4104: $b5
    or $7a                                        ; $4105: $f6 $7a
    ld c, d                                       ; $4107: $4a
    set 1, [hl]                                   ; $4108: $cb $ce
    ld [$39f8], a                                 ; $410a: $ea $f8 $39
    ld h, h                                       ; $410d: $64
    ldh [$31], a                                  ; $410e: $e0 $31
    ld bc, $0c02                                  ; $4110: $01 $02 $0c
    jr jr_051_4129                                ; $4113: $18 $14

    ld d, b                                       ; $4115: $50
    adc b                                         ; $4116: $88
    nop                                           ; $4117: $00
    dec de                                        ; $4118: $1b
    add e                                         ; $4119: $83
    di                                            ; $411a: $f3
    sub b                                         ; $411b: $90
    ld [hl], c                                    ; $411c: $71
    and a                                         ; $411d: $a7
    adc $5e                                       ; $411e: $ce $5e
    ld c, e                                       ; $4120: $4b
    rst $30                                       ; $4121: $f7
    ld [hl], l                                    ; $4122: $75
    cp a                                          ; $4123: $bf
    sbc c                                         ; $4124: $99
    call nc, $83b4                                ; $4125: $d4 $b4 $83
    ld [hl], c                                    ; $4128: $71

jr_051_4129:
    ret                                           ; $4129: $c9


    or d                                          ; $412a: $b2
    and c                                         ; $412b: $a1
    or e                                          ; $412c: $b3
    daa                                           ; $412d: $27
    ld l, d                                       ; $412e: $6a
    ld h, e                                       ; $412f: $63
    ld hl, $f81b                                  ; $4130: $21 $1b $f8
    db $e4                                        ; $4133: $e4
    ld e, d                                       ; $4134: $5a
    ld a, e                                       ; $4135: $7b
    dec a                                         ; $4136: $3d
    and l                                         ; $4137: $a5
    pop de                                        ; $4138: $d1
    ld a, [c]                                     ; $4139: $f2
    sub h                                         ; $413a: $94
    ld b, $11                                     ; $413b: $06 $11
    dec de                                        ; $413d: $1b
    add e                                         ; $413e: $83
    add a                                         ; $413f: $87
    ld [$f0d9], a                                 ; $4140: $ea $d9 $f0
    and l                                         ; $4143: $a5
    ei                                            ; $4144: $fb
    cp d                                          ; $4145: $ba
    rst $18                                       ; $4146: $df
    ld c, h                                       ; $4147: $4c
    ld l, d                                       ; $4148: $6a
    dec e                                         ; $4149: $1d
    call nz, $0db4                                ; $414a: $c4 $b4 $0d
    rst $18                                       ; $414d: $df
    ld e, l                                       ; $414e: $5d
    sub [hl]                                      ; $414f: $96
    ld c, d                                       ; $4150: $4a
    and a                                         ; $4151: $a7
    dec hl                                        ; $4152: $2b
    ld a, e                                       ; $4153: $7b
    db $ec                                        ; $4154: $ec
    ld a, [bc]                                    ; $4155: $0a
    rst $00                                       ; $4156: $c7
    adc e                                         ; $4157: $8b
    ld a, [hl+]                                   ; $4158: $2a
    dec de                                        ; $4159: $1b
    cp [hl]                                       ; $415a: $be
    jp nc, Jump_051_5207                          ; $415b: $d2 $07 $52

    cp a                                          ; $415e: $bf
    add hl, hl                                    ; $415f: $29
    ld [de], a                                    ; $4160: $12
    ld a, [c]                                     ; $4161: $f2
    cp $bc                                        ; $4162: $fe $bc
    ld h, e                                       ; $4164: $63
    ld h, $a5                                     ; $4165: $26 $a5
    dec l                                         ; $4167: $2d
    ld h, h                                       ; $4168: $64
    ld e, d                                       ; $4169: $5a
    ld a, l                                       ; $416a: $7d
    ld a, l                                       ; $416b: $7d
    add hl, sp                                    ; $416c: $39
    ld c, b                                       ; $416d: $48
    ld [hl+], a                                   ; $416e: $22
    ld d, $22                                     ; $416f: $16 $22
    dec de                                        ; $4171: $1b
    inc bc                                        ; $4172: $03
    jr nc, @-$75                                  ; $4173: $30 $89

    ld e, [hl]                                    ; $4175: $5e
    ld e, l                                       ; $4176: $5d
    ld h, d                                       ; $4177: $62
    ld h, e                                       ; $4178: $63
    and [hl]                                      ; $4179: $a6
    dec l                                         ; $417a: $2d
    ld [hl], a                                    ; $417b: $77
    ld [$1b12], a                                 ; $417c: $ea $12 $1b
    db $e3                                        ; $417f: $e3
    ld c, [hl]                                    ; $4180: $4e
    dec a                                         ; $4181: $3d
    ldh a, [$c9]                                  ; $4182: $f0 $c9
    or l                                          ; $4184: $b5
    or $7a                                        ; $4185: $f6 $7a
    ld c, d                                       ; $4187: $4a
    ei                                            ; $4188: $fb
    and l                                         ; $4189: $a5
    jp nz, Jump_051_5407                          ; $418a: $c2 $07 $54

    call nc, $b12f                                ; $418d: $d4 $2f $b1
    ld a, c                                       ; $4190: $79
    ret nz                                        ; $4191: $c0

    ld c, l                                       ; $4192: $4d
    ld a, [hl-]                                   ; $4193: $3a
    sbc l                                         ; $4194: $9d
    dec a                                         ; $4195: $3d
    and h                                         ; $4196: $a4
    ld a, [de]                                    ; $4197: $1a
    ld [hl+], a                                   ; $4198: $22
    dec de                                        ; $4199: $1b
    add e                                         ; $419a: $83
    di                                            ; $419b: $f3
    sub b                                         ; $419c: $90
    ld [hl], c                                    ; $419d: $71
    and a                                         ; $419e: $a7
    adc $5e                                       ; $419f: $ce $5e
    inc hl                                        ; $41a1: $23
    add a                                         ; $41a2: $87
    ret c                                         ; $41a3: $d8

    ld e, d                                       ; $41a4: $5a
    ld h, $85                                     ; $41a5: $26 $85
    ld d, a                                       ; $41a7: $57
    add a                                         ; $41a8: $87
    xor h                                         ; $41a9: $ac
    db $f4                                        ; $41aa: $f4
    add l                                         ; $41ab: $85
    inc l                                         ; $41ac: $2c
    ld e, l                                       ; $41ad: $5d
    ld sp, hl                                     ; $41ae: $f9
    cp $9b                                        ; $41af: $fe $9b
    add hl, bc                                    ; $41b1: $09
    ld b, h                                       ; $41b2: $44
    dec de                                        ; $41b3: $1b
    add e                                         ; $41b4: $83
    daa                                           ; $41b5: $27
    add a                                         ; $41b6: $87

Call_051_41b7:
    jp z, $abd3                                   ; $41b7: $ca $d3 $ab

    ld l, e                                       ; $41ba: $6b
    ld [hl], $64                                  ; $41bb: $36 $64
    ld hl, $46b6                                  ; $41bd: $21 $b6 $46
    ld c, $b1                                     ; $41c0: $0e $b1
    dec [hl]                                      ; $41c2: $35
    ld l, a                                       ; $41c3: $6f
    di                                            ; $41c4: $f3
    ccf                                           ; $41c5: $3f
    xor c                                         ; $41c6: $a9
    cp $21                                        ; $41c7: $fe $21
    res 0, [hl]                                   ; $41c9: $cb $86
    ld l, $93                                     ; $41cb: $2e $93
    jp nz, $17cb                                  ; $41cd: $c2 $cb $17

    ld [hl-], a                                   ; $41d0: $32
    ld [hl], b                                    ; $41d1: $70
    push hl                                       ; $41d2: $e5
    ld l, l                                       ; $41d3: $6d
    inc h                                         ; $41d4: $24
    ret                                           ; $41d5: $c9


    cp e                                          ; $41d6: $bb
    ld h, e                                       ; $41d7: $63
    ld e, $ee                                     ; $41d8: $1e $ee
    pop bc                                        ; $41da: $c1
    sbc c                                         ; $41db: $99
    and [hl]                                      ; $41dc: $a6

jr_051_41dd:
    push hl                                       ; $41dd: $e5
    db $10                                        ; $41de: $10
    ld bc, $031b                                  ; $41df: $01 $1b $03
    ret nc                                        ; $41e2: $d0

    xor h                                         ; $41e3: $ac
    inc d                                         ; $41e4: $14
    add hl, bc                                    ; $41e5: $09
    ld e, a                                       ; $41e6: $5f
    jr nc, jr_051_4237                            ; $41e7: $30 $4e

    add l                                         ; $41e9: $85
    ld a, b                                       ; $41ea: $78
    rst $18                                       ; $41eb: $df
    ld c, h                                       ; $41ec: $4c
    and $6d                                       ; $41ed: $e6 $6d
    cp $27                                        ; $41ef: $fe $27
    push de                                       ; $41f1: $d5
    rst $38                                       ; $41f2: $ff
    ld l, h                                       ; $41f3: $6c
    db $e4                                        ; $41f4: $e4
    db $10                                        ; $41f5: $10
    dec sp                                        ; $41f6: $3b
    xor $d4                                       ; $41f7: $ee $d4
    dec hl                                        ; $41f9: $2b
    rst $30                                       ; $41fa: $f7
    ld l, c                                       ; $41fb: $69
    dec [hl]                                      ; $41fc: $35
    xor l                                         ; $41fd: $ad

jr_051_41fe:
    jr c, jr_051_425f                             ; $41fe: $38 $5f

    ret z                                         ; $4200: $c8

    ld l, b                                       ; $4201: $68
    ld c, c                                       ; $4202: $49
    ld hl, sp-$4e                                 ; $4203: $f8 $b2
    and c                                         ; $4205: $a1
    db $d3                                        ; $4206: $d3
    jp z, Jump_000_221d                           ; $4207: $ca $1d $22

    dec de                                        ; $420a: $1b
    inc bc                                        ; $420b: $03
    ld c, h                                       ; $420c: $4c
    jr c, jr_051_41dd                             ; $420d: $38 $ce

    sbc l                                         ; $420f: $9d
    ld l, h                                       ; $4210: $6c
    ld [hl], l                                    ; $4211: $75
    xor h                                         ; $4212: $ac
    db $f4                                        ; $4213: $f4
    ld [hl], c                                    ; $4214: $71
    sbc a                                         ; $4215: $9f
    and l                                         ; $4216: $a5
    ld c, d                                       ; $4217: $4a
    ld l, h                                       ; $4218: $6c
    ld c, h                                       ; $4219: $4c
    dec sp                                        ; $421a: $3b
    or d                                          ; $421b: $b2
    ld d, a                                       ; $421c: $57
    ld b, e                                       ; $421d: $43
    inc b                                         ; $421e: $04
    dec de                                        ; $421f: $1b
    inc bc                                        ; $4220: $03
    ldh [rLYC], a                                 ; $4221: $e0 $45
    ld l, c                                       ; $4223: $69
    db $fd                                        ; $4224: $fd
    xor c                                         ; $4225: $a9
    ld c, $72                                     ; $4226: $0e $72
    inc sp                                        ; $4228: $33
    add hl, hl                                    ; $4229: $29
    jr c, jr_051_427c                             ; $422a: $38 $50

    and c                                         ; $422c: $a1
    db $db                                        ; $422d: $db
    jr jr_051_41fe                                ; $422e: $18 $ce

    rst $28                                       ; $4230: $ef
    inc h                                         ; $4231: $24
    inc bc                                        ; $4232: $03
    inc d                                         ; $4233: $14
    dec d                                         ; $4234: $15
    dec b                                         ; $4235: $05
    rlca                                          ; $4236: $07

jr_051_4237:
    sub h                                         ; $4237: $94
    ld sp, $ed1e                                  ; $4238: $31 $1e $ed
    jp $95f9                                      ; $423b: $c3 $f9 $95


    ei                                            ; $423e: $fb
    cp b                                          ; $423f: $b8
    ld d, e                                       ; $4240: $53
    db $eb                                        ; $4241: $eb
    dec h                                         ; $4242: $25
    or $d7                                        ; $4243: $f6 $d7
    ld [hl-], a                                   ; $4245: $32
    di                                            ; $4246: $f3
    ld b, h                                       ; $4247: $44
    rrca                                          ; $4248: $0f
    sbc c                                         ; $4249: $99
    rst $18                                       ; $424a: $df
    rst $38                                       ; $424b: $ff
    and a                                         ; $424c: $a7
    ld a, [$6ae6]                                 ; $424d: $fa $e6 $6a
    adc b                                         ; $4250: $88
    nop                                           ; $4251: $00
    dec de                                        ; $4252: $1b
    inc bc                                        ; $4253: $03
    sub b                                         ; $4254: $90
    add a                                         ; $4255: $87
    ret c                                         ; $4256: $d8

    ld [hl], c                                    ; $4257: $71
    and a                                         ; $4258: $a7
    ld e, [hl]                                    ; $4259: $5e
    cp c                                          ; $425a: $b9
    ld c, a                                       ; $425b: $4f
    xor e                                         ; $425c: $ab
    and l                                         ; $425d: $a5

jr_051_425e:
    rst $38                                       ; $425e: $ff

jr_051_425f:
    push de                                       ; $425f: $d5
    xor a                                         ; $4260: $af
    adc a                                         ; $4261: $8f
    dec sp                                        ; $4262: $3b
    push af                                       ; $4263: $f5
    pop af                                        ; $4264: $f1
    inc sp                                        ; $4265: $33
    add hl, hl                                    ; $4266: $29
    cp e                                          ; $4267: $bb
    cp e                                          ; $4268: $bb
    sub b                                         ; $4269: $90
    sub l                                         ; $426a: $95
    ld a, $ad                                     ; $426b: $3e $ad
    db $f4                                        ; $426d: $f4
    call z, Call_051_4f99                         ; $426e: $cc $99 $4f
    jp nz, Jump_051_5267                          ; $4271: $c2 $67 $52

    jp c, Jump_051_53b8                           ; $4274: $da $b8 $53

    db $eb                                        ; $4277: $eb
    dec h                                         ; $4278: $25
    or $97                                        ; $4279: $f6 $97
    cpl                                           ; $427b: $2f

jr_051_427c:
    ld e, a                                       ; $427c: $5f
    or l                                          ; $427d: $b5
    call z, $be3c                                 ; $427e: $cc $3c $be
    ld a, $bf                                     ; $4281: $3e $bf
    rst $38                                       ; $4283: $ff
    cpl                                           ; $4284: $2f
    ld h, h                                       ; $4285: $64
    call nz, $667c                                ; $4286: $c4 $7c $66
    ld b, c                                       ; $4289: $41
    inc b                                         ; $428a: $04
    dec de                                        ; $428b: $1b
    inc bc                                        ; $428c: $03
    ld c, h                                       ; $428d: $4c
    jr c, jr_051_425e                             ; $428e: $38 $ce

    ld e, l                                       ; $4290: $5d
    sub c                                         ; $4291: $91
    ld [$e958], a                                 ; $4292: $ea $58 $e9
    inc bc                                        ; $4295: $03
    inc e                                         ; $4296: $1c
    db $ed                                        ; $4297: $ed
    scf                                           ; $4298: $37
    ld b, $d8                                     ; $4299: $06 $d8
    cp b                                          ; $429b: $b8
    rst $20                                       ; $429c: $e7
    ld bc, $893e                                  ; $429d: $01 $3e $89
    jp hl                                         ; $42a0: $e9


    add c                                         ; $42a1: $81
    jr @-$5e                                      ; $42a2: $18 $a0

    rst $38                                       ; $42a4: $ff
    ld l, e                                       ; $42a5: $6b
    ld c, a                                       ; $42a6: $4f
    ld l, b                                       ; $42a7: $68
    sub c                                         ; $42a8: $91
    ld l, b                                       ; $42a9: $68
    adc b                                         ; $42aa: $88
    nop                                           ; $42ab: $00
    dec de                                        ; $42ac: $1b
    inc bc                                        ; $42ad: $03
    ret nz                                        ; $42ae: $c0

    pop de                                        ; $42af: $d1
    daa                                           ; $42b0: $27
    ld l, d                                       ; $42b1: $6a
    rst $00                                       ; $42b2: $c7
    sbc l                                         ; $42b3: $9d
    ld a, d                                       ; $42b4: $7a
    push hl                                       ; $42b5: $e5
    ld a, $ad                                     ; $42b6: $3e $ad
    sub [hl]                                      ; $42b8: $96
    cp $57                                        ; $42b9: $fe $57
    cp a                                          ; $42bb: $bf
    ld a, $ae                                     ; $42bc: $3e $ae
    ld a, d                                       ; $42be: $7a
    ld a, [hl]                                    ; $42bf: $7e
    rst $38                                       ; $42c0: $ff
    ld e, a                                       ; $42c1: $5f
    ld h, [hl]                                    ; $42c2: $66
    ld h, $cb                                     ; $42c3: $26 $cb
    daa                                           ; $42c5: $27
    adc c                                         ; $42c6: $89
    sbc [hl]                                      ; $42c7: $9e
    ld c, c                                       ; $42c8: $49
    ld l, c                                       ; $42c9: $69
    db $e3                                        ; $42ca: $e3
    ld c, [hl]                                    ; $42cb: $4e
    xor l                                         ; $42cc: $ad
    sub a                                         ; $42cd: $97
    ret c                                         ; $42ce: $d8

    ld e, a                                       ; $42cf: $5f
    cp [hl]                                       ; $42d0: $be
    ld a, [$e6bf]                                 ; $42d1: $fa $bf $e6
    rst $30                                       ; $42d4: $f7
    rst $38                                       ; $42d5: $ff
    ld e, l                                       ; $42d6: $5d
    dec d                                         ; $42d7: $15
    sbc a                                         ; $42d8: $9f
    jr @-$07                                      ; $42d9: $18 $f7

    ld l, d                                       ; $42db: $6a
    adc b                                         ; $42dc: $88
    nop                                           ; $42dd: $00
    dec de                                        ; $42de: $1b
    add e                                         ; $42df: $83
    di                                            ; $42e0: $f3
    ld h, h                                       ; $42e1: $64
    ld e, d                                       ; $42e2: $5a
    push af                                       ; $42e3: $f5
    xor [hl]                                      ; $42e4: $ae
    ld a, b                                       ; $42e5: $78
    ld c, h                                       ; $42e6: $4c
    cp e                                          ; $42e7: $bb
    xor $e5                                       ; $42e8: $ee $e5
    or e                                          ; $42ea: $b3
    pop hl                                        ; $42eb: $e1
    db $d3                                        ; $42ec: $d3
    adc [hl]                                      ; $42ed: $8e
    ld e, $31                                     ; $42ee: $1e $31
    db $ed                                        ; $42f0: $ed
    pop hl                                        ; $42f1: $e1
    dec sp                                        ; $42f2: $3b
    inc b                                         ; $42f3: $04
    ld [hl+], a                                   ; $42f4: $22
    rst $20                                       ; $42f5: $e7
    ret                                           ; $42f6: $c9


    or h                                          ; $42f7: $b4
    ld [$515d], a                                 ; $42f8: $ea $5d $51
    dec [hl]                                      ; $42fb: $35
    ld h, d                                       ; $42fc: $62
    jp c, $ee57                                   ; $42fd: $da $57 $ee

    db $d3                                        ; $4300: $d3
    ld l, a                                       ; $4301: $6f
    ld l, $88                                     ; $4302: $2e $88
    nop                                           ; $4304: $00
    ld c, a                                       ; $4305: $4f
    and e                                         ; $4306: $a3
    ld c, c                                       ; $4307: $49
    or $e3                                        ; $4308: $f6 $e3
    rst $38                                       ; $430a: $ff
    reti                                          ; $430b: $d9


    sub b                                         ; $430c: $90
    ld l, c                                       ; $430d: $69
    ld b, a                                       ; $430e: $47
    adc a                                         ; $430f: $8f
    sbc b                                         ; $4310: $98
    or $72                                        ; $4311: $f6 $72
    xor a                                         ; $4313: $af
    inc d                                         ; $4314: $14
    add hl, bc                                    ; $4315: $09
    add c                                         ; $4316: $81
    ld [$3e80], sp                                ; $4317: $08 $80 $3e
    add hl, bc                                    ; $431a: $09
    ld a, d                                       ; $431b: $7a
    ld de, $4ec0                                  ; $431c: $11 $c0 $4e
    db $ed                                        ; $431f: $ed
    ld l, l                                       ; $4320: $6d
    cp $97                                        ; $4321: $fe $97
    dec hl                                        ; $4323: $2b
    xor d                                         ; $4324: $aa
    ld a, [de]                                    ; $4325: $1a
    ld bc, $4ec0                                  ; $4326: $01 $c0 $4e
    sbc l                                         ; $4329: $9d
    ld l, $91                                     ; $432a: $2e $91
    ld hl, sp+$39                                 ; $432c: $f8 $39
    ld a, [de]                                    ; $432e: $1a
    ld bc, $4ec0                                  ; $432f: $01 $c0 $4e
    sbc l                                         ; $4332: $9d
    push af                                       ; $4333: $f5
    ld l, d                                       ; $4334: $6a
    inc b                                         ; $4335: $04
    ld c, a                                       ; $4336: $4f
    ld [hl], b                                    ; $4337: $70
    sbc $1a                                       ; $4338: $de $1a
    ld e, d                                       ; $433a: $5a
    adc l                                         ; $433b: $8d
    nop                                           ; $433c: $00
    add b                                         ; $433d: $80
    cp $a7                                        ; $433e: $fe $a7
    add a                                         ; $4340: $87
    ret nc                                        ; $4341: $d0

    ld d, d                                       ; $4342: $52
    sub a                                         ; $4343: $97
    ld b, h                                       ; $4344: $44
    inc hl                                        ; $4345: $23
    rrca                                          ; $4346: $0f
    pop af                                        ; $4347: $f1
    push hl                                       ; $4348: $e5
    adc d                                         ; $4349: $8a
    ld b, d                                       ; $434a: $42
    rrca                                          ; $434b: $0f
    ld b, [hl]                                    ; $434c: $46
    ld sp, $f6aa                                  ; $434d: $31 $aa $f6
    adc h                                         ; $4350: $8c
    nop                                           ; $4351: $00
    and b                                         ; $4352: $a0
    sub e                                         ; $4353: $93
    ld a, h                                       ; $4354: $7c
    ld c, c                                       ; $4355: $49
    inc [hl]                                      ; $4356: $34
    ld [bc], a                                    ; $4357: $02
    ldh [$93], a                                  ; $4358: $e0 $93
    ld l, e                                       ; $435a: $6b
    db $ed                                        ; $435b: $ed
    push af                                       ; $435c: $f5
    sub h                                         ; $435d: $94
    add [hl]                                      ; $435e: $86
    nop                                           ; $435f: $00
    ret nz                                        ; $4360: $c0

    ld c, [hl]                                    ; $4361: $4e
    xor l                                         ; $4362: $ad
    sub a                                         ; $4363: $97
    ret c                                         ; $4364: $d8

    ld a, a                                       ; $4365: $7f
    ld b, l                                       ; $4366: $45
    ld d, l                                       ; $4367: $55
    inc hl                                        ; $4368: $23
    ld b, b                                       ; $4369: $40
    ld sp, $4300                                  ; $436a: $31 $00 $43
    ld c, a                                       ; $436d: $4f
    ld l, $f9                                     ; $436e: $2e $f9
    push de                                       ; $4370: $d5
    ld [$d50f], sp                                ; $4371: $08 $0f $d5
    call Call_051_569a                            ; $4374: $cd $9a $56
    dec a                                         ; $4377: $3d
    db $ed                                        ; $4378: $ed
    cp d                                          ; $4379: $ba
    sub a                                         ; $437a: $97
    inc hl                                        ; $437b: $23
    jr nz, jr_051_43cd                            ; $437c: $20 $4f

    ld a, b                                       ; $437e: $78
    call Call_051_4c86                            ; $437f: $cd $86 $4c
    dec sp                                        ; $4382: $3b
    ld a, [$0211]                                 ; $4383: $fa $11 $02

Call_051_4386:
    db $db                                        ; $4386: $db
    or $b8                                        ; $4387: $f6 $b8
    db $10                                        ; $4389: $10
    db $db                                        ; $438a: $db
    ld b, $26                                     ; $438b: $06 $26
    sbc b                                         ; $438d: $98
    ld [$21e7], sp                                ; $438e: $08 $e7 $21
    db $d3                                        ; $4391: $d3
    adc [hl]                                      ; $4392: $8e
    sbc [hl]                                      ; $4393: $9e
    dec a                                         ; $4394: $3d
    ld [hl], l                                    ; $4395: $75
    add a                                         ; $4396: $87

Jump_051_4397:
    db $ec                                        ; $4397: $ec
    add sp, $7d                                   ; $4398: $e8 $7d
    ld a, $3b                                     ; $439a: $3e $3b
    ld a, e                                       ; $439c: $7b
    inc b                                         ; $439d: $04
    ret nz                                        ; $439e: $c0

    ei                                            ; $439f: $fb
    adc d                                         ; $43a0: $8a
    ld [hl-], a                                   ; $43a1: $32
    xor $79                                       ; $43a2: $ee $79
    ld a, d                                       ; $43a4: $7a
    ld a, l                                       ; $43a5: $7d
    ld a, l                                       ; $43a6: $7d
    ld b, a                                       ; $43a7: $47
    ld c, a                                       ; $43a8: $4f
    adc a                                         ; $43a9: $8f
    ld h, $ff                                     ; $43aa: $26 $ff
    xor d                                         ; $43ac: $aa
    sub b                                         ; $43ad: $90
    dec a                                         ; $43ae: $3d
    sbc a                                         ; $43af: $9f
    rrca                                          ; $43b0: $0f
    jp nc, Jump_000_3cf5                          ; $43b1: $d2 $f5 $3c

    ld a, e                                       ; $43b4: $7b
    inc b                                         ; $43b5: $04
    ld c, a                                       ; $43b6: $4f
    add e                                         ; $43b7: $83
    ld c, [hl]                                    ; $43b8: $4e
    rrca                                          ; $43b9: $0f
    sbc a                                         ; $43ba: $9f
    ld e, [hl]                                    ; $43bb: $5e
    halt                                          ; $43bc: $76
    reti                                          ; $43bd: $d9


    ret nc                                        ; $43be: $d0

    reti                                          ; $43bf: $d9


    db $d3                                        ; $43c0: $d3
    ld h, a                                       ; $43c1: $67
    ld b, [hl]                                    ; $43c2: $46
    cpl                                           ; $43c3: $2f
    ld e, a                                       ; $43c4: $5f
    dec [hl]                                      ; $43c5: $35
    db $ed                                        ; $43c6: $ed
    add sp, $5d                                   ; $43c7: $e8 $5d
    sub c                                         ; $43c9: $91
    ld a, b                                       ; $43ca: $78
    inc [hl]                                      ; $43cb: $34
    db $10                                        ; $43cc: $10

jr_051_43cd:
    ld [c], a                                     ; $43cd: $e2
    ld sp, $ec9b                                  ; $43ce: $31 $9b $ec
    xor [hl]                                      ; $43d1: $ae
    cp $af                                        ; $43d2: $fe $af
    ld [hl], c                                    ; $43d4: $71
    push af                                       ; $43d5: $f5
    ccf                                           ; $43d6: $3f
    ld b, h                                       ; $43d7: $44
    ld c, a                                       ; $43d8: $4f
    ld hl, sp+$51                                 ; $43d9: $f8 $51
    ld e, [hl]                                    ; $43db: $5e
    ld d, h                                       ; $43dc: $54
    db $ed                                        ; $43dd: $ed
    di                                            ; $43de: $f3
    reti                                          ; $43df: $d9


    ld l, e                                       ; $43e0: $6b
    or $d4                                        ; $43e1: $f6 $d4
    ld e, l                                       ; $43e3: $5d
    call $011e                                    ; $43e4: $cd $1e $01
    rst $20                                       ; $43e7: $e7
    pop hl                                        ; $43e8: $e1
    dec bc                                        ; $43e9: $0b
    or c                                          ; $43ea: $b1
    dec [hl]                                      ; $43eb: $35
    cp l                                          ; $43ec: $bd
    cp [hl]                                       ; $43ed: $be
    ld a, $9b                                     ; $43ee: $3e $9b
    adc h                                         ; $43f0: $8c
    db $e3                                        ; $43f1: $e3
    ld a, e                                       ; $43f2: $7b
    adc d                                         ; $43f3: $8a

Jump_051_43f4:
    rst $18                                       ; $43f4: $df
    sub l                                         ; $43f5: $95
    db $dd                                        ; $43f6: $dd
    dec e                                         ; $43f7: $1d
    dec a                                         ; $43f8: $3d
    ld a, e                                       ; $43f9: $7b
    db $dd                                        ; $43fa: $dd
    rla                                           ; $43fb: $17
    ld a, [hl+]                                   ; $43fc: $2a
    inc e                                         ; $43fd: $1c
    ld [hl+], a                                   ; $43fe: $22
    jr jr_051_4410                                ; $43ff: $18 $0f

    ld hl, $b3d1                                  ; $4401: $21 $d1 $b3
    ret                                           ; $4404: $c9


    ld [$bedb], a                                 ; $4405: $ea $db $be
    ld l, d                                       ; $4408: $6a
    call nz, Call_051_5a50                        ; $4409: $c4 $50 $5a
    db $e3                                        ; $440c: $e3
    cp d                                          ; $440d: $ba
    add sp, -$04                                  ; $440e: $e8 $fc

jr_051_4410:
    cp $3f                                        ; $4410: $fe $3f
    ld a, e                                       ; $4412: $7b
    db $dd                                        ; $4413: $dd
    and a                                         ; $4414: $a7
    rst $10                                       ; $4415: $d7

Call_051_4416:
    rst $10                                       ; $4416: $d7
    rra                                           ; $4417: $1f
    ld hl, $21e7                                  ; $4418: $21 $e7 $21
    db $d3                                        ; $441b: $d3
    adc [hl]                                      ; $441c: $8e
    sbc [hl]                                      ; $441d: $9e
    dec a                                         ; $441e: $3d
    ld [hl], l                                    ; $441f: $75
    add a                                         ; $4420: $87
    db $ec                                        ; $4421: $ec
    add sp, $65                                   ; $4422: $e8 $65
    sbc l                                         ; $4424: $9d
    rst $28                                       ; $4425: $ef
    ld [$b958], a                                 ; $4426: $ea $58 $b9
    adc a                                         ; $4429: $8f
    jr @+$4c                                      ; $442a: $18 $4a

    ld l, e                                       ; $442c: $6b
    cp h                                          ; $442d: $bc
    rst $28                                       ; $442e: $ef
    sub b                                         ; $442f: $90
    ld [hl], c                                    ; $4430: $71
    push de                                       ; $4431: $d5
    jp hl                                         ; $4432: $e9


    ld [hl], $bd                                  ; $4433: $36 $bd
    and a                                         ; $4435: $a7
    pop de                                        ; $4436: $d1
    ld h, d                                       ; $4437: $62
    inc h                                         ; $4438: $24
    rrca                                          ; $4439: $0f
    rst $38                                       ; $443a: $ff
    cp h                                          ; $443b: $bc
    and h                                         ; $443c: $a4
    dec c                                         ; $443d: $0d
    add c                                         ; $443e: $81
    ld [$fe80], sp                                ; $443f: $08 $80 $fe
    xor a                                         ; $4442: $af
    ld a, l                                       ; $4443: $7d
    ld a, $7b                                     ; $4444: $3e $7b
    call $ba9e                                    ; $4446: $cd $9e $ba
    xor e                                         ; $4449: $ab
    and a                                         ; $444a: $a7
    ld c, [hl]                                    ; $444b: $4e
    cp l                                          ; $444c: $bd
    cp e                                          ; $444d: $bb
    ld a, [$c6bf]                                 ; $444e: $fa $bf $c6
    push de                                       ; $4451: $d5
    rst $38                                       ; $4452: $ff
    dec hl                                        ; $4453: $2b
    rst $30                                       ; $4454: $f7
    add l                                         ; $4455: $85
    db $e4                                        ; $4456: $e4
    add l                                         ; $4457: $85
    ld a, [bc]                                    ; $4458: $0a
    sbc a                                         ; $4459: $9f
    ld e, [hl]                                    ; $445a: $5e
    ld e, a                                       ; $445b: $5f
    rra                                           ; $445c: $1f
    add hl, sp                                    ; $445d: $39
    ld b, h                                       ; $445e: $44
    ld a, [c]                                     ; $445f: $f2
    ld a, [c]                                     ; $4460: $f2

jr_051_4461:
    ld b, c                                       ; $4461: $41
    cp d                                          ; $4462: $ba
    ld a, [hl-]                                   ; $4463: $3a
    jr nz, jr_051_4468                            ; $4464: $20 $02

    ld h, b                                       ; $4466: $60
    sbc c                                         ; $4467: $99

jr_051_4468:
    ld h, a                                       ; $4468: $67
    db $d3                                        ; $4469: $d3
    set 5, [hl]                                   ; $446a: $cb $ee
    di                                            ; $446c: $f3
    reti                                          ; $446d: $d9


    ld h, a                                       ; $446e: $67
    ld b, e                                       ; $446f: $43
    and [hl]                                      ; $4470: $a6
    dec e                                         ; $4471: $1d
    dec a                                         ; $4472: $3d
    ld a, e                                       ; $4473: $7b
    ld [$d90e], a                                 ; $4474: $ea $0e $d9
    pop de                                        ; $4477: $d1
    db $10                                        ; $4478: $10
    ld bc, $c9e7                                  ; $4479: $01 $e7 $c9
    adc b                                         ; $447c: $88
    and c                                         ; $447d: $a1
    inc [hl]                                      ; $447e: $34
    ld a, d                                       ; $447f: $7a
    push hl                                       ; $4480: $e5
    ld a, $7a                                     ; $4481: $3e $7a
    inc [hl]                                      ; $4483: $34
    xor c                                         ; $4484: $a9
    sub l                                         ; $4485: $95
    ei                                            ; $4486: $fb
    ld l, h                                       ; $4487: $6c
    ret z                                         ; $4488: $c8

    or h                                          ; $4489: $b4
    and e                                         ; $448a: $a3
    ld h, a                                       ; $448b: $67
    ld c, a                                       ; $448c: $4f
    db $dd                                        ; $448d: $dd
    ld hl, $7a3b                                  ; $448e: $21 $3b $7a
    and [hl]                                      ; $4491: $a6
    ld l, l                                       ; $4492: $6d
    adc b                                         ; $4493: $88
    rst $38                                       ; $4494: $ff
    xor e                                         ; $4495: $ab
    ld a, h                                       ; $4496: $7c
    sbc a                                         ; $4497: $9f
    rst $08                                       ; $4498: $cf
    ld c, $11                                     ; $4499: $0e $11
    jr nz, jr_051_4461                            ; $449b: $20 $c4

    ld h, e                                       ; $449d: $63
    ld hl, $0f79                                  ; $449e: $21 $79 $0f
    and l                                         ; $44a1: $a5
    ld a, [$65da]                                 ; $44a2: $fa $da $65
    sub d                                         ; $44a5: $92
    db $fc                                        ; $44a6: $fc
    rra                                           ; $44a7: $1f
    inc hl                                        ; $44a8: $23
    adc c                                         ; $44a9: $89
    ld c, b                                       ; $44aa: $48
    db $ed                                        ; $44ab: $ed
    add h                                         ; $44ac: $84
    db $e3                                        ; $44ad: $e3
    ld d, d                                       ; $44ae: $52
    or e                                          ; $44af: $b3
    ld hl, $8ed3                                  ; $44b0: $21 $d3 $8e
    sbc [hl]                                      ; $44b3: $9e
    dec a                                         ; $44b4: $3d
    ld [hl], l                                    ; $44b5: $75
    add a                                         ; $44b6: $87
    ld b, b                                       ; $44b7: $40
    inc b                                         ; $44b8: $04
    rst $20                                       ; $44b9: $e7
    pop hl                                        ; $44ba: $e1
    inc hl                                        ; $44bb: $23
    dec h                                         ; $44bc: $25
    db $e3                                        ; $44bd: $e3
    xor [hl]                                      ; $44be: $ae
    ld c, b                                       ; $44bf: $48
    push hl                                       ; $44c0: $e5
    jp hl                                         ; $44c1: $e9


jr_051_44c2:
    ld h, l                                       ; $44c2: $65
    sub a                                         ; $44c3: $97
    dec c                                         ; $44c4: $0d
    sbc l                                         ; $44c5: $9d
    ld d, $3f                                     ; $44c6: $16 $3f
    ei                                            ; $44c8: $fb
    jp nc, $0c45                                  ; $44c9: $d2 $45 $0c

    sbc l                                         ; $44cc: $9d
    dec c                                         ; $44cd: $0d
    reti                                          ; $44ce: $d9


    rst $20                                       ; $44cf: $e7
    or e                                          ; $44d0: $b3
    rst $10                                       ; $44d1: $d7
    db $ec                                        ; $44d2: $ec
    xor c                                         ; $44d3: $a9
    dec sp                                        ; $44d4: $3b
    add h                                         ; $44d5: $84
    db $fd                                        ; $44d6: $fd
    sbc [hl]                                      ; $44d7: $9e
    sub [hl]                                      ; $44d8: $96
    ld e, l                                       ; $44d9: $5d
    ld [hl], $74                                  ; $44da: $36 $74
    ld e, d                                       ; $44dc: $5a
    db $fc                                        ; $44dd: $fc
    db $ec                                        ; $44de: $ec
    db $e3                                        ; $44df: $e3
    ld c, [hl]                                    ; $44e0: $4e
    sbc l                                         ; $44e1: $9d
    cp b                                          ; $44e2: $b8
    and c                                         ; $44e3: $a1
    or e                                          ; $44e4: $b3
    add hl, bc                                    ; $44e5: $09
    ld a, e                                       ; $44e6: $7b
    inc b                                         ; $44e7: $04
    ld c, a                                       ; $44e8: $4f
    ld hl, sp+$51                                 ; $44e9: $f8 $51
    ld e, [hl]                                    ; $44eb: $5e
    ld d, h                                       ; $44ec: $54
    db $ed                                        ; $44ed: $ed
    di                                            ; $44ee: $f3
    reti                                          ; $44ef: $d9


    ld l, e                                       ; $44f0: $6b
    or $d4                                        ; $44f1: $f6 $d4
    ld e, l                                       ; $44f3: $5d
    dec c                                         ; $44f4: $0d
    ld hl, $fccc                                  ; $44f5: $21 $cc $fc
    jr c, jr_051_4578                             ; $44f8: $38 $7e

    jp nz, $914a                                  ; $44fa: $c2 $4a $91

    ld e, a                                       ; $44fd: $5f
    dec c                                         ; $44fe: $0d
    ld de, $c9e7                                  ; $44ff: $11 $e7 $c9
    jr c, jr_051_44c2                             ; $4502: $38 $be

    ld [hl], a                                    ; $4504: $77
    push bc                                       ; $4505: $c5
    ld h, e                                       ; $4506: $63
    adc d                                         ; $4507: $8a
    rst $18                                       ; $4508: $df
    sub l                                         ; $4509: $95
    db $dd                                        ; $450a: $dd
    add hl, bc                                    ; $450b: $09
    xor a                                         ; $450c: $af
    adc h                                         ; $450d: $8c
    xor a                                         ; $450e: $af
    ld b, h                                       ; $450f: $44
    jp z, $d7a7                                   ; $4510: $ca $a7 $d7

    rst $10                                       ; $4513: $d7
    ld [hl], a                                    ; $4514: $77
    ret z                                         ; $4515: $c8

    db $ec                                        ; $4516: $ec
    ld [hl], l                                    ; $4517: $75
    ld e, a                                       ; $4518: $5f
    xor b                                         ; $4519: $a8
    ld [hl], b                                    ; $451a: $70
    adc b                                         ; $451b: $88
    nop                                           ; $451c: $00
    jr nz, jr_051_456a                            ; $451d: $20 $4b

    ld h, [hl]                                    ; $451f: $66
    jp $f0f7                                      ; $4520: $c3 $f7 $f0


    inc e                                         ; $4523: $1c
    add [hl]                                      ; $4524: $86
    jp hl                                         ; $4525: $e9


    push de                                       ; $4526: $d5
    or l                                          ; $4527: $b5
    add a                                         ; $4528: $87
    ld [$0d66], a                                 ; $4529: $ea $66 $0d
    sbc h                                         ; $452c: $9c
    ld [hl], c                                    ; $452d: $71
    adc a                                         ; $452e: $8f
    adc $d3                                       ; $452f: $ce $d3
    db $eb                                        ; $4531: $eb
    db $eb                                        ; $4532: $eb
    adc a                                         ; $4533: $8f
    ld [hl], $30                                  ; $4534: $36 $30
    pop bc                                        ; $4536: $c1
    inc a                                         ; $4537: $3c
    sbc e                                         ; $4538: $9b
    dec c                                         ; $4539: $0d
    rra                                           ; $453a: $1f
    add hl, hl                                    ; $453b: $29
    sbc c                                         ; $453c: $99
    dec c                                         ; $453d: $0d
    rst $18                                       ; $453e: $df
    dec d                                         ; $453f: $15
    rrca                                          ; $4540: $0f
    adc b                                         ; $4541: $88
    nop                                           ; $4542: $00
    rst $20                                       ; $4543: $e7
    ret                                           ; $4544: $c9


    ld c, b                                       ; $4545: $48
    ret                                           ; $4546: $c9


    xor [hl]                                      ; $4547: $ae
    ld a, b                                       ; $4548: $78
    adc h                                         ; $4549: $8c
    jr jr_051_4596                                ; $454a: $18 $4a

    ld l, e                                       ; $454c: $6b
    ld d, a                                       ; $454d: $57
    adc $46                                       ; $454e: $ce $46
    ld b, e                                       ; $4550: $43
    ld h, [hl]                                    ; $4551: $66
    sub e                                         ; $4552: $93
    and l                                         ; $4553: $a5
    ld b, e                                       ; $4554: $43
    dec sp                                        ; $4555: $3b
    jp hl                                         ; $4556: $e9


    pop de                                        ; $4557: $d1
    cp e                                          ; $4558: $bb
    xor e                                         ; $4559: $ab
    rst $38                                       ; $455a: $ff
    ld l, e                                       ; $455b: $6b
    ld e, h                                       ; $455c: $5c
    db $fd                                        ; $455d: $fd
    cp a                                          ; $455e: $bf
    dec hl                                        ; $455f: $2b
    ld e, $e3                                     ; $4560: $1e $e3
    ld c, [hl]                                    ; $4562: $4e
    sbc l                                         ; $4563: $9d
    ld c, a                                       ; $4564: $4f
    and h                                         ; $4565: $a4
    and $35                                       ; $4566: $e6 $35
    ld a, e                                       ; $4568: $7b
    push de                                       ; $4569: $d5

jr_051_456a:
    ld [de], a                                    ; $456a: $12
    ld h, a                                       ; $456b: $67
    adc a                                         ; $456c: $8f
    nop                                           ; $456d: $00
    ld c, a                                       ; $456e: $4f
    rst $28                                       ; $456f: $ef
    daa                                           ; $4570: $27
    ld hl, $e93b                                  ; $4571: $21 $3b $e9
    pop de                                        ; $4574: $d1
    ld e, l                                       ; $4575: $5d
    sbc c                                         ; $4576: $99
    ret z                                         ; $4577: $c8

jr_051_4578:
    dec d                                         ; $4578: $15
    dec b                                         ; $4579: $05
    ld hl, $21b4                                  ; $457a: $21 $b4 $21
    db $d3                                        ; $457d: $d3
    adc [hl]                                      ; $457e: $8e
    sbc [hl]                                      ; $457f: $9e
    dec a                                         ; $4580: $3d
    ld [hl], l                                    ; $4581: $75
    add a                                         ; $4582: $87
    db $ec                                        ; $4583: $ec
    add sp, $7d                                   ; $4584: $e8 $7d
    ld a, $3b                                     ; $4586: $3e $3b
    ld b, h                                       ; $4588: $44
    rst $08                                       ; $4589: $cf
    adc c                                         ; $458a: $89
    inc h                                         ; $458b: $24
    dec bc                                        ; $458c: $0b
    sbc c                                         ; $458d: $99
    ld e, [hl]                                    ; $458e: $5e
    ld e, a                                       ; $458f: $5f
    or a                                          ; $4590: $b7
    and a                                         ; $4591: $a7
    xor $65                                       ; $4592: $ee $65
    ld b, e                                       ; $4594: $43
    ld h, a                                       ; $4595: $67

jr_051_4596:
    sub e                                         ; $4596: $93
    ld e, l                                       ; $4597: $5d
    pop af                                        ; $4598: $f1
    jr @+$33                                      ; $4599: $18 $31

    sub h                                         ; $459b: $94
    ld b, [hl]                                    ; $459c: $46
    rst $28                                       ; $459d: $ef
    xor d                                         ; $459e: $aa
    db $10                                        ; $459f: $10
    ld b, e                                       ; $45a0: $43
    ld hl, $e702                                  ; $45a1: $21 $02 $e7
    ld hl, $8ed3                                  ; $45a4: $21 $d3 $8e
    sbc [hl]                                      ; $45a7: $9e
    dec a                                         ; $45a8: $3d
    ld [hl], l                                    ; $45a9: $75
    add a                                         ; $45aa: $87
    db $ec                                        ; $45ab: $ec
    add sp, -$67                                  ; $45ac: $e8 $99
    or [hl]                                       ; $45ae: $b6
    ld hl, $affe                                  ; $45af: $21 $fe $af
    ld a, [c]                                     ; $45b2: $f2
    ld a, l                                       ; $45b3: $7d
    ld a, $3b                                     ; $45b4: $3e $3b
    ld b, h                                       ; $45b6: $44
    ld c, a                                       ; $45b7: $4f
    adc a                                         ; $45b8: $8f
    rst $08                                       ; $45b9: $cf
    call c, $d515                                 ; $45ba: $dc $15 $d5
    ld h, c                                       ; $45bd: $61
    ld l, a                                       ; $45be: $6f
    ld c, b                                       ; $45bf: $48
    adc [hl]                                      ; $45c0: $8e
    sbc [hl]                                      ; $45c1: $9e
    ld c, c                                       ; $45c2: $49
    ld l, c                                       ; $45c3: $69
    di                                            ; $45c4: $f3
    ld h, [hl]                                    ; $45c5: $66
    and l                                         ; $45c6: $a5
    ret z                                         ; $45c7: $c8

    ld [hl], b                                    ; $45c8: $70
    ld a, [hl]                                    ; $45c9: $7e
    ld c, a                                       ; $45ca: $4f
    jr nc, @+$04                                  ; $45cb: $30 $02

    jp nz, Jump_051_7180                          ; $45cd: $c2 $80 $71

    call c, Call_051_57a9                         ; $45d0: $dc $a9 $57
    xor $4b                                       ; $45d3: $ee $4b
    rst $38                                       ; $45d5: $ff
    ld [de], a                                    ; $45d6: $12
    ld e, e                                       ; $45d7: $5b
    or e                                          ; $45d8: $b3
    ld b, c                                       ; $45d9: $41
    ld hl, $4302                                  ; $45da: $21 $02 $43
    ld b, e                                       ; $45dd: $43
    jr nz, @+$46                                  ; $45de: $20 $44

    add l                                         ; $45e0: $85
    ld c, a                                       ; $45e1: $4f
    dec sp                                        ; $45e2: $3b
    call nz, $dc06                                ; $45e3: $c4 $06 $dc
    ld sp, hl                                     ; $45e6: $f9
    sub l                                         ; $45e7: $95
    jp c, $d515                                   ; $45e8: $da $15 $d5

    ld h, c                                       ; $45eb: $61
    ld l, a                                       ; $45ec: $6f
    ld c, b                                       ; $45ed: $48
    adc [hl]                                      ; $45ee: $8e
    sbc $d1                                       ; $45ef: $de $d1
    ld c, e                                       ; $45f1: $4b
    sbc e                                         ; $45f2: $9b
    or $82                                        ; $45f3: $f6 $82
    ld [$0d18], sp                                ; $45f5: $08 $18 $0d

jr_051_45f8:
    adc [hl]                                      ; $45f8: $8e
    add a                                         ; $45f9: $87
    or b                                          ; $45fa: $b0
    rst $18                                       ; $45fb: $df
    ld a, c                                       ; $45fc: $79
    ld [hl-], a                                   ; $45fd: $32
    xor l                                         ; $45fe: $ad
    ld a, d                                       ; $45ff: $7a
    adc d                                         ; $4600: $8a
    ld l, c                                       ; $4601: $69
    jp c, Jump_051_47df                           ; $4602: $da $df $47

    ld h, b                                       ; $4605: $60
    ld e, b                                       ; $4606: $58
    inc sp                                        ; $4607: $33
    ld d, h                                       ; $4608: $54
    pop af                                        ; $4609: $f1
    and d                                         ; $460a: $a2
    db $10                                        ; $460b: $10
    and b                                         ; $460c: $a0
    jp z, $9ada                                   ; $460d: $ca $da $9a

    and c                                         ; $4610: $a1
    adc d                                         ; $4611: $8a
    rla                                           ; $4612: $17
    add l                                         ; $4613: $85
    nop                                           ; $4614: $00
    ld c, a                                       ; $4615: $4f
    ldh a, [$e6]                                  ; $4616: $f0 $e6
    adc c                                         ; $4618: $89
    ld e, [hl]                                    ; $4619: $5e
    rra                                           ; $461a: $1f
    ld bc, $8d80                                  ; $461b: $01 $80 $8d
    inc h                                         ; $461e: $24
    add hl, sp                                    ; $461f: $39
    db $e3                                        ; $4620: $e3
    pop af                                        ; $4621: $f1
    ld de, $f5cf                                  ; $4622: $11 $cf $f5
    ld l, h                                       ; $4625: $6c
    or d                                          ; $4626: $b2
    dec hl                                        ; $4627: $2b
    ld e, $f3                                     ; $4628: $1e $f3
    ld a, $b9                                     ; $462a: $3e $b9
    rrca                                          ; $462c: $0f
    rst $20                                       ; $462d: $e7
    rst $30                                       ; $462e: $f7

Call_051_462f:
    db $10                                        ; $462f: $10
    ld c, l                                       ; $4630: $4d
    xor a                                         ; $4631: $af
    sub c                                         ; $4632: $91
    ld a, b                                       ; $4633: $78
    or h                                          ; $4634: $b4
    rlca                                          ; $4635: $07
    inc hl                                        ; $4636: $23
    di                                            ; $4637: $f3
    ld [hl], $bd                                  ; $4638: $36 $bd
    ld [hl], d                                    ; $463a: $72
    sbc a                                         ; $463b: $9f
    ld h, [hl]                                    ; $463c: $66
    ld h, h                                       ; $463d: $64
    ld a, d                                       ; $463e: $7a
    ld hl, sp-$16                                 ; $463f: $f8 $ea
    ld a, a                                       ; $4641: $7f
    cp a                                          ; $4642: $bf
    and d                                         ; $4643: $a2

Jump_051_4644:
    jr nz, jr_051_4648                            ; $4644: $20 $02

    rst $20                                       ; $4646: $e7
    pop hl                                        ; $4647: $e1

jr_051_4648:
    dec sp                                        ; $4648: $3b
    ld a, d                                       ; $4649: $7a
    ld d, a                                       ; $464a: $57
    inc a                                         ; $464b: $3c
    sub [hl]                                      ; $464c: $96
    adc b                                         ; $464d: $88
    adc l                                         ; $464e: $8d
    cp $57                                        ; $464f: $fe $57
    ld sp, hl                                     ; $4651: $f9
    jp z, $577d                                   ; $4652: $ca $7d $57

    ld d, h                                       ; $4655: $54
    ret z                                         ; $4656: $c8

    ld c, b                                       ; $4657: $48
    ret                                           ; $4658: $c9


    sbc h                                         ; $4659: $9c
    rst $38                                       ; $465a: $ff
    dec [hl]                                      ; $465b: $35
    dec l                                         ; $465c: $2d
    ld b, h                                       ; $465d: $44
    ld [bc], a                                    ; $465e: $02
    ld [hl+], a                                   ; $465f: $22
    rrca                                          ; $4660: $0f
    ld c, c                                       ; $4661: $49
    ld b, e                                       ; $4662: $43
    ld [$a4b5], sp                                ; $4663: $08 $b5 $a4
    ld b, a                                       ; $4666: $47
    ld c, d                                       ; $4667: $4a
    ld h, [hl]                                    ; $4668: $66
    ld h, e                                       ; $4669: $63
    ld sp, hl                                     ; $466a: $f9
    ld d, b                                       ; $466b: $50
    or l                                          ; $466c: $b5
    call z, $d0cf                                 ; $466d: $cc $cf $d0
    pop de                                        ; $4670: $d1
    xor e                                         ; $4671: $ab
    jr nz, jr_051_45f8                            ; $4672: $20 $84

    ld [$4b8f], sp                                ; $4674: $08 $8f $4b
    call $f4db                                    ; $4677: $cd $db $f4
    jp z, $9a7d                                   ; $467a: $ca $7d $9a

    sub c                                         ; $467d: $91
    ld l, c                                       ; $467e: $69
    and a                                         ; $467f: $a7
    or [hl]                                       ; $4680: $b6
    ld sp, $3393                                  ; $4681: $31 $93 $33
    add h                                         ; $4684: $84
    db $10                                        ; $4685: $10
    ld bc, $d50f                                  ; $4686: $01 $0f $d5
    or e                                          ; $4689: $b3
    ret                                           ; $468a: $c9


    ld [hl], d                                    ; $468b: $72
    cp b                                          ; $468c: $b8
    rst $28                                       ; $468d: $ef
    ld hl, $5e9a                                  ; $468e: $21 $9a $5e
    inc hl                                        ; $4691: $23
    ld sp, $5de0                                  ; $4692: $31 $e0 $5d
    and d                                         ; $4695: $a2
    and d                                         ; $4696: $a2
    rra                                           ; $4697: $1f
    ld hl, $4b8f                                  ; $4698: $21 $8f $4b
    dec l                                         ; $469b: $2d
    di                                            ; $469c: $f3
    ld l, d                                       ; $469d: $6a
    ld e, d                                       ; $469e: $5a
    adc b                                         ; $469f: $88
    call nz, $8ef0                                ; $46a0: $c4 $f0 $8e
    call nc, $a3cd                                ; $46a3: $d4 $cd $a3
    ld hl, $9663                                  ; $46a6: $21 $63 $96
    sbc d                                         ; $46a9: $9a
    ld e, $be                                     ; $46aa: $1e $be
    dec hl                                        ; $46ac: $2b
    ld e, $d3                                     ; $46ad: $1e $d3
    xor e                                         ; $46af: $ab
    ld a, l                                       ; $46b0: $7d
    sbc d                                         ; $46b1: $9a
    sub c                                         ; $46b2: $91
    xor c                                         ; $46b3: $a9
    sbc e                                         ; $46b4: $9b
    ld [hl+], a                                   ; $46b5: $22
    db $10                                        ; $46b6: $10
    ld bc, $7860                                  ; $46b7: $01 $60 $78
    db $fd                                        ; $46ba: $fd
    ld hl, sp+$67                                 ; $46bb: $f8 $67
    ei                                            ; $46bd: $fb
    pop hl                                        ; $46be: $e1
    or l                                          ; $46bf: $b5
    ld c, $5b                                     ; $46c0: $0e $5b
    jp $69f9                                      ; $46c2: $c3 $f9 $69


    ld hl, $7012                                  ; $46c5: $21 $12 $70
    add b                                         ; $46c8: $80
    cp $af                                        ; $46c9: $fe $af
    ld h, l                                       ; $46cb: $65
    ld d, d                                       ; $46cc: $52
    rst $38                                       ; $46cd: $ff
    cpl                                           ; $46ce: $2f
    rla                                           ; $46cf: $17
    db $fd                                        ; $46d0: $fd
    sub l                                         ; $46d1: $95
    rst $00                                       ; $46d2: $c7
    sbc l                                         ; $46d3: $9d
    ld a, d                                       ; $46d4: $7a
    push af                                       ; $46d5: $f5
    cp a                                          ; $46d6: $bf
    ld d, $5f                                     ; $46d7: $16 $5f
    add hl, de                                    ; $46d9: $19
    add hl, hl                                    ; $46da: $29
    ld l, $b2                                     ; $46db: $2e $b2
    add a                                         ; $46dd: $87
    ld b, b                                       ; $46de: $40
    inc b                                         ; $46df: $04
    ret nz                                        ; $46e0: $c0

    ld c, [hl]                                    ; $46e1: $4e
    sbc l                                         ; $46e2: $9d
    ld c, a                                       ; $46e3: $4f
    inc h                                         ; $46e4: $24
    ld a, d                                       ; $46e5: $7a
    ld [hl], $59                                  ; $46e6: $36 $59
    and [hl]                                      ; $46e8: $a6
    inc l                                         ; $46e9: $2c
    ld d, l                                       ; $46ea: $55
    cp e                                          ; $46eb: $bb
    ld a, [$1ea1]                                 ; $46ec: $fa $a1 $1e
    dec c                                         ; $46ef: $0d
    db $f4                                        ; $46f0: $f4
    ld d, l                                       ; $46f1: $55
    inc hl                                        ; $46f2: $23
    add [hl]                                      ; $46f3: $86
    jp nc, $d9e8                                  ; $46f4: $d2 $e8 $d9

    ld h, h                                       ; $46f7: $64
    ld d, a                                       ; $46f8: $57
    inc a                                         ; $46f9: $3c
    add $9d                                       ; $46fa: $c6 $9d
    ld a, [hl-]                                   ; $46fc: $3a
    ld a, l                                       ; $46fd: $7d
    pop hl                                        ; $46fe: $e1
    sbc [hl]                                      ; $46ff: $9e
    ld a, b                                       ; $4700: $78
    adc c                                         ; $4701: $89
    call nc, $5e88                                ; $4702: $d4 $88 $5e
    dec a                                         ; $4705: $3d
    sub e                                         ; $4706: $93
    jp nc, $1fa6                                  ; $4707: $d2 $a6 $1f

    ld [c], a                                     ; $470a: $e2
    dec [hl]                                      ; $470b: $35
    sbc h                                         ; $470c: $9c
    rra                                           ; $470d: $1f
    rla                                           ; $470e: $17
    reti                                          ; $470f: $d9


    ld b, e                                       ; $4710: $43
    jr nz, jr_051_4715                            ; $4711: $20 $02

    adc a                                         ; $4713: $8f
    ld c, e                                       ; $4714: $4b

jr_051_4715:
    ld c, l                                       ; $4715: $4d
    cpl                                           ; $4716: $2f
    ld [c], a                                     ; $4717: $e2
    push de                                       ; $4718: $d5
    or e                                          ; $4719: $b3
    ld hl, $8ed3                                  ; $471a: $21 $d3 $8e
    sbc [hl]                                      ; $471d: $9e
    dec a                                         ; $471e: $3d
    ld [hl], l                                    ; $471f: $75
    add a                                         ; $4720: $87
    call z, $ffef                                 ; $4721: $cc $ef $ff
    ld a, c                                       ; $4724: $79
    ld e, h                                       ; $4725: $5c
    ld h, h                                       ; $4726: $64
    rrca                                          ; $4727: $0f
    ld e, c                                       ; $4728: $59
    ld a, [$ccd4]                                 ; $4729: $fa $d4 $cc
    ld l, d                                       ; $472c: $6a
    cp b                                          ; $472d: $b8
    and a                                         ; $472e: $a7
    ld [hl], a                                    ; $472f: $77
    and h                                         ; $4730: $a4
    ld h, h                                       ; $4731: $64
    ld d, a                                       ; $4732: $57
    inc a                                         ; $4733: $3c
    and [hl]                                      ; $4734: $a6
    push de                                       ; $4735: $d5
    db $ec                                        ; $4736: $ec
    ld d, l                                       ; $4737: $55
    bit 7, b                                      ; $4738: $cb $78
    ld e, a                                       ; $473a: $5f
    ld d, c                                       ; $473b: $51
    dec h                                         ; $473c: $25
    ld [hl], $66                                  ; $473d: $36 $66
    jr z, @-$15                                   ; $473f: $28 $e9

    dec hl                                        ; $4741: $2b
    ld a, [bc]                                    ; $4742: $0a
    ld [hl+], a                                   ; $4743: $22
    rst $20                                       ; $4744: $e7
    ld b, a                                       ; $4745: $47
    cpl                                           ; $4746: $2f
    pop bc                                        ; $4747: $c1
    pop af                                        ; $4748: $f1
    jr jr_051_47c2                                ; $4749: $18 $77

    ld b, l                                       ; $474b: $45
    ld a, [c]                                     ; $474c: $f2
    xor [hl]                                      ; $474d: $ae
    xor b                                         ; $474e: $a8
    ldh a, [$95]                                  ; $474f: $f0 $95
    ei                                            ; $4751: $fb
    ld [hl], d                                    ; $4752: $72
    sbc h                                         ; $4753: $9c
    db $ed                                        ; $4754: $ed
    and c                                         ; $4755: $a1
    cp d                                          ; $4756: $ba
    ld e, c                                       ; $4757: $59
    ld [hl], b                                    ; $4758: $70
    add b                                         ; $4759: $80
    cp $f7                                        ; $475a: $fe $f7
    reti                                          ; $475c: $d9


    ldh a, [$b5]                                  ; $475d: $f0 $b5
    ld sp, hl                                     ; $475f: $f9
    ld d, a                                       ; $4760: $57
    push de                                       ; $4761: $d5
    adc [hl]                                      ; $4762: $8e
    sbc [hl]                                      ; $4763: $9e
    halt                                          ; $4764: $76
    db $f4                                        ; $4765: $f4
    inc h                                         ; $4766: $24
    ld a, [hl-]                                   ; $4767: $3a
    ret c                                         ; $4768: $d8

    inc hl                                        ; $4769: $23
    rst $20                                       ; $476a: $e7
    ret                                           ; $476b: $c9


    ld [hl-], a                                   ; $476c: $32
    xor c                                         ; $476d: $a9
    ld e, l                                       ; $476e: $5d

jr_051_476f:
    pop af                                        ; $476f: $f1
    jr @-$37                                      ; $4770: $18 $c7

    cpl                                           ; $4772: $2f
    ei                                            ; $4773: $fb
    adc c                                         ; $4774: $89
    call nc, $fefc                                ; $4775: $d4 $fc $fe
    ccf                                           ; $4778: $3f
    ld a, d                                       ; $4779: $7a
    and l                                         ; $477a: $a5
    add $5d                                       ; $477b: $c6 $5d
    xor c                                         ; $477d: $a9
    or e                                          ; $477e: $b3
    ld [hl], l                                    ; $477f: $75
    ld c, b                                       ; $4780: $48
    adc l                                         ; $4781: $8d
    dec sp                                        ; $4782: $3b
    ld b, h                                       ; $4783: $44
    push bc                                       ; $4784: $c5
    rst $08                                       ; $4785: $cf
    and c                                         ; $4786: $a1
    pop af                                        ; $4787: $f1
    rst $18                                       ; $4788: $df
    inc [hl]                                      ; $4789: $34
    call c, Call_000_2f13                         ; $478a: $dc $13 $2f
    sub c                                         ; $478d: $91
    sbc d                                         ; $478e: $9a
    dec a                                         ; $478f: $3d

Call_051_4790:
    ld a, d                                       ; $4790: $7a
    add hl, bc                                    ; $4791: $09
    adc [hl]                                      ; $4792: $8e
    rst $00                                       ; $4793: $c7
    ld [hl], b                                    ; $4794: $70
    ld a, [hl]                                    ; $4795: $7e
    ld e, h                                       ; $4796: $5c
    ld h, h                                       ; $4797: $64
    rrca                                          ; $4798: $0f
    add c                                         ; $4799: $81
    db $10                                        ; $479a: $10
    ld h, [hl]                                    ; $479b: $66
    ld b, e                                       ; $479c: $43
    rst $00                                       ; $479d: $c7
    inc l                                         ; $479e: $2c
    dec [hl]                                      ; $479f: $35
    adc [hl]                                      ; $47a0: $8e
    rst $28                                       ; $47a1: $ef
    ld h, l                                       ; $47a2: $65
    ccf                                           ; $47a3: $3f
    ld l, h                                       ; $47a4: $6c
    dec l                                         ; $47a5: $2d
    pop bc                                        ; $47a6: $c1
    pop af                                        ; $47a7: $f1
    dec b                                         ; $47a8: $05
    rst $20                                       ; $47a9: $e7
    pop de                                        ; $47aa: $d1
    db $10                                        ; $47ab: $10
    ld bc, $c9e7                                  ; $47ac: $01 $e7 $c9
    jr c, jr_051_476f                             ; $47af: $38 $be

    ld [hl], a                                    ; $47b1: $77
    push bc                                       ; $47b2: $c5
    ld h, e                                       ; $47b3: $63

Call_051_47b4:
    adc d                                         ; $47b4: $8a
    rst $18                                       ; $47b5: $df
    sub l                                         ; $47b6: $95
    dec e                                         ; $47b7: $1d
    ld [bc], a                                    ; $47b8: $02
    ld [hl], a                                    ; $47b9: $77
    ld e, $c4                                     ; $47ba: $1e $c4
    ld [hl], h                                    ; $47bc: $74
    ld sp, hl                                     ; $47bd: $f9
    dec [hl]                                      ; $47be: $35
    ld [de], a                                    ; $47bf: $12
    dec l                                         ; $47c0: $2d
    or l                                          ; $47c1: $b5

jr_051_47c2:
    and e                                         ; $47c2: $a3
    ld [hl], a                                    ; $47c3: $77
    push bc                                       ; $47c4: $c5
    ld h, e                                       ; $47c5: $63
    db $e4                                        ; $47c6: $e4
    ld d, a                                       ; $47c7: $57
    rla                                           ; $47c8: $17
    ld b, h                                       ; $47c9: $44
    rst $20                                       ; $47ca: $e7
    ret                                           ; $47cb: $c9


    ld c, b                                       ; $47cc: $48
    ret                                           ; $47cd: $c9


    xor [hl]                                      ; $47ce: $ae
    ld a, b                                       ; $47cf: $78
    inc l                                         ; $47d0: $2c
    db $e3                                        ; $47d1: $e3
    ld a, l                                       ; $47d2: $7d
    ld b, l                                       ; $47d3: $45
    push de                                       ; $47d4: $d5
    inc c                                         ; $47d5: $0c
    dec h                                         ; $47d6: $25
    ld a, l                                       ; $47d7: $7d
    ld b, l                                       ; $47d8: $45
    dec l                                         ; $47d9: $2d
    ld [hl], c                                    ; $47da: $71
    ld b, e                                       ; $47db: $43
    or l                                          ; $47dc: $b5
    inc h                                         ; $47dd: $24
    cpl                                           ; $47de: $2f

Jump_051_47df:
    di                                            ; $47df: $f3
    db $d3                                        ; $47e0: $d3
    adc [hl]                                      ; $47e1: $8e
    sbc [hl]                                      ; $47e2: $9e
    dec l                                         ; $47e3: $2d
    sub l                                         ; $47e4: $95
    rst $08                                       ; $47e5: $cf
    or $50                                        ; $47e6: $f6 $50
    db $dd                                        ; $47e8: $dd
    inc l                                         ; $47e9: $2c
    adc b                                         ; $47ea: $88
    nop                                           ; $47eb: $00
    rrca                                          ; $47ec: $0f
    push de                                       ; $47ed: $d5
    or e                                          ; $47ee: $b3
    ret                                           ; $47ef: $c9


    ld [hl], d                                    ; $47f0: $72
    cp b                                          ; $47f1: $b8
    rst $28                                       ; $47f2: $ef
    ld hl, $5e9a                                  ; $47f3: $21 $9a $5e
    inc hl                                        ; $47f6: $23
    pop af                                        ; $47f7: $f1
    ld [$8f01], sp                                ; $47f8: $08 $01 $8f
    ld c, e                                       ; $47fb: $4b
    call Call_000_2959                            ; $47fc: $cd $59 $29
    ld [c], a                                     ; $47ff: $e2
    or c                                          ; $4800: $b1
    ld [hl], d                                    ; $4801: $72
    rra                                           ; $4802: $1f
    or e                                          ; $4803: $b3
    call nc, $af32                                ; $4804: $d4 $32 $af
    and [hl]                                      ; $4807: $a6
    add l                                         ; $4808: $85
    ld c, b                                       ; $4809: $48
    ld c, h                                       ; $480a: $4c
    cp a                                          ; $480b: $bf
    halt                                          ; $480c: $76
    ld b, h                                       ; $480d: $44
    xor a                                         ; $480e: $af
    db $ec                                        ; $480f: $ec
    sbc c                                         ; $4810: $99
    ld [hl], h                                    ; $4811: $74
    sub d                                         ; $4812: $92
    ld c, [hl]                                    ; $4813: $4e
    add a                                         ; $4814: $87
    ld b, b                                       ; $4815: $40
    inc b                                         ; $4816: $04
    rrca                                          ; $4817: $0f
    ld b, [hl]                                    ; $4818: $46
    and [hl]                                      ; $4819: $a6
    ld d, l                                       ; $481a: $55
    ld c, a                                       ; $481b: $4f
    adc h                                         ; $481c: $8c
    sbc d                                         ; $481d: $9a
    inc e                                         ; $481e: $1c
    cp c                                          ; $481f: $b9
    ld h, h                                       ; $4820: $64
    ld [hl], a                                    ; $4821: $77
    jp nz, $232b                                  ; $4822: $c2 $2b $23

    ld c, e                                       ; $4825: $4b
    dec de                                        ; $4826: $1b
    ld [hl], d                                    ; $4827: $72
    ld [hl], $1a                                  ; $4828: $36 $1a
    ld [hl-], a                                   ; $482a: $32
    ld h, [hl]                                    ; $482b: $66
    xor c                                         ; $482c: $a9
    jp hl                                         ; $482d: $e9


    pop hl                                        ; $482e: $e1
    cp e                                          ; $482f: $bb
    ld [c], a                                     ; $4830: $e2
    ld sp, $7abd                                  ; $4831: $31 $bd $7a
    dec e                                         ; $4834: $1d
    reti                                          ; $4835: $d9


    ld b, e                                       ; $4836: $43
    ld d, [hl]                                    ; $4837: $56
    ld a, [$10b4]                                 ; $4838: $fa $b4 $10
    adc c                                         ; $483b: $89
    dec e                                         ; $483c: $1d
    dec c                                         ; $483d: $0d
    ld de, $460f                                  ; $483e: $11 $0f $46
    ld b, [hl]                                    ; $4841: $46
    ld c, d                                       ; $4842: $4a
    ld [hl-], a                                   ; $4843: $32
    adc c                                         ; $4844: $89
    dec e                                         ; $4845: $1d
    dec a                                         ; $4846: $3d
    ld a, [de]                                    ; $4847: $1a
    halt                                          ; $4848: $76
    ld h, b                                       ; $4849: $60
    ld b, d                                       ; $484a: $42
    cp a                                          ; $484b: $bf
    rst $38                                       ; $484c: $ff
    ld b, a                                       ; $484d: $47
    ld e, $5e                                     ; $484e: $1e $5e
    sub $d6                                       ; $4850: $d6 $d6
    ld c, h                                       ; $4852: $4c
    ld c, d                                       ; $4853: $4a
    ld e, e                                       ; $4854: $5b
    sbc d                                         ; $4855: $9a
    or a                                          ; $4856: $b7
    or l                                          ; $4857: $b5
    and e                                         ; $4858: $a3
    and a                                         ; $4859: $a7
    rst $18                                       ; $485a: $df
    sbc a                                         ; $485b: $9f
    inc bc                                        ; $485c: $03
    ld [hl+], a                                   ; $485d: $22
    rrca                                          ; $485e: $0f
    ld b, [hl]                                    ; $485f: $46
    halt                                          ; $4860: $76
    db $f4                                        ; $4861: $f4
    ld [hl], b                                    ; $4862: $70
    ld a, [hl]                                    ; $4863: $7e
    call c, Call_000_29bf                         ; $4864: $dc $bf $29
    ld [c], a                                     ; $4867: $e2
    and [hl]                                      ; $4868: $a6
    ld a, [hl]                                    ; $4869: $7e
    cp b                                          ; $486a: $b8
    add a                                         ; $486b: $87
    inc c                                         ; $486c: $0c
    rst $20                                       ; $486d: $e7
    rst $00                                       ; $486e: $c7
    sbc l                                         ; $486f: $9d
    ld a, [hl-]                                   ; $4870: $3a
    ld a, e                                       ; $4871: $7b
    ld c, l                                       ; $4872: $4d
    rst $20                                       ; $4873: $e7
    push hl                                       ; $4874: $e5
    adc d                                         ; $4875: $8a
    ld a, [bc]                                    ; $4876: $0a
    sbc c                                         ; $4877: $99
    ld c, c                                       ; $4878: $49
    ld l, c                                       ; $4879: $69
    ld d, e                                       ; $487a: $53
    call $f47b                                    ; $487b: $cd $7b $f4
    cp b                                          ; $487e: $b8
    ld l, a                                       ; $487f: $6f
    ld l, h                                       ; $4880: $6c
    db $f4                                        ; $4881: $f4
    reti                                          ; $4882: $d9


    ld [hl], b                                    ; $4883: $70
    ld a, [hl]                                    ; $4884: $7e
    xor d                                         ; $4885: $aa
    inc de                                        ; $4886: $13
    or c                                          ; $4887: $b1
    dec hl                                        ; $4888: $2b
    ld a, l                                       ; $4889: $7d
    or $2a                                        ; $488a: $f6 $2a
    or $08                                        ; $488c: $f6 $08
    rst $08                                       ; $488e: $cf
    ld l, d                                       ; $488f: $6a
    ld h, a                                       ; $4890: $67
    sub e                                         ; $4891: $93
    ld h, b                                       ; $4892: $60
    or d                                          ; $4893: $b2
    rst $18                                       ; $4894: $df
    ld a, c                                       ; $4895: $79
    ld hl, sp-$0c                                 ; $4896: $f8 $f4
    ld [$f15d], a                                 ; $4898: $ea $5d $f1
    jr jr_051_48aa                                ; $489b: $18 $0d

    cp c                                          ; $489d: $b9
    and d                                         ; $489e: $a2
    ld b, d                                       ; $489f: $42
    jr nz, jr_051_48a4                            ; $48a0: $20 $02

    ld c, a                                       ; $48a2: $4f
    rst $28                                       ; $48a3: $ef

jr_051_48a4:
    jp nc, $33d1                                  ; $48a4: $d2 $d1 $33

    ld [hl], h                                    ; $48a7: $74
    ld c, c                                       ; $48a8: $49
    rst $20                                       ; $48a9: $e7

jr_051_48aa:
    add e                                         ; $48aa: $83

jr_051_48ab:
    ld hl, sp-$1c                                 ; $48ab: $f8 $e4
    add sp, $69                                   ; $48ad: $e8 $69
    ld b, [hl]                                    ; $48af: $46
    ld b, [hl]                                    ; $48b0: $46
    inc c                                         ; $48b1: $0c
    and l                                         ; $48b2: $a5
    pop de                                        ; $48b3: $d1
    di                                            ; $48b4: $f3
    ei                                            ; $48b5: $fb
    ld a, a                                       ; $48b6: $7f
    cp d                                          ; $48b7: $ba
    ld c, b                                       ; $48b8: $48
    ld b, c                                       ; $48b9: $41
    inc b                                         ; $48ba: $04
    jr nz, jr_051_4921                            ; $48bb: $20 $64

    ld [hl], a                                    ; $48bd: $77
    ld c, a                                       ; $48be: $4f
    call c, $ed74                                 ; $48bf: $dc $74 $ed
    ld c, c                                       ; $48c2: $49
    db $fd                                        ; $48c3: $fd
    sub b                                         ; $48c4: $90
    push de                                       ; $48c5: $d5
    rst $38                                       ; $48c6: $ff
    ld d, a                                       ; $48c7: $57
    inc sp                                        ; $48c8: $33
    jr c, jr_051_48e7                             ; $48c9: $38 $1c

    jr z, jr_051_48ab                             ; $48cb: $28 $de

    ld d, a                                       ; $48cd: $57
    rst $38                                       ; $48ce: $ff
    ld l, e                                       ; $48cf: $6b
    pop af                                        ; $48d0: $f1
    sub l                                         ; $48d1: $95
    sub c                                         ; $48d2: $91
    ld [c], a                                     ; $48d3: $e2
    ld [hl+], a                                   ; $48d4: $22
    ld a, e                                       ; $48d5: $7b
    ret z                                         ; $48d6: $c8

    jp nc, Jump_051_66a7                          ; $48d7: $d2 $a7 $66

    ld d, $7b                                     ; $48da: $16 $7b
    inc b                                         ; $48dc: $04
    jr jr_051_493e                                ; $48dd: $18 $5f

    or $97                                        ; $48df: $f6 $97
    cp l                                          ; $48e1: $bd
    call $10ff                                    ; $48e2: $cd $ff $10
    ld b, d                                       ; $48e5: $42
    sbc h                                         ; $48e6: $9c

jr_051_48e7:
    rra                                           ; $48e7: $1f
    rst $30                                       ; $48e8: $f7
    ld [hl-], a                                   ; $48e9: $32
    rst $30                                       ; $48ea: $f7
    ld [hl-], a                                   ; $48eb: $32
    ld [hl], a                                    ; $48ec: $77
    ld [$35ec], a                                 ; $48ed: $ea $ec $35
    db $fd                                        ; $48f0: $fd
    ld h, l                                       ; $48f1: $65
    db $fd                                        ; $48f2: $fd
    ld h, l                                       ; $48f3: $65
    sbc l                                         ; $48f4: $9d
    sub a                                         ; $48f5: $97
    dec hl                                        ; $48f6: $2b
    ld a, [hl+]                                   ; $48f7: $2a
    inc b                                         ; $48f8: $04
    ld b, d                                       ; $48f9: $42
    add sp, -$54                                  ; $48fa: $e8 $ac
    inc d                                         ; $48fc: $14
    pop af                                        ; $48fd: $f1
    sbc b                                         ; $48fe: $98
    call c, $4da5                                 ; $48ff: $dc $a5 $4d
    db $db                                        ; $4902: $db
    jr @-$37                                      ; $4903: $18 $c7

    ld c, a                                       ; $4905: $4f
    rrca                                          ; $4906: $0f
    xor a                                         ; $4907: $af
    reti                                          ; $4908: $d9


    ld [hl], b                                    ; $4909: $70
    adc b                                         ; $490a: $88
    nop                                           ; $490b: $00
    ldh [$3a], a                                  ; $490c: $e0 $3a
    cp b                                          ; $490e: $b8
    jr nz, jr_051_492f                            ; $490f: $20 $1e

    ld a, l                                       ; $4911: $7d
    or [hl]                                       ; $4912: $b6
    rra                                           ; $4913: $1f
    halt                                          ; $4914: $76
    pop af                                        ; $4915: $f1
    ld b, e                                       ; $4916: $43
    adc a                                         ; $4917: $8f
    sub [hl]                                      ; $4918: $96
    jp c, Jump_051_745d                           ; $4919: $da $5d $74

    dec l                                         ; $491c: $2d
    ld a, [hl]                                    ; $491d: $7e
    add sp, $5a                                   ; $491e: $e8 $5a
    ret nc                                        ; $4920: $d0

jr_051_4921:
    ld sp, hl                                     ; $4921: $f9
    db $fd                                        ; $4922: $fd
    ld a, a                                       ; $4923: $7f
    reti                                          ; $4924: $d9


    add sp, -$47                                  ; $4925: $e8 $b9
    ld a, [hl]                                    ; $4927: $7e
    or l                                          ; $4928: $b5
    call nc, Call_051_54d9                        ; $4929: $d4 $d9 $54
    ld c, b                                       ; $492c: $48
    ld h, l                                       ; $492d: $65
    ld h, a                                       ; $492e: $67

jr_051_492f:
    adc a                                         ; $492f: $8f

Call_051_4930:
    nop                                           ; $4930: $00
    rrca                                          ; $4931: $0f
    db $fc                                        ; $4932: $fc
    rst $38                                       ; $4933: $ff
    cp e                                          ; $4934: $bb
    sbc d                                         ; $4935: $9a
    pop bc                                        ; $4936: $c1
    rst $08                                       ; $4937: $cf
    add $9d                                       ; $4938: $c6 $9d
    ld a, [hl-]                                   ; $493a: $3a
    ld a, e                                       ; $493b: $7b
    pop af                                        ; $493c: $f1
    sbc l                                         ; $493d: $9d

jr_051_493e:
    db $e3                                        ; $493e: $e3
    add a                                         ; $493f: $87
    ld e, $cd                                     ; $4940: $1e $cd
    ld a, [hl]                                    ; $4942: $7e
    ret nz                                        ; $4943: $c0

    ld c, [hl]                                    ; $4944: $4e
    sbc a                                         ; $4945: $9f
    add hl, sp                                    ; $4946: $39
    ld a, d                                       ; $4947: $7a
    dec d                                         ; $4948: $15
    ld a, e                                       ; $4949: $7b
    inc b                                         ; $494a: $04
    rrca                                          ; $494b: $0f
    ld c, c                                       ; $494c: $49
    adc a                                         ; $494d: $8f
    inc h                                         ; $494e: $24
    ld h, d                                       ; $494f: $62
    ld h, e                                       ; $4950: $63
    pop hl                                        ; $4951: $e1
    ld a, $6f                                     ; $4952: $3e $6f
    di                                            ; $4954: $f3
    rst $38                                       ; $4955: $ff
    adc b                                         ; $4956: $88
    and c                                         ; $4957: $a1
    or h                                          ; $4958: $b4
    halt                                          ; $4959: $76
    push hl                                       ; $495a: $e5
    ld de, $2002                                  ; $495b: $11 $02 $20
    ld c, e                                       ; $495e: $4b
    ld [hl-], a                                   ; $495f: $32
    adc c                                         ; $4960: $89
    add c                                         ; $4961: $81
    adc e                                         ; $4962: $8b
    ret nc                                        ; $4963: $d0

    inc hl                                        ; $4964: $23
    cpl                                           ; $4965: $2f
    rst $38                                       ; $4966: $ff
    inc bc                                        ; $4967: $03
    rst $00                                       ; $4968: $c7
    dec a                                         ; $4969: $3d
    halt                                          ; $496a: $76
    ld h, l                                       ; $496b: $65
    ld [hl], $7c                                  ; $496c: $36 $7c
    reti                                          ; $496e: $d9


    ret nc                                        ; $496f: $d0

    add l                                         ; $4970: $85
    ei                                            ; $4971: $fb
    ld [$2d7f], a                                 ; $4972: $ea $7f $2d
    cp [hl]                                       ; $4975: $be
    ld [hl-], a                                   ; $4976: $32
    ld d, d                                       ; $4977: $52
    sbc c                                         ; $4978: $99
    inc e                                         ; $4979: $1c
    call nc, Call_000_0221                        ; $497a: $d4 $21 $02
    ld c, a                                       ; $497d: $4f
    rrca                                          ; $497e: $0f
    pop af                                        ; $497f: $f1
    jp c, $1ebf                                   ; $4980: $da $bf $1e

    db $10                                        ; $4983: $10
    jp nz, Jump_051_6887                          ; $4984: $c2 $87 $68

    ld a, d                                       ; $4987: $7a
    adc l                                         ; $4988: $8d
    call nz, $f0f4                                ; $4989: $c4 $f4 $f0
    ld e, l                                       ; $498c: $5d
    pop af                                        ; $498d: $f1
    sbc b                                         ; $498e: $98
    and c                                         ; $498f: $a1
    di                                            ; $4990: $f3
    ld [hl], $ff                                  ; $4991: $36 $ff
    add a                                         ; $4993: $87
    or e                                          ; $4994: $b3
    rst $18                                       ; $4995: $df
    sbc [hl]                                      ; $4996: $9e

Jump_051_4997:
    sbc $51                                       ; $4997: $de $51
    ld a, $7b                                     ; $4999: $3e $7b
    ld c, h                                       ; $499b: $4c
    xor a                                         ; $499c: $af
    sub [hl]                                      ; $499d: $96

Jump_051_499e:
    sbc d                                         ; $499e: $9a
    ld d, $22                                     ; $499f: $16 $22
    pop bc                                        ; $49a1: $c1
    ld e, $01                                     ; $49a2: $1e $01
    ld c, a                                       ; $49a4: $4f
    bit 1, [hl]                                   ; $49a5: $cb $4e
    ld sp, $db4d                                  ; $49a7: $31 $4d $db
    ret c                                         ; $49aa: $d8

jr_051_49ab:
    inc de                                        ; $49ab: $13
    add hl, hl                                    ; $49ac: $29
    inc a                                         ; $49ad: $3c
    and [hl]                                      ; $49ae: $a6
    dec e                                         ; $49af: $1d
    cp l                                          ; $49b0: $bd
    inc b                                         ; $49b1: $04
    rst $00                                       ; $49b2: $c7
    db $e3                                        ; $49b3: $e3
    ld de, $4f02                                  ; $49b4: $11 $02 $4f
    rst $28                                       ; $49b7: $ef
    ld [de], a                                    ; $49b8: $12
    or c                                          ; $49b9: $b1
    pop de                                        ; $49ba: $d1
    ld sp, hl                                     ; $49bb: $f9
    ld b, h                                       ; $49bc: $44
    and d                                         ; $49bd: $a2
    ld h, a                                       ; $49be: $67
    jp Jump_051_4397                              ; $49bf: $c3 $97 $43


    xor d                                         ; $49c2: $aa
    inc bc                                        ; $49c3: $03
    ld c, $4c                                     ; $49c4: $0e $4c
    or d                                          ; $49c6: $b2
    rra                                           ; $49c7: $1f
    ld e, [hl]                                    ; $49c8: $5e
    dec a                                         ; $49c9: $3d
    db $fd                                        ; $49ca: $fd
    xor [hl]                                      ; $49cb: $ae
    jp Jump_051_70d6                              ; $49cc: $c3 $d6 $70


    ld a, [hl]                                    ; $49cf: $7e
    rrca                                          ; $49d0: $0f
    pop de                                        ; $49d1: $d1
    db $f4                                        ; $49d2: $f4
    ld a, [de]                                    ; $49d3: $1a
    add hl, bc                                    ; $49d4: $09
    or $08                                        ; $49d5: $f6 $08
    jr nz, @+$11                                  ; $49d7: $20 $0f

    sub c                                         ; $49d9: $91
    add sp, -$27                                  ; $49da: $e8 $d9
    ld h, h                                       ; $49dc: $64
    ccf                                           ; $49dd: $3f
    ld hl, $b21e                                  ; $49de: $21 $1e $b2
    jp nc, $bc27                                  ; $49e1: $d2 $27 $bc

    ld hl, sp+$15                                 ; $49e4: $f8 $15
    push af                                       ; $49e6: $f5
    ld [$8f01], sp                                ; $49e7: $08 $01 $8f
    db $eb                                        ; $49ea: $eb
    ld l, h                                       ; $49eb: $6c
    ld [hl], $7c                                  ; $49ec: $36 $7c
    ccf                                           ; $49ee: $3f
    ld hl, $3d5e                                  ; $49ef: $21 $5e $3d
    ld d, l                                       ; $49f2: $55
    db $f4                                        ; $49f3: $f4
    rst $10                                       ; $49f4: $d7
    or d                                          ; $49f5: $b2
    ld [hl], a                                    ; $49f6: $77
    ld b, d                                       ; $49f7: $42
    ld [hl], c                                    ; $49f8: $71
    db $d3                                        ; $49f9: $d3
    inc sp                                        ; $49fa: $33
    add hl, hl                                    ; $49fb: $29
    ld l, l                                       ; $49fc: $6d
    add [hl]                                      ; $49fd: $86
    db $e3                                        ; $49fe: $e3
    ld b, d                                       ; $49ff: $42
    db $fc                                        ; $4a00: $fc
    ld e, a                                       ; $4a01: $5f
    dec [hl]                                      ; $4a02: $35
    scf                                           ; $4a03: $37
    push af                                       ; $4a04: $f5
    jp $ee1d                                      ; $4a05: $c3 $1d $ee


    jp hl                                         ; $4a08: $e9


    dec e                                         ; $4a09: $1d
    add hl, hl                                    ; $4a0a: $29
    ret                                           ; $4a0b: $c9


    inc h                                         ; $4a0c: $24
    halt                                          ; $4a0d: $76
    db $f4                                        ; $4a0e: $f4
    db $e4                                        ; $4a0f: $e4
    add sp, -$26                                  ; $4a10: $e8 $da
    sub e                                         ; $4a12: $93
    rst $08                                       ; $4a13: $cf
    ld [hl], d                                    ; $4a14: $72
    dec l                                         ; $4a15: $2d
    ld a, [$168a]                                 ; $4a16: $fa $8a $16
    sub h                                         ; $4a19: $94
    add [hl]                                      ; $4a1a: $86
    ld b, e                                       ; $4a1b: $43
    inc b                                         ; $4a1c: $04
    jr jr_051_49ab                                ; $4a1d: $18 $8c

    ld b, b                                       ; $4a1f: $40
    ld [$bafd], sp                                ; $4a20: $08 $fd $ba

jr_051_4a23:
    rla                                           ; $4a23: $17
    ld a, e                                       ; $4a24: $7b
    inc b                                         ; $4a25: $04
    ld c, a                                       ; $4a26: $4f
    xor e                                         ; $4a27: $ab
    ld a, l                                       ; $4a28: $7d
    ld b, a                                       ; $4a29: $47
    rst $08                                       ; $4a2a: $cf
    add [hl]                                      ; $4a2b: $86
    rrca                                          ; $4a2c: $0f
    rst $20                                       ; $4a2d: $e7
    and a                                         ; $4a2e: $a7
    rra                                           ; $4a2f: $1f
    ld [$0211], a                                 ; $4a30: $ea $11 $02
    jr nz, jr_051_4a23                            ; $4a33: $20 $ee

    cp l                                          ; $4a35: $bd
    db $ec                                        ; $4a36: $ec
    reti                                          ; $4a37: $d9


    or e                                          ; $4a38: $b3
    ld b, a                                       ; $4a39: $47
    ld c, a                                       ; $4a3a: $4f
    bit 1, [hl]                                   ; $4a3b: $cb $4e
    xor a                                         ; $4a3d: $af
    sbc [hl]                                      ; $4a3e: $9e
    dec c                                         ; $4a3f: $0d
    ld a, a                                       ; $4a40: $7f
    add h                                         ; $4a41: $84
    nop                                           ; $4a42: $00
    rrca                                          ; $4a43: $0f
    pop de                                        ; $4a44: $d1
    db $f4                                        ; $4a45: $f4
    ld a, [de]                                    ; $4a46: $1a
    add hl, bc                                    ; $4a47: $09
    or $c3                                        ; $4a48: $f6 $c3
    ret c                                         ; $4a4a: $d8

    and $ff                                       ; $4a4b: $e6 $ff
    ldh a, [rBCPD]                                ; $4a4d: $f0 $69
    push de                                       ; $4a4f: $d5
    db $d3                                        ; $4a50: $d3
    xor [hl]                                      ; $4a51: $ae
    ld a, e                                       ; $4a52: $7b
    ld sp, hl                                     ; $4a53: $f9
    or h                                          ; $4a54: $b4
    db $10                                        ; $4a55: $10
    add hl, bc                                    ; $4a56: $09
    or $08                                        ; $4a57: $f6 $08
    rrca                                          ; $4a59: $0f
    push de                                       ; $4a5a: $d5
    call $9b3a                                    ; $4a5b: $cd $3a $9b
    ld c, l                                       ; $4a5e: $4d
    ld b, [hl]                                    ; $4a5f: $46
    ld sp, hl                                     ; $4a60: $f9
    db $ec                                        ; $4a61: $ec
    or c                                          ; $4a62: $b1
    ld a, $ac                                     ; $4a63: $3e $ac
    xor l                                         ; $4a65: $ad
    ld l, c                                       ; $4a66: $69
    ld hl, $ec12                                  ; $4a67: $21 $12 $ec
    ld de, $4b8f                                  ; $4a6a: $11 $8f $4b
    adc l                                         ; $4a6d: $8d
    cp e                                          ; $4a6e: $bb
    add hl, hl                                    ; $4a6f: $29
    or d                                          ; $4a70: $b2
    call nz, $af67                                ; $4a71: $c4 $67 $af
    jp c, $be5d                                   ; $4a74: $da $5d $be

    reti                                          ; $4a77: $d9


    ld l, e                                       ; $4a78: $6b
    reti                                          ; $4a79: $d9


    inc de                                        ; $4a7a: $13
    or c                                          ; $4a7b: $b1
    db $ec                                        ; $4a7c: $ec
    add a                                         ; $4a7d: $87
    ld sp, $95e9                                  ; $4a7e: $31 $e9 $95
    ei                                            ; $4a81: $fb
    sbc b                                         ; $4a82: $98
    and l                                         ; $4a83: $a5
    and [hl]                                      ; $4a84: $a6
    sub l                                         ; $4a85: $95
    adc l                                         ; $4a86: $8d
    add l                                         ; $4a87: $85
    inc c                                         ; $4a88: $0c
    di                                            ; $4a89: $f3
    ld d, l                                       ; $4a8a: $55
    ld a, [hl+]                                   ; $4a8b: $2a
    add h                                         ; $4a8c: $84
    ld d, c                                       ; $4a8d: $51
    ld a, h                                       ; $4a8e: $7c
    ld l, e                                       ; $4a8f: $6b
    sbc e                                         ; $4a90: $9b
    sub l                                         ; $4a91: $95
    ld [hl+], a                                   ; $4a92: $22
    ld [hl], b                                    ; $4a93: $70
    and b                                         ; $4a94: $a0
    ld b, e                                       ; $4a95: $43
    or $10                                        ; $4a96: $f6 $10
    ld c, l                                       ; $4a98: $4d
    xor a                                         ; $4a99: $af
    sub c                                         ; $4a9a: $91
    ret c                                         ; $4a9b: $d8

    pop de                                        ; $4a9c: $d1
    inc hl                                        ; $4a9d: $23
    ld a, d                                       ; $4a9e: $7a
    push af                                       ; $4a9f: $f5
    db $ec                                        ; $4aa0: $ec
    pop de                                        ; $4aa1: $d1
    cp e                                          ; $4aa2: $bb
    ld [hl+], a                                   ; $4aa3: $22
    ld bc, $9e77                                  ; $4aa4: $01 $77 $9e
    adc h                                         ; $4aa7: $8c
    ld a, [c]                                     ; $4aa8: $f2
    reti                                          ; $4aa9: $d9


    ld h, e                                       ; $4aaa: $63
    ld a, l                                       ; $4aab: $7d
    ld e, b                                       ; $4aac: $58
    ld e, e                                       ; $4aad: $5b
    db $d3                                        ; $4aae: $d3
    ld b, d                                       ; $4aaf: $42
    inc h                                         ; $4ab0: $24
    ret c                                         ; $4ab1: $d8

    inc hl                                        ; $4ab2: $23
    adc a                                         ; $4ab3: $8f
    ld c, e                                       ; $4ab4: $4b
    adc l                                         ; $4ab5: $8d
    cp e                                          ; $4ab6: $bb
    add hl, hl                                    ; $4ab7: $29
    or d                                          ; $4ab8: $b2
    call nz, $af67                                ; $4ab9: $c4 $67 $af
    jp c, $be5d                                   ; $4abc: $da $5d $be

    reti                                          ; $4abf: $d9


    ld l, e                                       ; $4ac0: $6b
    reti                                          ; $4ac1: $d9


    inc de                                        ; $4ac2: $13
    or c                                          ; $4ac3: $b1

Call_051_4ac4:
    db $ec                                        ; $4ac4: $ec
    add a                                         ; $4ac5: $87
    ld sp, $95e9                                  ; $4ac6: $31 $e9 $95
    ei                                            ; $4ac9: $fb
    sbc b                                         ; $4aca: $98
    and l                                         ; $4acb: $a5
    and [hl]                                      ; $4acc: $a6
    sub l                                         ; $4acd: $95
    adc l                                         ; $4ace: $8d
    add l                                         ; $4acf: $85
    call z, $ffef                                 ; $4ad0: $cc $ef $ff
    jp $957c                                      ; $4ad3: $c3 $7c $95


    ld a, [bc]                                    ; $4ad6: $0a
    ld h, c                                       ; $4ad7: $61
    inc d                                         ; $4ad8: $14
    rst $18                                       ; $4ad9: $df
    jp c, $a566                                   ; $4ada: $da $66 $a5

    ld [$e81c], sp                                ; $4add: $08 $1c $e8
    sub b                                         ; $4ae0: $90
    reti                                          ; $4ae1: $d9


    ld h, h                                       ; $4ae2: $64
    sub h                                         ; $4ae3: $94
    rst $08                                       ; $4ae4: $cf
    ld e, $e3                                     ; $4ae5: $1e $e3
    ld c, h                                       ; $4ae7: $4c
    dec sp                                        ; $4ae8: $3b
    ld d, a                                       ; $4ae9: $57
    ld e, l                                       ; $4aea: $5d
    ld h, d                                       ; $4aeb: $62
    ld h, e                                       ; $4aec: $63
    ld a, l                                       ; $4aed: $7d
    ld e, b                                       ; $4aee: $58
    ld e, e                                       ; $4aef: $5b
    ld a, e                                       ; $4af0: $7b
    adc b                                         ; $4af1: $88
    and [hl]                                      ; $4af2: $a6
    rst $10                                       ; $4af3: $d7
    ld c, b                                       ; $4af4: $48
    or b                                          ; $4af5: $b0
    ld b, a                                       ; $4af6: $47
    rrca                                          ; $4af7: $0f

Jump_051_4af8:
    pop de                                        ; $4af8: $d1
    db $f4                                        ; $4af9: $f4
    ld a, [de]                                    ; $4afa: $1a
    add hl, bc                                    ; $4afb: $09
    or $03                                        ; $4afc: $f6 $03
    call Call_051_6cf7                            ; $4afe: $cd $f7 $6c
    or d                                          ; $4b01: $b2
    ld [hl], h                                    ; $4b02: $74
    rst $10                                       ; $4b03: $d7
    inc hl                                        ; $4b04: $23
    inc b                                         ; $4b05: $04
    adc a                                         ; $4b06: $8f
    dec bc                                        ; $4b07: $0b
    ld b, d                                       ; $4b08: $42
    ret z                                         ; $4b09: $c8

    inc l                                         ; $4b0a: $2c
    dec [hl]                                      ; $4b0b: $35
    ld l, a                                       ; $4b0c: $6f
    db $d3                                        ; $4b0d: $d3
    or e                                          ; $4b0e: $b3
    pop hl                                        ; $4b0f: $e1
    db $10                                        ; $4b10: $10
    ld b, d                                       ; $4b11: $42
    inc b                                         ; $4b12: $04
    ld c, a                                       ; $4b13: $4f
    bit 1, [hl]                                   ; $4b14: $cb $4e
    dec sp                                        ; $4b16: $3b
    call nz, $8406                                ; $4b17: $c4 $06 $84
    ldh a, [$e6]                                  ; $4b1a: $f0 $e6
    sub h                                         ; $4b1c: $94
    halt                                          ; $4b1d: $76
    ld [hl], $fd                                  ; $4b1e: $36 $fd
    xor $e8                                       ; $4b20: $ee $e8
    pop hl                                        ; $4b22: $e1
    db $fc                                        ; $4b23: $fc
    cp b                                          ; $4b24: $b8
    ld a, a                                       ; $4b25: $7f
    ld d, e                                       ; $4b26: $53
    call nz, $fd4d                                ; $4b27: $c4 $4d $fd
    ld [hl], b                                    ; $4b2a: $70
    rrca                                          ; $4b2b: $0f
    add c                                         ; $4b2c: $81
    ld [$6fc0], sp                                ; $4b2d: $08 $c0 $6f
    adc d                                         ; $4b30: $8a
    ld c, h                                       ; $4b31: $4c
    xor $bc                                       ; $4b32: $ee $bc
    ld h, e                                       ; $4b34: $63
    ld h, $a5                                     ; $4b35: $26 $a5
    db $ed                                        ; $4b37: $ed
    add a                                         ; $4b38: $87
    sub a                                         ; $4b39: $97
    adc l                                         ; $4b3a: $8d
    dec b                                         ; $4b3b: $05
    rst $20                                       ; $4b3c: $e7
    pop de                                        ; $4b3d: $d1
    di                                            ; $4b3e: $f3
    ld [hl], $ff                                  ; $4b3f: $36 $ff
    add a                                         ; $4b41: $87
    ccf                                           ; $4b42: $3f
    ld a, [de]                                    ; $4b43: $1a
    sbc b                                         ; $4b44: $98
    dec sp                                        ; $4b45: $3b
    xor l                                         ; $4b46: $ad
    ld l, h                                       ; $4b47: $6c
    call z, $5e93                                 ; $4b48: $cc $93 $5e
    ld [hl], $74                                  ; $4b4b: $36 $74
    ld d, a                                       ; $4b4d: $57
    inc a                                         ; $4b4e: $3c
    sub [hl]                                      ; $4b4f: $96
    cp $a1                                        ; $4b50: $fe $a1
    rst $08                                       ; $4b52: $cf
    sbc [hl]                                      ; $4b53: $9e
    ld l, h                                       ; $4b54: $6c
    reti                                          ; $4b55: $d9


    ld h, b                                       ; $4b56: $60
    adc a                                         ; $4b57: $8f
    nop                                           ; $4b58: $00
    adc a                                         ; $4b59: $8f
    ld c, e                                       ; $4b5a: $4b
    ld c, l                                       ; $4b5b: $4d
    db $dd                                        ; $4b5c: $dd
    inc d                                         ; $4b5d: $14
    sbc c                                         ; $4b5e: $99
    ld c, c                                       ; $4b5f: $49
    ld l, c                                       ; $4b60: $69
    ei                                            ; $4b61: $fb
    pop hl                                        ; $4b62: $e1
    ld h, l                                       ; $4b63: $65
    ld h, e                                       ; $4b64: $63
    pop bc                                        ; $4b65: $c1
    ld a, c                                       ; $4b66: $79
    db $f4                                        ; $4b67: $f4
    cp h                                          ; $4b68: $bc
    call $e1ff                                    ; $4b69: $cd $ff $e1
    set 1, h                                      ; $4b6c: $cb $cc
    db $e3                                        ; $4b6e: $e3
    db $eb                                        ; $4b6f: $eb
    ld [hl], b                                    ; $4b70: $70
    ld a, e                                       ; $4b71: $7b
    ld e, h                                       ; $4b72: $5c
    ld l, d                                       ; $4b73: $6a
    sbc $c6                                       ; $4b74: $de $c6
    jp c, $b958                                   ; $4b76: $da $58 $b9

    adc a                                         ; $4b79: $8f
    ld e, c                                       ; $4b7a: $59
    ld l, d                                       ; $4b7b: $6a
    inc h                                         ; $4b7c: $24
    ld de, $231b                                  ; $4b7d: $11 $1b $23
    cp a                                          ; $4b80: $bf
    cp d                                          ; $4b81: $ba
    ld d, [hl]                                    ; $4b82: $56
    ld a, [$f86c]                                 ; $4b83: $fa $6c $f8
    cp b                                          ; $4b86: $b8
    ld d, e                                       ; $4b87: $53
    adc a                                         ; $4b88: $8f
    ld e, c                                       ; $4b89: $59
    ld l, d                                       ; $4b8a: $6a
    ld e, d                                       ; $4b8b: $5a
    push af                                       ; $4b8c: $f5
    sbc b                                         ; $4b8d: $98
    ret                                           ; $4b8e: $c9


    cp $91                                        ; $4b8f: $fe $91
    ld a, l                                       ; $4b91: $7d
    push af                                       ; $4b92: $f5
    cp a                                          ; $4b93: $bf
    rst $08                                       ; $4b94: $cf
    ret nc                                        ; $4b95: $d0

    reti                                          ; $4b96: $d9


    and b                                         ; $4b97: $a0
    ld [hl], b                                    ; $4b98: $70
    ld h, b                                       ; $4b99: $60
    jp hl                                         ; $4b9a: $e9


    jr nc, jr_051_4bb5                            ; $4b9b: $30 $18

    sbc c                                         ; $4b9d: $99
    ld c, c                                       ; $4b9e: $49
    ld l, c                                       ; $4b9f: $69
    ld a, e                                       ; $4ba0: $7b
    xor b                                         ; $4ba1: $a8
    ld l, [hl]                                    ; $4ba2: $6e
    sub $ae                                       ; $4ba3: $d6 $ae
    ld a, b                                       ; $4ba5: $78
    ld c, h                                       ; $4ba6: $4c
    dec hl                                        ; $4ba7: $2b
    dec de                                        ; $4ba8: $1b
    db $d3                                        ; $4ba9: $d3
    xor [hl]                                      ; $4baa: $ae
    ld a, e                                       ; $4bab: $7b
    ld sp, hl                                     ; $4bac: $f9
    add sp, $55                                   ; $4bad: $e8 $55
    sla h                                         ; $4baf: $cb $24
    ld sp, hl                                     ; $4bb1: $f9
    ccf                                           ; $4bb2: $3f
    add $2c                                       ; $4bb3: $c6 $2c

jr_051_4bb5:
    dec [hl]                                      ; $4bb5: $35
    cp l                                          ; $4bb6: $bd
    cp d                                          ; $4bb7: $ba
    ld h, [hl]                                    ; $4bb8: $66
    ld c, a                                       ; $4bb9: $4f
    halt                                          ; $4bba: $76
    sub d                                         ; $4bbb: $92
    ld b, b                                       ; $4bbc: $40
    inc b                                         ; $4bbd: $04
    ld c, a                                       ; $4bbe: $4f
    ld hl, sp-$27                                 ; $4bbf: $f8 $d9
    ldh a, [rBCPD]                                ; $4bc1: $f0 $69

jr_051_4bc3:
    ld b, a                                       ; $4bc3: $47
    ld c, a                                       ; $4bc4: $4f
    xor a                                         ; $4bc5: $af
    sbc [hl]                                      ; $4bc6: $9e
    cp l                                          ; $4bc7: $bd
    xor $e3                                       ; $4bc8: $ee $e3
    ld [c], a                                     ; $4bca: $e2
    or e                                          ; $4bcb: $b3
    rra                                           ; $4bcc: $1f
    or b                                          ; $4bcd: $b0
    and b                                         ; $4bce: $a0
    jp $21cd                                      ; $4bcf: $c3 $cd $21


    ld a, [hl+]                                   ; $4bd2: $2a
    xor a                                         ; $4bd3: $af
    ld [hl], h                                    ; $4bd4: $74
    db $db                                        ; $4bd5: $db
    and l                                         ; $4bd6: $a5
    add $9d                                       ; $4bd7: $c6 $9d
    ld a, d                                       ; $4bd9: $7a
    ret nz                                        ; $4bda: $c0

    sbc e                                         ; $4bdb: $9b
    push bc                                       ; $4bdc: $c5
    ld [hl], c                                    ; $4bdd: $71
    ld d, a                                       ; $4bde: $57
    xor h                                         ; $4bdf: $ac
    ld l, c                                       ; $4be0: $69
    jr c, jr_051_4bc3                             ; $4be1: $38 $e0

    db $fc                                        ; $4be3: $fc
    db $fc                                        ; $4be4: $fc
    cp $9f                                        ; $4be5: $fe $9f
    ld l, $52                                     ; $4be7: $2e $52
    di                                            ; $4be9: $f3
    ei                                            ; $4bea: $fb
    rst $38                                       ; $4beb: $ff
    db $ec                                        ; $4bec: $ec
    sub l                                         ; $4bed: $95
    ld h, l                                       ; $4bee: $65
    and e                                         ; $4bef: $a3
    rst $20                                       ; $4bf0: $e7
    ld a, [$0110]                                 ; $4bf1: $fa $10 $01
    ld c, a                                       ; $4bf4: $4f
    bit 1, [hl]                                   ; $4bf5: $cb $4e
    dec e                                         ; $4bf7: $1d
    rst $38                                       ; $4bf8: $ff
    ld b, a                                       ; $4bf9: $47
    cpl                                           ; $4bfa: $2f
    ld a, d                                       ; $4bfb: $7a
    xor [hl]                                      ; $4bfc: $ae
    di                                            ; $4bfd: $f3
    set 7, h                                      ; $4bfe: $cb $fc
    adc [hl]                                      ; $4c00: $8e
    sbc [hl]                                      ; $4c01: $9e
    dec c                                         ; $4c02: $0d
    rst $18                                       ; $4c03: $df
    dec d                                         ; $4c04: $15
    adc a                                         ; $4c05: $8f
    ld d, c                                       ; $4c06: $51
    ld e, [hl]                                    ; $4c07: $5e
    ld d, h                                       ; $4c08: $54
    adc l                                         ; $4c09: $8d
    dec sp                                        ; $4c0a: $3b
    ld [hl], l                                    ; $4c0b: $75
    or $e2                                        ; $4c0c: $f6 $e2
    dec sp                                        ; $4c0e: $3b
    rst $00                                       ; $4c0f: $c7
    rrca                                          ; $4c10: $0f
    dec a                                         ; $4c11: $3d
    ld a, d                                       ; $4c12: $7a
    reti                                          ; $4c13: $d9


    ret nc                                        ; $4c14: $d0

    ld l, c                                       ; $4c15: $69
    ld h, l                                       ; $4c16: $65
    ld h, e                                       ; $4c17: $63
    inc h                                         ; $4c18: $24
    ld de, $5f29                                  ; $4c19: $11 $29 $5f
    or $e3                                        ; $4c1c: $f6 $e3
    rst $38                                       ; $4c1e: $ff
    ld e, d                                       ; $4c1f: $5a
    add d                                         ; $4c20: $82
    db $e3                                        ; $4c21: $e3
    and e                                         ; $4c22: $a3
    add $17                                       ; $4c23: $c6 $17
    xor $e3                                       ; $4c25: $ee $e3
    sub d                                         ; $4c27: $92
    rst $38                                       ; $4c28: $ff
    push af                                       ; $4c29: $f5
    add h                                         ; $4c2a: $84
    ld [hl], c                                    ; $4c2b: $71
    ld hl, sp-$2e                                 ; $4c2c: $f8 $d2
    pop de                                        ; $4c2e: $d1
    xor d                                         ; $4c2f: $aa
    cp h                                          ; $4c30: $bc
    call Call_051_70ff                            ; $4c31: $cd $ff $70
    ld h, b                                       ; $4c34: $60
    xor $f4                                       ; $4c35: $ee $f4
    dec hl                                        ; $4c37: $2b

jr_051_4c38:
    ld [de], a                                    ; $4c38: $12
    dec a                                         ; $4c39: $3d
    ld l, $e8                                     ; $4c3a: $2e $e8
    ld [hl], b                                    ; $4c3c: $70
    ld [hl], e                                    ; $4c3d: $73
    adc b                                         ; $4c3e: $88
    sbc d                                         ; $4c3f: $9a
    ld e, [hl]                                    ; $4c40: $5e
    ld l, l                                       ; $4c41: $6d
    and e                                         ; $4c42: $a3
    ld l, e                                       ; $4c43: $6b
    cp h                                          ; $4c44: $bc
    rrca                                          ; $4c45: $0f
    ld a, b                                       ; $4c46: $78

Call_051_4c47:
    or e                                          ; $4c47: $b3
    jr c, jr_051_4c38                             ; $4c48: $38 $ee

    adc d                                         ; $4c4a: $8a
    dec [hl]                                      ; $4c4b: $35
    dec c                                         ; $4c4c: $0d
    scf                                           ; $4c4d: $37
    jr nc, jr_051_4cc7                            ; $4c4e: $30 $77

    and h                                         ; $4c50: $a4
    ld h, h                                       ; $4c51: $64
    adc d                                         ; $4c52: $8a
    add a                                         ; $4c53: $87
    ld [$e1e7], sp                                ; $4c54: $08 $e7 $e1
    db $d3                                        ; $4c57: $d3
    xor e                                         ; $4c58: $ab
    and a                                         ; $4c59: $a7
    or c                                          ; $4c5a: $b1
    sub h                                         ; $4c5b: $94
    ld a, [$f957]                                 ; $4c5c: $fa $57 $f9
    ld c, d                                       ; $4c5f: $4a
    sbc a                                         ; $4c60: $9f
    cp l                                          ; $4c61: $bd
    ld l, d                                       ; $4c62: $6a
    push hl                                       ; $4c63: $e5
    ld a, $8d                                     ; $4c64: $3e $8d
    ld a, c                                       ; $4c66: $79
    ld a, h                                       ; $4c67: $7c
    cp h                                          ; $4c68: $bc
    ld h, [hl]                                    ; $4c69: $66
    ld [hl], d                                    ; $4c6a: $72
    ld e, [hl]                                    ; $4c6b: $5e
    and $67                                       ; $4c6c: $e6 $67
    adc a                                         ; $4c6e: $8f
    ld a, $5b                                     ; $4c6f: $3e $5b
    ld a, $3a                                     ; $4c71: $3e $3a
    sub e                                         ; $4c73: $93
    ei                                            ; $4c74: $fb
    ld a, l                                       ; $4c75: $7d
    pop bc                                        ; $4c76: $c1
    ld a, c                                       ; $4c77: $79
    db $f4                                        ; $4c78: $f4
    jp z, $cc7d                                   ; $4c79: $ca $7d $cc

    ld d, d                                       ; $4c7c: $52
    res 4, l                                      ; $4c7d: $cb $a5
    ld a, h                                       ; $4c7f: $7c
    sbc c                                         ; $4c80: $99
    ld e, a                                       ; $4c81: $5f
    db $fc                                        ; $4c82: $fc
    ld [hl+], a                                   ; $4c83: $22
    or l                                          ; $4c84: $b5
    ld e, h                                       ; $4c85: $5c

Call_051_4c86:
    inc h                                         ; $4c86: $24
    ld a, [de]                                    ; $4c87: $1a
    ld [hl+], a                                   ; $4c88: $22
    ld h, b                                       ; $4c89: $60
    ld a, b                                       ; $4c8a: $78
    ld h, [hl]                                    ; $4c8b: $66
    sbc l                                         ; $4c8c: $9d
    ld c, l                                       ; $4c8d: $4d
    xor $fa                                       ; $4c8e: $ee $fa
    or b                                          ; $4c90: $b0
    or [hl]                                       ; $4c91: $b6
    ld l, h                                       ; $4c92: $6c
    adc h                                         ; $4c93: $8c
    ld e, [hl]                                    ; $4c94: $5e
    dec [hl]                                      ; $4c95: $35
    ld h, [hl]                                    ; $4c96: $66
    ld [hl-], a                                   ; $4c97: $32
    ld l, a                                       ; $4c98: $6f
    db $e3                                        ; $4c99: $e3
    add hl, de                                    ; $4c9a: $19
    ld b, d                                       ; $4c9b: $42
    ld e, b                                       ; $4c9c: $58
    xor $63                                       ; $4c9d: $ee $63
    sub [hl]                                      ; $4c9f: $96
    ld e, d                                       ; $4ca0: $5a
    ld a, [hl-]                                   ; $4ca1: $3a
    inc a                                         ; $4ca2: $3c
    xor h                                         ; $4ca3: $ac
    adc l                                         ; $4ca4: $8d
    pop de                                        ; $4ca5: $d1
    xor e                                         ; $4ca6: $ab
    sub [hl]                                      ; $4ca7: $96
    ld sp, hl                                     ; $4ca8: $f9
    reti                                          ; $4ca9: $d9


    and e                                         ; $4caa: $a3
    ld hl, $0f02                                  ; $4cab: $21 $02 $0f
    and a                                         ; $4cae: $a7
    sub [hl]                                      ; $4caf: $96
    ld a, e                                       ; $4cb0: $7b
    ld [hl], $fd                                  ; $4cb1: $36 $fd
    ld l, $6d                                     ; $4cb3: $2e $6d
    jp c, $b8c6                                   ; $4cb5: $da $c6 $b8

    ld [hl+], a                                   ; $4cb8: $22
    ld a, [hl]                                    ; $4cb9: $7e
    inc sp                                        ; $4cba: $33
    pop af                                        ; $4cbb: $f1
    jp hl                                         ; $4cbc: $e9


    push de                                       ; $4cbd: $d5
    dec [hl]                                      ; $4cbe: $35
    db $fd                                        ; $4cbf: $fd
    db $10                                        ; $4cc0: $10
    adc c                                         ; $4cc1: $89
    sbc [hl]                                      ; $4cc2: $9e
    ld c, c                                       ; $4cc3: $49
    ld l, c                                       ; $4cc4: $69
    db $d3                                        ; $4cc5: $d3
    sbc b                                         ; $4cc6: $98

jr_051_4cc7:
    rst $00                                       ; $4cc7: $c7
    rst $00                                       ; $4cc8: $c7
    ld l, e                                       ; $4cc9: $6b
    ld a, d                                       ; $4cca: $7a
    ld [hl], l                                    ; $4ccb: $75
    adc c                                         ; $4ccc: $89
    db $ed                                        ; $4ccd: $ed
    add d                                         ; $4cce: $82
    inc bc                                        ; $4ccf: $03
    db $e4                                        ; $4cd0: $e4
    cp [hl]                                       ; $4cd1: $be
    ld [hl], h                                    ; $4cd2: $74
    db $e4                                        ; $4cd3: $e4
    ld d, b                                       ; $4cd4: $50
    ld e, l                                       ; $4cd5: $5d
    dec bc                                        ; $4cd6: $0b
    rst $30                                       ; $4cd7: $f7
    ld a, c                                       ; $4cd8: $79
    sbc e                                         ; $4cd9: $9b
    rst $38                                       ; $4cda: $ff
    ld [hl], a                                    ; $4cdb: $77
    db $f4                                        ; $4cdc: $f4
    ld b, d                                       ; $4cdd: $42
    sub [hl]                                      ; $4cde: $96
    ldh [$f8], a                                  ; $4cdf: $e0 $f8
    rrca                                          ; $4ce1: $0f
    dec a                                         ; $4ce2: $3d
    ld a, [hl]                                    ; $4ce3: $7e
    adc [hl]                                      ; $4ce4: $8e
    ld h, l                                       ; $4ce5: $65
    ld b, e                                       ; $4ce6: $43
    sub a                                         ; $4ce7: $97
    cp [hl]                                       ; $4ce8: $be
    ld h, d                                       ; $4ce9: $62
    and e                                         ; $4cea: $a3
    sub a                                         ; $4ceb: $97
    adc e                                         ; $4cec: $8b
    jp nc, Jump_051_7192                          ; $4ced: $d2 $92 $71

    and $13                                       ; $4cf0: $e6 $13
    adc b                                         ; $4cf2: $88
    nop                                           ; $4cf3: $00
    rst $20                                       ; $4cf4: $e7
    db $fc                                        ; $4cf5: $fc
    adc [hl]                                      ; $4cf6: $8e
    sbc [hl]                                      ; $4cf7: $9e
    ld a, [hl]                                    ; $4cf8: $7e
    and a                                         ; $4cf9: $a7
    rra                                           ; $4cfa: $1f
    ld [hl+], a                                   ; $4cfb: $22
    pop de                                        ; $4cfc: $d1
    db $ec                                        ; $4cfd: $ec
    ld de, $ef4f                                  ; $4cfe: $11 $4f $ef
    jp nc, $6da6                                  ; $4d01: $d2 $a6 $6d

    ld c, h                                       ; $4d04: $4c
    xor e                                         ; $4d05: $ab
    ld [hl], c                                    ; $4d06: $71
    cp h                                          ; $4d07: $bc
    ei                                            ; $4d08: $fb
    cp b                                          ; $4d09: $b8
    rra                                           ; $4d0a: $1f
    dec a                                         ; $4d0b: $3d
    call c, $a21c                                 ; $4d0c: $dc $1c $a2
    adc $e6                                       ; $4d0f: $ce $e6
    xor h                                         ; $4d11: $ac
    inc d                                         ; $4d12: $14
    adc c                                         ; $4d13: $89
    ld e, $b3                                     ; $4d14: $1e $b3
    inc d                                         ; $4d16: $14
    ld b, h                                       ; $4d17: $44
    adc a                                         ; $4d18: $8f
    ld c, e                                       ; $4d19: $4b
    adc l                                         ; $4d1a: $8d
    cp e                                          ; $4d1b: $bb
    add hl, hl                                    ; $4d1c: $29
    or d                                          ; $4d1d: $b2
    sub b                                         ; $4d1e: $90
    ld e, l                                       ; $4d1f: $5d
    ei                                            ; $4d20: $fb
    inc c                                         ; $4d21: $0c
    add h                                         ; $4d22: $84
    ld d, b                                       ; $4d23: $50
    cp a                                          ; $4d24: $bf
    inc hl                                        ; $4d25: $23
    dec h                                         ; $4d26: $25
    ld d, e                                       ; $4d27: $53
    db $fc                                        ; $4d28: $fc
    ld c, h                                       ; $4d29: $4c
    ld c, d                                       ; $4d2a: $4a
    dec de                                        ; $4d2b: $1b
    sbc $e5                                       ; $4d2c: $de $e5
    dec [hl]                                      ; $4d2e: $35
    ld a, [de]                                    ; $4d2f: $1a
    halt                                          ; $4d30: $76
    rrca                                          ; $4d31: $0f
    and l                                         ; $4d32: $a5
    ld a, [$b85a]                                 ; $4d33: $fa $5a $b8
    add a                                         ; $4d36: $87
    sub d                                         ; $4d37: $92
    dec e                                         ; $4d38: $1d
    dec a                                         ; $4d39: $3d
    push bc                                       ; $4d3a: $c5
    or a                                          ; $4d3b: $b7
    call $faa4                                    ; $4d3c: $cd $a4 $fa
    rst $08                                       ; $4d3f: $cf
    and h                                         ; $4d40: $a4
    or h                                          ; $4d41: $b4
    sub c                                         ; $4d42: $91
    ld b, e                                       ; $4d43: $43
    inc h                                         ; $4d44: $24
    ld a, d                                       ; $4d45: $7a
    ld a, [hl]                                    ; $4d46: $7e
    rst $38                                       ; $4d47: $ff
    sbc a                                         ; $4d48: $9f
    ld h, l                                       ; $4d49: $65
    ld h, $0d                                     ; $4d4a: $26 $0d
    rst $30                                       ; $4d4c: $f7
    ld d, b                                       ; $4d4d: $50
    ld [hl-], a                                   ; $4d4e: $32
    ld d, d                                       ; $4d4f: $52
    sub d                                         ; $4d50: $92
    ld c, c                                       ; $4d51: $49
    ld c, h                                       ; $4d52: $4c
    rrca                                          ; $4d53: $0f
    sbc a                                         ; $4d54: $9f
    ldh a, [$3e]                                  ; $4d55: $f0 $3e
    ld b, e                                       ; $4d57: $43
    ld h, a                                       ; $4d58: $67
    ld b, e                                       ; $4d59: $43
    and $1d                                       ; $4d5a: $e6 $1d
    jp c, $b749                                   ; $4d5c: $da $49 $b7

    ld h, l                                       ; $4d5f: $65
    ld h, e                                       ; $4d60: $63
    ld e, d                                       ; $4d61: $5a
    ld [hl+], a                                   ; $4d62: $22
    ld [hl], $04                                  ; $4d63: $36 $04
    ld [hl+], a                                   ; $4d65: $22
    rst $20                                       ; $4d66: $e7
    pop hl                                        ; $4d67: $e1
    di                                            ; $4d68: $f3
    ld b, e                                       ; $4d69: $43
    adc b                                         ; $4d6a: $88
    rst $00                                       ; $4d6b: $c7
    sbc b                                         ; $4d6c: $98
    and l                                         ; $4d6d: $a5
    halt                                          ; $4d6e: $76
    push bc                                       ; $4d6f: $c5
    ld h, e                                       ; $4d70: $63
    jr c, jr_051_4d82                             ; $4d71: $38 $0f

    rlca                                          ; $4d73: $07
    sub [hl]                                      ; $4d74: $96
    ld c, [hl]                                    ; $4d75: $4e

Call_051_4d76:
    dec hl                                        ; $4d76: $2b
    reti                                          ; $4d77: $d9


    dec d                                         ; $4d78: $15
    adc a                                         ; $4d79: $8f
    ld [hl], l                                    ; $4d7a: $75
    ret c                                         ; $4d7b: $d8

    sub d                                         ; $4d7c: $92
    jp hl                                         ; $4d7d: $e9


    pop hl                                        ; $4d7e: $e1
    inc de                                        ; $4d7f: $13
    sbc $cf                                       ; $4d80: $de $cf

jr_051_4d82:
    sub [hl]                                      ; $4d82: $96
    ld sp, hl                                     ; $4d83: $f9
    sub c                                         ; $4d84: $91
    sub d                                         ; $4d85: $92
    ld l, c                                       ; $4d86: $69
    dec h                                         ; $4d87: $25
    rlc a                                         ; $4d88: $cb $07
    adc c                                         ; $4d8a: $89
    or $79                                        ; $4d8b: $f6 $79
    xor l                                         ; $4d8d: $ad
    jp Jump_051_70d6                              ; $4d8e: $c3 $d6 $70


    ld a, [hl]                                    ; $4d91: $7e
    ld [hl], $1c                                  ; $4d92: $36 $1c
    ld c, $a4                                     ; $4d94: $0e $a4
    and c                                         ; $4d96: $a1
    set 7, h                                      ; $4d97: $cb $fc
    inc d                                         ; $4d99: $14
    rst $18                                       ; $4d9a: $df
    db $d3                                        ; $4d9b: $d3
    cpl                                           ; $4d9c: $2f
    ld b, h                                       ; $4d9d: $44
    ret nz                                        ; $4d9e: $c0

    ld c, [hl]                                    ; $4d9f: $4e
    sbc l                                         ; $4da0: $9d
    xor [hl]                                      ; $4da1: $ae
    ld c, h                                       ; $4da2: $4c
    jp z, Jump_051_54c6                           ; $4da3: $ca $c6 $54

    rlca                                          ; $4da6: $07
    di                                            ; $4da7: $f3
    ld l, h                                       ; $4da8: $6c
    jp hl                                         ; $4da9: $e9


    db $eb                                        ; $4daa: $eb
    dec [hl]                                      ; $4dab: $35
    ld a, d                                       ; $4dac: $7a
    push de                                       ; $4dad: $d5
    ld [hl-], a                                   ; $4dae: $32
    ccf                                           ; $4daf: $3f
    ld a, e                                       ; $4db0: $7b
    inc [hl]                                      ; $4db1: $34
    call c, $d243                                 ; $4db2: $dc $43 $d2
    res 4, h                                      ; $4db5: $cb $a4
    ld b, [hl]                                    ; $4db7: $46
    ld c, e                                       ; $4db8: $4b
    ld b, [hl]                                    ; $4db9: $46
    ld [de], a                                    ; $4dba: $12
    sub c                                         ; $4dbb: $91
    sbc d                                         ; $4dbc: $9a
    add $ff                                       ; $4dbd: $c6 $ff
    ld e, a                                       ; $4dbf: $5f
    dec sp                                        ; $4dc0: $3b
    add hl, hl                                    ; $4dc1: $29
    inc hl                                        ; $4dc2: $23
    ld hl, $f9c3                                  ; $4dc3: $21 $c3 $f9
    push de                                       ; $4dc6: $d5
    rst $38                                       ; $4dc7: $ff
    dec [hl]                                      ; $4dc8: $35
    rst $28                                       ; $4dc9: $ef
    sbc b                                         ; $4dca: $98
    sub [hl]                                      ; $4dcb: $96
    add sp, -$77                                  ; $4dcc: $e8 $89
    dec c                                         ; $4dce: $0d
    xor c                                         ; $4dcf: $a9
    pop hl                                        ; $4dd0: $e1
    db $fc                                        ; $4dd1: $fc
    ld b, d                                       ; $4dd2: $42
    and [hl]                                      ; $4dd3: $a6

Jump_051_4dd4:
    ld a, b                                       ; $4dd4: $78
    ld d, c                                       ; $4dd5: $51
    adc a                                         ; $4dd6: $8f
    db $10                                        ; $4dd7: $10
    sbc b                                         ; $4dd8: $98
    ld a, [hl-]                                   ; $4dd9: $3a
    rra                                           ; $4dda: $1f
    call nz, $f46b                                ; $4ddb: $c4 $6b $f4
    xor d                                         ; $4dde: $aa
    or e                                          ; $4ddf: $b3
    dec e                                         ; $4de0: $1d
    dec a                                         ; $4de1: $3d
    pop hl                                        ; $4de2: $e1
    sub l                                         ; $4de3: $95
    pop af                                        ; $4de4: $f1
    pop hl                                        ; $4de5: $e1
    db $fc                                        ; $4de6: $fc
    call c, Call_051_4790                         ; $4de7: $dc $90 $47
    inc bc                                        ; $4dea: $03
    ld [hl], e                                    ; $4deb: $73
    and a                                         ; $4dec: $a7
    push de                                       ; $4ded: $d5
    rst $30                                       ; $4dee: $f7
    ld l, d                                       ; $4def: $6a
    adc b                                         ; $4df0: $88
    nop                                           ; $4df1: $00
    ld c, a                                       ; $4df2: $4f
    ldh a, [rOCPD]                                ; $4df3: $f0 $6b
    inc h                                         ; $4df5: $24

Call_051_4df6:
    cp d                                          ; $4df6: $ba
    ld a, d                                       ; $4df7: $7a
    ld [hl], $19                                  ; $4df8: $36 $19
    adc $8f                                       ; $4dfa: $ce $8f
    ld e, [hl]                                    ; $4dfc: $5e
    ld [hl], l                                    ; $4dfd: $75
    ld [hl], $70                                  ; $4dfe: $36 $70
    add $3d                                       ; $4e00: $c6 $3d
    ld a, [$ced1]                                 ; $4e02: $fa $d1 $ce
    sub e                                         ; $4e05: $93
    sub c                                         ; $4e06: $91
    sub d                                         ; $4e07: $92
    ld c, h                                       ; $4e08: $4c
    ld h, d                                       ; $4e09: $62
    sbc c                                         ; $4e0a: $99
    inc h                                         ; $4e0b: $24
    rst $38                                       ; $4e0c: $ff
    rst $00                                       ; $4e0d: $c7
    ld c, $25                                     ; $4e0e: $0e $25
    dec [hl]                                      ; $4e10: $35
    ld a, [de]                                    ; $4e11: $1a
    cp l                                          ; $4e12: $bd
    inc b                                         ; $4e13: $04
    rst $00                                       ; $4e14: $c7
    jp hl                                         ; $4e15: $e9


    pop de                                        ; $4e16: $d1
    inc h                                         ; $4e17: $24
    rla                                           ; $4e18: $17
    push de                                       ; $4e19: $d5
    jp nz, $fbc7                                  ; $4e1a: $c2 $c7 $fb

    ld a, [hl]                                    ; $4e1d: $7e
    db $10                                        ; $4e1e: $10
    cp a                                          ; $4e1f: $bf
    ld b, [hl]                                    ; $4e20: $46
    and d                                         ; $4e21: $a2
    and l                                         ; $4e22: $a5
    ld h, [hl]                                    ; $4e23: $66
    ld d, d                                       ; $4e24: $52
    jp c, $15e8                                   ; $4e25: $da $e8 $15

    db $db                                        ; $4e28: $db
    ld sp, $97de                                  ; $4e29: $31 $de $97
    ld a, c                                       ; $4e2c: $79
    pop af                                        ; $4e2d: $f1
    ld h, l                                       ; $4e2e: $65
    ld b, e                                       ; $4e2f: $43
    ld [hl], a                                    ; $4e30: $77
    push bc                                       ; $4e31: $c5
    ld h, e                                       ; $4e32: $63
    dec h                                         ; $4e33: $25
    adc d                                         ; $4e34: $8a
    rst $28                                       ; $4e35: $ef
    reti                                          ; $4e36: $d9


    xor e                                         ; $4e37: $ab
    jr nz, jr_051_4e3c                            ; $4e38: $20 $02

    jr jr_051_4e77                                ; $4e3a: $18 $3b

jr_051_4e3c:
    and [hl]                                      ; $4e3c: $a6
    dec h                                         ; $4e3d: $25
    ld a, d                                       ; $4e3e: $7a
    ld h, d                                       ; $4e3f: $62
    ld b, e                                       ; $4e40: $43
    ld e, $ed                                     ; $4e41: $1e $ed
    and c                                         ; $4e43: $a1
    ld h, h                                       ; $4e44: $64
    call c, $f3a9                                 ; $4e45: $dc $a9 $f3
    adc c                                         ; $4e48: $89
    ld a, b                                       ; $4e49: $78
    call z, $f96b                                 ; $4e4a: $cc $6b $f9
    xor d                                         ; $4e4d: $aa
    ld [hl], c                                    ; $4e4e: $71
    and a                                         ; $4e4f: $a7
    ld c, [hl]                                    ; $4e50: $4e
    rst $18                                       ; $4e51: $df
    reti                                          ; $4e52: $d9


    sub b                                         ; $4e53: $90
    ld a, c                                       ; $4e54: $79
    add a                                         ; $4e55: $87
    halt                                          ; $4e56: $76
    jp nc, $d96d                                  ; $4e57: $d2 $6d $d9

    sbc b                                         ; $4e5a: $98
    sub [hl]                                      ; $4e5b: $96
    adc b                                         ; $4e5c: $88
    dec c                                         ; $4e5d: $0d
    add hl, de                                    ; $4e5e: $19
    adc $af                                       ; $4e5f: $ce $af
    cp $d7                                        ; $4e61: $fe $d7
    ld [c], a                                     ; $4e63: $e2
    dec hl                                        ; $4e64: $2b
    inc hl                                        ; $4e65: $23
    ld d, l                                       ; $4e66: $55
    sbc h                                         ; $4e67: $9c
    dec de                                        ; $4e68: $1b
    add hl, bc                                    ; $4e69: $09
    ld h, c                                       ; $4e6a: $61
    ccf                                           ; $4e6b: $3f
    or b                                          ; $4e6c: $b0
    add hl, hl                                    ; $4e6d: $29
    ld l, l                                       ; $4e6e: $6d
    call z, $cb52                                 ; $4e6f: $cc $52 $cb
    sbc a                                         ; $4e72: $9f
    rst $28                                       ; $4e73: $ef
    jp hl                                         ; $4e74: $e9


    ld h, l                                       ; $4e75: $65
    ld h, a                                       ; $4e76: $67

jr_051_4e77:
    add sp, -$36                                  ; $4e77: $e8 $ca
    ld a, l                                       ; $4e79: $7d
    ld e, d                                       ; $4e7a: $5a
    ret                                           ; $4e7b: $c9


    ld a, [c]                                     ; $4e7c: $f2
    ccf                                           ; $4e7d: $3f
    ld [hl], b                                    ; $4e7e: $70
    call c, Call_051_5763                         ; $4e7f: $dc $63 $57
    and $6d                                       ; $4e82: $e6 $6d
    cp $0f                                        ; $4e84: $fe $0f
    rra                                           ; $4e86: $1f
    ld [hl], a                                    ; $4e87: $77
    ld [$fb95], a                                 ; $4e88: $ea $95 $fb
    ld c, d                                       ; $4e8b: $4a
    rst $38                                       ; $4e8c: $ff
    ld h, c                                       ; $4e8d: $61
    ld l, e                                       ; $4e8e: $6b
    add hl, bc                                    ; $4e8f: $09
    adc [hl]                                      ; $4e90: $8e
    db $d3                                        ; $4e91: $d3
    and e                                         ; $4e92: $a3
    ld c, c                                       ; $4e93: $49
    ld l, $aa                                     ; $4e94: $2e $aa
    add l                                         ; $4e96: $85
    add a                                         ; $4e97: $87
    or b                                          ; $4e98: $b0
    rra                                           ; $4e99: $1f
    ld c, b                                       ; $4e9a: $48
    ld b, e                                       ; $4e9b: $43
    sub a                                         ; $4e9c: $97
    ld sp, hl                                     ; $4e9d: $f9

Jump_051_4e9e:
    add hl, hl                                    ; $4e9e: $29
    cp [hl]                                       ; $4e9f: $be
    and a                                         ; $4ea0: $a7
    rst $18                                       ; $4ea1: $df
    ld sp, hl                                     ; $4ea2: $f9
    db $fd                                        ; $4ea3: $fd
    ld a, a                                       ; $4ea4: $7f
    rrca                                          ; $4ea5: $0f
    and l                                         ; $4ea6: $a5

Jump_051_4ea7:
    ld a, [$f65a]                                 ; $4ea7: $fa $5a $f6
    ld [$c10f], sp                                ; $4eaa: $08 $0f $c1
    ld h, h                                       ; $4ead: $64
    cp a                                          ; $4eae: $bf
    rst $00                                       ; $4eaf: $c7
    dec [hl]                                      ; $4eb0: $35
    db $fd                                        ; $4eb1: $fd
    db $10                                        ; $4eb2: $10
    cpl                                           ; $4eb3: $2f
    dec de                                        ; $4eb4: $1b
    and e                                         ; $4eb5: $a3
    pop bc                                        ; $4eb6: $c1
    call c, $8f15                                 ; $4eb7: $dc $15 $8f
    sub l                                         ; $4eba: $95
    ei                                            ; $4ebb: $fb
    db $e4                                        ; $4ebc: $e4
    ld l, $93                                     ; $4ebd: $2e $93
    db $e4                                        ; $4ebf: $e4
    rst $38                                       ; $4ec0: $ff
    jr jr_051_4ef4                                ; $4ec1: $18 $31

    sub h                                         ; $4ec3: $94
    sub $ee                                       ; $4ec4: $d6 $ee
    ld l, h                                       ; $4ec6: $6c
    add hl, hl                                    ; $4ec7: $29
    adc b                                         ; $4ec8: $88
    nop                                           ; $4ec9: $00
    ld c, a                                       ; $4eca: $4f
    and h                                         ; $4ecb: $a4
    ldh a, [rNR23]                                ; $4ecc: $f0 $18
    ld [hl], a                                    ; $4ece: $77
    ld [$227c], a                                 ; $4ecf: $ea $7c $22
    ld e, $23                                     ; $4ed2: $1e $23
    add [hl]                                      ; $4ed4: $86
    jp nc, Jump_051_771a                          ; $4ed5: $d2 $1a $77

    ld [$9df4], a                                 ; $4ed8: $ea $f4 $9d
    dec c                                         ; $4edb: $0d
    sbc c                                         ; $4edc: $99
    ld [hl], a                                    ; $4edd: $77
    ld l, b                                       ; $4ede: $68
    daa                                           ; $4edf: $27
    db $dd                                        ; $4ee0: $dd
    sub [hl]                                      ; $4ee1: $96
    adc l                                         ; $4ee2: $8d
    ld l, c                                       ; $4ee3: $69
    adc c                                         ; $4ee4: $89
    ret c                                         ; $4ee5: $d8

    sub b                                         ; $4ee6: $90
    db $dd                                        ; $4ee7: $dd
    reti                                          ; $4ee8: $d9


    sub b                                         ; $4ee9: $90
    ld [hl], c                                    ; $4eea: $71
    and a                                         ; $4eeb: $a7
    ld c, [hl]                                    ; $4eec: $4e
    inc sp                                        ; $4eed: $33
    inc de                                        ; $4eee: $13
    dec hl                                        ; $4eef: $2b
    dec [hl]                                      ; $4ef0: $35
    ld h, d                                       ; $4ef1: $62
    cp d                                          ; $4ef2: $ba
    xor a                                         ; $4ef3: $af

jr_051_4ef4:
    dec [hl]                                      ; $4ef4: $35
    dec e                                         ; $4ef5: $1d
    ld [bc], a                                    ; $4ef6: $02
    ld [hl], a                                    ; $4ef7: $77
    ld e, $b2                                     ; $4ef8: $1e $b2
    ld [hl], h                                    ; $4efa: $74
    ld hl, sp+$34                                 ; $4efb: $f8 $34
    inc hl                                        ; $4efd: $23
    add [hl]                                      ; $4efe: $86
    jp nz, $bd3d                                  ; $4eff: $c2 $3d $bd

    di                                            ; $4f02: $f3
    ld [hl], $bd                                  ; $4f03: $36 $bd
    ld [hl], d                                    ; $4f05: $72
    sbc a                                         ; $4f06: $9f
    ld d, [hl]                                    ; $4f07: $56
    ld [hl-], a                                   ; $4f08: $32
    xor $d4                                       ; $4f09: $ee $d4
    ld sp, hl                                     ; $4f0b: $f9
    ld b, h                                       ; $4f0c: $44
    inc a                                         ; $4f0d: $3c
    sub [hl]                                      ; $4f0e: $96
    sbc l                                         ; $4f0f: $9d
    ld a, c                                       ; $4f10: $79
    db $fc                                        ; $4f11: $fc
    sbc d                                         ; $4f12: $9a
    ld e, [hl]                                    ; $4f13: $5e
    halt                                          ; $4f14: $76
    ld [hl], $7c                                  ; $4f15: $36 $7c
    sub d                                         ; $4f17: $92
    db $ec                                        ; $4f18: $ec
    add sp, -$27                                  ; $4f19: $e8 $d9
    sub b                                         ; $4f1b: $90
    jp hl                                         ; $4f1c: $e9


    ld b, l                                       ; $4f1d: $45
    cp h                                          ; $4f1e: $bc
    ld a, [de]                                    ; $4f1f: $1a
    ld [hl+], a                                   ; $4f20: $22
    rrca                                          ; $4f21: $0f
    ld c, c                                       ; $4f22: $49
    adc a                                         ; $4f23: $8f
    inc e                                         ; $4f24: $1c
    ld [hl+], a                                   ; $4f25: $22
    pop de                                        ; $4f26: $d1
    sub e                                         ; $4f27: $93
    dec sp                                        ; $4f28: $3b
    cp a                                          ; $4f29: $bf
    rst $38                                       ; $4f2a: $ff
    adc a                                         ; $4f2b: $8f
    ld e, [hl]                                    ; $4f2c: $5e
    sbc c                                         ; $4f2d: $99
    ld [hl], a                                    ; $4f2e: $77
    ld l, b                                       ; $4f2f: $68
    daa                                           ; $4f30: $27
    db $dd                                        ; $4f31: $dd
    sub [hl]                                      ; $4f32: $96
    adc l                                         ; $4f33: $8d
    ld l, c                                       ; $4f34: $69
    adc c                                         ; $4f35: $89
    ret c                                         ; $4f36: $d8

    ld bc, $09fb                                  ; $4f37: $01 $fb $09
    rst $00                                       ; $4f3a: $c7
    or c                                          ; $4f3b: $b1
    ld e, $ed                                     ; $4f3c: $1e $ed
    ld [hl], c                                    ; $4f3e: $71
    adc l                                         ; $4f3f: $8d
    sbc h                                         ; $4f40: $9c
    ld [hl], b                                    ; $4f41: $70
    adc a                                         ; $4f42: $8f
    ld l, c                                       ; $4f43: $69
    dec h                                         ; $4f44: $25
    dec hl                                        ; $4f45: $2b
    ld a, l                                       ; $4f46: $7d
    ld hl, $1d53                                  ; $4f47: $21 $53 $1d
    db $e4                                        ; $4f4a: $e4
    ld h, [hl]                                    ; $4f4b: $66
    or d                                          ; $4f4c: $b2
    inc l                                         ; $4f4d: $2c
    ld c, c                                       ; $4f4e: $49
    ld a, [hl-]                                   ; $4f4f: $3a
    dec e                                         ; $4f50: $1d
    db $e3                                        ; $4f51: $e3
    ld c, [hl]                                    ; $4f52: $4e
    db $dd                                        ; $4f53: $dd
    dec [hl]                                      ; $4f54: $35
    cp [hl]                                       ; $4f55: $be
    jp $efc7                                      ; $4f56: $c3 $c7 $ef


    di                                            ; $4f59: $f3
    ld d, d                                       ; $4f5a: $52
    ld [hl], $96                                  ; $4f5b: $36 $96
    ld hl, sp-$4c                                 ; $4f5d: $f8 $b4
    sub d                                         ; $4f5f: $92
    ld sp, hl                                     ; $4f60: $f9
    db $fd                                        ; $4f61: $fd
    ld a, a                                       ; $4f62: $7f
    rst $20                                       ; $4f63: $e7
    add hl, bc                                    ; $4f64: $09
    ld c, l                                       ; $4f65: $4d
    rst $38                                       ; $4f66: $ff
    or b                                          ; $4f67: $b0
    and [hl]                                      ; $4f68: $a6
    ld h, e                                       ; $4f69: $63
    call c, $c7a9                                 ; $4f6a: $dc $a9 $c7
    ld c, a                                       ; $4f6d: $4f
    cpl                                           ; $4f6e: $2f
    ld [c], a                                     ; $4f6f: $e2
    dec b                                         ; $4f70: $05
    ld hl, $e8d4                                  ; $4f71: $21 $d4 $e8
    reti                                          ; $4f74: $d9


    ld l, h                                       ; $4f75: $6c
    ld hl, sp-$0c                                 ; $4f76: $f8 $f4
    ld [$515d], a                                 ; $4f78: $ea $5d $51
    pop hl                                        ; $4f7b: $e1
    db $10                                        ; $4f7c: $10
    ld bc, $8b4f                                  ; $4f7d: $01 $4f $8b
    ld a, b                                       ; $4f80: $78
    ld c, l                                       ; $4f81: $4d
    cpl                                           ; $4f82: $2f
    srl a                                         ; $4f83: $cb $3f
    ld b, d                                       ; $4f85: $42
    rrca                                          ; $4f86: $0f
    and a                                         ; $4f87: $a7
    ld e, $ce                                     ; $4f88: $1e $ce
    adc a                                         ; $4f8a: $8f
    ld b, $73                                     ; $4f8b: $06 $73
    sub d                                         ; $4f8d: $92
    sbc h                                         ; $4f8e: $9c
    ld c, l                                       ; $4f8f: $4d
    xor $fe                                       ; $4f90: $ee $fe
    and c                                         ; $4f92: $a1
    ld d, h                                       ; $4f93: $54
    db $f4                                        ; $4f94: $f4
    and d                                         ; $4f95: $a2
    ld [hl], a                                    ; $4f96: $77
    sub a                                         ; $4f97: $97
    ld a, c                                       ; $4f98: $79

Call_051_4f99:
    pop af                                        ; $4f99: $f1
    ld h, l                                       ; $4f9a: $65
    ld b, e                                       ; $4f9b: $43
    ld [hl], a                                    ; $4f9c: $77
    push bc                                       ; $4f9d: $c5
    ld h, e                                       ; $4f9e: $63
    dec h                                         ; $4f9f: $25
    adc d                                         ; $4fa0: $8a
    rst $28                                       ; $4fa1: $ef
    ld b, l                                       ; $4fa2: $45
    jp $ff01                                      ; $4fa3: $c3 $01 $ff


    daa                                           ; $4fa6: $27
    ld a, [hl-]                                   ; $4fa7: $3a
    dec de                                        ; $4fa8: $1b
    ld [hl-], a                                   ; $4fa9: $32

jr_051_4faa:
    ld a, e                                       ; $4faa: $7b
    db $f4                                        ; $4fab: $f4
    or h                                          ; $4fac: $b4
    ld b, h                                       ; $4fad: $44
    ld l, h                                       ; $4fae: $6c
    ret z                                         ; $4faf: $c8

    ld hl, sp-$17                                 ; $4fb0: $f8 $e9
    ld h, l                                       ; $4fb2: $65
    ld h, a                                       ; $4fb3: $67

Call_051_4fb4:
    ld h, e                                       ; $4fb4: $63
    ld sp, $321b                                  ; $4fb5: $31 $1b $32
    cp l                                          ; $4fb8: $bd
    adc b                                         ; $4fb9: $88
    ld d, a                                       ; $4fba: $57
    ld b, e                                       ; $4fbb: $43
    ld [$2c6d], sp                                ; $4fbc: $08 $6d $2c
    ld d, $b2                                     ; $4fbf: $16 $b2
    ld e, h                                       ; $4fc1: $5c
    ld h, h                                       ; $4fc2: $64
    inc [hl]                                      ; $4fc3: $34
    cp $2f                                        ; $4fc4: $fe $2f
    reti                                          ; $4fc6: $d9


    ld a, c                                       ; $4fc7: $79
    ld b, d                                       ; $4fc8: $42
    db $d3                                        ; $4fc9: $d3
    ccf                                           ; $4fca: $3f
    xor h                                         ; $4fcb: $ac
    jp hl                                         ; $4fcc: $e9


    jr jr_051_500e                                ; $4fcd: $18 $3f

    jr nc, jr_051_5008                            ; $4fcf: $30 $37

    ld h, l                                       ; $4fd1: $65
    ld a, [hl]                                    ; $4fd2: $7e
    push hl                                       ; $4fd3: $e5
    ld bc, $45fb                                  ; $4fd4: $01 $fb $45
    db $e3                                        ; $4fd7: $e3
    ld b, e                                       ; $4fd8: $43
    inc b                                         ; $4fd9: $04
    ld c, a                                       ; $4fda: $4f
    ld hl, sp+$09                                 ; $4fdb: $f8 $09
    cpl                                           ; $4fdd: $2f
    res 0, [hl]                                   ; $4fde: $cb $86
    ld c, [hl]                                    ; $4fe0: $4e
    dec bc                                        ; $4fe1: $0b
    adc a                                         ; $4fe2: $8f
    ld e, $98                                     ; $4fe3: $1e $98
    sbc e                                         ; $4fe5: $9b
    ld [hl-], a                                   ; $4fe6: $32
    cp a                                          ; $4fe7: $bf
    ld a, [c]                                     ; $4fe8: $f2
    add b                                         ; $4fe9: $80
    db $fd                                        ; $4fea: $fd
    and d                                         ; $4feb: $a2
    pop af                                        ; $4fec: $f1
    ld [hl], a                                    ; $4fed: $77
    db $f4                                        ; $4fee: $f4
    ld [$cf7f], a                                 ; $4fef: $ea $7f $cf
    db $fc                                        ; $4ff2: $fc
    xor [hl]                                      ; $4ff3: $ae
    and h                                         ; $4ff4: $a4
    ld a, a                                       ; $4ff5: $7f
    adc c                                         ; $4ff6: $89
    dec l                                         ; $4ff7: $2d
    ei                                            ; $4ff8: $fb
    ld [$8f01], sp                                ; $4ff9: $08 $01 $8f
    ld l, e                                       ; $4ffc: $6b
    ld sp, hl                                     ; $4ffd: $f9
    ld d, b                                       ; $4ffe: $50
    pop de                                        ; $4fff: $d1
    cp e                                          ; $5000: $bb
    and d                                         ; $5001: $a2
    jp nz, $a347                                  ; $5002: $c2 $47 $a3

    reti                                          ; $5005: $d9


    inc hl                                        ; $5006: $23
    ld c, a                                       ; $5007: $4f

jr_051_5008:
    rst $28                                       ; $5008: $ef
    jr z, jr_051_4faa                             ; $5009: $28 $9f

    dec a                                         ; $500b: $3d
    sub [hl]                                      ; $500c: $96
    add hl, bc                                    ; $500d: $09

jr_051_500e:
    ld c, e                                       ; $500e: $4b
    ld l, h                                       ; $500f: $6c
    call $bce4                                    ; $5010: $cd $e4 $bc
    ld [hl], d                                    ; $5013: $72
    sbc a                                         ; $5014: $9f
    halt                                          ; $5015: $76
    db $dd                                        ; $5016: $dd
    ld l, e                                       ; $5017: $6b
    rrca                                          ; $5018: $0f
    pop de                                        ; $5019: $d1
    db $f4                                        ; $501a: $f4
    ld a, [de]                                    ; $501b: $1a
    adc c                                         ; $501c: $89
    or e                                          ; $501d: $b3
    dec a                                         ; $501e: $3d
    ld d, h                                       ; $501f: $54
    scf                                           ; $5020: $37
    dec bc                                        ; $5021: $0b
    xor $e9                                       ; $5022: $ee $e9
    sbc l                                         ; $5024: $9d
    ld e, $be                                     ; $5025: $1e $be
    ld [hl], d                                    ; $5027: $72
    sbc a                                         ; $5028: $9f
    ld h, [hl]                                    ; $5029: $66
    ld h, h                                       ; $502a: $64
    ld b, a                                       ; $502b: $47
    rrca                                          ; $502c: $0f
    rst $20                                       ; $502d: $e7
    rst $00                                       ; $502e: $c7
    sbc l                                         ; $502f: $9d
    ld a, [hl-]                                   ; $5030: $3a
    ld a, e                                       ; $5031: $7b
    ld c, l                                       ; $5032: $4d
    rst $20                                       ; $5033: $e7
    push hl                                       ; $5034: $e5
    adc d                                         ; $5035: $8a
    ld a, [bc]                                    ; $5036: $0a
    ld h, c                                       ; $5037: $61
    adc a                                         ; $5038: $8f
    nop                                           ; $5039: $00
    and b                                         ; $503a: $a0
    ld a, e                                       ; $503b: $7b
    ret nz                                        ; $503c: $c0

    xor $4f                                       ; $503d: $ee $4f
    ld l, c                                       ; $503f: $69
    db $d3                                        ; $5040: $d3
    xor [hl]                                      ; $5041: $ae
    ld a, e                                       ; $5042: $7b
    reti                                          ; $5043: $d9


    ld e, b                                       ; $5044: $58
    db $f4                                        ; $5045: $f4
    ld [de], a                                    ; $5046: $12
    inc e                                         ; $5047: $1c
    adc a                                         ; $5048: $8f
    db $dd                                        ; $5049: $dd
    ld d, l                                       ; $504a: $55
    or $36                                        ; $504b: $f6 $36
    ld h, d                                       ; $504d: $62
    add sp, $75                                   ; $504e: $e8 $75
    db $d3                                        ; $5050: $d3
    ld [de], a                                    ; $5051: $12
    adc $1e                                       ; $5052: $ce $1e
    ld bc, $d50f                                  ; $5054: $01 $0f $d5
    call $bf62                                    ; $5057: $cd $62 $bf
    rst $00                                       ; $505a: $c7
    and l                                         ; $505b: $a5
    add $9d                                       ; $505c: $c6 $9d
    ld a, [hl-]                                   ; $505e: $3a
    sbc a                                         ; $505f: $9f
    adc b                                         ; $5060: $88
    rst $00                                       ; $5061: $c7
    db $f4                                        ; $5062: $f4
    ld l, d                                       ; $5063: $6a
    xor c                                         ; $5064: $a9
    reti                                          ; $5065: $d9


    xor e                                         ; $5066: $ab
    adc $76                                       ; $5067: $ce $76
    sbc $95                                       ; $5069: $de $95
    ld [hl-], a                                   ; $506b: $32
    res 6, l                                      ; $506c: $cb $b5

jr_051_506e:
    ld [hl], d                                    ; $506e: $72
    sbc a                                         ; $506f: $9f
    call c, $6569                                 ; $5070: $dc $69 $65
    ld h, e                                       ; $5073: $63
    ld hl, $5db3                                  ; $5074: $21 $b3 $5d
    inc b                                         ; $5077: $04
    ld b, d                                       ; $5078: $42
    adc b                                         ; $5079: $88
    nop                                           ; $507a: $00
    ld c, a                                       ; $507b: $4f
    ld d, d                                       ; $507c: $52
    sbc d                                         ; $507d: $9a
    add $1e                                       ; $507e: $c6 $1e
    ld bc, $ee60                                  ; $5080: $01 $60 $ee
    ld a, [c]                                     ; $5083: $f2
    scf                                           ; $5084: $37
    ld l, d                                       ; $5085: $6a
    ld [hl], a                                    ; $5086: $77
    rst $20                                       ; $5087: $e7
    ld e, l                                       ; $5088: $5d
    add hl, hl                                    ; $5089: $29
    inc sp                                        ; $508a: $33
    pop hl                                        ; $508b: $e1
    ld h, l                                       ; $508c: $65
    ld a, l                                       ; $508d: $7d
    jp nc, $b5ab                                  ; $508e: $d2 $ab $b5

    sbc e                                         ; $5091: $9b
    db $dd                                        ; $5092: $dd
    db $f4                                        ; $5093: $f4
    xor l                                         ; $5094: $ad
    add hl, de                                    ; $5095: $19
    cp d                                          ; $5096: $ba
    sub b                                         ; $5097: $90
    reti                                          ; $5098: $d9


    ld l, $12                                     ; $5099: $2e $12
    db $e3                                        ; $509b: $e3
    ld c, [hl]                                    ; $509c: $4e
    cp l                                          ; $509d: $bd
    ld [hl], d                                    ; $509e: $72
    rra                                           ; $509f: $1f
    rst $00                                       ; $50a0: $c7

jr_051_50a1:
    cpl                                           ; $50a1: $2f
    pop bc                                        ; $50a2: $c1
    pop af                                        ; $50a3: $f1
    ld l, c                                       ; $50a4: $69
    ld b, [hl]                                    ; $50a5: $46
    inc c                                         ; $50a6: $0c
    ld e, l                                       ; $50a7: $5d
    jp nc, $87cb                                  ; $50a8: $d2 $cb $87

    xor b                                         ; $50ab: $a8
    sub b                                         ; $50ac: $90
    sbc c                                         ; $50ad: $99
    sub h                                         ; $50ae: $94
    or [hl]                                       ; $50af: $b6

jr_051_50b0:
    ld a, h                                       ; $50b0: $7c
    cp b                                          ; $50b1: $b8
    rst $10                                       ; $50b2: $d7
    db $ec                                        ; $50b3: $ec
    push af                                       ; $50b4: $f5
    ld l, c                                       ; $50b5: $69
    ld b, [hl]                                    ; $50b6: $46
    inc c                                         ; $50b7: $0c
    add l                                         ; $50b8: $85
    ld a, e                                       ; $50b9: $7b
    ld e, h                                       ; $50ba: $5c
    ld l, d                                       ; $50bb: $6a
    ld e, d                                       ; $50bc: $5a
    push af                                       ; $50bd: $f5
    ld a, [hl-]                                   ; $50be: $3a
    ld l, h                                       ; $50bf: $6c
    ret                                           ; $50c0: $c9


    jr c, jr_051_50a1                             ; $50c1: $38 $de

    ld a, l                                       ; $50c3: $7d
    ld e, h                                       ; $50c4: $5c
    ld h, l                                       ; $50c5: $65
    sbc a                                         ; $50c6: $9f
    ld h, [hl]                                    ; $50c7: $66
    call nz, Call_000_3850                        ; $50c8: $c4 $50 $38
    jr nc, jr_051_506e                            ; $50cb: $30 $a1

    rst $18                                       ; $50cd: $df

jr_051_50ce:
    rst $38                                       ; $50ce: $ff
    ld h, e                                       ; $50cf: $63
    sbc $c6                                       ; $50d0: $de $c6
    jp c, $4998                                   ; $50d2: $da $98 $49

    sub c                                         ; $50d5: $91
    call z, $e70f                                 ; $50d6: $cc $0f $e7
    ld h, a                                       ; $50d9: $67
    ld b, e                                       ; $50da: $43
    ld h, [hl]                                    ; $50db: $66
    ld d, d                                       ; $50dc: $52
    jp c, Jump_051_4dd4                           ; $50dd: $da $d4 $4d

    sub c                                         ; $50e0: $91
    dec h                                         ; $50e1: $25
    jr c, @+$40                                   ; $50e2: $38 $3e

    xor l                                         ; $50e4: $ad
    ld h, h                                       ; $50e5: $64
    inc [hl]                                      ; $50e6: $34
    inc l                                         ; $50e7: $2c
    ld b, h                                       ; $50e8: $44
    and b                                         ; $50e9: $a0
    ld b, e                                       ; $50ea: $43
    jr nz, @-$7a                                  ; $50eb: $20 $84

    ld [$ee60], sp                                ; $50ed: $08 $60 $ee
    jr c, jr_051_50b0                             ; $50f0: $38 $be

    sub a                                         ; $50f2: $97
    cp l                                          ; $50f3: $bd
    adc e                                         ; $50f4: $8b
    db $e3                                        ; $50f5: $e3
    adc b                                         ; $50f6: $88

Call_051_50f7:
    and c                                         ; $50f7: $a1
    inc [hl]                                      ; $50f8: $34
    call nz, $5f46                                ; $50f9: $c4 $46 $5f
    ld d, c                                       ; $50fc: $51
    xor e                                         ; $50fd: $ab
    rst $38                                       ; $50fe: $ff
    ld l, e                                       ; $50ff: $6b
    sbc $31                                       ; $5100: $de $31
    sub e                                         ; $5102: $93
    jp nc, $05c6                                  ; $5103: $d2 $c6 $05

    push af                                       ; $5106: $f5
    ld l, e                                       ; $5107: $6b
    add [hl]                                      ; $5108: $86
    sbc e                                         ; $5109: $9b
    ld b, e                                       ; $510a: $43
    call nc, $a188                                ; $510b: $d4 $88 $a1
    inc [hl]                                      ; $510e: $34
    ld a, d                                       ; $510f: $7a
    push hl                                       ; $5110: $e5
    ld a, $db                                     ; $5111: $3e $db
    sub l                                         ; $5113: $95
    ld d, a                                       ; $5114: $57
    ld a, [$e6b8]                                 ; $5115: $fa $b8 $e6
    ld h, l                                       ; $5118: $65
    ret nz                                        ; $5119: $c0

    sbc e                                         ; $511a: $9b
    push bc                                       ; $511b: $c5
    ld [hl], c                                    ; $511c: $71
    ld d, a                                       ; $511d: $57
    xor h                                         ; $511e: $ac
    ld l, c                                       ; $511f: $69
    ld [$5be1], sp                                ; $5120: $08 $e1 $5b
    xor a                                         ; $5123: $af
    ld c, $37                                     ; $5124: $0e $37
    add a                                         ; $5126: $87
    xor b                                         ; $5127: $a8
    ld [hl], c                                    ; $5128: $71
    and a                                         ; $5129: $a7
    sbc [hl]                                      ; $512a: $9e
    ld e, [hl]                                    ; $512b: $5e
    dec a                                         ; $512c: $3d
    sub e                                         ; $512d: $93
    jp nc, $c216                                  ; $512e: $d2 $16 $c2

    ld e, $01                                     ; $5131: $1e $01
    ld l, a                                       ; $5133: $6f
    cp l                                          ; $5134: $bd
    ld a, [hl-]                                   ; $5135: $3a
    cp l                                          ; $5136: $bd
    sbc d                                         ; $5137: $9a
    dec a                                         ; $5138: $3d
    ld [bc], a                                    ; $5139: $02
    ld b, b                                       ; $513a: $40
    ld a, e                                       ; $513b: $7b
    reti                                          ; $513c: $d9


    cp e                                          ; $513d: $bb
    jr c, jr_051_50ce                             ; $513e: $38 $8e

    jr jr_051_518c                                ; $5140: $18 $4a

    ld b, e                                       ; $5142: $43
    ld l, h                                       ; $5143: $6c
    db $f4                                        ; $5144: $f4
    dec d                                         ; $5145: $15
    or l                                          ; $5146: $b5
    db $f4                                        ; $5147: $f4
    xor c                                         ; $5148: $a9
    sbc c                                         ; $5149: $99
    push de                                       ; $514a: $d5
    inc hl                                        ; $514b: $23
    rst $18                                       ; $514c: $df
    and h                                         ; $514d: $a4
    ld c, b                                       ; $514e: $48
    ret                                           ; $514f: $c9


    ld [c], a                                     ; $5150: $e2
    db $eb                                        ; $5151: $eb
    or l                                          ; $5152: $b5
    dec sp                                        ; $5153: $3b
    ld l, d                                       ; $5154: $6a
    ld e, d                                       ; $5155: $5a
    add hl, de                                    ; $5156: $19
    add hl, de                                    ; $5157: $19
    pop de                                        ; $5158: $d1
    adc a                                         ; $5159: $8f
    rst $38                                       ; $515a: $ff
    pop hl                                        ; $515b: $e1
    ld b, b                                       ; $515c: $40
    sbc a                                         ; $515d: $9f
    ld a, h                                       ; $515e: $7c
    or h                                          ; $515f: $b4
    rlca                                          ; $5160: $07
    db $ec                                        ; $5161: $ec
    cp $94                                        ; $5162: $fe $94
    ld [hl], $fd                                  ; $5164: $36 $fd
    jp c, $8969                                   ; $5166: $da $69 $89

    sbc [hl]                                      ; $5169: $9e
    ret c                                         ; $516a: $d8

    db $10                                        ; $516b: $10
    rst $28                                       ; $516c: $ef
    ld h, a                                       ; $516d: $67
    inc b                                         ; $516e: $04
    ld c, $74                                     ; $516f: $0e $74
    ld [hl], l                                    ; $5171: $75
    ld c, [hl]                                    ; $5172: $4e
    ld l, c                                       ; $5173: $69
    di                                            ; $5174: $f3
    ei                                            ; $5175: $fb
    ld a, a                                       ; $5176: $7f
    cp d                                          ; $5177: $ba
    ld c, b                                       ; $5178: $48
    db $ed                                        ; $5179: $ed
    ld l, $1f                                     ; $517a: $2e $1f
    and d                                         ; $517c: $a2
    ld b, [hl]                                    ; $517d: $46
    jp $7a2e                                      ; $517e: $c3 $2e $7a


    sub d                                         ; $5181: $92
    sbc h                                         ; $5182: $9c
    xor l                                         ; $5183: $ad
    cp $bf                                        ; $5184: $fe $bf
    sbc d                                         ; $5186: $9a
    pop bc                                        ; $5187: $c1
    pop hl                                        ; $5188: $e1
    ld e, $97                                     ; $5189: $1e $97
    sbc d                                         ; $518b: $9a

jr_051_518c:
    ld d, [hl]                                    ; $518c: $56
    cp l                                          ; $518d: $bd
    ld a, [$afb6]                                 ; $518e: $fa $b6 $af
    ld e, d                                       ; $5191: $5a
    ld h, $07                                     ; $5192: $26 $07
    push af                                       ; $5194: $f5
    cp h                                          ; $5195: $bc
    call z, Call_000_3b8f                         ; $5196: $cc $8f $3b
    push af                                       ; $5199: $f5
    add h                                         ; $519a: $84
    ld d, a                                       ; $519b: $57
    ld e, l                                       ; $519c: $5d
    inc bc                                        ; $519d: $03
    sbc $2c                                       ; $519e: $de $2c
    adc [hl]                                      ; $51a0: $8e
    cp e                                          ; $51a1: $bb
    ld h, d                                       ; $51a2: $62
    ld c, l                                       ; $51a3: $4d
    rst $00                                       ; $51a4: $c7
    rrca                                          ; $51a5: $0f
    dec a                                         ; $51a6: $3d
    ld a, [de]                                    ; $51a7: $1a
    ld [hl+], a                                   ; $51a8: $22
    rst $20                                       ; $51a9: $e7
    pop hl                                        ; $51aa: $e1
    dec sp                                        ; $51ab: $3b
    ld a, d                                       ; $51ac: $7a
    ld b, a                                       ; $51ad: $47
    rst $08                                       ; $51ae: $cf
    add [hl]                                      ; $51af: $86
    ld c, h                                       ; $51b0: $4c
    ccf                                           ; $51b1: $3f
    ld a, [hl-]                                   ; $51b2: $3a
    ld a, e                                       ; $51b3: $7b
    call Call_000_0a96                            ; $51b4: $cd $96 $0a
    reti                                          ; $51b7: $d9


    dec e                                         ; $51b8: $1d
    cp l                                          ; $51b9: $bd
    xor $fb                                       ; $51ba: $ee $fb
    ld d, a                                       ; $51bc: $57
    add a                                         ; $51bd: $87
    inc bc                                        ; $51be: $03
    db $f4                                        ; $51bf: $f4
    ld a, a                                       ; $51c0: $7f
    ld c, l                                       ; $51c1: $4d
    rrca                                          ; $51c2: $0f
    ld e, a                                       ; $51c3: $5f
    cp c                                          ; $51c4: $b9
    ld c, a                                       ; $51c5: $4f
    cp a                                          ; $51c6: $bf
    db $d3                                        ; $51c7: $d3
    xor d                                         ; $51c8: $aa
    rst $00                                       ; $51c9: $c7
    sbc l                                         ; $51ca: $9d
    ld a, [$2e9b]                                 ; $51cb: $fa $9b $2e
    rst $18                                       ; $51ce: $df
    ld l, e                                       ; $51cf: $6b
    ld l, a                                       ; $51d0: $6f
    cp l                                          ; $51d1: $bd
    ld a, [hl-]                                   ; $51d2: $3a

jr_051_51d3:
    call c, $a21c                                 ; $51d3: $dc $1c $a2
    add $9d                                       ; $51d6: $c6 $9d
    ld a, d                                       ; $51d8: $7a
    ret nz                                        ; $51d9: $c0

    sbc e                                         ; $51da: $9b
    push bc                                       ; $51db: $c5
    ld [hl], c                                    ; $51dc: $71
    ld d, a                                       ; $51dd: $57
    xor h                                         ; $51de: $ac
    ld l, c                                       ; $51df: $69
    adc b                                         ; $51e0: $88
    nop                                           ; $51e1: $00
    jr jr_051_51d3                                ; $51e2: $18 $ef

    rst $38                                       ; $51e4: $ff
    inc sp                                        ; $51e5: $33
    add hl, hl                                    ; $51e6: $29
    ld l, l                                       ; $51e7: $6d
    inc [hl]                                      ; $51e8: $34
    db $ec                                        ; $51e9: $ec
    ld e, $12                                     ; $51ea: $1e $12
    adc [hl]                                      ; $51ec: $8e
    ei                                            ; $51ed: $fb
    add c                                         ; $51ee: $81
    daa                                           ; $51ef: $27
    inc e                                         ; $51f0: $1c
    ld d, a                                       ; $51f1: $57
    dec l                                         ; $51f2: $2d
    dec [hl]                                      ; $51f3: $35
    sub e                                         ; $51f4: $93
    jp nc, $a186                                  ; $51f5: $d2 $86 $a1

    db $f4                                        ; $51f8: $f4
    sub b                                         ; $51f9: $90
    call nc, Call_051_462f                        ; $51fa: $d4 $2f $46
    push de                                       ; $51fd: $d5
    ld d, d                                       ; $51fe: $52
    dec sp                                        ; $51ff: $3b
    ld a, d                                       ; $5200: $7a
    push de                                       ; $5201: $d5
    xor d                                         ; $5202: $aa
    add [hl]                                      ; $5203: $86
    di                                            ; $5204: $f3
    inc sp                                        ; $5205: $33
    add hl, sp                                    ; $5206: $39

Jump_051_5207:
    jp $c79d                                      ; $5207: $c3 $9d $c7


    cp h                                          ; $520a: $bc
    adc l                                         ; $520b: $8d
    or l                                          ; $520c: $b5
    or c                                          ; $520d: $b1
    ld [hl], d                                    ; $520e: $72
    sbc a                                         ; $520f: $9f
    dec c                                         ; $5210: $0d
    sbc a                                         ; $5211: $9f
    ld e, [hl]                                    ; $5212: $5e
    dec a                                         ; $5213: $3d
    db $fd                                        ; $5214: $fd
    ld l, $1b                                     ; $5215: $2e $1b
    cp d                                          ; $5217: $ba
    ld c, h                                       ; $5218: $4c
    sub d                                         ; $5219: $92
    rst $38                                       ; $521a: $ff
    ld h, e                                       ; $521b: $63
    ld sp, hl                                     ; $521c: $f9
    di                                            ; $521d: $f3
    ld a, e                                       ; $521e: $7b
    ld a, [c]                                     ; $521f: $f2
    ld e, c                                       ; $5220: $59
    xor [hl]                                      ; $5221: $ae
    ld b, l                                       ; $5222: $45
    ld e, a                                       ; $5223: $5f
    sbc c                                         ; $5224: $99
    ld c, c                                       ; $5225: $49
    ld l, c                                       ; $5226: $69
    db $d3                                        ; $5227: $d3
    xor a                                         ; $5228: $af
    ld c, b                                       ; $5229: $48
    dec l                                         ; $522a: $2d
    ld a, [hl]                                    ; $522b: $7e
    add sp, $5a                                   ; $522c: $e8 $5a
    ret nc                                        ; $522e: $d0

    adc h                                         ; $522f: $8c
    dec de                                        ; $5230: $1b
    ld d, d                                       ; $5231: $52
    ccf                                           ; $5232: $3f
    inc b                                         ; $5233: $04
    xor $e9                                       ; $5234: $ee $e9
    ld e, l                                       ; $5236: $5d
    adc [hl]                                      ; $5237: $8e
    inc a                                         ; $5238: $3c
    ld a, e                                       ; $5239: $7b
    db $f4                                        ; $523a: $f4
    inc h                                         ; $523b: $24
    ld a, [hl-]                                   ; $523c: $3a
    jr nz, jr_051_5241                            ; $523d: $20 $02

    ld h, b                                       ; $523f: $60
    add d                                         ; $5240: $82

jr_051_5241:
    ld a, c                                       ; $5241: $79
    ld [hl], $09                                  ; $5242: $36 $09
    and $d9                                       ; $5244: $e6 $d9
    xor [hl]                                      ; $5246: $ae
    ld a, b                                       ; $5247: $78
    db $ec                                        ; $5248: $ec
    xor d                                         ; $5249: $aa
    sub b                                         ; $524a: $90
    or e                                          ; $524b: $b3
    ld h, l                                       ; $524c: $65
    add hl, sp                                    ; $524d: $39
    cp $2f                                        ; $524e: $fe $2f
    ld [$0221], sp                                ; $5250: $08 $21 $02
    rst $20                                       ; $5253: $e7
    pop hl                                        ; $5254: $e1
    ei                                            ; $5255: $fb
    cp h                                          ; $5256: $bc
    ld b, a                                       ; $5257: $47
    cpl                                           ; $5258: $2f
    dec de                                        ; $5259: $1b
    ld a, [hl-]                                   ; $525a: $3a
    ldh a, [$c9]                                  ; $525b: $f0 $c9
    db $ed                                        ; $525d: $ed
    adc [hl]                                      ; $525e: $8e
    rst $38                                       ; $525f: $ff
    ld hl, $a002                                  ; $5260: $21 $02 $a0
    inc de                                        ; $5263: $13
    ld c, d                                       ; $5264: $4a
    db $e3                                        ; $5265: $e3
    sbc a                                         ; $5266: $9f

Jump_051_5267:
    adc l                                         ; $5267: $8d
    ld h, $94                                     ; $5268: $26 $94
    add $3f                                       ; $526a: $c6 $3f
    sbc e                                         ; $526c: $9b
    ld [$0886], a                                 ; $526d: $ea $86 $08
    ld h, b                                       ; $5270: $60
    ld c, c                                       ; $5271: $49
    jr nc, @+$23                                  ; $5272: $30 $21

    add h                                         ; $5274: $84
    inc sp                                        ; $5275: $33
    inc h                                         ; $5276: $24
    sbc b                                         ; $5277: $98
    add e                                         ; $5278: $83
    db $10                                        ; $5279: $10
    ld a, $2e                                     ; $527a: $3e $2e
    or l                                          ; $527c: $b5
    ld c, h                                       ; $527d: $4c
    ld l, d                                       ; $527e: $6a
    jp hl                                         ; $527f: $e9


    add sp, -$3d                                  ; $5280: $e8 $c3
    cp l                                          ; $5282: $bd
    jr nz, @-$7a                                  ; $5283: $20 $84

    ld [$72e0], sp                                ; $5285: $08 $e0 $72
    halt                                          ; $5288: $76
    ld [$43e1], sp                                ; $5289: $08 $e1 $43
    inc [hl]                                      ; $528c: $34
    cp l                                          ; $528d: $bd
    ld b, [hl]                                    ; $528e: $46

jr_051_528f:
    ld [bc], a                                    ; $528f: $02
    ld b, d                                       ; $5290: $42
    ld hl, sp-$48                                 ; $5291: $f8 $b8
    call nc, $53b4                                ; $5293: $d4 $b4 $53
    db $db                                        ; $5296: $db
    jr jr_051_52cc                                ; $5297: $18 $33

    ret                                           ; $5299: $c9


    ld a, $f0                                     ; $529a: $3e $f0
    ret                                           ; $529c: $c9


    db $ed                                        ; $529d: $ed
    adc [hl]                                      ; $529e: $8e
    rst $38                                       ; $529f: $ff
    add a                                         ; $52a0: $87
    ld [hl], a                                    ; $52a1: $77
    ld a, c                                       ; $52a2: $79
    adc l                                         ; $52a3: $8d
    add [hl]                                      ; $52a4: $86
    sbc l                                         ; $52a5: $9d
    ldh a, [rSC]                                  ; $52a6: $f0 $02
    rst $30                                       ; $52a8: $f7
    ld d, b                                       ; $52a9: $50
    or d                                          ; $52aa: $b2
    ld a, a                                       ; $52ab: $7f
    ld hl, sp-$06                                 ; $52ac: $f8 $fa
    or b                                          ; $52ae: $b0
    ld d, $22                                     ; $52af: $16 $22
    rst $20                                       ; $52b1: $e7
    pop hl                                        ; $52b2: $e1
    and e                                         ; $52b3: $a3
    ld a, h                                       ; $52b4: $7c
    or $98                                        ; $52b5: $f6 $98
    ld d, [hl]                                    ; $52b7: $56
    db $d3                                        ; $52b8: $d3
    xor e                                         ; $52b9: $ab
    xor a                                         ; $52ba: $af
    rst $28                                       ; $52bb: $ef
    adc c                                         ; $52bc: $89
    inc d                                         ; $52bd: $14
    ld e, $bb                                     ; $52be: $1e $bb
    ld a, [hl+]                                   ; $52c0: $2a
    add h                                         ; $52c1: $84
    dec a                                         ; $52c2: $3d
    ld [bc], a                                    ; $52c3: $02
    adc a                                         ; $52c4: $8f
    ld c, e                                       ; $52c5: $4b
    call $f4db                                    ; $52c6: $cd $db $f4
    jp z, Jump_051_5a7d                           ; $52c9: $ca $7d $5a

jr_051_52cc:
    ret                                           ; $52cc: $c9


    db $fc                                        ; $52cd: $fc
    db $10                                        ; $52ce: $10
    ld [de], a                                    ; $52cf: $12
    cp l                                          ; $52d0: $bd
    ld [hl], h                                    ; $52d1: $74
    db $f4                                        ; $52d2: $f4
    pop hl                                        ; $52d3: $e1
    ld e, [hl]                                    ; $52d4: $5e
    db $e3                                        ; $52d5: $e3
    ld c, [hl]                                    ; $52d6: $4e
    cp l                                          ; $52d7: $bd
    daa                                           ; $52d8: $27
    ld d, d                                       ; $52d9: $52
    ld a, b                                       ; $52da: $78
    ld c, h                                       ; $52db: $4c
    ld c, e                                       ; $52dc: $4b
    ld a, d                                       ; $52dd: $7a
    or h                                          ; $52de: $b4
    ld h, h                                       ; $52df: $64
    inc e                                         ; $52e0: $1c
    rst $18                                       ; $52e1: $df
    di                                            ; $52e2: $f3
    ld d, d                                       ; $52e3: $52
    jp Jump_051_65f9                              ; $52e4: $c3 $f9 $65


    rrca                                          ; $52e7: $0f
    add hl, bc                                    ; $52e8: $09
    ld h, c                                       ; $52e9: $61
    adc a                                         ; $52ea: $8f
    nop                                           ; $52eb: $00
    ld c, a                                       ; $52ec: $4f
    rst $28                                       ; $52ed: $ef
    jr z, jr_051_528f                             ; $52ee: $28 $9f

    dec a                                         ; $52f0: $3d
    sub [hl]                                      ; $52f1: $96
    adc [hl]                                      ; $52f2: $8e
    ld a, $dc                                     ; $52f3: $3e $dc
    ld l, e                                       ; $52f5: $6b
    call c, Call_051_77a9                         ; $52f6: $dc $a9 $77
    sbc [hl]                                      ; $52f9: $9e
    ret nc                                        ; $52fa: $d0

    db $f4                                        ; $52fb: $f4
    rrca                                          ; $52fc: $0f
    ld l, e                                       ; $52fd: $6b
    ld a, [hl-]                                   ; $52fe: $3a
    ldh [$ce], a                                  ; $52ff: $e0 $ce
    jp Jump_051_4997                              ; $5301: $c3 $97 $49


    ld a, [c]                                     ; $5304: $f2
    ld a, a                                       ; $5305: $7f
    ld c, h                                       ; $5306: $4c
    cp a                                          ; $5307: $bf
    db $d3                                        ; $5308: $d3
    ld l, d                                       ; $5309: $6a
    adc d                                         ; $530a: $8a
    ld l, c                                       ; $530b: $69
    jp c, $9dc7                                   ; $530c: $da $c7 $9d

    ld a, d                                       ; $530f: $7a
    rst $38                                       ; $5310: $ff
    db $10                                        ; $5311: $10
    dec d                                         ; $5312: $15
    sla c                                         ; $5313: $cb $21
    db $10                                        ; $5315: $10
    ld bc, $43a0                                  ; $5316: $01 $a0 $43
    and [hl]                                      ; $5319: $a6
    rst $18                                       ; $531a: $df
    ld l, c                                       ; $531b: $69
    push de                                       ; $531c: $d5
    cp e                                          ; $531d: $bb
    and d                                         ; $531e: $a2
    ld l, d                                       ; $531f: $6a
    jp hl                                         ; $5320: $e9


    ret nc                                        ; $5321: $d0

    ld l, a                                       ; $5322: $6f
    ld h, [hl]                                    ; $5323: $66
    ccf                                           ; $5324: $3f
    or b                                          ; $5325: $b0
    add hl, hl                                    ; $5326: $29
    ld l, l                                       ; $5327: $6d
    ld a, [$265d]                                 ; $5328: $fa $5d $26
    or l                                          ; $532b: $b5
    dec hl                                        ; $532c: $2b
    ld e, $23                                     ; $532d: $1e $23
    add a                                         ; $532f: $87
    ld c, b                                       ; $5330: $48
    call $ffef                                    ; $5331: $cd $ef $ff
    db $d3                                        ; $5334: $d3
    xor e                                         ; $5335: $ab
    ld c, c                                       ; $5336: $49
    ret z                                         ; $5337: $c8

    or d                                          ; $5338: $b2
    add a                                         ; $5339: $87
    add h                                         ; $533a: $84
    inc l                                         ; $533b: $2c
    cp $8f                                        ; $533c: $fe $8f
    ld e, $b0                                     ; $533e: $1e $b0
    sbc a                                         ; $5340: $9f
    ld [hl], b                                    ; $5341: $70
    inc e                                         ; $5342: $1c
    dec bc                                        ; $5343: $0b
    ld [hl+], a                                   ; $5344: $22
    ret nz                                        ; $5345: $c0

    ld c, [hl]                                    ; $5346: $4e
    sbc a                                         ; $5347: $9f
    add hl, sp                                    ; $5348: $39
    ld a, d                                       ; $5349: $7a
    dec d                                         ; $534a: $15
    inc e                                         ; $534b: $1c
    sbc b                                         ; $534c: $98
    dec sp                                        ; $534d: $3b
    ccf                                           ; $534e: $3f
    add h                                         ; $534f: $84
    ld b, h                                       ; $5350: $44
    cpl                                           ; $5351: $2f
    ld a, d                                       ; $5352: $7a
    ld h, d                                       ; $5353: $62
    call nc, Call_051_53b8                        ; $5354: $d4 $b8 $53
    rst $28                                       ; $5357: $ef
    adc d                                         ; $5358: $8a
    sub h                                         ; $5359: $94
    ld c, h                                       ; $535a: $4c
    xor $d2                                       ; $535b: $ee $d2
    call $e8f2                                    ; $535d: $cd $f2 $e8
    ld d, c                                       ; $5360: $51
    db $e3                                        ; $5361: $e3
    set 0, h                                      ; $5362: $cb $c4
    db $fc                                        ; $5364: $fc
    ld c, $f5                                     ; $5365: $0e $f5
    and e                                         ; $5367: $a3
    and l                                         ; $5368: $a5
    halt                                          ; $5369: $76
    ld d, l                                       ; $536a: $55
    ret z                                         ; $536b: $c8

    reti                                          ; $536c: $d9


    ld [hl-], a                                   ; $536d: $32
    ld c, c                                       ; $536e: $49
    cp $8f                                        ; $536f: $fe $8f
    ld sp, $cd4b                                  ; $5371: $31 $4b $cd
    db $db                                        ; $5374: $db
    ld b, b                                       ; $5375: $40
    inc b                                         ; $5376: $04
    rst $20                                       ; $5377: $e7
    pop hl                                        ; $5378: $e1
    dec sp                                        ; $5379: $3b
    ld a, d                                       ; $537a: $7a
    sbc c                                         ; $537b: $99
    dec h                                         ; $537c: $25
    halt                                          ; $537d: $76
    ld h, $a5                                     ; $537e: $26 $a5
    dec l                                         ; $5380: $2d
    sub e                                         ; $5381: $93
    and d                                         ; $5382: $a2
    dec hl                                        ; $5383: $2b
    rst $30                                       ; $5384: $f7
    reti                                          ; $5385: $d9


    ret c                                         ; $5386: $d8

    ccf                                           ; $5387: $3f
    ld a, h                                       ; $5388: $7c
    ld [hl], $a6                                  ; $5389: $36 $a6
    adc d                                         ; $538b: $8a
    cp $5a                                        ; $538c: $fe $5a
    ld a, [hl-]                                   ; $538e: $3a
    or d                                          ; $538f: $b2
    ld [hl], a                                    ; $5390: $77
    ld [hl], c                                    ; $5391: $71
    sbc h                                         ; $5392: $9c
    ld e, h                                       ; $5393: $5c
    ld d, c                                       ; $5394: $51
    push de                                       ; $5395: $d5
    ld d, d                                       ; $5396: $52
    or e                                          ; $5397: $b3
    and a                                         ; $5398: $a7
    dec h                                         ; $5399: $25
    ld c, $f7                                     ; $539a: $0e $f7
    cp b                                          ; $539c: $b8
    call nc, $eab4                                ; $539d: $d4 $b4 $ea
    ld [hl], c                                    ; $53a0: $71
    and [hl]                                      ; $53a1: $a6
    sbc l                                         ; $53a2: $9d
    xor e                                         ; $53a3: $ab
    ld l, $b1                                     ; $53a4: $2e $b1
    ld sp, $9612                                  ; $53a6: $31 $12 $96
    ld l, c                                       ; $53a9: $69
    ld e, d                                       ; $53aa: $5a
    ld l, d                                       ; $53ab: $6a
    ld b, h                                       ; $53ac: $44
    xor a                                         ; $53ad: $af
    ld e, $ce                                     ; $53ae: $1e $ce
    adc a                                         ; $53b0: $8f
    ld e, [hl]                                    ; $53b1: $5e
    rst $30                                       ; $53b2: $f7
    ld de, $6e23                                  ; $53b3: $11 $23 $6e
    ld a, [de]                                    ; $53b6: $1a
    ld [hl+], a                                   ; $53b7: $22

Call_051_53b8:
Jump_051_53b8:
    ld c, a                                       ; $53b8: $4f
    ld hl, sp-$27                                 ; $53b9: $f8 $d9
    sub b                                         ; $53bb: $90
    ld l, c                                       ; $53bc: $69
    daa                                           ; $53bd: $27
    push hl                                       ; $53be: $e5
    ld c, e                                       ; $53bf: $4b
    ld [hl], b                                    ; $53c0: $70
    inc a                                         ; $53c1: $3c
    sub a                                         ; $53c2: $97
    ld a, e                                       ; $53c3: $7b
    db $ec                                        ; $53c4: $ec
    and c                                         ; $53c5: $a1
    cp d                                          ; $53c6: $ba
    ld e, c                                       ; $53c7: $59
    inc bc                                        ; $53c8: $03
    ld h, a                                       ; $53c9: $67
    call c, $a7a3                                 ; $53ca: $dc $a3 $a7
    ld d, l                                       ; $53cd: $55
    cpl                                           ; $53ce: $2f
    dec e                                         ; $53cf: $1d
    ld sp, hl                                     ; $53d0: $f9

Jump_051_53d1:
    daa                                           ; $53d1: $27
    ld e, [hl]                                    ; $53d2: $5e
    cp [hl]                                       ; $53d3: $be
    ld a, h                                       ; $53d4: $7c
    push de                                       ; $53d5: $d5
    cp b                                          ; $53d6: $b8
    ld d, e                                       ; $53d7: $53
    xor a                                         ; $53d8: $af
    call c, $0c47                                 ; $53d9: $dc $47 $0c
    and l                                         ; $53dc: $a5
    dec [hl]                                      ; $53dd: $35
    cp a                                          ; $53de: $bf
    rst $38                                       ; $53df: $ff
    cpl                                           ; $53e0: $2f
    rst $18                                       ; $53e1: $df
    db $ec                                        ; $53e2: $ec
    ld [hl], b                                    ; $53e3: $70
    ld c, a                                       ; $53e4: $4f
    rrca                                          ; $53e5: $0f
    pop af                                        ; $53e6: $f1
    sbc d                                         ; $53e7: $9a
    halt                                          ; $53e8: $76
    db $f4                                        ; $53e9: $f4
    ld [hl], b                                    ; $53ea: $70
    ld a, [hl]                                    ; $53eb: $7e
    rrca                                          ; $53ec: $0f
    and l                                         ; $53ed: $a5
    ld a, [$385a]                                 ; $53ee: $fa $5a $38
    or b                                          ; $53f1: $b0
    add hl, hl                                    ; $53f2: $29
    ld l, l                                       ; $53f3: $6d
    sbc c                                         ; $53f4: $99
    ld e, [hl]                                    ; $53f5: $5e
    rst $18                                       ; $53f6: $df
    dec d                                         ; $53f7: $15
    adc a                                         ; $53f8: $8f
    ld e, l                                       ; $53f9: $5d
    db $fd                                        ; $53fa: $fd
    ld d, b                                       ; $53fb: $50
    ld [hl], b                                    ; $53fc: $70
    rst $20                                       ; $53fd: $e7
    db $fc                                        ; $53fe: $fc
    sbc d                                         ; $53ff: $9a
    daa                                           ; $5400: $27
    push de                                       ; $5401: $d5
    sub e                                         ; $5402: $93
    dec sp                                        ; $5403: $3b
    db $fd                                        ; $5404: $fd
    add sp, -$72                                  ; $5405: $e8 $8e

Jump_051_5407:
    dec h                                         ; $5407: $25
    ld c, $11                                     ; $5408: $0e $11
    ret nz                                        ; $540a: $c0

    call Call_051_7e88                            ; $540b: $cd $88 $7e
    db $fc                                        ; $540e: $fc
    rrca                                          ; $540f: $0f
    add a                                         ; $5410: $87
    ld hl, $19ac                                  ; $5411: $21 $ac $19
    ld [hl], a                                    ; $5414: $77
    ld [$0c85], a                                 ; $5415: $ea $85 $0c
    ld l, a                                       ; $5418: $6f
    ld b, e                                       ; $5419: $43
    ld b, e                                       ; $541a: $43
    jp z, Jump_000_2eee                           ; $541b: $ca $ee $2e

    inc de                                        ; $541e: $13
    and e                                         ; $541f: $a3
    ld b, d                                       ; $5420: $42
    ld e, $21                                     ; $5421: $1e $21
    adc a                                         ; $5423: $8f
    ld c, e                                       ; $5424: $4b
    ld c, l                                       ; $5425: $4d
    pop af                                        ; $5426: $f1
    cp l                                          ; $5427: $bd
    dec hl                                        ; $5428: $2b
    ld e, $bb                                     ; $5429: $1e $bb
    or d                                          ; $542b: $b2
    dec sp                                        ; $542c: $3b
    dec de                                        ; $542d: $1b
    ld [hl-], a                                   ; $542e: $32
    ld a, e                                       ; $542f: $7b
    db $f4                                        ; $5430: $f4
    ld [hl-], a                                   ; $5431: $32
    ld sp, $842a                                  ; $5432: $31 $2a $84
    dec a                                         ; $5435: $3d
    ld [bc], a                                    ; $5436: $02
    rst $20                                       ; $5437: $e7
    ld sp, $ea75                                  ; $5438: $31 $75 $ea
    reti                                          ; $543b: $d9


    ld h, h                                       ; $543c: $64
    ld h, d                                       ; $543d: $62
    call nc, $9d0c                                ; $543e: $d4 $0c $9d
    ld c, l                                       ; $5441: $4d
    and [hl]                                      ; $5442: $a6
    rst $18                                       ; $5443: $df
    rst $38                                       ; $5444: $ff
    and a                                         ; $5445: $a7
    rst $10                                       ; $5446: $d7
    adc b                                         ; $5447: $88
    ld e, [hl]                                    ; $5448: $5e
    dec a                                         ; $5449: $3d
    sbc h                                         ; $544a: $9c
    rst $18                                       ; $544b: $df
    add e                                         ; $544c: $83
    ld d, c                                       ; $544d: $51
    adc h                                         ; $544e: $8c
    xor d                                         ; $544f: $aa
    dec a                                         ; $5450: $3d
    or e                                          ; $5451: $b3
    rst $18                                       ; $5452: $df
    jr nc, jr_051_54b3                            ; $5453: $30 $5e

    rst $30                                       ; $5455: $f7
    sbc d                                         ; $5456: $9a
    halt                                          ; $5457: $76
    inc [hl]                                      ; $5458: $34
    call c, $2c79                                 ; $5459: $dc $79 $2c
    rst $18                                       ; $545c: $df
    xor a                                         ; $545d: $af
    rst $30                                       ; $545e: $f7
    ld d, l                                       ; $545f: $55
    dec [hl]                                      ; $5460: $35
    sbc h                                         ; $5461: $9c
    rra                                           ; $5462: $1f
    xor l                                         ; $5463: $ad
    ld h, $21                                     ; $5464: $26 $21
    dec sp                                        ; $5466: $3b
    ld a, d                                       ; $5467: $7a
    ld hl, $a9da                                  ; $5468: $21 $da $a9
    push hl                                       ; $546b: $e5
    adc d                                         ; $546c: $8a
    jp z, Jump_051_6fe9                           ; $546d: $ca $e9 $6f

    inc l                                         ; $5470: $2c
    call c, $8c79                                 ; $5471: $dc $79 $8c
    cp e                                          ; $5474: $bb
    ld [hl+], a                                   ; $5475: $22
    ld a, c                                       ; $5476: $79
    ld hl, $d10b                                  ; $5477: $21 $0b $d1
    ld c, [hl]                                    ; $547a: $4e
    dec l                                         ; $547b: $2d
    ld d, a                                       ; $547c: $57
    call nc, $d1ec                                ; $547d: $d4 $ec $d1
    cp e                                          ; $5480: $bb
    ld [hl+], a                                   ; $5481: $22
    or c                                          ; $5482: $b1
    ld l, h                                       ; $5483: $6c
    add sp, -$4c                                  ; $5484: $e8 $b4
    ld [$ffa5], a                                 ; $5486: $ea $a5 $ff
    ld [hl], l                                    ; $5489: $75
    rst $18                                       ; $548a: $df
    db $fd                                        ; $548b: $fd
    cp a                                          ; $548c: $bf
    sub [hl]                                      ; $548d: $96
    ld c, c                                       ; $548e: $49
    reti                                          ; $548f: $d9


    or d                                          ; $5490: $b2
    ld [hl], b                                    ; $5491: $70
    ld c, a                                       ; $5492: $4f
    rst $28                                       ; $5493: $ef
    ld [hl-], a                                   ; $5494: $32
    xor c                                         ; $5495: $a9
    ld [hl], c                                    ; $5496: $71
    and a                                         ; $5497: $a7
    adc $27                                       ; $5498: $ce $27
    ld d, d                                       ; $549a: $52
    db $d3                                        ; $549b: $d3
    xor [hl]                                      ; $549c: $ae
    ld a, e                                       ; $549d: $7b

jr_051_549e:
    call Call_000_2c86                            ; $549e: $cd $86 $2c
    ld a, e                                       ; $54a1: $7b
    and l                                         ; $54a2: $a5
    ld c, b                                       ; $54a3: $48
    or l                                          ; $54a4: $b5
    ld b, b                                       ; $54a5: $40
    inc b                                         ; $54a6: $04
    ld c, a                                       ; $54a7: $4f
    bit 1, [hl]                                   ; $54a8: $cb $4e
    dec sp                                        ; $54aa: $3b
    call nz, $cf46                                ; $54ab: $c4 $46 $cf
    ret nc                                        ; $54ae: $d0

    reti                                          ; $54af: $d9


    ldh a, [$65]                                  ; $54b0: $f0 $65
    ld b, e                                       ; $54b2: $43

jr_051_54b3:
    sub a                                         ; $54b3: $97
    ld c, c                                       ; $54b4: $49
    reti                                          ; $54b5: $d9


    or d                                          ; $54b6: $b2
    or c                                          ; $54b7: $b1
    db $10                                        ; $54b8: $10
    db $ed                                        ; $54b9: $ed
    call nc, $4572                                ; $54ba: $d4 $72 $45
    add l                                         ; $54bd: $85
    ld c, h                                       ; $54be: $4c
    cp e                                          ; $54bf: $bb
    xor $d5                                       ; $54c0: $ee $d5
    inc sp                                        ; $54c2: $33
    add hl, sp                                    ; $54c3: $39
    adc a                                         ; $54c4: $8f
    dec sp                                        ; $54c5: $3b

Jump_051_54c6:
    ld [hl], l                                    ; $54c6: $75
    or $47                                        ; $54c7: $f6 $47
    ld [$4420], sp                                ; $54c9: $08 $20 $44
    add l                                         ; $54cc: $85
    rst $28                                       ; $54cd: $ef
    ld l, $13                                     ; $54ce: $2e $13
    and e                                         ; $54d0: $a3
    ld b, d                                       ; $54d1: $42
    ld b, [hl]                                    ; $54d2: $46
    ld c, d                                       ; $54d3: $4a
    sub [hl]                                      ; $54d4: $96
    ld c, c                                       ; $54d5: $49
    reti                                          ; $54d6: $d9


    ld e, d                                       ; $54d7: $5a
    db $f4                                        ; $54d8: $f4

Call_051_54d9:
    inc c                                         ; $54d9: $0c
    sbc l                                         ; $54da: $9d
    call c, Call_051_68c5                         ; $54db: $dc $c5 $68
    adc h                                         ; $54de: $8c
    ld b, $73                                     ; $54df: $06 $73
    db $fc                                        ; $54e1: $fc
    add b                                         ; $54e2: $80
    sub l                                         ; $54e3: $95
    jr z, jr_051_549e                             ; $54e4: $28 $b8

    rlca                                          ; $54e6: $07
    cp $ff                                        ; $54e7: $fe $ff
    ld b, l                                       ; $54e9: $45
    rrca                                          ; $54ea: $0f
    rst $20                                       ; $54eb: $e7
    sub a                                         ; $54ec: $97
    db $fd                                        ; $54ed: $fd
    xor d                                         ; $54ee: $aa
    db $10                                        ; $54ef: $10
    cp b                                          ; $54f0: $b8
    and a                                         ; $54f1: $a7
    ld [hl], a                                    ; $54f2: $77
    ld [hl], $7e                                  ; $54f3: $36 $7e
    push af                                       ; $54f5: $f5
    ld c, h                                       ; $54f6: $4c
    adc $bb                                       ; $54f7: $ce $bb
    ld [hl], e                                    ; $54f9: $73
    sbc l                                         ; $54fa: $9d
    sbc a                                         ; $54fb: $9f
    ld [$c704], a                                 ; $54fc: $ea $04 $c7
    and e                                         ; $54ff: $a3
    rst $00                                       ; $5500: $c7
    sbc l                                         ; $5501: $9d
    ld a, d                                       ; $5502: $7a
    db $fc                                        ; $5503: $fc
    ld a, [hl]                                    ; $5504: $7e
    ld a, b                                       ; $5505: $78
    ld b, c                                       ; $5506: $41
    inc b                                         ; $5507: $04
    ld h, b                                       ; $5508: $60
    jp hl                                         ; $5509: $e9


    sbc b                                         ; $550a: $98
    and l                                         ; $550b: $a5
    sub [hl]                                      ; $550c: $96
    ld c, c                                       ; $550d: $49
    db $ed                                        ; $550e: $ed
    jp z, $d1ec                                   ; $550f: $ca $ec $d1

    db $d3                                        ; $5512: $d3
    rst $28                                       ; $5513: $ef
    rst $38                                       ; $5514: $ff
    ld h, e                                       ; $5515: $63
    sub [hl]                                      ; $5516: $96
    sbc d                                         ; $5517: $9a
    ld d, [hl]                                    ; $5518: $56
    inc bc                                        ; $5519: $03
    ld d, [hl]                                    ; $551a: $56
    and d                                         ; $551b: $a2
    jr nz, jr_051_5520                            ; $551c: $20 $02

    ld c, a                                       ; $551e: $4f
    inc c                                         ; $551f: $0c

jr_051_5520:
    sbc l                                         ; $5520: $9d
    ld c, l                                       ; $5521: $4d
    and [hl]                                      ; $5522: $a6
    rst $18                                       ; $5523: $df
    rst $38                                       ; $5524: $ff
    pop hl                                        ; $5525: $e1
    adc $f9                                       ; $5526: $ce $f9
    add hl, hl                                    ; $5528: $29
    cp [hl]                                       ; $5529: $be
    rst $00                                       ; $552a: $c7
    xor h                                         ; $552b: $ac
    or e                                          ; $552c: $b3
    dec a                                         ; $552d: $3d
    ld d, h                                       ; $552e: $54
    scf                                           ; $552f: $37
    ld l, e                                       ; $5530: $6b
    db $fc                                        ; $5531: $fc
    ld e, $a2                                     ; $5532: $1e $a2
    jp hl                                         ; $5534: $e9


    dec [hl]                                      ; $5535: $35
    ld [de], a                                    ; $5536: $12
    db $e3                                        ; $5537: $e3
    ld a, l                                       ; $5538: $7d
    pop hl                                        ; $5539: $e1
    ld a, $8d                                     ; $553a: $3e $8d
    rst $38                                       ; $553c: $ff
    rra                                           ; $553d: $1f
    xor $bc                                       ; $553e: $ee $bc
    dec hl                                        ; $5540: $2b
    ld h, l                                       ; $5541: $65
    adc $66                                       ; $5542: $ce $66
    sub e                                         ; $5544: $93
    add hl, hl                                    ; $5545: $29
    cp [hl]                                       ; $5546: $be
    ld b, a                                       ; $5547: $47
    ld h, e                                       ; $5548: $63
    ld h, b                                       ; $5549: $60
    ld b, d                                       ; $554a: $42
    cp a                                          ; $554b: $bf
    rst $38                                       ; $554c: $ff
    rst $00                                       ; $554d: $c7
    ld hl, sp+$01                                 ; $554e: $f8 $01
    dec hl                                        ; $5550: $2b
    ld d, c                                       ; $5551: $51
    ld [hl], b                                    ; $5552: $70
    ld h, b                                       ; $5553: $60
    jp hl                                         ; $5554: $e9


    add h                                         ; $5555: $84
    sub a                                         ; $5556: $97
    dec [hl]                                      ; $5557: $35
    ld c, a                                       ; $5558: $4f
    xor d                                         ; $5559: $aa
    ld [hl], a                                    ; $555a: $77
    rst $38                                       ; $555b: $ff
    xor a                                         ; $555c: $af
    dec h                                         ; $555d: $25
    ld a, [hl]                                    ; $555e: $7e
    or [hl]                                       ; $555f: $b6
    call z, $1f2f                                 ; $5560: $cc $2f $1f
    ld h, d                                       ; $5563: $62
    ld h, a                                       ; $5564: $67
    ld [hl], b                                    ; $5565: $70
    ld a, h                                       ; $5566: $7c
    ld a, l                                       ; $5567: $7d
    or d                                          ; $5568: $b2
    dec [hl]                                      ; $5569: $35
    dec h                                         ; $556a: $25
    scf                                           ; $556b: $37
    cp e                                          ; $556c: $bb
    jp hl                                         ; $556d: $e9


    pop de                                        ; $556e: $d1
    ld e, b                                       ; $556f: $58
    or $d2                                        ; $5570: $f6 $d2
    ld b, e                                       ; $5572: $43
    jr nz, jr_051_5577                            ; $5573: $20 $02

    ret nz                                        ; $5575: $c0

    ld c, [hl]                                    ; $5576: $4e

jr_051_5577:
    sbc l                                         ; $5577: $9d
    ld c, a                                       ; $5578: $4f
    ld h, h                                       ; $5579: $64
    jp c, $aa21                                   ; $557a: $da $21 $aa

    ld b, [hl]                                    ; $557d: $46
    db $e3                                        ; $557e: $e3
    ld l, h                                       ; $557f: $6c
    rrca                                          ; $5580: $0f
    push de                                       ; $5581: $d5
    call Call_000_3b82                            ; $5582: $cd $82 $3b
    rrca                                          ; $5585: $0f
    sbc c                                         ; $5586: $99
    halt                                          ; $5587: $76
    db $f4                                        ; $5588: $f4
    ld [hl-], a                                   ; $5589: $32
    ld sp, $642a                                  ; $558a: $31 $2a $64
    ld sp, $faae                                  ; $558d: $31 $ae $fa
    ld e, a                                       ; $5590: $5f
    dec b                                         ; $5591: $05
    ld de, $834f                                  ; $5592: $11 $4f $83
    adc $1e                                       ; $5595: $ce $1e
    dec c                                         ; $5597: $0d
    ld hl, $bc84                                  ; $5598: $21 $84 $bc
    halt                                          ; $559b: $76
    or [hl]                                       ; $559c: $b6
    and e                                         ; $559d: $a3
    ld h, a                                       ; $559e: $67
    ld h, e                                       ; $559f: $63
    ld [hl], $81                                  ; $55a0: $36 $81
    ld [$8dc0], sp                                ; $55a2: $08 $c0 $8d
    dec e                                         ; $55a5: $1d
    pop de                                        ; $55a6: $d1
    adc a                                         ; $55a7: $8f
    rst $38                                       ; $55a8: $ff
    rst $08                                       ; $55a9: $cf
    or $50                                        ; $55aa: $f6 $50
    xor d                                         ; $55ac: $aa
    xor a                                         ; $55ad: $af
    add l                                         ; $55ae: $85
    ld [$31e7], sp                                ; $55af: $08 $e7 $31
    db $ed                                        ; $55b2: $ed
    add sp, -$3b                                  ; $55b3: $e8 $c5
    ld e, $aa                                     ; $55b5: $1e $aa
    sbc e                                         ; $55b7: $9b
    dec [hl]                                      ; $55b8: $35
    ld [hl], b                                    ; $55b9: $70
    add $3d                                       ; $55ba: $c6 $3d
    ld a, d                                       ; $55bc: $7a
    db $fc                                        ; $55bd: $fc
    ld e, $a2                                     ; $55be: $1e $a2
    jp hl                                         ; $55c0: $e9


    dec [hl]                                      ; $55c1: $35
    ld [de], a                                    ; $55c2: $12
    inc bc                                        ; $55c3: $03
    sbc $25                                       ; $55c4: $de $25
    ld a, [hl+]                                   ; $55c6: $2a
    ld a, [$f16c]                                 ; $55c7: $fa $6c $f1
    ld b, e                                       ; $55ca: $43
    adc a                                         ; $55cb: $8f
    ld e, $d7                                     ; $55cc: $1e $d7
    cp h                                          ; $55ce: $bc
    inc l                                         ; $55cf: $2c
    inc de                                        ; $55d0: $13
    di                                            ; $55d1: $f3
    ld c, e                                       ; $55d2: $4b
    ldh [$9e], a                                  ; $55d3: $e0 $9e
    sbc l                                         ; $55d5: $9d
    adc l                                         ; $55d6: $8d
    ld l, c                                       ; $55d7: $69
    ld b, a                                       ; $55d8: $47
    cpl                                           ; $55d9: $2f
    add [hl]                                      ; $55da: $86
    pop bc                                        ; $55db: $c1
    ld c, b                                       ; $55dc: $48
    ret                                           ; $55dd: $c9


    reti                                          ; $55de: $d9


    or h                                          ; $55df: $b4
    sub d                                         ; $55e0: $92
    push bc                                       ; $55e1: $c5
    ld b, d                                       ; $55e2: $42
    ld b, [hl]                                    ; $55e3: $46
    ld b, d                                       ; $55e4: $42
    cp h                                          ; $55e5: $bc
    sub d                                         ; $55e6: $92
    add [hl]                                      ; $55e7: $86
    ld [$ef4f], sp                                ; $55e8: $08 $4f $ef
    or h                                          ; $55eb: $b4
    ld [$a3d1], a                                 ; $55ec: $ea $d1 $a3
    adc c                                         ; $55ef: $89
    rst $08                                       ; $55f0: $cf
    add [hl]                                      ; $55f1: $86
    ld b, e                                       ; $55f2: $43
    inc b                                         ; $55f3: $04
    rst $20                                       ; $55f4: $e7
    or c                                          ; $55f5: $b1
    ld e, b                                       ; $55f6: $58
    ret z                                         ; $55f7: $c8

    ld b, d                                       ; $55f8: $42
    or h                                          ; $55f9: $b4
    ld d, e                                       ; $55fa: $53
    rl l                                          ; $55fb: $cb $15
    or l                                          ; $55fd: $b5
    ld l, h                                       ; $55fe: $6c
    add sp, -$4c                                  ; $55ff: $e8 $b4
    ld [$ffa5], a                                 ; $5601: $ea $a5 $ff
    ld [hl], l                                    ; $5604: $75
    ld e, a                                       ; $5605: $5f
    ld h, $65                                     ; $5606: $26 $65
    set 5, [hl]                                   ; $5608: $cb $ee
    push hl                                       ; $560a: $e5
    ld l, c                                       ; $560b: $69
    push de                                       ; $560c: $d5
    or e                                          ; $560d: $b3
    ret                                           ; $560e: $c9


    ld [hl], d                                    ; $560f: $72
    cp b                                          ; $5610: $b8
    ld c, a                                       ; $5611: $4f
    ld a, b                                       ; $5612: $78
    sbc a                                         ; $5613: $9f
    pop de                                        ; $5614: $d1
    ld c, e                                       ; $5615: $4b
    cp $55                                        ; $5616: $fe $55
    cp $08                                        ; $5618: $fe $08
    ld bc, $aba0                                  ; $561a: $01 $a0 $ab
    di                                            ; $561d: $f3
    ld a, $2b                                     ; $561e: $3e $2b
    ld b, a                                       ; $5620: $47
    adc a                                         ; $5621: $8f
    db $fc                                        ; $5622: $fc
    ld [$11dd], a                                 ; $5623: $ea $dd $11
    db $fd                                        ; $5626: $fd
    ld hl, sp+$1f                                 ; $5627: $f8 $1f
    ld [hl+], a                                   ; $5629: $22
    adc a                                         ; $562a: $8f
    ld l, e                                       ; $562b: $6b
    inc [hl]                                      ; $562c: $34
    and h                                         ; $562d: $a4
    ld l, h                                       ; $562e: $6c
    ld c, h                                       ; $562f: $4c
    ld a, b                                       ; $5630: $78
    rst $18                                       ; $5631: $df
    sbc l                                         ; $5632: $9d
    inc e                                         ; $5633: $1c
    xor l                                         ; $5634: $ad
    add l                                         ; $5635: $85
    add a                                         ; $5636: $87
    ld b, b                                       ; $5637: $40
    inc b                                         ; $5638: $04
    ld c, a                                       ; $5639: $4f
    adc b                                         ; $563a: $88
    ld d, c                                       ; $563b: $51
    ld hl, $2753                                  ; $563c: $21 $53 $27
    ld c, d                                       ; $563f: $4a
    and e                                         ; $5640: $a3
    ld b, a                                       ; $5641: $47
    ld a, c                                       ; $5642: $79
    ld d, c                                       ; $5643: $51
    dec [hl]                                      ; $5644: $35
    dec l                                         ; $5645: $2d
    add sp, -$41                                  ; $5646: $e8 $bf
    ld c, d                                       ; $5648: $4a
    dec bc                                        ; $5649: $0b
    adc a                                         ; $564a: $8f
    add [hl]                                      ; $564b: $86
    ld [$e44f], sp                                ; $564c: $08 $4f $e4
    ld hl, sp-$21                                 ; $564f: $f8 $df
    ld d, a                                       ; $5651: $57
    ld a, [$306c]                                 ; $5652: $fa $6c $30
    rst $00                                       ; $5655: $c7
    ld c, a                                       ; $5656: $4f
    ld h, e                                       ; $5657: $63
    ld e, $1f                                     ; $5658: $1e $1f
    xor a                                         ; $565a: $af
    ld sp, hl                                     ; $565b: $f9
    db $fd                                        ; $565c: $fd
    ld a, a                                       ; $565d: $7f
    db $fc                                        ; $565e: $fc
    inc [hl]                                      ; $565f: $34
    cp $ff                                        ; $5660: $fe $ff
    sbc d                                         ; $5662: $9a
    dec [hl]                                      ; $5663: $35
    ld [hl], h                                    ; $5664: $74
    ld e, d                                       ; $5665: $5a
    ret nc                                        ; $5666: $d0

    ld a, a                                       ; $5667: $7f
    ld d, l                                       ; $5668: $55
    ld b, c                                       ; $5669: $41
    inc b                                         ; $566a: $04
    rrca                                          ; $566b: $0f
    pop bc                                        ; $566c: $c1
    inc a                                         ; $566d: $3c
    db $db                                        ; $566e: $db
    ld b, e                                       ; $566f: $43
    xor c                                         ; $5670: $a9
    cp [hl]                                       ; $5671: $be
    ld d, $22                                     ; $5672: $16 $22
    rrca                                          ; $5674: $0f
    pop bc                                        ; $5675: $c1
    inc a                                         ; $5676: $3c
    dec de                                        ; $5677: $1b
    ldh [$92], a                                  ; $5678: $e0 $92
    add b                                         ; $567a: $80
    ld a, e                                       ; $567b: $7b
    ld e, h                                       ; $567c: $5c
    db $e3                                        ; $567d: $e3
    sbc d                                         ; $567e: $9a
    ld d, a                                       ; $567f: $57
    ld h, l                                       ; $5680: $65
    ld h, e                                       ; $5681: $63
    call z, $fb24                                 ; $5682: $cc $24 $fb
    jr nc, jr_051_569f                            ; $5685: $30 $18

    add hl, hl                                    ; $5687: $29
    sbc c                                         ; $5688: $99
    halt                                          ; $5689: $76
    db $f4                                        ; $568a: $f4
    inc c                                         ; $568b: $0c
    sbc l                                         ; $568c: $9d
    call c, $d569                                 ; $568d: $dc $69 $d5
    set 4, c                                      ; $5690: $cb $e1
    ld a, $e1                                     ; $5692: $3e $e1
    ld a, l                                       ; $5694: $7d
    adc c                                         ; $5695: $89
    ret c                                         ; $5696: $d8

    add sp, $7f                                   ; $5697: $e8 $7f
    sub l                                         ; $5699: $95

Call_051_569a:
    ccf                                           ; $569a: $3f
    ld b, d                                       ; $569b: $42
    and b                                         ; $569c: $a0
    xor e                                         ; $569d: $ab
    di                                            ; $569e: $f3

jr_051_569f:
    ld a, $2b                                     ; $569f: $3e $2b
    ld b, a                                       ; $56a1: $47
    rst $08                                       ; $56a2: $cf
    add sp, $25                                   ; $56a3: $e8 $25
    rst $38                                       ; $56a5: $ff
    ld a, [hl+]                                   ; $56a6: $2a
    rra                                           ; $56a7: $1f
    ld sp, hl                                     ; $56a8: $f9
    push de                                       ; $56a9: $d5
    cp [hl]                                       ; $56aa: $be
    dec sp                                        ; $56ab: $3b
    and d                                         ; $56ac: $a2
    rra                                           ; $56ad: $1f
    rst $38                                       ; $56ae: $ff
    ld b, e                                       ; $56af: $43
    inc b                                         ; $56b0: $04
    rst $20                                       ; $56b1: $e7
    or c                                          ; $56b2: $b1
    sbc b                                         ; $56b3: $98
    call c, $f49d                                 ; $56b4: $dc $9d $f4
    add sp, -$70                                  ; $56b7: $e8 $90
    inc a                                         ; $56b9: $3c
    ld b, e                                       ; $56ba: $43
    pop hl                                        ; $56bb: $e1
    sbc [hl]                                      ; $56bc: $9e
    sbc $51                                       ; $56bd: $de $51
    ld a, $7b                                     ; $56bf: $3e $7b
    ld c, h                                       ; $56c1: $4c
    cp a                                          ; $56c2: $bf
    or [hl]                                       ; $56c3: $b6
    ld a, [hl-]                                   ; $56c4: $3a
    ldh [$c0], a                                  ; $56c5: $e0 $c0
    jp nc, Jump_000_2f09                          ; $56c7: $d2 $09 $2f

    dec hl                                        ; $56ca: $2b
    ld a, l                                       ; $56cb: $7d
    pop de                                        ; $56cc: $d1
    set 2, c                                      ; $56cd: $cb $d1
    inc de                                        ; $56cf: $13
    sbc $67                                       ; $56d0: $de $67
    db $f4                                        ; $56d2: $f4
    sub d                                         ; $56d3: $92
    ld a, a                                       ; $56d4: $7f
    sub l                                         ; $56d5: $95
    rrca                                          ; $56d6: $0f
    rst $20                                       ; $56d7: $e7
    rla                                           ; $56d8: $17
    ld [hl-], a                                   ; $56d9: $32
    ld a, [de]                                    ; $56da: $1a
    cp l                                          ; $56db: $bd
    ld l, a                                       ; $56dc: $6f
    ld c, b                                       ; $56dd: $48
    db $fd                                        ; $56de: $fd
    ret                                           ; $56df: $c9


    push de                                       ; $56e0: $d5
    ld sp, hl                                     ; $56e1: $f9
    sub c                                         ; $56e2: $91
    sub d                                         ; $56e3: $92
    ret                                           ; $56e4: $c9


    sbc l                                         ; $56e5: $9d
    halt                                          ; $56e6: $76
    ld [$e95a], a                                 ; $56e7: $ea $5a $e9
    adc e                                         ; $56ea: $8b
    add [hl]                                      ; $56eb: $86
    ld [$9c4f], sp                                ; $56ec: $08 $4f $9c
    ld a, c                                       ; $56ef: $79
    or h                                          ; $56f0: $b4
    sbc b                                         ; $56f1: $98
    sub [hl]                                      ; $56f2: $96
    ld e, d                                       ; $56f3: $5a
    halt                                          ; $56f4: $76
    ld d, [hl]                                    ; $56f5: $56
    ld c, a                                       ; $56f6: $4f
    rst $20                                       ; $56f7: $e7
    cp e                                          ; $56f8: $bb
    halt                                          ; $56f9: $76
    or d                                          ; $56fa: $b2
    ld hl, $4f70                                  ; $56fb: $21 $70 $4f
    rst $28                                       ; $56fe: $ef
    jp nc, Jump_051_5ea7                          ; $56ff: $d2 $a7 $5e

    and l                                         ; $5702: $a5
    ld d, d                                       ; $5703: $52
    add c                                         ; $5704: $81
    ld a, e                                       ; $5705: $7b
    ld [hl], h                                    ; $5706: $74
    call Call_051_4386                            ; $5707: $cd $86 $43
    inc b                                         ; $570a: $04
    rst $20                                       ; $570b: $e7
    pop hl                                        ; $570c: $e1
    set 1, [hl]                                   ; $570d: $cb $ce
    inc a                                         ; $570f: $3c

jr_051_5710:
    ld e, d                                       ; $5710: $5a
    ld c, h                                       ; $5711: $4c
    ld c, e                                       ; $5712: $4b
    adc l                                         ; $5713: $8d
    dec sp                                        ; $5714: $3b
    ld [hl], l                                    ; $5715: $75
    ld [c], a                                     ; $5716: $e2
    add hl, de                                    ; $5717: $19
    rst $20                                       ; $5718: $e7
    ld a, e                                       ; $5719: $7b
    ld b, a                                       ; $571a: $47
    rst $28                                       ; $571b: $ef
    adc d                                         ; $571c: $8a
    rst $00                                       ; $571d: $c7
    ld [$bf7f], a                                 ; $571e: $ea $7f $bf
    halt                                          ; $5721: $76
    sbc $a1                                       ; $5722: $de $a1
    rst $38                                       ; $5724: $ff
    xor e                                         ; $5725: $ab
    inc e                                         ; $5726: $1c
    ld [hl+], a                                   ; $5727: $22
    ld h, b                                       ; $5728: $60
    ld [bc], a                                    ; $5729: $02
    rst $30                                       ; $572a: $f7
    ld b, h                                       ; $572b: $44
    sub d                                         ; $572c: $92
    cp h                                          ; $572d: $bc
    rst $08                                       ; $572e: $cf
    jp z, $bbd1                                   ; $572f: $ca $d1 $bb

    ld [c], a                                     ; $5732: $e2
    ld sp, $abf2                                  ; $5733: $31 $f2 $ab
    ld a, l                                       ; $5736: $7d
    ld [hl], a                                    ; $5737: $77
    ld b, h                                       ; $5738: $44
    ccf                                           ; $5739: $3f
    cp $3f                                        ; $573a: $fe $3f
    dec de                                        ; $573c: $1b
    dec c                                         ; $573d: $0d
    add hl, de                                    ; $573e: $19
    ld sp, hl                                     ; $573f: $f9
    push de                                       ; $5740: $d5
    push de                                       ; $5741: $d5
    or c                                          ; $5742: $b1
    ld b, e                                       ; $5743: $43
    ld h, $a6                                     ; $5744: $26 $a6
    ld l, c                                       ; $5746: $69
    ld a, l                                       ; $5747: $7d
    add a                                         ; $5748: $87
    ld [$ef4f], sp                                ; $5749: $08 $4f $ef
    jp nc, $6da6                                  ; $574c: $d2 $a6 $6d

    db $ec                                        ; $574f: $ec
    adc d                                         ; $5750: $8a
    rst $00                                       ; $5751: $c7
    inc [hl]                                      ; $5752: $34
    and $f1                                       ; $5753: $e6 $f1
    pop af                                        ; $5755: $f1
    sbc d                                         ; $5756: $9a
    dec c                                         ; $5757: $0d
    cp d                                          ; $5758: $ba
    ld l, h                                       ; $5759: $6c
    add sp, -$4e                                  ; $575a: $e8 $b2
    inc sp                                        ; $575c: $33
    adc a                                         ; $575d: $8f
    ld d, $d3                                     ; $575e: $16 $d3
    ld d, d                                       ; $5760: $52
    res 0, a                                      ; $5761: $cb $87

Call_051_5763:
    adc d                                         ; $5763: $8a
    sbc $d1                                       ; $5764: $de $d1
    db $e3                                        ; $5766: $e3
    ld c, [hl]                                    ; $5767: $4e
    ld l, l                                       ; $5768: $6d
    ld c, a                                       ; $5769: $4f
    call nc, Call_051_4416                        ; $576a: $d4 $16 $44
    ld c, a                                       ; $576d: $4f
    rst $28                                       ; $576e: $ef
    jr z, jr_051_5710                             ; $576f: $28 $9f

    dec a                                         ; $5771: $3d
    sub [hl]                                      ; $5772: $96
    ld a, $31                                     ; $5773: $3e $31
    ld l, e                                       ; $5775: $6b
    ld h, $e7                                     ; $5776: $26 $e7
    ld [hl], c                                    ; $5778: $71
    and a                                         ; $5779: $a7
    ld e, [hl]                                    ; $577a: $5e
    halt                                          ; $577b: $76
    and $d1                                       ; $577c: $e6 $d1
    ld h, d                                       ; $577e: $62
    ld e, d                                       ; $577f: $5a
    ld a, [hl+]                                   ; $5780: $2a
    ld c, a                                       ; $5781: $4f
    cp a                                          ; $5782: $bf
    sbc a                                         ; $5783: $9f
    ld e, c                                       ; $5784: $59
    db $10                                        ; $5785: $10
    ld bc, $884f                                  ; $5786: $01 $4f $88
    ld d, c                                       ; $5789: $51
    ld hl, $7a3b                                  ; $578a: $21 $3b $7a
    ld hl, $aca3                                  ; $578d: $21 $a3 $ac
    db $ec                                        ; $5790: $ec
    scf                                           ; $5791: $37
    sub e                                         ; $5792: $93
    pop hl                                        ; $5793: $e1
    cp a                                          ; $5794: $bf
    inc a                                         ; $5795: $3c
    ld b, e                                       ; $5796: $43
    inc b                                         ; $5797: $04
    rrca                                          ; $5798: $0f
    and l                                         ; $5799: $a5
    ld a, [$b3da]                                 ; $579a: $fa $da $b3
    ld sp, hl                                     ; $579d: $f9
    ld [hl], l                                    ; $579e: $75
    xor a                                         ; $579f: $af
    or e                                          ; $57a0: $b3
    push af                                       ; $57a1: $f5
    ret                                           ; $57a2: $c9


    sub $94                                       ; $57a3: $d6 $94
    call c, $a6ec                                 ; $57a5: $dc $ec $a6
    reti                                          ; $57a8: $d9


Call_051_57a9:
    rst $28                                       ; $57a9: $ef
    inc a                                         ; $57aa: $3c
    ld d, [hl]                                    ; $57ab: $56
    ld h, d                                       ; $57ac: $62
    cp e                                          ; $57ad: $bb
    halt                                          ; $57ae: $76
    db $f4                                        ; $57af: $f4
    xor $b8                                       ; $57b0: $ee $b8
    ld [$0882], a                                 ; $57b2: $ea $82 $08
    ld h, b                                       ; $57b5: $60
    xor $f4                                       ; $57b6: $ee $f4
    ld b, e                                       ; $57b8: $43
    cp h                                          ; $57b9: $bc
    ld a, d                                       ; $57ba: $7a
    jp c, $10d1                                   ; $57bb: $da $d1 $10

    ld bc, $4b8f                                  ; $57be: $01 $8f $4b
    ld c, l                                       ; $57c1: $4d
    inc sp                                        ; $57c2: $33
    jr c, jr_051_5823                             ; $57c3: $38 $5e

    ld a, c                                       ; $57c5: $79
    push hl                                       ; $57c6: $e5
    cp [hl]                                       ; $57c7: $be
    dec hl                                        ; $57c8: $2b
    ld a, [hl+]                                   ; $57c9: $2a
    ld h, h                                       ; $57ca: $64
    ld b, a                                       ; $57cb: $47
    cpl                                           ; $57cc: $2f
    sub e                                         ; $57cd: $93
    or d                                          ; $57ce: $b2
    ld h, l                                       ; $57cf: $65
    reti                                          ; $57d0: $d9


    inc hl                                        ; $57d1: $23
    ret nz                                        ; $57d2: $c0

    ld c, [hl]                                    ; $57d3: $4e
    sbc l                                         ; $57d4: $9d
    cp b                                          ; $57d5: $b8
    and c                                         ; $57d6: $a1
    dec sp                                        ; $57d7: $3b
    rst $28                                       ; $57d8: $ef
    ld c, d                                       ; $57d9: $4a
    sbc c                                         ; $57da: $99
    or e                                          ; $57db: $b3
    sub c                                         ; $57dc: $91
    sub d                                         ; $57dd: $92
    ld c, h                                       ; $57de: $4c
    ld [bc], a                                    ; $57df: $02
    ld b, d                                       ; $57e0: $42
    adc b                                         ; $57e1: $88
    nop                                           ; $57e2: $00
    ld c, a                                       ; $57e3: $4f
    bit 1, [hl]                                   ; $57e4: $cb $4e
    dec sp                                        ; $57e6: $3b
    call nz, $23c6                                ; $57e7: $c4 $c6 $23
    inc b                                         ; $57ea: $04
    rst $20                                       ; $57eb: $e7
    ld e, l                                       ; $57ec: $5d
    add hl, hl                                    ; $57ed: $29
    inc sp                                        ; $57ee: $33
    scf                                           ; $57ef: $37
    ld l, d                                       ; $57f0: $6a
    ld e, [hl]                                    ; $57f1: $5e
    ld l, d                                       ; $57f2: $6a
    ld [hl], a                                    ; $57f3: $77
    db $f4                                        ; $57f4: $f4
    xor d                                         ; $57f5: $aa
    and l                                         ; $57f6: $a5
    adc e                                         ; $57f7: $8b
    ld e, h                                       ; $57f8: $5c
    xor [hl]                                      ; $57f9: $ae
    ld a, c                                       ; $57fa: $79
    add hl, de                                    ; $57fb: $19

Call_051_57fc:
    adc $2f                                       ; $57fc: $ce $2f
    sub e                                         ; $57fe: $93
    add e                                         ; $57ff: $83
    ld a, [$4a4c]                                 ; $5800: $fa $4c $4a
    add e                                         ; $5803: $83
    db $10                                        ; $5804: $10
    adc [hl]                                      ; $5805: $8e
    ld e, c                                       ; $5806: $59
    ld l, d                                       ; $5807: $6a
    call c, $914d                                 ; $5808: $dc $4d $91
    pop hl                                        ; $580b: $e1

jr_051_580c:
    dec h                                         ; $580c: $25
    sub a                                         ; $580d: $97
    ld b, b                                       ; $580e: $40
    inc b                                         ; $580f: $04
    ld c, a                                       ; $5810: $4f
    rst $28                                       ; $5811: $ef
    jp nc, $8f2c                                  ; $5812: $d2 $2c $8f

    sbc [hl]                                      ; $5815: $9e
    ld [$c704], a                                 ; $5816: $ea $04 $c7
    and e                                         ; $5819: $a3
    pop hl                                        ; $581a: $e1
    ret nz                                        ; $581b: $c0

    add h                                         ; $581c: $84
    ld a, [hl]                                    ; $581d: $7e
    rst $38                                       ; $581e: $ff
    adc a                                         ; $581f: $8f
    pop af                                        ; $5820: $f1
    ld a, e                                       ; $5821: $7b
    adc b                                         ; $5822: $88

jr_051_5823:
    and [hl]                                      ; $5823: $a6
    rst $10                                       ; $5824: $d7
    ld c, b                                       ; $5825: $48
    adc h                                         ; $5826: $8c
    jr jr_051_5873                                ; $5827: $18 $4a

    and e                                         ; $5829: $a3
    ld b, a                                       ; $582a: $47
    ld h, e                                       ; $582b: $63
    inc [hl]                                      ; $582c: $34
    sbc b                                         ; $582d: $98
    ld [hl], b                                    ; $582e: $70
    rrca                                          ; $582f: $0f
    push de                                       ; $5830: $d5
    call $9b3a                                    ; $5831: $cd $3a $9b
    ld c, l                                       ; $5834: $4d
    and [hl]                                      ; $5835: $a6
    ld hl, sp+$1e                                 ; $5836: $f8 $1e
    adc l                                         ; $5838: $8d
    sbc l                                         ; $5839: $9d
    ld [hl], a                                    ; $583a: $77
    and l                                         ; $583b: $a5
    call z, $01f8                                 ; $583c: $cc $f8 $01
    dec hl                                        ; $583f: $2b
    ld d, c                                       ; $5840: $51
    ld [hl], b                                    ; $5841: $70
    rst $20                                       ; $5842: $e7
    or c                                          ; $5843: $b1
    db $f4                                        ; $5844: $f4
    cp a                                          ; $5845: $bf
    cp l                                          ; $5846: $bd
    xor h                                         ; $5847: $ac
    di                                            ; $5848: $f3
    ld e, l                                       ; $5849: $5d
    dec e                                         ; $584a: $1d
    db $e3                                        ; $584b: $e3
    ld c, [hl]                                    ; $584c: $4e
    dec a                                         ; $584d: $3d
    call $a188                                    ; $584e: $cd $88 $a1
    db $e3                                        ; $5851: $e3
    sub a                                         ; $5852: $97
    ld c, c                                       ; $5853: $49
    rra                                           ; $5854: $1f
    sub h                                         ; $5855: $94
    sub $6c                                       ; $5856: $d6 $6c
    jr nc, jr_051_587b                            ; $5858: $30 $21

    ld [bc], a                                    ; $585a: $02
    jr jr_051_580c                                ; $585b: $18 $af

    ld a, e                                       ; $585d: $7b
    or c                                          ; $585e: $b1
    rst $18                                       ; $585f: $df
    ld a, c                                       ; $5860: $79
    ld hl, sp+$28                                 ; $5861: $f8 $28
    sbc a                                         ; $5863: $9f
    dec a                                         ; $5864: $3d
    and [hl]                                      ; $5865: $a6
    ld d, a                                       ; $5866: $57
    rst $10                                       ; $5867: $d7
    ld b, d                                       ; $5868: $42
    or h                                          ; $5869: $b4
    ld d, e                                       ; $586a: $53
    rl l                                          ; $586b: $cb $15
    dec d                                         ; $586d: $15
    ld [bc], a                                    ; $586e: $02
    ld [hl], a                                    ; $586f: $77
    ld e, $b2                                     ; $5870: $1e $b2
    and e                                         ; $5872: $a3

jr_051_5873:
    ld h, a                                       ; $5873: $67
    ld c, a                                       ; $5874: $4f
    sub [hl]                                      ; $5875: $96
    dec a                                         ; $5876: $3d
    ld [bc], a                                    ; $5877: $02
    rst $08                                       ; $5878: $cf
    ld a, [c]                                     ; $5879: $f2
    inc a                                         ; $587a: $3c

jr_051_587b:
    rst $08                                       ; $587b: $cf
    di                                            ; $587c: $f3
    inc a                                         ; $587d: $3c
    xor a                                         ; $587e: $af
    or c                                          ; $587f: $b1
    ld b, a                                       ; $5880: $47
    add b                                         ; $5881: $80
    inc [hl]                                      ; $5882: $34
    dec c                                         ; $5883: $0d
    ld b, d                                       ; $5884: $42
    sbc b                                         ; $5885: $98
    jp hl                                         ; $5886: $e9


    pop de                                        ; $5887: $d1
    ld e, [hl]                                    ; $5888: $5e
    ld [bc], a                                    ; $5889: $02
    ld hl, $a3bc                                  ; $588a: $21 $bc $a3
    rst $10                                       ; $588d: $d7
    ld a, l                                       ; $588e: $7d
    ld e, d                                       ; $588f: $5a
    and d                                         ; $5890: $a2
    daa                                           ; $5891: $27
    ld d, $42                                     ; $5892: $16 $42
    adc b                                         ; $5894: $88
    nop                                           ; $5895: $00
    ld c, a                                       ; $5896: $4f
    bit 1, [hl]                                   ; $5897: $cb $4e
    dec sp                                        ; $5899: $3b
    call nz, $23c6                                ; $589a: $c4 $c6 $23
    inc b                                         ; $589d: $04
    rrca                                          ; $589e: $0f
    dec h                                         ; $589f: $25
    dec sp                                        ; $58a0: $3b
    ld a, d                                       ; $58a1: $7a
    ld l, c                                       ; $58a2: $69
    db $d3                                        ; $58a3: $d3
    ld e, [hl]                                    ; $58a4: $5e
    sub e                                         ; $58a5: $93
    inc b                                         ; $58a6: $04
    ld c, $f4                                     ; $58a7: $0e $f4
    ld [hl], l                                    ; $58a9: $75
    sbc a                                         ; $58aa: $9f
    inc d                                         ; $58ab: $14
    sub l                                         ; $58ac: $95
    dec e                                         ; $58ad: $1d
    dec a                                         ; $58ae: $3d
    ld h, b                                       ; $58af: $60
    or a                                          ; $58b0: $b7
    ld b, e                                       ; $58b1: $43
    ret c                                         ; $58b2: $d8

    inc b                                         ; $58b3: $04
    call c, $3bd3                                 ; $58b4: $dc $d3 $3b
    jp z, $8f67                                   ; $58b7: $ca $67 $8f

    pop af                                        ; $58ba: $f1
    ld e, $cd                                     ; $58bb: $1e $cd
    sbc l                                         ; $58bd: $9d
    cp d                                          ; $58be: $ba
    ld h, [hl]                                    ; $58bf: $66
    xor a                                         ; $58c0: $af
    sbc d                                         ; $58c1: $9a
    rst $18                                       ; $58c2: $df
    rst $38                                       ; $58c3: $ff
    rst $30                                       ; $58c4: $f7
    ld d, b                                       ; $58c5: $50
    xor d                                         ; $58c6: $aa
    xor a                                         ; $58c7: $af
    add l                                         ; $58c8: $85
    ld [$0f4f], sp                                ; $58c9: $08 $4f $0f
    pop af                                        ; $58cc: $f1
    add d                                         ; $58cd: $82
    db $10                                        ; $58ce: $10
    ld [$b3e1], a                                 ; $58cf: $ea $e1 $b3
    ret                                           ; $58d2: $c9


    db $f4                                        ; $58d3: $f4
    or d                                          ; $58d4: $b2
    res 0, [hl]                                   ; $58d5: $cb $86
    ld c, [hl]                                    ; $58d7: $4e
    xor e                                         ; $58d8: $ab
    sbc [hl]                                      ; $58d9: $9e
    dec a                                         ; $58da: $3d
    reti                                          ; $58db: $d9


    ld a, [c]                                     ; $58dc: $f2
    add l                                         ; $58dd: $85
    ld l, b                                       ; $58de: $68
    and a                                         ; $58df: $a7
    sub [hl]                                      ; $58e0: $96
    dec hl                                        ; $58e1: $2b
    xor d                                         ; $58e2: $aa
    ld e, d                                       ; $58e3: $5a
    ld [$0211], a                                 ; $58e4: $ea $11 $02
    ld h, b                                       ; $58e7: $60
    ld a, b                                       ; $58e8: $78
    ld h, l                                       ; $58e9: $65
    ld h, h                                       ; $58ea: $64
    reti                                          ; $58eb: $d9


    ret nc                                        ; $58ec: $d0

    jp hl                                         ; $58ed: $e9


    rst $30                                       ; $58ee: $f7
    rst $38                                       ; $58ef: $ff
    ld l, c                                       ; $58f0: $69
    dec [hl]                                      ; $58f1: $35

jr_051_58f2:
    dec de                                        ; $58f2: $1b
    ld e, l                                       ; $58f3: $5d
    ld a, c                                       ; $58f4: $79
    jp hl                                         ; $58f5: $e9


    ld l, a                                       ; $58f6: $6f

jr_051_58f7:
    inc l                                         ; $58f7: $2c
    inc e                                         ; $58f8: $1c
    jr nz, jr_051_58f2                            ; $58f9: $20 $f7

    reti                                          ; $58fb: $d9


    cp [hl]                                       ; $58fc: $be
    add hl, hl                                    ; $58fd: $29
    ld d, d                                       ; $58fe: $52
    or e                                          ; $58ff: $b3
    pop hl                                        ; $5900: $e1
    db $d3                                        ; $5901: $d3
    ld hl, sp-$01                                 ; $5902: $f8 $ff
    and e                                         ; $5904: $a3
    and a                                         ; $5905: $a7
    add hl, de                                    ; $5906: $19
    ld sp, $fa74                                  ; $5907: $31 $74 $fa
    or l                                          ; $590a: $b5
    ei                                            ; $590b: $fb
    ld d, a                                       ; $590c: $57
    ccf                                           ; $590d: $3f
    dec de                                        ; $590e: $1b
    dec c                                         ; $590f: $0d
    sbc c                                         ; $5910: $99
    dec c                                         ; $5911: $0d
    rst $18                                       ; $5912: $df
    pop de                                        ; $5913: $d1
    dec bc                                        ; $5914: $0b
    rst $30                                       ; $5915: $f7
    ld [hl], c                                    ; $5916: $71
    and a                                         ; $5917: $a7
    or [hl]                                       ; $5918: $b6
    daa                                           ; $5919: $27
    ld [$57fb], a                                 ; $591a: $ea $fb $57
    add a                                         ; $591d: $87
    inc bc                                        ; $591e: $03
    dec e                                         ; $591f: $1d
    or d                                          ; $5920: $b2
    inc l                                         ; $5921: $2c
    push de                                       ; $5922: $d5
    ld a, $cd                                     ; $5923: $3e $cd
    ldh [$78], a                                  ; $5925: $e0 $78
    push hl                                       ; $5927: $e5
    ld l, c                                       ; $5928: $69
    dec h                                         ; $5929: $25
    inc hl                                        ; $592a: $23
    adc c                                         ; $592b: $89
    ld c, b                                       ; $592c: $48
    call Call_051_4df6                            ; $592d: $cd $f6 $4d
    sub c                                         ; $5930: $91
    sbc d                                         ; $5931: $9a
    ldh a, [$ca]                                  ; $5932: $f0 $ca
    ld hl, sp-$4e                                 ; $5934: $f8 $b2
    and c                                         ; $5936: $a1
    ld d, e                                       ; $5937: $53
    pop de                                        ; $5938: $d1
    db $d3                                        ; $5939: $d3
    adc h                                         ; $593a: $8c
    jr jr_051_58f7                                ; $593b: $18 $ba

    ret nc                                        ; $593d: $d0

    xor a                                         ; $593e: $af
    ld a, [c]                                     ; $593f: $f2
    db $fd                                        ; $5940: $fd
    xor e                                         ; $5941: $ab
    ld b, e                                       ; $5942: $43
    inc b                                         ; $5943: $04
    ld h, b                                       ; $5944: $60
    jp z, $fe93                                   ; $5945: $ca $93 $fe

    ld d, a                                       ; $5948: $57
    cp c                                          ; $5949: $b9
    ld a, [hl]                                    ; $594a: $7e
    di                                            ; $594b: $f3
    ld e, [hl]                                    ; $594c: $5e
    ld e, $a8                                     ; $594d: $1e $a8
    xor e                                         ; $594f: $ab
    rst $20                                       ; $5950: $e7
    ld hl, sp-$69                                 ; $5951: $f8 $97
    pop af                                        ; $5953: $f1
    db $ed                                        ; $5954: $ed
    ldh a, [$71]                                  ; $5955: $f0 $71
    call $cecb                                    ; $5957: $cd $cb $ce
    ld h, e                                       ; $595a: $63
    ld c, a                                       ; $595b: $4f
    ld l, a                                       ; $595c: $6f
    adc [hl]                                      ; $595d: $8e
    cp h                                          ; $595e: $bc
    daa                                           ; $595f: $27
    ld e, $c2                                     ; $5960: $1e $c2
    ld a, [hl]                                    ; $5962: $7e
    and b                                         ; $5963: $a0
    ld b, e                                       ; $5964: $43
    and [hl]                                      ; $5965: $a6
    rlca                                          ; $5966: $07
    ld e, l                                       ; $5967: $5d
    ld h, $c9                                     ; $5968: $26 $c9
    rst $38                                       ; $596a: $ff
    ld sp, $babd                                  ; $596b: $31 $bd $ba
    sub [hl]                                      ; $596e: $96
    ld sp, hl                                     ; $596f: $f9
    reti                                          ; $5970: $d9


    ret z                                         ; $5971: $c8

    ld a, b                                       ; $5972: $78
    ld [hl], h                                    ; $5973: $74
    ld sp, hl                                     ; $5974: $f9
    inc hl                                        ; $5975: $23
    inc b                                         ; $5976: $04
    rst $20                                       ; $5977: $e7
    ld hl, $86cb                                  ; $5978: $21 $cb $86
    adc [hl]                                      ; $597b: $8e
    add h                                         ; $597c: $84
    ld a, b                                       ; $597d: $78
    dec h                                         ; $597e: $25
    dec e                                         ; $597f: $1d
    dec l                                         ; $5980: $2d

jr_051_5981:
    or l                                          ; $5981: $b5
    sub d                                         ; $5982: $92
    inc e                                         ; $5983: $1c
    cp l                                          ; $5984: $bd
    ld [hl], d                                    ; $5985: $72
    ld e, a                                       ; $5986: $5f
    halt                                          ; $5987: $76
    and $d1                                       ; $5988: $e6 $d1
    ld h, d                                       ; $598a: $62
    ld e, d                                       ; $598b: $5a
    ld l, d                                       ; $598c: $6a
    ld e, d                                       ; $598d: $5a
    push af                                       ; $598e: $f5
    ld [hl], d                                    ; $598f: $72
    add hl, hl                                    ; $5990: $29
    ld e, a                                       ; $5991: $5f
    ld h, $35                                     ; $5992: $26 $35
    ld a, e                                       ; $5994: $7b
    or d                                          ; $5995: $b2
    dec [hl]                                      ; $5996: $35
    ld a, e                                       ; $5997: $7b
    dec d                                         ; $5998: $15
    call c, $c879                                 ; $5999: $dc $79 $c8
    or d                                          ; $599c: $b2
    and c                                         ; $599d: $a1
    db $d3                                        ; $599e: $d3
    xor d                                         ; $599f: $aa
    ld b, a                                       ; $59a0: $47
    ld a, [hl]                                    ; $59a1: $7e
    pop de                                        ; $59a2: $d1
    ld l, $5f                                     ; $59a3: $2e $5f
    cp [hl]                                       ; $59a5: $be
    ld l, d                                       ; $59a6: $6a
    ld e, h                                       ; $59a7: $5c
    ld h, l                                       ; $59a8: $65
    sbc a                                         ; $59a9: $9f
    ld a, [hl]                                    ; $59aa: $7e
    db $ed                                        ; $59ab: $ed
    cp $d5                                        ; $59ac: $fe $d5
    jp $8897                                      ; $59ae: $c3 $97 $88


    adc l                                         ; $59b1: $8d
    ld e, [hl]                                    ; $59b2: $5e
    and $f7                                       ; $59b3: $e6 $f7
    ld a, c                                       ; $59b5: $79

Jump_051_59b6:
    ld d, c                                       ; $59b6: $51
    di                                            ; $59b7: $f3
    ld l, e                                       ; $59b8: $6b
    ld h, a                                       ; $59b9: $67
    ld d, d                                       ; $59ba: $52
    jp c, Jump_051_43f4                           ; $59bb: $da $f4 $43

    cp h                                          ; $59be: $bc
    ld a, h                                       ; $59bf: $7c
    jr c, jr_051_5981                             ; $59c0: $38 $bf

    ld [hl], d                                    ; $59c2: $72
    rra                                           ; $59c3: $1f
    rst $28                                       ; $59c4: $ef
    pop de                                        ; $59c5: $d1
    inc hl                                        ; $59c6: $23
    add [hl]                                      ; $59c7: $86
    jp nc, $df9a                                  ; $59c8: $d2 $9a $df

    rst $38                                       ; $59cb: $ff
    ld b, a                                       ; $59cc: $47
    adc e                                         ; $59cd: $8b
    ld a, b                                       ; $59ce: $78
    ld [$4f44], sp                                ; $59cf: $08 $44 $4f
    call Call_051_41b7                            ; $59d2: $cd $b7 $41
    ld c, l                                       ; $59d5: $4d
    dec sp                                        ; $59d6: $3b
    ld a, e                                       ; $59d7: $7b
    inc b                                         ; $59d8: $04
    rrca                                          ; $59d9: $0f
    push de                                       ; $59da: $d5
    call Call_000_3f62                            ; $59db: $cd $62 $3f
    ret nc                                        ; $59de: $d0

    ld a, h                                       ; $59df: $7c
    rst $08                                       ; $59e0: $cf
    ld h, $4b                                     ; $59e1: $26 $4b
    ld [hl], a                                    ; $59e3: $77
    dec a                                         ; $59e4: $3d
    ld b, d                                       ; $59e5: $42
    adc a                                         ; $59e6: $8f
    dec bc                                        ; $59e7: $0b
    ld c, $74                                     ; $59e8: $0e $74
    ret z                                         ; $59ea: $c8

    ld b, d                                       ; $59eb: $42
    or h                                          ; $59ec: $b4
    ld d, e                                       ; $59ed: $53
    rl l                                          ; $59ee: $cb $15
    dec d                                         ; $59f0: $15
    ld [hl-], a                                   ; $59f1: $32
    ld a, e                                       ; $59f2: $7b
    db $f4                                        ; $59f3: $f4
    jp nc, $bda6                                  ; $59f4: $d2 $a6 $bd

    halt                                          ; $59f7: $76
    db $f4                                        ; $59f8: $f4
    db $ec                                        ; $59f9: $ec
    ret                                           ; $59fa: $c9


    ld b, d                                       ; $59fb: $42
    inc b                                         ; $59fc: $04
    rst $20                                       ; $59fd: $e7
    and l                                         ; $59fe: $a5
    ld a, [c]                                     ; $59ff: $f2
    cp b                                          ; $5a00: $b8
    ld d, e                                       ; $5a01: $53
    adc a                                         ; $5a02: $8f
    ld e, [hl]                                    ; $5a03: $5e
    or l                                          ; $5a04: $b5
    ld [hl], d                                    ; $5a05: $72
    sbc a                                         ; $5a06: $9f
    ld [c], a                                     ; $5a07: $e2
    rst $08                                       ; $5a08: $cf
    or $50                                        ; $5a09: $f6 $50
    db $dd                                        ; $5a0b: $dd
    inc l                                         ; $5a0c: $2c
    cp b                                          ; $5a0d: $b8
    di                                            ; $5a0e: $f3
    ld h, h                                       ; $5a0f: $64
    ld b, a                                       ; $5a10: $47
    cpl                                           ; $5a11: $2f
    rra                                           ; $5a12: $1f
    inc h                                         ; $5a13: $24
    ld a, d                                       ; $5a14: $7a
    sub d                                         ; $5a15: $92
    ret nz                                        ; $5a16: $c0

    add c                                         ; $5a17: $81
    ld c, l                                       ; $5a18: $4d
    ld l, c                                       ; $5a19: $69
    inc hl                                        ; $5a1a: $23
    add [hl]                                      ; $5a1b: $86
    xor $6a                                       ; $5a1c: $ee $6a
    cp h                                          ; $5a1e: $bc
    ld a, [hl-]                                   ; $5a1f: $3a
    db $db                                        ; $5a20: $db
    ld c, l                                       ; $5a21: $4d
    rst $38                                       ; $5a22: $ff
    ld [de], a                                    ; $5a23: $12
    dec sp                                        ; $5a24: $3b
    xor l                                         ; $5a25: $ad
    ld a, d                                       ; $5a26: $7a
    reti                                          ; $5a27: $d9


    sbc c                                         ; $5a28: $99
    ld b, a                                       ; $5a29: $47
    adc e                                         ; $5a2a: $8b
    ld l, c                                       ; $5a2b: $69
    xor c                                         ; $5a2c: $a9
    ld [hl], c                                    ; $5a2d: $71
    pop af                                        ; $5a2e: $f1
    ld hl, $6002                                  ; $5a2f: $21 $02 $60
    sub d                                         ; $5a32: $92
    add hl, hl                                    ; $5a33: $29
    cp [hl]                                       ; $5a34: $be
    and a                                         ; $5a35: $a7
    rst $18                                       ; $5a36: $df
    ld l, c                                       ; $5a37: $69
    ld b, c                                       ; $5a38: $41
    pop hl                                        ; $5a39: $e1
    ld e, $d7                                     ; $5a3a: $1e $d7
    ld a, [c]                                     ; $5a3c: $f2
    rst $20                                       ; $5a3d: $e7
    ld a, e                                       ; $5a3e: $7b
    ld a, d                                       ; $5a3f: $7a
    reti                                          ; $5a40: $d9


    add hl, de                                    ; $5a41: $19
    cp d                                          ; $5a42: $ba
    ld [hl], d                                    ; $5a43: $72
    sbc a                                         ; $5a44: $9f
    dec [hl]                                      ; $5a45: $35
    ld [hl], h                                    ; $5a46: $74
    dec h                                         ; $5a47: $25
    or [hl]                                       ; $5a48: $b6
    ld l, e                                       ; $5a49: $6b
    dec e                                         ; $5a4a: $1d
    or [hl]                                       ; $5a4b: $b6
    ld h, h                                       ; $5a4c: $64
    ld sp, $347b                                  ; $5a4d: $31 $7b $34

Call_051_5a50:
    ld b, h                                       ; $5a50: $44
    rst $20                                       ; $5a51: $e7
    pop hl                                        ; $5a52: $e1
    db $d3                                        ; $5a53: $d3
    xor e                                         ; $5a54: $ab
    rst $20                                       ; $5a55: $e7
    ld c, c                                       ; $5a56: $49
    xor a                                         ; $5a57: $af
    call c, Call_051_50f7                         ; $5a58: $dc $f7 $50
    xor d                                         ; $5a5b: $aa
    xor a                                         ; $5a5c: $af
    sbc l                                         ; $5a5d: $9d
    halt                                          ; $5a5e: $76
    db $dd                                        ; $5a5f: $dd
    set 0, [hl]                                   ; $5a60: $cb $c6
    db $ec                                        ; $5a62: $ec
    ld d, l                                       ; $5a63: $55
    cp e                                          ; $5a64: $bb
    set 0, h                                      ; $5a65: $cb $c4
    xor b                                         ; $5a67: $a8
    db $10                                        ; $5a68: $10
    jr c, jr_051_5a9b                             ; $5a69: $38 $30

    ret                                           ; $5a6b: $c9


    adc [hl]                                      ; $5a6c: $8e
    sbc [hl]                                      ; $5a6d: $9e
    dec c                                         ; $5a6e: $0d
    ld e, a                                       ; $5a6f: $5f
    ld a, [$bec8]                                 ; $5a70: $fa $c8 $be
    ld [hl], d                                    ; $5a73: $72
    sbc a                                         ; $5a74: $9f
    ld c, l                                       ; $5a75: $4d
    and [hl]                                      ; $5a76: $a6
    ld hl, sp+$5e                                 ; $5a77: $f8 $5e
    rla                                           ; $5a79: $17
    xor c                                         ; $5a7a: $a9
    jp hl                                         ; $5a7b: $e9


    add a                                         ; $5a7c: $87

Jump_051_5a7d:
    ld a, [bc]                                    ; $5a7d: $0a
    sbc c                                         ; $5a7e: $99
    rst $18                                       ; $5a7f: $df
    rst $38                                       ; $5a80: $ff
    rlca                                          ; $5a81: $07
    cp h                                          ; $5a82: $bc

jr_051_5a83:
    ld e, c                                       ; $5a83: $59
    inc e                                         ; $5a84: $1c
    ld [hl], a                                    ; $5a85: $77
    push bc                                       ; $5a86: $c5
    sbc d                                         ; $5a87: $9a
    add [hl]                                      ; $5a88: $86
    ld [$ef18], sp                                ; $5a89: $08 $18 $ef
    rst $38                                       ; $5a8c: $ff
    jp hl                                         ; $5a8d: $e9


    ld [hl+], a                                   ; $5a8e: $22
    ld a, c                                       ; $5a8f: $79
    ld a, [hl]                                    ; $5a90: $7e
    rst $38                                       ; $5a91: $ff
    ld e, a                                       ; $5a92: $5f
    ld a, $44                                     ; $5a93: $3e $44
    add l                                         ; $5a95: $85
    inc c                                         ; $5a96: $0c
    rst $20                                       ; $5a97: $e7
    rla                                           ; $5a98: $17
    ld [hl-], a                                   ; $5a99: $32
    push bc                                       ; $5a9a: $c5

jr_051_5a9b:
    adc e                                         ; $5a9b: $8b
    ld a, [hl-]                                   ; $5a9c: $3a
    dec de                                        ; $5a9d: $1b
    jr c, jr_051_5a83                             ; $5a9e: $38 $e3

    ld e, $0d                                     ; $5aa0: $1e $0d
    ld de, $57e7                                  ; $5aa2: $11 $e7 $57
    sub [hl]                                      ; $5aa5: $96
    cp l                                          ; $5aa6: $bd
    adc e                                         ; $5aa7: $8b
    db $e3                                        ; $5aa8: $e3
    adc b                                         ; $5aa9: $88
    and c                                         ; $5aaa: $a1
    inc [hl]                                      ; $5aab: $34
    call nz, $5f46                                ; $5aac: $c4 $46 $5f
    ld d, c                                       ; $5aaf: $51
    dec sp                                        ; $5ab0: $3b
    ld a, d                                       ; $5ab1: $7a
    and l                                         ; $5ab2: $a5
    rst $20                                       ; $5ab3: $e7
    sbc a                                         ; $5ab4: $9f
    ld a, b                                       ; $5ab5: $78
    reti                                          ; $5ab6: $d9


    or e                                          ; $5ab7: $b3
    dec a                                         ; $5ab8: $3d
    ld d, h                                       ; $5ab9: $54
    scf                                           ; $5aba: $37
    dec bc                                        ; $5abb: $0b
    ld c, $38                                     ; $5abc: $0e $38
    ccf                                           ; $5abe: $3f
    ld a, e                                       ; $5abf: $7b
    dec sp                                        ; $5ac0: $3b
    adc b                                         ; $5ac1: $88
    rst $08                                       ; $5ac2: $cf
    rst $28                                       ; $5ac3: $ef
    rst $38                                       ; $5ac4: $ff
    inc bc                                        ; $5ac5: $03
    sbc $2c                                       ; $5ac6: $de $2c
    adc [hl]                                      ; $5ac8: $8e
    cp e                                          ; $5ac9: $bb
    ld h, d                                       ; $5aca: $62
    ld c, l                                       ; $5acb: $4d
    ld b, e                                       ; $5acc: $43
    inc b                                         ; $5acd: $04
    ret nz                                        ; $5ace: $c0

    ei                                            ; $5acf: $fb
    ld h, [hl]                                    ; $5ad0: $66
    ld l, a                                       ; $5ad1: $6f
    sub [hl]                                      ; $5ad2: $96
    inc b                                         ; $5ad3: $04
    ld b, h                                       ; $5ad4: $44
    rrca                                          ; $5ad5: $0f
    push de                                       ; $5ad6: $d5
    call $bf62                                    ; $5ad7: $cd $62 $bf
    and a                                         ; $5ada: $a7
    ld h, l                                       ; $5adb: $65
    and a                                         ; $5adc: $a7
    dec e                                         ; $5add: $1d
    ld h, d                                       ; $5ade: $62
    db $e3                                        ; $5adf: $e3
    ld de, $4f02                                  ; $5ae0: $11 $02 $4f
    call Call_051_41b7                            ; $5ae3: $cd $b7 $41
    ld c, l                                       ; $5ae6: $4d
    ei                                            ; $5ae7: $fb
    adc [hl]                                      ; $5ae8: $8e
    sbc $5d                                       ; $5ae9: $de $5d
    ld h, $46                                     ; $5aeb: $26 $46
    add l                                         ; $5aed: $85
    call z, $b4a4                                 ; $5aee: $cc $a4 $b4
    jp hl                                         ; $5af1: $e9


    add a                                         ; $5af2: $87
    ld a, b                                       ; $5af3: $78
    push af                                       ; $5af4: $f5
    ld [hl], b                                    ; $5af5: $70
    ld a, [hl]                                    ; $5af6: $7e
    push hl                                       ; $5af7: $e5
    ld a, $8e                                     ; $5af8: $3e $8e
    rst $18                                       ; $5afa: $df
    ld a, c                                       ; $5afb: $79
    db $ec                                        ; $5afc: $ec
    jp hl                                         ; $5afd: $e9


    call $f791                                    ; $5afe: $cd $91 $f7
    call nz, $e043                                ; $5b01: $c4 $43 $e0
    ld e, $97                                     ; $5b04: $1e $97
    sbc d                                         ; $5b06: $9a
    or a                                          ; $5b07: $b7
    jp hl                                         ; $5b08: $e9


    sub l                                         ; $5b09: $95
    ei                                            ; $5b0a: $fb
    sbc [hl]                                      ; $5b0b: $9e
    ld c, b                                       ; $5b0c: $48
    pop hl                                        ; $5b0d: $e1
    ld sp, $7aad                                  ; $5b0e: $31 $ad $7a
    sbc c                                         ; $5b11: $99
    db $f4                                        ; $5b12: $f4
    ld b, c                                       ; $5b13: $41
    ld a, l                                       ; $5b14: $7d
    ldh [$93], a                                  ; $5b15: $e0 $93
    db $db                                        ; $5b17: $db
    dec e                                         ; $5b18: $1d
    rst $38                                       ; $5b19: $ff
    cpl                                           ; $5b1a: $2f
    di                                            ; $5b1b: $f3
    dec hl                                        ; $5b1c: $2b
    rst $30                                       ; $5b1d: $f7
    ld l, c                                       ; $5b1e: $69
    dec h                                         ; $5b1f: $25
    res 4, h                                      ; $5b20: $cb $a4
    and [hl]                                      ; $5b22: $a6
    ld sp, $8f8f                                  ; $5b23: $31 $8f $8f
    rst $10                                       ; $5b26: $d7
    inc [hl]                                      ; $5b27: $34
    inc hl                                        ; $5b28: $23
    add [hl]                                      ; $5b29: $86
    ld b, d                                       ; $5b2a: $42
    inc b                                         ; $5b2b: $04
    ld c, a                                       ; $5b2c: $4f
    ld c, $b5                                     ; $5b2d: $0e $b5
    dec hl                                        ; $5b2f: $2b
    ld e, $d3                                     ; $5b30: $1e $d3
    ld c, d                                       ; $5b32: $4a
    ld a, [c]                                     ; $5b33: $f2
    and h                                         ; $5b34: $a4
    xor b                                         ; $5b35: $a8
    or b                                          ; $5b36: $b0
    ld b, a                                       ; $5b37: $47
    jr nz, jr_051_5b7d                            ; $5b38: $20 $43

    cp h                                          ; $5b3a: $bc
    sub d                                         ; $5b3b: $92
    ld c, $19                                     ; $5b3c: $0e $19
    or b                                          ; $5b3e: $b0
    db $db                                        ; $5b3f: $db
    ld hl, $626c                                  ; $5b40: $21 $6c $62
    ld a, l                                       ; $5b43: $7d
    ld e, b                                       ; $5b44: $58
    ld e, e                                       ; $5b45: $5b
    ld [hl], $46                                  ; $5b46: $36 $46
    xor a                                         ; $5b48: $af
    ld a, [hl-]                                   ; $5b49: $3a
    dec de                                        ; $5b4a: $1b
    dec c                                         ; $5b4b: $0d
    sbc c                                         ; $5b4c: $99
    adc l                                         ; $5b4d: $8d
    sub l                                         ; $5b4e: $95
    ret c                                         ; $5b4f: $d8

    xor [hl]                                      ; $5b50: $ae
    sub c                                         ; $5b51: $91
    db $10                                        ; $5b52: $10
    xor a                                         ; $5b53: $af
    and h                                         ; $5b54: $a4
    and e                                         ; $5b55: $a3
    and l                                         ; $5b56: $a5
    and $6d                                       ; $5b57: $e6 $6d
    ld a, d                                       ; $5b59: $7a
    push hl                                       ; $5b5a: $e5
    cp [hl]                                       ; $5b5b: $be
    and a                                         ; $5b5c: $a7
    and $db                                       ; $5b5d: $e6 $db
    and b                                         ; $5b5f: $a0
    and [hl]                                      ; $5b60: $a6
    ld a, l                                       ; $5b61: $7d
    call nz, $1a50                                ; $5b62: $c4 $50 $1a
    cp l                                          ; $5b65: $bd
    ld [hl], d                                    ; $5b66: $72
    sbc a                                         ; $5b67: $9f
    dec a                                         ; $5b68: $3d
    reti                                          ; $5b69: $d9


    ld a, [de]                                    ; $5b6a: $1a
    cp l                                          ; $5b6b: $bd
    ld a, [bc]                                    ; $5b6c: $0a
    xor $3c                                       ; $5b6d: $ee $3c
    ld a, h                                       ; $5b6f: $7c
    reti                                          ; $5b70: $d9


    ld sp, hl                                     ; $5b71: $f9
    ld e, [hl]                                    ; $5b72: $5e
    ld h, $7d                                     ; $5b73: $26 $7d
    push af                                       ; $5b75: $f5
    ldh a, [$dd]                                  ; $5b76: $f0 $dd
    ld h, l                                       ; $5b78: $65
    ld h, a                                       ; $5b79: $67
    ld e, $2d                                     ; $5b7a: $1e $2d
    and [hl]                                      ; $5b7c: $a6

jr_051_5b7d:
    and l                                         ; $5b7d: $a5
    jr nz, jr_051_5b82                            ; $5b7e: $20 $02

    rrca                                          ; $5b80: $0f
    dec h                                         ; $5b81: $25

jr_051_5b82:
    di                                            ; $5b82: $f3
    ld [$9c99], a                                 ; $5b83: $ea $99 $9c
    ld d, a                                       ; $5b86: $57
    rst $38                                       ; $5b87: $ff
    ld e, a                                       ; $5b88: $5f
    call Call_000_33e0                            ; $5b89: $cd $e0 $33
    ld [hl], h                                    ; $5b8c: $74
    ld [hl], $19                                  ; $5b8d: $36 $19
    ld h, a                                       ; $5b8f: $67
    jp c, $e1f3                                   ; $5b90: $da $f3 $e1

    ld e, $bd                                     ; $5b93: $1e $bd
    ld a, h                                       ; $5b95: $7c
    xor b                                         ; $5b96: $a8
    sbc d                                         ; $5b97: $9a
    ld d, [hl]                                    ; $5b98: $56
    sub d                                         ; $5b99: $92
    daa                                           ; $5b9a: $27
    ld b, l                                       ; $5b9b: $45
    add l                                         ; $5b9c: $85
    dec a                                         ; $5b9d: $3d
    ld [bc], a                                    ; $5b9e: $02
    rrca                                          ; $5b9f: $0f
    push de                                       ; $5ba0: $d5
    call $1b3a                                    ; $5ba1: $cd $3a $1b
    or e                                          ; $5ba4: $b3
    call nc, $eab4                                ; $5ba5: $d4 $b4 $ea
    ld l, c                                       ; $5ba8: $69
    and a                                         ; $5ba9: $a7
    or $95                                        ; $5baa: $f6 $95
    ei                                            ; $5bac: $fb
    sbc [hl]                                      ; $5bad: $9e
    sbc d                                         ; $5bae: $9a
    ld l, a                                       ; $5baf: $6f
    add e                                         ; $5bb0: $83
    sbc d                                         ; $5bb1: $9a
    or $1d                                        ; $5bb2: $f6 $1d
    cp l                                          ; $5bb4: $bd
    ld a, $ac                                     ; $5bb5: $3e $ac
    dec e                                         ; $5bb7: $1d
    ld [hl], a                                    ; $5bb8: $77
    ld [$279d], a                                 ; $5bb9: $ea $9d $27
    inc [hl]                                      ; $5bbc: $34
    db $fd                                        ; $5bbd: $fd
    jp Jump_000_0e9a                              ; $5bbe: $c3 $9a $0e


    cp b                                          ; $5bc1: $b8
    daa                                           ; $5bc2: $27
    db $fc                                        ; $5bc3: $fc
    cp $21                                        ; $5bc4: $fe $21
    ld a, [hl+]                                   ; $5bc6: $2a
    and [hl]                                      ; $5bc7: $a6
    sub l                                         ; $5bc8: $95
    adc h                                         ; $5bc9: $8c
    cp e                                          ; $5bca: $bb
    ld [hl+], a                                   ; $5bcb: $22
    ld a, c                                       ; $5bcc: $79
    ld [hl], a                                    ; $5bcd: $77
    ld [hl], d                                    ; $5bce: $72
    or h                                          ; $5bcf: $b4
    ld d, $1e                                     ; $5bd0: $16 $1e
    or d                                          ; $5bd2: $b2
    and e                                         ; $5bd3: $a3
    ld h, a                                       ; $5bd4: $67
    sub e                                         ; $5bd5: $93
    push hl                                       ; $5bd6: $e5
    add e                                         ; $5bd7: $83
    ld b, h                                       ; $5bd8: $44
    jp $4981                                      ; $5bd9: $c3 $81 $49


    sub [hl]                                      ; $5bdc: $96
    ld [hl], $6d                                  ; $5bdd: $36 $6d
    ld h, e                                       ; $5bdf: $63
    ld a, [$365d]                                 ; $5be0: $fa $5d $36
    ld a, d                                       ; $5be3: $7a
    db $ed                                        ; $5be4: $ed
    ld e, a                                       ; $5be5: $5f
    rrca                                          ; $5be6: $0f
    adc b                                         ; $5be7: $88
    nop                                           ; $5be8: $00
    and b                                         ; $5be9: $a0
    xor a                                         ; $5bea: $af
    call z, $9664                                 ; $5beb: $cc $64 $96
    db $fc                                        ; $5bee: $fc
    xor e                                         ; $5bef: $ab
    or h                                          ; $5bf0: $b4
    ldh a, [$4c]                                  ; $5bf1: $f0 $4c
    ld c, e                                       ; $5bf3: $4b
    inc a                                         ; $5bf4: $3c
    ld a, $84                                     ; $5bf5: $3e $84
    ret nc                                        ; $5bf7: $d0

    add [hl]                                      ; $5bf8: $86
    db $ec                                        ; $5bf9: $ec
    add sp, -$07                                  ; $5bfa: $e8 $f9
    db $fd                                        ; $5bfc: $fd
    ccf                                           ; $5bfd: $3f
    ld e, l                                       ; $5bfe: $5d
    and h                                         ; $5bff: $a4
    ret c                                         ; $5c00: $d8

    rrca                                          ; $5c01: $0f
    ld l, h                                       ; $5c02: $6c
    ld c, d                                       ; $5c03: $4a
    sbc e                                         ; $5c04: $9b
    dec c                                         ; $5c05: $0d
    rst $18                                       ; $5c06: $df
    cp a                                          ; $5c07: $bf
    ld c, d                                       ; $5c08: $4a
    ld b, l                                       ; $5c09: $45
    cpl                                           ; $5c0a: $2f
    ld h, h                                       ; $5c0b: $64
    cp a                                          ; $5c0c: $bf
    ld [hl], b                                    ; $5c0d: $70
    ld a, h                                       ; $5c0e: $7c
    jp c, $10d1                                   ; $5c0f: $da $d1 $10

    ld bc, $4ec0                                  ; $5c12: $01 $c0 $4e
    cp l                                          ; $5c15: $bd
    ld a, [$16bf]                                 ; $5c16: $fa $bf $16
    ld a, d                                       ; $5c19: $7a
    adc b                                         ; $5c1a: $88
    daa                                           ; $5c1b: $27
    push af                                       ; $5c1c: $f5
    xor a                                         ; $5c1d: $af
    add a                                         ; $5c1e: $87
    ld b, a                                       ; $5c1f: $47
    ld b, e                                       ; $5c20: $43
    inc b                                         ; $5c21: $04
    rrca                                          ; $5c22: $0f
    rst $10                                       ; $5c23: $d7
    cp l                                          ; $5c24: $bd
    or $50                                        ; $5c25: $f6 $50
    xor d                                         ; $5c27: $aa
    xor a                                         ; $5c28: $af
    db $dd                                        ; $5c29: $dd
    dec e                                         ; $5c2a: $1d
    ldh a, [$be]                                  ; $5c2b: $f0 $be
    and d                                         ; $5c2d: $a2
    adc h                                         ; $5c2e: $8c
    ld a, e                                       ; $5c2f: $7b
    ld e, [hl]                                    ; $5c30: $5e
    adc b                                         ; $5c31: $88
    rst $30                                       ; $5c32: $f7
    inc sp                                        ; $5c33: $33
    ld e, d                                       ; $5c34: $5a
    db $fd                                        ; $5c35: $fd
    rrca                                          ; $5c36: $0f
    ld de, $4f20                                  ; $5c37: $11 $20 $4f
    ld hl, sp+$12                                 ; $5c3a: $f8 $12
    rst $28                                       ; $5c3c: $ef
    inc h                                         ; $5c3d: $24
    cp e                                          ; $5c3e: $bb
    ld e, h                                       ; $5c3f: $5c
    ld d, c                                       ; $5c40: $51
    db $10                                        ; $5c41: $10
    ld bc, $ff20                                  ; $5c42: $01 $20 $ff
    push de                                       ; $5c45: $d5
    add a                                         ; $5c46: $87
    di                                            ; $5c47: $f3
    ld [hl], e                                    ; $5c48: $73
    ld e, [hl]                                    ; $5c49: $5e
    add l                                         ; $5c4a: $85
    ld b, e                                       ; $5c4b: $43
    inc b                                         ; $5c4c: $04
    rrca                                          ; $5c4d: $0f
    rst $10                                       ; $5c4e: $d7
    cp l                                          ; $5c4f: $bd
    add [hl]                                      ; $5c50: $86
    pop bc                                        ; $5c51: $c1
    ret z                                         ; $5c52: $c8

    ld [hl], b                                    ; $5c53: $70
    ld a, [hl]                                    ; $5c54: $7e
    adc $ab                                       ; $5c55: $ce $ab
    ld [hl], b                                    ; $5c57: $70
    adc b                                         ; $5c58: $88
    nop                                           ; $5c59: $00
    jr jr_051_5cc7                                ; $5c5a: $18 $6b

    or $aa                                        ; $5c5c: $f6 $aa
    sbc l                                         ; $5c5e: $9d
    db $f4                                        ; $5c5f: $f4
    add sp, $65                                   ; $5c60: $e8 $65
    and $49                                       ; $5c62: $e6 $49
    db $10                                        ; $5c64: $10
    jr jr_051_5cd2                                ; $5c65: $18 $6b

    or $aa                                        ; $5c67: $f6 $aa
    ld sp, hl                                     ; $5c69: $f9
    db $fd                                        ; $5c6a: $fd
    ld a, a                                       ; $5c6b: $7f
    rrca                                          ; $5c6c: $0f
    ld b, [hl]                                    ; $5c6d: $46
    ld sp, $f6aa                                  ; $5c6e: $31 $aa $f6
    inc c                                         ; $5c71: $0c
    ld de, $ff80                                  ; $5c72: $11 $80 $ff
    ld e, l                                       ; $5c75: $5d
    ld [hl], $ed                                  ; $5c76: $36 $ed
    pop de                                        ; $5c78: $d1
    ld h, l                                       ; $5c79: $65
    ld hl, $0f02                                  ; $5c7a: $21 $02 $0f
    rst $10                                       ; $5c7d: $d7
    cp l                                          ; $5c7e: $bd
    sub [hl]                                      ; $5c7f: $96
    adc l                                         ; $5c80: $8d
    sbc [hl]                                      ; $5c81: $9e
    db $eb                                        ; $5c82: $eb
    add a                                         ; $5c83: $87
    ld b, b                                       ; $5c84: $40
    inc b                                         ; $5c85: $04
    jr jr_051_5cf3                                ; $5c86: $18 $6b

    or $aa                                        ; $5c88: $f6 $aa
    ld sp, hl                                     ; $5c8a: $f9
    db $fd                                        ; $5c8b: $fd
    ld a, a                                       ; $5c8c: $7f

Call_051_5c8d:
    sbc $e6                                       ; $5c8d: $de $e6
    ld a, a                                       ; $5c8f: $7f
    db $db                                        ; $5c90: $db
    xor h                                         ; $5c91: $ac
    inc d                                         ; $5c92: $14
    ret                                           ; $5c93: $c9


    ccf                                           ; $5c94: $3f
    adc b                                         ; $5c95: $88
    ld e, a                                       ; $5c96: $5f
    inc hl                                        ; $5c97: $23
    ld hl, $0110                                  ; $5c98: $21 $10 $01
    rrca                                          ; $5c9b: $0f
    rst $10                                       ; $5c9c: $d7
    cp l                                          ; $5c9d: $bd
    halt                                          ; $5c9e: $76
    ld b, l                                       ; $5c9f: $45
    ld [hl], l                                    ; $5ca0: $75
    ret c                                         ; $5ca1: $d8

    dec de                                        ; $5ca2: $1b
    sub d                                         ; $5ca3: $92
    and e                                         ; $5ca4: $a3
    rst $00                                       ; $5ca5: $c7
    ei                                            ; $5ca6: $fb
    sbc [hl]                                      ; $5ca7: $9e
    ld c, b                                       ; $5ca8: $48
    pop hl                                        ; $5ca9: $e1
    ld bc, $4311                                  ; $5caa: $01 $11 $43
    ret nz                                        ; $5cad: $c0

    ld a, b                                       ; $5cae: $78
    ld d, c                                       ; $5caf: $51
    dec [hl]                                      ; $5cb0: $35
    dec de                                        ; $5cb1: $1b
    or d                                          ; $5cb2: $b2
    ld a, a                                       ; $5cb3: $7f
    ld a, a                                       ; $5cb4: $7f
    adc l                                         ; $5cb5: $8d
    sub h                                         ; $5cb6: $94
    ld e, h                                       ; $5cb7: $5c
    add hl, bc                                    ; $5cb8: $09
    add c                                         ; $5cb9: $81
    ld [$d70f], sp                                ; $5cba: $08 $0f $d7
    cp l                                          ; $5cbd: $bd
    or $f6                                        ; $5cbe: $f6 $f6
    ld c, [hl]                                    ; $5cc0: $4e
    db $ed                                        ; $5cc1: $ed
    pop de                                        ; $5cc2: $d1
    di                                            ; $5cc3: $f3
    ei                                            ; $5cc4: $fb
    rst $38                                       ; $5cc5: $ff
    ld c, [hl]                                    ; $5cc6: $4e

jr_051_5cc7:
    db $ed                                        ; $5cc7: $ed
    rst $38                                       ; $5cc8: $ff
    add sp, $12                                   ; $5cc9: $e8 $12
    adc b                                         ; $5ccb: $88
    nop                                           ; $5ccc: $00
    rrca                                          ; $5ccd: $0f
    rst $10                                       ; $5cce: $d7
    cp l                                          ; $5ccf: $bd
    or $f6                                        ; $5cd0: $f6 $f6

jr_051_5cd2:
    ld c, [hl]                                    ; $5cd2: $4e
    db $ed                                        ; $5cd3: $ed
    pop de                                        ; $5cd4: $d1
    di                                            ; $5cd5: $f3
    ei                                            ; $5cd6: $fb
    rst $38                                       ; $5cd7: $ff
    ld c, [hl]                                    ; $5cd8: $4e
    db $ed                                        ; $5cd9: $ed
    rst $38                                       ; $5cda: $ff
    add sp, $12                                   ; $5cdb: $e8 $12
    adc b                                         ; $5cdd: $88
    nop                                           ; $5cde: $00
    ld b, e                                       ; $5cdf: $43
    ld b, e                                       ; $5ce0: $43
    rrca                                          ; $5ce1: $0f
    rst $10                                       ; $5ce2: $d7
    cp l                                          ; $5ce3: $bd
    sub [hl]                                      ; $5ce4: $96
    push af                                       ; $5ce5: $f5
    ld l, d                                       ; $5ce6: $6a
    daa                                           ; $5ce7: $27
    ld b, [hl]                                    ; $5ce8: $46
    or d                                          ; $5ce9: $b2
    rst $38                                       ; $5cea: $ff
    jr nz, jr_051_5d6b                            ; $5ceb: $20 $7e

    adc l                                         ; $5ced: $8d
    add h                                         ; $5cee: $84
    ld b, b                                       ; $5cef: $40
    inc b                                         ; $5cf0: $04
    add b                                         ; $5cf1: $80
    adc l                                         ; $5cf2: $8d

jr_051_5cf3:
    rst $10                                       ; $5cf3: $d7
    db $ec                                        ; $5cf4: $ec
    sub l                                         ; $5cf5: $95
    ld [hl], c                                    ; $5cf6: $71
    and a                                         ; $5cf7: $a7
    ld c, [hl]                                    ; $5cf8: $4e
    sub a                                         ; $5cf9: $97
    ld c, b                                       ; $5cfa: $48
    db $fc                                        ; $5cfb: $fc
    inc e                                         ; $5cfc: $1c
    db $10                                        ; $5cfd: $10
    ld bc, $1843                                  ; $5cfe: $01 $43 $18
    ld l, e                                       ; $5d01: $6b
    and b                                         ; $5d02: $a0
    xor a                                         ; $5d03: $af
    ld c, b                                       ; $5d04: $48
    xor [hl]                                      ; $5d05: $ae
    rst $38                                       ; $5d06: $ff
    dec a                                         ; $5d07: $3d
    inc b                                         ; $5d08: $04
    ld [hl+], a                                   ; $5d09: $22
    ld b, e                                       ; $5d0a: $43
    ld b, e                                       ; $5d0b: $43
    ret nz                                        ; $5d0c: $c0

    ld sp, hl                                     ; $5d0d: $f9
    ld sp, hl                                     ; $5d0e: $f9
    db $fd                                        ; $5d0f: $fd
    ld a, a                                       ; $5d10: $7f
    jp c, $6ecd                                   ; $5d11: $da $cd $6e

    ld a, [$0fc6]                                 ; $5d14: $fa $c6 $0f
    ld [c], a                                     ; $5d17: $e2
    rst $10                                       ; $5d18: $d7
    ld c, b                                       ; $5d19: $48
    ld [$0f44], sp                                ; $5d1a: $08 $44 $0f
    rst $10                                       ; $5d1d: $d7
    cp l                                          ; $5d1e: $bd
    ld b, $f2                                     ; $5d1f: $06 $f2
    ld [hl], $09                                  ; $5d21: $36 $09
    ld h, d                                       ; $5d23: $62
    jp c, $21c3                                   ; $5d24: $da $c3 $21

    ld [bc], a                                    ; $5d27: $02
    rrca                                          ; $5d28: $0f
    rst $10                                       ; $5d29: $d7
    cp l                                          ; $5d2a: $bd
    ld b, $f2                                     ; $5d2b: $06 $f2
    ld [hl], $09                                  ; $5d2d: $36 $09
    ld h, d                                       ; $5d2f: $62
    jp c, $21c3                                   ; $5d30: $da $c3 $21

    ld [bc], a                                    ; $5d33: $02
    ld b, e                                       ; $5d34: $43
    ld b, e                                       ; $5d35: $43
    ld b, e                                       ; $5d36: $43
    ret nz                                        ; $5d37: $c0

    ld sp, hl                                     ; $5d38: $f9
    ld sp, hl                                     ; $5d39: $f9
    db $fd                                        ; $5d3a: $fd
    ld a, a                                       ; $5d3b: $7f
    jp c, $6ecd                                   ; $5d3c: $da $cd $6e

    ld a, [$0fc6]                                 ; $5d3f: $fa $c6 $0f
    ld [c], a                                     ; $5d42: $e2
    rst $10                                       ; $5d43: $d7
    ld c, b                                       ; $5d44: $48
    ld [$4344], sp                                ; $5d45: $08 $44 $43
    ld b, e                                       ; $5d48: $43
    ld b, e                                       ; $5d49: $43
    ld b, e                                       ; $5d4a: $43
    ld b, e                                       ; $5d4b: $43
    ld b, e                                       ; $5d4c: $43
    ld b, e                                       ; $5d4d: $43
    ld b, e                                       ; $5d4e: $43
    and b                                         ; $5d4f: $a0
    ld c, a                                       ; $5d50: $4f
    cp [hl]                                       ; $5d51: $be
    di                                            ; $5d52: $f3
    xor [hl]                                      ; $5d53: $ae
    sub h                                         ; $5d54: $94
    add c                                         ; $5d55: $81
    ld [$f9c0], sp                                ; $5d56: $08 $c0 $f9
    ld sp, hl                                     ; $5d59: $f9
    db $fd                                        ; $5d5a: $fd
    ld a, a                                       ; $5d5b: $7f
    sbc $86                                       ; $5d5c: $de $86
    ld a, e                                       ; $5d5e: $7b
    and [hl]                                      ; $5d5f: $a6
    inc de                                        ; $5d60: $13
    ld c, d                                       ; $5d61: $4a
    jp Jump_000_0221                              ; $5d62: $c3 $21 $02


    ret nz                                        ; $5d65: $c0

    ld sp, hl                                     ; $5d66: $f9
    ld sp, hl                                     ; $5d67: $f9
    db $fd                                        ; $5d68: $fd
    ccf                                           ; $5d69: $3f
    ld e, l                                       ; $5d6a: $5d

jr_051_5d6b:
    and h                                         ; $5d6b: $a4
    and $f7                                       ; $5d6c: $e6 $f7
    rst $38                                       ; $5d6e: $ff
    ld bc, $166f                                  ; $5d6f: $01 $6f $16
    rst $00                                       ; $5d72: $c7
    ld e, l                                       ; $5d73: $5d
    or c                                          ; $5d74: $b1
    and [hl]                                      ; $5d75: $a6
    ld hl, $4302                                  ; $5d76: $21 $02 $43
    ld b, e                                       ; $5d79: $43
    ld b, e                                       ; $5d7a: $43
    ld b, e                                       ; $5d7b: $43
    ld b, e                                       ; $5d7c: $43
    ld b, e                                       ; $5d7d: $43
    ld b, e                                       ; $5d7e: $43
    ld b, e                                       ; $5d7f: $43
    ld b, e                                       ; $5d80: $43
    ld b, e                                       ; $5d81: $43
    ld c, a                                       ; $5d82: $4f
    ld hl, sp-$52                                 ; $5d83: $f8 $ae
    dec a                                         ; $5d85: $3d
    ld b, h                                       ; $5d86: $44
    db $d3                                        ; $5d87: $d3
    ld l, e                                       ; $5d88: $6b
    inc h                                         ; $5d89: $24
    jr nz, jr_051_5d8e                            ; $5d8a: $20 $02

    jr jr_051_5d9c                                ; $5d8c: $18 $0e

jr_051_5d8e:
    ld l, e                                       ; $5d8e: $6b
    ld l, e                                       ; $5d8f: $6b
    rrca                                          ; $5d90: $0f
    pop de                                        ; $5d91: $d1
    db $f4                                        ; $5d92: $f4
    ld a, [de]                                    ; $5d93: $1a
    adc c                                         ; $5d94: $89
    ld [hl], c                                    ; $5d95: $71
    call $bccb                                    ; $5d96: $cd $cb $bc
    call $e1ff                                    ; $5d99: $cd $ff $e1

jr_051_5d9c:
    db $10                                        ; $5d9c: $10
    ld bc, $f9c0                                  ; $5d9d: $01 $c0 $f9
    ld sp, hl                                     ; $5da0: $f9
    db $fd                                        ; $5da1: $fd
    ld a, a                                       ; $5da2: $7f
    rrca                                          ; $5da3: $0f
    and l                                         ; $5da4: $a5
    ld a, [$bcda]                                 ; $5da5: $fa $da $bc
    db $ec                                        ; $5da8: $ec
    adc c                                         ; $5da9: $89
    ld a, [hl+]                                   ; $5daa: $2a
    adc b                                         ; $5dab: $88
    nop                                           ; $5dac: $00
    ret nz                                        ; $5dad: $c0

    ld sp, hl                                     ; $5dae: $f9
    ld sp, hl                                     ; $5daf: $f9
    db $fd                                        ; $5db0: $fd
    ld a, a                                       ; $5db1: $7f
    ret nz                                        ; $5db2: $c0

    sbc e                                         ; $5db3: $9b
    push bc                                       ; $5db4: $c5
    ld [hl], c                                    ; $5db5: $71
    ld d, a                                       ; $5db6: $57
    xor h                                         ; $5db7: $ac
    ld l, c                                       ; $5db8: $69
    adc b                                         ; $5db9: $88
    nop                                           ; $5dba: $00
    jr jr_051_5e28                                ; $5dbb: $18 $6b

    ld b, c                                       ; $5dbd: $41
    adc l                                         ; $5dbe: $8d
    adc a                                         ; $5dbf: $8f
    sbc c                                         ; $5dc0: $99
    ld a, h                                       ; $5dc1: $7c
    ld a, [c]                                     ; $5dc2: $f2
    dec bc                                        ; $5dc3: $0b
    rst $00                                       ; $5dc4: $c7
    xor e                                         ; $5dc5: $ab

jr_051_5dc6:
    ld de, $9c98                                  ; $5dc6: $11 $98 $9c
    inc sp                                        ; $5dc9: $33
    sbc l                                         ; $5dca: $9d
    ld c, c                                       ; $5dcb: $49
    dec l                                         ; $5dcc: $2d
    inc de                                        ; $5dcd: $13
    di                                            ; $5dce: $f3
    ld c, e                                       ; $5dcf: $4b
    ld h, [hl]                                    ; $5dd0: $66
    ld [hl-], a                                   ; $5dd1: $32
    ld c, e                                       ; $5dd2: $4b
    cp $55                                        ; $5dd3: $fe $55
    db $10                                        ; $5dd5: $10
    ld bc, $4f43                                  ; $5dd6: $01 $43 $4f
    add sp, -$0b                                  ; $5dd9: $e8 $f5
    ld [hl], c                                    ; $5ddb: $71
    call $d2cb                                    ; $5ddc: $cd $cb $d2
    scf                                           ; $5ddf: $37
    db $fd                                        ; $5de0: $fd
    xor a                                         ; $5de1: $af
    pop af                                        ; $5de2: $f1
    jr nz, jr_051_5dc6                            ; $5de3: $20 $e1

    db $10                                        ; $5de5: $10
    ld bc, $0f43                                  ; $5de6: $01 $43 $0f
    rst $10                                       ; $5de9: $d7
    cp l                                          ; $5dea: $bd
    ld b, $b4                                     ; $5deb: $06 $b4
    ld l, a                                       ; $5ded: $6f
    ld c, $fb                                     ; $5dee: $0e $fb
    ld [hl], d                                    ; $5df0: $72
    add $43                                       ; $5df1: $c6 $43
    push bc                                       ; $5df3: $c5
    rla                                           ; $5df4: $17
    adc b                                         ; $5df5: $88
    nop                                           ; $5df6: $00
    ld b, e                                       ; $5df7: $43
    ret nz                                        ; $5df8: $c0

    ld hl, sp+$09                                 ; $5df9: $f8 $09
    dec hl                                        ; $5dfb: $2b
    rst $08                                       ; $5dfc: $cf
    ret nc                                        ; $5dfd: $d0

    add c                                         ; $5dfe: $81
    ld sp, $8e9d                                  ; $5dff: $31 $9d $8e
    halt                                          ; $5e02: $76
    adc b                                         ; $5e03: $88
    nop                                           ; $5e04: $00
    ld b, e                                       ; $5e05: $43
    rrca                                          ; $5e06: $0f
    rst $10                                       ; $5e07: $d7
    cp l                                          ; $5e08: $bd
    ld b, [hl]                                    ; $5e09: $46
    ld e, b                                       ; $5e0a: $58
    add hl, hl                                    ; $5e0b: $29
    ld a, [c]                                     ; $5e0c: $f2
    xor a                                         ; $5e0d: $af
    xor b                                         ; $5e0e: $a8
    ld [$fdf9], a                                 ; $5e0f: $ea $f9 $fd
    ld a, a                                       ; $5e12: $7f
    ld h, b                                       ; $5e13: $60
    ld c, h                                       ; $5e14: $4c
    and a                                         ; $5e15: $a7
    and e                                         ; $5e16: $a3
    dec e                                         ; $5e17: $1d
    ld [hl+], a                                   ; $5e18: $22
    adc a                                         ; $5e19: $8f
    ld c, e                                       ; $5e1a: $4b
    push de                                       ; $5e1b: $d5
    ret nz                                        ; $5e1c: $c0

    sbc b                                         ; $5e1d: $98
    ld c, [hl]                                    ; $5e1e: $4e
    ld b, a                                       ; $5e1f: $47
    dec sp                                        ; $5e20: $3b
    ld b, h                                       ; $5e21: $44
    jr @+$6d                                      ; $5e22: $18 $6b

    ld h, b                                       ; $5e24: $60
    ld c, h                                       ; $5e25: $4c
    and a                                         ; $5e26: $a7
    and e                                         ; $5e27: $a3

jr_051_5e28:
    ld a, l                                       ; $5e28: $7d
    ld a, [hl]                                    ; $5e29: $7e
    rst $38                                       ; $5e2a: $ff
    ld e, a                                       ; $5e2b: $5f
    ld h, l                                       ; $5e2c: $65
    ld l, a                                       ; $5e2d: $6f
    inc hl                                        ; $5e2e: $23
    add [hl]                                      ; $5e2f: $86
    ld e, [hl]                                    ; $5e30: $5e
    scf                                           ; $5e31: $37
    dec l                                         ; $5e32: $2d
    pop hl                                        ; $5e33: $e1
    db $10                                        ; $5e34: $10
    ld bc, $ff80                                  ; $5e35: $01 $80 $ff
    dec e                                         ; $5e38: $1d
    rst $00                                       ; $5e39: $c7
    adc e                                         ; $5e3a: $8b
    ld a, [hl+]                                   ; $5e3b: $2a
    cp e                                          ; $5e3c: $bb
    jp nc, $ec07                                  ; $5e3d: $d2 $07 $ec

    cp $94                                        ; $5e40: $fe $94
    ld b, $11                                     ; $5e42: $06 $11
    rrca                                          ; $5e44: $0f
    rst $10                                       ; $5e45: $d7
    cp l                                          ; $5e46: $bd
    ld h, [hl]                                    ; $5e47: $66
    ld b, e                                       ; $5e48: $43
    sub [hl]                                      ; $5e49: $96
    ld c, c                                       ; $5e4a: $49
    reti                                          ; $5e4b: $d9


    or d                                          ; $5e4c: $b2
    or c                                          ; $5e4d: $b1
    db $10                                        ; $5e4e: $10
    db $ed                                        ; $5e4f: $ed
    call nc, $4572                                ; $5e50: $d4 $72 $45
    add l                                         ; $5e53: $85
    ld b, b                                       ; $5e54: $40
    inc b                                         ; $5e55: $04
    ld b, e                                       ; $5e56: $43
    ld b, e                                       ; $5e57: $43
    ld b, e                                       ; $5e58: $43
    ld b, e                                       ; $5e59: $43
    ret nz                                        ; $5e5a: $c0

    ld sp, hl                                     ; $5e5b: $f9
    ld sp, hl                                     ; $5e5c: $f9
    db $fd                                        ; $5e5d: $fd
    ld a, a                                       ; $5e5e: $7f
    call c, $d3a9                                 ; $5e5f: $dc $a9 $d3
    call z, Call_051_4ac4                         ; $5e62: $cc $c4 $4a
    adc l                                         ; $5e65: $8d
    sbc b                                         ; $5e66: $98
    xor $6b                                       ; $5e67: $ee $6b
    ld c, l                                       ; $5e69: $4d
    add a                                         ; $5e6a: $87
    ld b, b                                       ; $5e6b: $40
    inc b                                         ; $5e6c: $04
    add b                                         ; $5e6d: $80
    inc hl                                        ; $5e6e: $23
    add a                                         ; $5e6f: $87
    ld [$39da], a                                 ; $5e70: $ea $da $39
    di                                            ; $5e73: $f3
    ret nc                                        ; $5e74: $d0

    sub e                                         ; $5e75: $93
    rra                                           ; $5e76: $1f
    sub d                                         ; $5e77: $92
    sub a                                         ; $5e78: $97
    and l                                         ; $5e79: $a5
    cp d                                          ; $5e7a: $ba
    jr nz, jr_051_5e7f                            ; $5e7b: $20 $02

    rrca                                          ; $5e7d: $0f
    rst $10                                       ; $5e7e: $d7

jr_051_5e7f:
    cp l                                          ; $5e7f: $bd
    ld h, [hl]                                    ; $5e80: $66
    ld b, e                                       ; $5e81: $43
    add $7d                                       ; $5e82: $c6 $7d
    sub [hl]                                      ; $5e84: $96
    ld a, [hl+]                                   ; $5e85: $2a
    or c                                          ; $5e86: $b1
    ld sp, $a561                                  ; $5e87: $31 $61 $a5
    ld c, b                                       ; $5e8a: $48
    ld a, h                                       ; $5e8b: $7c

jr_051_5e8c:
    add c                                         ; $5e8c: $81
    ld [$2380], sp                                ; $5e8d: $08 $80 $23
    add a                                         ; $5e90: $87
    ld [$4e5a], a                                 ; $5e91: $ea $5a $4e
    ld l, c                                       ; $5e94: $69
    sub l                                         ; $5e95: $95
    ld [hl+], a                                   ; $5e96: $22
    jr c, jr_051_5e8c                             ; $5e97: $38 $f3

    ret z                                         ; $5e99: $c8

    pop de                                        ; $5e9a: $d1
    ld d, d                                       ; $5e9b: $52
    db $10                                        ; $5e9c: $10
    ld bc, $4ea0                                  ; $5e9d: $01 $a0 $4e
    ld a, c                                       ; $5ea0: $79
    sbc $e6                                       ; $5ea1: $de $e6
    ld a, a                                       ; $5ea3: $7f
    db $db                                        ; $5ea4: $db
    xor h                                         ; $5ea5: $ac
    inc d                                         ; $5ea6: $14

Jump_051_5ea7:
    ret                                           ; $5ea7: $c9


    ld a, b                                       ; $5ea8: $78
    sub d                                         ; $5ea9: $92
    di                                            ; $5eaa: $f3
    rrca                                          ; $5eab: $0f
    add a                                         ; $5eac: $87
    ld [$4ea0], sp                                ; $5ead: $08 $a0 $4e
    ld a, c                                       ; $5eb0: $79
    sbc $e6                                       ; $5eb1: $de $e6
    ld a, a                                       ; $5eb3: $7f
    db $db                                        ; $5eb4: $db
    xor h                                         ; $5eb5: $ac
    inc d                                         ; $5eb6: $14
    ret                                           ; $5eb7: $c9


    ld a, b                                       ; $5eb8: $78
    sub d                                         ; $5eb9: $92
    di                                            ; $5eba: $f3
    rrca                                          ; $5ebb: $0f
    add a                                         ; $5ebc: $87
    ld [$d70f], sp                                ; $5ebd: $08 $0f $d7
    cp l                                          ; $5ec0: $bd
    halt                                          ; $5ec1: $76
    ld e, $7b                                     ; $5ec2: $1e $7b
    ld a, d                                       ; $5ec4: $7a
    ld [hl], e                                    ; $5ec5: $73
    db $e4                                        ; $5ec6: $e4
    dec a                                         ; $5ec7: $3d
    pop af                                        ; $5ec8: $f1
    db $10                                        ; $5ec9: $10
    adc b                                         ; $5eca: $88
    nop                                           ; $5ecb: $00
    ret nz                                        ; $5ecc: $c0

    ld sp, hl                                     ; $5ecd: $f9
    ld sp, hl                                     ; $5ece: $f9
    db $fd                                        ; $5ecf: $fd
    ld a, a                                       ; $5ed0: $7f
    ld c, a                                       ; $5ed1: $4f
    call c, $ed74                                 ; $5ed2: $dc $74 $ed
    ld c, c                                       ; $5ed5: $49
    db $fd                                        ; $5ed6: $fd
    db $10                                        ; $5ed7: $10
    adc b                                         ; $5ed8: $88
    nop                                           ; $5ed9: $00
    rrca                                          ; $5eda: $0f
    rst $10                                       ; $5edb: $d7
    cp l                                          ; $5edc: $bd
    or $50                                        ; $5edd: $f6 $50
    db $dd                                        ; $5edf: $dd
    inc l                                         ; $5ee0: $2c
    ld h, d                                       ; $5ee1: $62
    jp c, $21c3                                   ; $5ee2: $da $c3 $21

    ld [bc], a                                    ; $5ee5: $02
    rrca                                          ; $5ee6: $0f
    rst $10                                       ; $5ee7: $d7
    cp l                                          ; $5ee8: $bd

jr_051_5ee9:
    or $50                                        ; $5ee9: $f6 $50
    xor d                                         ; $5eeb: $aa
    xor a                                         ; $5eec: $af
    db $dd                                        ; $5eed: $dd
    sbc l                                         ; $5eee: $9d
    ld e, [hl]                                    ; $5eef: $5e
    ld e, a                                       ; $5ef0: $5f
    rrca                                          ; $5ef1: $0f
    add a                                         ; $5ef2: $87
    ld [$d70f], sp                                ; $5ef3: $08 $0f $d7
    cp l                                          ; $5ef6: $bd
    ld b, $bc                                     ; $5ef7: $06 $bc
    ld e, c                                       ; $5ef9: $59
    inc e                                         ; $5efa: $1c
    ld [hl], a                                    ; $5efb: $77
    push bc                                       ; $5efc: $c5
    sbc d                                         ; $5efd: $9a
    adc $fb                                       ; $5efe: $ce $fb
    and a                                         ; $5f00: $a7
    inc e                                         ; $5f01: $1c
    ld h, d                                       ; $5f02: $62
    jp c, Jump_000_0442                           ; $5f03: $da $42 $04

    rrca                                          ; $5f06: $0f
    rst $10                                       ; $5f07: $d7
    cp l                                          ; $5f08: $bd
    ld h, $47                                     ; $5f09: $26 $47
    or $da                                        ; $5f0b: $f6 $da
    rrca                                          ; $5f0d: $0f
    ld [c], a                                     ; $5f0e: $e2
    rst $10                                       ; $5f0f: $d7
    ld [$cf44], sp                                ; $5f10: $08 $44 $cf
    ld a, d                                       ; $5f13: $7a
    db $f4                                        ; $5f14: $f4
    ccf                                           ; $5f15: $3f
    xor b                                         ; $5f16: $a8
    call nc, $9d80                                ; $5f17: $d4 $80 $9d
    ld e, d                                       ; $5f1a: $5a
    dec sp                                        ; $5f1b: $3b
    jr jr_051_5ee9                                ; $5f1c: $18 $cb

    dec d                                         ; $5f1e: $15
    sub l                                         ; $5f1f: $95
    db $d3                                        ; $5f20: $d3
    add [hl]                                      ; $5f21: $86
    add h                                         ; $5f22: $84
    ld b, b                                       ; $5f23: $40
    inc b                                         ; $5f24: $04
    ld b, e                                       ; $5f25: $43
    rrca                                          ; $5f26: $0f
    rlca                                          ; $5f27: $07
    push af                                       ; $5f28: $f5
    ld e, d                                       ; $5f29: $5a
    ld b, a                                       ; $5f2a: $47
    ld a, [hl+]                                   ; $5f2b: $2a
    ld [hl], b                                    ; $5f2c: $70
    rrca                                          ; $5f2d: $0f
    sbc c                                         ; $5f2e: $99
    ld h, [hl]                                    ; $5f2f: $66
    ld a, [c]                                     ; $5f30: $f2
    sbc [hl]                                      ; $5f31: $9e
    ld c, b                                       ; $5f32: $48
    pop hl                                        ; $5f33: $e1
    ld bc, $c011                                  ; $5f34: $01 $11 $c0
    ld a, $6b                                     ; $5f37: $3e $6b
    ld e, h                                       ; $5f39: $5c
    di                                            ; $5f3a: $f3
    ld [hl-], a                                   ; $5f3b: $32
    ld l, a                                       ; $5f3c: $6f
    jp $d33d                                      ; $5f3d: $c3 $3d $d3


jr_051_5f40:
    add hl, bc                                    ; $5f40: $09
    and l                                         ; $5f41: $a5
    pop hl                                        ; $5f42: $e1
    db $10                                        ; $5f43: $10
    ld bc, $d70f                                  ; $5f44: $01 $0f $d7
    cp l                                          ; $5f47: $bd
    ld h, [hl]                                    ; $5f48: $66
    jp Jump_051_4ea7                              ; $5f49: $c3 $a7 $4e


    call nc, $f0d6                                ; $5f4c: $d4 $d6 $f0
    ld [hl+], a                                   ; $5f4f: $22
    pop hl                                        ; $5f50: $e1
    pop hl                                        ; $5f51: $e1
    db $10                                        ; $5f52: $10
    ld bc, $4f20                                  ; $5f53: $01 $20 $4f
    ld hl, sp+$42                                 ; $5f56: $f8 $42
    and $6d                                       ; $5f58: $e6 $6d
    cp $cf                                        ; $5f5a: $fe $cf
    ld e, [hl]                                    ; $5f5c: $5e
    ld a, [hl-]                                   ; $5f5d: $3a
    ld b, h                                       ; $5f5e: $44
    ret nz                                        ; $5f5f: $c0

    ld sp, hl                                     ; $5f60: $f9
    ld sp, hl                                     ; $5f61: $f9
    db $fd                                        ; $5f62: $fd
    ccf                                           ; $5f63: $3f
    ld e, l                                       ; $5f64: $5d
    and h                                         ; $5f65: $a4
    and $f7                                       ; $5f66: $e6 $f7
    rst $38                                       ; $5f68: $ff
    ld bc, $166f                                  ; $5f69: $01 $6f $16
    rst $00                                       ; $5f6c: $c7
    ld e, l                                       ; $5f6d: $5d
    or c                                          ; $5f6e: $b1
    and [hl]                                      ; $5f6f: $a6
    ld hl, $1802                                  ; $5f70: $21 $02 $18
    ld l, e                                       ; $5f73: $6b

Call_051_5f74:
    or $aa                                        ; $5f74: $f6 $aa
    ld [hl], c                                    ; $5f76: $71
    and a                                         ; $5f77: $a7
    ld c, [hl]                                    ; $5f78: $4e
    rst $18                                       ; $5f79: $df
    add c                                         ; $5f7a: $81
    add hl, bc                                    ; $5f7b: $09
    db $fd                                        ; $5f7c: $fd
    cp $1f                                        ; $5f7d: $fe $1f
    db $10                                        ; $5f7f: $10
    ld bc, $c2a0                                  ; $5f80: $01 $a0 $c2
    ld l, e                                       ; $5f83: $6b
    pop bc                                        ; $5f84: $c1
    ld a, c                                       ; $5f85: $79
    db $f4                                        ; $5f86: $f4
    adc $13                                       ; $5f87: $ce $13
    sbc d                                         ; $5f89: $9a
    cp $61                                        ; $5f8a: $fe $61
    ld c, l                                       ; $5f8c: $4d
    rlca                                          ; $5f8d: $07
    ld b, h                                       ; $5f8e: $44
    ret nz                                        ; $5f8f: $c0

    ld sp, hl                                     ; $5f90: $f9
    ld sp, hl                                     ; $5f91: $f9
    db $fd                                        ; $5f92: $fd
    ccf                                           ; $5f93: $3f
    ld e, l                                       ; $5f94: $5d
    and h                                         ; $5f95: $a4
    and $f7                                       ; $5f96: $e6 $f7
    rst $38                                       ; $5f98: $ff
    ld a, c                                       ; $5f99: $79
    dec de                                        ; $5f9a: $1b
    xor $99                                       ; $5f9b: $ee $99
    ld c, [hl]                                    ; $5f9d: $4e
    jr z, jr_051_5fad                             ; $5f9e: $28 $0d

    add a                                         ; $5fa0: $87
    ld [$d70f], sp                                ; $5fa1: $08 $0f $d7
    cp l                                          ; $5fa4: $bd
    ld b, $f2                                     ; $5fa5: $06 $f2
    ld [hl], $09                                  ; $5fa7: $36 $09
    ld h, d                                       ; $5fa9: $62
    jp c, $21c3                                   ; $5faa: $da $c3 $21

jr_051_5fad:
    ld [bc], a                                    ; $5fad: $02
    rst $20                                       ; $5fae: $e7
    or a                                          ; $5faf: $b7
    sub h                                         ; $5fb0: $94
    ld de, $87d5                                  ; $5fb1: $11 $d5 $87
    ld e, b                                       ; $5fb4: $58
    inc b                                         ; $5fb5: $04
    jr nz, @-$4f                                  ; $5fb6: $20 $af

    ld a, e                                       ; $5fb8: $7b
    db $fc                                        ; $5fb9: $fc
    ld [hl], h                                    ; $5fba: $74
    ld [c], a                                     ; $5fbb: $e2
    sub a                                         ; $5fbc: $97
    add h                                         ; $5fbd: $84

jr_051_5fbe:
    jr nz, jr_051_5f40                            ; $5fbe: $20 $80

    ld [hl], b                                    ; $5fc0: $70
    db $e3                                        ; $5fc1: $e3
    ld b, c                                       ; $5fc2: $41
    xor d                                         ; $5fc3: $aa
    db $d3                                        ; $5fc4: $d3
    add $22                                       ; $5fc5: $c6 $22
    sbc b                                         ; $5fc7: $98
    sub h                                         ; $5fc8: $94
    ld a, [$4e91]                                 ; $5fc9: $fa $91 $4e
    db $fc                                        ; $5fcc: $fc
    ld [de], a                                    ; $5fcd: $12
    inc b                                         ; $5fce: $04
    jr @-$23                                      ; $5fcf: $18 $db

    db $fc                                        ; $5fd1: $fc
    sbc a                                         ; $5fd2: $9f
    cp l                                          ; $5fd3: $bd
    db $f4                                        ; $5fd4: $f4
    sbc h                                         ; $5fd5: $9c
    ld c, [hl]                                    ; $5fd6: $4e
    db $fc                                        ; $5fd7: $fc
    ld [de], a                                    ; $5fd8: $12
    inc b                                         ; $5fd9: $04
    add b                                         ; $5fda: $80
    dec c                                         ; $5fdb: $0d
    add hl, hl                                    ; $5fdc: $29
    adc [hl]                                      ; $5fdd: $8e
    dec sp                                        ; $5fde: $3b
    ld a, [de]                                    ; $5fdf: $1a
    ld bc, $ff20                                  ; $5fe0: $01 $20 $ff
    ld h, c                                       ; $5fe3: $61
    and l                                         ; $5fe4: $a5
    ld l, h                                       ; $5fe5: $6c
    ld c, [hl]                                    ; $5fe6: $4e
    daa                                           ; $5fe7: $27
    ld a, [hl]                                    ; $5fe8: $7e
    add hl, bc                                    ; $5fe9: $09
    ld [bc], a                                    ; $5fea: $02
    ret nz                                        ; $5feb: $c0

    adc l                                         ; $5fec: $8d
    cp l                                          ; $5fed: $bd
    add hl, sp                                    ; $5fee: $39
    sbc l                                         ; $5fef: $9d
    ld hl, sp+$25                                 ; $5ff0: $f8 $25
    ld [$fbc0], sp                                ; $5ff2: $08 $c0 $fb
    adc d                                         ; $5ff5: $8a
    ld [hl-], a                                   ; $5ff6: $32
    xor $79                                       ; $5ff7: $ee $79
    ld hl, $cfde                                  ; $5ff9: $21 $de $cf
    jr nz, jr_051_5fbe                            ; $5ffc: $20 $c0

    ei                                            ; $5ffe: $fb
    adc d                                         ; $5fff: $8a
    ld [hl-], a                                   ; $6000: $32
    xor $79                                       ; $6001: $ee $79
    xor d                                         ; $6003: $aa
    adc l                                         ; $6004: $8d
    cp e                                          ; $6005: $bb
    jp hl                                         ; $6006: $e9


    cp l                                          ; $6007: $bd

jr_051_6008:
    add [hl]                                      ; $6008: $86
    nop                                           ; $6009: $00
    ldh [$f8], a                                  ; $600a: $e0 $f8
    jp hl                                         ; $600c: $e9


    add a                                         ; $600d: $87
    jp c, $8f49                                   ; $600e: $da $49 $8f

    ld e, [hl]                                    ; $6011: $5e
    ld h, [hl]                                    ; $6012: $66
    sbc [hl]                                      ; $6013: $9e
    inc b                                         ; $6014: $04
    ld bc, $460f                                  ; $6015: $01 $0f $46
    ld sp, $f6aa                                  ; $6018: $31 $aa $f6
    inc a                                         ; $601b: $3c
    ld h, b                                       ; $601c: $60
    add a                                         ; $601d: $87
    xor b                                         ; $601e: $a8
    ld hl, sp+$39                                 ; $601f: $f8 $39
    inc [hl]                                      ; $6021: $34
    cp $d7                                        ; $6022: $fe $d7
    ld e, [hl]                                    ; $6024: $5e
    ld b, e                                       ; $6025: $43
    rrca                                          ; $6026: $0f
    ld b, [hl]                                    ; $6027: $46
    ld sp, $f6aa                                  ; $6028: $31 $aa $f6
    inc a                                         ; $602b: $3c
    ld h, b                                       ; $602c: $60
    add a                                         ; $602d: $87
    xor b                                         ; $602e: $a8
    ld hl, sp+$39                                 ; $602f: $f8 $39
    inc [hl]                                      ; $6031: $34
    cp $d7                                        ; $6032: $fe $d7
    ld e, [hl]                                    ; $6034: $5e
    ld b, a                                       ; $6035: $47
    rrca                                          ; $6036: $0f
    ld b, [hl]                                    ; $6037: $46
    ld sp, $f6aa                                  ; $6038: $31 $aa $f6
    inc a                                         ; $603b: $3c
    ld h, b                                       ; $603c: $60
    add a                                         ; $603d: $87
    xor b                                         ; $603e: $a8
    ld hl, sp+$39                                 ; $603f: $f8 $39
    inc [hl]                                      ; $6041: $34
    cp $d7                                        ; $6042: $fe $d7
    sbc $40                                       ; $6044: $de $40
    rrca                                          ; $6046: $0f
    ld b, [hl]                                    ; $6047: $46
    ld sp, $f6aa                                  ; $6048: $31 $aa $f6
    inc e                                         ; $604b: $1c
    adc h                                         ; $604c: $8c
    pop af                                        ; $604d: $f1
    adc [hl]                                      ; $604e: $8e
    sbc h                                         ; $604f: $9c
    ld b, e                                       ; $6050: $43
    db $10                                        ; $6051: $10
    jr nz, jr_051_60d3                            ; $6052: $20 $7f

    push hl                                       ; $6054: $e5
    call c, Call_000_1d09                         ; $6055: $dc $09 $1d
    ld [hl], a                                    ; $6058: $77
    ld [$a671], a                                 ; $6059: $ea $71 $a6
    push bc                                       ; $605c: $c5
    xor a                                         ; $605d: $af
    xor l                                         ; $605e: $ad
    ld [hl], l                                    ; $605f: $75
    ld [hl+], a                                   ; $6060: $22
    sbc c                                         ; $6061: $99
    db $f4                                        ; $6062: $f4
    push hl                                       ; $6063: $e5
    inc e                                         ; $6064: $1c
    ld bc, $7f20                                  ; $6065: $01 $20 $7f
    push hl                                       ; $6068: $e5
    call c, Call_000_1d09                         ; $6069: $dc $09 $1d
    ld [hl], a                                    ; $606c: $77
    ld [$f2d1], a                                 ; $606d: $ea $d1 $f2
    and b                                         ; $6070: $a0
    and l                                         ; $6071: $a5
    ld l, $02                                     ; $6072: $2e $02
    jr jr_051_6008                                ; $6074: $18 $92

    db $ec                                        ; $6076: $ec
    ld [hl], d                                    ; $6077: $72
    ld b, l                                       ; $6078: $45
    ld h, l                                       ; $6079: $65
    ld d, d                                       ; $607a: $52
    sub h                                         ; $607b: $94
    ld d, [hl]                                    ; $607c: $56
    rlca                                          ; $607d: $07
    ld [bc], a                                    ; $607e: $02
    jr nz, jr_051_6100                            ; $607f: $20 $7f

    push hl                                       ; $6081: $e5
    call c, Call_000_1d09                         ; $6082: $dc $09 $1d
    ld [hl], a                                    ; $6085: $77
    ld [$f655], a                                 ; $6086: $ea $55 $f6
    ld [hl], $62                                  ; $6089: $36 $62
    add sp, $45                                   ; $608b: $e8 $45

jr_051_608d:
    add b                                         ; $608d: $80
    adc a                                         ; $608e: $8f
    inc d                                         ; $608f: $14
    add hl, bc                                    ; $6090: $09
    jp hl                                         ; $6091: $e9


    add h                                         ; $6092: $84
    jp nc, $0470                                  ; $6093: $d2 $70 $04

    jr nz, jr_051_608d                            ; $6096: $20 $f5

    jp z, Jump_051_4e9e                           ; $6098: $ca $9e $4e

    db $fc                                        ; $609b: $fc
    ld [de], a                                    ; $609c: $12
    inc b                                         ; $609d: $04
    jr nz, jr_051_611f                            ; $609e: $20 $7f

    push hl                                       ; $60a0: $e5
    call c, Call_000_1d09                         ; $60a1: $dc $09 $1d
    ld [hl], a                                    ; $60a4: $77
    ld [$a771], a                                 ; $60a5: $ea $71 $a7
    or $36                                        ; $60a8: $f6 $36
    rst $38                                       ; $60aa: $ff
    rl l                                          ; $60ab: $cb $15
    ld d, l                                       ; $60ad: $55
    adc l                                         ; $60ae: $8d
    nop                                           ; $60af: $00
    jr nz, jr_051_6131                            ; $60b0: $20 $7f

    push hl                                       ; $60b2: $e5
    call c, Call_000_1d09                         ; $60b3: $dc $09 $1d
    ld [hl], a                                    ; $60b6: $77
    ld [$bd65], a                                 ; $60b7: $ea $65 $bd
    jp c, $9189                                   ; $60ba: $da $89 $91

    db $ec                                        ; $60bd: $ec
    ld [$fb40], sp                                ; $60be: $08 $40 $fb
    and $b0                                       ; $60c1: $e6 $b0
    cpl                                           ; $60c3: $2f
    ld h, a                                       ; $60c4: $67
    inc a                                         ; $60c5: $3c
    ld d, h                                       ; $60c6: $54
    ld a, h                                       ; $60c7: $7c
    ld b, c                                       ; $60c8: $41
    ret nz                                        ; $60c9: $c0

    ld c, [hl]                                    ; $60ca: $4e
    sbc l                                         ; $60cb: $9d
    ld h, [hl]                                    ; $60cc: $66
    ld h, $56                                     ; $60cd: $26 $56
    ld l, d                                       ; $60cf: $6a
    sbc c                                         ; $60d0: $99
    jr @+$17                                      ; $60d1: $18 $15

jr_051_60d3:
    or d                                          ; $60d3: $b2
    rst $10                                       ; $60d4: $d7
    db $10                                        ; $60d5: $10
    ret nz                                        ; $60d6: $c0

    ld c, [hl]                                    ; $60d7: $4e
    sbc l                                         ; $60d8: $9d
    ld h, [hl]                                    ; $60d9: $66
    ld h, $56                                     ; $60da: $26 $56
    ld l, d                                       ; $60dc: $6a
    sbc c                                         ; $60dd: $99
    jr @+$17                                      ; $60de: $18 $15

    or d                                          ; $60e0: $b2
    rst $10                                       ; $60e1: $d7
    ld de, $4ec0                                  ; $60e2: $11 $c0 $4e
    sbc l                                         ; $60e5: $9d
    ld h, [hl]                                    ; $60e6: $66
    ld h, $56                                     ; $60e7: $26 $56
    ld l, d                                       ; $60e9: $6a
    sbc c                                         ; $60ea: $99
    jr @+$17                                      ; $60eb: $18 $15

    or d                                          ; $60ed: $b2
    scf                                           ; $60ee: $37
    db $10                                        ; $60ef: $10
    ret nz                                        ; $60f0: $c0

    ld c, [hl]                                    ; $60f1: $4e
    sbc l                                         ; $60f2: $9d
    ld h, [hl]                                    ; $60f3: $66
    ld h, $56                                     ; $60f4: $26 $56
    ld l, d                                       ; $60f6: $6a
    sbc c                                         ; $60f7: $99
    jr @+$17                                      ; $60f8: $18 $15

    or d                                          ; $60fa: $b2
    scf                                           ; $60fb: $37
    ld de, $4ec0                                  ; $60fc: $11 $c0 $4e
    sbc l                                         ; $60ff: $9d

jr_051_6100:
    ld h, [hl]                                    ; $6100: $66
    ld h, $56                                     ; $6101: $26 $56
    ld l, d                                       ; $6103: $6a
    sbc c                                         ; $6104: $99
    jr jr_051_611c                                ; $6105: $18 $15

    or d                                          ; $6107: $b2
    or a                                          ; $6108: $b7
    db $10                                        ; $6109: $10
    ret nz                                        ; $610a: $c0

    ld c, [hl]                                    ; $610b: $4e
    sbc l                                         ; $610c: $9d
    ld h, [hl]                                    ; $610d: $66
    ld h, $56                                     ; $610e: $26 $56
    ld l, d                                       ; $6110: $6a
    sbc c                                         ; $6111: $99
    jr jr_051_6129                                ; $6112: $18 $15

    or d                                          ; $6114: $b2
    or a                                          ; $6115: $b7
    ld de, $6e4f                                  ; $6116: $11 $4f $6e
    or $1a                                        ; $6119: $f6 $1a
    ld [hl], a                                    ; $611b: $77

jr_051_611c:
    adc b                                         ; $611c: $88
    adc d                                         ; $611d: $8a
    sbc a                                         ; $611e: $9f

jr_051_611f:
    ld b, e                                       ; $611f: $43
    db $e3                                        ; $6120: $e3
    cp a                                          ; $6121: $bf
    ld l, c                                       ; $6122: $69
    xor c                                         ; $6123: $a9
    cp l                                          ; $6124: $bd
    add [hl]                                      ; $6125: $86
    nop                                           ; $6126: $00
    ld c, a                                       ; $6127: $4f
    ld l, [hl]                                    ; $6128: $6e

jr_051_6129:
    or $1a                                        ; $6129: $f6 $1a
    ld [hl], a                                    ; $612b: $77
    adc b                                         ; $612c: $88
    adc d                                         ; $612d: $8a
    sbc a                                         ; $612e: $9f
    ld b, e                                       ; $612f: $43
    db $e3                                        ; $6130: $e3

jr_051_6131:
    cp a                                          ; $6131: $bf
    ld l, c                                       ; $6132: $69
    xor c                                         ; $6133: $a9
    cp l                                          ; $6134: $bd
    adc [hl]                                      ; $6135: $8e
    nop                                           ; $6136: $00
    ld c, a                                       ; $6137: $4f
    ld l, [hl]                                    ; $6138: $6e
    or $1a                                        ; $6139: $f6 $1a
    ld [hl], a                                    ; $613b: $77
    adc b                                         ; $613c: $88
    adc d                                         ; $613d: $8a
    sbc a                                         ; $613e: $9f
    ld b, e                                       ; $613f: $43
    db $e3                                        ; $6140: $e3
    cp a                                          ; $6141: $bf
    ld l, c                                       ; $6142: $69
    xor c                                         ; $6143: $a9
    cp l                                          ; $6144: $bd
    add c                                         ; $6145: $81
    nop                                           ; $6146: $00
    ld c, a                                       ; $6147: $4f
    ld l, [hl]                                    ; $6148: $6e
    or $1a                                        ; $6149: $f6 $1a
    ld [hl], a                                    ; $614b: $77
    adc b                                         ; $614c: $88
    adc d                                         ; $614d: $8a
    sbc a                                         ; $614e: $9f
    ld b, e                                       ; $614f: $43
    db $e3                                        ; $6150: $e3
    cp a                                          ; $6151: $bf
    ld l, c                                       ; $6152: $69
    xor c                                         ; $6153: $a9
    cp l                                          ; $6154: $bd
    adc c                                         ; $6155: $89
    nop                                           ; $6156: $00
    ld c, a                                       ; $6157: $4f
    ld l, [hl]                                    ; $6158: $6e
    or $1a                                        ; $6159: $f6 $1a
    ld [hl], a                                    ; $615b: $77
    adc b                                         ; $615c: $88
    adc d                                         ; $615d: $8a
    sbc a                                         ; $615e: $9f
    ld b, e                                       ; $615f: $43
    db $e3                                        ; $6160: $e3
    cp a                                          ; $6161: $bf
    ld l, c                                       ; $6162: $69
    xor c                                         ; $6163: $a9
    cp l                                          ; $6164: $bd
    add l                                         ; $6165: $85
    nop                                           ; $6166: $00
    ld c, a                                       ; $6167: $4f
    ld l, [hl]                                    ; $6168: $6e
    or $1a                                        ; $6169: $f6 $1a
    ld [hl], a                                    ; $616b: $77
    adc b                                         ; $616c: $88
    adc d                                         ; $616d: $8a
    sbc a                                         ; $616e: $9f
    ld b, e                                       ; $616f: $43
    db $e3                                        ; $6170: $e3
    cp a                                          ; $6171: $bf
    ld l, c                                       ; $6172: $69
    xor c                                         ; $6173: $a9
    cp l                                          ; $6174: $bd
    adc l                                         ; $6175: $8d
    nop                                           ; $6176: $00
    ret nz                                        ; $6177: $c0

    cp $75                                        ; $6178: $fe $75
    ld b, [hl]                                    ; $617a: $46
    scf                                           ; $617b: $37
    ld b, l                                       ; $617c: $45
    ld a, [c]                                     ; $617d: $f2
    ld a, [hl-]                                   ; $617e: $3a
    and c                                         ; $617f: $a1
    ld [$0d18], sp                                ; $6180: $08 $18 $0d
    push af                                       ; $6183: $f5
    sub c                                         ; $6184: $91
    ld e, a                                       ; $6185: $5f
    add hl, sp                                    ; $6186: $39
    ld [hl], a                                    ; $6187: $77
    ld b, d                                       ; $6188: $42
    ld de, $0d18                                  ; $6189: $11 $18 $0d
    push af                                       ; $618c: $f5
    sub c                                         ; $618d: $91
    ld e, a                                       ; $618e: $5f
    add hl, sp                                    ; $618f: $39
    ld [hl], a                                    ; $6190: $77
    ld b, d                                       ; $6191: $42
    ld de, $4ec0                                  ; $6192: $11 $c0 $4e
    sbc l                                         ; $6195: $9d
    ld h, [hl]                                    ; $6196: $66
    ld h, $56                                     ; $6197: $26 $56
    ld l, d                                       ; $6199: $6a
    call nz, Call_051_5f74                        ; $619a: $c4 $74 $5f
    ld l, e                                       ; $619d: $6b
    ld a, [hl-]                                   ; $619e: $3a
    inc b                                         ; $619f: $04
    ld bc, $0f4f                                  ; $61a0: $01 $4f $0f
    add $ae                                       ; $61a3: $c6 $ae
    dec h                                         ; $61a5: $25
    add hl, de                                    ; $61a6: $19
    ld bc, $fec0                                  ; $61a7: $01 $c0 $fe
    ld c, l                                       ; $61aa: $4d
    ld de, $f537                                  ; $61ab: $11 $37 $f5
    jp $011d                                      ; $61ae: $c3 $1d $01


    rrca                                          ; $61b1: $0f
    ld b, [hl]                                    ; $61b2: $46
    ld sp, $f6aa                                  ; $61b3: $31 $aa $f6
    cp h                                          ; $61b6: $bc
    ld c, h                                       ; $61b7: $4c
    call z, $b437                                 ; $61b8: $cc $37 $b4
    ld a, c                                       ; $61bb: $79
    dec de                                        ; $61bc: $1b
    ld a, e                                       ; $61bd: $7b
    dec c                                         ; $61be: $0d
    ld bc, $a50f                                  ; $61bf: $01 $0f $a5
    ld a, [$bcda]                                 ; $61c2: $fa $da $bc
    db $ec                                        ; $61c5: $ec
    adc c                                         ; $61c6: $89
    xor d                                         ; $61c7: $aa
    or e                                          ; $61c8: $b3
    ld e, l                                       ; $61c9: $5d
    ret                                           ; $61ca: $c9


    rst $10                                       ; $61cb: $d7
    sub [hl]                                      ; $61cc: $96
    jr nz, jr_051_61ef                            ; $61cd: $20 $20

    ld c, l                                       ; $61cf: $4d
    rst $30                                       ; $61d0: $f7
    or l                                          ; $61d1: $b5
    and [hl]                                      ; $61d2: $a6
    and a                                         ; $61d3: $a7
    di                                            ; $61d4: $f3
    ld [hl], d                                    ; $61d5: $72
    ld b, l                                       ; $61d6: $45
    db $ed                                        ; $61d7: $ed
    dec [hl]                                      ; $61d8: $35
    inc b                                         ; $61d9: $04
    jr nz, jr_051_6229                            ; $61da: $20 $4d

    rst $30                                       ; $61dc: $f7
    or l                                          ; $61dd: $b5
    and [hl]                                      ; $61de: $a6
    and a                                         ; $61df: $a7
    di                                            ; $61e0: $f3
    ld [hl], d                                    ; $61e1: $72
    ld b, l                                       ; $61e2: $45
    db $ed                                        ; $61e3: $ed
    ld [hl], l                                    ; $61e4: $75
    inc b                                         ; $61e5: $04
    jr nz, jr_051_6235                            ; $61e6: $20 $4d

    rst $30                                       ; $61e8: $f7
    or l                                          ; $61e9: $b5
    and [hl]                                      ; $61ea: $a6
    and a                                         ; $61eb: $a7
    di                                            ; $61ec: $f3
    ld [hl], d                                    ; $61ed: $72
    ld b, l                                       ; $61ee: $45

jr_051_61ef:
    db $ed                                        ; $61ef: $ed
    dec c                                         ; $61f0: $0d
    inc b                                         ; $61f1: $04
    jr nz, jr_051_6241                            ; $61f2: $20 $4d

    rst $30                                       ; $61f4: $f7
    or l                                          ; $61f5: $b5
    and [hl]                                      ; $61f6: $a6
    and a                                         ; $61f7: $a7
    di                                            ; $61f8: $f3
    ld [hl], d                                    ; $61f9: $72
    ld b, l                                       ; $61fa: $45
    db $ed                                        ; $61fb: $ed
    ld c, l                                       ; $61fc: $4d
    inc b                                         ; $61fd: $04
    jr nz, @+$4f                                  ; $61fe: $20 $4d

    rst $30                                       ; $6200: $f7
    or l                                          ; $6201: $b5
    and [hl]                                      ; $6202: $a6
    and a                                         ; $6203: $a7
    di                                            ; $6204: $f3
    ld [hl], d                                    ; $6205: $72
    ld b, l                                       ; $6206: $45
    db $ed                                        ; $6207: $ed
    dec l                                         ; $6208: $2d
    inc b                                         ; $6209: $04
    jr nz, @+$4f                                  ; $620a: $20 $4d

    rst $30                                       ; $620c: $f7
    or l                                          ; $620d: $b5
    and [hl]                                      ; $620e: $a6
    and a                                         ; $620f: $a7
    di                                            ; $6210: $f3
    ld [hl], d                                    ; $6211: $72
    ld b, l                                       ; $6212: $45
    db $ed                                        ; $6213: $ed
    ld l, l                                       ; $6214: $6d
    inc b                                         ; $6215: $04
    jr nz, jr_051_6265                            ; $6216: $20 $4d

    rst $30                                       ; $6218: $f7
    or l                                          ; $6219: $b5
    and [hl]                                      ; $621a: $a6
    and a                                         ; $621b: $a7
    di                                            ; $621c: $f3
    ld [hl], d                                    ; $621d: $72
    ld b, l                                       ; $621e: $45
    db $ed                                        ; $621f: $ed
    dec e                                         ; $6220: $1d
    inc b                                         ; $6221: $04
    rrca                                          ; $6222: $0f
    pop af                                        ; $6223: $f1
    xor e                                         ; $6224: $ab
    db $d3                                        ; $6225: $d3
    adc c                                         ; $6226: $89
    ld e, a                                       ; $6227: $5f
    add d                                         ; $6228: $82

jr_051_6229:
    nop                                           ; $6229: $00
    jr nz, jr_051_62ab                            ; $622a: $20 $7f

    push hl                                       ; $622c: $e5
    call c, Call_000_1d09                         ; $622d: $dc $09 $1d
    ld [hl], a                                    ; $6230: $77
    ld [$9b79], a                                 ; $6231: $ea $79 $9b
    rst $38                                       ; $6234: $ff

jr_051_6235:
    adc c                                         ; $6235: $89
    sub c                                         ; $6236: $91
    db $ec                                        ; $6237: $ec
    jp c, $6ecd                                   ; $6238: $da $cd $6e

    ld a, [$0216]                                 ; $623b: $fa $16 $02
    ld c, a                                       ; $623e: $4f
    sbc b                                         ; $623f: $98
    add hl, bc                                    ; $6240: $09

jr_051_6241:
    pop de                                        ; $6241: $d1
    sub d                                         ; $6242: $92
    call z, $967d                                 ; $6243: $cc $7d $96
    adc d                                         ; $6246: $8a
    adc a                                         ; $6247: $8f
    nop                                           ; $6248: $00
    add b                                         ; $6249: $80
    ld l, a                                       ; $624a: $6f
    ld a, [$e35f]                                 ; $624b: $fa $5f $e3
    ld b, c                                       ; $624e: $41
    or $1a                                        ; $624f: $f6 $1a
    ld [bc], a                                    ; $6251: $02
    add b                                         ; $6252: $80
    ld l, a                                       ; $6253: $6f
    ld a, [$e35f]                                 ; $6254: $fa $5f $e3
    ld b, c                                       ; $6257: $41
    or $3a                                        ; $6258: $f6 $3a
    ld [bc], a                                    ; $625a: $02
    and b                                         ; $625b: $a0
    ld d, e                                       ; $625c: $53
    ret nz                                        ; $625d: $c0

    adc l                                         ; $625e: $8d
    sub h                                         ; $625f: $94
    xor d                                         ; $6260: $aa
    rst $38                                       ; $6261: $ff
    di                                            ; $6262: $f3
    ld a, [hl-]                                   ; $6263: $3a
    and c                                         ; $6264: $a1

jr_051_6265:
    ld [$7f20], sp                                ; $6265: $08 $20 $7f
    push hl                                       ; $6268: $e5
    call c, Call_000_1d09                         ; $6269: $dc $09 $1d
    ld [hl], a                                    ; $626c: $77
    ld [$44d1], a                                 ; $626d: $ea $d1 $44
    xor c                                         ; $6270: $a9
    ld e, a                                       ; $6271: $5f
    sbc l                                         ; $6272: $9d
    dec a                                         ; $6273: $3d
    or c                                          ; $6274: $b1
    scf                                           ; $6275: $37
    ld a, [de]                                    ; $6276: $1a
    ld bc, $0ce0                                  ; $6277: $01 $e0 $0c
    push hl                                       ; $627a: $e5
    ld a, [hl-]                                   ; $627b: $3a
    ld e, b                                       ; $627c: $58
    ld a, c                                       ; $627d: $79
    sbc l                                         ; $627e: $9d
    ld d, b                                       ; $627f: $50
    inc b                                         ; $6280: $04
    jr nz, @+$81                                  ; $6281: $20 $7f

    push hl                                       ; $6283: $e5
    call c, Call_000_1d09                         ; $6284: $dc $09 $1d
    ld [hl], a                                    ; $6287: $77
    ld [$9b79], a                                 ; $6288: $ea $79 $9b
    rst $38                                       ; $628b: $ff
    ld l, l                                       ; $628c: $6d
    or e                                          ; $628d: $b3
    ld d, d                                       ; $628e: $52
    inc h                                         ; $628f: $24
    inc de                                        ; $6290: $13
    inc hl                                        ; $6291: $23
    reti                                          ; $6292: $d9


    ld de, $93e0                                  ; $6293: $11 $e0 $93
    db $db                                        ; $6296: $db
    dec e                                         ; $6297: $1d
    rst $38                                       ; $6298: $ff
    rst $20                                       ; $6299: $e7
    ld [hl], l                                    ; $629a: $75
    ld b, d                                       ; $629b: $42
    ld de, $a44f                                  ; $629c: $11 $4f $a4
    ldh a, [$c8]                                  ; $629f: $f0 $c8
    db $eb                                        ; $62a1: $eb
    add h                                         ; $62a2: $84
    ld [hl+], a                                   ; $62a3: $22
    ld c, a                                       ; $62a4: $4f
    ldh a, [$36]                                  ; $62a5: $f0 $36
    adc c                                         ; $62a7: $89
    rst $20                                       ; $62a8: $e7
    ld [hl], l                                    ; $62a9: $75
    ld b, d                                       ; $62aa: $42

jr_051_62ab:
    ld de, $4aa0                                  ; $62ab: $11 $a0 $4a
    ld b, l                                       ; $62ae: $45
    ld [hl], a                                    ; $62af: $77
    ld b, d                                       ; $62b0: $42
    ld de, $7f20                                  ; $62b1: $11 $20 $7f
    push hl                                       ; $62b4: $e5
    call c, Call_000_1d09                         ; $62b5: $dc $09 $1d
    ld [hl], a                                    ; $62b8: $77
    ld [$a771], a                                 ; $62b9: $ea $71 $a7
    sub $4b                                       ; $62bc: $d6 $4b
    db $ec                                        ; $62be: $ec
    cp a                                          ; $62bf: $bf
    and d                                         ; $62c0: $a2
    ld [hl-], a                                   ; $62c1: $32
    ld sp, $7d92                                  ; $62c2: $31 $92 $7d
    ld [$db18], sp                                ; $62c5: $08 $18 $db
    ld [hl], b                                    ; $62c8: $70
    rst $08                                       ; $62c9: $cf
    ld [hl], h                                    ; $62ca: $74
    ld b, d                                       ; $62cb: $42
    ld de, $fbc0                                  ; $62cc: $11 $c0 $fb
    adc d                                         ; $62cf: $8a
    ld [hl-], a                                   ; $62d0: $32
    xor $79                                       ; $62d1: $ee $79
    xor d                                         ; $62d3: $aa
    adc l                                         ; $62d4: $8d
    cp e                                          ; $62d5: $bb
    jp hl                                         ; $62d6: $e9


    cp l                                          ; $62d7: $bd
    adc [hl]                                      ; $62d8: $8e
    nop                                           ; $62d9: $00
    ldh [$a2], a                                  ; $62da: $e0 $a2
    db $db                                        ; $62dc: $db
    adc b                                         ; $62dd: $88
    jp c, Jump_051_7b7b                           ; $62de: $da $7b $7b

    db $e3                                        ; $62e1: $e3
    sub l                                         ; $62e2: $95
    scf                                           ; $62e3: $37
    ld de, $984f                                  ; $62e4: $11 $4f $98
    and a                                         ; $62e7: $a7
    db $ec                                        ; $62e8: $ec
    ld e, l                                       ; $62e9: $5d
    ld h, d                                       ; $62ea: $62
    ld de, $460f                                  ; $62eb: $11 $0f $46
    ld sp, $f6aa                                  ; $62ee: $31 $aa $f6
    cp h                                          ; $62f1: $bc
    db $10                                        ; $62f2: $10
    rst $28                                       ; $62f3: $ef
    ld h, a                                       ; $62f4: $67
    or h                                          ; $62f5: $b4
    ld a, [$011f]                                 ; $62f6: $fa $1f $01
    ret nz                                        ; $62f9: $c0

    sbc e                                         ; $62fa: $9b
    push bc                                       ; $62fb: $c5

jr_051_62fc:
    ld [hl], c                                    ; $62fc: $71
    ld d, a                                       ; $62fd: $57
    xor h                                         ; $62fe: $ac
    jp hl                                         ; $62ff: $e9


    inc a                                         ; $6300: $3c
    call c, Call_051_4930                         ; $6301: $dc $30 $49
    ld [hl], $7a                                  ; $6304: $36 $7a
    xor [hl]                                      ; $6306: $ae
    adc a                                         ; $6307: $8f
    nop                                           ; $6308: $00
    ret nz                                        ; $6309: $c0

    sbc e                                         ; $630a: $9b
    and l                                         ; $630b: $a5
    jr c, jr_051_62fc                             ; $630c: $38 $ee

    adc d                                         ; $630e: $8a
    dec [hl]                                      ; $630f: $35
    sbc l                                         ; $6310: $9d
    sub a                                         ; $6311: $97
    adc a                                         ; $6312: $8f
    rst $38                                       ; $6313: $ff
    inc sp                                        ; $6314: $33
    add hl, hl                                    ; $6315: $29
    inc a                                         ; $6316: $3c
    ld [hl], a                                    ; $6317: $77
    ld b, d                                       ; $6318: $42
    ld de, $f520                                  ; $6319: $11 $20 $f5
    jp z, Jump_051_499e                           ; $631c: $ca $9e $49

    daa                                           ; $631f: $27
    jp hl                                         ; $6320: $e9


    inc [hl]                                      ; $6321: $34
    ld [bc], a                                    ; $6322: $02
    ret nz                                        ; $6323: $c0

    xor $4f                                       ; $6324: $ee $4f
    ld l, c                                       ; $6326: $69
    ld a, c                                       ; $6327: $79
    sbc l                                         ; $6328: $9d
    ld d, b                                       ; $6329: $50
    inc b                                         ; $632a: $04
    rrca                                          ; $632b: $0f
    ld b, [hl]                                    ; $632c: $46
    ld sp, $f6aa                                  ; $632d: $31 $aa $f6
    cp h                                          ; $6330: $bc
    daa                                           ; $6331: $27
    ld l, [hl]                                    ; $6332: $6e
    cp d                                          ; $6333: $ba
    or $a4                                        ; $6334: $f6 $a4
    ld a, $02                                     ; $6336: $3e $02
    rrca                                          ; $6338: $0f
    ld b, [hl]                                    ; $6339: $46

jr_051_633a:
    ld sp, $f6aa                                  ; $633a: $31 $aa $f6
    inc a                                         ; $633d: $3c
    inc a                                         ; $633e: $3c
    ld a, [hl-]                                   ; $633f: $3a
    dec de                                        ; $6340: $1b
    xor c                                         ; $6341: $a9
    rst $18                                       ; $6342: $df
    add hl, bc                                    ; $6343: $09
    ld b, l                                       ; $6344: $45
    ldh [$4c], a                                  ; $6345: $e0 $4c
    ld a, e                                       ; $6347: $7b
    rra                                           ; $6348: $1f
    xor $9d                                       ; $6349: $ee $9d
    ld d, b                                       ; $634b: $50
    inc b                                         ; $634c: $04
    ld c, a                                       ; $634d: $4f
    ld a, c                                       ; $634e: $79
    cp c                                          ; $634f: $b9
    and d                                         ; $6350: $a2
    or $ea                                        ; $6351: $f6 $ea
    reti                                          ; $6353: $d9


    cp b                                          ; $6354: $b8
    ld b, e                                       ; $6355: $43
    ld d, h                                       ; $6356: $54
    db $fc                                        ; $6357: $fc
    inc e                                         ; $6358: $1c
    ld a, [de]                                    ; $6359: $1a
    rst $38                                       ; $635a: $ff
    ld c, l                                       ; $635b: $4d
    inc hl                                        ; $635c: $23
    jr jr_051_633a                                ; $635d: $18 $db

    db $fc                                        ; $635f: $fc
    ld l, a                                       ; $6360: $6f
    sbc e                                         ; $6361: $9b
    sub l                                         ; $6362: $95
    ld [hl+], a                                   ; $6363: $22
    ld a, e                                       ; $6364: $7b
    dec e                                         ; $6365: $1d
    ld bc, $fbc0                                  ; $6366: $01 $c0 $fb
    adc d                                         ; $6369: $8a
    ld [hl-], a                                   ; $636a: $32
    xor $79                                       ; $636b: $ee $79
    ld a, d                                       ; $636d: $7a
    ld a, l                                       ; $636e: $7d
    dec e                                         ; $636f: $1d
    ld bc, $b280                                  ; $6370: $01 $80 $b2
    or a                                          ; $6373: $b7
    ld de, $2f43                                  ; $6374: $11 $43 $2f
    ld sp, $d7dd                                  ; $6377: $31 $dd $d7
    sbc d                                         ; $637a: $9a
    ld b, [hl]                                    ; $637b: $46
    rrca                                          ; $637c: $0f
    ld b, [hl]                                    ; $637d: $46
    ld sp, $f6aa                                  ; $637e: $31 $aa $f6
    cp h                                          ; $6381: $bc
    ld c, h                                       ; $6382: $4c
    call z, $b437                                 ; $6383: $cc $37 $b4
    ld a, c                                       ; $6386: $79
    dec de                                        ; $6387: $1b
    ld a, e                                       ; $6388: $7b
    dec e                                         ; $6389: $1d
    ld bc, $460f                                  ; $638a: $01 $0f $46
    ld sp, $f6aa                                  ; $638d: $31 $aa $f6
    cp h                                          ; $6390: $bc
    ld c, h                                       ; $6391: $4c
    call z, $b437                                 ; $6392: $cc $37 $b4
    ld a, c                                       ; $6395: $79
    dec de                                        ; $6396: $1b
    ld a, e                                       ; $6397: $7b
    inc bc                                        ; $6398: $03
    ld bc, $460f                                  ; $6399: $01 $0f $46
    ld sp, $f6aa                                  ; $639c: $31 $aa $f6
    cp h                                          ; $639f: $bc
    ld c, h                                       ; $63a0: $4c
    call z, $b437                                 ; $63a1: $cc $37 $b4
    ld a, c                                       ; $63a4: $79
    dec de                                        ; $63a5: $1b
    ld a, e                                       ; $63a6: $7b
    inc de                                        ; $63a7: $13
    ld bc, $a50f                                  ; $63a8: $01 $0f $a5
    ld a, [$bcda]                                 ; $63ab: $fa $da $bc
    db $ec                                        ; $63ae: $ec
    adc c                                         ; $63af: $89
    xor d                                         ; $63b0: $aa
    or e                                          ; $63b1: $b3
    dec h                                         ; $63b2: $25
    ld e, [hl]                                    ; $63b3: $5e
    jp nz, Jump_000_1a9d                          ; $63b4: $c2 $9d $1a

    ld bc, $4d20                                  ; $63b7: $01 $20 $4d
    ld a, e                                       ; $63ba: $7b
    ld l, $fa                                     ; $63bb: $2e $fa

Jump_051_63bd:
    xor e                                         ; $63bd: $ab
    ret                                           ; $63be: $c9


    ld c, a                                       ; $63bf: $4f
    jp nc, $90e9                                  ; $63c0: $d2 $e9 $90

    ld hl, $dc4f                                  ; $63c3: $21 $4f $dc
    ld [hl], h                                    ; $63c6: $74
    db $ed                                        ; $63c7: $ed
    ld c, c                                       ; $63c8: $49
    db $fd                                        ; $63c9: $fd
    sub b                                         ; $63ca: $90
    cp l                                          ; $63cb: $bd
    inc a                                         ; $63cc: $3c

jr_051_63cd:
    scf                                           ; $63cd: $37
    inc d                                         ; $63ce: $14
    ld bc, $410f                                  ; $63cf: $01 $0f $41
    rst $38                                       ; $63d2: $ff
    ld d, l                                       ; $63d3: $55
    ld a, $9a                                     ; $63d4: $3e $9a
    jr z, jr_051_63cd                             ; $63d6: $28 $f5

    xor e                                         ; $63d8: $ab
    dec sp                                        ; $63d9: $3b
    and c                                         ; $63da: $a1
    ld [$484f], sp                                ; $63db: $08 $4f $48
    ld e, a                                       ; $63de: $5f
    sbc l                                         ; $63df: $9d
    sub [hl]                                      ; $63e0: $96
    ld b, a                                       ; $63e1: $47
    rst $18                                       ; $63e2: $df
    ld a, [$e008]                                 ; $63e3: $fa $08 $e0
    inc c                                         ; $63e6: $0c
    sub e                                         ; $63e7: $93
    cp b                                          ; $63e8: $b8
    xor c                                         ; $63e9: $a9
    rra                                           ; $63ea: $1f
    xor $08                                       ; $63eb: $ee $08
    jr nz, jr_051_646e                            ; $63ed: $20 $7f

    push hl                                       ; $63ef: $e5
    call c, Call_000_1d09                         ; $63f0: $dc $09 $1d
    ld [hl], a                                    ; $63f3: $77
    ld [$44d1], a                                 ; $63f4: $ea $d1 $44
    xor c                                         ; $63f7: $a9
    ld e, a                                       ; $63f8: $5f
    ld c, l                                       ; $63f9: $4d
    sub e                                         ; $63fa: $93
    ld a, h                                       ; $63fb: $7c
    add hl, bc                                    ; $63fc: $09
    ld [bc], a                                    ; $63fd: $02
    jr nz, jr_051_647f                            ; $63fe: $20 $7f

    push hl                                       ; $6400: $e5
    call c, Call_000_1d09                         ; $6401: $dc $09 $1d
    ld [hl], a                                    ; $6404: $77
    ld [$44d1], a                                 ; $6405: $ea $d1 $44
    xor c                                         ; $6408: $a9
    ld e, a                                       ; $6409: $5f
    ld c, l                                       ; $640a: $4d
    adc h                                         ; $640b: $8c
    ld h, h                                       ; $640c: $64
    ld b, a                                       ; $640d: $47
    jr nz, jr_051_645d                            ; $640e: $20 $4d

    cp e                                          ; $6410: $bb
    ld e, [hl]                                    ; $6411: $5e
    ld e, a                                       ; $6412: $5f
    ld b, a                                       ; $6413: $47
    rrca                                          ; $6414: $0f
    ld b, c                                       ; $6415: $41
    rst $38                                       ; $6416: $ff
    ld d, l                                       ; $6417: $55
    inc hl                                        ; $6418: $23
    and [hl]                                      ; $6419: $a6
    ei                                            ; $641a: $fb
    ld e, d                                       ; $641b: $5a
    db $d3                                        ; $641c: $d3
    ld h, a                                       ; $641d: $67
    db $d3                                        ; $641e: $d3
    ld a, c                                       ; $641f: $79
    cp c                                          ; $6420: $b9
    and d                                         ; $6421: $a2
    or $36                                        ; $6422: $f6 $36
    ld [bc], a                                    ; $6424: $02
    add b                                         ; $6425: $80
    xor a                                         ; $6426: $af
    ld c, b                                       ; $6427: $48
    ld e, [hl]                                    ; $6428: $5e
    daa                                           ; $6429: $27
    inc d                                         ; $642a: $14
    ld bc, $0d18                                  ; $642b: $01 $18 $0d
    push af                                       ; $642e: $f5
    sub c                                         ; $642f: $91
    ld e, a                                       ; $6430: $5f
    add hl, sp                                    ; $6431: $39
    ld [hl], a                                    ; $6432: $77
    ld b, d                                       ; $6433: $42
    ld de, $3ec0                                  ; $6434: $11 $c0 $3e
    ld c, e                                       ; $6437: $4b
    sub l                                         ; $6438: $95
    ret c                                         ; $6439: $d8

    sbc b                                         ; $643a: $98
    or b                                          ; $643b: $b0
    ld d, d                                       ; $643c: $52
    inc h                                         ; $643d: $24
    ld a, $a9                                     ; $643e: $3e $a9
    or $42                                        ; $6440: $f6 $42
    ld c, a                                       ; $6442: $4f
    call c, $ed74                                 ; $6443: $dc $74 $ed
    ld c, c                                       ; $6446: $49
    db $fd                                        ; $6447: $fd
    sub b                                         ; $6448: $90
    cp l                                          ; $6449: $bd
    inc a                                         ; $644a: $3c
    ld b, b                                       ; $644b: $40
    ld a, d                                       ; $644c: $7a
    cp $89                                        ; $644d: $fe $89
    rl l                                          ; $644f: $cb $15
    add l                                         ; $6451: $85
    nop                                           ; $6452: $00
    ld c, a                                       ; $6453: $4f
    ld c, h                                       ; $6454: $4c
    ld [hl+], a                                   ; $6455: $22
    or $15                                        ; $6456: $f6 $15

jr_051_6458:
    ret nc                                        ; $6458: $d0

    ld c, c                                       ; $6459: $49
    cp [hl]                                       ; $645a: $be
    xor c                                         ; $645b: $a9
    rst $30                                       ; $645c: $f7

jr_051_645d:
    rlca                                          ; $645d: $07
    ldh a, [$b5]                                  ; $645e: $f0 $b5
    ld hl, $c9e7                                  ; $6460: $21 $e7 $c9
    adc [hl]                                      ; $6463: $8e

jr_051_6464:
    sbc $dd                                       ; $6464: $de $dd
    ld sp, hl                                     ; $6466: $f9
    dec l                                         ; $6467: $2d
    ld h, l                                       ; $6468: $65
    ld b, h                                       ; $6469: $44
    push af                                       ; $646a: $f5
    ld hl, $2216                                  ; $646b: $21 $16 $22

jr_051_646e:
    rst $20                                       ; $646e: $e7
    ret                                           ; $646f: $c9


    adc [hl]                                      ; $6470: $8e
    sbc $1d                                       ; $6471: $de $1d
    jr c, jr_051_6458                             ; $6473: $38 $e3

    and l                                         ; $6475: $a5
    ld [hl+], a                                   ; $6476: $22
    rrca                                          ; $6477: $0f
    db $e4                                        ; $6478: $e4
    ld [hl], l                                    ; $6479: $75
    adc a                                         ; $647a: $8f
    sbc a                                         ; $647b: $9f
    ld c, [hl]                                    ; $647c: $4e
    db $fc                                        ; $647d: $fc
    ld [de], a                                    ; $647e: $12

jr_051_647f:
    adc b                                         ; $647f: $88
    nop                                           ; $6480: $00
    rst $20                                       ; $6481: $e7
    ret                                           ; $6482: $c9


    adc [hl]                                      ; $6483: $8e
    sbc $1d                                       ; $6484: $de $1d
    jr nz, jr_051_6464                            ; $6486: $20 $dc

    ld a, b                                       ; $6488: $78
    sub b                                         ; $6489: $90
    ld [$b1b4], a                                 ; $648a: $ea $b4 $b1
    ld hl, $0110                                  ; $648d: $21 $10 $01
    rst $20                                       ; $6490: $e7
    ret                                           ; $6491: $c9


    adc [hl]                                      ; $6492: $8e
    sbc $1d                                       ; $6493: $de $1d
    ret nc                                        ; $6495: $d0

    ld h, b                                       ; $6496: $60
    ld a, l                                       ; $6497: $7d
    add e                                         ; $6498: $83
    rst $20                                       ; $6499: $e7
    ld h, c                                       ; $649a: $61
    ld d, d                                       ; $649b: $52
    ld [$ad07], a                                 ; $649c: $ea $07 $ad
    ld h, $52                                     ; $649f: $26 $52
    ld d, $22                                     ; $64a1: $16 $22
    rst $20                                       ; $64a3: $e7
    ret                                           ; $64a4: $c9


    adc [hl]                                      ; $64a5: $8e
    sbc $1d                                       ; $64a6: $de $1d
    ret c                                         ; $64a8: $d8

    rst $38                                       ; $64a9: $ff
    xor a                                         ; $64aa: $af
    ld e, [hl]                                    ; $64ab: $5e
    ld h, d                                       ; $64ac: $62
    and e                                         ; $64ad: $a3
    di                                            ; $64ae: $f3
    cp h                                          ; $64af: $bc
    call $d9ff                                    ; $64b0: $cd $ff $d9
    ld c, e                                       ; $64b3: $4b
    rst $08                                       ; $64b4: $cf
    jp hl                                         ; $64b5: $e9


    call nz, $812f                                ; $64b6: $c4 $2f $81
    ld [$c9e7], sp                                ; $64b9: $08 $e7 $c9
    adc [hl]                                      ; $64bc: $8e
    sbc $1d                                       ; $64bd: $de $1d
    ld h, b                                       ; $64bf: $60
    ld b, e                                       ; $64c0: $43
    ld a, [hl]                                    ; $64c1: $7e
    ld [hl+], a                                   ; $64c2: $22
    halt                                          ; $64c3: $76
    ld h, $a5                                     ; $64c4: $26 $a5
    dec c                                         ; $64c6: $0d
    ret nc                                        ; $64c7: $d0

    rst $08                                       ; $64c8: $cf
    ld e, $9d                                     ; $64c9: $1e $9d
    sub a                                         ; $64cb: $97
    ld [hl], $a4                                  ; $64cc: $36 $a4
    jr c, @-$10                                   ; $64ce: $38 $ee

    ld l, b                                       ; $64d0: $68
    adc b                                         ; $64d1: $88
    nop                                           ; $64d2: $00
    rst $20                                       ; $64d3: $e7
    ret                                           ; $64d4: $c9


    adc [hl]                                      ; $64d5: $8e
    sbc $1d                                       ; $64d6: $de $1d
    add sp, -$4e                                  ; $64d8: $e8 $b2
    ld b, l                                       ; $64da: $45
    rlca                                          ; $64db: $07
    cp d                                          ; $64dc: $ba
    ld a, $b9                                     ; $64dd: $3e $b9
    sub d                                         ; $64df: $92
    rlca                                          ; $64e0: $07
    ld a, [c]                                     ; $64e1: $f2
    rra                                           ; $64e2: $1f
    ld d, [hl]                                    ; $64e3: $56
    jp z, $8f46                                   ; $64e4: $ca $46 $8f

    dec sp                                        ; $64e7: $3b
    push af                                       ; $64e8: $f5
    ld [$9aff], a                                 ; $64e9: $ea $ff $9a
    rst $18                                       ; $64ec: $df
    rst $38                                       ; $64ed: $ff
    cp c                                          ; $64ee: $b9
    db $e3                                        ; $64ef: $e3
    rst $38                                       ; $64f0: $ff
    db $10                                        ; $64f1: $10
    adc b                                         ; $64f2: $88
    nop                                           ; $64f3: $00
    rst $20                                       ; $64f4: $e7
    ret                                           ; $64f5: $c9


    adc [hl]                                      ; $64f6: $8e
    sbc $dd                                       ; $64f7: $de $dd
    sub e                                         ; $64f9: $93
    ld b, h                                       ; $64fa: $44
    ld d, l                                       ; $64fb: $55
    db $e3                                        ; $64fc: $e3
    ccf                                           ; $64fd: $3f
    and c                                         ; $64fe: $a1
    ld a, c                                       ; $64ff: $79
    and b                                         ; $6500: $a0
    ld c, e                                       ; $6501: $4b
    db $dd                                        ; $6502: $dd
    ld c, h                                       ; $6503: $4c
    ld l, d                                       ; $6504: $6a
    jp z, $9bd8                                   ; $6505: $ca $d8 $9b

    db $d3                                        ; $6508: $d3
    adc c                                         ; $6509: $89
    ld e, a                                       ; $650a: $5f
    ld [bc], a                                    ; $650b: $02
    ld de, $c9e7                                  ; $650c: $11 $e7 $c9
    adc [hl]                                      ; $650f: $8e
    sbc $1d                                       ; $6510: $de $1d
    ldh a, [$be]                                  ; $6512: $f0 $be
    and d                                         ; $6514: $a2
    adc h                                         ; $6515: $8c
    ld a, e                                       ; $6516: $7b
    ld a, $9b                                     ; $6517: $3e $9b
    or a                                          ; $6519: $b7
    ld sp, hl                                     ; $651a: $f9
    sbc a                                         ; $651b: $9f
    ld d, h                                       ; $651c: $54
    rst $38                                       ; $651d: $ff
    sbc h                                         ; $651e: $9c
    ld l, $21                                     ; $651f: $2e $21
    ld hl, $0110                                  ; $6521: $21 $10 $01
    rst $20                                       ; $6524: $e7
    ret                                           ; $6525: $c9


    adc [hl]                                      ; $6526: $8e
    sbc $5d                                       ; $6527: $de $5d
    ret z                                         ; $6529: $c8

    ld d, h                                       ; $652a: $54
    dec de                                        ; $652b: $1b
    rst $30                                       ; $652c: $f7
    ld e, d                                       ; $652d: $5a
    ld [hl+], a                                   ; $652e: $22
    ld [hl], $7a                                  ; $652f: $36 $7a
    ret nz                                        ; $6531: $c0

    ei                                            ; $6532: $fb
    adc d                                         ; $6533: $8a
    ld [hl-], a                                   ; $6534: $32
    xor $19                                       ; $6535: $ee $19
    ld [hl+], a                                   ; $6537: $22
    rst $20                                       ; $6538: $e7
    ret                                           ; $6539: $c9


    ld a, b                                       ; $653a: $78
    ld [de], a                                    ; $653b: $12
    cp l                                          ; $653c: $bd
    sub e                                         ; $653d: $93
    ld e, $bd                                     ; $653e: $1e $bd
    call z, $093c                                 ; $6540: $cc $3c $09
    ld b, h                                       ; $6543: $44
    rst $20                                       ; $6544: $e7
    ret                                           ; $6545: $c9


    adc [hl]                                      ; $6546: $8e
    sbc $5d                                       ; $6547: $de $5d
    ret z                                         ; $6549: $c8

    ld d, h                                       ; $654a: $54
    dec de                                        ; $654b: $1b
    rst $30                                       ; $654c: $f7
    add d                                         ; $654d: $82
    ld [$c9e7], sp                                ; $654e: $08 $e7 $c9
    adc [hl]                                      ; $6551: $8e
    sbc $5d                                       ; $6552: $de $5d
    ret z                                         ; $6554: $c8

    ld d, h                                       ; $6555: $54
    dec de                                        ; $6556: $1b
    rst $30                                       ; $6557: $f7
    add d                                         ; $6558: $82
    ld [$c9e7], sp                                ; $6559: $08 $e7 $c9
    adc [hl]                                      ; $655c: $8e
    sbc $5d                                       ; $655d: $de $5d
    ret z                                         ; $655f: $c8

    ld d, h                                       ; $6560: $54
    dec de                                        ; $6561: $1b
    rst $30                                       ; $6562: $f7
    add d                                         ; $6563: $82
    ld [$c9e7], sp                                ; $6564: $08 $e7 $c9
    adc [hl]                                      ; $6567: $8e
    ld e, $ce                                     ; $6568: $1e $ce
    rst $28                                       ; $656a: $ef
    pop bc                                        ; $656b: $c1
    jr z, @+$48                                   ; $656c: $28 $46

    push de                                       ; $656e: $d5
    sbc [hl]                                      ; $656f: $9e
    add e                                         ; $6570: $83
    ld sp, $91de                                  ; $6571: $31 $de $91
    ld [hl], e                                    ; $6574: $73
    ld [$e744], sp                                ; $6575: $08 $44 $e7
    ret                                           ; $6578: $c9


    adc [hl]                                      ; $6579: $8e
    sbc $1d                                       ; $657a: $de $1d
    ld sp, hl                                     ; $657c: $f9
    sub l                                         ; $657d: $95
    ld [hl], e                                    ; $657e: $73
    daa                                           ; $657f: $27
    sub h                                         ; $6580: $94
    add [hl]                                      ; $6581: $86
    adc a                                         ; $6582: $8f
    dec sp                                        ; $6583: $3b
    push af                                       ; $6584: $f5
    jr c, @-$2b                                   ; $6585: $38 $d3

    ld [c], a                                     ; $6587: $e2
    rst $10                                       ; $6588: $d7
    sub $3a                                       ; $6589: $d6 $3a
    sub c                                         ; $658b: $91
    ld c, h                                       ; $658c: $4c
    ld a, [$0e72]                                 ; $658d: $fa $72 $0e

Jump_051_6590:
    ld de, $c9e7                                  ; $6590: $11 $e7 $c9
    adc [hl]                                      ; $6593: $8e
    sbc $1d                                       ; $6594: $de $1d
    add sp, -$0e                                  ; $6596: $e8 $f2
    and b                                         ; $6598: $a0
    and l                                         ; $6599: $a5
    xor $cb                                       ; $659a: $ee $cb
    db $e4                                        ; $659c: $e4
    ld d, a                                       ; $659d: $57
    adc $9d                                       ; $659e: $ce $9d
    ld d, b                                       ; $65a0: $50
    ld a, [de]                                    ; $65a1: $1a
    ld c, $11                                     ; $65a2: $0e $11
    rst $20                                       ; $65a4: $e7
    ret                                           ; $65a5: $c9


    adc [hl]                                      ; $65a6: $8e
    sbc $1d                                       ; $65a7: $de $1d
    add [hl]                                      ; $65a9: $86
    inc h                                         ; $65aa: $24
    cp e                                          ; $65ab: $bb
    ld e, h                                       ; $65ac: $5c
    ld d, c                                       ; $65ad: $51
    sbc c                                         ; $65ae: $99
    inc d                                         ; $65af: $14
    and l                                         ; $65b0: $a5
    push de                                       ; $65b1: $d5
    ld hl, $0110                                  ; $65b2: $21 $10 $01
    rst $20                                       ; $65b5: $e7
    ret                                           ; $65b6: $c9


    adc [hl]                                      ; $65b7: $8e
    sbc $1d                                       ; $65b8: $de $1d
    and b                                         ; $65ba: $a0
    db $ec                                        ; $65bb: $ec
    ld l, l                                       ; $65bc: $6d
    call nz, $fbd0                                ; $65bd: $c4 $d0 $fb
    ld [hl-], a                                   ; $65c0: $32
    ld sp, hl                                     ; $65c1: $f9
    sub l                                         ; $65c2: $95
    ld [hl], e                                    ; $65c3: $73
    daa                                           ; $65c4: $27
    sub h                                         ; $65c5: $94
    add [hl]                                      ; $65c6: $86
    ld b, e                                       ; $65c7: $43
    inc b                                         ; $65c8: $04
    rst $20                                       ; $65c9: $e7
    ret                                           ; $65ca: $c9


    adc [hl]                                      ; $65cb: $8e
    sbc $5d                                       ; $65cc: $de $5d
    ld a, [$9148]                                 ; $65ce: $fa $48 $91
    sub b                                         ; $65d1: $90
    ld c, [hl]                                    ; $65d2: $4e
    jr z, jr_051_65e2                             ; $65d3: $28 $0d

    add a                                         ; $65d5: $87
    ld [$c9e7], sp                                ; $65d6: $08 $e7 $c9
    adc [hl]                                      ; $65d9: $8e
    sbc $1d                                       ; $65da: $de $1d
    pop de                                        ; $65dc: $d1
    dec hl                                        ; $65dd: $2b
    ld a, e                                       ; $65de: $7b
    ld a, [hl-]                                   ; $65df: $3a
    pop af                                        ; $65e0: $f1
    ld c, e                                       ; $65e1: $4b

jr_051_65e2:
    ld b, d                                       ; $65e2: $42
    jr nz, jr_051_65e7                            ; $65e3: $20 $02

    rst $20                                       ; $65e5: $e7
    ret                                           ; $65e6: $c9


jr_051_65e7:
    adc [hl]                                      ; $65e7: $8e
    sbc $1d                                       ; $65e8: $de $1d
    or b                                          ; $65ea: $b0
    ld d, e                                       ; $65eb: $53
    ld a, e                                       ; $65ec: $7b
    sbc e                                         ; $65ed: $9b
    rst $38                                       ; $65ee: $ff
    push hl                                       ; $65ef: $e5
    adc d                                         ; $65f0: $8a
    ld a, d                                       ; $65f1: $7a
    add hl, sp                                    ; $65f2: $39
    sub e                                         ; $65f3: $93
    ld e, a                                       ; $65f4: $5f
    add hl, sp                                    ; $65f5: $39
    ld [hl], a                                    ; $65f6: $77
    ld b, d                                       ; $65f7: $42
    ld l, c                                       ; $65f8: $69

Jump_051_65f9:
    jr c, jr_051_663f                             ; $65f9: $38 $44

    rst $20                                       ; $65fb: $e7
    ret                                           ; $65fc: $c9


    adc [hl]                                      ; $65fd: $8e
    sbc $dd                                       ; $65fe: $de $dd
    inc de                                        ; $6600: $13
    cp l                                          ; $6601: $bd
    jp c, $9189                                   ; $6602: $da $89 $91

    db $ec                                        ; $6605: $ec
    cpl                                           ; $6606: $2f
    sub e                                         ; $6607: $93
    ld e, a                                       ; $6608: $5f
    add hl, sp                                    ; $6609: $39
    ld [hl], a                                    ; $660a: $77
    ld b, d                                       ; $660b: $42
    ld l, c                                       ; $660c: $69
    jr c, @+$46                                   ; $660d: $38 $44

    rst $20                                       ; $660f: $e7
    ret                                           ; $6610: $c9


    or h                                          ; $6611: $b4
    ld [$d769], a                                 ; $6612: $ea $69 $d7
    cp l                                          ; $6615: $bd
    ld a, h                                       ; $6616: $7c
    ld b, b                                       ; $6617: $40
    ei                                            ; $6618: $fb
    and $b0                                       ; $6619: $e6 $b0
    cpl                                           ; $661b: $2f
    ld h, a                                       ; $661c: $67
    inc a                                         ; $661d: $3c
    ld d, h                                       ; $661e: $54
    ld a, h                                       ; $661f: $7c
    add c                                         ; $6620: $81
    ld [$c9e7], sp                                ; $6621: $08 $e7 $c9
    adc [hl]                                      ; $6624: $8e
    sbc $9d                                       ; $6625: $de $9d
    dec c                                         ; $6627: $0d
    add hl, de                                    ; $6628: $19
    ld [hl], a                                    ; $6629: $77
    ld [$35ec], a                                 ; $662a: $ea $ec $35
    dec de                                        ; $662d: $1b
    ccf                                           ; $662e: $3f
    ld h, h                                       ; $662f: $64
    and l                                         ; $6630: $a5
    adc a                                         ; $6631: $8f
    dec sp                                        ; $6632: $3b
    ld [hl], l                                    ; $6633: $75
    sbc d                                         ; $6634: $9a
    sbc c                                         ; $6635: $99
    ld e, b                                       ; $6636: $58
    xor c                                         ; $6637: $a9
    ld h, l                                       ; $6638: $65
    ld h, d                                       ; $6639: $62
    ld d, h                                       ; $663a: $54
    ld [$e744], sp                                ; $663b: $08 $44 $e7
    ret                                           ; $663e: $c9


jr_051_663f:
    adc [hl]                                      ; $663f: $8e
    sbc $9d                                       ; $6640: $de $9d
    dec c                                         ; $6642: $0d
    ld e, c                                       ; $6643: $59
    adc c                                         ; $6644: $89
    db $ed                                        ; $6645: $ed
    sbc d                                         ; $6646: $9a
    adc l                                         ; $6647: $8d
    rra                                           ; $6648: $1f
    or d                                          ; $6649: $b2
    jp nc, $9dc7                                  ; $664a: $d2 $c7 $9d

    ld a, [hl-]                                   ; $664d: $3a
    call $ac4c                                    ; $664e: $cd $4c $ac
    call nc, Call_000_3132                        ; $6651: $d4 $32 $31
    ld a, [hl+]                                   ; $6654: $2a
    inc b                                         ; $6655: $04
    ld [hl+], a                                   ; $6656: $22
    rst $20                                       ; $6657: $e7
    ret                                           ; $6658: $c9


    adc [hl]                                      ; $6659: $8e
    sbc $9d                                       ; $665a: $de $9d
    dec c                                         ; $665c: $0d
    sbc c                                         ; $665d: $99
    ld [hl], a                                    ; $665e: $77
    ld e, b                                       ; $665f: $58
    ld h, [hl]                                    ; $6660: $66
    call z, $0fc6                                 ; $6661: $cc $c6 $0f
    ld e, c                                       ; $6664: $59
    jp hl                                         ; $6665: $e9


    db $e3                                        ; $6666: $e3
    ld c, [hl]                                    ; $6667: $4e
    sbc l                                         ; $6668: $9d

Call_051_6669:
    ld h, [hl]                                    ; $6669: $66
    ld h, $56                                     ; $666a: $26 $56
    ld l, d                                       ; $666c: $6a
    sbc c                                         ; $666d: $99
    jr @+$17                                      ; $666e: $18 $15

    ld [bc], a                                    ; $6670: $02
    ld de, $c9e7                                  ; $6671: $11 $e7 $c9
    adc [hl]                                      ; $6674: $8e
    sbc $9d                                       ; $6675: $de $9d
    dec c                                         ; $6677: $0d
    add hl, de                                    ; $6678: $19
    rst $00                                       ; $6679: $c7
    inc a                                         ; $667a: $3c
    jp c, Jump_051_6cc6                           ; $667b: $da $c6 $6c

    db $fc                                        ; $667e: $fc
    sub b                                         ; $667f: $90
    sub l                                         ; $6680: $95
    ld a, $ee                                     ; $6681: $3e $ee
    call nc, Call_051_6669                        ; $6683: $d4 $69 $66
    ld h, d                                       ; $6686: $62
    and l                                         ; $6687: $a5
    sub [hl]                                      ; $6688: $96
    adc c                                         ; $6689: $89
    ld d, c                                       ; $668a: $51
    ld hl, $0110                                  ; $668b: $21 $10 $01
    rst $20                                       ; $668e: $e7
    ret                                           ; $668f: $c9


    adc [hl]                                      ; $6690: $8e
    sbc $9d                                       ; $6691: $de $9d
    dec c                                         ; $6693: $0d
    add hl, de                                    ; $6694: $19
    rla                                           ; $6695: $17
    call nc, Call_000_3663                        ; $6696: $d4 $63 $36
    ld a, [hl]                                    ; $6699: $7e
    ret z                                         ; $669a: $c8

    ld c, d                                       ; $669b: $4a
    rra                                           ; $669c: $1f
    ld [hl], a                                    ; $669d: $77
    ld [$3334], a                                 ; $669e: $ea $34 $33
    or c                                          ; $66a1: $b1
    ld d, d                                       ; $66a2: $52
    set 0, h                                      ; $66a3: $cb $c4
    xor b                                         ; $66a5: $a8
    db $10                                        ; $66a6: $10

Jump_051_66a7:
    adc b                                         ; $66a7: $88
    nop                                           ; $66a8: $00
    rst $20                                       ; $66a9: $e7
    ret                                           ; $66aa: $c9


    adc [hl]                                      ; $66ab: $8e
    sbc $9d                                       ; $66ac: $de $9d
    dec c                                         ; $66ae: $0d
    ld e, c                                       ; $66af: $59
    ld h, [hl]                                    ; $66b0: $66
    ld e, $ee                                     ; $66b1: $1e $ee
    ld sp, $3f1b                                  ; $66b3: $31 $1b $3f
    ld h, h                                       ; $66b6: $64
    and l                                         ; $66b7: $a5
    adc a                                         ; $66b8: $8f
    dec sp                                        ; $66b9: $3b
    ld [hl], l                                    ; $66ba: $75
    sbc d                                         ; $66bb: $9a
    sbc c                                         ; $66bc: $99
    ld e, b                                       ; $66bd: $58
    xor c                                         ; $66be: $a9
    ld h, l                                       ; $66bf: $65
    ld h, d                                       ; $66c0: $62
    ld d, h                                       ; $66c1: $54
    ld [$e744], sp                                ; $66c2: $08 $44 $e7
    ret                                           ; $66c5: $c9


    adc [hl]                                      ; $66c6: $8e
    sbc $5d                                       ; $66c7: $de $5d
    ret z                                         ; $66c9: $c8

    ld d, h                                       ; $66ca: $54
    dec de                                        ; $66cb: $1b
    rst $30                                       ; $66cc: $f7
    add d                                         ; $66cd: $82
    ld [$c9e7], sp                                ; $66ce: $08 $e7 $c9
    adc [hl]                                      ; $66d1: $8e
    sbc $5d                                       ; $66d2: $de $5d
    ret z                                         ; $66d4: $c8

    ld d, h                                       ; $66d5: $54
    dec de                                        ; $66d6: $1b
    rst $30                                       ; $66d7: $f7
    add d                                         ; $66d8: $82
    ld [$c9e7], sp                                ; $66d9: $08 $e7 $c9
    adc [hl]                                      ; $66dc: $8e
    sbc $5d                                       ; $66dd: $de $5d
    ret z                                         ; $66df: $c8

    ld d, h                                       ; $66e0: $54
    dec de                                        ; $66e1: $1b
    rst $30                                       ; $66e2: $f7
    add d                                         ; $66e3: $82
    ld [$c9e7], sp                                ; $66e4: $08 $e7 $c9
    adc [hl]                                      ; $66e7: $8e
    sbc $5d                                       ; $66e8: $de $5d
    ret z                                         ; $66ea: $c8

    ld d, h                                       ; $66eb: $54
    dec de                                        ; $66ec: $1b
    rst $30                                       ; $66ed: $f7
    add d                                         ; $66ee: $82
    ld [$c9e7], sp                                ; $66ef: $08 $e7 $c9
    adc [hl]                                      ; $66f2: $8e
    sbc $5d                                       ; $66f3: $de $5d
    ret z                                         ; $66f5: $c8

    ld d, h                                       ; $66f6: $54
    dec de                                        ; $66f7: $1b
    rst $30                                       ; $66f8: $f7
    add d                                         ; $66f9: $82
    ld [$c9e7], sp                                ; $66fa: $08 $e7 $c9
    adc [hl]                                      ; $66fd: $8e
    sbc $5d                                       ; $66fe: $de $5d
    ret z                                         ; $6700: $c8

    ld d, h                                       ; $6701: $54
    dec de                                        ; $6702: $1b
    rst $30                                       ; $6703: $f7
    add d                                         ; $6704: $82
    ld [$c9e7], sp                                ; $6705: $08 $e7 $c9
    adc [hl]                                      ; $6708: $8e
    sbc $1d                                       ; $6709: $de $1d
    sbc $86                                       ; $670b: $de $86
    adc e                                         ; $670d: $8b
    sbc h                                         ; $670e: $9c
    ld c, l                                       ; $670f: $4d
    rrca                                          ; $6710: $0f
    ret c                                         ; $6711: $d8

    cp a                                          ; $6712: $bf
    adc $e8                                       ; $6713: $ce $e8
    and [hl]                                      ; $6715: $a6
    ld c, b                                       ; $6716: $48
    ld e, [hl]                                    ; $6717: $5e
    daa                                           ; $6718: $27
    inc d                                         ; $6719: $14
    ld [hl+], a                                   ; $671a: $22
    rst $20                                       ; $671b: $e7
    ret                                           ; $671c: $c9


    adc [hl]                                      ; $671d: $8e
    sbc $5d                                       ; $671e: $de $5d
    cp b                                          ; $6720: $b8
    rst $08                                       ; $6721: $cf
    dec c                                         ; $6722: $0d
    push af                                       ; $6723: $f5
    sub c                                         ; $6724: $91
    ld e, a                                       ; $6725: $5f
    add hl, sp                                    ; $6726: $39
    ld [hl], a                                    ; $6727: $77
    ld b, d                                       ; $6728: $42
    ld hl, $e702                                  ; $6729: $21 $02 $e7
    ret                                           ; $672c: $c9


    adc [hl]                                      ; $672d: $8e
    sbc $5d                                       ; $672e: $de $5d
    cp b                                          ; $6730: $b8
    rst $08                                       ; $6731: $cf
    dec c                                         ; $6732: $0d
    push af                                       ; $6733: $f5
    sub c                                         ; $6734: $91
    ld e, a                                       ; $6735: $5f
    add hl, sp                                    ; $6736: $39
    ld [hl], a                                    ; $6737: $77
    ld b, d                                       ; $6738: $42
    ld hl, $e702                                  ; $6739: $21 $02 $e7
    ret                                           ; $673c: $c9


    adc [hl]                                      ; $673d: $8e
    sbc $9d                                       ; $673e: $de $9d
    dec c                                         ; $6740: $0d
    add hl, de                                    ; $6741: $19
    ld [hl], a                                    ; $6742: $77
    ld [$3334], a                                 ; $6743: $ea $34 $33
    or c                                          ; $6746: $b1
    ld d, d                                       ; $6747: $52
    inc hl                                        ; $6748: $23
    and [hl]                                      ; $6749: $a6
    ei                                            ; $674a: $fb
    ld e, d                                       ; $674b: $5a
    db $d3                                        ; $674c: $d3
    ld hl, $0110                                  ; $674d: $21 $10 $01
    rst $20                                       ; $6750: $e7
    ret                                           ; $6751: $c9


    adc [hl]                                      ; $6752: $8e
    sbc $9d                                       ; $6753: $de $9d
    ld a, [hl]                                    ; $6755: $7e
    jr nc, jr_051_67ce                            ; $6756: $30 $76

    dec l                                         ; $6758: $2d
    ret                                           ; $6759: $c9


    pop hl                                        ; $675a: $e1
    db $10                                        ; $675b: $10
    ld bc, $c9e7                                  ; $675c: $01 $e7 $c9
    adc [hl]                                      ; $675f: $8e
    ld e, $ce                                     ; $6760: $1e $ce
    adc a                                         ; $6762: $8f
    ei                                            ; $6763: $fb
    scf                                           ; $6764: $37
    ld b, l                                       ; $6765: $45
    call c, $0fd4                                 ; $6766: $dc $d4 $0f
    rst $30                                       ; $6769: $f7
    db $10                                        ; $676a: $10
    adc b                                         ; $676b: $88
    nop                                           ; $676c: $00
    rst $20                                       ; $676d: $e7
    ret                                           ; $676e: $c9


    adc [hl]                                      ; $676f: $8e
    ld e, [hl]                                    ; $6770: $5e
    ld [c], a                                     ; $6771: $e2
    dec h                                         ; $6772: $25
    call c, $f7a9                                 ; $6773: $dc $a9 $f7
    ld h, b                                       ; $6776: $60
    inc d                                         ; $6777: $14
    and e                                         ; $6778: $a3
    ld l, d                                       ; $6779: $6a
    rst $08                                       ; $677a: $cf
    db $10                                        ; $677b: $10
    ld bc, $c9e7                                  ; $677c: $01 $e7 $c9
    adc [hl]                                      ; $677f: $8e
    sbc $dd                                       ; $6780: $de $dd
    ld b, e                                       ; $6782: $43
    xor c                                         ; $6783: $a9
    cp [hl]                                       ; $6784: $be
    ld [hl], $2f                                  ; $6785: $36 $2f
    ld a, e                                       ; $6787: $7b
    and d                                         ; $6788: $a2
    ld a, [bc]                                    ; $6789: $0a
    ld [hl+], a                                   ; $678a: $22
    rst $20                                       ; $678b: $e7
    ret                                           ; $678c: $c9


    adc [hl]                                      ; $678d: $8e
    sbc $1d                                       ; $678e: $de $1d
    ld sp, $d7dd                                  ; $6790: $31 $dd $d7
    sbc d                                         ; $6793: $9a
    ld c, $19                                     ; $6794: $0e $19
    adc $8f                                       ; $6796: $ce $8f
    dec sp                                        ; $6798: $3b
    ld [hl], l                                    ; $6799: $75
    or $9a                                        ; $679a: $f6 $9a
    adc $cb                                       ; $679c: $ce $cb
    dec d                                         ; $679e: $15
    dec d                                         ; $679f: $15
    ld [bc], a                                    ; $67a0: $02
    ld de, $c9e7                                  ; $67a1: $11 $e7 $c9
    adc [hl]                                      ; $67a4: $8e
    sbc $1d                                       ; $67a5: $de $1d
    ld sp, $d7dd                                  ; $67a7: $31 $dd $d7
    sbc d                                         ; $67aa: $9a
    ld c, $19                                     ; $67ab: $0e $19
    adc $af                                       ; $67ad: $ce $af
    call nz, Call_051_4d76                        ; $67af: $c4 $76 $4d
    rst $20                                       ; $67b2: $e7
    push hl                                       ; $67b3: $e5
    adc d                                         ; $67b4: $8a
    ld a, [bc]                                    ; $67b5: $0a
    add c                                         ; $67b6: $81
    ld [$c9e7], sp                                ; $67b7: $08 $e7 $c9
    adc [hl]                                      ; $67ba: $8e
    sbc $1d                                       ; $67bb: $de $1d
    ld sp, $d7dd                                  ; $67bd: $31 $dd $d7
    sbc d                                         ; $67c0: $9a
    ld c, $99                                     ; $67c1: $0e $99
    ld [hl], a                                    ; $67c3: $77
    ld e, b                                       ; $67c4: $58
    ld h, [hl]                                    ; $67c5: $66
    inc c                                         ; $67c6: $0c
    rst $20                                       ; $67c7: $e7
    and a                                         ; $67c8: $a7
    di                                            ; $67c9: $f3
    ld [hl], d                                    ; $67ca: $72
    ld b, l                                       ; $67cb: $45
    add l                                         ; $67cc: $85
    ld b, b                                       ; $67cd: $40

jr_051_67ce:
    inc b                                         ; $67ce: $04
    rst $20                                       ; $67cf: $e7
    ret                                           ; $67d0: $c9


    adc [hl]                                      ; $67d1: $8e
    sbc $1d                                       ; $67d2: $de $1d
    ld sp, $d7dd                                  ; $67d4: $31 $dd $d7
    sbc d                                         ; $67d7: $9a
    ld c, $19                                     ; $67d8: $0e $19
    adc $8f                                       ; $67da: $ce $8f
    ld h, e                                       ; $67dc: $63
    ld e, $6d                                     ; $67dd: $1e $6d
    ld h, e                                       ; $67df: $63
    ld a, [hl-]                                   ; $67e0: $3a
    cpl                                           ; $67e1: $2f
    ld d, a                                       ; $67e2: $57
    ld d, h                                       ; $67e3: $54
    ld [$e744], sp                                ; $67e4: $08 $44 $e7
    ret                                           ; $67e7: $c9


    adc [hl]                                      ; $67e8: $8e
    sbc $1d                                       ; $67e9: $de $1d
    ld sp, $d7dd                                  ; $67eb: $31 $dd $d7
    sbc d                                         ; $67ee: $9a
    ld c, $19                                     ; $67ef: $0e $19
    adc $8f                                       ; $67f1: $ce $8f
    dec bc                                        ; $67f3: $0b
    ld [$9d31], a                                 ; $67f4: $ea $31 $9d
    sub a                                         ; $67f7: $97
    dec hl                                        ; $67f8: $2b
    ld a, [hl+]                                   ; $67f9: $2a
    inc b                                         ; $67fa: $04
    ld [hl+], a                                   ; $67fb: $22
    rst $20                                       ; $67fc: $e7
    ret                                           ; $67fd: $c9


    adc [hl]                                      ; $67fe: $8e
    sbc $1d                                       ; $67ff: $de $1d
    ld sp, $d7dd                                  ; $6801: $31 $dd $d7
    sbc d                                         ; $6804: $9a
    ld c, $19                                     ; $6805: $0e $19
    adc $2f                                       ; $6807: $ce $2f
    inc sp                                        ; $6809: $33
    rrca                                          ; $680a: $0f
    rst $30                                       ; $680b: $f7
    sbc b                                         ; $680c: $98
    adc $cb                                       ; $680d: $ce $cb
    dec d                                         ; $680f: $15
    dec d                                         ; $6810: $15
    ld [bc], a                                    ; $6811: $02
    ld de, $c9e7                                  ; $6812: $11 $e7 $c9
    adc [hl]                                      ; $6815: $8e
    sbc $1d                                       ; $6816: $de $1d
    ld sp, $d7dd                                  ; $6818: $31 $dd $d7
    sbc d                                         ; $681b: $9a
    ld c, $19                                     ; $681c: $0e $19
    adc $2f                                       ; $681e: $ce $2f
    inc sp                                        ; $6820: $33
    inc de                                        ; $6821: $13
    or c                                          ; $6822: $b1
    ld sp, $979d                                  ; $6823: $31 $9d $97
    dec hl                                        ; $6826: $2b
    ld a, [hl+]                                   ; $6827: $2a
    inc b                                         ; $6828: $04
    ld [hl+], a                                   ; $6829: $22
    rst $20                                       ; $682a: $e7
    ret                                           ; $682b: $c9


    adc [hl]                                      ; $682c: $8e
    sbc $9d                                       ; $682d: $de $9d
    ld d, $bf                                     ; $682f: $16 $bf
    ld a, [hl-]                                   ; $6831: $3a
    inc h                                         ; $6832: $24
    cpl                                           ; $6833: $2f
    sbc l                                         ; $6834: $9d
    ld hl, sp+$25                                 ; $6835: $f8 $25
    db $10                                        ; $6837: $10
    ld bc, $c9e7                                  ; $6838: $01 $e7 $c9
    adc [hl]                                      ; $683b: $8e
    sbc $1d                                       ; $683c: $de $1d
    ld sp, hl                                     ; $683e: $f9
    sub l                                         ; $683f: $95
    ld [hl], e                                    ; $6840: $73
    daa                                           ; $6841: $27
    sub h                                         ; $6842: $94
    add [hl]                                      ; $6843: $86
    adc a                                         ; $6844: $8f
    dec sp                                        ; $6845: $3b
    push af                                       ; $6846: $f5
    cp h                                          ; $6847: $bc
    call $c4ff                                    ; $6848: $cd $ff $c4
    ld c, b                                       ; $684b: $48
    halt                                          ; $684c: $76
    db $ed                                        ; $684d: $ed
    ld h, [hl]                                    ; $684e: $66
    scf                                           ; $684f: $37
    ld a, l                                       ; $6850: $7d
    dec bc                                        ; $6851: $0b
    ld [hl+], a                                   ; $6852: $22
    rst $20                                       ; $6853: $e7
    ret                                           ; $6854: $c9


    adc [hl]                                      ; $6855: $8e
    sbc $5d                                       ; $6856: $de $5d
    ld h, [hl]                                    ; $6858: $66
    ld h, $44                                     ; $6859: $26 $44
    ld c, e                                       ; $685b: $4b
    ld [hl-], a                                   ; $685c: $32
    rst $30                                       ; $685d: $f7
    ld e, c                                       ; $685e: $59
    ld a, [hl+]                                   ; $685f: $2a
    cp [hl]                                       ; $6860: $be
    ld b, b                                       ; $6861: $40
    inc b                                         ; $6862: $04
    rst $20                                       ; $6863: $e7
    ret                                           ; $6864: $c9


    adc [hl]                                      ; $6865: $8e
    sbc $5d                                       ; $6866: $de $5d
    ld a, [$ffa6]                                 ; $6868: $fa $a6 $ff
    dec [hl]                                      ; $686b: $35
    ld e, $24                                     ; $686c: $1e $24
    inc e                                         ; $686e: $1c
    ld [hl+], a                                   ; $686f: $22
    rst $20                                       ; $6870: $e7
    ret                                           ; $6871: $c9


    adc [hl]                                      ; $6872: $8e
    sbc $5d                                       ; $6873: $de $5d
    ld a, [$ffa6]                                 ; $6875: $fa $a6 $ff
    dec [hl]                                      ; $6878: $35
    ld e, $24                                     ; $6879: $1e $24
    inc e                                         ; $687b: $1c
    ld [hl+], a                                   ; $687c: $22
    rst $20                                       ; $687d: $e7
    ret                                           ; $687e: $c9


    adc [hl]                                      ; $687f: $8e
    sbc $1d                                       ; $6880: $de $1d
    sbc $86                                       ; $6882: $de $86
    adc e                                         ; $6884: $8b
    sbc h                                         ; $6885: $9c
    ld c, l                                       ; $6886: $4d

Jump_051_6887:
    rrca                                          ; $6887: $0f
    ld [hl], h                                    ; $6888: $74
    ld a, [bc]                                    ; $6889: $0a
    cp b                                          ; $688a: $b8
    sub c                                         ; $688b: $91
    ld d, d                                       ; $688c: $52
    push af                                       ; $688d: $f5
    ld a, a                                       ; $688e: $7f
    ld e, [hl]                                    ; $688f: $5e
    daa                                           ; $6890: $27
    inc d                                         ; $6891: $14
    ld [hl+], a                                   ; $6892: $22
    rst $20                                       ; $6893: $e7
    ret                                           ; $6894: $c9


    adc [hl]                                      ; $6895: $8e
    sbc $1d                                       ; $6896: $de $1d
    ld sp, hl                                     ; $6898: $f9
    sub l                                         ; $6899: $95
    ld [hl], e                                    ; $689a: $73
    daa                                           ; $689b: $27
    sub h                                         ; $689c: $94
    add [hl]                                      ; $689d: $86
    adc a                                         ; $689e: $8f
    dec sp                                        ; $689f: $3b
    push af                                       ; $68a0: $f5
    ld l, b                                       ; $68a1: $68
    and d                                         ; $68a2: $a2
    call nc, $ceaf                                ; $68a3: $d4 $af $ce
    sbc [hl]                                      ; $68a6: $9e
    ret c                                         ; $68a7: $d8

    dec de                                        ; $68a8: $1b
    dec c                                         ; $68a9: $0d
    ld de, $c9e7                                  ; $68aa: $11 $e7 $c9
    adc [hl]                                      ; $68ad: $8e
    sbc $1d                                       ; $68ae: $de $1d
    add sp, -$4e                                  ; $68b0: $e8 $b2
    ld b, l                                       ; $68b2: $45
    rlca                                          ; $68b3: $07
    adc $50                                       ; $68b4: $ce $50
    xor [hl]                                      ; $68b6: $ae
    add e                                         ; $68b7: $83
    sub l                                         ; $68b8: $95
    rst $10                                       ; $68b9: $d7
    add hl, bc                                    ; $68ba: $09
    add l                                         ; $68bb: $85
    ld [$c9e7], sp                                ; $68bc: $08 $e7 $c9
    adc [hl]                                      ; $68bf: $8e
    sbc $1d                                       ; $68c0: $de $1d
    ld sp, hl                                     ; $68c2: $f9
    sub l                                         ; $68c3: $95
    ld [hl], e                                    ; $68c4: $73

Call_051_68c5:
    daa                                           ; $68c5: $27
    sub h                                         ; $68c6: $94
    add [hl]                                      ; $68c7: $86
    adc a                                         ; $68c8: $8f
    dec sp                                        ; $68c9: $3b
    push af                                       ; $68ca: $f5
    cp h                                          ; $68cb: $bc
    call $b6ff                                    ; $68cc: $cd $ff $b6
    ld e, c                                       ; $68cf: $59
    add hl, hl                                    ; $68d0: $29
    sub d                                         ; $68d1: $92
    adc c                                         ; $68d2: $89
    sub c                                         ; $68d3: $91
    db $ec                                        ; $68d4: $ec
    db $10                                        ; $68d5: $10
    ld bc, $c9e7                                  ; $68d6: $01 $e7 $c9
    adc [hl]                                      ; $68d9: $8e
    sbc $1d                                       ; $68da: $de $1d
    sbc $86                                       ; $68dc: $de $86
    adc e                                         ; $68de: $8b
    sbc h                                         ; $68df: $9c
    ld c, l                                       ; $68e0: $4d
    rrca                                          ; $68e1: $0f
    ld a, h                                       ; $68e2: $7c
    ld [hl], d                                    ; $68e3: $72
    cp e                                          ; $68e4: $bb
    db $e3                                        ; $68e5: $e3
    rst $38                                       ; $68e6: $ff
    cp h                                          ; $68e7: $bc
    ld c, [hl]                                    ; $68e8: $4e
    jr z, jr_051_692f                             ; $68e9: $28 $44

    rst $20                                       ; $68eb: $e7
    ret                                           ; $68ec: $c9


    adc [hl]                                      ; $68ed: $8e
    sbc $1d                                       ; $68ee: $de $1d
    sbc $86                                       ; $68f0: $de $86
    adc e                                         ; $68f2: $8b
    sbc h                                         ; $68f3: $9c
    ld c, l                                       ; $68f4: $4d
    rst $28                                       ; $68f5: $ef
    adc c                                         ; $68f6: $89
    inc d                                         ; $68f7: $14
    ld e, $79                                     ; $68f8: $1e $79
    sbc l                                         ; $68fa: $9d
    ld d, b                                       ; $68fb: $50
    adc b                                         ; $68fc: $88
    nop                                           ; $68fd: $00
    rst $20                                       ; $68fe: $e7

jr_051_68ff:
    ret                                           ; $68ff: $c9


    adc [hl]                                      ; $6900: $8e
    sbc $1d                                       ; $6901: $de $1d
    sbc $86                                       ; $6903: $de $86
    adc e                                         ; $6905: $8b
    sbc h                                         ; $6906: $9c
    ld c, l                                       ; $6907: $4d
    rst $28                                       ; $6908: $ef
    add hl, bc                                    ; $6909: $09
    sbc $26                                       ; $690a: $de $26
    pop af                                        ; $690c: $f1
    cp h                                          ; $690d: $bc
    ld c, [hl]                                    ; $690e: $4e
    jr z, jr_051_6955                             ; $690f: $28 $44

    rst $20                                       ; $6911: $e7
    ret                                           ; $6912: $c9


    adc [hl]                                      ; $6913: $8e
    sbc $5d                                       ; $6914: $de $5d
    cp b                                          ; $6916: $b8
    rst $28                                       ; $6917: $ef
    sub a                                         ; $6918: $97
    adc d                                         ; $6919: $8a
    xor $84                                       ; $691a: $ee $84
    ld b, d                                       ; $691c: $42
    inc b                                         ; $691d: $04
    rst $20                                       ; $691e: $e7
    ret                                           ; $691f: $c9


    adc [hl]                                      ; $6920: $8e
    sbc $1d                                       ; $6921: $de $1d
    ld sp, hl                                     ; $6923: $f9
    sub l                                         ; $6924: $95
    ld [hl], e                                    ; $6925: $73
    daa                                           ; $6926: $27
    sub h                                         ; $6927: $94
    add [hl]                                      ; $6928: $86
    adc a                                         ; $6929: $8f
    dec sp                                        ; $692a: $3b
    push af                                       ; $692b: $f5
    cp b                                          ; $692c: $b8
    ld d, e                                       ; $692d: $53
    db $eb                                        ; $692e: $eb

jr_051_692f:
    dec h                                         ; $692f: $25
    or $5f                                        ; $6930: $f6 $5f
    ld d, c                                       ; $6932: $51
    sbc c                                         ; $6933: $99
    jr jr_051_68ff                                ; $6934: $18 $c9

    ld c, $11                                     ; $6936: $0e $11
    rst $20                                       ; $6938: $e7
    ret                                           ; $6939: $c9


    adc [hl]                                      ; $693a: $8e
    sbc $9d                                       ; $693b: $de $9d
    or a                                          ; $693d: $b7
    pop hl                                        ; $693e: $e1
    sbc [hl]                                      ; $693f: $9e
    jp hl                                         ; $6940: $e9


    add h                                         ; $6941: $84
    jp nc, $8870                                  ; $6942: $d2 $70 $88

    nop                                           ; $6945: $00
    rst $20                                       ; $6946: $e7
    ret                                           ; $6947: $c9


    adc [hl]                                      ; $6948: $8e
    sbc $5d                                       ; $6949: $de $5d
    ret z                                         ; $694b: $c8

    ld d, h                                       ; $694c: $54
    dec de                                        ; $694d: $1b
    rst $30                                       ; $694e: $f7
    ld e, d                                       ; $694f: $5a
    ld [hl+], a                                   ; $6950: $22
    ld [hl], $7a                                  ; $6951: $36 $7a
    ret nz                                        ; $6953: $c0

    ei                                            ; $6954: $fb

jr_051_6955:
    adc d                                         ; $6955: $8a
    ld [hl-], a                                   ; $6956: $32
    xor $19                                       ; $6957: $ee $19
    ld [hl+], a                                   ; $6959: $22
    rst $20                                       ; $695a: $e7
    ret                                           ; $695b: $c9


    adc [hl]                                      ; $695c: $8e
    ld e, $ce                                     ; $695d: $1e $ce
    rrca                                          ; $695f: $0f
    adc a                                         ; $6960: $8f
    ld l, [hl]                                    ; $6961: $6e
    inc hl                                        ; $6962: $23
    ld l, d                                       ; $6963: $6a
    ld [hl], d                                    ; $6964: $72
    call $4a4c                                    ; $6965: $cd $4c $4a
    sbc e                                         ; $6968: $9b
    ld [hl], a                                    ; $6969: $77
    adc h                                         ; $696a: $8c
    add sp, -$2b                                  ; $696b: $e8 $d5
    ld c, $11                                     ; $696d: $0e $11
    rst $20                                       ; $696f: $e7
    ret                                           ; $6970: $c9


    adc [hl]                                      ; $6971: $8e
    ld e, $ce                                     ; $6972: $1e $ce
    cpl                                           ; $6974: $2f
    ld a, e                                       ; $6975: $7b
    sub a                                         ; $6976: $97
    ret c                                         ; $6977: $d8

    sub b                                         ; $6978: $90
    jp hl                                         ; $6979: $e9


    rst $10                                       ; $697a: $d7
    ld l, $33                                     ; $697b: $2e $33

Jump_051_697d:
    ld c, a                                       ; $697d: $4f
    ld [bc], a                                    ; $697e: $02
    ld de, $c9e7                                  ; $697f: $11 $e7 $c9
    adc [hl]                                      ; $6982: $8e
    sbc $dd                                       ; $6983: $de $dd
    add e                                         ; $6985: $83
    ld d, c                                       ; $6986: $51
    adc h                                         ; $6987: $8c
    xor d                                         ; $6988: $aa
    dec a                                         ; $6989: $3d
    cpl                                           ; $698a: $2f
    call nz, $19fb                                ; $698b: $c4 $fb $19
    xor l                                         ; $698e: $ad
    cp $87                                        ; $698f: $fe $87
    ld [$c9e7], sp                                ; $6991: $08 $e7 $c9
    adc [hl]                                      ; $6994: $8e
    sbc $1d                                       ; $6995: $de $1d
    ldh a, [$66]                                  ; $6997: $f0 $66
    ld [hl], c                                    ; $6999: $71
    call c, Call_051_6b15                         ; $699a: $dc $15 $6b
    ld a, [hl-]                                   ; $699d: $3a
    rrca                                          ; $699e: $0f
    scf                                           ; $699f: $37
    ld c, h                                       ; $69a0: $4c
    sub d                                         ; $69a1: $92
    adc l                                         ; $69a2: $8d
    sbc [hl]                                      ; $69a3: $9e
    db $eb                                        ; $69a4: $eb
    ld b, e                                       ; $69a5: $43
    inc b                                         ; $69a6: $04
    rst $20                                       ; $69a7: $e7
    ret                                           ; $69a8: $c9


    adc [hl]                                      ; $69a9: $8e
    sbc $1d                                       ; $69aa: $de $1d
    ldh a, [$66]                                  ; $69ac: $f0 $66
    ld [hl], c                                    ; $69ae: $71
    call c, Call_051_6b15                         ; $69af: $dc $15 $6b
    ld a, [hl-]                                   ; $69b2: $3a
    cpl                                           ; $69b3: $2f
    rra                                           ; $69b4: $1f
    rst $38                                       ; $69b5: $ff
    ld h, a                                       ; $69b6: $67
    ld d, d                                       ; $69b7: $52
    ld a, b                                       ; $69b8: $78
    xor $84                                       ; $69b9: $ee $84
    ld b, d                                       ; $69bb: $42
    inc b                                         ; $69bc: $04
    rst $20                                       ; $69bd: $e7
    ret                                           ; $69be: $c9


    adc [hl]                                      ; $69bf: $8e
    sbc $5d                                       ; $69c0: $de $5d
    ret z                                         ; $69c2: $c8

    adc b                                         ; $69c3: $88
    ld e, [hl]                                    ; $69c4: $5e
    reti                                          ; $69c5: $d9


    inc sp                                        ; $69c6: $33
    jp hl                                         ; $69c7: $e9


    inc h                                         ; $69c8: $24
    sbc l                                         ; $69c9: $9d
    add [hl]                                      ; $69ca: $86
    ld [$c9e7], sp                                ; $69cb: $08 $e7 $c9
    adc [hl]                                      ; $69ce: $8e
    sbc $1d                                       ; $69cf: $de $1d
    or b                                          ; $69d1: $b0
    ei                                            ; $69d2: $fb
    ld d, e                                       ; $69d3: $53
    ld e, d                                       ; $69d4: $5a
    ld e, [hl]                                    ; $69d5: $5e
    daa                                           ; $69d6: $27
    inc d                                         ; $69d7: $14
    ld [hl+], a                                   ; $69d8: $22
    rst $20                                       ; $69d9: $e7
    ret                                           ; $69da: $c9


    adc [hl]                                      ; $69db: $8e
    sbc $dd                                       ; $69dc: $de $dd
    inc de                                        ; $69de: $13
    scf                                           ; $69df: $37
    ld e, l                                       ; $69e0: $5d
    ld a, e                                       ; $69e1: $7b
    ld d, d                                       ; $69e2: $52
    ccf                                           ; $69e3: $3f
    inc b                                         ; $69e4: $04
    ld [hl+], a                                   ; $69e5: $22
    rst $20                                       ; $69e6: $e7
    ret                                           ; $69e7: $c9


    adc [hl]                                      ; $69e8: $8e
    sbc $1d                                       ; $69e9: $de $1d
    ld e, $9d                                     ; $69eb: $1e $9d
    adc l                                         ; $69ed: $8d
    call nc, $84ef                                ; $69ee: $d4 $ef $84
    jp nc, $8870                                  ; $69f1: $d2 $70 $88

    nop                                           ; $69f4: $00
    rst $20                                       ; $69f5: $e7
    ret                                           ; $69f6: $c9


    adc [hl]                                      ; $69f7: $8e
    sbc $1d                                       ; $69f8: $de $1d
    ld l, [hl]                                    ; $69fa: $6e
    jp c, Jump_051_70fb                           ; $69fb: $da $fb $70

    rst $28                                       ; $69fe: $ef
    add h                                         ; $69ff: $84
    jp nc, $8870                                  ; $6a00: $d2 $70 $88

    nop                                           ; $6a03: $00
    rst $20                                       ; $6a04: $e7
    ret                                           ; $6a05: $c9


    adc [hl]                                      ; $6a06: $8e
    sbc $1d                                       ; $6a07: $de $1d
    ld [hl], a                                    ; $6a09: $77
    adc b                                         ; $6a0a: $88
    adc d                                         ; $6a0b: $8a
    sbc a                                         ; $6a0c: $9f
    ld b, e                                       ; $6a0d: $43
    db $e3                                        ; $6a0e: $e3
    cp a                                          ; $6a0f: $bf
    ld l, c                                       ; $6a10: $69
    add hl, hl                                    ; $6a11: $29
    adc b                                         ; $6a12: $88
    nop                                           ; $6a13: $00
    rst $20                                       ; $6a14: $e7
    ret                                           ; $6a15: $c9


    adc [hl]                                      ; $6a16: $8e
    sbc $9d                                       ; $6a17: $de $9d
    or a                                          ; $6a19: $b7
    ld sp, hl                                     ; $6a1a: $f9
    rst $18                                       ; $6a1b: $df
    ld [hl], $2b                                  ; $6a1c: $36 $2b
    ld b, l                                       ; $6a1e: $45
    ld [hl], d                                    ; $6a1f: $72
    daa                                           ; $6a20: $27
    sub h                                         ; $6a21: $94
    add [hl]                                      ; $6a22: $86
    ld b, e                                       ; $6a23: $43
    inc b                                         ; $6a24: $04
    rst $20                                       ; $6a25: $e7
    ret                                           ; $6a26: $c9


    adc [hl]                                      ; $6a27: $8e
    sbc $dd                                       ; $6a28: $de $dd
    ld b, e                                       ; $6a2a: $43
    ld [hl], l                                    ; $6a2b: $75
    or e                                          ; $6a2c: $b3
    ld a, [c]                                     ; $6a2d: $f2
    db $f4                                        ; $6a2e: $f4
    ld a, [$443a]                                 ; $6a2f: $fa $3a $44
    rst $20                                       ; $6a32: $e7
    ret                                           ; $6a33: $c9


    adc [hl]                                      ; $6a34: $8e
    sbc $5d                                       ; $6a35: $de $5d
    ld h, l                                       ; $6a37: $65
    ld l, a                                       ; $6a38: $6f
    inc hl                                        ; $6a39: $23
    add [hl]                                      ; $6a3a: $86
    ld e, [hl]                                    ; $6a3b: $5e
    ld h, d                                       ; $6a3c: $62
    cp d                                          ; $6a3d: $ba
    xor a                                         ; $6a3e: $af
    dec [hl]                                      ; $6a3f: $35
    dec e                                         ; $6a40: $1d
    ld [bc], a                                    ; $6a41: $02
    ld de, $c9e7                                  ; $6a42: $11 $e7 $c9
    adc [hl]                                      ; $6a45: $8e
    ld e, [hl]                                    ; $6a46: $5e
    ld [c], a                                     ; $6a47: $e2
    dec h                                         ; $6a48: $25
    call c, $f7a9                                 ; $6a49: $dc $a9 $f7
    ld h, b                                       ; $6a4c: $60
    inc d                                         ; $6a4d: $14
    and e                                         ; $6a4e: $a3
    ld l, d                                       ; $6a4f: $6a
    rst $08                                       ; $6a50: $cf
    db $10                                        ; $6a51: $10
    ld bc, $c9e7                                  ; $6a52: $01 $e7 $c9
    adc [hl]                                      ; $6a55: $8e
    ld e, [hl]                                    ; $6a56: $5e
    ld [c], a                                     ; $6a57: $e2
    dec h                                         ; $6a58: $25
    call c, $f7a9                                 ; $6a59: $dc $a9 $f7
    ld h, b                                       ; $6a5c: $60
    inc d                                         ; $6a5d: $14
    and e                                         ; $6a5e: $a3
    ld l, d                                       ; $6a5f: $6a
    rst $08                                       ; $6a60: $cf
    db $10                                        ; $6a61: $10
    ld bc, $c9e7                                  ; $6a62: $01 $e7 $c9
    adc [hl]                                      ; $6a65: $8e
    ld e, [hl]                                    ; $6a66: $5e
    ld [c], a                                     ; $6a67: $e2
    dec h                                         ; $6a68: $25
    call c, $f7a9                                 ; $6a69: $dc $a9 $f7
    ld h, b                                       ; $6a6c: $60
    inc d                                         ; $6a6d: $14
    and e                                         ; $6a6e: $a3
    ld l, d                                       ; $6a6f: $6a
    rst $08                                       ; $6a70: $cf
    db $10                                        ; $6a71: $10
    ld bc, $c9e7                                  ; $6a72: $01 $e7 $c9
    adc [hl]                                      ; $6a75: $8e
    ld e, [hl]                                    ; $6a76: $5e
    ld [c], a                                     ; $6a77: $e2
    dec h                                         ; $6a78: $25
    call c, $f7a9                                 ; $6a79: $dc $a9 $f7
    ld d, b                                       ; $6a7c: $50
    xor d                                         ; $6a7d: $aa
    xor a                                         ; $6a7e: $af
    call $9ecb                                    ; $6a7f: $cd $cb $9e
    xor b                                         ; $6a82: $a8
    add d                                         ; $6a83: $82
    ld [$c9e7], sp                                ; $6a84: $08 $e7 $c9
    adc [hl]                                      ; $6a87: $8e
    sbc $1d                                       ; $6a88: $de $1d
    ld sp, $b9ed                                  ; $6a8a: $31 $ed $b9
    add sp, -$51                                  ; $6a8d: $e8 $af
    ld h, $3f                                     ; $6a8f: $26 $3f
    ld c, c                                       ; $6a91: $49
    and a                                         ; $6a92: $a7
    ld b, e                                       ; $6a93: $43
    ld a, [c]                                     ; $6a94: $f2
    ld a, [hl-]                                   ; $6a95: $3a
    and c                                         ; $6a96: $a1
    db $10                                        ; $6a97: $10
    ld bc, $c9e7                                  ; $6a98: $01 $e7 $c9
    adc [hl]                                      ; $6a9b: $8e
    sbc $dd                                       ; $6a9c: $de $dd
    inc de                                        ; $6a9e: $13
    scf                                           ; $6a9f: $37
    ld e, l                                       ; $6aa0: $5d
    ld a, e                                       ; $6aa1: $7b
    ld d, d                                       ; $6aa2: $52
    ccf                                           ; $6aa3: $3f
    inc b                                         ; $6aa4: $04
    ld [hl+], a                                   ; $6aa5: $22
    rst $20                                       ; $6aa6: $e7
    ret                                           ; $6aa7: $c9


    adc [hl]                                      ; $6aa8: $8e
    sbc $9d                                       ; $6aa9: $de $9d
    dec c                                         ; $6aab: $0d
    sbc a                                         ; $6aac: $9f
    ld d, $f4                                     ; $6aad: $16 $f4
    ld e, a                                       ; $6aaf: $5f
    ld d, l                                       ; $6ab0: $55
    and e                                         ; $6ab1: $a3
    adc c                                         ; $6ab2: $89
    ld d, d                                       ; $6ab3: $52
    cp a                                          ; $6ab4: $bf
    cp d                                          ; $6ab5: $ba
    inc de                                        ; $6ab6: $13
    ld c, d                                       ; $6ab7: $4a
    jp Jump_000_0221                              ; $6ab8: $c3 $21 $02


    rst $20                                       ; $6abb: $e7
    ret                                           ; $6abc: $c9


    adc [hl]                                      ; $6abd: $8e
    sbc $5d                                       ; $6abe: $de $5d
    daa                                           ; $6ac0: $27
    sub h                                         ; $6ac1: $94
    add [hl]                                      ; $6ac2: $86
    adc a                                         ; $6ac3: $8f
    add [hl]                                      ; $6ac4: $86
    ld e, l                                       ; $6ac5: $5d
    ld h, $7d                                     ; $6ac6: $26 $7d
    ld [hl], l                                    ; $6ac8: $75
    ld e, d                                       ; $6ac9: $5a
    ld e, $7d                                     ; $6aca: $1e $7d
    db $eb                                        ; $6acc: $eb
    ld b, e                                       ; $6acd: $43
    inc b                                         ; $6ace: $04
    rst $20                                       ; $6acf: $e7
    ret                                           ; $6ad0: $c9


    adc [hl]                                      ; $6ad1: $8e
    ld e, $ce                                     ; $6ad2: $1e $ce
    rrca                                          ; $6ad4: $0f
    scf                                           ; $6ad5: $37
    ld c, h                                       ; $6ad6: $4c
    ld [c], a                                     ; $6ad7: $e2
    and [hl]                                      ; $6ad8: $a6
    ld a, [hl]                                    ; $6ad9: $7e
    cp b                                          ; $6ada: $b8
    add a                                         ; $6adb: $87
    ld b, b                                       ; $6adc: $40
    inc b                                         ; $6add: $04
    rst $20                                       ; $6ade: $e7
    ret                                           ; $6adf: $c9


    adc [hl]                                      ; $6ae0: $8e
    sbc $1d                                       ; $6ae1: $de $1d
    ld sp, hl                                     ; $6ae3: $f9
    sub l                                         ; $6ae4: $95
    ld [hl], e                                    ; $6ae5: $73
    daa                                           ; $6ae6: $27
    sub h                                         ; $6ae7: $94
    add [hl]                                      ; $6ae8: $86
    adc a                                         ; $6ae9: $8f
    dec sp                                        ; $6aea: $3b
    push af                                       ; $6aeb: $f5
    ld l, b                                       ; $6aec: $68
    and d                                         ; $6aed: $a2
    call nc, $a6af                                ; $6aee: $d4 $af $a6
    ld c, c                                       ; $6af1: $49
    cp [hl]                                       ; $6af2: $be
    inc b                                         ; $6af3: $04
    ld [hl+], a                                   ; $6af4: $22
    rst $20                                       ; $6af5: $e7
    ret                                           ; $6af6: $c9


    adc [hl]                                      ; $6af7: $8e
    sbc $1d                                       ; $6af8: $de $1d
    ld sp, hl                                     ; $6afa: $f9
    sub l                                         ; $6afb: $95
    ld [hl], e                                    ; $6afc: $73
    daa                                           ; $6afd: $27
    sub h                                         ; $6afe: $94
    add [hl]                                      ; $6aff: $86
    adc a                                         ; $6b00: $8f
    dec sp                                        ; $6b01: $3b
    push af                                       ; $6b02: $f5
    ld l, b                                       ; $6b03: $68
    and d                                         ; $6b04: $a2
    call nc, Call_000_26af                        ; $6b05: $d4 $af $26
    ld b, [hl]                                    ; $6b08: $46
    or d                                          ; $6b09: $b2
    ld b, e                                       ; $6b0a: $43
    inc b                                         ; $6b0b: $04
    rst $20                                       ; $6b0c: $e7
    ret                                           ; $6b0d: $c9


    adc [hl]                                      ; $6b0e: $8e
    sbc $1d                                       ; $6b0f: $de $1d
    ld sp, $7aed                                  ; $6b11: $31 $ed $7a
    ld a, l                                       ; $6b14: $7d

Call_051_6b15:
    dec a                                         ; $6b15: $3d
    inc e                                         ; $6b16: $1c
    ld [hl+], a                                   ; $6b17: $22
    rst $20                                       ; $6b18: $e7
    ret                                           ; $6b19: $c9


    adc [hl]                                      ; $6b1a: $8e
    sbc $5d                                       ; $6b1b: $de $5d
    ret z                                         ; $6b1d: $c8

    or h                                          ; $6b1e: $b4
    and b                                         ; $6b1f: $a0
    rst $38                                       ; $6b20: $ff
    xor d                                         ; $6b21: $aa
    ld de, $7dd3                                  ; $6b22: $11 $d3 $7d
    xor l                                         ; $6b25: $ad
    ld l, c                                       ; $6b26: $69
    adc b                                         ; $6b27: $88
    nop                                           ; $6b28: $00
    rst $20                                       ; $6b29: $e7
    ret                                           ; $6b2a: $c9


    adc [hl]                                      ; $6b2b: $8e
    sbc $1d                                       ; $6b2c: $de $1d
    sbc $86                                       ; $6b2e: $de $86
    adc e                                         ; $6b30: $8b
    sbc h                                         ; $6b31: $9c
    ld c, l                                       ; $6b32: $4d
    rrca                                          ; $6b33: $0f
    ldh a, [$15]                                  ; $6b34: $f0 $15
    ret                                           ; $6b36: $c9


    db $eb                                        ; $6b37: $eb
    add h                                         ; $6b38: $84
    ld b, d                                       ; $6b39: $42
    inc b                                         ; $6b3a: $04
    rst $20                                       ; $6b3b: $e7
    ret                                           ; $6b3c: $c9


    adc [hl]                                      ; $6b3d: $8e
    sbc $5d                                       ; $6b3e: $de $5d
    cp b                                          ; $6b40: $b8
    rst $08                                       ; $6b41: $cf
    dec c                                         ; $6b42: $0d
    push af                                       ; $6b43: $f5
    sub c                                         ; $6b44: $91
    ld e, a                                       ; $6b45: $5f
    add hl, sp                                    ; $6b46: $39
    ld [hl], a                                    ; $6b47: $77
    ld b, d                                       ; $6b48: $42
    ld hl, $e702                                  ; $6b49: $21 $02 $e7
    ret                                           ; $6b4c: $c9


    adc [hl]                                      ; $6b4d: $8e
    sbc $5d                                       ; $6b4e: $de $5d
    daa                                           ; $6b50: $27
    sub h                                         ; $6b51: $94
    add [hl]                                      ; $6b52: $86
    adc a                                         ; $6b53: $8f
    add [hl]                                      ; $6b54: $86
    dec e                                         ; $6b55: $1d
    rst $30                                       ; $6b56: $f7
    ld e, c                                       ; $6b57: $59
    xor d                                         ; $6b58: $aa
    call nz, $84c6                                ; $6b59: $c4 $c6 $84
    sub l                                         ; $6b5c: $95
    ld [hl+], a                                   ; $6b5d: $22
    cp a                                          ; $6b5e: $bf
    ld a, [de]                                    ; $6b5f: $1a
    ld [hl+], a                                   ; $6b60: $22
    rst $20                                       ; $6b61: $e7
    ret                                           ; $6b62: $c9


    adc [hl]                                      ; $6b63: $8e
    sbc $dd                                       ; $6b64: $de $dd
    inc de                                        ; $6b66: $13
    scf                                           ; $6b67: $37
    ld e, l                                       ; $6b68: $5d
    ld a, e                                       ; $6b69: $7b
    ld d, d                                       ; $6b6a: $52
    ccf                                           ; $6b6b: $3f
    inc b                                         ; $6b6c: $04
    ld [hl+], a                                   ; $6b6d: $22
    ld c, a                                       ; $6b6e: $4f
    ld l, a                                       ; $6b6f: $6f
    adc $f3                                       ; $6b70: $ce $f3
    jr nz, jr_051_6bd6                            ; $6b72: $20 $62

    cp [hl]                                       ; $6b74: $be
    ld d, c                                       ; $6b75: $51
    ld [hl], a                                    ; $6b76: $77
    ld l, h                                       ; $6b77: $6c
    rst $30                                       ; $6b78: $f7
    ld a, [$afab]                                 ; $6b79: $fa $ab $af
    cp [hl]                                       ; $6b7c: $be
    ld [hl], $40                                  ; $6b7d: $36 $40
    or h                                          ; $6b7f: $b4
    ret c                                         ; $6b80: $d8

    call nz, $8a80                                ; $6b81: $c4 $80 $8a
    ld b, a                                       ; $6b84: $47
    ld a, e                                       ; $6b85: $7b
    ld e, l                                       ; $6b86: $5d
    and c                                         ; $6b87: $a1
    ld hl, $367e                                  ; $6b88: $21 $7e $36
    db $10                                        ; $6b8b: $10
    sub d                                         ; $6b8c: $92
    add d                                         ; $6b8d: $82
    ld h, e                                       ; $6b8e: $63
    or b                                          ; $6b8f: $b0
    ld sp, $4400                                  ; $6b90: $31 $00 $44
    adc e                                         ; $6b93: $8b
    ld c, l                                       ; $6b94: $4d
    inc c                                         ; $6b95: $0c
    xor b                                         ; $6b96: $a8
    ld a, b                                       ; $6b97: $78
    or h                                          ; $6b98: $b4
    rst $10                                       ; $6b99: $d7
    dec d                                         ; $6b9a: $15
    ld a, [de]                                    ; $6b9b: $1a
    ld [c], a                                     ; $6b9c: $e2
    inc sp                                        ; $6b9d: $33
    add hl, hl                                    ; $6b9e: $29
    ld l, l                                       ; $6b9f: $6d
    add b                                         ; $6ba0: $80
    ld l, b                                       ; $6ba1: $68
    or c                                          ; $6ba2: $b1
    adc c                                         ; $6ba3: $89
    ld bc, $8f15                                  ; $6ba4: $01 $15 $8f
    or $ba                                        ; $6ba7: $f6 $ba
    ld b, d                                       ; $6ba9: $42
    ld b, e                                       ; $6baa: $43
    ld a, h                                       ; $6bab: $7c
    xor a                                         ; $6bac: $af
    inc c                                         ; $6bad: $0c
    ld a, b                                       ; $6bae: $78
    ld e, a                                       ; $6baf: $5f
    call c, Call_051_5c8d                         ; $6bb0: $dc $8d $5c
    adc a                                         ; $6bb3: $8f
    ld l, a                                       ; $6bb4: $6f
    sub h                                         ; $6bb5: $94
    ld [hl], c                                    ; $6bb6: $71
    ld d, $1e                                     ; $6bb7: $16 $1e
    or d                                          ; $6bb9: $b2
    and e                                         ; $6bba: $a3
    rst $10                                       ; $6bbb: $d7
    and c                                         ; $6bbc: $a1
    ld l, [hl]                                    ; $6bbd: $6e
    or $8e                                        ; $6bbe: $f6 $8e
    ld l, $1b                                     ; $6bc0: $2e $1b
    db $d3                                        ; $6bc2: $d3
    xor e                                         ; $6bc3: $ab
    inc de                                        ; $6bc4: $13
    ld a, d                                       ; $6bc5: $7a
    inc [hl]                                      ; $6bc6: $34
    add hl, bc                                    ; $6bc7: $09
    sbc c                                         ; $6bc8: $99
    rst $18                                       ; $6bc9: $df
    rst $38                                       ; $6bca: $ff
    or l                                          ; $6bcb: $b5
    ld d, e                                       ; $6bcc: $53
    sub a                                         ; $6bcd: $97
    ret c                                         ; $6bce: $d8

    jr jr_051_6bf1                                ; $6bcf: $18 $20

    ld e, d                                       ; $6bd1: $5a
    ld l, h                                       ; $6bd2: $6c
    ld h, d                                       ; $6bd3: $62
    ld b, b                                       ; $6bd4: $40
    push bc                                       ; $6bd5: $c5

jr_051_6bd6:
    and e                                         ; $6bd6: $a3
    cp l                                          ; $6bd7: $bd
    xor [hl]                                      ; $6bd8: $ae
    ret nc                                        ; $6bd9: $d0

    db $10                                        ; $6bda: $10
    ccf                                           ; $6bdb: $3f
    dec de                                        ; $6bdc: $1b
    ld [$c149], sp                                ; $6bdd: $08 $49 $c1
    db $dd                                        ; $6be0: $dd
    ld h, c                                       ; $6be1: $61
    ld a, d                                       ; $6be2: $7a
    ld [bc], a                                    ; $6be3: $02
    ld l, b                                       ; $6be4: $68
    ld h, $a5                                     ; $6be5: $26 $a5
    cp l                                          ; $6be7: $bd
    ld [de], a                                    ; $6be8: $12
    rst $38                                       ; $6be9: $ff
    ld b, a                                       ; $6bea: $47
    xor a                                         ; $6beb: $af
    call nz, $ed76                                ; $6bec: $c4 $76 $ed
    rra                                           ; $6bef: $1f
    ld h, d                                       ; $6bf0: $62

jr_051_6bf1:
    and e                                         ; $6bf1: $a3
    pop hl                                        ; $6bf2: $e1
    jr jr_051_6c61                                ; $6bf3: $18 $6c

    inc c                                         ; $6bf5: $0c
    ld b, b                                       ; $6bf6: $40
    daa                                           ; $6bf7: $27
    sbc c                                         ; $6bf8: $99
    add l                                         ; $6bf9: $85
    ld h, l                                       ; $6bfa: $65
    add b                                         ; $6bfb: $80
    ld [de], a                                    ; $6bfc: $12
    ld a, e                                       ; $6bfd: $7b
    call $1a30                                    ; $6bfe: $cd $30 $1a
    di                                            ; $6c01: $f3
    di                                            ; $6c02: $f3
    ld c, d                                       ; $6c03: $4a
    db $f4                                        ; $6c04: $f4
    ld b, e                                       ; $6c05: $43
    ld l, h                                       ; $6c06: $6c
    ld e, $ce                                     ; $6c07: $1e $ce
    rst $28                                       ; $6c09: $ef
    rst $18                                       ; $6c0a: $df
    ld d, h                                       ; $6c0b: $54
    ld c, b                                       ; $6c0c: $48
    ld e, $d7                                     ; $6c0d: $1e $d7
    cp h                                          ; $6c0f: $bc
    inc c                                         ; $6c10: $0c
    ld e, b                                       ; $6c11: $58
    and l                                         ; $6c12: $a5
    call c, $def4                                 ; $6c13: $dc $f4 $de
    ld a, [de]                                    ; $6c16: $1a
    add e                                         ; $6c17: $83
    adc l                                         ; $6c18: $8d
    ld bc, $1028                                  ; $6c19: $01 $28 $10
    ld b, b                                       ; $6c1c: $40
    add b                                         ; $6c1d: $80
    add d                                         ; $6c1e: $82
    ld a, c                                       ; $6c1f: $79
    ld [bc], a                                    ; $6c20: $02
    db $f4                                        ; $6c21: $f4
    ld a, h                                       ; $6c22: $7c
    add b                                         ; $6c23: $80
    or c                                          ; $6c24: $b1
    ld c, $0c                                     ; $6c25: $0e $0c
    ld [$1830], sp                                ; $6c27: $08 $30 $18
    add c                                         ; $6c2a: $81
    add d                                         ; $6c2b: $82
    add hl, sp                                    ; $6c2c: $39
    rlca                                          ; $6c2d: $07
    adc e                                         ; $6c2e: $8b
    nop                                           ; $6c2f: $00
    ld l, h                                       ; $6c30: $6c
    rst $30                                       ; $6c31: $f7
    ld a, [$afab]                                 ; $6c32: $fa $ab $af
    cp [hl]                                       ; $6c35: $be
    ld [hl], $a0                                  ; $6c36: $36 $a0
    ccf                                           ; $6c38: $3f
    ld d, d                                       ; $6c39: $52
    sbc $46                                       ; $6c3a: $de $46
    ld l, [hl]                                    ; $6c3c: $6e
    ld l, d                                       ; $6c3d: $6a

jr_051_6c3e:
    add b                                         ; $6c3e: $80
    jp c, Jump_051_40f3                           ; $6c3f: $da $f3 $40

    ld c, b                                       ; $6c42: $48
    ld a, [bc]                                    ; $6c43: $0a
    adc [hl]                                      ; $6c44: $8e

jr_051_6c45:
    ld bc, $b0e8                                  ; $6c45: $01 $e8 $b0
    dec bc                                        ; $6c48: $0b
    ret                                           ; $6c49: $c9


    ld b, l                                       ; $6c4a: $45
    ei                                            ; $6c4b: $fb

jr_051_6c4c:
    ld [hl], b                                    ; $6c4c: $70
    add a                                         ; $6c4d: $87
    ld [$9b18], sp                                ; $6c4e: $08 $18 $9b
    sub l                                         ; $6c51: $95
    ld [hl+], a                                   ; $6c52: $22
    jp $3df9                                      ; $6c53: $c3 $f9 $3d


    pop bc                                        ; $6c56: $c1
    ld [$0308], sp                                ; $6c57: $08 $08 $03
    ld b, [hl]                                    ; $6c5a: $46
    inc b                                         ; $6c5b: $04
    ld h, b                                       ; $6c5c: $60
    xor [hl]                                      ; $6c5d: $ae
    adc $bf                                       ; $6c5e: $ce $bf
    rrca                                          ; $6c60: $0f

jr_051_6c61:
    ldh a, [$b5]                                  ; $6c61: $f0 $b5
    ld hl, $af18                                  ; $6c63: $21 $18 $af
    ld a, l                                       ; $6c66: $7d
    ld a, a                                       ; $6c67: $7f
    nop                                           ; $6c68: $00
    ld e, a                                       ; $6c69: $5f
    ld a, e                                       ; $6c6a: $7b
    rra                                           ; $6c6b: $1f
    ldh [$eb], a                                  ; $6c6c: $e0 $eb
    rst $28                                       ; $6c6e: $ef
    inc bc                                        ; $6c6f: $03
    ld a, h                                       ; $6c70: $7c
    ld h, e                                       ; $6c71: $63
    ld [$c2a0], sp                                ; $6c72: $08 $a0 $c2
    ld e, [hl]                                    ; $6c75: $5e
    dec [hl]                                      ; $6c76: $35
    ld b, $1b                                     ; $6c77: $06 $1b
    add e                                         ; $6c79: $83
    adc l                                         ; $6c7a: $8d
    pop bc                                        ; $6c7b: $c1
    add [hl]                                      ; $6c7c: $86
    nop                                           ; $6c7d: $00
    ldh [$7e], a                                  ; $6c7e: $e0 $7e
    ld a, c                                       ; $6c80: $79
    ld c, $59                                     ; $6c81: $0e $59
    adc c                                         ; $6c83: $89
    ld a, [hl]                                    ; $6c84: $7e
    adc b                                         ; $6c85: $88
    call $0c70                                    ; $6c86: $cd $70 $0c
    sbc [hl]                                      ; $6c89: $9e
    sub b                                         ; $6c8a: $90
    cp [hl]                                       ; $6c8b: $be
    ld a, d                                       ; $6c8c: $7a
    db $ed                                        ; $6c8d: $ed
    and h                                         ; $6c8e: $a4
    ld b, a                                       ; $6c8f: $47
    ccf                                           ; $6c90: $3f
    ld b, d                                       ; $6c91: $42
    ld e, b                                       ; $6c92: $58
    sbc $07                                       ; $6c93: $de $07
    ld hl, sp-$26                                 ; $6c95: $f8 $da
    or b                                          ; $6c97: $b0
    cp [hl]                                       ; $6c98: $be
    rrca                                          ; $6c99: $0f
    ldh a, [$f5]                                  ; $6c9a: $f0 $f5
    ld hl, $21e7                                  ; $6c9c: $21 $e7 $21
    db $d3                                        ; $6c9f: $d3
    adc [hl]                                      ; $6ca0: $8e
    ld e, $b9                                     ; $6ca1: $1e $b9
    reti                                          ; $6ca3: $d9


    ld c, e                                       ; $6ca4: $4b
    halt                                          ; $6ca5: $76
    db $f4                                        ; $6ca6: $f4
    ld a, $9f                                     ; $6ca7: $3e $9f
    sbc l                                         ; $6ca9: $9d
    dec a                                         ; $6caa: $3d
    ld [bc], a                                    ; $6cab: $02
    add b                                         ; $6cac: $80
    ld b, h                                       ; $6cad: $44
    ccf                                           ; $6cae: $3f
    call nz, $8fbe                                ; $6caf: $c4 $be $8f
    nop                                           ; $6cb2: $00
    xor a                                         ; $6cb3: $af
    cp l                                          ; $6cb4: $bd
    jr c, @-$7e                                   ; $6cb5: $38 $80

    xor a                                         ; $6cb7: $af
    dec c                                         ; $6cb8: $0d
    ld bc, $bfaf                                  ; $6cb9: $01 $af $bf
    jr c, jr_051_6c3e                             ; $6cbc: $38 $80

    xor a                                         ; $6cbe: $af
    dec c                                         ; $6cbf: $0d
    ld bc, $bc6f                                  ; $6cc0: $01 $6f $bc
    jr c, jr_051_6c45                             ; $6cc3: $38 $80

    xor a                                         ; $6cc5: $af

Jump_051_6cc6:
    dec c                                         ; $6cc6: $0d
    ld bc, $be6f                                  ; $6cc7: $01 $6f $be
    jr c, jr_051_6c4c                             ; $6cca: $38 $80

    xor a                                         ; $6ccc: $af
    dec c                                         ; $6ccd: $0d
    ld bc, $4ec0                                  ; $6cce: $01 $c0 $4e
    cp l                                          ; $6cd1: $bd
    ld [hl], d                                    ; $6cd2: $72
    sbc a                                         ; $6cd3: $9f
    ld a, [hl-]                                   ; $6cd4: $3a
    ld [hl], l                                    ; $6cd5: $75
    cp l                                          ; $6cd6: $bd
    adc a                                         ; $6cd7: $8f
    nop                                           ; $6cd8: $00
    rst $20                                       ; $6cd9: $e7
    ret                                           ; $6cda: $c9


    or h                                          ; $6cdb: $b4
    ld [$f15d], a                                 ; $6cdc: $ea $5d $f1
    ret c                                         ; $6cdf: $d8

    ccf                                           ; $6ce0: $3f
    jp c, $af67                                   ; $6ce1: $da $67 $af

    sbc d                                         ; $6ce4: $9a
    dec c                                         ; $6ce5: $0d
    sbc a                                         ; $6ce6: $9f
    halt                                          ; $6ce7: $76
    db $f4                                        ; $6ce8: $f4
    ld a, [hl-]                                   ; $6ce9: $3a
    ld d, d                                       ; $6cea: $52
    add c                                         ; $6ceb: $81
    ld a, e                                       ; $6cec: $7b
    ld hl, sp+$0e                                 ; $6ced: $f8 $0e
    ld h, c                                       ; $6cef: $61
    adc a                                         ; $6cf0: $8f
    nop                                           ; $6cf1: $00
    rrca                                          ; $6cf2: $0f
    ld b, $e7                                     ; $6cf3: $06 $e7
    adc [hl]                                      ; $6cf5: $8e
    rst $38                                       ; $6cf6: $ff

Call_051_6cf7:
    db $d3                                        ; $6cf7: $d3
    push de                                       ; $6cf8: $d5
    inc hl                                        ; $6cf9: $23
    rst $10                                       ; $6cfa: $d7
    dec a                                         ; $6cfb: $3d
    ld a, $02                                     ; $6cfc: $3e $02
    jr nz, jr_051_6d0d                            ; $6cfe: $20 $0d

    adc [hl]                                      ; $6d00: $8e
    ld d, a                                       ; $6d01: $57
    sub e                                         ; $6d02: $93
    db $eb                                        ; $6d03: $eb
    ld e, $1f                                     ; $6d04: $1e $1f
    ld bc, $8fa0                                  ; $6d06: $01 $a0 $8f
    sbc h                                         ; $6d09: $9c
    xor a                                         ; $6d0a: $af
    xor b                                         ; $6d0b: $a8
    ld c, h                                       ; $6d0c: $4c

jr_051_6d0d:
    xor [hl]                                      ; $6d0d: $ae
    ld a, e                                       ; $6d0e: $7b
    ld a, h                                       ; $6d0f: $7c
    inc b                                         ; $6d10: $04
    ld c, a                                       ; $6d11: $4f
    xor $d7                                       ; $6d12: $ee $d7
    and e                                         ; $6d14: $a3
    ret                                           ; $6d15: $c9


    ld [hl], l                                    ; $6d16: $75
    adc a                                         ; $6d17: $8f
    adc a                                         ; $6d18: $8f
    nop                                           ; $6d19: $00
    ld c, a                                       ; $6d1a: $4f
    sbc b                                         ; $6d1b: $98
    rst $00                                       ; $6d1c: $c7
    rst $10                                       ; $6d1d: $d7
    adc c                                         ; $6d1e: $89
    ld hl, $3625                                  ; $6d1f: $21 $25 $36
    ld b, [hl]                                    ; $6d22: $46
    xor [hl]                                      ; $6d23: $ae
    ld a, e                                       ; $6d24: $7b
    ld a, h                                       ; $6d25: $7c
    inc b                                         ; $6d26: $04
    add b                                         ; $6d27: $80
    ld [hl-], a                                   ; $6d28: $32
    ld h, a                                       ; $6d29: $67
    db $ec                                        ; $6d2a: $ec
    db $fd                                        ; $6d2b: $fd
    cp a                                          ; $6d2c: $bf
    adc l                                         ; $6d2d: $8d
    inc hl                                        ; $6d2e: $23
    and b                                         ; $6d2f: $a0
    inc de                                        ; $6d30: $13
    ld hl, $d13f                                  ; $6d31: $21 $3f $d1
    dec bc                                        ; $6d34: $0b
    ld bc, $4d18                                  ; $6d35: $01 $18 $4d
    sub e                                         ; $6d38: $93
    or d                                          ; $6d39: $b2
    ld sp, $7239                                  ; $6d3a: $31 $39 $72
    cp $a6                                        ; $6d3d: $fe $a6
    ld de, $d7e7                                  ; $6d3f: $11 $e7 $d7
    cp l                                          ; $6d42: $bd
    add h                                         ; $6d43: $84
    add l                                         ; $6d44: $85
    nop                                           ; $6d45: $00
    and b                                         ; $6d46: $a0
    db $eb                                        ; $6d47: $eb
    sbc a                                         ; $6d48: $9f
    jp c, $a011                                   ; $6d49: $da $11 $a0

    ld c, e                                       ; $6d4c: $4b
    ld l, h                                       ; $6d4d: $6c
    sub a                                         ; $6d4e: $97
    ld [hl-], a                                   ; $6d4f: $32
    ld e, l                                       ; $6d50: $5d
    ld l, l                                       ; $6d51: $6d
    inc e                                         ; $6d52: $1c
    ld bc, $a520                                  ; $6d53: $01 $20 $a5
    cp $cf                                        ; $6d56: $fe $cf
    cp a                                          ; $6d58: $bf
    ld b, h                                       ; $6d59: $44
    push hl                                       ; $6d5a: $e5
    ld c, h                                       ; $6d5b: $4c
    xor [hl]                                      ; $6d5c: $ae
    ld [$e002], sp                                ; $6d5d: $08 $02 $e0
    xor [hl]                                      ; $6d60: $ae
    ld d, d                                       ; $6d61: $52
    ld e, c                                       ; $6d62: $59
    cp a                                          ; $6d63: $bf
    sub d                                         ; $6d64: $92
    cp l                                          ; $6d65: $bd
    sub h                                         ; $6d66: $94
    xor d                                         ; $6d67: $aa
    ld b, [hl]                                    ; $6d68: $46
    add b                                         ; $6d69: $80
    rst $38                                       ; $6d6a: $ff
    sub c                                         ; $6d6b: $91
    ld [hl+], a                                   ; $6d6c: $22
    call c, $04cd                                 ; $6d6d: $dc $cd $04
    ld c, a                                       ; $6d70: $4f
    cp [hl]                                       ; $6d71: $be
    ld e, $8d                                     ; $6d72: $1e $8d
    nop                                           ; $6d74: $00
    ld c, a                                       ; $6d75: $4f
    ld c, b                                       ; $6d76: $48
    db $fd                                        ; $6d77: $fd
    ld [hl], h                                    ; $6d78: $74
    add hl, hl                                    ; $6d79: $29
    sub l                                         ; $6d7a: $95
    ld c, a                                       ; $6d7b: $4f
    jp z, Jump_000_0208                           ; $6d7c: $ca $08 $02

    jr jr_051_6df6                                ; $6d7f: $18 $75

    ld e, [hl]                                    ; $6d81: $5e
    dec sp                                        ; $6d82: $3b
    or l                                          ; $6d83: $b5
    ld e, h                                       ; $6d84: $5c
    ld d, c                                       ; $6d85: $51
    ld e, c                                       ; $6d86: $59
    inc sp                                        ; $6d87: $33
    dec l                                         ; $6d88: $2d
    ld [$9b60], sp                                ; $6d89: $08 $60 $9b
    ld a, d                                       ; $6d8c: $7a
    adc c                                         ; $6d8d: $89
    ld b, l                                       ; $6d8e: $45
    add b                                         ; $6d8f: $80
    inc hl                                        ; $6d90: $23
    sbc e                                         ; $6d91: $9b
    ld [$21ec], a                                 ; $6d92: $ea $ec $21
    ld [$4540], sp                                ; $6d95: $08 $40 $45
    dec sp                                        ; $6d98: $3b
    or l                                          ; $6d99: $b5
    ld e, h                                       ; $6d9a: $5c
    ld d, c                                       ; $6d9b: $51
    ld e, c                                       ; $6d9c: $59
    inc sp                                        ; $6d9d: $33
    dec l                                         ; $6d9e: $2d
    cp e                                          ; $6d9f: $bb
    set 6, a                                      ; $6da0: $cb $f7
    db $eb                                        ; $6da2: $eb
    pop de                                        ; $6da3: $d1
    ld [$dc4f], sp                                ; $6da4: $08 $4f $dc
    inc [hl]                                      ; $6da7: $34
    push de                                       ; $6da8: $d5
    jp z, $011d                                   ; $6da9: $ca $1d $01

    add b                                         ; $6dac: $80
    adc b                                         ; $6dad: $88

jr_051_6dae:
    sub c                                         ; $6dae: $91
    db $eb                                        ; $6daf: $eb
    ld [$8da0], sp                                ; $6db0: $08 $a0 $8d
    xor e                                         ; $6db3: $ab

jr_051_6db4:
    srl c                                         ; $6db4: $cb $39
    ld [bc], a                                    ; $6db6: $02
    sbc b                                         ; $6db7: $98
    xor a                                         ; $6db8: $af
    ld d, d                                       ; $6db9: $52
    ld hl, $e28c                                  ; $6dba: $21 $8c $e2
    ld e, e                                       ; $6dbd: $5b
    db $db                                        ; $6dbe: $db
    xor h                                         ; $6dbf: $ac
    inc d                                         ; $6dc0: $14
    ld b, c                                       ; $6dc1: $41
    ld c, a                                       ; $6dc2: $4f
    cp h                                          ; $6dc3: $bc
    sbc d                                         ; $6dc4: $9a
    inc c                                         ; $6dc5: $0c
    di                                            ; $6dc6: $f3
    ld d, l                                       ; $6dc7: $55
    ld a, [hl+]                                   ; $6dc8: $2a
    add h                                         ; $6dc9: $84
    ld d, c                                       ; $6dca: $51
    ld a, h                                       ; $6dcb: $7c
    ld l, e                                       ; $6dcc: $6b
    sbc e                                         ; $6dcd: $9b
    sub l                                         ; $6dce: $95
    ld [hl+], a                                   ; $6dcf: $22
    ld [$af4f], sp                                ; $6dd0: $08 $4f $af
    rla                                           ; $6dd3: $17
    cp l                                          ; $6dd4: $bd
    adc h                                         ; $6dd5: $8c
    ld l, l                                       ; $6dd6: $6d
    or e                                          ; $6dd7: $b3
    ld d, d                                       ; $6dd8: $52
    inc b                                         ; $6dd9: $04
    ld bc, $dbd8                                  ; $6dda: $01 $d8 $db
    ld c, e                                       ; $6ddd: $4b
    pop af                                        ; $6dde: $f1
    ld l, l                                       ; $6ddf: $6d
    or e                                          ; $6de0: $b3
    ld l, l                                       ; $6de1: $6d
    ld d, [hl]                                    ; $6de2: $56
    adc d                                         ; $6de3: $8a
    jr nz, @-$66                                  ; $6de4: $20 $98

    ld [hl], b                                    ; $6de6: $70
    db $fc                                        ; $6de7: $fc
    ld a, [hl+]                                   ; $6de8: $2a
    dec h                                         ; $6de9: $25
    ld d, a                                       ; $6dea: $57
    ld d, h                                       ; $6deb: $54
    or [hl]                                       ; $6dec: $b6
    call Call_000_114a                            ; $6ded: $cd $4a $11
    inc b                                         ; $6df0: $04
    jr nz, jr_051_6dae                            ; $6df1: $20 $bb

    jr c, jr_051_6db4                             ; $6df3: $38 $bf

    ld l, d                                       ; $6df5: $6a

jr_051_6df6:
    add hl, bc                                    ; $6df6: $09
    adc [hl]                                      ; $6df7: $8e
    ld e, a                                       ; $6df8: $5f
    and l                                         ; $6df9: $a5
    db $e4                                        ; $6dfa: $e4
    adc d                                         ; $6dfb: $8a
    jp z, Jump_051_59b6                           ; $6dfc: $ca $b6 $59

    add hl, hl                                    ; $6dff: $29
    add d                                         ; $6e00: $82
    nop                                           ; $6e01: $00
    ld c, a                                       ; $6e02: $4f
    and e                                         ; $6e03: $a3
    ld c, c                                       ; $6e04: $49
    or $e3                                        ; $6e05: $f6 $e3
    ld a, a                                       ; $6e07: $7f
    inc b                                         ; $6e08: $04
    jr nz, jr_051_6e58                            ; $6e09: $20 $4d

    ei                                            ; $6e0b: $fb
    inc h                                         ; $6e0c: $24
    and c                                         ; $6e0d: $a1
    inc [hl]                                      ; $6e0e: $34
    ld a, [$01fd]                                 ; $6e0f: $fa $fd $01
    ld a, h                                       ; $6e12: $7c
    ld l, l                                       ; $6e13: $6d
    ld [$8f4f], sp                                ; $6e14: $08 $4f $8f
    rst $08                                       ; $6e17: $cf
    inc e                                         ; $6e18: $1c
    ld sp, $08ed                                  ; $6e19: $31 $ed $08
    add b                                         ; $6e1c: $80
    ld e, c                                       ; $6e1d: $59
    adc [hl]                                      ; $6e1e: $8e
    nop                                           ; $6e1f: $00
    add b                                         ; $6e20: $80
    db $f4                                        ; $6e21: $f4
    db $fc                                        ; $6e22: $fc
    inc de                                        ; $6e23: $13
    cpl                                           ; $6e24: $2f
    inc b                                         ; $6e25: $04
    jr nz, jr_051_6ea7                            ; $6e26: $20 $7f

    push af                                       ; $6e28: $f5
    jp z, Jump_051_697d                           ; $6e29: $ca $7d $69

    sub [hl]                                      ; $6e2c: $96
    rla                                           ; $6e2d: $17
    ld a, e                                       ; $6e2e: $7b
    inc b                                         ; $6e2f: $04
    ld c, a                                       ; $6e30: $4f
    rrca                                          ; $6e31: $0f
    pop af                                        ; $6e32: $f1
    ld [$fce1], a                                 ; $6e33: $ea $e1 $fc
    db $e4                                        ; $6e36: $e4
    ret z                                         ; $6e37: $c8

    ld e, [hl]                                    ; $6e38: $5e
    bit 7, b                                      ; $6e39: $cb $78
    db $fc                                        ; $6e3b: $fc
    ld [$c380], a                                 ; $6e3c: $ea $80 $c3
    ret c                                         ; $6e3f: $d8

    xor h                                         ; $6e40: $ac
    inc d                                         ; $6e41: $14
    add hl, de                                    ; $6e42: $19
    adc $0f                                       ; $6e43: $ce $0f
    ldh a, [$cb]                                  ; $6e45: $f0 $cb
    ld b, h                                       ; $6e47: $44
    ld a, [bc]                                    ; $6e48: $0a
    rst $00                                       ; $6e49: $c7
    ld b, e                                       ; $6e4a: $43
    add $9d                                       ; $6e4b: $c6 $9d
    ld a, d                                       ; $6e4d: $7a
    push hl                                       ; $6e4e: $e5
    cp [hl]                                       ; $6e4f: $be
    jp nc, $cdd3                                  ; $6e50: $d2 $d3 $cd

    ld a, [c]                                     ; $6e53: $f2
    ld e, d                                       ; $6e54: $5a
    sbc d                                         ; $6e55: $9a
    push hl                                       ; $6e56: $e5
    pop hl                                        ; $6e57: $e1

jr_051_6e58:
    db $10                                        ; $6e58: $10
    ld bc, $5980                                  ; $6e59: $01 $80 $59
    ld e, $be                                     ; $6e5c: $1e $be
    jp nc, $7dd3                                  ; $6e5e: $d2 $d3 $7d

    ld a, [c]                                     ; $6e61: $f2
    call z, $011e                                 ; $6e62: $cc $1e $01
    add b                                         ; $6e65: $80
    ld e, c                                       ; $6e66: $59
    ld e, $3e                                     ; $6e67: $1e $3e
    ld a, [c]                                     ; $6e69: $f2
    xor e                                         ; $6e6a: $ab
    sbc l                                         ; $6e6b: $9d
    dec a                                         ; $6e6c: $3d
    ld [bc], a                                    ; $6e6d: $02
    rst $20                                       ; $6e6e: $e7
    ret                                           ; $6e6f: $c9


    ld c, b                                       ; $6e70: $48
    ret                                           ; $6e71: $c9


    xor [hl]                                      ; $6e72: $ae
    ld a, b                                       ; $6e73: $78
    inc c                                         ; $6e74: $0c

jr_051_6e75:
    rst $38                                       ; $6e75: $ff
    ld h, $45                                     ; $6e76: $26 $45
    ld l, d                                       ; $6e78: $6a
    add hl, bc                                    ; $6e79: $09
    adc [hl]                                      ; $6e7a: $8e
    adc a                                         ; $6e7b: $8f
    ei                                            ; $6e7c: $fb
    pop de                                        ; $6e7d: $d1
    inc hl                                        ; $6e7e: $23
    and [hl]                                      ; $6e7f: $a6
    ld a, l                                       ; $6e80: $7d
    pop bc                                        ; $6e81: $c1
    ld a, c                                       ; $6e82: $79
    ld [hl], h                                    ; $6e83: $74
    ld [hl], $74                                  ; $6e84: $36 $74
    or $ca                                        ; $6e86: $f6 $ca
    adc b                                         ; $6e88: $88
    ld l, c                                       ; $6e89: $69
    rst $08                                       ; $6e8a: $cf
    ld b, l                                       ; $6e8b: $45
    ld a, a                                       ; $6e8c: $7f
    ld [hl], l                                    ; $6e8d: $75
    jp c, $1d90                                   ; $6e8e: $da $90 $1d

    dec a                                         ; $6e91: $3d
    ld l, $f9                                     ; $6e92: $2e $f9
    sbc a                                         ; $6e94: $9f
    dec a                                         ; $6e95: $3d
    ld [bc], a                                    ; $6e96: $02
    ld b, b                                       ; $6e97: $40
    db $dd                                        ; $6e98: $dd
    ld b, a                                       ; $6e99: $47
    ld c, h                                       ; $6e9a: $4c
    ei                                            ; $6e9b: $fb
    ld l, b                                       ; $6e9c: $68
    ret c                                         ; $6e9d: $d8

    and l                                         ; $6e9e: $a5
    and e                                         ; $6e9f: $a3
    ld c, a                                       ; $6ea0: $4f
    call nc, $b4d6                                ; $6ea1: $d4 $d6 $b4
    add e                                         ; $6ea4: $83
    or c                                          ; $6ea5: $b1
    jp hl                                         ; $6ea6: $e9


jr_051_6ea7:
    sbc c                                         ; $6ea7: $99
    sub h                                         ; $6ea8: $94
    ld [hl], $6f                                  ; $6ea9: $36 $6f
    di                                            ; $6eab: $f3
    ccf                                           ; $6eac: $3f
    xor c                                         ; $6ead: $a9
    cp $d5                                        ; $6eae: $fe $d5
    db $ec                                        ; $6eb0: $ec
    ld de, $c9e7                                  ; $6eb1: $11 $e7 $c9
    or h                                          ; $6eb4: $b4
    ld [$bc71], a                                 ; $6eb5: $ea $71 $bc
    ei                                            ; $6eb8: $fb
    add b                                         ; $6eb9: $80
    scf                                           ; $6eba: $37
    adc e                                         ; $6ebb: $8b
    db $e3                                        ; $6ebc: $e3
    xor [hl]                                      ; $6ebd: $ae
    ld e, b                                       ; $6ebe: $58
    db $d3                                        ; $6ebf: $d3
    ccf                                           ; $6ec0: $3f
    ld c, b                                       ; $6ec1: $48
    ld [$047b], sp                                ; $6ec2: $08 $7b $04
    rst $20                                       ; $6ec5: $e7
    ret                                           ; $6ec6: $c9


    or h                                          ; $6ec7: $b4
    ld [$bc71], a                                 ; $6ec8: $ea $71 $bc
    ei                                            ; $6ecb: $fb
    ld e, $12                                     ; $6ecc: $1e $12
    adc [hl]                                      ; $6ece: $8e
    ei                                            ; $6ecf: $fb
    add c                                         ; $6ed0: $81
    daa                                           ; $6ed1: $27
    inc e                                         ; $6ed2: $1c
    rst $30                                       ; $6ed3: $f7
    add e                                         ; $6ed4: $83
    add h                                         ; $6ed5: $84
    or b                                          ; $6ed6: $b0
    ld b, a                                       ; $6ed7: $47
    rst $20                                       ; $6ed8: $e7
    ret                                           ; $6ed9: $c9


    or h                                          ; $6eda: $b4
    ld [$bc71], a                                 ; $6edb: $ea $71 $bc
    ei                                            ; $6ede: $fb
    jr nc, jr_051_6e75                            ; $6edf: $30 $94

    ld e, $92                                     ; $6ee1: $1e $92
    ld a, [$e8c5]                                 ; $6ee3: $fa $c5 $e8
    rlca                                          ; $6ee6: $07
    add hl, bc                                    ; $6ee7: $09
    ld h, c                                       ; $6ee8: $61
    adc a                                         ; $6ee9: $8f
    nop                                           ; $6eea: $00
    rst $20                                       ; $6eeb: $e7
    ret                                           ; $6eec: $c9


    or h                                          ; $6eed: $b4
    ld [$bc71], a                                 ; $6eee: $ea $71 $bc
    ei                                            ; $6ef1: $fb
    sbc [hl]                                      ; $6ef2: $9e
    ld a, h                                       ; $6ef3: $7c
    sub [hl]                                      ; $6ef4: $96
    ld l, e                                       ; $6ef5: $6b
    pop de                                        ; $6ef6: $d1
    ld d, a                                       ; $6ef7: $57
    ld a, [hl]                                    ; $6ef8: $7e
    sub b                                         ; $6ef9: $90
    db $10                                        ; $6efa: $10
    or $08                                        ; $6efb: $f6 $08
    rst $20                                       ; $6efd: $e7
    ret                                           ; $6efe: $c9


    or h                                          ; $6eff: $b4
    ld [$f15d], a                                 ; $6f00: $ea $5d $f1
    ret c                                         ; $6f03: $d8

    rst $20                                       ; $6f04: $e7
    or e                                          ; $6f05: $b3
    cpl                                           ; $6f06: $2f
    pop bc                                        ; $6f07: $c1
    pop af                                        ; $6f08: $f1
    reti                                          ; $6f09: $d9


    ldh a, [rBCPD]                                ; $6f0a: $f0 $69
    ld b, a                                       ; $6f0c: $47
    cpl                                           ; $6f0d: $2f
    db $e3                                        ; $6f0e: $e3
    pop af                                        ; $6f0f: $f1
    jp Jump_000_0877                              ; $6f10: $c3 $77 $08


    ld a, e                                       ; $6f13: $7b
    inc b                                         ; $6f14: $04
    rrca                                          ; $6f15: $0f
    ld d, a                                       ; $6f16: $57
    ld h, h                                       ; $6f17: $64
    call c, $63a9                                 ; $6f18: $dc $a9 $63
    rst $20                                       ; $6f1b: $e7
    ld e, l                                       ; $6f1c: $5d
    add hl, hl                                    ; $6f1d: $29
    inc sp                                        ; $6f1e: $33
    cp a                                          ; $6f1f: $bf
    rst $38                                       ; $6f20: $ff
    rrca                                          ; $6f21: $0f
    ld c, h                                       ; $6f22: $4c
    add sp, -$09                                  ; $6f23: $e8 $f7
    rst $38                                       ; $6f25: $ff
    ret z                                         ; $6f26: $c8

    inc bc                                        ; $6f27: $03
    ld a, l                                       ; $6f28: $7d
    ld b, l                                       ; $6f29: $45
    ld [hl], d                                    ; $6f2a: $72
    db $fd                                        ; $6f2b: $fd
    rst $28                                       ; $6f2c: $ef
    db $ec                                        ; $6f2d: $ec
    ld de, $4c60                                  ; $6f2e: $11 $60 $4c
    and a                                         ; $6f31: $a7
    and e                                         ; $6f32: $a3
    ld a, l                                       ; $6f33: $7d
    ld e, d                                       ; $6f34: $5a
    push af                                       ; $6f35: $f5
    sbc d                                         ; $6f36: $9a
    ld b, l                                       ; $6f37: $45
    sbc l                                         ; $6f38: $9d
    db $fd                                        ; $6f39: $fd
    or $84                                        ; $6f3a: $f6 $84
    or b                                          ; $6f3c: $b0
    call nz, $ecd6                                ; $6f3d: $c4 $d6 $ec
    ld d, l                                       ; $6f40: $55
    dec hl                                        ; $6f41: $2b
    rst $30                                       ; $6f42: $f7
    ld l, c                                       ; $6f43: $69
    rst $10                                       ; $6f44: $d7
    cp l                                          ; $6f45: $bd
    and [hl]                                      ; $6f46: $a6
    add hl, de                                    ; $6f47: $19
    ld sp, $2214                                  ; $6f48: $31 $14 $22
    rrca                                          ; $6f4b: $0f
    rst $10                                       ; $6f4c: $d7
    cp l                                          ; $6f4d: $bd
    ld h, $ac                                     ; $6f4e: $26 $ac
    inc d                                         ; $6f50: $14
    adc c                                         ; $6f51: $89
    cpl                                           ; $6f52: $2f
    res 0, [hl]                                   ; $6f53: $cb $86
    ld c, $af                                     ; $6f55: $0e $af
    sbc h                                         ; $6f57: $9c
    xor e                                         ; $6f58: $ab
    rst $20                                       ; $6f59: $e7
    rst $30                                       ; $6f5a: $f7
    rst $38                                       ; $6f5b: $ff
    reti                                          ; $6f5c: $d9


    ld d, e                                       ; $6f5d: $53
    ld [hl], a                                    ; $6f5e: $77
    ld [$047b], sp                                ; $6f5f: $08 $7b $04
    ld c, a                                       ; $6f62: $4f
    ld h, d                                       ; $6f63: $62
    add [hl]                                      ; $6f64: $86
    adc $26                                       ; $6f65: $ce $26
    inc hl                                        ; $6f67: $23
    dec h                                         ; $6f68: $25
    db $e3                                        ; $6f69: $e3
    ld a, b                                       ; $6f6a: $78
    ld d, c                                       ; $6f6b: $51
    or l                                          ; $6f6c: $b5
    ld b, h                                       ; $6f6d: $44
    xor c                                         ; $6f6e: $a9
    ld e, a                                       ; $6f6f: $5f
    jp nz, $011e                                  ; $6f70: $c2 $1e $01

    ret nz                                        ; $6f73: $c0

    ld c, a                                       ; $6f74: $4f
    cp l                                          ; $6f75: $bd
    ld l, h                                       ; $6f76: $6c
    add sp, -$80                                  ; $6f77: $e8 $80
    db $fd                                        ; $6f79: $fd
    db $eb                                        ; $6f7a: $eb
    adc h                                         ; $6f7b: $8c
    ld l, [hl]                                    ; $6f7c: $6e
    adc d                                         ; $6f7d: $8a
    or b                                          ; $6f7e: $b0
    ld b, a                                       ; $6f7f: $47
    ld c, a                                       ; $6f80: $4f
    ld c, b                                       ; $6f81: $48
    pop hl                                        ; $6f82: $e1
    or l                                          ; $6f83: $b5
    ld a, $dc                                     ; $6f84: $3e $dc
    rst $20                                       ; $6f86: $e7
    ld l, l                                       ; $6f87: $6d
    cp $b7                                        ; $6f88: $fe $b7
    call Call_000_114a                            ; $6f8a: $cd $4a $11
    or $08                                        ; $6f8d: $f6 $08
    jr @+$11                                      ; $6f8f: $18 $0f

    db $fd                                        ; $6f91: $fd
    ld e, a                                       ; $6f92: $5f
    ld d, c                                       ; $6f93: $51
    and e                                         ; $6f94: $a3
    ld h, c                                       ; $6f95: $61
    ld b, a                                       ; $6f96: $47
    ld c, h                                       ; $6f97: $4c
    ei                                            ; $6f98: $fb
    ld l, b                                       ; $6f99: $68
    ret c                                         ; $6f9a: $d8

    and l                                         ; $6f9b: $a5
    and e                                         ; $6f9c: $a3
    ld c, a                                       ; $6f9d: $4f
    call nc, $b4d6                                ; $6f9e: $d4 $d6 $b4
    add e                                         ; $6fa1: $83
    or c                                          ; $6fa2: $b1
    jp hl                                         ; $6fa3: $e9


    sbc c                                         ; $6fa4: $99
    sub h                                         ; $6fa5: $94
    ld [hl], $6f                                  ; $6fa6: $36 $6f
    di                                            ; $6fa8: $f3
    ccf                                           ; $6fa9: $3f
    xor c                                         ; $6faa: $a9
    cp $d5                                        ; $6fab: $fe $d5
    db $ec                                        ; $6fad: $ec
    ld de, $c9e7                                  ; $6fae: $11 $e7 $c9
    or h                                          ; $6fb1: $b4
    ld [$3825], a                                 ; $6fb2: $ea $25 $38
    ld l, $bc                                     ; $6fb5: $2e $bc
    ei                                            ; $6fb7: $fb
    ld b, d                                       ; $6fb8: $42
    ld h, $ac                                     ; $6fb9: $26 $ac
    ret                                           ; $6fbb: $c9


    push de                                       ; $6fbc: $d5
    ld a, c                                       ; $6fbd: $79
    or $08                                        ; $6fbe: $f6 $08
    rst $20                                       ; $6fc0: $e7
    ret                                           ; $6fc1: $c9


    or h                                          ; $6fc2: $b4
    ld [$3825], a                                 ; $6fc3: $ea $25 $38
    ld l, $bc                                     ; $6fc6: $2e $bc
    ei                                            ; $6fc8: $fb
    ld b, d                                       ; $6fc9: $42
    ld h, $ac                                     ; $6fca: $26 $ac
    and l                                         ; $6fcc: $a5
    inc hl                                        ; $6fcd: $23
    db $eb                                        ; $6fce: $eb
    ld b, a                                       ; $6fcf: $47
    inc sp                                        ; $6fd0: $33
    db $e3                                        ; $6fd1: $e3
    rst $20                                       ; $6fd2: $e7
    sub b                                         ; $6fd3: $90
    xor e                                         ; $6fd4: $ab
    di                                            ; $6fd5: $f3
    db $ec                                        ; $6fd6: $ec
    ld de, $9c4f                                  ; $6fd7: $11 $4f $9c
    push de                                       ; $6fda: $d5
    and h                                         ; $6fdb: $a4
    or $12                                        ; $6fdc: $f6 $12

jr_051_6fde:
    ret nz                                        ; $6fde: $c0

    rst $10                                       ; $6fdf: $d7
    add [hl]                                      ; $6fe0: $86
    nop                                           ; $6fe1: $00
    ret nz                                        ; $6fe2: $c0

    ld c, [hl]                                    ; $6fe3: $4e
    sbc l                                         ; $6fe4: $9d
    push af                                       ; $6fe5: $f5
    ld [$04bd], a                                 ; $6fe6: $ea $bd $04

Jump_051_6fe9:
    ldh a, [$b5]                                  ; $6fe9: $f0 $b5
    ld hl, $4ba0                                  ; $6feb: $21 $a0 $4b
    db $dd                                        ; $6fee: $dd
    db $ec                                        ; $6fef: $ec
    xor h                                         ; $6ff0: $ac
    ld h, $b5                                     ; $6ff1: $26 $b5
    sub a                                         ; $6ff3: $97
    nop                                           ; $6ff4: $00
    cp [hl]                                       ; $6ff5: $be
    ld [hl], $04                                  ; $6ff6: $36 $04
    and b                                         ; $6ff8: $a0
    ld c, e                                       ; $6ff9: $4b
    ld e, l                                       ; $6ffa: $5d
    xor $d4                                       ; $6ffb: $ee $d4
    ld e, c                                       ; $6ffd: $59
    xor a                                         ; $6ffe: $af
    sbc $4b                                       ; $6fff: $de $4b
    nop                                           ; $7001: $00
    ld e, a                                       ; $7002: $5f
    dec de                                        ; $7003: $1b
    ld [bc], a                                    ; $7004: $02
    ld c, a                                       ; $7005: $4f
    add sp, -$4b                                  ; $7006: $e8 $b5
    ld d, a                                       ; $7008: $57
    ld l, c                                       ; $7009: $69
    pop hl                                        ; $700a: $e1
    ld a, e                                       ; $700b: $7b
    add hl, bc                                    ; $700c: $09
    ldh [rOCPD], a                                ; $700d: $e0 $6b
    ld b, e                                       ; $700f: $43
    and b                                         ; $7010: $a0
    xor [hl]                                      ; $7011: $ae
    sbc [hl]                                      ; $7012: $9e
    ld c, c                                       ; $7013: $49
    rla                                           ; $7014: $17
    rst $20                                       ; $7015: $e7
    ld a, e                                       ; $7016: $7b
    add hl, bc                                    ; $7017: $09
    ldh [rOCPD], a                                ; $7018: $e0 $6b
    ld b, e                                       ; $701a: $43
    rst $20                                       ; $701b: $e7
    ld hl, $b4cb                                  ; $701c: $21 $cb $b4
    ld c, b                                       ; $701f: $48
    push af                                       ; $7020: $f5
    call c, Call_051_78e0                         ; $7021: $dc $e0 $78
    ret z                                         ; $7024: $c8

    ld c, h                                       ; $7025: $4c
    ld c, d                                       ; $7026: $4a
    sbc e                                         ; $7027: $9b
    dec c                                         ; $7028: $0d
    rst $18                                       ; $7029: $df
    cp a                                          ; $702a: $bf
    ld c, d                                       ; $702b: $4a
    ld b, l                                       ; $702c: $45
    cpl                                           ; $702d: $2f
    call c, Call_051_4c47                         ; $702e: $dc $47 $4c
    ei                                            ; $7031: $fb
    xor $6c                                       ; $7032: $ee $6c
    ld [$047b], sp                                ; $7034: $08 $7b $04
    rrca                                          ; $7037: $0f
    ld b, a                                       ; $7038: $47
    ld c, a                                       ; $7039: $4f
    xor e                                         ; $703a: $ab
    sbc [hl]                                      ; $703b: $9e
    ld c, l                                       ; $703c: $4d
    ld h, [hl]                                    ; $703d: $66
    xor a                                         ; $703e: $af
    inc c                                         ; $703f: $0c
    db $f4                                        ; $7040: $f4
    dec d                                         ; $7041: $15
    ret                                           ; $7042: $c9


    push af                                       ; $7043: $f5
    cp a                                          ; $7044: $bf
    sbc a                                         ; $7045: $9f
    dec c                                         ; $7046: $0d
    ld c, h                                       ; $7047: $4c
    add sp, -$09                                  ; $7048: $e8 $f7
    rst $38                                       ; $704a: $ff
    add b                                         ; $704b: $80
    ld [$4380], sp                                ; $704c: $08 $80 $43
    db $e3                                        ; $704f: $e3
    rst $38                                       ; $7050: $ff
    sbc a                                         ; $7051: $9f
    dec c                                         ; $7052: $0d
    add hl, sp                                    ; $7053: $39
    db $db                                        ; $7054: $db
    ld b, e                                       ; $7055: $43
    ld [hl], l                                    ; $7056: $75
    or e                                          ; $7057: $b3
    jr nz, jr_051_6fde                            ; $7058: $20 $84

    ld [hl], $19                                  ; $705a: $36 $19
    add hl, sp                                    ; $705c: $39
    jr z, jr_051_70bd                             ; $705d: $28 $5e

    ld [hl], $a6                                  ; $705f: $36 $a6
    pop af                                        ; $7061: $f1
    db $ed                                        ; $7062: $ed
    db $e3                                        ; $7063: $e3
    ld c, [hl]                                    ; $7064: $4e
    cp l                                          ; $7065: $bd
    ld [hl], d                                    ; $7066: $72
    rra                                           ; $7067: $1f
    rst $00                                       ; $7068: $c7
    rst $08                                       ; $7069: $cf
    ld c, e                                       ; $706a: $4b
    dec c                                         ; $706b: $0d
    rst $20                                       ; $706c: $e7
    ld h, a                                       ; $706d: $67
    ld b, e                                       ; $706e: $43
    jr nz, jr_051_7073                            ; $706f: $20 $02

    ld h, b                                       ; $7071: $60
    jp hl                                         ; $7072: $e9


jr_051_7073:
    ld l, h                                       ; $7073: $6c
    or d                                          ; $7074: $b2
    dec hl                                        ; $7075: $2b
    ld e, $f3                                     ; $7076: $1e $f3
    ld b, e                                       ; $7078: $43
    ld c, b                                       ; $7079: $48
    db $f4                                        ; $707a: $f4
    ret z                                         ; $707b: $c8

    add hl, bc                                    ; $707c: $09
    xor a                                         ; $707d: $af
    ld a, c                                       ; $707e: $79
    sbc e                                         ; $707f: $9b
    rst $38                                       ; $7080: $ff
    ld c, c                                       ; $7081: $49
    push af                                       ; $7082: $f5
    rst $08                                       ; $7083: $cf
    call nz, Call_051_4fb4                        ; $7084: $c4 $b4 $4f
    xor e                                         ; $7087: $ab
    sbc [hl]                                      ; $7088: $9e
    ld a, [hl]                                    ; $7089: $7e
    ld [hl], a                                    ; $708a: $77
    ld b, l                                       ; $708b: $45
    add l                                         ; $708c: $85
    xor a                                         ; $708d: $af
    call c, Call_051_7787                         ; $708e: $dc $87 $77
    ld a, c                                       ; $7091: $79
    call $8850                                    ; $7092: $cd $50 $88
    nop                                           ; $7095: $00
    rst $20                                       ; $7096: $e7
    ret                                           ; $7097: $c9


    db $f4                                        ; $7098: $f4
    ld l, b                                       ; $7099: $68
    ld d, d                                       ; $709a: $52
    dec a                                         ; $709b: $3d
    xor l                                         ; $709c: $ad
    and [hl]                                      ; $709d: $a6
    dec d                                         ; $709e: $15
    rst $20                                       ; $709f: $e7
    ld h, e                                       ; $70a0: $63
    sbc d                                         ; $70a1: $9a
    ld [hl], h                                    ; $70a2: $74
    ld a, [$3f2a]                                 ; $70a3: $fa $2a $3f
    db $db                                        ; $70a6: $db
    ld b, e                                       ; $70a7: $43
    ld [hl], l                                    ; $70a8: $75
    or e                                          ; $70a9: $b3
    ldh [$f6], a                                  ; $70aa: $e0 $f6
    db $f4                                        ; $70ac: $f4
    cp $3f                                        ; $70ad: $fe $3f
    sbc e                                         ; $70af: $9b
    xor h                                         ; $70b0: $ac
    call c, $acc7                                 ; $70b1: $dc $c7 $ac
    ld h, l                                       ; $70b4: $65
    ld d, d                                       ; $70b5: $52
    db $e3                                        ; $70b6: $e3
    ld l, $e3                                     ; $70b7: $2e $e3
    sbc d                                         ; $70b9: $9a
    rst $18                                       ; $70ba: $df
    rst $38                                       ; $70bb: $ff
    ld h, a                                       ; $70bc: $67

jr_051_70bd:
    add e                                         ; $70bd: $83
    ld sp, hl                                     ; $70be: $f9
    ld [$6001], sp                                ; $70bf: $08 $01 $60
    and d                                         ; $70c2: $a2
    ld [hl], a                                    ; $70c3: $77
    sub a                                         ; $70c4: $97
    and $3d                                       ; $70c5: $e6 $3d
    ld h, h                                       ; $70c7: $64
    inc [hl]                                      ; $70c8: $34
    ld h, [hl]                                    ; $70c9: $66
    add e                                         ; $70ca: $83
    ld a, c                                       ; $70cb: $79
    or [hl]                                       ; $70cc: $b6
    add a                                         ; $70cd: $87
    ld [$4166], a                                 ; $70ce: $ea $66 $41
    inc b                                         ; $70d1: $04
    adc h                                         ; $70d2: $8c
    ld bc, $b6be                                  ; $70d3: $01 $be $b6

Jump_051_70d6:
    rla                                           ; $70d6: $17
    nop                                           ; $70d7: $00
    cp [hl]                                       ; $70d8: $be
    cp [hl]                                       ; $70d9: $be
    daa                                           ; $70da: $27

jr_051_70db:
    ld h, h                                       ; $70db: $64
    ld l, [hl]                                    ; $70dc: $6e
    cp h                                          ; $70dd: $bc
    cp [hl]                                       ; $70de: $be
    cp a                                          ; $70df: $bf
    adc b                                         ; $70e0: $88
    nop                                           ; $70e1: $00
    ret nz                                        ; $70e2: $c0

    ld c, [hl]                                    ; $70e3: $4e
    xor l                                         ; $70e4: $ad
    sub a                                         ; $70e5: $97
    ret c                                         ; $70e6: $d8

    ld a, a                                       ; $70e7: $7f
    ld b, l                                       ; $70e8: $45

jr_051_70e9:
    ld h, l                                       ; $70e9: $65
    ld h, d                                       ; $70ea: $62
    inc h                                         ; $70eb: $24
    dec sp                                        ; $70ec: $3b
    ld sp, hl                                     ; $70ed: $f9
    sub l                                         ; $70ee: $95
    ld [hl], e                                    ; $70ef: $73
    ld [$a002], sp                                ; $70f0: $08 $02 $a0
    add d                                         ; $70f3: $82
    ld hl, sp+$35                                 ; $70f4: $f8 $35
    or d                                          ; $70f6: $b2
    cp e                                          ; $70f7: $bb
    ld d, e                                       ; $70f8: $53
    ei                                            ; $70f9: $fb
    ccf                                           ; $70fa: $3f

Jump_051_70fb:
    cp d                                          ; $70fb: $ba
    db $10                                        ; $70fc: $10
    ret nz                                        ; $70fd: $c0

    ld c, [hl]                                    ; $70fe: $4e

Call_051_70ff:
    sbc l                                         ; $70ff: $9d
    push af                                       ; $7100: $f5
    ld [$e351], a                                 ; $7101: $ea $51 $e3
    ld a, e                                       ; $7104: $7b
    and d                                         ; $7105: $a2
    ld d, a                                       ; $7106: $57
    dec sp                                        ; $7107: $3b
    ld sp, $1d92                                  ; $7108: $31 $92 $1d
    ld bc, $f520                                  ; $710b: $01 $20 $f5
    jp z, Jump_051_7dce                           ; $710e: $ca $ce $7d

    sub [hl]                                      ; $7111: $96
    sub d                                         ; $7112: $92
    dec hl                                        ; $7113: $2b
    ld a, [hl+]                                   ; $7114: $2a
    sub e                                         ; $7115: $93
    ld e, a                                       ; $7116: $5f
    add hl, sp                                    ; $7117: $39
    add a                                         ; $7118: $87
    jr nz, jr_051_70db                            ; $7119: $20 $c0

    ld c, [hl]                                    ; $711b: $4e
    db $ed                                        ; $711c: $ed
    ld l, l                                       ; $711d: $6d
    cp $97                                        ; $711e: $fe $97
    dec hl                                        ; $7120: $2b
    ld a, [hl+]                                   ; $7121: $2a
    sub e                                         ; $7122: $93
    ld e, a                                       ; $7123: $5f
    add hl, sp                                    ; $7124: $39
    add a                                         ; $7125: $87
    jr nz, jr_051_7140                            ; $7126: $20 $18

    db $db                                        ; $7128: $db
    db $fc                                        ; $7129: $fc
    ld c, a                                       ; $712a: $4f
    adc h                                         ; $712b: $8c
    ld h, h                                       ; $712c: $64
    rst $10                                       ; $712d: $d7
    ld l, [hl]                                    ; $712e: $6e
    halt                                          ; $712f: $76
    db $d3                                        ; $7130: $d3
    scf                                           ; $7131: $37
    ret z                                         ; $7132: $c8

    xor a                                         ; $7133: $af
    sbc h                                         ; $7134: $9c
    ld b, e                                       ; $7135: $43
    db $10                                        ; $7136: $10
    add b                                         ; $7137: $80
    adc a                                         ; $7138: $8f
    db $ec                                        ; $7139: $ec
    dec hl                                        ; $713a: $2b
    rst $30                                       ; $713b: $f7
    ld sp, $ed4b                                  ; $713c: $31 $4b $ed
    adc d                                         ; $713f: $8a

jr_051_7140:
    rst $00                                       ; $7140: $c7
    inc d                                         ; $7141: $14
    rst $18                                       ; $7142: $df
    or e                                          ; $7143: $b3
    ld hl, $0fd3                                  ; $7144: $21 $d3 $0f
    dec d                                         ; $7147: $15
    ld [bc], a                                    ; $7148: $02
    rst $30                                       ; $7149: $f7
    ld b, h                                       ; $714a: $44
    ld a, [bc]                                    ; $714b: $0a
    adc a                                         ; $714c: $8f
    ld h, l                                       ; $714d: $65
    jp z, $d152                                   ; $714e: $ca $52 $d1

    inc hl                                        ; $7151: $23
    dec h                                         ; $7152: $25
    sbc c                                         ; $7153: $99
    call nz, $d338                                ; $7154: $c4 $38 $d3
    adc $55                                       ; $7157: $ce $55
    sub a                                         ; $7159: $97
    ret c                                         ; $715a: $d8

    sbc b                                         ; $715b: $98
    and c                                         ; $715c: $a1
    and h                                         ; $715d: $a4
    xor a                                         ; $715e: $af
    jr z, jr_051_70e9                             ; $715f: $28 $88

    nop                                           ; $7161: $00
    ld c, a                                       ; $7162: $4f
    cp h                                          ; $7163: $bc
    ld b, h                                       ; $7164: $44
    ld l, d                                       ; $7165: $6a
    jp c, $93d1                                   ; $7166: $da $d1 $93

    add sp, $38                                   ; $7169: $e8 $38
    db $db                                        ; $716b: $db
    ld b, e                                       ; $716c: $43
    ld [hl], l                                    ; $716d: $75
    or e                                          ; $716e: $b3
    ldh [$f6], a                                  ; $716f: $e0 $f6
    call nz, Call_051_47b4                        ; $7171: $c4 $b4 $47
    ld e, a                                       ; $7174: $5f
    ld d, c                                       ; $7175: $51
    add hl, sp                                    ; $7176: $39
    dec d                                         ; $7177: $15
    dec e                                         ; $7178: $1d
    call nc, $95c8                                ; $7179: $d4 $c8 $95
    ld h, l                                       ; $717c: $65
    ld d, d                                       ; $717d: $52
    bit 2, d                                      ; $717e: $cb $52

Jump_051_7180:
    db $ed                                        ; $7180: $ed
    ld c, e                                       ; $7181: $4b
    sbc a                                         ; $7182: $9f
    sbc d                                         ; $7183: $9a
    ld e, c                                       ; $7184: $59
    db $10                                        ; $7185: $10
    ld bc, $ef4f                                  ; $7186: $01 $4f $ef
    jp nc, $6da6                                  ; $7189: $d2 $a6 $6d

    db $ec                                        ; $718c: $ec
    adc d                                         ; $718d: $8a
    rst $00                                       ; $718e: $c7
    inc d                                         ; $718f: $14
    ccf                                           ; $7190: $3f
    adc c                                         ; $7191: $89

Jump_051_7192:
    sbc [hl]                                      ; $7192: $9e
    cp l                                          ; $7193: $bd
    ld a, [hl]                                    ; $7194: $7e
    or [hl]                                       ; $7195: $b6
    add a                                         ; $7196: $87
    ld [$c166], a                                 ; $7197: $ea $66 $c1
    db $ed                                        ; $719a: $ed
    jp hl                                         ; $719b: $e9


    dec e                                         ; $719c: $1d
    push hl                                       ; $719d: $e5
    or e                                          ; $719e: $b3
    rst $00                                       ; $719f: $c7
    db $fc                                        ; $71a0: $fc
    cp $9f                                        ; $71a1: $fe $9f
    ld l, $52                                     ; $71a3: $2e $52
    di                                            ; $71a5: $f3
    ei                                            ; $71a6: $fb
    rst $38                                       ; $71a7: $ff

jr_051_71a8:
    or d                                          ; $71a8: $b2
    pop de                                        ; $71a9: $d1
    ld [hl], e                                    ; $71aa: $73
    db $fd                                        ; $71ab: $fd
    db $10                                        ; $71ac: $10
    adc b                                         ; $71ad: $88
    nop                                           ; $71ae: $00
    adc a                                         ; $71af: $8f
    ld c, e                                       ; $71b0: $4b
    call Call_000_2959                            ; $71b1: $cd $59 $29
    ld [c], a                                     ; $71b4: $e2
    or c                                          ; $71b5: $b1
    ld [hl], d                                    ; $71b6: $72
    rra                                           ; $71b7: $1f
    or e                                          ; $71b8: $b3
    call nc, $53b4                                ; $71b9: $d4 $b4 $53
    db $db                                        ; $71bc: $db
    sbc b                                         ; $71bd: $98
    ldh a, [$ca]                                  ; $71be: $f0 $ca
    ret z                                         ; $71c0: $c8

    db $ec                                        ; $71c1: $ec
    pop de                                        ; $71c2: $d1
    ld [de], a                                    ; $71c3: $12
    dec e                                         ; $71c4: $1d
    ld [hl], b                                    ; $71c5: $70
    add b                                         ; $71c6: $80
    adc a                                         ; $71c7: $8f
    db $ec                                        ; $71c8: $ec
    dec hl                                        ; $71c9: $2b
    rst $30                                       ; $71ca: $f7
    ld sp, $ed4b                                  ; $71cb: $31 $4b $ed
    adc d                                         ; $71ce: $8a
    rst $00                                       ; $71cf: $c7
    inc d                                         ; $71d0: $14
    rst $18                                       ; $71d1: $df
    sub e                                         ; $71d2: $93
    add sp, $5d                                   ; $71d3: $e8 $5d
    dec d                                         ; $71d5: $15
    ld [bc], a                                    ; $71d6: $02
    ld de, $7ec0                                  ; $71d7: $11 $c0 $7e
    jp nz, $ac71                                  ; $71da: $c2 $71 $ac

    dec e                                         ; $71dd: $1d
    dec a                                         ; $71de: $3d
    sbc h                                         ; $71df: $9c
    sbc a                                         ; $71e0: $9f
    dec c                                         ; $71e1: $0d
    sbc c                                         ; $71e2: $99
    halt                                          ; $71e3: $76
    db $f4                                        ; $71e4: $f4
    ld [hl], h                                    ; $71e5: $74
    ld e, [hl]                                    ; $71e6: $5e
    xor [hl]                                      ; $71e7: $ae
    xor b                                         ; $71e8: $a8
    db $10                                        ; $71e9: $10
    cp b                                          ; $71ea: $b8
    and a                                         ; $71eb: $a7
    ld [hl], a                                    ; $71ec: $77
    ld l, c                                       ; $71ed: $69
    db $d3                                        ; $71ee: $d3
    ld [hl], $e6                                  ; $71ef: $36 $e6
    dec [hl]                                      ; $71f1: $35
    sub e                                         ; $71f2: $93
    di                                            ; $71f3: $f3
    db $ec                                        ; $71f4: $ec
    push af                                       ; $71f5: $f5
    ld h, l                                       ; $71f6: $65
    ld a, [hl]                                    ; $71f7: $7e
    sbc h                                         ; $71f8: $9c

Jump_051_71f9:
    ld l, c                                       ; $71f9: $69
    ld e, a                                       ; $71fa: $5f
    ld [hl], $74                                  ; $71fb: $36 $74
    db $f4                                        ; $71fd: $f4
    call nz, Call_051_57fc                        ; $71fe: $c4 $fc $57
    add hl, sp                                    ; $7201: $39
    ld b, h                                       ; $7202: $44
    add b                                         ; $7203: $80
    sbc b                                         ; $7204: $98
    ld h, a                                       ; $7205: $67
    dec hl                                        ; $7206: $2b
    and $d9                                       ; $7207: $e6 $d9
    ld l, b                                       ; $7209: $68
    rrca                                          ; $720a: $0f
    sbc h                                         ; $720b: $9c
    ld [hl], c                                    ; $720c: $71
    adc a                                         ; $720d: $8f
    ld a, $5b                                     ; $720e: $3e $5b
    ld [c], a                                     ; $7210: $e2
    or c                                          ; $7211: $b1
    ldh [$3c], a                                  ; $7212: $e0 $3c
    ld a, d                                       ; $7214: $7a
    ld sp, hl                                     ; $7215: $f9
    db $10                                        ; $7216: $10
    ld h, l                                       ; $7217: $65
    ld c, e                                       ; $7218: $4b
    ld h, l                                       ; $7219: $65
    jr c, jr_051_71a8                             ; $721a: $38 $8c

    rst $30                                       ; $721c: $f7
    rst $38                                       ; $721d: $ff
    ld [hl], h                                    ; $721e: $74
    sub c                                         ; $721f: $91
    sbc d                                         ; $7220: $9a
    rst $18                                       ; $7221: $df
    rst $38                                       ; $7222: $ff
    ld h, a                                       ; $7223: $67
    xor a                                         ; $7224: $af
    inc l                                         ; $7225: $2c
    dec de                                        ; $7226: $1b
    dec a                                         ; $7227: $3d
    rst $10                                       ; $7228: $d7
    ccf                                           ; $7229: $3f
    dec de                                        ; $722a: $1b
    or e                                          ; $722b: $b3
    call nc, $a1f2                                ; $722c: $d4 $f2 $a1
    and d                                         ; $722f: $a2
    ld [hl], a                                    ; $7230: $77
    push bc                                       ; $7231: $c5
    ld h, e                                       ; $7232: $63
    cp h                                          ; $7233: $bc
    rst $08                                       ; $7234: $cf
    ld e, [hl]                                    ; $7235: $5e
    or l                                          ; $7236: $b5
    xor e                                         ; $7237: $ab
    ld b, d                                       ; $7238: $42
    jr nz, jr_051_723d                            ; $7239: $20 $02

    adc a                                         ; $723b: $8f
    ld c, e                                       ; $723c: $4b

jr_051_723d:
    ld c, l                                       ; $723d: $4d
    xor a                                         ; $723e: $af
    sub [hl]                                      ; $723f: $96
    or d                                          ; $7240: $b2
    ld sp, $d57b                                  ; $7241: $31 $7b $d5
    cp b                                          ; $7244: $b8
    ld d, e                                       ; $7245: $53
    daa                                           ; $7246: $27
    ld c, $07                                     ; $7247: $0e $07
    call nc, $b87d                                ; $7249: $d4 $7d $b8
    add hl, sp                                    ; $724c: $39
    ld b, h                                       ; $724d: $44
    push hl                                       ; $724e: $e5
    sub l                                         ; $724f: $95
    ld l, [hl]                                    ; $7250: $6e
    cp e                                          ; $7251: $bb
    call nc, Call_051_53b8                        ; $7252: $d4 $b8 $53
    rrca                                          ; $7255: $0f

jr_051_7256:
    ld a, b                                       ; $7256: $78
    or e                                          ; $7257: $b3
    jr c, @-$10                                   ; $7258: $38 $ee

    adc d                                         ; $725a: $8a
    dec [hl]                                      ; $725b: $35
    dec c                                         ; $725c: $0d
    rlca                                          ; $725d: $07
    cp d                                          ; $725e: $ba
    ld a, [hl-]                                   ; $725f: $3a
    and a                                         ; $7260: $a7
    or h                                          ; $7261: $b4
    db $dd                                        ; $7262: $dd
    push hl                                       ; $7263: $e5
    ld b, e                                       ; $7264: $43
    call nc, $d868                                ; $7265: $d4 $68 $d8
    reti                                          ; $7268: $d9


    xor e                                         ; $7269: $ab
    jr nz, jr_051_726e                            ; $726a: $20 $02

    rrca                                          ; $726c: $0f
    push de                                       ; $726d: $d5

jr_051_726e:
    call $9b3a                                    ; $726e: $cd $3a $9b
    ld [c], a                                     ; $7271: $e2
    rst $00                                       ; $7272: $c7
    rst $28                                       ; $7273: $ef
    rra                                           ; $7274: $1f
    ld c, d                                       ; $7275: $4a
    call $7306                                    ; $7276: $cd $06 $73
    ld d, a                                       ; $7279: $57
    add l                                         ; $727a: $85
    or b                                          ; $727b: $b0
    rst $18                                       ; $727c: $df
    ld a, c                                       ; $727d: $79
    inc l                                         ; $727e: $2c
    halt                                          ; $727f: $76
    push bc                                       ; $7280: $c5
    ld h, e                                       ; $7281: $63
    ld sp, hl                                     ; $7282: $f9
    jr nz, jr_051_7256                            ; $7283: $20 $d1

    ld a, $ed                                     ; $7285: $3e $ed
    add sp, $25                                   ; $7287: $e8 $25
    ld e, $10                                     ; $7289: $1e $10
    ld b, d                                       ; $728b: $42
    dec de                                        ; $728c: $1b
    db $e3                                        ; $728d: $e3
    xor [hl]                                      ; $728e: $ae
    ld c, b                                       ; $728f: $48
    sbc $3f                                       ; $7290: $de $3f
    cp d                                          ; $7292: $ba
    ld a, [hl-]                                   ; $7293: $3a
    halt                                          ; $7294: $76
    ld b, a                                       ; $7295: $47
    jp c, $6a90                                   ; $7296: $da $90 $6a

    add hl, hl                                    ; $7299: $29
    or $08                                        ; $729a: $f6 $08
    adc a                                         ; $729c: $8f
    ld l, e                                       ; $729d: $6b
    ld e, d                                       ; $729e: $5a
    push af                                       ; $729f: $f5
    ld a, [hl-]                                   ; $72a0: $3a
    ld l, h                                       ; $72a1: $6c
    ret                                           ; $72a2: $c9


    db $f4                                        ; $72a3: $f4
    ld l, d                                       ; $72a4: $6a
    add hl, hl                                    ; $72a5: $29
    sbc a                                         ; $72a6: $9f
    dec c                                         ; $72a7: $0d
    and $42                                       ; $72a8: $e6 $42
    and [hl]                                      ; $72aa: $a6
    ld a, b                                       ; $72ab: $78
    ld d, c                                       ; $72ac: $51
    db $ec                                        ; $72ad: $ec
    add a                                         ; $72ae: $87
    pop af                                        ; $72af: $f1
    cp $9f                                        ; $72b0: $fe $9f
    ld l, $92                                     ; $72b2: $2e $92
    rst $20                                       ; $72b4: $e7
    rst $30                                       ; $72b5: $f7
    rst $38                                       ; $72b6: $ff
    ld bc, $166f                                  ; $72b7: $01 $6f $16
    rst $00                                       ; $72ba: $c7
    ld e, l                                       ; $72bb: $5d
    or c                                          ; $72bc: $b1
    and [hl]                                      ; $72bd: $a6
    ld h, a                                       ; $72be: $67
    add sp, $6c                                   ; $72bf: $e8 $6c
    or d                                          ; $72c1: $b2
    dec hl                                        ; $72c2: $2b
    ld e, $d3                                     ; $72c3: $1e $d3
    rst $28                                       ; $72c5: $ef
    rst $38                                       ; $72c6: $ff
    db $e3                                        ; $72c7: $e3
    ld c, [hl]                                    ; $72c8: $4e
    db $fd                                        ; $72c9: $fd
    ld c, l                                       ; $72ca: $4d
    rst $10                                       ; $72cb: $d7
    ld [hl], b                                    ; $72cc: $70
    ld [hl], e                                    ; $72cd: $73
    adc b                                         ; $72ce: $88
    ld h, d                                       ; $72cf: $62
    adc a                                         ; $72d0: $8f

Jump_051_72d1:
    nop                                           ; $72d1: $00
    adc a                                         ; $72d2: $8f
    ld c, e                                       ; $72d3: $4b
    xor e                                         ; $72d4: $ab
    or e                                          ; $72d5: $b3
    ld sp, $4d4b                                  ; $72d6: $31 $4b $4d
    cp a                                          ; $72d9: $bf
    add hl, sp                                    ; $72da: $39
    ld a, e                                       ; $72db: $7b
    db $ec                                        ; $72dc: $ec
    adc d                                         ; $72dd: $8a
    rst $00                                       ; $72de: $c7
    jp z, Jump_000_367d                           ; $72df: $ca $7d $36

    ld e, c                                       ; $72e2: $59
    ld a, [$4a1b]                                 ; $72e3: $fa $1b $4a
    set 0, [hl]                                   ; $72e6: $cb $c6
    ld [de], a                                    ; $72e8: $12
    rra                                           ; $72e9: $1f
    adc $8f                                       ; $72ea: $ce $8f
    add sp, -$39                                  ; $72ec: $e8 $c7
    rst $38                                       ; $72ee: $ff
    push de                                       ; $72ef: $d5
    ld d, d                                       ; $72f0: $52
    ld h, a                                       ; $72f1: $67
    ld a, e                                       ; $72f2: $7b
    xor b                                         ; $72f3: $a8
    ld l, [hl]                                    ; $72f4: $6e
    ld d, $dc                                     ; $72f5: $16 $dc
    db $e3                                        ; $72f7: $e3
    ld d, d                                       ; $72f8: $52
    db $eb                                        ; $72f9: $eb
    jp nz, $d371                                  ; $72fa: $c2 $71 $d3

    ld e, $5d                                     ; $72fd: $1e $5d
    dec a                                         ; $72ff: $3d
    ld a, e                                       ; $7300: $7b
    push de                                       ; $7301: $d5
    xor [hl]                                      ; $7302: $ae
    ld a, b                                       ; $7303: $78
    call z, Call_051_4c86                         ; $7304: $cc $86 $4c
    dec sp                                        ; $7307: $3b
    ld a, d                                       ; $7308: $7a
    adc d                                         ; $7309: $8a
    rla                                           ; $730a: $17
    dec d                                         ; $730b: $15
    ld [hl], d                                    ; $730c: $72
    ld [hl], $1a                                  ; $730d: $36 $1a
    ld [hl-], a                                   ; $730f: $32
    dec de                                        ; $7310: $1b
    cp [hl]                                       ; $7311: $be
    and e                                         ; $7312: $a3
    sub a                                         ; $7313: $97
    ld a, $b2                                     ; $7314: $3e $b2
    xor a                                         ; $7316: $af
    call c, $9367                                 ; $7317: $dc $67 $93
    pop hl                                        ; $731a: $e1
    cp a                                          ; $731b: $bf
    call nz, $aba3                                ; $731c: $c4 $a3 $ab
    ld h, a                                       ; $731f: $67
    xor a                                         ; $7320: $af
    jp c, Jump_000_3e5d                           ; $7321: $da $5d $3e

    ld b, h                                       ; $7324: $44
    add l                                         ; $7325: $85
    ld b, b                                       ; $7326: $40
    inc b                                         ; $7327: $04
    ret nz                                        ; $7328: $c0

    ld c, h                                       ; $7329: $4c
    dec sp                                        ; $732a: $3b
    ld d, a                                       ; $732b: $57
    ld e, l                                       ; $732c: $5d
    ld h, d                                       ; $732d: $62
    ld h, e                                       ; $732e: $63
    adc c                                         ; $732f: $89
    rst $00                                       ; $7330: $c7
    reti                                          ; $7331: $d9


    ld [hl], d                                    ; $7332: $72
    db $f4                                        ; $7333: $f4
    sbc b                                         ; $7334: $98
    and l                                         ; $7335: $a5
    ldh [rNR34], a                                ; $7336: $e0 $1e
    sub a                                         ; $7338: $97
    ld a, [de]                                    ; $7339: $1a
    push hl                                       ; $733a: $e5
    or e                                          ; $733b: $b3
    rst $00                                       ; $733c: $c7
    call nz, $a5a8                                ; $733d: $c4 $a8 $a5
    inc hl                                        ; $7340: $23
    sub e                                         ; $7341: $93
    and e                                         ; $7342: $a3
    ld l, e                                       ; $7343: $6b
    ld hl, $cdc3                                  ; $7344: $21 $c3 $cd
    ld hl, $dc6a                                  ; $7347: $21 $6a $dc
    xor c                                         ; $734a: $a9
    rlca                                          ; $734b: $07
    cp h                                          ; $734c: $bc
    ld e, c                                       ; $734d: $59
    inc e                                         ; $734e: $1c
    ld [hl], a                                    ; $734f: $77
    push bc                                       ; $7350: $c5
    sbc d                                         ; $7351: $9a
    sbc $d1                                       ; $7352: $de $d1
    ld h, e                                       ; $7354: $63
    sub [hl]                                      ; $7355: $96
    ld e, d                                       ; $7356: $5a
    rra                                           ; $7357: $1f
    sub $c2                                       ; $7358: $d6 $c2
    ld bc, $fe4b                                  ; $735a: $01 $4b $fe
    rra                                           ; $735d: $1f
    rst $10                                       ; $735e: $d7
    ld b, a                                       ; $735f: $47
    sbc $5d                                       ; $7360: $de $5d
    ld a, $44                                     ; $7362: $3e $44
    adc l                                         ; $7364: $8d
    add [hl]                                      ; $7365: $86
    sbc l                                         ; $7366: $9d
    cp l                                          ; $7367: $bd
    ld a, [bc]                                    ; $7368: $0a
    ld [hl+], a                                   ; $7369: $22
    adc a                                         ; $736a: $8f
    ld c, e                                       ; $736b: $4b
    adc l                                         ; $736c: $8d
    sub h                                         ; $736d: $94
    db $ec                                        ; $736e: $ec
    rra                                           ; $736f: $1f
    cp c                                          ; $7370: $b9
    ld h, [hl]                                    ; $7371: $66
    xor a                                         ; $7372: $af
    ld e, d                                       ; $7373: $5a
    ld [hl], $74                                  ; $7374: $36 $74
    ld hl, $1b4b                                  ; $7376: $21 $4b $1b
    ld [hl], d                                    ; $7379: $72
    or [hl]                                       ; $737a: $b6
    add a                                         ; $737b: $87
    ld [$0d66], a                                 ; $737c: $ea $66 $0d
    sbc h                                         ; $737f: $9c
    ld [hl], c                                    ; $7380: $71
    adc a                                         ; $7381: $8f
    ld h, [hl]                                    ; $7382: $66
    ccf                                           ; $7383: $3f
    adc h                                         ; $7384: $8c
    rst $30                                       ; $7385: $f7
    rst $38                                       ; $7386: $ff
    ld [hl], h                                    ; $7387: $74
    sub c                                         ; $7388: $91
    sbc d                                         ; $7389: $9a
    rst $18                                       ; $738a: $df
    rst $38                                       ; $738b: $ff
    sub a                                         ; $738c: $97
    adc l                                         ; $738d: $8d
    sbc [hl]                                      ; $738e: $9e
    db $eb                                        ; $738f: $eb
    add a                                         ; $7390: $87
    inc c                                         ; $7391: $0c
    rst $20                                       ; $7392: $e7
    rla                                           ; $7393: $17
    ld [hl-], a                                   ; $7394: $32
    push bc                                       ; $7395: $c5
    adc e                                         ; $7396: $8b
    ld h, d                                       ; $7397: $62
    adc a                                         ; $7398: $8f
    nop                                           ; $7399: $00
    ld h, b                                       ; $739a: $60
    sub d                                         ; $739b: $92
    dec e                                         ; $739c: $1d
    dec a                                         ; $739d: $3d
    sbc e                                         ; $739e: $9b
    db $ec                                        ; $739f: $ec
    cp $5f                                        ; $73a0: $fe $5f
    ld c, e                                       ; $73a2: $4b
    inc a                                         ; $73a3: $3c
    ret c                                         ; $73a4: $d8

    rst $28                                       ; $73a5: $ef
    ld [hl], c                                    ; $73a6: $71
    xor c                                         ; $73a7: $a9
    reti                                          ; $73a8: $d9


    xor [hl]                                      ; $73a9: $ae
    ld e, [hl]                                    ; $73aa: $5e
    jp hl                                         ; $73ab: $e9


    ld a, e                                       ; $73ac: $7b
    ld l, l                                       ; $73ad: $6d
    cp b                                          ; $73ae: $b8
    add hl, sp                                    ; $73af: $39
    ld b, h                                       ; $73b0: $44
    adc l                                         ; $73b1: $8d
    dec sp                                        ; $73b2: $3b
    push af                                       ; $73b3: $f5
    add b                                         ; $73b4: $80
    scf                                           ; $73b5: $37
    adc e                                         ; $73b6: $8b
    db $e3                                        ; $73b7: $e3
    xor [hl]                                      ; $73b8: $ae
    ld e, b                                       ; $73b9: $58
    db $d3                                        ; $73ba: $d3
    ld [hl], b                                    ; $73bb: $70
    and b                                         ; $73bc: $a0
    xor e                                         ; $73bd: $ab
    ld [hl], e                                    ; $73be: $73
    ld c, d                                       ; $73bf: $4a
    db $db                                        ; $73c0: $db
    ld e, l                                       ; $73c1: $5d
    ld a, $44                                     ; $73c2: $3e $44
    adc l                                         ; $73c4: $8d
    add [hl]                                      ; $73c5: $86
    sbc l                                         ; $73c6: $9d
    cp l                                          ; $73c7: $bd
    adc d                                         ; $73c8: $8a
    dec a                                         ; $73c9: $3d
    ld [bc], a                                    ; $73ca: $02
    jr nz, @+$46                                  ; $73cb: $20 $44

    ld c, d                                       ; $73cd: $4a
    add $ac                                       ; $73ce: $c6 $ac
    add hl, hl                                    ; $73d0: $29
    cp [hl]                                       ; $73d1: $be
    rst $08                                       ; $73d2: $cf
    sub [hl]                                      ; $73d3: $96
    ld c, c                                       ; $73d4: $49
    call $e326                                    ; $73d5: $cd $26 $e3
    ld hl, sp-$27                                 ; $73d8: $f8 $d9
    sbc b                                         ; $73da: $98
    halt                                          ; $73db: $76
    inc [hl]                                      ; $73dc: $34
    inc e                                         ; $73dd: $1c
    and b                                         ; $73de: $a0
    rst $38                                       ; $73df: $ff
    ld l, e                                       ; $73e0: $6b
    pop af                                        ; $73e1: $f1
    ld b, e                                       ; $73e2: $43
    adc a                                         ; $73e3: $8f
    ld e, $ce                                     ; $73e4: $1e $ce
    rst $28                                       ; $73e6: $ef
    pop bc                                        ; $73e7: $c1
    jr z, @+$48                                   ; $73e8: $28 $46

    push de                                       ; $73ea: $d5
    sbc [hl]                                      ; $73eb: $9e
    rst $20                                       ; $73ec: $e7
    xor h                                         ; $73ed: $ac
    inc d                                         ; $73ee: $14
    adc c                                         ; $73ef: $89
    sbc [hl]                                      ; $73f0: $9e
    and c                                         ; $73f1: $a1
    inc hl                                        ; $73f2: $23
    and [hl]                                      ; $73f3: $a6
    ld a, l                                       ; $73f4: $7d
    inc [hl]                                      ; $73f5: $34
    db $ec                                        ; $73f6: $ec
    jp nc, Jump_000_27d1                          ; $73f7: $d2 $d1 $27

    ld l, d                                       ; $73fa: $6a
    ld l, e                                       ; $73fb: $6b
    jp c, $d8c1                                   ; $73fc: $da $c1 $d8

    db $f4                                        ; $73ff: $f4
    ld c, h                                       ; $7400: $4c
    ld c, d                                       ; $7401: $4a
    sbc e                                         ; $7402: $9b
    or a                                          ; $7403: $b7
    ld sp, hl                                     ; $7404: $f9
    sbc a                                         ; $7405: $9f
    ld d, h                                       ; $7406: $54
    rst $38                                       ; $7407: $ff
    ld l, d                                       ; $7408: $6a
    cp b                                          ; $7409: $b8
    di                                            ; $740a: $f3
    ld h, h                                       ; $740b: $64
    call c, $f5a9                                 ; $740c: $dc $a9 $f5
    ld [$11ea], a                                 ; $740f: $ea $ea $11
    db $d3                                        ; $7412: $d3
    ld e, $b2                                     ; $7413: $1e $b2
    dec sp                                        ; $7415: $3b
    ld h, b                                       ; $7416: $60
    and $5f                                       ; $7417: $e6 $5f
    sub e                                         ; $7419: $93
    pop hl                                        ; $741a: $e1
    adc $93                                       ; $741b: $ce $93
    and l                                         ; $741d: $a5
    adc a                                         ; $741e: $8f
    ld e, [hl]                                    ; $741f: $5e
    daa                                           ; $7420: $27
    ld [c], a                                     ; $7421: $e2
    jp $d9f9                                      ; $7422: $c3 $f9 $d9


    dec hl                                        ; $7425: $2b
    inc bc                                        ; $7426: $03
    ld h, [hl]                                    ; $7427: $66
    cp $35                                        ; $7428: $fe $35
    inc bc                                        ; $742a: $03
    call c, $dfa1                                 ; $742b: $dc $a1 $df

jr_051_742e:
    ld a, h                                       ; $742e: $7c
    ld [hl], $1a                                  ; $742f: $36 $1a
    ld [hl-], a                                   ; $7431: $32
    ld h, b                                       ; $7432: $60
    and $5f                                       ; $7433: $e6 $5f
    inc sp                                        ; $7435: $33
    ret nc                                        ; $7436: $d0

    and l                                         ; $7437: $a5
    xor $d9                                       ; $7438: $ee $d9
    db $ec                                        ; $743a: $ec
    sub l                                         ; $743b: $95
    ld l, c                                       ; $743c: $69
    adc c                                         ; $743d: $89
    sbc [hl]                                      ; $743e: $9e
    ret c                                         ; $743f: $d8

    or h                                          ; $7440: $b4
    ld hl, $3b67                                  ; $7441: $21 $67 $3b
    ld a, d                                       ; $7444: $7a
    call c, $e7a9                                 ; $7445: $dc $a9 $e7
    adc c                                         ; $7448: $89
    xor b                                         ; $7449: $a8
    ld [hl], c                                    ; $744a: $71
    and a                                         ; $744b: $a7
    ld e, [hl]                                    ; $744c: $5e
    cp c                                          ; $744d: $b9
    cpl                                           ; $744e: $2f
    ld a, l                                       ; $744f: $7d
    ld [hl], h                                    ; $7450: $74
    call $d250                                    ; $7451: $cd $50 $d2
    ld d, a                                       ; $7454: $57
    inc d                                         ; $7455: $14
    call c, $95f9                                 ; $7456: $dc $f9 $95
    jp hl                                         ; $7459: $e9


    add a                                         ; $745a: $87
    ld a, b                                       ; $745b: $78
    push af                                       ; $745c: $f5

Jump_051_745d:
    ld a, [hl-]                                   ; $745d: $3a
    ld l, h                                       ; $745e: $6c
    ret                                           ; $745f: $c9


    ld [hl], b                                    ; $7460: $70
    ld a, [hl]                                    ; $7461: $7e
    ld [hl], $98                                  ; $7462: $36 $98
    jp $3df9                                      ; $7464: $c3 $f9 $3d


    jr jr_051_742e                                ; $7467: $18 $c5

    xor b                                         ; $7469: $a8
    jp c, $d9f3                                   ; $746a: $da $f3 $d9

    ld l, b                                       ; $746d: $68
    ret z                                         ; $746e: $c8

    ld l, h                                       ; $746f: $6c
    ld [hl-], a                                   ; $7470: $32
    ld d, d                                       ; $7471: $52
    or d                                          ; $7472: $b2
    ld b, e                                       ; $7473: $43
    inc l                                         ; $7474: $2c
    ccf                                           ; $7475: $3f
    cp a                                          ; $7476: $bf
    xor $b5                                       ; $7477: $ee $b5
    dec sp                                        ; $7479: $3b
    dec de                                        ; $747a: $1b
    ld [hl-], a                                   ; $747b: $32
    ld c, c                                       ; $747c: $49
    ldh [$ce], a                                  ; $747d: $e0 $ce
    sub e                                         ; $747f: $93
    sub c                                         ; $7480: $91
    sub d                                         ; $7481: $92
    and l                                         ; $7482: $a5
    xor e                                         ; $7483: $ab
    ld l, e                                       ; $7484: $6b
    ld d, a                                       ; $7485: $57
    inc a                                         ; $7486: $3c
    sub [hl]                                      ; $7487: $96
    rrca                                          ; $7488: $0f
    rst $30                                       ; $7489: $f7
    jp c, $bd9d                                   ; $748a: $da $9d $bd

    ld d, d                                       ; $748d: $52
    inc hl                                        ; $748e: $23
    and [hl]                                      ; $748f: $a6
    ld a, l                                       ; $7490: $7d
    ld [hl], a                                    ; $7491: $77
    ld [hl], $64                                  ; $7492: $36 $64
    add a                                         ; $7494: $87
    ld c, b                                       ; $7495: $48
    ld [bc], a                                    ; $7496: $02
    ld de, $484f                                  ; $7497: $11 $4f $48
    pop hl                                        ; $749a: $e1
    dec [hl]                                      ; $749b: $35
    ld l, a                                       ; $749c: $6f
    di                                            ; $749d: $f3
    cp a                                          ; $749e: $bf
    ld l, l                                       ; $749f: $6d
    ld d, [hl]                                    ; $74a0: $56
    adc d                                         ; $74a1: $8a
    jr nz, @+$11                                  ; $74a2: $20 $0f

    rst $00                                       ; $74a4: $c7
    rst $08                                       ; $74a5: $cf
    add $36                                       ; $74a6: $c6 $36
    dec hl                                        ; $74a8: $2b
    ld b, l                                       ; $74a9: $45
    db $10                                        ; $74aa: $10

jr_051_74ab:
    jr nz, jr_051_74ab                            ; $74ab: $20 $fe

    cpl                                           ; $74ad: $2f
    jp z, $d887                                   ; $74ae: $ca $87 $d8

    ld b, b                                       ; $74b1: $40
    jr jr_051_74f6                                ; $74b2: $18 $42

    add l                                         ; $74b4: $85
    ld b, h                                       ; $74b5: $44
    ld b, a                                       ; $74b6: $47
    ld e, a                                       ; $74b7: $5f
    ld d, c                                       ; $74b8: $51
    ld [$89e7], sp                                ; $74b9: $08 $e7 $89
    sub b                                         ; $74bc: $90
    ld [$250e], a                                 ; $74bd: $ea $0e $25
    ld [$f520], sp                                ; $74c0: $08 $20 $f5
    sbc e                                         ; $74c3: $9b
    ld [hl+], a                                   ; $74c4: $22
    cpl                                           ; $74c5: $2f
    rst $20                                       ; $74c6: $e7
    ld e, a                                       ; $74c7: $5f
    ld a, [bc]                                    ; $74c8: $0a
    ld bc, $f520                                  ; $74c9: $01 $20 $f5
    sbc e                                         ; $74cc: $9b
    ld [hl+], a                                   ; $74cd: $22
    cpl                                           ; $74ce: $2f
    sub a                                         ; $74cf: $97
    ld [hl], b                                    ; $74d0: $70
    push af                                       ; $74d1: $f5
    ccf                                           ; $74d2: $3f
    ld [bc], a                                    ; $74d3: $02
    and b                                         ; $74d4: $a0
    inc de                                        ; $74d5: $13
    sbc d                                         ; $74d6: $9a
    db $d3                                        ; $74d7: $d3
    sub c                                         ; $74d8: $91
    push af                                       ; $74d9: $f5
    and e                                         ; $74da: $a3
    sbc c                                         ; $74db: $99
    pop af                                        ; $74dc: $f1
    ld [hl], e                                    ; $74dd: $73
    jr nz, jr_051_7520                            ; $74de: $20 $40

    sbc e                                         ; $74e0: $9b
    xor e                                         ; $74e1: $ab
    ld c, $d1                                     ; $74e2: $0e $d1
    jp nz, $da73                                  ; $74e4: $c2 $73 $da

    ld c, b                                       ; $74e7: $48
    sub d                                         ; $74e8: $92
    ld de, $8da0                                  ; $74e9: $11 $a0 $8d
    xor e                                         ; $74ec: $ab
    srl c                                         ; $74ed: $cb $39
    ld [bc], a                                    ; $74ef: $02
    add b                                         ; $74f0: $80
    adc l                                         ; $74f1: $8d
    rst $10                                       ; $74f2: $d7
    cp b                                          ; $74f3: $b8
    ld d, e                                       ; $74f4: $53
    and a                                         ; $74f5: $a7

jr_051_74f6:
    ld c, e                                       ; $74f6: $4b
    inc h                                         ; $74f7: $24
    ld a, [hl]                                    ; $74f8: $7e
    ld c, $04                                     ; $74f9: $0e $04
    ld c, a                                       ; $74fb: $4f
    ld [$dacb], sp                                ; $74fc: $08 $cb $da
    ld b, d                                       ; $74ff: $42
    ld c, a                                       ; $7500: $4f
    ret z                                         ; $7501: $c8

    jp hl                                         ; $7502: $e9


    ld e, e                                       ; $7503: $5b
    inc b                                         ; $7504: $04
    ld c, a                                       ; $7505: $4f
    sbc h                                         ; $7506: $9c
    push de                                       ; $7507: $d5
    and h                                         ; $7508: $a4
    db $10                                        ; $7509: $10
    jr nz, jr_051_7519                            ; $750a: $20 $0d

    ld a, [hl]                                    ; $750c: $7e
    dec bc                                        ; $750d: $0b
    ld bc, $410f                                  ; $750e: $01 $0f $41
    inc sp                                        ; $7511: $33
    ld e, c                                       ; $7512: $59
    halt                                          ; $7513: $76
    ld d, [hl]                                    ; $7514: $56
    sub e                                         ; $7515: $93
    ld b, d                                       ; $7516: $42
    ld c, a                                       ; $7517: $4f
    ld c, [hl]                                    ; $7518: $4e

jr_051_7519:
    ld d, h                                       ; $7519: $54
    db $10                                        ; $751a: $10
    ld c, a                                       ; $751b: $4f
    adc d                                         ; $751c: $8a
    call z, $ffef                                 ; $751d: $cc $ef $ff

jr_051_7520:
    db $e3                                        ; $7520: $e3
    sbc b                                         ; $7521: $98
    add a                                         ; $7522: $87
    adc l                                         ; $7523: $8d
    ld b, [hl]                                    ; $7524: $46
    add b                                         ; $7525: $80
    rrca                                          ; $7526: $0f
    rst $30                                       ; $7527: $f7
    adc [hl]                                      ; $7528: $8e
    pop de                                        ; $7529: $d1
    ld d, d                                       ; $752a: $52
    rla                                           ; $752b: $17
    ld bc, $2fc0                                  ; $752c: $01 $c0 $2f
    rst $20                                       ; $752f: $e7
    sub a                                         ; $7530: $97
    jp nc, $ae44                                  ; $7531: $d2 $44 $ae

    add a                                         ; $7534: $87
    inc hl                                        ; $7535: $23
    ld c, a                                       ; $7536: $4f
    db $fc                                        ; $7537: $fc
    inc h                                         ; $7538: $24
    ld [$37e7], sp                                ; $7539: $08 $e7 $37
    ld a, e                                       ; $753c: $7b
    sub a                                         ; $753d: $97
    ld d, $5d                                     ; $753e: $16 $5d
    ld [$4b4f], sp                                ; $7540: $08 $4f $4b
    add hl, hl                                    ; $7543: $29
    db $fd                                        ; $7544: $fd
    and $42                                       ; $7545: $e6 $42
    ld c, a                                       ; $7547: $4f
    db $fc                                        ; $7548: $fc
    ld a, [bc]                                    ; $7549: $0a
    ld d, c                                       ; $754a: $51
    ld a, l                                       ; $754b: $7d
    ld h, h                                       ; $754c: $64
    inc b                                         ; $754d: $04
    ld c, a                                       ; $754e: $4f

jr_051_754f:
    xor [hl]                                      ; $754f: $ae
    sub b                                         ; $7550: $90
    ld b, d                                       ; $7551: $42
    jr jr_051_754f                                ; $7552: $18 $fb

    and h                                         ; $7554: $a4
    db $10                                        ; $7555: $10
    ld c, a                                       ; $7556: $4f
    call c, $d534                                 ; $7557: $dc $34 $d5
    xor a                                         ; $755a: $af
    ld e, b                                       ; $755b: $58
    inc b                                         ; $755c: $04
    ret nz                                        ; $755d: $c0

    ld c, [hl]                                    ; $755e: $4e
    ld a, l                                       ; $755f: $7d
    adc b                                         ; $7560: $88
    db $ed                                        ; $7561: $ed
    ld a, [de]                                    ; $7562: $1a
    ld [hl], a                                    ; $7563: $77
    ld b, e                                       ; $7564: $43
    ld l, h                                       ; $7565: $6c

jr_051_7566:
    jr nz, jr_051_754f                            ; $7566: $20 $e7

    ld c, c                                       ; $7568: $49
    ld a, [hl-]                                   ; $7569: $3a
    dec e                                         ; $756a: $1d
    ld a, a                                       ; $756b: $7f
    and b                                         ; $756c: $a0
    ret nz                                        ; $756d: $c0

jr_051_756e:
    ld hl, $f04f                                  ; $756e: $21 $4f $f0
    ld d, b                                       ; $7571: $50
    pop af                                        ; $7572: $f1
    push af                                       ; $7573: $f5
    ld b, e                                       ; $7574: $43
    xor h                                         ; $7575: $ac
    ld e, h                                       ; $7576: $5c
    ld d, c                                       ; $7577: $51
    ld [$2e4f], sp                                ; $7578: $08 $4f $2e
    adc c                                         ; $757b: $89
    sbc a                                         ; $757c: $9f
    ld c, a                                       ; $757d: $4f
    and h                                         ; $757e: $a4
    ld a, [hl-]                                   ; $757f: $3a
    db $10                                        ; $7580: $10
    ld c, a                                       ; $7581: $4f
    ld [hl], b                                    ; $7582: $70
    cp [hl]                                       ; $7583: $be
    xor e                                         ; $7584: $ab
    ld l, c                                       ; $7585: $69
    xor c                                         ; $7586: $a9
    adc e                                         ; $7587: $8b
    nop                                           ; $7588: $00
    jr jr_051_756e                                ; $7589: $18 $e3

    add a                                         ; $758b: $87
    ld [$f2e2], a                                 ; $758c: $ea $e2 $f2
    cpl                                           ; $758f: $2f
    add l                                         ; $7590: $85
    nop                                           ; $7591: $00
    add b                                         ; $7592: $80
    ret z                                         ; $7593: $c8

    db $fd                                        ; $7594: $fd
    ccf                                           ; $7595: $3f
    or d                                          ; $7596: $b2
    halt                                          ; $7597: $76
    ld a, h                                       ; $7598: $7c
    inc b                                         ; $7599: $04
    rst $08                                       ; $759a: $cf
    ld a, d                                       ; $759b: $7a
    ld [hl], h                                    ; $759c: $74
    or $e3                                        ; $759d: $f6 $e3
    rst $38                                       ; $759f: $ff
    pop de                                        ; $75a0: $d1
    ld d, d                                       ; $75a1: $52
    rla                                           ; $75a2: $17
    ld bc, $a960                                  ; $75a3: $01 $60 $a9
    ld a, [hl]                                    ; $75a6: $7e
    adc b                                         ; $75a7: $88
    dec e                                         ; $75a8: $1d
    dec l                                         ; $75a9: $2d
    ld [hl], l                                    ; $75aa: $75
    ld de, $7acf                                  ; $75ab: $11 $cf $7a
    ld [hl], h                                    ; $75ae: $74
    or $e3                                        ; $75af: $f6 $e3
    rst $38                                       ; $75b1: $ff
    db $fd                                        ; $75b2: $fd
    xor e                                         ; $75b3: $ab
    ld h, a                                       ; $75b4: $67
    jp nc, Jump_000_39c5                          ; $75b5: $d2 $c5 $39

    ld [bc], a                                    ; $75b8: $02
    ret nz                                        ; $75b9: $c0

    cp d                                          ; $75ba: $ba
    jr z, jr_051_7566                             ; $75bb: $28 $a9

    rst $38                                       ; $75bd: $ff
    ld l, e                                       ; $75be: $6b
    ld a, b                                       ; $75bf: $78
    ld [hl], l                                    ; $75c0: $75
    pop hl                                        ; $75c1: $e1
    sbc a                                         ; $75c2: $9f
    add l                                         ; $75c3: $85
    nop                                           ; $75c4: $00
    ld c, a                                       ; $75c5: $4f
    db $fc                                        ; $75c6: $fc
    ld [c], a                                     ; $75c7: $e2
    ld hl, $26f6                                  ; $75c8: $21 $f6 $26
    inc d                                         ; $75cb: $14
    ld bc, $f10f                                  ; $75cc: $01 $0f $f1
    ld c, e                                       ; $75cf: $4b
    ld l, h                                       ; $75d0: $6c
    xor h                                         ; $75d1: $ac
    call c, $452b                                 ; $75d2: $dc $2b $45
    db $10                                        ; $75d5: $10
    ld h, b                                       ; $75d6: $60
    xor [hl]                                      ; $75d7: $ae
    adc $6b                                       ; $75d8: $ce $6b
    daa                                           ; $75da: $27
    and [hl]                                      ; $75db: $a6
    ld e, h                                       ; $75dc: $5c
    ld d, c                                       ; $75dd: $51
    ld [$1940], sp                                ; $75de: $08 $40 $19
    ld a, e                                       ; $75e1: $7b
    rst $10                                       ; $75e2: $d7
    ld b, b                                       ; $75e3: $40
    add c                                         ; $75e4: $81
    ld b, e                                       ; $75e5: $43
    ld b, b                                       ; $75e6: $40
    add hl, de                                    ; $75e7: $19
    ld a, e                                       ; $75e8: $7b
    rst $10                                       ; $75e9: $d7
    ld b, b                                       ; $75ea: $40
    add e                                         ; $75eb: $83
    ld b, e                                       ; $75ec: $43
    ret nz                                        ; $75ed: $c0

    ld c, [hl]                                    ; $75ee: $4e
    db $fd                                        ; $75ef: $fd
    ld c, l                                       ; $75f0: $4d
    sub a                                         ; $75f1: $97
    dec e                                         ; $75f2: $1d
    ld l, b                                       ; $75f3: $68
    ld [hl], b                                    ; $75f4: $70
    ld [$7acf], sp                                ; $75f5: $08 $cf $7a
    ld [hl], h                                    ; $75f8: $74
    or $e3                                        ; $75f9: $f6 $e3
    rst $38                                       ; $75fb: $ff
    push de                                       ; $75fc: $d5
    rst $38                                       ; $75fd: $ff
    adc [hl]                                      ; $75fe: $8e
    nop                                           ; $75ff: $00
    jr nz, jr_051_762a                            ; $7600: $20 $28

    ld c, l                                       ; $7602: $4d
    db $e4                                        ; $7603: $e4
    ld a, d                                       ; $7604: $7a
    ld hl, sp-$58                                 ; $7605: $f8 $a8
    pop af                                        ; $7607: $f1
    pop de                                        ; $7608: $d1
    ld d, d                                       ; $7609: $52
    rla                                           ; $760a: $17
    ld bc, $2820                                  ; $760b: $01 $20 $28
    ld c, l                                       ; $760e: $4d
    db $e4                                        ; $760f: $e4
    ld a, d                                       ; $7610: $7a
    jr c, jr_051_7615                             ; $7611: $38 $02

    sbc b                                         ; $7613: $98
    sbc h                                         ; $7614: $9c

jr_051_7615:
    sub [hl]                                      ; $7615: $96
    ld a, e                                       ; $7616: $7b
    ld hl, $4b20                                  ; $7617: $21 $20 $4b
    adc h                                         ; $761a: $8c
    and h                                         ; $761b: $a4
    inc hl                                        ; $761c: $23
    db $eb                                        ; $761d: $eb
    ld b, a                                       ; $761e: $47
    inc sp                                        ; $761f: $33
    db $e3                                        ; $7620: $e3
    rst $20                                       ; $7621: $e7
    ld b, b                                       ; $7622: $40
    rrca                                          ; $7623: $0f
    pop de                                        ; $7624: $d1
    and $66                                       ; $7625: $e6 $66
    or d                                          ; $7627: $b2
    db $ec                                        ; $7628: $ec
    xor h                                         ; $7629: $ac

jr_051_762a:
    ld h, $85                                     ; $762a: $26 $85
    nop                                           ; $762c: $00
    jr nz, @+$0f                                  ; $762d: $20 $0d

    push bc                                       ; $762f: $c5
    ld a, a                                       ; $7630: $7f
    cp b                                          ; $7631: $b8
    adc a                                         ; $7632: $8f
    dec sp                                        ; $7633: $3b
    or l                                          ; $7634: $b5
    or a                                          ; $7635: $b7
    ld sp, hl                                     ; $7636: $f9
    ld e, a                                       ; $7637: $5f
    xor [hl]                                      ; $7638: $ae
    jr z, jr_051_763f                             ; $7639: $28 $04

    jr nz, jr_051_768a                            ; $763b: $20 $4d

    ld a, e                                       ; $763d: $7b
    ret z                                         ; $763e: $c8

jr_051_763f:
    ld [hl-], a                                   ; $763f: $32
    add hl, hl                                    ; $7640: $29
    cp h                                          ; $7641: $bc
    ld l, h                                       ; $7642: $6c
    inc l                                         ; $7643: $2c
    ld h, h                                       ; $7644: $64
    adc c                                         ; $7645: $89
    ld a, a                                       ; $7646: $7f
    db $e3                                        ; $7647: $e3
    ld e, [hl]                                    ; $7648: $5e
    halt                                          ; $7649: $76
    or [hl]                                       ; $764a: $b6
    ld e, c                                       ; $764b: $59
    add hl, hl                                    ; $764c: $29
    jp nz, $011e                                  ; $764d: $c2 $1e $01

    jr nz, jr_051_769f                            ; $7650: $20 $4d

    ld a, e                                       ; $7652: $7b
    ret z                                         ; $7653: $c8

    ld a, b                                       ; $7654: $78
    adc a                                         ; $7655: $8f
    adc $7e                                       ; $7656: $ce $7e
    db $fc                                        ; $7658: $fc
    ld l, a                                       ; $7659: $6f
    ld h, e                                       ; $765a: $63
    ld hl, $d7fb                                  ; $765b: $21 $fb $d7
    ld b, e                                       ; $765e: $43
    ld h, [hl]                                    ; $765f: $66
    db $e3                                        ; $7660: $e3
    xor a                                         ; $7661: $af
    db $f4                                        ; $7662: $f4
    reti                                          ; $7663: $d9


    dec hl                                        ; $7664: $2b
    inc bc                                        ; $7665: $03
    dec b                                         ; $7666: $05
    ld c, $22                                     ; $7667: $0e $22
    jr nz, jr_051_76b8                            ; $7669: $20 $4d

    ld a, e                                       ; $766b: $7b
    ret z                                         ; $766c: $c8

    inc [hl]                                      ; $766d: $34
    and $f1                                       ; $766e: $e6 $f1
    ld [hl], c                                    ; $7670: $71
    adc a                                         ; $7671: $8f
    reti                                          ; $7672: $d9


    xor e                                         ; $7673: $ab
    halt                                          ; $7674: $76
    push bc                                       ; $7675: $c5
    ld h, e                                       ; $7676: $63
    ld [hl], $64                                  ; $7677: $36 $64
    jp c, Jump_051_53d1                           ; $7679: $da $d1 $53

    cp h                                          ; $767c: $bc
    xor b                                         ; $767d: $a8
    db $10                                        ; $767e: $10
    cp b                                          ; $767f: $b8
    di                                            ; $7680: $f3
    ld h, h                                       ; $7681: $64
    sub h                                         ; $7682: $94
    rst $28                                       ; $7683: $ef
    db $dd                                        ; $7684: $dd
    rst $38                                       ; $7685: $ff
    ld l, e                                       ; $7686: $6b
    ld h, $a5                                     ; $7687: $26 $a5
    adc l                                         ; $7689: $8d

jr_051_768a:
    inc e                                         ; $768a: $1c
    ld [hl+], a                                   ; $768b: $22
    pop de                                        ; $768c: $d1
    or e                                          ; $768d: $b3
    ld d, a                                       ; $768e: $57
    dec l                                         ; $768f: $2d
    db $eb                                        ; $7690: $eb
    and l                                         ; $7691: $a5
    ld h, [hl]                                    ; $7692: $66
    ld d, d                                       ; $7693: $52
    jp c, Jump_000_0d58                           ; $7694: $da $58 $0d

    ld [hl], a                                    ; $7697: $77
    sbc [hl]                                      ; $7698: $9e
    call z, $f4db                                 ; $7699: $cc $db $f4
    jp z, Jump_000_367d                           ; $769c: $ca $7d $36

jr_051_769f:
    sbc c                                         ; $769f: $99
    ld d, [hl]                                    ; $76a0: $56
    dec a                                         ; $76a1: $3d
    xor $d4                                       ; $76a2: $ee $d4
    rst $18                                       ; $76a4: $df
    ld [hl], h                                    ; $76a5: $74
    ld sp, hl                                     ; $76a6: $f9
    jp nz, $a07d                                  ; $76a7: $c2 $7d $a0

    ret nz                                        ; $76aa: $c0

    ld b, c                                       ; $76ab: $41
    inc b                                         ; $76ac: $04
    jr nz, jr_051_76fc                            ; $76ad: $20 $4d

    ld a, e                                       ; $76af: $7b
    ret z                                         ; $76b0: $c8

    or h                                          ; $76b1: $b4
    inc de                                        ; $76b2: $13
    db $d3                                        ; $76b3: $d3
    add $ec                                       ; $76b4: $c6 $ec
    sub l                                         ; $76b6: $95
    ld a, [de]                                    ; $76b7: $1a

jr_051_76b8:
    jr z, jr_051_772a                             ; $76b8: $28 $70

    ld [hl], b                                    ; $76ba: $70
    ret nz                                        ; $76bb: $c0

    adc d                                         ; $76bc: $8a
    ld a, b                                       ; $76bd: $78
    ld b, d                                       ; $76be: $42
    ld [hl], a                                    ; $76bf: $77
    db $f4                                        ; $76c0: $f4
    jp z, Jump_000_367d                           ; $76c1: $ca $7d $36

    ld a, h                                       ; $76c4: $7c
    db $e4                                        ; $76c5: $e4
    db $10                                        ; $76c6: $10
    ret                                           ; $76c7: $c9


    res 0, [hl]                                   ; $76c8: $cb $86
    adc $d0                                       ; $76ca: $ce $d0
    reti                                          ; $76cc: $d9


    ld h, h                                       ; $76cd: $64
    inc e                                         ; $76ce: $1c
    rst $18                                       ; $76cf: $df
    db $e3                                        ; $76d0: $e3
    ld a, [hl]                                    ; $76d1: $7e
    db $f4                                        ; $76d2: $f4
    ld b, b                                       ; $76d3: $40
    add c                                         ; $76d4: $81
    sbc e                                         ; $76d5: $9b
    ld d, $bf                                     ; $76d6: $16 $bf
    and $d7                                       ; $76d8: $e6 $d7
    add [hl]                                      ; $76da: $86
    or b                                          ; $76db: $b0
    ld b, a                                       ; $76dc: $47
    jr nz, jr_051_772c                            ; $76dd: $20 $4d

    ld a, e                                       ; $76df: $7b
    ret z                                         ; $76e0: $c8

    cp h                                          ; $76e1: $bc
    call $d5ff                                    ; $76e2: $cd $ff $d5
    db $e3                                        ; $76e5: $e3
    cp d                                          ; $76e6: $ba
    add sp, $42                                   ; $76e7: $e8 $42
    sub [hl]                                      ; $76e9: $96
    ld c, c                                       ; $76ea: $49
    jp nc, Jump_051_7d2b                          ; $76eb: $d2 $2b $7d

    ld [hl], $11                                  ; $76ee: $36 $11
    ld d, d                                       ; $76f0: $52
    dec e                                         ; $76f1: $1d
    res 0, [hl]                                   ; $76f2: $cb $86
    xor [hl]                                      ; $76f4: $ae
    ld b, e                                       ; $76f5: $43
    ld c, c                                       ; $76f6: $49
    push af                                       ; $76f7: $f5
    inc h                                         ; $76f8: $24
    ld a, d                                       ; $76f9: $7a
    daa                                           ; $76fa: $27
    dec a                                         ; $76fb: $3d

jr_051_76fc:
    ld a, d                                       ; $76fc: $7a
    ld hl, $c6a3                                  ; $76fd: $21 $a3 $c6
    or e                                          ; $7700: $b3
    di                                            ; $7701: $f3
    ld h, d                                       ; $7702: $62
    xor e                                         ; $7703: $ab
    inc bc                                        ; $7704: $03
    ld [hl+], a                                   ; $7705: $22
    jr nz, jr_051_7755                            ; $7706: $20 $4d

    ld a, e                                       ; $7708: $7b
    ret z                                         ; $7709: $c8

    cp b                                          ; $770a: $b8
    ld l, $4a                                     ; $770b: $2e $4a
    ld [$eaff], a                                 ; $770d: $ea $ff $ea
    add l                                         ; $7710: $85
    ld c, h                                       ; $7711: $4c
    or c                                          ; $7712: $b1
    cp $0f                                        ; $7713: $fe $0f
    adc c                                         ; $7715: $89
    add c                                         ; $7716: $81
    call nc, $8a6f                                ; $7717: $d4 $6f $8a

Jump_051_771a:
    inc l                                         ; $771a: $2c
    dec de                                        ; $771b: $1b
    cp d                                          ; $771c: $ba
    ld c, h                                       ; $771d: $4c
    ld a, [$34a0]                                 ; $771e: $fa $a0 $34
    ld a, d                                       ; $7721: $7a
    ld l, c                                       ; $7722: $69
    db $d3                                        ; $7723: $d3
    cp [hl]                                       ; $7724: $be
    sub b                                         ; $7725: $90
    ld d, c                                       ; $7726: $51
    db $e3                                        ; $7727: $e3
    reti                                          ; $7728: $d9


    ld a, c                                       ; $7729: $79

jr_051_772a:
    or c                                          ; $772a: $b1
    push de                                       ; $772b: $d5

jr_051_772c:
    ld bc, $2011                                  ; $772c: $01 $11 $20
    ld c, l                                       ; $772f: $4d
    ld a, e                                       ; $7730: $7b
    ret z                                         ; $7731: $c8

    cp h                                          ; $7732: $bc
    call $d5ff                                    ; $7733: $cd $ff $d5
    db $e3                                        ; $7736: $e3
    cp d                                          ; $7737: $ba
    add sp, $42                                   ; $7738: $e8 $42
    and [hl]                                      ; $773a: $a6
    ld e, b                                       ; $773b: $58
    rst $38                                       ; $773c: $ff
    add a                                         ; $773d: $87
    call nz, $ea40                                ; $773e: $c4 $40 $ea
    scf                                           ; $7741: $37
    ld b, l                                       ; $7742: $45
    sub [hl]                                      ; $7743: $96
    dec c                                         ; $7744: $0d
    ld e, l                                       ; $7745: $5d
    ld [$f936], a                                 ; $7746: $ea $36 $f9
    push de                                       ; $7749: $d5
    db $eb                                        ; $774a: $eb
    ld b, h                                       ; $774b: $44
    ld a, h                                       ; $774c: $7c
    ld hl, $c6a3                                  ; $774d: $21 $a3 $c6
    or e                                          ; $7750: $b3
    di                                            ; $7751: $f3
    ld h, d                                       ; $7752: $62
    xor e                                         ; $7753: $ab
    inc hl                                        ; $7754: $23

jr_051_7755:
    ld c, a                                       ; $7755: $4f
    ld c, e                                       ; $7756: $4b
    db $f4                                        ; $7757: $f4
    call nz, $a4ce                                ; $7758: $c4 $ce $a4
    or h                                          ; $775b: $b4
    reti                                          ; $775c: $d9


    sbc e                                         ; $775d: $9b
    cp l                                          ; $775e: $bd
    ld c, e                                       ; $775f: $4b
    adc e                                         ; $7760: $8b
    xor [hl]                                      ; $7761: $ae
    sbc [hl]                                      ; $7762: $9e
    ld h, [hl]                                    ; $7763: $66
    call nz, $8850                                ; $7764: $c4 $50 $88
    nop                                           ; $7767: $00
    jr nz, @+$4f                                  ; $7768: $20 $4d

    ld a, e                                       ; $776a: $7b
    ret z                                         ; $776b: $c8

    or h                                          ; $776c: $b4
    ld [$aba9], a                                 ; $776d: $ea $a9 $ab
    ld e, a                                       ; $7770: $5f
    sbc a                                         ; $7771: $9f
    cp l                                          ; $7772: $bd
    ld l, d                                       ; $7773: $6a
    ld hl, $5f4b                                  ; $7774: $21 $4b $5f
    sbc a                                         ; $7777: $9f
    ld [hl-], a                                   ; $7778: $32
    or $66                                        ; $7779: $f6 $66
    or $08                                        ; $777b: $f6 $08
    jr nz, jr_051_77cc                            ; $777d: $20 $4d

    ld a, e                                       ; $777f: $7b
    ret z                                         ; $7780: $c8

    or h                                          ; $7781: $b4
    ld [$489d], a                                 ; $7782: $ea $9d $48
    reti                                          ; $7785: $d9


    reti                                          ; $7786: $d9


Call_051_7787:
    sub b                                         ; $7787: $90
    pop de                                        ; $7788: $d1
    ld b, e                                       ; $7789: $43
    sub h                                         ; $778a: $94
    ld e, l                                       ; $778b: $5d
    inc [hl]                                      ; $778c: $34
    ld d, a                                       ; $778d: $57
    dec e                                         ; $778e: $1d
    and d                                         ; $778f: $a2
    add l                                         ; $7790: $85
    rst $08                                       ; $7791: $cf
    ld h, $e3                                     ; $7792: $26 $e3
    ld hl, sp-$62                                 ; $7794: $f8 $9e
    and c                                         ; $7796: $a1
    or e                                          ; $7797: $b3
    ret                                           ; $7798: $c9


    db $f4                                        ; $7799: $f4
    dec hl                                        ; $779a: $2b
    ld [de], a                                    ; $779b: $12
    dec a                                         ; $779c: $3d
    dec de                                        ; $779d: $1b
    ld [hl-], a                                   ; $779e: $32
    db $ed                                        ; $779f: $ed
    add sp, $65                                   ; $77a0: $e8 $65
    rst $28                                       ; $77a2: $ef
    ld l, e                                       ; $77a3: $6b
    ld b, e                                       ; $77a4: $43
    ret c                                         ; $77a5: $d8

    inc hl                                        ; $77a6: $23
    jr nz, jr_051_77f6                            ; $77a7: $20 $4d

Call_051_77a9:
    ld a, e                                       ; $77a9: $7b
    ret z                                         ; $77aa: $c8

    ld c, d                                       ; $77ab: $4a
    rst $38                                       ; $77ac: $ff
    add a                                         ; $77ad: $87
    jp z, $bd52                                   ; $77ae: $ca $52 $bd

    ldh [$b8], a                                  ; $77b1: $e0 $b8
    jr nz, @+$20                                  ; $77b3: $20 $1e

    or d                                          ; $77b5: $b2
    jp nc, $ff57                                  ; $77b6: $d2 $57 $ff

    rst $10                                       ; $77b9: $d7
    call nc, $bce5                                ; $77ba: $d4 $e5 $bc
    call c, $452b                                 ; $77bd: $dc $2b $45
    and d                                         ; $77c0: $a2
    sub a                                         ; $77c1: $97
    adc b                                         ; $77c2: $88
    adc l                                         ; $77c3: $8d
    sbc [hl]                                      ; $77c4: $9e
    dec c                                         ; $77c5: $0d
    sub c                                         ; $77c6: $91
    ld e, d                                       ; $77c7: $5a
    or $be                                        ; $77c8: $f6 $be
    sub [hl]                                      ; $77ca: $96
    dec a                                         ; $77cb: $3d

jr_051_77cc:
    ld [bc], a                                    ; $77cc: $02
    jr nz, jr_051_781c                            ; $77cd: $20 $4d

    ld a, e                                       ; $77cf: $7b
    ret z                                         ; $77d0: $c8

    call c, $a5a8                                 ; $77d1: $dc $a8 $a5
    ld c, l                                       ; $77d4: $4d
    ei                                            ; $77d5: $fb
    ld [$1aff], a                                 ; $77d6: $ea $ff $1a
    ld [hl], a                                    ; $77d9: $77
    ld l, d                                       ; $77da: $6a
    db $ed                                        ; $77db: $ed
    ld h, b                                       ; $77dc: $60
    inc l                                         ; $77dd: $2c
    ld d, a                                       ; $77de: $57
    ld d, h                                       ; $77df: $54
    push af                                       ; $77e0: $f5
    or d                                          ; $77e1: $b2
    and c                                         ; $77e2: $a1
    or e                                          ; $77e3: $b3
    ret                                           ; $77e4: $c9


    ld l, h                                       ; $77e5: $6c
    ld d, a                                       ; $77e6: $57
    ld a, [hl-]                                   ; $77e7: $3a
    ld e, l                                       ; $77e8: $5d
    sbc [hl]                                      ; $77e9: $9e
    ld d, a                                       ; $77ea: $57
    ld a, [hl-]                                   ; $77eb: $3a
    ld a, e                                       ; $77ec: $7b
    inc b                                         ; $77ed: $04
    jr nz, jr_051_783d                            ; $77ee: $20 $4d

    ld a, e                                       ; $77f0: $7b
    ret z                                         ; $77f1: $c8

    or h                                          ; $77f2: $b4
    ld [$a629], a                                 ; $77f3: $ea $29 $a6

jr_051_77f6:
    ld l, c                                       ; $77f6: $69
    sbc a                                         ; $77f7: $9f
    dec c                                         ; $77f8: $0d
    ld e, a                                       ; $77f9: $5f
    sub $f9                                       ; $77fa: $d6 $f9
    xor [hl]                                      ; $77fc: $ae
    adc [hl]                                      ; $77fd: $8e
    sub l                                         ; $77fe: $95
    ei                                            ; $77ff: $fb
    cp h                                          ; $7800: $bc
    rrca                                          ; $7801: $0f
    adc [hl]                                      ; $7802: $8e
    xor e                                         ; $7803: $ab
    reti                                          ; $7804: $d9


    xor e                                         ; $7805: $ab
    ret c                                         ; $7806: $d8

    inc hl                                        ; $7807: $23
    jr nz, jr_051_7857                            ; $7808: $20 $4d

    ld a, e                                       ; $780a: $7b
    ret z                                         ; $780b: $c8

    or d                                          ; $780c: $b2
    sbc a                                         ; $780d: $9f
    inc a                                         ; $780e: $3c
    ld a, d                                       ; $780f: $7a
    ld l, c                                       ; $7810: $69
    db $d3                                        ; $7811: $d3
    cp [hl]                                       ; $7812: $be
    sub b                                         ; $7813: $90
    reti                                          ; $7814: $d9


    ld hl, sp+$2b                                 ; $7815: $f8 $2b
    ld a, l                                       ; $7817: $7d
    sbc c                                         ; $7818: $99
    sub h                                         ; $7819: $94
    dec l                                         ; $781a: $2d
    add hl, de                                    ; $781b: $19

jr_051_781c:
    rst $10                                       ; $781c: $d7
    cp h                                          ; $781d: $bc
    xor h                                         ; $781e: $ac
    cp $af                                        ; $781f: $fe $af
    ld [hl], c                                    ; $7821: $71
    xor h                                         ; $7822: $ac
    ld a, h                                       ; $7823: $7c
    inc sp                                        ; $7824: $33
    xor c                                         ; $7825: $a9
    sbc c                                         ; $7826: $99
    sub h                                         ; $7827: $94
    ld [hl], $5a                                  ; $7828: $36 $5a
    ld [$5266], a                                 ; $782a: $ea $66 $52
    dec hl                                        ; $782d: $2b
    rst $30                                       ; $782e: $f7
    ld c, d                                       ; $782f: $4a
    sub c                                         ; $7830: $91
    ld l, b                                       ; $7831: $68
    or $08                                        ; $7832: $f6 $08
    rst $20                                       ; $7834: $e7
    ret                                           ; $7835: $c9


    ret z                                         ; $7836: $c8

    ld hl, $3d12                                  ; $7837: $21 $12 $3d
    ld a, e                                       ; $783a: $7b
    push de                                       ; $783b: $d5
    or d                                          ; $783c: $b2

jr_051_783d:
    ld d, a                                       ; $783d: $57
    sub e                                         ; $783e: $93
    ld [$3b80], a                                 ; $783f: $ea $80 $3b
    ld c, a                                       ; $7842: $4f
    and $6d                                       ; $7843: $e6 $6d
    ld a, d                                       ; $7845: $7a
    push hl                                       ; $7846: $e5
    ld a, $7b                                     ; $7847: $3e $7b
    ld h, l                                       ; $7849: $65
    ret nz                                        ; $784a: $c0

    cp $c5                                        ; $784b: $fe $c5
    ld b, e                                       ; $784d: $43
    xor h                                         ; $784e: $ac
    ld a, c                                       ; $784f: $79
    add hl, sp                                    ; $7850: $39
    dec e                                         ; $7851: $1d
    ld e, c                                       ; $7852: $59
    ccf                                           ; $7853: $3f
    sbc d                                         ; $7854: $9a
    add hl, de                                    ; $7855: $19
    ccf                                           ; $7856: $3f

jr_051_7857:
    rst $00                                       ; $7857: $c7
    adc [hl]                                      ; $7858: $8e
    ld e, $e9                                     ; $7859: $1e $e9
    ld [c], a                                     ; $785b: $e2
    sbc h                                         ; $785c: $9c
    ld c, e                                       ; $785d: $4b
    cp $af                                        ; $785e: $fe $af
    adc [hl]                                      ; $7860: $8e
    ld c, c                                       ; $7861: $49
    ld [bc], a                                    ; $7862: $02
    ld de, $4d20                                  ; $7863: $11 $20 $4d
    ld a, e                                       ; $7866: $7b
    ret z                                         ; $7867: $c8

    ld [hl-], a                                   ; $7868: $32
    add hl, hl                                    ; $7869: $29
    cp h                                          ; $786a: $bc
    ld l, h                                       ; $786b: $6c
    call z, Call_051_7e75                         ; $786c: $cc $75 $7e
    add hl, de                                    ; $786f: $19
    ccf                                           ; $7870: $3f
    sub c                                         ; $7871: $91
    ld a, a                                       ; $7872: $7f

jr_051_7873:
    ld c, c                                       ; $7873: $49
    adc l                                         ; $7874: $8d
    jr jr_051_7873                                ; $7875: $18 $fc

    sbc d                                         ; $7877: $9a
    ld e, [hl]                                    ; $7878: $5e
    jp hl                                         ; $7879: $e9


    or e                                          ; $787a: $b3
    ld d, a                                       ; $787b: $57
    or c                                          ; $787c: $b1
    rst $18                                       ; $787d: $df
    ld sp, hl                                     ; $787e: $f9
    sub l                                         ; $787f: $95
    ld [hl], c                                    ; $7880: $71
    scf                                           ; $7881: $37
    call nz, $f4c6                                ; $7882: $c4 $c6 $f4
    ld l, b                                       ; $7885: $68
    ld d, d                                       ; $7886: $52
    dec a                                         ; $7887: $3d
    ld a, e                                       ; $7888: $7b
    or e                                          ; $7889: $b3
    ld [hl], a                                    ; $788a: $77
    ld l, c                                       ; $788b: $69
    pop de                                        ; $788c: $d1
    ld h, l                                       ; $788d: $65
    ld d, a                                       ; $788e: $57
    ld a, [$506c]                                 ; $788f: $fa $6c $50
    adc b                                         ; $7892: $88
    nop                                           ; $7893: $00
    jr nz, jr_051_78e3                            ; $7894: $20 $4d

    ld a, e                                       ; $7896: $7b
    ret z                                         ; $7897: $c8

    db $f4                                        ; $7898: $f4
    ld l, b                                       ; $7899: $68
    ld d, d                                       ; $789a: $52
    ld [hl], $76                                  ; $789b: $36 $76
    push bc                                       ; $789d: $c5
    ld h, e                                       ; $789e: $63
    ld [$35d4], a                                 ; $789f: $ea $d4 $35
    pop hl                                        ; $78a2: $e1
    sub l                                         ; $78a3: $95
    pop af                                        ; $78a4: $f1
    pop de                                        ; $78a5: $d1
    or b                                          ; $78a6: $b0
    or e                                          ; $78a7: $b3
    ld d, a                                       ; $78a8: $57
    pop bc                                        ; $78a9: $c1
    add c                                         ; $78aa: $81
    ld c, $99                                     ; $78ab: $0e $99
    cp l                                          ; $78ad: $bd
    ld [hl-], a                                   ; $78ae: $32
    xor $86                                       ; $78af: $ee $86
    ret c                                         ; $78b1: $d8

    ld e, b                                       ; $78b2: $58
    adc [hl]                                      ; $78b3: $8e
    sbc $bf                                       ; $78b4: $de $bf
    ld e, $cb                                     ; $78b6: $1e $cb
    ld e, [hl]                                    ; $78b8: $5e
    ld c, l                                       ; $78b9: $4d
    xor d                                         ; $78ba: $aa
    ld h, e                                       ; $78bb: $63
    adc c                                         ; $78bc: $89
    ld b, e                                       ; $78bd: $43
    inc b                                         ; $78be: $04
    jr nz, @+$4f                                  ; $78bf: $20 $4d

    ld a, e                                       ; $78c1: $7b
    ret z                                         ; $78c2: $c8

    cp b                                          ; $78c3: $b8
    sbc e                                         ; $78c4: $9b
    ld [hl+], a                                   ; $78c5: $22
    or e                                          ; $78c6: $b3
    ld d, a                                       ; $78c7: $57
    ld l, d                                       ; $78c8: $6a
    call c, $b10d                                 ; $78c9: $dc $0d $b1
    pop de                                        ; $78cc: $d1
    dec hl                                        ; $78cd: $2b
    rst $30                                       ; $78ce: $f7
    ld h, l                                       ; $78cf: $65
    ld b, e                                       ; $78d0: $43
    and l                                         ; $78d1: $a5
    ret c                                         ; $78d2: $d8

    rst $28                                       ; $78d3: $ef
    add hl, bc                                    ; $78d4: $09
    di                                            ; $78d5: $f3
    ld hl, sp+$3a                                 ; $78d6: $f8 $3a
    ld sp, hl                                     ; $78d8: $f9
    push de                                       ; $78d9: $d5
    ld a, $52                                     ; $78da: $3e $52
    ld [hl-], a                                   ; $78dc: $32
    dec de                                        ; $78dd: $1b
    cp e                                          ; $78de: $bb
    ld [c], a                                     ; $78df: $e2

Call_051_78e0:
    or c                                          ; $78e0: $b1
    ld [de], a                                    ; $78e1: $12
    xor [hl]                                      ; $78e2: $ae

jr_051_78e3:
    cp $af                                        ; $78e3: $fe $af
    ret                                           ; $78e5: $c9


    pop de                                        ; $78e6: $d1
    or e                                          ; $78e7: $b3
    or c                                          ; $78e8: $b1
    inc l                                         ; $78e9: $2c
    ld c, c                                       ; $78ea: $49
    xor [hl]                                      ; $78eb: $ae
    add [hl]                                      ; $78ec: $86
    ld [$4d20], sp                                ; $78ed: $08 $20 $4d
    ld a, e                                       ; $78f0: $7b
    ret z                                         ; $78f1: $c8

    or h                                          ; $78f2: $b4
    ld [$a771], a                                 ; $78f3: $ea $71 $a7
    sub $4b                                       ; $78f6: $d6 $4b
    db $ec                                        ; $78f8: $ec
    cpl                                           ; $78f9: $2f
    sbc a                                         ; $78fa: $9f
    ldh a, [$ca]                                  ; $78fb: $f0 $ca
    ld hl, sp-$12                                 ; $78fd: $f8 $ee
    db $ec                                        ; $78ff: $ec
    sub l                                         ; $7900: $95
    sub c                                         ; $7901: $91
    ld a, [c]                                     ; $7902: $f2
    ld a, [$cd46]                                 ; $7903: $fa $46 $cd
    rst $28                                       ; $7906: $ef
    rst $38                                       ; $7907: $ff
    db $10                                        ; $7908: $10
    jp nz, Jump_051_6590                          ; $7909: $c2 $90 $65

    rst $28                                       ; $790c: $ef
    call nz, $c733                                ; $790d: $c4 $33 $c7
    inc a                                         ; $7910: $3c
    ld l, h                                       ; $7911: $6c
    db $f4                                        ; $7912: $f4
    inc hl                                        ; $7913: $23
    or $08                                        ; $7914: $f6 $08
    jr nz, @+$4f                                  ; $7916: $20 $4d

    ld a, e                                       ; $7918: $7b
    ret z                                         ; $7919: $c8

    or h                                          ; $791a: $b4
    ld [$489d], a                                 ; $791b: $ea $9d $48
    ld sp, hl                                     ; $791e: $f9
    ld l, h                                       ; $791f: $6c
    ret z                                         ; $7920: $c8

    add sp, $21                                   ; $7921: $e8 $21
    jp z, $932e                                   ; $7923: $ca $2e $93

    or d                                          ; $7926: $b2
    dec [hl]                                      ; $7927: $35
    ld a, e                                       ; $7928: $7b
    and l                                         ; $7929: $a5
    sub [hl]                                      ; $792a: $96
    adc [hl]                                      ; $792b: $8e
    xor h                                         ; $792c: $ac
    rra                                           ; $792d: $1f
    call $9f8c                                    ; $792e: $cd $8c $9f
    and e                                         ; $7931: $a3
    and a                                         ; $7932: $a7
    ld c, [hl]                                    ; $7933: $4e
    cp l                                          ; $7934: $bd
    ld b, h                                       ; $7935: $44
    ld l, h                                       ; $7936: $6c
    db $f4                                        ; $7937: $f4
    ld l, h                                       ; $7938: $6c
    ret z                                         ; $7939: $c8

    or h                                          ; $793a: $b4
    and e                                         ; $793b: $a3
    sub a                                         ; $793c: $97
    cp l                                          ; $793d: $bd
    xor a                                         ; $793e: $af
    dec c                                         ; $793f: $0d
    ld h, c                                       ; $7940: $61
    adc a                                         ; $7941: $8f
    nop                                           ; $7942: $00
    jr nz, jr_051_7992                            ; $7943: $20 $4d

    ld a, e                                       ; $7945: $7b
    ret z                                         ; $7946: $c8

    or h                                          ; $7947: $b4
    ld [$a629], a                                 ; $7948: $ea $29 $a6
    ld l, c                                       ; $794b: $69
    sbc a                                         ; $794c: $9f
    cp l                                          ; $794d: $bd
    ld l, d                                       ; $794e: $6a
    sub a                                         ; $794f: $97
    jp nc, Jump_051_4644                          ; $7950: $d2 $44 $46

    adc l                                         ; $7953: $8d
    ld c, a                                       ; $7954: $4f
    ld e, l                                       ; $7955: $5d
    adc $a3                                       ; $7956: $ce $a3
    rst $08                                       ; $7958: $cf
    sub [hl]                                      ; $7959: $96
    adc b                                         ; $795a: $88
    adc l                                         ; $795b: $8d
    sbc [hl]                                      ; $795c: $9e
    dec c                                         ; $795d: $0d
    sbc c                                         ; $795e: $99
    halt                                          ; $795f: $76
    db $f4                                        ; $7960: $f4
    or d                                          ; $7961: $b2
    rst $30                                       ; $7962: $f7
    or l                                          ; $7963: $b5
    ld hl, $0110                                  ; $7964: $21 $10 $01
    jr nz, @+$4f                                  ; $7967: $20 $4d

    ld a, e                                       ; $7969: $7b
    ret z                                         ; $796a: $c8

    ld c, h                                       ; $796b: $4c
    rst $20                                       ; $796c: $e7
    ld [hl+], a                                   ; $796d: $22
    push de                                       ; $796e: $d5
    dec bc                                        ; $796f: $0b
    rst $30                                       ; $7970: $f7
    ld [hl], c                                    ; $7971: $71
    sbc l                                         ; $7972: $9d
    db $10                                        ; $7973: $10
    cpl                                           ; $7974: $2f
    ret                                           ; $7975: $c9


    ld a, [$3ed1]                                 ; $7976: $fa $d1 $3e
    di                                            ; $7979: $f3
    sbc c                                         ; $797a: $99
    adc c                                         ; $797b: $89
    ld e, l                                       ; $797c: $5d
    ld [hl], $74                                  ; $797d: $36 $74
    inc e                                         ; $797f: $1c
    rst $18                                       ; $7980: $df
    dec bc                                        ; $7981: $0b
    add hl, de                                    ; $7982: $19
    dec [hl]                                      ; $7983: $35
    sbc [hl]                                      ; $7984: $9e
    sbc l                                         ; $7985: $9d
    rla                                           ; $7986: $17
    ld e, e                                       ; $7987: $5b
    dec e                                         ; $7988: $1d
    dec hl                                        ; $7989: $2b
    rst $30                                       ; $798a: $f7
    ld [hl], c                                    ; $798b: $71
    sbc a                                         ; $798c: $9f
    dec b                                         ; $798d: $05
    ld de, $4d20                                  ; $798e: $11 $20 $4d
    ld a, e                                       ; $7991: $7b

jr_051_7992:
    ret z                                         ; $7992: $c8

    ld [hl-], a                                   ; $7993: $32
    add hl, hl                                    ; $7994: $29
    cp h                                          ; $7995: $bc
    ld a, d                                       ; $7996: $7a
    inc [hl]                                      ; $7997: $34
    ret                                           ; $7998: $c9


    sub a                                         ; $7999: $97
    inc l                                         ; $799a: $2c
    dec de                                        ; $799b: $1b
    ld a, [hl-]                                   ; $799c: $3a
    ld a, e                                       ; $799d: $7b
    or e                                          ; $799e: $b3
    ld [hl], a                                    ; $799f: $77
    ld l, c                                       ; $79a0: $69
    pop de                                        ; $79a1: $d1
    push de                                       ; $79a2: $d5
    and e                                         ; $79a3: $a3
    add $b3                                       ; $79a4: $c6 $b3
    di                                            ; $79a6: $f3
    ld h, d                                       ; $79a7: $62
    xor e                                         ; $79a8: $ab
    and l                                         ; $79a9: $a5
    ld h, [hl]                                    ; $79aa: $66
    ld d, d                                       ; $79ab: $52
    jp c, $be38                                   ; $79ac: $da $38 $be

    ld h, a                                       ; $79af: $67
    add e                                         ; $79b0: $83
    xor [hl]                                      ; $79b1: $ae
    call c, $9dc7                                 ; $79b2: $dc $c7 $9d
    ld a, [$ae9b]                                 ; $79b5: $fa $9b $ae
    add l                                         ; $79b8: $85
    xor h                                         ; $79b9: $ac
    inc de                                        ; $79ba: $13
    or c                                          ; $79bb: $b1
    dec b                                         ; $79bc: $05
    ld de, $4d20                                  ; $79bd: $11 $20 $4d
    ld a, e                                       ; $79c0: $7b
    ret z                                         ; $79c1: $c8

    ld [hl-], a                                   ; $79c2: $32
    add hl, hl                                    ; $79c3: $29
    cp h                                          ; $79c4: $bc
    ld a, d                                       ; $79c5: $7a
    ccf                                           ; $79c6: $3f
    ld d, c                                       ; $79c7: $51
    ld d, d                                       ; $79c8: $52
    ld h, d                                       ; $79c9: $62
    ld h, e                                       ; $79ca: $63
    inc [hl]                                      ; $79cb: $34
    ret                                           ; $79cc: $c9


    sub a                                         ; $79cd: $97
    inc l                                         ; $79ce: $2c
    dec de                                        ; $79cf: $1b
    ld a, [hl-]                                   ; $79d0: $3a
    adc [hl]                                      ; $79d1: $8e
    rst $28                                       ; $79d2: $ef
    add l                                         ; $79d3: $85
    adc h                                         ; $79d4: $8c
    ld a, [de]                                    ; $79d5: $1a
    rst $08                                       ; $79d6: $cf
    adc $8b                                       ; $79d7: $ce $8b
    xor l                                         ; $79d9: $ad
    adc [hl]                                      ; $79da: $8e
    sub l                                         ; $79db: $95
    ei                                            ; $79dc: $fb
    or d                                          ; $79dd: $b2
    and c                                         ; $79de: $a1
    ld d, d                                       ; $79df: $52
    db $10                                        ; $79e0: $10
    ld bc, $4d20                                  ; $79e1: $01 $20 $4d
    ld a, e                                       ; $79e4: $7b
    ret z                                         ; $79e5: $c8

    ld [hl-], a                                   ; $79e6: $32
    add hl, hl                                    ; $79e7: $29
    cp h                                          ; $79e8: $bc
    ld l, h                                       ; $79e9: $6c
    adc h                                         ; $79ea: $8c
    sub [hl]                                      ; $79eb: $96
    cp d                                          ; $79ec: $ba
    sbc c                                         ; $79ed: $99
    call nc, $dfd2                                ; $79ee: $d4 $d2 $df
    ld d, b                                       ; $79f1: $50
    ld l, d                                       ; $79f2: $6a
    sbc d                                         ; $79f3: $9a
    db $fd                                        ; $79f4: $fd
    ret nz                                        ; $79f5: $c0

    and [hl]                                      ; $79f6: $a6
    or h                                          ; $79f7: $b4
    reti                                          ; $79f8: $d9


    ld e, b                                       ; $79f9: $58
    or $2b                                        ; $79fa: $f6 $2b
    inc h                                         ; $79fc: $24
    sbc d                                         ; $79fd: $9a
    db $fd                                        ; $79fe: $fd
    adc $93                                       ; $79ff: $ce $93
    ld d, c                                       ; $7a01: $51
    cp [hl]                                       ; $7a02: $be
    sub a                                         ; $7a03: $97
    xor $3a                                       ; $7a04: $ee $3a
    dec de                                        ; $7a06: $1b
    dec c                                         ; $7a07: $0d
    sbc c                                         ; $7a08: $99
    cp l                                          ; $7a09: $bd
    ld d, d                                       ; $7a0a: $52
    db $e3                                        ; $7a0b: $e3
    ld l, [hl]                                    ; $7a0c: $6e
    adc b                                         ; $7a0d: $88
    adc l                                         ; $7a0e: $8d
    ld e, [hl]                                    ; $7a0f: $5e
    adc [hl]                                      ; $7a10: $8e
    ld e, [hl]                                    ; $7a11: $5e
    ld [c], a                                     ; $7a12: $e2
    dec hl                                        ; $7a13: $2b
    rst $30                                       ; $7a14: $f7
    ld d, c                                       ; $7a15: $51
    ld a, [hl]                                    ; $7a16: $7e
    rst $30                                       ; $7a17: $f7
    rst $38                                       ; $7a18: $ff
    add d                                         ; $7a19: $82
    ld [$4d20], sp                                ; $7a1a: $08 $20 $4d
    ld a, e                                       ; $7a1d: $7b
    ret z                                         ; $7a1e: $c8

    db $f4                                        ; $7a1f: $f4
    ld l, b                                       ; $7a20: $68
    ld d, d                                       ; $7a21: $52
    dec a                                         ; $7a22: $3d
    xor l                                         ; $7a23: $ad
    and [hl]                                      ; $7a24: $a6
    sbc b                                         ; $7a25: $98
    and [hl]                                      ; $7a26: $a6
    ld a, l                                       ; $7a27: $7d
    or $4a                                        ; $7a28: $f6 $4a
    adc l                                         ; $7a2a: $8d
    ld a, [de]                                    ; $7a2b: $1a
    rst $08                                       ; $7a2c: $cf
    adc $8b                                       ; $7a2d: $ce $8b
    xor l                                         ; $7a2f: $ad
    adc [hl]                                      ; $7a30: $8e
    ld a, l                                       ; $7a31: $7d
    ld e, [hl]                                    ; $7a32: $5e
    ld d, h                                       ; $7a33: $54
    ld l, $4a                                     ; $7a34: $2e $4a
    xor e                                         ; $7a36: $ab
    add e                                         ; $7a37: $83
    dec a                                         ; $7a38: $3d
    ld [bc], a                                    ; $7a39: $02
    rst $20                                       ; $7a3a: $e7
    ret                                           ; $7a3b: $c9


    ld a, [$b3d4]                                 ; $7a3c: $fa $d4 $b3
    ld d, a                                       ; $7a3f: $57
    adc l                                         ; $7a40: $8d
    or d                                          ; $7a41: $b2
    ld d, d                                       ; $7a42: $52
    inc h                                         ; $7a43: $24
    ld a, h                                       ; $7a44: $7c
    sbc a                                         ; $7a45: $9f
    rla                                           ; $7a46: $17
    sub l                                         ; $7a47: $95
    adc e                                         ; $7a48: $8b
    ld a, [hl-]                                   ; $7a49: $3a
    inc e                                         ; $7a4a: $1c
    ld c, b                                       ; $7a4b: $48
    db $d3                                        ; $7a4c: $d3
    ld e, $32                                     ; $7a4d: $1e $32
    jp z, $8f67                                   ; $7a4f: $ca $67 $8f

    ld l, c                                       ; $7a52: $69
    dec [hl]                                      ; $7a53: $35
    push bc                                       ; $7a54: $c5
    inc [hl]                                      ; $7a55: $34
    db $ed                                        ; $7a56: $ed
    or e                                          ; $7a57: $b3
    pop hl                                        ; $7a58: $e1
    db $d3                                        ; $7a59: $d3
    adc [hl]                                      ; $7a5a: $8e
    ld h, [hl]                                    ; $7a5b: $66
    adc a                                         ; $7a5c: $8f
    nop                                           ; $7a5d: $00
    jr nz, jr_051_7aad                            ; $7a5e: $20 $4d

    ld a, e                                       ; $7a60: $7b
    ret z                                         ; $7a61: $c8

    ld c, h                                       ; $7a62: $4c
    rst $20                                       ; $7a63: $e7
    ld [hl+], a                                   ; $7a64: $22
    ld h, l                                       ; $7a65: $65
    ld h, e                                       ; $7a66: $63
    ld hl, $6ecb                                  ; $7a67: $21 $cb $6e
    sbc d                                         ; $7a6a: $9a
    and [hl]                                      ; $7a6b: $a6
    ld e, c                                       ; $7a6c: $59
    res 0, [hl]                                   ; $7a6d: $cb $86
    ld l, $fd                                     ; $7a6f: $2e $fd
    ld sp, hl                                     ; $7a71: $f9
    db $ec                                        ; $7a72: $ec
    or c                                          ; $7a73: $b1
    xor e                                         ; $7a74: $ab
    rra                                           ; $7a75: $1f
    ld l, d                                       ; $7a76: $6a
    ld hl, $c6a3                                  ; $7a77: $21 $a3 $c6
    or e                                          ; $7a7a: $b3
    di                                            ; $7a7b: $f3
    ld h, d                                       ; $7a7c: $62
    xor e                                         ; $7a7d: $ab
    add e                                         ; $7a7e: $83
    dec a                                         ; $7a7f: $3d
    ld [bc], a                                    ; $7a80: $02
    jr nz, jr_051_7ad0                            ; $7a81: $20 $4d

    ld a, e                                       ; $7a83: $7b
    ret z                                         ; $7a84: $c8

    or h                                          ; $7a85: $b4
    ld [$a771], a                                 ; $7a86: $ea $71 $a7
    sub $4b                                       ; $7a89: $d6 $4b
    db $ec                                        ; $7a8b: $ec
    cpl                                           ; $7a8c: $2f
    sbc a                                         ; $7a8d: $9f
    cp l                                          ; $7a8e: $bd
    ld [hl-], a                                   ; $7a8f: $32
    ld l, d                                       ; $7a90: $6a
    inc a                                         ; $7a91: $3c
    dec sp                                        ; $7a92: $3b
    cpl                                           ; $7a93: $2f
    or [hl]                                       ; $7a94: $b6
    ld a, [hl-]                                   ; $7a95: $3a
    and $f7                                       ; $7a96: $e6 $f7
    ld a, a                                       ; $7a98: $7f
    ld [$f0a1], sp                                ; $7a99: $08 $a1 $f0
    jp z, Jump_051_4af8                           ; $7a9c: $ca $f8 $4a

    and h                                         ; $7a9f: $a4
    inc e                                         ; $7aa0: $1c
    ld [hl+], a                                   ; $7aa1: $22
    jr nz, jr_051_7af1                            ; $7aa2: $20 $4d

    ld a, e                                       ; $7aa4: $7b
    ret z                                         ; $7aa5: $c8

    ld l, h                                       ; $7aa6: $6c
    sub d                                         ; $7aa7: $92
    ld c, [hl]                                    ; $7aa8: $4e
    rst $38                                       ; $7aa9: $ff
    ld [$2bd9], a                                 ; $7aaa: $ea $d9 $2b

jr_051_7aad:
    dec [hl]                                      ; $7aad: $35
    ld d, b                                       ; $7aae: $50
    ldh [$96], a                                  ; $7aaf: $e0 $96
    adc b                                         ; $7ab1: $88
    adc l                                         ; $7ab2: $8d
    sbc [hl]                                      ; $7ab3: $9e
    dec c                                         ; $7ab4: $0d
    sub c                                         ; $7ab5: $91
    ld e, d                                       ; $7ab6: $5a
    or $be                                        ; $7ab7: $f6 $be
    sub [hl]                                      ; $7ab9: $96
    dec a                                         ; $7aba: $3d
    ld [bc], a                                    ; $7abb: $02
    jr nz, jr_051_7b0b                            ; $7abc: $20 $4d

    ld a, e                                       ; $7abe: $7b
    ret z                                         ; $7abf: $c8

    inc h                                         ; $7ac0: $24
    ld [de], a                                    ; $7ac1: $12
    rst $28                                       ; $7ac2: $ef
    ld a, [$4737]                                 ; $7ac3: $fa $37 $47
    ld d, a                                       ; $7ac6: $57
    ld c, a                                       ; $7ac7: $4f
    xor a                                         ; $7ac8: $af
    ld h, [hl]                                    ; $7ac9: $66
    add $d4                                       ; $7aca: $c6 $d4
    push hl                                       ; $7acc: $e5
    ld a, h                                       ; $7acd: $7c
    pop af                                        ; $7ace: $f1
    ld a, a                                       ; $7acf: $7f

jr_051_7ad0:
    db $f4                                        ; $7ad0: $f4
    ld [hl-], a                                   ; $7ad1: $32
    add hl, hl                                    ; $7ad2: $29
    ei                                            ; $7ad3: $fb
    xor a                                         ; $7ad4: $af
    ld e, d                                       ; $7ad5: $5a
    ld a, [hl-]                                   ; $7ad6: $3a
    or d                                          ; $7ad7: $b2
    ld a, [hl]                                    ; $7ad8: $7e
    inc [hl]                                      ; $7ad9: $34
    inc sp                                        ; $7ada: $33
    ld a, [hl]                                    ; $7adb: $7e
    adc [hl]                                      ; $7adc: $8e
    ld h, l                                       ; $7add: $65
    ld b, e                                       ; $7ade: $43
    add a                                         ; $7adf: $87
    di                                            ; $7ae0: $f3
    ld a, d                                       ; $7ae1: $7a
    inc [hl]                                      ; $7ae2: $34
    xor c                                         ; $7ae3: $a9
    sbc [hl]                                      ; $7ae4: $9e
    cp l                                          ; $7ae5: $bd
    adc d                                         ; $7ae6: $8a
    dec a                                         ; $7ae7: $3d
    ld [bc], a                                    ; $7ae8: $02
    jr nz, jr_051_7b38                            ; $7ae9: $20 $4d

    ld a, e                                       ; $7aeb: $7b
    ret z                                         ; $7aec: $c8

    or h                                          ; $7aed: $b4
    ld [$aba9], a                                 ; $7aee: $ea $a9 $ab

jr_051_7af1:
    ld e, a                                       ; $7af1: $5f
    sbc a                                         ; $7af2: $9f
    cp l                                          ; $7af3: $bd
    ld l, d                                       ; $7af4: $6a
    jp hl                                         ; $7af5: $e9


    jp Jump_051_63bd                              ; $7af6: $c3 $bd $63


    dec h                                         ; $7af9: $25
    ld d, a                                       ; $7afa: $57
    call nc, $9d0c                                ; $7afb: $d4 $0c $9d
    ld e, [hl]                                    ; $7afe: $5e
    dec a                                         ; $7aff: $3d
    sbc e                                         ; $7b00: $9b
    inc l                                         ; $7b01: $2c
    sub e                                         ; $7b02: $93
    jp c, $af0f                                   ; $7b03: $da $0f $af

    dec b                                         ; $7b06: $05
    rst $20                                       ; $7b07: $e7
    pop de                                        ; $7b08: $d1
    set 6, a                                      ; $7b09: $cb $f7

jr_051_7b0b:
    db $eb                                        ; $7b0b: $eb
    pop de                                        ; $7b0c: $d1
    ld sp, hl                                     ; $7b0d: $f9
    sub d                                         ; $7b0e: $92
    ld e, a                                       ; $7b0f: $5f
    call $011e                                    ; $7b10: $cd $1e $01
    jr nz, @+$4f                                  ; $7b13: $20 $4d

    ld a, e                                       ; $7b15: $7b
    ret z                                         ; $7b16: $c8

    or h                                          ; $7b17: $b4
    ld [$5265], a                                 ; $7b18: $ea $65 $52
    ld a, b                                       ; $7b1b: $78
    ld sp, hl                                     ; $7b1c: $f9
    jp nz, $cf7d                                  ; $7b1d: $c2 $7d $cf

    ld d, e                                       ; $7b20: $53
    inc hl                                        ; $7b21: $23
    reti                                          ; $7b22: $d9


    and e                                         ; $7b23: $a3
    db $d3                                        ; $7b24: $d3
    pop hl                                        ; $7b25: $e1
    pop af                                        ; $7b26: $f1
    inc a                                         ; $7b27: $3c
    inc e                                         ; $7b28: $1c
    ld h, $b1                                     ; $7b29: $26 $b1
    pop de                                        ; $7b2b: $d1
    dec bc                                        ; $7b2c: $0b
    add hl, de                                    ; $7b2d: $19
    ld sp, $f3ed                                  ; $7b2e: $31 $ed $f3
    ld l, e                                       ; $7b31: $6b
    ld b, a                                       ; $7b32: $47
    inc c                                         ; $7b33: $0c
    and l                                         ; $7b34: $a5
    pop de                                        ; $7b35: $d1
    or e                                          ; $7b36: $b3
    ret                                           ; $7b37: $c9


jr_051_7b38:
    jp z, $d97d                                   ; $7b38: $ca $7d $d9

    ld c, a                                       ; $7b3b: $4f
    ld e, [hl]                                    ; $7b3c: $5e
    jp Jump_051_71f9                              ; $7b3d: $c3 $f9 $71


    ccf                                           ; $7b40: $3f
    ld a, d                                       ; $7b41: $7a
    or h                                          ; $7b42: $b4
    call nc, $a4cd                                ; $7b43: $d4 $cd $a4
    and [hl]                                      ; $7b46: $a6
    ld d, a                                       ; $7b47: $57
    rst $00                                       ; $7b48: $c7
    rst $08                                       ; $7b49: $cf
    pop de                                        ; $7b4a: $d1
    db $10                                        ; $7b4b: $10
    ld bc, $31e7                                  ; $7b4c: $01 $e7 $31
    and e                                         ; $7b4f: $a3
    ld sp, $8f8f                                  ; $7b50: $31 $8f $8f
    rst $20                                       ; $7b53: $e7
    and d                                         ; $7b54: $a2
    or h                                          ; $7b55: $b4
    ld b, [hl]                                    ; $7b56: $46
    ld c, h                                       ; $7b57: $4c
    ld a, e                                       ; $7b58: $7b
    ret z                                         ; $7b59: $c8

    or h                                          ; $7b5a: $b4
    ld [$7265], a                                 ; $7b5b: $ea $65 $72
    ld d, e                                       ; $7b5e: $53
    and h                                         ; $7b5f: $a4
    ld a, h                                       ; $7b60: $7c
    or $ca                                        ; $7b61: $f6 $ca
    xor b                                         ; $7b63: $a8
    pop af                                        ; $7b64: $f1
    db $ec                                        ; $7b65: $ec
    cp h                                          ; $7b66: $bc
    ret c                                         ; $7b67: $d8

    ld [$c858], a                                 ; $7b68: $ea $58 $c8
    cp b                                          ; $7b6b: $b8
    ld d, e                                       ; $7b6c: $53
    sub a                                         ; $7b6d: $97
    ld e, h                                       ; $7b6e: $5c
    ld d, c                                       ; $7b6f: $51
    inc sp                                        ; $7b70: $33
    ld [hl], h                                    ; $7b71: $74
    ld a, d                                       ; $7b72: $7a
    reti                                          ; $7b73: $d9


    reti                                          ; $7b74: $d9


    ld h, h                                       ; $7b75: $64
    sbc c                                         ; $7b76: $99
    call nc, $a9d4                                ; $7b77: $d4 $d4 $a9
    ld l, e                                       ; $7b7a: $6b

Jump_051_7b7b:
    jp c, Jump_051_72d1                           ; $7b7b: $da $d1 $72

    ld h, h                                       ; $7b7e: $64
    add a                                         ; $7b7f: $87
    ld [$4d20], sp                                ; $7b80: $08 $20 $4d
    ld a, e                                       ; $7b83: $7b
    ret z                                         ; $7b84: $c8

    ld c, d                                       ; $7b85: $4a
    rst $08                                       ; $7b86: $cf
    rst $38                                       ; $7b87: $ff
    call nz, $9eac                                ; $7b88: $c4 $ac $9e
    cp l                                          ; $7b8b: $bd
    ld d, d                                       ; $7b8c: $52
    and e                                         ; $7b8d: $a3
    add $b3                                       ; $7b8e: $c6 $b3
    di                                            ; $7b90: $f3
    ld h, d                                       ; $7b91: $62
    xor e                                         ; $7b92: $ab
    inc hl                                        ; $7b93: $23
    cpl                                           ; $7b94: $2f
    db $eb                                        ; $7b95: $eb
    and l                                         ; $7b96: $a5
    or h                                          ; $7b97: $b4
    ldh a, [$99]                                  ; $7b98: $f0 $99
    sub h                                         ; $7b9a: $94
    ld [hl], $9b                                  ; $7b9b: $36 $9b
    inc l                                         ; $7b9d: $2c
    db $fd                                        ; $7b9e: $fd
    ld l, a                                       ; $7b9f: $6f
    cpl                                           ; $7ba0: $2f
    ld a, l                                       ; $7ba1: $7d
    cp b                                          ; $7ba2: $b8
    ld [hl], a                                    ; $7ba3: $77
    inc c                                         ; $7ba4: $0c
    rst $20                                       ; $7ba5: $e7
    ld d, a                                       ; $7ba6: $57
    xor $2b                                       ; $7ba7: $ee $2b
    pop de                                        ; $7ba9: $d1
    rrca                                          ; $7baa: $0f
    or c                                          ; $7bab: $b1
    or l                                          ; $7bac: $b5
    ld [hl], h                                    ; $7bad: $74
    ld h, h                                       ; $7bae: $64
    db $fd                                        ; $7baf: $fd
    ld l, b                                       ; $7bb0: $68
    ld h, [hl]                                    ; $7bb1: $66
    db $fc                                        ; $7bb2: $fc
    inc e                                         ; $7bb3: $1c
    dec c                                         ; $7bb4: $0d
    ld de, $4d20                                  ; $7bb5: $11 $20 $4d
    ld a, e                                       ; $7bb8: $7b
    ret z                                         ; $7bb9: $c8

    ld a, b                                       ; $7bba: $78
    adc a                                         ; $7bbb: $8f
    adc $7e                                       ; $7bbc: $ce $7e
    db $fc                                        ; $7bbe: $fc
    rra                                           ; $7bbf: $1f
    dec a                                         ; $7bc0: $3d
    ld a, e                                       ; $7bc1: $7b
    and l                                         ; $7bc2: $a5
    ld b, $1a                                     ; $7bc3: $06 $1a
    call c, $fefc                                 ; $7bc5: $dc $fc $fe
    ccf                                           ; $7bc8: $3f
    ld e, d                                       ; $7bc9: $5a
    adc h                                         ; $7bca: $8c
    reti                                          ; $7bcb: $d9


    inc hl                                        ; $7bcc: $23
    jr nz, jr_051_7c1c                            ; $7bcd: $20 $4d

    ld a, e                                       ; $7bcf: $7b
    ret z                                         ; $7bd0: $c8

    ld c, d                                       ; $7bd1: $4a
    rst $38                                       ; $7bd2: $ff
    add a                                         ; $7bd3: $87
    jp z, $bd52                                   ; $7bd4: $ca $52 $bd

    ld a, [$46bf]                                 ; $7bd7: $fa $bf $46
    ld c, e                                       ; $7bda: $4b
    db $dd                                        ; $7bdb: $dd
    ld c, h                                       ; $7bdc: $4c
    ld l, d                                       ; $7bdd: $6a
    pop bc                                        ; $7bde: $c1
    ld [hl], c                                    ; $7bdf: $71
    ld b, c                                       ; $7be0: $41
    inc a                                         ; $7be1: $3c
    ld a, [de]                                    ; $7be2: $1a
    ld b, d                                       ; $7be3: $42
    sbc b                                         ; $7be4: $98
    and $6d                                       ; $7be5: $e6 $6d
    ld c, h                                       ; $7be7: $4c
    or c                                          ; $7be8: $b1
    ld b, h                                       ; $7be9: $44
    ld [hl], d                                    ; $7bea: $72
    ld d, c                                       ; $7beb: $51
    ld e, d                                       ; $7bec: $5a
    inc sp                                        ; $7bed: $33
    add hl, hl                                    ; $7bee: $29
    ld l, l                                       ; $7bef: $6d
    sub [hl]                                      ; $7bf0: $96
    rst $38                                       ; $7bf1: $ff
    ld d, a                                       ; $7bf2: $57
    dec d                                         ; $7bf3: $15
    add h                                         ; $7bf4: $84
    jr nc, jr_051_7c12                            ; $7bf5: $30 $1b

    ld a, [hl-]                                   ; $7bf7: $3a
    sbc e                                         ; $7bf8: $9b
    xor h                                         ; $7bf9: $ac
    jp $0c96                                      ; $7bfa: $c3 $96 $0c


    rst $20                                       ; $7bfd: $e7
    push af                                       ; $7bfe: $f5
    ld l, b                                       ; $7bff: $68
    ld d, d                                       ; $7c00: $52
    sbc [hl]                                      ; $7c01: $9e
    ld d, a                                       ; $7c02: $57
    ld a, [hl-]                                   ; $7c03: $3a
    ld b, h                                       ; $7c04: $44
    jr nz, jr_051_7c54                            ; $7c05: $20 $4d

    ld a, e                                       ; $7c07: $7b
    ret z                                         ; $7c08: $c8

    or h                                          ; $7c09: $b4
    ld hl, sp-$2b                                 ; $7c0a: $f8 $d5
    xor e                                         ; $7c0c: $ab
    rst $38                                       ; $7c0d: $ff
    ld l, e                                       ; $7c0e: $6b
    or $4a                                        ; $7c0f: $f6 $4a
    dec l                                         ; $7c11: $2d

jr_051_7c12:
    di                                            ; $7c12: $f3
    dec a                                         ; $7c13: $3d
    sub e                                         ; $7c14: $93
    jp nc, $7bc6                                  ; $7c15: $d2 $c6 $7b

    ld [hl], h                                    ; $7c18: $74
    or $e3                                        ; $7c19: $f6 $e3
    rst $38                                       ; $7c1b: $ff

jr_051_7c1c:
    add sp, -$27                                  ; $7c1c: $e8 $d9
    dec hl                                        ; $7c1e: $2b
    inc bc                                        ; $7c1f: $03
    dec b                                         ; $7c20: $05
    ld l, [hl]                                    ; $7c21: $6e
    ld a, [hl]                                    ; $7c22: $7e
    rst $38                                       ; $7c23: $ff
    rra                                           ; $7c24: $1f
    dec l                                         ; $7c25: $2d

jr_051_7c26:
    add $ec                                       ; $7c26: $c6 $ec
    ld de, $4d20                                  ; $7c28: $11 $20 $4d
    ld a, e                                       ; $7c2b: $7b
    ret z                                         ; $7c2c: $c8

    or h                                          ; $7c2d: $b4
    ld [$aba9], a                                 ; $7c2e: $ea $a9 $ab
    ld e, a                                       ; $7c31: $5f
    sbc a                                         ; $7c32: $9f
    cp l                                          ; $7c33: $bd
    ld a, [bc]                                    ; $7c34: $0a
    ld b, d                                       ; $7c35: $42
    jr jr_051_7c26                                ; $7c36: $18 $ee

    jp $0bab                                      ; $7c38: $c3 $ab $0b


    rst $38                                       ; $7c3b: $ff
    xor h                                         ; $7c3c: $ac
    ld b, a                                       ; $7c3d: $47
    db $ec                                        ; $7c3e: $ec
    ld de, $4d20                                  ; $7c3f: $11 $20 $4d
    ld a, e                                       ; $7c42: $7b
    ret z                                         ; $7c43: $c8

    or h                                          ; $7c44: $b4
    ld [$a629], a                                 ; $7c45: $ea $29 $a6
    ld l, c                                       ; $7c48: $69
    sbc a                                         ; $7c49: $9f
    cp l                                          ; $7c4a: $bd
    ld l, d                                       ; $7c4b: $6a
    sbc c                                         ; $7c4c: $99
    ld d, [hl]                                    ; $7c4d: $56
    dec sp                                        ; $7c4e: $3b
    ei                                            ; $7c4f: $fb
    add c                                         ; $7c50: $81
    ld a, $44                                     ; $7c51: $3e $44
    reti                                          ; $7c53: $d9


jr_051_7c54:
    sub b                                         ; $7c54: $90
    add c                                         ; $7c55: $81
    ld b, $b7                                     ; $7c56: $06 $b7
    ld l, h                                       ; $7c58: $6c
    add sp, $48                                   ; $7c59: $e8 $48
    rra                                           ; $7c5b: $1f
    ld a, d                                       ; $7c5c: $7a
    ld e, $77                                     ; $7c5d: $1e $77
    ld [$fb95], a                                 ; $7c5f: $ea $95 $fb
    ld c, b                                       ; $7c62: $48
    ld h, l                                       ; $7c63: $65
    xor a                                         ; $7c64: $af
    add l                                         ; $7c65: $85
    inc l                                         ; $7c66: $2c
    dec e                                         ; $7c67: $1d
    ld e, c                                       ; $7c68: $59
    ccf                                           ; $7c69: $3f
    sbc d                                         ; $7c6a: $9a
    add hl, de                                    ; $7c6b: $19
    ccf                                           ; $7c6c: $3f
    rst $00                                       ; $7c6d: $c7
    ld a, [c]                                     ; $7c6e: $f2
    ld hl, $cf24                                  ; $7c6f: $21 $24 $cf
    rst $28                                       ; $7c72: $ef
    rst $38                                       ; $7c73: $ff
    db $d3                                        ; $7c74: $d3
    adc [hl]                                      ; $7c75: $8e
    rst $08                                       ; $7c76: $cf
    ld a, c                                       ; $7c77: $79
    ld [$047b], sp                                ; $7c78: $08 $7b $04
    jr nz, jr_051_7cca                            ; $7c7b: $20 $4d

    ld a, e                                       ; $7c7d: $7b
    ret z                                         ; $7c7e: $c8

    cp b                                          ; $7c7f: $b8
    ld d, e                                       ; $7c80: $53
    ld a, e                                       ; $7c81: $7b
    sbc e                                         ; $7c82: $9b
    rst $38                                       ; $7c83: $ff
    xor e                                         ; $7c84: $ab
    rla                                           ; $7c85: $17
    ld [hl-], a                                   ; $7c86: $32
    ld l, d                                       ; $7c87: $6a
    inc a                                         ; $7c88: $3c
    dec sp                                        ; $7c89: $3b
    cpl                                           ; $7c8a: $2f
    or [hl]                                       ; $7c8b: $b6
    ld a, [hl-]                                   ; $7c8c: $3a
    sub [hl]                                      ; $7c8d: $96
    ld sp, hl                                     ; $7c8e: $f9
    sub l                                         ; $7c8f: $95
    ei                                            ; $7c90: $fb
    ld l, h                                       ; $7c91: $6c
    adc b                                         ; $7c92: $88
    ld b, h                                       ; $7c93: $44
    ld e, [hl]                                    ; $7c94: $5e
    cp c                                          ; $7c95: $b9
    ld d, a                                       ; $7c96: $57
    adc d                                         ; $7c97: $8a
    ld b, h                                       ; $7c98: $44
    ld c, a                                       ; $7c99: $4f
    adc e                                         ; $7c9a: $8b
    ld e, a                                       ; $7c9b: $5f
    dec a                                         ; $7c9c: $3d
    ld a, e                                       ; $7c9d: $7b
    dec d                                         ; $7c9e: $15
    ld a, e                                       ; $7c9f: $7b
    inc b                                         ; $7ca0: $04
    jr nz, jr_051_7cf0                            ; $7ca1: $20 $4d

    ld a, e                                       ; $7ca3: $7b
    ret z                                         ; $7ca4: $c8

    or h                                          ; $7ca5: $b4
    ld [$2769], a                                 ; $7ca6: $ea $69 $27
    and [hl]                                      ; $7ca9: $a6
    rst $08                                       ; $7caa: $cf
    ld e, [hl]                                    ; $7cab: $5e
    dec [hl]                                      ; $7cac: $35
    cp a                                          ; $7cad: $bf
    rst $38                                       ; $7cae: $ff
    ld c, a                                       ; $7caf: $4f
    adc [hl]                                      ; $7cb0: $8e
    db $ec                                        ; $7cb1: $ec
    dec [hl]                                      ; $7cb2: $35
    cp c                                          ; $7cb3: $b9
    ld a, [hl-]                                   ; $7cb4: $3a
    rst $08                                       ; $7cb5: $cf
    ld a, [hl]                                    ; $7cb6: $7e
    rst $20                                       ; $7cb7: $e7
    ld hl, $2352                                  ; $7cb8: $21 $52 $23
    add [hl]                                      ; $7cbb: $86
    and [hl]                                      ; $7cbc: $a6
    xor a                                         ; $7cbd: $af
    sub h                                         ; $7cbe: $94
    ld e, a                                       ; $7cbf: $5f
    inc hl                                        ; $7cc0: $23
    db $e3                                        ; $7cc1: $e3
    ld [de], a                                    ; $7cc2: $12
    ld d, c                                       ; $7cc3: $51
    pop de                                        ; $7cc4: $d1
    push de                                       ; $7cc5: $d5
    ld c, e                                       ; $7cc6: $4b
    ld d, a                                       ; $7cc7: $57
    rst $10                                       ; $7cc8: $d7
    ld b, d                                       ; $7cc9: $42

jr_051_7cca:
    and [hl]                                      ; $7cca: $a6
    ld a, b                                       ; $7ccb: $78
    ld d, c                                       ; $7ccc: $51
    db $10                                        ; $7ccd: $10
    ld bc, $4d20                                  ; $7cce: $01 $20 $4d
    ld a, e                                       ; $7cd1: $7b
    ret z                                         ; $7cd2: $c8

    or h                                          ; $7cd3: $b4
    ld [$aba9], a                                 ; $7cd4: $ea $a9 $ab
    ld e, a                                       ; $7cd7: $5f
    sbc a                                         ; $7cd8: $9f
    cp l                                          ; $7cd9: $bd
    ld l, d                                       ; $7cda: $6a
    ld hl, $a3c3                                  ; $7cdb: $21 $c3 $a3
    ld l, c                                       ; $7cde: $69
    ld c, c                                       ; $7cdf: $49
    adc b                                         ; $7ce0: $88
    rst $28                                       ; $7ce1: $ef
    ld b, h                                       ; $7ce2: $44
    db $e4                                        ; $7ce3: $e4
    adc d                                         ; $7ce4: $8a
    ld e, d                                       ; $7ce5: $5a
    jp hl                                         ; $7ce6: $e9


    inc bc                                        ; $7ce7: $03
    dec b                                         ; $7ce8: $05
    adc [hl]                                      ; $7ce9: $8e
    db $fd                                        ; $7cea: $fd
    adc $43                                       ; $7ceb: $ce $43
    and h                                         ; $7ced: $a4
    ld b, [hl]                                    ; $7cee: $46
    inc c                                         ; $7cef: $0c

jr_051_7cf0:
    ld c, l                                       ; $7cf0: $4d
    ld e, a                                       ; $7cf1: $5f
    add hl, hl                                    ; $7cf2: $29
    cp a                                          ; $7cf3: $bf
    ld b, [hl]                                    ; $7cf4: $46
    add $25                                       ; $7cf5: $c6 $25
    and d                                         ; $7cf7: $a2
    and d                                         ; $7cf8: $a2
    xor e                                         ; $7cf9: $ab
    sub a                                         ; $7cfa: $97
    xor [hl]                                      ; $7cfb: $ae
    xor [hl]                                      ; $7cfc: $ae
    add l                                         ; $7cfd: $85
    ld c, h                                       ; $7cfe: $4c
    pop af                                        ; $7cff: $f1
    and d                                         ; $7d00: $a2
    jr nz, jr_051_7d05                            ; $7d01: $20 $02

    jr nz, jr_051_7d52                            ; $7d03: $20 $4d

jr_051_7d05:
    ld a, e                                       ; $7d05: $7b
    ret z                                         ; $7d06: $c8

    or h                                          ; $7d07: $b4
    ld [$aba9], a                                 ; $7d08: $ea $a9 $ab
    ld e, a                                       ; $7d0b: $5f
    sbc a                                         ; $7d0c: $9f
    cp l                                          ; $7d0d: $bd
    ld l, d                                       ; $7d0e: $6a
    ld hl, $a3c3                                  ; $7d0f: $21 $c3 $a3
    ld l, c                                       ; $7d12: $69
    ld c, c                                       ; $7d13: $49
    adc b                                         ; $7d14: $88
    rst $28                                       ; $7d15: $ef
    ld b, h                                       ; $7d16: $44
    db $e4                                        ; $7d17: $e4
    adc d                                         ; $7d18: $8a
    ld e, d                                       ; $7d19: $5a
    jp hl                                         ; $7d1a: $e9


    inc bc                                        ; $7d1b: $03
    dec c                                         ; $7d1c: $0d
    adc [hl]                                      ; $7d1d: $8e
    db $fd                                        ; $7d1e: $fd
    adc $43                                       ; $7d1f: $ce $43
    and h                                         ; $7d21: $a4
    ld b, [hl]                                    ; $7d22: $46
    inc c                                         ; $7d23: $0c
    ld c, l                                       ; $7d24: $4d
    ld e, a                                       ; $7d25: $5f
    add hl, hl                                    ; $7d26: $29
    cp a                                          ; $7d27: $bf
    ld b, [hl]                                    ; $7d28: $46
    add $25                                       ; $7d29: $c6 $25

Jump_051_7d2b:
    and d                                         ; $7d2b: $a2
    and d                                         ; $7d2c: $a2
    xor e                                         ; $7d2d: $ab
    sub a                                         ; $7d2e: $97
    xor [hl]                                      ; $7d2f: $ae
    xor [hl]                                      ; $7d30: $ae
    add l                                         ; $7d31: $85
    ld c, h                                       ; $7d32: $4c
    pop af                                        ; $7d33: $f1
    and d                                         ; $7d34: $a2
    jr nz, @+$04                                  ; $7d35: $20 $02

    add b                                         ; $7d37: $80
    cp $af                                        ; $7d38: $fe $af
    reti                                          ; $7d3a: $d9


    dec hl                                        ; $7d3b: $2b
    dec [hl]                                      ; $7d3c: $35
    ret nc                                        ; $7d3d: $d0

    ldh [$96], a                                  ; $7d3e: $e0 $96
    inc de                                        ; $7d40: $13
    sub l                                         ; $7d41: $95
    sub a                                         ; $7d42: $97
    db $f4                                        ; $7d43: $f4
    db $ec                                        ; $7d44: $ec
    ld d, l                                       ; $7d45: $55
    db $ec                                        ; $7d46: $ec
    rst $30                                       ; $7d47: $f7
    db $f4                                        ; $7d48: $f4
    ld a, [hl]                                    ; $7d49: $7e
    ld [de], a                                    ; $7d4a: $12

jr_051_7d4b:
    ld [hl-], a                                   ; $7d4b: $32
    xor [hl]                                      ; $7d4c: $ae
    ld [hl], d                                    ; $7d4d: $72
    or c                                          ; $7d4e: $b1
    rst $18                                       ; $7d4f: $df
    db $d3                                        ; $7d50: $d3
    ei                                            ; $7d51: $fb

jr_051_7d52:
    ld c, c                                       ; $7d52: $49
    ret z                                         ; $7d53: $c8

jr_051_7d54:
    cp b                                          ; $7d54: $b8
    jp z, Jump_000_1ec5                           ; $7d55: $ca $c5 $1e

    ld bc, $0c4f                                  ; $7d58: $01 $4f $0c
    sbc l                                         ; $7d5b: $9d
    ld a, [bc]                                    ; $7d5c: $0a
    ld sp, $e174                                  ; $7d5d: $31 $74 $e1
    ld a, $6f                                     ; $7d60: $3e $6f
    di                                            ; $7d62: $f3
    ld a, a                                       ; $7d63: $7f
    cp $a5                                        ; $7d64: $fe $a5
    ld b, [hl]                                    ; $7d66: $46
    ld c, $91                                     ; $7d67: $0e $91
    add sp, -$27                                  ; $7d69: $e8 $d9
    ld h, h                                       ; $7d6b: $64
    ld e, d                                       ; $7d6c: $5a
    jp nc, $ffab                                  ; $7d6d: $d2 $ab $ff

    ld l, e                                       ; $7d70: $6b
    or $4a                                        ; $7d71: $f6 $4a
    dec c                                         ; $7d73: $0d
    inc d                                         ; $7d74: $14
    cp b                                          ; $7d75: $b8
    sbc c                                         ; $7d76: $99
    sub h                                         ; $7d77: $94
    ld [hl], $d0                                  ; $7d78: $36 $d0
    ldh [$c6], a                                  ; $7d7a: $e0 $c6
    ld a, e                                       ; $7d7c: $7b
    ld [hl], h                                    ; $7d7d: $74
    or $e3                                        ; $7d7e: $f6 $e3
    rst $38                                       ; $7d80: $ff
    inc a                                         ; $7d81: $3c
    cp a                                          ; $7d82: $bf
    rst $38                                       ; $7d83: $ff
    adc a                                         ; $7d84: $8f

jr_051_7d85:
    ld d, $63                                     ; $7d85: $16 $63
    or $08                                        ; $7d87: $f6 $08
    rst $20                                       ; $7d89: $e7
    ret                                           ; $7d8a: $c9


    jr c, jr_051_7d4b                             ; $7d8b: $38 $be

    rla                                           ; $7d8d: $17
    ld [hl-], a                                   ; $7d8e: $32
    ld [hl], d                                    ; $7d8f: $72
    ld c, b                                       ; $7d90: $48
    cp $b5                                        ; $7d91: $fe $b5
    jp nc, $ee57                                  ; $7d93: $d2 $57 $ee

    or e                                          ; $7d96: $b3
    ret                                           ; $7d97: $c9


    cp b                                          ; $7d98: $b8
    ld d, e                                       ; $7d99: $53
    rst $08                                       ; $7d9a: $cf
    rst $28                                       ; $7d9b: $ef
    rst $38                                       ; $7d9c: $ff
    call c, Call_051_7ff1                         ; $7d9d: $dc $f1 $7f
    ld hl, sp-$72                                 ; $7da0: $f8 $8e
    sbc [hl]                                      ; $7da2: $9e
    ld d, $df                                     ; $7da3: $16 $df
    ld [hl], a                                    ; $7da5: $77
    add hl, hl                                    ; $7da6: $29
    ld c, l                                       ; $7da7: $4d
    ld h, h                                       ; $7da8: $64
    call nc, $eaf8                                ; $7da9: $d4 $f8 $ea
    rst $38                                       ; $7dac: $ff
    pop de                                        ; $7dad: $d1
    ld d, d                                       ; $7dae: $52
    sub a                                         ; $7daf: $97
    dec a                                         ; $7db0: $3d
    ld [bc], a                                    ; $7db1: $02
    rst $20                                       ; $7db2: $e7
    ld hl, $2352                                  ; $7db3: $21 $52 $23
    and [hl]                                      ; $7db6: $a6
    sbc l                                         ; $7db7: $9d
    jr jr_051_7d54                                ; $7db8: $18 $9a

    cp [hl]                                       ; $7dba: $be
    ld d, d                                       ; $7dbb: $52
    ld a, [hl]                                    ; $7dbc: $7e
    adc l                                         ; $7dbd: $8d
    ld c, h                                       ; $7dbe: $4c
    sbc l                                         ; $7dbf: $9d
    ld a, d                                       ; $7dc0: $7a
    or $aa                                        ; $7dc1: $f6 $aa
    ld e, l                                       ; $7dc3: $5d
    ld c, d                                       ; $7dc4: $4a
    inc de                                        ; $7dc5: $13
    add hl, de                                    ; $7dc6: $19
    dec [hl]                                      ; $7dc7: $35
    cp [hl]                                       ; $7dc8: $be
    ld a, [$76bf]                                 ; $7dc9: $fa $bf $76
    ld d, e                                       ; $7dcc: $53
    inc h                                         ; $7dcd: $24

Jump_051_7dce:
    ld e, [hl]                                    ; $7dce: $5e
    and [hl]                                      ; $7dcf: $a6
    and l                                         ; $7dd0: $a5
    ld l, [hl]                                    ; $7dd1: $6e
    ld h, $b5                                     ; $7dd2: $26 $b5
    ld [hl], d                                    ; $7dd4: $72
    xor a                                         ; $7dd5: $af
    inc d                                         ; $7dd6: $14
    adc c                                         ; $7dd7: $89
    ld e, [hl]                                    ; $7dd8: $5e
    ld [hl+], a                                   ; $7dd9: $22
    ld [hl], $7a                                  ; $7dda: $36 $7a
    ld hl, $decb                                  ; $7ddc: $21 $cb $de
    rst $10                                       ; $7ddf: $d7
    ld b, d                                       ; $7de0: $42
    inc b                                         ; $7de1: $04
    ld h, b                                       ; $7de2: $60
    adc [hl]                                      ; $7de3: $8e
    sbc [hl]                                      ; $7de4: $9e
    ld c, l                                       ; $7de5: $4d
    and [hl]                                      ; $7de6: $a6
    ld d, l                                       ; $7de7: $55
    adc a                                         ; $7de8: $8f
    jr jr_051_7d85                                ; $7de9: $18 $9a

    cp [hl]                                       ; $7deb: $be
    ld [de], a                                    ; $7dec: $12
    ld e, l                                       ; $7ded: $5d
    ld a, $1b                                     ; $7dee: $3e $1b
    add hl, sp                                    ; $7df0: $39
    rst $10                                       ; $7df1: $d7
    adc b                                         ; $7df2: $88
    ld l, c                                       ; $7df3: $69
    ld e, a                                       ; $7df4: $5f
    adc [hl]                                      ; $7df5: $8e
    sbc [hl]                                      ; $7df6: $9e
    cp l                                          ; $7df7: $bd
    ld d, d                                       ; $7df8: $52
    and e                                         ; $7df9: $a3
    add $b3                                       ; $7dfa: $c6 $b3
    di                                            ; $7dfc: $f3
    ld h, d                                       ; $7dfd: $62
    xor e                                         ; $7dfe: $ab
    ld h, e                                       ; $7dff: $63
    ld a, [$edf1]                                 ; $7e00: $fa $f1 $ed
    ld d, l                                       ; $7e03: $55
    ld a, [hl]                                    ; $7e04: $7e
    ld [hl], $fd                                  ; $7e05: $36 $fd
    ld hl, sp-$0a                                 ; $7e07: $f8 $f6
    ld a, [hl+]                                   ; $7e09: $2a
    ld e, a                                       ; $7e0a: $5f
    sub $4b                                       ; $7e0b: $d6 $4b
    push de                                       ; $7e0d: $d5
    ld [de], a                                    ; $7e0e: $12
    add a                                         ; $7e0f: $87
    db $10                                        ; $7e10: $10
    ld [hl+], a                                   ; $7e11: $22
    ld h, b                                       ; $7e12: $60
    adc [hl]                                      ; $7e13: $8e
    sbc [hl]                                      ; $7e14: $9e
    ld c, l                                       ; $7e15: $4d
    and [hl]                                      ; $7e16: $a6
    ld d, l                                       ; $7e17: $55
    adc a                                         ; $7e18: $8f
    jr @-$64                                      ; $7e19: $18 $9a

    cp [hl]                                       ; $7e1b: $be
    ld [de], a                                    ; $7e1c: $12
    ld e, l                                       ; $7e1d: $5d
    ld a, $1b                                     ; $7e1e: $3e $1b
    add hl, sp                                    ; $7e20: $39
    rst $10                                       ; $7e21: $d7
    adc b                                         ; $7e22: $88
    ld l, c                                       ; $7e23: $69
    rra                                           ; $7e24: $1f
    add hl, sp                                    ; $7e25: $39
    ld b, h                                       ; $7e26: $44
    ld a, [c]                                     ; $7e27: $f2
    ld l, h                                       ; $7e28: $6c
    ld hl, sp-$4e                                 ; $7e29: $f8 $b2
    and c                                         ; $7e2b: $a1
    xor e                                         ; $7e2c: $ab
    rst $38                                       ; $7e2d: $ff
    ld l, e                                       ; $7e2e: $6b
    jp hl                                         ; $7e2f: $e9


    ret z                                         ; $7e30: $c8

    ld a, [$ccd1]                                 ; $7e31: $fa $d1 $cc
    ld hl, sp+$39                                 ; $7e34: $f8 $39
    ld a, d                                       ; $7e36: $7a
    ld [hl], $59                                  ; $7e37: $36 $59
    adc c                                         ; $7e39: $89
    ld a, [hl]                                    ; $7e3a: $7e
    adc b                                         ; $7e3b: $88
    adc l                                         ; $7e3c: $8d
    ld e, [hl]                                    ; $7e3d: $5e
    ld a, [$1edf]                                 ; $7e3e: $fa $df $1e
    ld h, l                                       ; $7e41: $65
    and l                                         ; $7e42: $a5
    ld c, b                                       ; $7e43: $48
    ld hl, sp-$4c                                 ; $7e44: $f8 $b4
    add e                                         ; $7e46: $83
    di                                            ; $7e47: $f3
    xor e                                         ; $7e48: $ab
    xor d                                         ; $7e49: $aa
    add e                                         ; $7e4a: $83
    dec a                                         ; $7e4b: $3d
    ld [bc], a                                    ; $7e4c: $02
    jr nz, jr_051_7e9c                            ; $7e4d: $20 $4d

    ld a, e                                       ; $7e4f: $7b
    ret z                                         ; $7e50: $c8

    or h                                          ; $7e51: $b4
    ld [$489d], a                                 ; $7e52: $ea $9d $48
    ld sp, hl                                     ; $7e55: $f9
    add sp, $21                                   ; $7e56: $e8 $21
    jp z, Jump_000_2c86                           ; $7e58: $ca $86 $2c

    sub e                                         ; $7e5b: $93
    or d                                          ; $7e5c: $b2
    dec [hl]                                      ; $7e5d: $35
    sbc e                                         ; $7e5e: $9b
    ld c, h                                       ; $7e5f: $4c
    sbc l                                         ; $7e60: $9d
    ld a, d                                       ; $7e61: $7a
    adc c                                         ; $7e62: $89
    ret c                                         ; $7e63: $d8

    add sp, $65                                   ; $7e64: $e8 $65
    rst $28                                       ; $7e66: $ef
    ld l, e                                       ; $7e67: $6b
    ld b, e                                       ; $7e68: $43
    ld b, [hl]                                    ; $7e69: $46
    xor e                                         ; $7e6a: $ab
    ld c, c                                       ; $7e6b: $49
    adc c                                         ; $7e6c: $89
    ld b, e                                       ; $7e6d: $43
    inc b                                         ; $7e6e: $04
    rrca                                          ; $7e6f: $0f
    push de                                       ; $7e70: $d5
    call $381a                                    ; $7e71: $cd $1a $38
    db $e3                                        ; $7e74: $e3

Call_051_7e75:
    ld e, $3d                                     ; $7e75: $1e $3d
    ld h, d                                       ; $7e77: $62
    jp c, $a7c3                                   ; $7e78: $da $c3 $a7

    ld d, l                                       ; $7e7b: $55
    ld c, a                                       ; $7e7c: $4f
    add l                                         ; $7e7d: $85
    xor a                                         ; $7e7e: $af
    cp $af                                        ; $7e7f: $fe $af
    reti                                          ; $7e81: $d9


    dec hl                                        ; $7e82: $2b
    dec [hl]                                      ; $7e83: $35
    ld e, d                                       ; $7e84: $5a
    ld [$8f46], a                                 ; $7e85: $ea $46 $8f

Call_051_7e88:
    ld d, $e3                                     ; $7e88: $16 $e3
    ld c, e                                       ; $7e8a: $4b
    db $eb                                        ; $7e8b: $eb
    ld c, a                                       ; $7e8c: $4f
    xor [hl]                                      ; $7e8d: $ae
    adc $9f                                       ; $7e8e: $ce $9f
    call $b4a4                                    ; $7e90: $cd $a4 $b4
    ld [hl], c                                    ; $7e93: $71
    ld b, a                                       ; $7e94: $47
    dec hl                                        ; $7e95: $2b
    ld h, d                                       ; $7e96: $62
    ld l, h                                       ; $7e97: $6c
    ld sp, hl                                     ; $7e98: $f9
    adc b                                         ; $7e99: $88
    ld l, c                                       ; $7e9a: $69
    rrca                                          ; $7e9b: $0f

jr_051_7e9c:
    reti                                          ; $7e9c: $d9


    sbc l                                         ; $7e9d: $9d
    cp l                                          ; $7e9e: $bd
    ld [hl-], a                                   ; $7e9f: $32
    ld h, b                                       ; $7ea0: $60
    and $5f                                       ; $7ea1: $e6 $5f
    inc sp                                        ; $7ea3: $33
    ret nc                                        ; $7ea4: $d0

    and l                                         ; $7ea5: $a5
    xor $82                                       ; $7ea6: $ee $82
    di                                            ; $7ea8: $f3
    add sp, $11                                   ; $7ea9: $e8 $11
    db $d3                                        ; $7eab: $d3
    cp $83                                        ; $7eac: $fe $83
    ld b, b                                       ; $7eae: $40
    inc b                                         ; $7eaf: $04
    rst $20                                       ; $7eb0: $e7
    ret                                           ; $7eb1: $c9


    or h                                          ; $7eb2: $b4
    ld [$d769], a                                 ; $7eb3: $ea $69 $d7
    cp l                                          ; $7eb6: $bd
    ld a, h                                       ; $7eb7: $7c
    pop hl                                        ; $7eb8: $e1
    ld a, $ee                                     ; $7eb9: $3e $ee
    call nc, $f941                                ; $7ebb: $d4 $41 $f9
    cp a                                          ; $7ebe: $bf
    ld l, h                                       ; $7ebf: $6c
    add sp, $6c                                   ; $7ec0: $e8 $6c
    ld [hl-], a                                   ; $7ec2: $32
    ld d, d                                       ; $7ec3: $52
    or d                                          ; $7ec4: $b2
    call nz, $c93b                                ; $7ec5: $c4 $3b $c9
    ld e, [hl]                                    ; $7ec8: $5e
    or e                                          ; $7ec9: $b3
    ld d, a                                       ; $7eca: $57
    adc l                                         ; $7ecb: $8d
    add [hl]                                      ; $7ecc: $86
    add l                                         ; $7ecd: $85
    inc bc                                        ; $7ece: $03
    ld c, e                                       ; $7ecf: $4b
    ld h, a                                       ; $7ed0: $67
    sub e                                         ; $7ed1: $93
    jp hl                                         ; $7ed2: $e9


    rst $30                                       ; $7ed3: $f7
    rst $38                                       ; $7ed4: $ff
    dec h                                         ; $7ed5: $25
    sbc $49                                       ; $7ed6: $de $49
    or $9a                                        ; $7ed8: $f6 $9a
    cp l                                          ; $7eda: $bd
    ld l, d                                       ; $7edb: $6a
    inc [hl]                                      ; $7edc: $34
    db $ec                                        ; $7edd: $ec
    jp nz, $dc7d                                  ; $7ede: $c2 $7d $dc

    xor c                                         ; $7ee1: $a9
    add e                                         ; $7ee2: $83
    ld a, [c]                                     ; $7ee3: $f2
    ld a, a                                       ; $7ee4: $7f
    sbc $ac                                       ; $7ee5: $de $ac
    inc d                                         ; $7ee7: $14
    adc c                                         ; $7ee8: $89
    sbc [hl]                                      ; $7ee9: $9e
    ld c, l                                       ; $7eea: $4d
    add [hl]                                      ; $7eeb: $86
    di                                            ; $7eec: $f3
    ld a, e                                       ; $7eed: $7b
    add d                                         ; $7eee: $82
    ld de, $0610                                  ; $7eef: $11 $10 $06
    adc h                                         ; $7ef2: $8c
    db $e3                                        ; $7ef3: $e3
    ld c, [hl]                                    ; $7ef4: $4e
    cp l                                          ; $7ef5: $bd
    ld [hl], d                                    ; $7ef6: $72
    rst $18                                       ; $7ef7: $df
    add hl, bc                                    ; $7ef8: $09
    rst $00                                       ; $7ef9: $c7
    and l                                         ; $7efa: $a5
    and [hl]                                      ; $7efb: $a6
    dec h                                         ; $7efc: $25
    ld a, d                                       ; $7efd: $7a
    ld h, d                                       ; $7efe: $62
    ld l, c                                       ; $7eff: $69
    ld [$664b], sp                                ; $7f00: $08 $4b $66
    ld d, d                                       ; $7f03: $52
    jp c, $e3f4                                   ; $7f04: $da $f4 $e3

    inc sp                                        ; $7f07: $33
    and e                                         ; $7f08: $a3
    rst $30                                       ; $7f09: $f7
    call nz, $93cb                                ; $7f0a: $c4 $cb $93
    cp h                                          ; $7f0d: $bc
    ld d, a                                       ; $7f0e: $57
    add [hl]                                      ; $7f0f: $86
    ret                                           ; $7f10: $c9


    dec sp                                        ; $7f11: $3b
    ret                                           ; $7f12: $c9


    ld e, [hl]                                    ; $7f13: $5e
    ld [hl], b                                    ; $7f14: $70
    ret nz                                        ; $7f15: $c0

    ld c, [hl]                                    ; $7f16: $4e
    cp l                                          ; $7f17: $bd
    ld [hl], d                                    ; $7f18: $72
    ld e, a                                       ; $7f19: $5f
    ld [c], a                                     ; $7f1a: $e2
    sbc l                                         ; $7f1b: $9d
    ld h, h                                       ; $7f1c: $64
    xor a                                         ; $7f1d: $af
    reti                                          ; $7f1e: $d9


    xor e                                         ; $7f1f: $ab
    ld b, [hl]                                    ; $7f20: $46
    jp $3b8e                                      ; $7f21: $c3 $8e $3b


    ld [hl], l                                    ; $7f24: $75
    ld d, b                                       ; $7f25: $50
    cp $87                                        ; $7f26: $fe $87
    adc a                                         ; $7f28: $8f
    ld d, [hl]                                    ; $7f29: $56
    sub e                                         ; $7f2a: $93
    add sp, -$16                                  ; $7f2b: $e8 $ea
    reti                                          ; $7f2d: $d9


    ld h, h                                       ; $7f2e: $64
    ld [hl], $64                                  ; $7f2f: $36 $64
    ld hl, sp+$2f                                 ; $7f31: $f8 $2f
    rst $08                                       ; $7f33: $cf
    jp $3df9                                      ; $7f34: $c3 $f9 $3d


    ld d, h                                       ; $7f37: $54
    scf                                           ; $7f38: $37
    dec hl                                        ; $7f39: $2b
    adc a                                         ; $7f3a: $8f
    or h                                          ; $7f3b: $b4
    pop bc                                        ; $7f3c: $c1
    pop af                                        ; $7f3d: $f1
    reti                                          ; $7f3e: $d9


    and e                                         ; $7f3f: $a3
    ld h, a                                       ; $7f40: $67
    jp $5787                                      ; $7f41: $c3 $87 $57


    adc $d5                                       ; $7f44: $ce $d5
    inc sp                                        ; $7f46: $33
    add hl, hl                                    ; $7f47: $29
    ld l, l                                       ; $7f48: $6d
    sbc $ac                                       ; $7f49: $de $ac
    inc d                                         ; $7f4b: $14
    adc c                                         ; $7f4c: $89
    ld e, $ce                                     ; $7f4d: $1e $ce
    rrca                                          ; $7f4f: $0f
    ret nc                                        ; $7f50: $d0

    bit 0, h                                      ; $7f51: $cb $44
    ld a, [bc]                                    ; $7f53: $0a
    rst $00                                       ; $7f54: $c7
    ld b, e                                       ; $7f55: $43
    ldh [$ce], a                                  ; $7f56: $e0 $ce
    ld b, e                                       ; $7f58: $43
    and [hl]                                      ; $7f59: $a6
    dec e                                         ; $7f5a: $1d
    cp l                                          ; $7f5b: $bd
    ld c, h                                       ; $7f5c: $4c
    adc [hl]                                      ; $7f5d: $8e
    and [hl]                                      ; $7f5e: $a6
    ld hl, $d153                                  ; $7f5f: $21 $53 $d1
    or e                                          ; $7f62: $b3
    ld d, a                                       ; $7f63: $57
    db $ed                                        ; $7f64: $ed
    ret nc                                        ; $7f65: $d0

    ld b, e                                       ; $7f66: $43
    halt                                          ; $7f67: $76
    add l                                         ; $7f68: $85
    inc sp                                        ; $7f69: $33
    ld c, l                                       ; $7f6a: $4d
    res 5, a                                      ; $7f6b: $cb $af
    sub c                                         ; $7f6d: $91
    add hl, de                                    ; $7f6e: $19
    ld a, [hl-]                                   ; $7f6f: $3a
    ld a, e                                       ; $7f70: $7b
    and l                                         ; $7f71: $a5
    ld d, $2a                                     ; $7f72: $16 $2a
    inc h                                         ; $7f74: $24
    sub e                                         ; $7f75: $93
    jp nz, $cfa3                                  ; $7f76: $c2 $a3 $cf

    ld h, $57                                     ; $7f79: $26 $57
    rst $20                                       ; $7f7b: $e7
    rst $08                                       ; $7f7c: $cf
    ld d, $cd                                     ; $7f7d: $16 $cd
    ld d, l                                       ; $7f7f: $55
    add a                                         ; $7f80: $87
    ld l, b                                       ; $7f81: $68
    pop hl                                        ; $7f82: $e1
    inc sp                                        ; $7f83: $33
    add hl, hl                                    ; $7f84: $29
    ld l, l                                       ; $7f85: $6d
    ld sp, hl                                     ; $7f86: $f9
    sub d                                         ; $7f87: $92
    ld e, a                                       ; $7f88: $5f
    dec c                                         ; $7f89: $0d
    ld de, $ffff                                  ; $7f8a: $11 $ff $ff
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

Call_051_7ff1:
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
