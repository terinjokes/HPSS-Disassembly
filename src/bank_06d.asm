; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    ld l, l                                       ; $4000: $6d
    rst $20                                       ; $4001: $e7
    or a                                          ; $4002: $b7
    inc h                                         ; $4003: $24
    ld [hl], a                                    ; $4004: $77
    and $c8                                       ; $4005: $e6 $c8
    add $27                                       ; $4007: $c6 $27
    ld [c], a                                     ; $4009: $e2
    inc de                                        ; $400a: $13
    pop de                                        ; $400b: $d1
    db $20, $c4                                   ; $400c: $20 $c4
    ld l, $1e                                     ; $400e: $2e $1e
    ld b, c                                       ; $4010: $41
    xor a                                         ; $4011: $af
    jp nz, Jump_000_27ec                          ; $4012: $c2 $ec $27

    ld b, c                                       ; $4015: $41
    ld a, c                                       ; $4016: $79
    dec bc                                        ; $4017: $0b
    ld de, $398e                                  ; $4018: $11 $8e $39
    or d                                          ; $401b: $b2
    ld [hl], d                                    ; $401c: $72
    call c, $a994                                 ; $401d: $dc $94 $a9
    call nc, $8690                                ; $4020: $d4 $90 $86
    ccf                                           ; $4023: $3f
    or [hl]                                       ; $4024: $b6
    ld a, $fd                                     ; $4025: $3e $fd
    ld d, h                                       ; $4027: $54
    jp Jump_06d_71c9                              ; $4028: $c3 $c9 $71


    or h                                          ; $402b: $b4
    ld hl, $450c                                  ; $402c: $21 $0c $45
    rst $18                                       ; $402f: $df
    or l                                          ; $4030: $b5
    daa                                           ; $4031: $27
    sbc $b5                                       ; $4032: $de $b5
    daa                                           ; $4034: $27
    sbc $b5                                       ; $4035: $de $b5
    dec h                                         ; $4037: $25
    ld e, d                                       ; $4038: $5a
    ld sp, hl                                     ; $4039: $f9
    ld e, $5b                                     ; $403a: $1e $5b
    ret c                                         ; $403c: $d8

    ld a, d                                       ; $403d: $7a
    adc l                                         ; $403e: $8d
    push af                                       ; $403f: $f5
    ld h, a                                       ; $4040: $67
    sbc l                                         ; $4041: $9d
    xor $4f                                       ; $4042: $ee $4f
    db $ec                                        ; $4044: $ec
    ld c, a                                       ; $4045: $4f
    db $ec                                        ; $4046: $ec
    db $eb                                        ; $4047: $eb
    ld l, a                                       ; $4048: $6f
    ld d, e                                       ; $4049: $53
    sub [hl]                                      ; $404a: $96
    xor c                                         ; $404b: $a9
    ld d, e                                       ; $404c: $53
    and $68                                       ; $404d: $e6 $68
    inc a                                         ; $404f: $3c

jr_06d_4050:
    pop bc                                        ; $4050: $c1
    cp b                                          ; $4051: $b8
    ld a, [de]                                    ; $4052: $1a
    jp nz, $f450                                  ; $4053: $c2 $50 $f4

    ld a, [de]                                    ; $4056: $1a
    inc a                                         ; $4057: $3c
    inc e                                         ; $4058: $1c
    ld a, e                                       ; $4059: $7b
    ld a, l                                       ; $405a: $7d
    ld h, l                                       ; $405b: $65
    ret                                           ; $405c: $c9


    db $ed                                        ; $405d: $ed
    nop                                           ; $405e: $00
    sub a                                         ; $405f: $97
    inc bc                                        ; $4060: $03
    ld l, c                                       ; $4061: $69
    sub l                                         ; $4062: $95
    ld a, [de]                                    ; $4063: $1a
    add e                                         ; $4064: $83
    or a                                          ; $4065: $b7
    inc bc                                        ; $4066: $03
    rst $20                                       ; $4067: $e7
    sub l                                         ; $4068: $95
    db $e3                                        ; $4069: $e3
    and [hl]                                      ; $406a: $a6
    call nc, $dc18                                ; $406b: $d4 $18 $dc
    sub l                                         ; $406e: $95
    db $fd                                        ; $406f: $fd
    ld [hl], h                                    ; $4070: $74
    xor d                                         ; $4071: $aa
    ld c, h                                       ; $4072: $4c
    dec c                                         ; $4073: $0d
    db $ed                                        ; $4074: $ed
    adc c                                         ; $4075: $89
    ret nc                                        ; $4076: $d0

    sbc [hl]                                      ; $4077: $9e
    ld [$be6d], sp                                ; $4078: $08 $6d $be
    ld h, a                                       ; $407b: $67
    inc e                                         ; $407c: $1c
    ld b, c                                       ; $407d: $41
    xor a                                         ; $407e: $af
    jp nz, $a7ec                                  ; $407f: $c2 $ec $a7

    scf                                           ; $4082: $37
    ld c, $37                                     ; $4083: $0e $37
    ld a, [c]                                     ; $4085: $f2
    ld [de], a                                    ; $4086: $12
    add hl, bc                                    ; $4087: $09
    adc d                                         ; $4088: $8a
    jr z, jr_06d_4050                             ; $4089: $28 $c5

    bit 6, l                                      ; $408b: $cb $75
    db $db                                        ; $408d: $db
    or [hl]                                       ; $408e: $b6
    inc bc                                        ; $408f: $03
    rst $10                                       ; $4090: $d7
    cp b                                          ; $4091: $b8
    adc e                                         ; $4092: $8b
    rst $00                                       ; $4093: $c7
    ld a, [$e27f]                                 ; $4094: $fa $7f $e2
    rst $38                                       ; $4097: $ff
    call nz, $f67f                                ; $4098: $c4 $7f $f6
    ld [$9deb], sp                                ; $409b: $08 $eb $9d
    push hl                                       ; $409e: $e5
    ld c, [hl]                                    ; $409f: $4e
    ld b, c                                       ; $40a0: $41
    xor a                                         ; $40a1: $af
    jp nz, $a7ec                                  ; $40a2: $c2 $ec $a7

    db $ed                                        ; $40a5: $ed
    nop                                           ; $40a6: $00
    scf                                           ; $40a7: $37
    ld b, a                                       ; $40a8: $47
    sbc [hl]                                      ; $40a9: $9e
    ld [hl], l                                    ; $40aa: $75
    push hl                                       ; $40ab: $e5
    ld c, b                                       ; $40ac: $48
    or e                                          ; $40ad: $b3
    ld [hl], c                                    ; $40ae: $71
    ld hl, $9353                                  ; $40af: $21 $53 $93
    ld b, e                                       ; $40b2: $43
    push hl                                       ; $40b3: $e5
    ld c, $55                                     ; $40b4: $0e $55
    sub [hl]                                      ; $40b6: $96
    xor [hl]                                      ; $40b7: $ae
    ld c, b                                       ; $40b8: $48
    dec sp                                        ; $40b9: $3b
    ld l, $f5                                     ; $40ba: $2e $f5
    ld sp, hl                                     ; $40bc: $f9
    add [hl]                                      ; $40bd: $86
    sub e                                         ; $40be: $93
    db $e3                                        ; $40bf: $e3
    ld l, b                                       ; $40c0: $68
    ld d, c                                       ; $40c1: $51
    rst $00                                       ; $40c2: $c7
    inc a                                         ; $40c3: $3c
    jp c, $8610                                   ; $40c4: $da $10 $86

    ld l, d                                       ; $40c7: $6a
    ld b, d                                       ; $40c8: $42
    dec h                                         ; $40c9: $25
    inc d                                         ; $40ca: $14
    sub a                                         ; $40cb: $97
    ld c, $db                                     ; $40cc: $0e $db
    or [hl]                                       ; $40ce: $b6
    sub l                                         ; $40cf: $95
    push af                                       ; $40d0: $f5
    ret                                           ; $40d1: $c9


    sub b                                         ; $40d2: $90
    inc hl                                        ; $40d3: $23
    dec sp                                        ; $40d4: $3b
    cp l                                          ; $40d5: $bd
    inc e                                         ; $40d6: $1c
    ld de, $ac48                                  ; $40d7: $11 $48 $ac
    rra                                           ; $40da: $1f
    db $ed                                        ; $40db: $ed
    cp e                                          ; $40dc: $bb
    pop bc                                        ; $40dd: $c1
    halt                                          ; $40de: $76
    ld c, d                                       ; $40df: $4a
    dec sp                                        ; $40e0: $3b
    or h                                          ; $40e1: $b4
    sbc [hl]                                      ; $40e2: $9e
    ld a, l                                       ; $40e3: $7d
    ld a, [$a7e5]                                 ; $40e4: $fa $e5 $a7
    sbc a                                         ; $40e7: $9f
    ld d, $74                                     ; $40e8: $16 $74
    or h                                          ; $40ea: $b4
    daa                                           ; $40eb: $27
    call nz, $2ad1                                ; $40ec: $c4 $d1 $2a
    rst $30                                       ; $40ef: $f7
    ccf                                           ; $40f0: $3f
    ld c, [hl]                                    ; $40f1: $4e
    call z, Call_06d_6a5a                         ; $40f2: $cc $5a $6a
    call nz, $ae1f                                ; $40f5: $c4 $1f $ae
    daa                                           ; $40f8: $27
    ld h, h                                       ; $40f9: $64
    ld sp, $9fb2                                  ; $40fa: $31 $b2 $9f
    ld b, $12                                     ; $40fd: $06 $12
    or d                                          ; $40ff: $b2
    sbc a                                         ; $4100: $9f
    ld l, [hl]                                    ; $4101: $6e
    db $db                                        ; $4102: $db
    halt                                          ; $4103: $76
    nop                                           ; $4104: $00
    rst $10                                       ; $4105: $d7
    rst $00                                       ; $4106: $c7
    ld a, [hl+]                                   ; $4107: $2a
    jp nz, $ac7f                                  ; $4108: $c2 $7f $ac

    ld [$fe6d], sp                                ; $410b: $08 $6d $fe
    ld e, h                                       ; $410e: $5c
    sub c                                         ; $410f: $91
    dec d                                         ; $4110: $15
    jp nc, $0d15                                  ; $4111: $d2 $15 $0d

    sbc c                                         ; $4114: $99
    ld d, c                                       ; $4115: $51
    rst $08                                       ; $4116: $cf

jr_06d_4117:
    ld a, $df                                     ; $4117: $3e $df
    ld [hl], b                                    ; $4119: $70
    ld [hl], d                                    ; $411a: $72
    inc e                                         ; $411b: $1c
    dec l                                         ; $411c: $2d
    ld [$4798], a                                 ; $411d: $ea $98 $47
    dec de                                        ; $4120: $1b
    ld c, b                                       ; $4121: $48
    db $ec                                        ; $4122: $ec
    ld a, a                                       ; $4123: $7f
    db $e4                                        ; $4124: $e4
    ld e, c                                       ; $4125: $59
    ld hl, $4421                                  ; $4126: $21 $21 $44
    dec a                                         ; $4129: $3d
    ld l, e                                       ; $412a: $6b
    sub h                                         ; $412b: $94
    inc d                                         ; $412c: $14
    jp nc, $c21a                                  ; $412d: $d2 $1a $c2

    ld d, b                                       ; $4130: $50
    ld c, l                                       ; $4131: $4d
    xor b                                         ; $4132: $a8
    add h                                         ; $4133: $84
    and d                                         ; $4134: $a2

jr_06d_4135:
    pop hl                                        ; $4135: $e1
    ld e, b                                       ; $4136: $58
    inc hl                                        ; $4137: $23
    xor l                                         ; $4138: $ad
    dec hl                                        ; $4139: $2b
    ld b, a                                       ; $413a: $47
    sbc d                                         ; $413b: $9a
    adc l                                         ; $413c: $8d
    dec bc                                        ; $413d: $0b
    sub a                                         ; $413e: $97
    sbc a                                         ; $413f: $9f
    cp d                                          ; $4140: $ba
    sub l                                         ; $4141: $95
    push bc                                       ; $4142: $c5
    jr z, jr_06d_4117                             ; $4143: $28 $d2

    ld c, $41                                     ; $4145: $0e $41
    xor a                                         ; $4147: $af
    ld c, a                                       ; $4148: $4f

jr_06d_4149:
    adc h                                         ; $4149: $8c
    or h                                          ; $414a: $b4
    ld c, e                                       ; $414b: $4b
    rlca                                          ; $414c: $07
    rst $08                                       ; $414d: $cf
    scf                                           ; $414e: $37
    sbc h                                         ; $414f: $9c
    inc e                                         ; $4150: $1c
    ld b, a                                       ; $4151: $47
    adc e                                         ; $4152: $8b
    ld a, [hl-]                                   ; $4153: $3a
    and $d1                                       ; $4154: $e6 $d1
    add [hl]                                      ; $4156: $86
    jr nc, jr_06d_41ad                            ; $4157: $30 $54

    inc de                                        ; $4159: $13
    ld a, [hl+]                                   ; $415a: $2a
    and c                                         ; $415b: $a1
    ld l, b                                       ; $415c: $68
    jr c, jr_06d_4135                             ; $415d: $38 $d6

    ld c, b                                       ; $415f: $48
    dec hl                                        ; $4160: $2b
    ld b, d                                       ; $4161: $42
    jr jr_06d_4149                                ; $4162: $18 $e5

    ld a, [c]                                     ; $4164: $f2
    ld d, e                                       ; $4165: $53
    cp d                                          ; $4166: $ba
    ld a, [hl-]                                   ; $4167: $3a
    and [hl]                                      ; $4168: $a6
    ld c, d                                       ; $4169: $4a
    cp b                                          ; $416a: $b8
    ld [hl], b                                    ; $416b: $70
    inc b                                         ; $416c: $04
    cp l                                          ; $416d: $bd
    ld h, c                                       ; $416e: $61
    ld e, e                                       ; $416f: $5b
    xor a                                         ; $4170: $af
    ld c, a                                       ; $4171: $4f
    adc h                                         ; $4172: $8c
    or h                                          ; $4173: $b4
    ld c, e                                       ; $4174: $4b
    rlca                                          ; $4175: $07
    sub a                                         ; $4176: $97
    inc hl                                        ; $4177: $23
    di                                            ; $4178: $f3
    push bc                                       ; $4179: $c5
    rst $18                                       ; $417a: $df
    ld l, c                                       ; $417b: $69
    inc e                                         ; $417c: $1c
    ccf                                           ; $417d: $3f
    ld a, [hl+]                                   ; $417e: $2a
    xor b                                         ; $417f: $a8
    ld e, a                                       ; $4180: $5f
    daa                                           ; $4181: $27
    cp b                                          ; $4182: $b8
    adc $1e                                       ; $4183: $ce $1e
    call c, $8610                                 ; $4185: $dc $10 $86
    ld c, [hl]                                    ; $4188: $4e
    xor a                                         ; $4189: $af
    jp nz, $a7ec                                  ; $418a: $c2 $ec $a7

    xor l                                         ; $418d: $ad
    rst $20                                       ; $418e: $e7
    db $fd                                        ; $418f: $fd
    adc a                                         ; $4190: $8f
    inc a                                         ; $4191: $3c
    db $eb                                        ; $4192: $eb
    ld d, l                                       ; $4193: $55
    sbc b                                         ; $4194: $98
    db $fd                                        ; $4195: $fd
    inc h                                         ; $4196: $24
    xor b                                         ; $4197: $a8
    ld e, a                                       ; $4198: $5f
    daa                                           ; $4199: $27
    inc d                                         ; $419a: $14
    sbc [hl]                                      ; $419b: $9e
    ld c, c                                       ; $419c: $49
    dec de                                        ; $419d: $1b
    jp nz, $e7d0                                  ; $419e: $c2 $d0 $e7

    dec de                                        ; $41a1: $1b
    ld c, [hl]                                    ; $41a2: $4e
    adc [hl]                                      ; $41a3: $8e
    and e                                         ; $41a4: $a3
    push af                                       ; $41a5: $f5
    xor h                                         ; $41a6: $ac
    ld h, $54                                     ; $41a7: $26 $54
    ld b, d                                       ; $41a9: $42
    ld hl, $3868                                  ; $41aa: $21 $68 $38

jr_06d_41ad:
    sub $48                                       ; $41ad: $d6 $48
    db $eb                                        ; $41af: $eb
    jp z, Jump_06d_6691                           ; $41b0: $ca $91 $66

    db $e3                                        ; $41b3: $e3
    jp nz, $a7e5                                  ; $41b4: $c2 $e5 $a7

    ld l, [hl]                                    ; $41b7: $6e
    ld h, l                                       ; $41b8: $65
    ld sp, $b48a                                  ; $41b9: $31 $8a $b4
    ld h, e                                       ; $41bc: $63
    dec sp                                        ; $41bd: $3b
    nop                                           ; $41be: $00
    scf                                           ; $41bf: $37
    ld b, a                                       ; $41c0: $47
    sbc [hl]                                      ; $41c1: $9e
    dec [hl]                                      ; $41c2: $35
    add h                                         ; $41c3: $84
    ld d, c                                       ; $41c4: $51
    or d                                          ; $41c5: $b2
    adc [hl]                                      ; $41c6: $8e
    ld l, e                                       ; $41c7: $6b
    ld [$3987], a                                 ; $41c8: $ea $87 $39

jr_06d_41cb:
    ld d, d                                       ; $41cb: $52
    ret nc                                        ; $41cc: $d0

    xor e                                         ; $41cd: $ab
    jr nc, jr_06d_41cb                            ; $41ce: $30 $fb

    ld l, c                                       ; $41d0: $69
    dec sp                                        ; $41d1: $3b
    nop                                           ; $41d2: $00
    rst $20                                       ; $41d3: $e7
    ld a, [de]                                    ; $41d4: $1a
    add e                                         ; $41d5: $83
    dec de                                        ; $41d6: $1b
    sub e                                         ; $41d7: $93
    sbc a                                         ; $41d8: $9f
    ld a, [bc]                                    ; $41d9: $0a
    jp hl                                         ; $41da: $e9


    inc b                                         ; $41db: $04
    cp l                                          ; $41dc: $bd
    ld a, [bc]                                    ; $41dd: $0a
    or e                                          ; $41de: $b3
    sbc a                                         ; $41df: $9f
    sbc $38                                       ; $41e0: $de $38
    nop                                           ; $41e2: $00
    sub a                                         ; $41e3: $97
    dec de                                        ; $41e4: $1b
    ld a, [de]                                    ; $41e5: $1a
    ld c, [hl]                                    ; $41e6: $4e
    xor b                                         ; $41e7: $a8
    ld l, b                                       ; $41e8: $68
    ld d, [hl]                                    ; $41e9: $56
    adc l                                         ; $41ea: $8d
    ld l, [hl]                                    ; $41eb: $6e
    cp $cb                                        ; $41ec: $fe $cb
    db $e3                                        ; $41ee: $e3
    jp nc, $3701                                  ; $41ef: $d2 $01 $37

    ld b, a                                       ; $41f2: $47
    sbc [hl]                                      ; $41f3: $9e
    dec [hl]                                      ; $41f4: $35
    rst $38                                       ; $41f5: $ff
    ld c, [hl]                                    ; $41f6: $4e
    xor c                                         ; $41f7: $a9
    ld sp, $cab8                                  ; $41f8: $31 $b8 $ca
    ld a, [hl+]                                   ; $41fb: $2a
    ld [hl], e                                    ; $41fc: $73
    ld e, h                                       ; $41fd: $5c
    reti                                          ; $41fe: $d9


    ld c, a                                       ; $41ff: $4f
    add l                                         ; $4200: $85
    ld [hl], h                                    ; $4201: $74
    add d                                         ; $4202: $82
    ld e, [hl]                                    ; $4203: $5e
    add l                                         ; $4204: $85
    reti                                          ; $4205: $d9


    ld c, a                                       ; $4206: $4f
    ld l, a                                       ; $4207: $6f
    inc e                                         ; $4208: $1c
    scf                                           ; $4209: $37
    sub [hl]                                      ; $420a: $96
    inc de                                        ; $420b: $13
    ld d, h                                       ; $420c: $54
    di                                            ; $420d: $f3
    ld [de], a                                    ; $420e: $12
    ld [hl], l                                    ; $420f: $75
    db $db                                        ; $4210: $db
    or [hl]                                       ; $4211: $b6
    ld l, d                                       ; $4212: $6a
    ld e, [hl]                                    ; $4213: $5e
    and d                                         ; $4214: $a2
    xor l                                         ; $4215: $ad
    rst $10                                       ; $4216: $d7
    sub a                                         ; $4217: $97
    add hl, de                                    ; $4218: $19
    ld l, $a2                                     ; $4219: $2e $a2
    sub b                                         ; $421b: $90
    db $10                                        ; $421c: $10
    and d                                         ; $421d: $a2
    sbc [hl]                                      ; $421e: $9e
    db $dd                                        ; $421f: $dd
    sub c                                         ; $4220: $91
    cpl                                           ; $4221: $2f
    jp nz, Jump_06d_5c9a                          ; $4222: $c2 $9a $5c

    ld b, l                                       ; $4225: $45
    ld e, h                                       ; $4226: $5c
    ld [hl], c                                    ; $4227: $71
    ld e, l                                       ; $4228: $5d
    sbc h                                         ; $4229: $9c
    jp nc, Jump_000_2dd5                          ; $422a: $d2 $d5 $2d

    ld d, a                                       ; $422d: $57
    sub $b1                                       ; $422e: $d6 $b1
    sbc [hl]                                      ; $4230: $9e
    db $eb                                        ; $4231: $eb
    sub $a4                                       ; $4232: $d6 $a4
    ld a, [$8e61]                                 ; $4234: $fa $61 $8e
    call c, $d70e                                 ; $4237: $dc $0e $d7
    sub a                                         ; $423a: $97
    add hl, de                                    ; $423b: $19
    ld l, $a2                                     ; $423c: $2e $a2
    sbc [hl]                                      ; $423e: $9e
    db $eb                                        ; $423f: $eb
    ld d, $1a                                     ; $4240: $16 $1a
    rst $00                                       ; $4242: $c7
    ld c, a                                       ; $4243: $4f
    ld e, l                                       ; $4244: $5d
    jp z, $ea7e                                   ; $4245: $ca $7e $ea

    add a                                         ; $4248: $87
    add hl, sp                                    ; $4249: $39
    ld [hl], d                                    ; $424a: $72
    db $eb                                        ; $424b: $eb
    dec [hl]                                      ; $424c: $35
    ld l, b                                       ; $424d: $68
    sub a                                         ; $424e: $97
    ld [$b1d4], a                                 ; $424f: $ea $d4 $b1
    ld hl, $928c                                  ; $4252: $21 $8c $92
    ld c, l                                       ; $4255: $4d
    ld c, $0d                                     ; $4256: $0e $0d
    dec c                                         ; $4258: $0d
    daa                                           ; $4259: $27
    ld l, h                                       ; $425a: $6c
    cp l                                          ; $425b: $bd
    add hl, sp                                    ; $425c: $39
    ld a, [c]                                     ; $425d: $f2
    xor h                                         ; $425e: $ac
    sbc [hl]                                      ; $425f: $9e
    ld a, a                                       ; $4260: $7f
    jp c, Jump_06d_4342                           ; $4261: $da $42 $43

    dec de                                        ; $4264: $1b
    sbc c                                         ; $4265: $99
    inc c                                         ; $4266: $0c
    sub $69                                       ; $4267: $d6 $69
    ld l, b                                       ; $4269: $68
    inc hl                                        ; $426a: $23
    and d                                         ; $426b: $a2
    ld [$3f58], a                                 ; $426c: $ea $58 $3f
    ld c, c                                       ; $426f: $49
    res 1, h                                      ; $4270: $cb $8c
    ld a, e                                       ; $4272: $7b
    di                                            ; $4273: $f3
    inc [hl]                                      ; $4274: $34
    jp nc, $9724                                  ; $4275: $d2 $24 $97

    ld c, l                                       ; $4278: $4d
    sub c                                         ; $4279: $91
    dec a                                         ; $427a: $3d
    ld l, h                                       ; $427b: $6c
    db $eb                                        ; $427c: $eb
    ld sp, hl                                     ; $427d: $f9
    adc $5e                                       ; $427e: $ce $5e
    add sp, -$6c                                  ; $4280: $e8 $94
    ld a, [de]                                    ; $4282: $1a
    ld d, d                                       ; $4283: $52
    ld l, $ec                                     ; $4284: $2e $ec
    ld c, e                                       ; $4286: $4b
    inc hl                                        ; $4287: $23
    sbc d                                         ; $4288: $9a
    xor c                                         ; $4289: $a9
    sub c                                         ; $428a: $91
    add l                                         ; $428b: $85
    ld l, d                                       ; $428c: $6a
    jp z, Jump_000_1a71                           ; $428d: $ca $71 $1a

    adc [hl]                                      ; $4290: $8e
    dec d                                         ; $4291: $15
    add c                                         ; $4292: $81
    or h                                          ; $4293: $b4
    or [hl]                                       ; $4294: $b6
    inc bc                                        ; $4295: $03
    scf                                           ; $4296: $37
    ld b, a                                       ; $4297: $47
    sbc [hl]                                      ; $4298: $9e
    push de                                       ; $4299: $d5
    di                                            ; $429a: $f3
    ld c, a                                       ; $429b: $4f
    ld e, e                                       ; $429c: $5b
    ld l, b                                       ; $429d: $68
    ld l, b                                       ; $429e: $68
    inc hl                                        ; $429f: $23
    sub e                                         ; $42a0: $93
    pop bc                                        ; $42a1: $c1
    ld a, [hl-]                                   ; $42a2: $3a
    dec c                                         ; $42a3: $0d
    ld l, l                                       ; $42a4: $6d
    ld b, h                                       ; $42a5: $44
    ld d, h                                       ; $42a6: $54
    dec e                                         ; $42a7: $1d
    db $eb                                        ; $42a8: $eb
    daa                                           ; $42a9: $27
    ld l, c                                       ; $42aa: $69
    sbc c                                         ; $42ab: $99
    ld [hl], c                                    ; $42ac: $71
    ld l, a                                       ; $42ad: $6f
    sbc [hl]                                      ; $42ae: $9e
    ld b, [hl]                                    ; $42af: $46
    sbc d                                         ; $42b0: $9a
    db $e4                                        ; $42b1: $e4
    or d                                          ; $42b2: $b2

Call_06d_42b3:
    add hl, hl                                    ; $42b3: $29
    or d                                          ; $42b4: $b2
    add a                                         ; $42b5: $87
    ld l, l                                       ; $42b6: $6d
    dec a                                         ; $42b7: $3d
    rst $18                                       ; $42b8: $df
    reti                                          ; $42b9: $d9


    dec bc                                        ; $42ba: $0b
    sbc l                                         ; $42bb: $9d
    ld [hl-], a                                   ; $42bc: $32
    ld b, a                                       ; $42bd: $47
    ld h, [hl]                                    ; $42be: $66
    cp a                                          ; $42bf: $bf
    db $fc                                        ; $42c0: $fc
    sub h                                         ; $42c1: $94
    xor [hl]                                      ; $42c2: $ae
    and c                                         ; $42c3: $a1
    pop hl                                        ; $42c4: $e1
    inc b                                         ; $42c5: $04
    ld l, l                                       ; $42c6: $6d
    jr c, @+$58                                   ; $42c7: $38 $56

    inc b                                         ; $42c9: $04
    jp nc, $0eda                                  ; $42ca: $d2 $da $0e

    rst $20                                       ; $42cd: $e7
    xor c                                         ; $42ce: $a9
    ld [hl+], a                                   ; $42cf: $22
    ld h, e                                       ; $42d0: $63
    jr nz, @+$33                                  ; $42d1: $20 $31

    ld b, a                                       ; $42d3: $47
    xor [hl]                                      ; $42d4: $ae
    and d                                         ; $42d5: $a2
    ld d, h                                       ; $42d6: $54
    add hl, sp                                    ; $42d7: $39
    dec sp                                        ; $42d8: $3b
    ld [$1159], a                                 ; $42d9: $ea $59 $11

Jump_06d_42dc:
    ld d, a                                       ; $42dc: $57
    ld e, h                                       ; $42dd: $5c
    rla                                           ; $42de: $17
    ld b, a                                       ; $42df: $47
    dec de                                        ; $42e0: $1b
    ld c, b                                       ; $42e1: $48
    ret z                                         ; $42e2: $c8

    ld a, [hl]                                    ; $42e3: $7e
    ld c, d                                       ; $42e4: $4a
    ld b, e                                       ; $42e5: $43
    dec e                                         ; $42e6: $1d
    sub [hl]                                      ; $42e7: $96
    or $fb                                        ; $42e8: $f6 $fb
    ld sp, hl                                     ; $42ea: $f9
    db $d3                                        ; $42eb: $d3
    add hl, bc                                    ; $42ec: $09
    ld [$cda0], a                                 ; $42ed: $ea $a0 $cd
    add hl, hl                                    ; $42f0: $29
    ld c, e                                       ; $42f1: $4b
    inc d                                         ; $42f2: $14
    and c                                         ; $42f3: $a1
    ld sp, $ba7b                                  ; $42f4: $31 $7b $ba
    pop de                                        ; $42f7: $d1
    ld h, [hl]                                    ; $42f8: $66
    ld a, b                                       ; $42f9: $78
    ld d, h                                       ; $42fa: $54
    adc [hl]                                      ; $42fb: $8e
    sbc e                                         ; $42fc: $9b
    ld l, $d5                                     ; $42fd: $2e $d5
    reti                                          ; $42ff: $d9


    ld c, $d7                                     ; $4300: $0e $d7
    ld d, [hl]                                    ; $4302: $56
    ld d, $a3                                     ; $4303: $16 $a3
    xor $97                                       ; $4305: $ee $97
    push af                                       ; $4307: $f5
    db $eb                                        ; $4308: $eb
    halt                                          ; $4309: $76
    inc bc                                        ; $430a: $03
    adc c                                         ; $430b: $89
    ld h, l                                       ; $430c: $65
    ld l, d                                       ; $430d: $6a
    ld h, h                                       ; $430e: $64
    ld d, $4f                                     ; $430f: $16 $4f
    sub e                                         ; $4311: $93
    ld l, e                                       ; $4312: $6b
    call nz, Call_000_1cce                        ; $4313: $c4 $ce $1c
    and a                                         ; $4316: $a7
    add hl, de                                    ; $4317: $19
    ld sp, $f619                                  ; $4318: $31 $19 $f6
    add [hl]                                      ; $431b: $86
    jr nc, jr_06d_4372                            ; $431c: $30 $54

    call nz, $d715                                ; $431e: $c4 $15 $d7
    push bc                                       ; $4321: $c5
    ld d, c                                       ; $4322: $51
    ld b, c                                       ; $4323: $41
    dec e                                         ; $4324: $1d
    or h                                          ; $4325: $b4
    ld c, h                                       ; $4326: $4c
    call Call_06d_53bf                            ; $4327: $cd $bf $53
    ld c, b                                       ; $432a: $48
    pop af                                        ; $432b: $f1
    inc [hl]                                      ; $432c: $34
    sub b                                         ; $432d: $90
    ret c                                         ; $432e: $d8

    and l                                         ; $432f: $a5
    ld a, [hl-]                                   ; $4330: $3a
    db $fd                                        ; $4331: $fd
    rlca                                          ; $4332: $07
    rla                                           ; $4333: $17
    rst $18                                       ; $4334: $df
    daa                                           ; $4335: $27
    rrca                                          ; $4336: $0f
    xor e                                         ; $4337: $ab
    ld c, e                                       ; $4338: $4b
    dec hl                                        ; $4339: $2b
    ld c, [hl]                                    ; $433a: $4e
    inc sp                                        ; $433b: $33
    dec [hl]                                      ; $433c: $35
    and d                                         ; $433d: $a2
    ld c, b                                       ; $433e: $48
    dec sp                                        ; $433f: $3b
    or [hl]                                       ; $4340: $b6
    inc bc                                        ; $4341: $03

Jump_06d_4342:
    rst $20                                       ; $4342: $e7
    xor c                                         ; $4343: $a9
    ld a, a                                       ; $4344: $7f
    ld a, [hl]                                    ; $4345: $7e
    ccf                                           ; $4346: $3f
    dec c                                         ; $4347: $0d
    inc h                                         ; $4348: $24
    or $3f                                        ; $4349: $f6 $3f
    ld a, [c]                                     ; $434b: $f2
    xor h                                         ; $434c: $ac
    ld sp, hl                                     ; $434d: $f9
    ld [hl], a                                    ; $434e: $77
    sbc d                                         ; $434f: $9a
    ld [hl], h                                    ; $4350: $74
    ld d, d                                       ; $4351: $52
    and a                                         ; $4352: $a7
    ei                                            ; $4353: $fb
    ld a, [$34db]                                 ; $4354: $fa $db $34
    add h                                         ; $4357: $84
    and c                                         ; $4358: $a1
    ld b, [hl]                                    ; $4359: $46
    scf                                           ; $435a: $37
    ld a, a                                       ; $435b: $7f
    ld e, d                                       ; $435c: $5a
    pop de                                        ; $435d: $d1
    ret nc                                        ; $435e: $d0

    ld [hl], b                                    ; $435f: $70
    jp nz, $f3d6                                  ; $4360: $c2 $d6 $f3

    call nc, Call_06d_5c65                        ; $4363: $d4 $65 $5c
    dec [hl]                                      ; $4366: $35
    cp d                                          ; $4367: $ba
    ld sp, hl                                     ; $4368: $f9
    sbc a                                         ; $4369: $9f
    dec a                                         ; $436a: $3d
    or c                                          ; $436b: $b1
    and e                                         ; $436c: $a3
    ld hl, $fd0c                                  ; $436d: $21 $0c $fd
    adc a                                         ; $4370: $8f
    inc a                                         ; $4371: $3c

jr_06d_4372:
    db $db                                        ; $4372: $db
    ld c, $1f                                     ; $4373: $0e $1f
    db $fd                                        ; $4375: $fd
    adc $d6                                       ; $4376: $ce $d6
    di                                            ; $4378: $f3
    add [hl]                                      ; $4379: $86
    ld h, e                                       ; $437a: $63
    dec d                                         ; $437b: $15
    pop hl                                        ; $437c: $e1
    ccf                                           ; $437d: $3f
    sub $fc                                       ; $437e: $d6 $fc
    dec sp                                        ; $4380: $3b
    ld b, l                                       ; $4381: $45
    and e                                         ; $4382: $a3
    pop hl                                        ; $4383: $e1
    add h                                         ; $4384: $84
    jp z, $fd71                                   ; $4385: $ca $71 $fd

    adc a                                         ; $4388: $8f

jr_06d_4389:
    inc a                                         ; $4389: $3c
    ld l, e                                       ; $438a: $6b
    ld [$d143], sp                                ; $438b: $08 $43 $d1
    ld [hl], a                                    ; $438e: $77
    ld l, l                                       ; $438f: $6d
    adc c                                         ; $4390: $89
    ld d, [hl]                                    ; $4391: $56
    cp [hl]                                       ; $4392: $be
    rst $00                                       ; $4393: $c7
    ld d, $b6                                     ; $4394: $16 $b6
    inc bc                                        ; $4396: $03
    rst $28                                       ; $4397: $ef
    xor c                                         ; $4398: $a9
    ld c, [hl]                                    ; $4399: $4e
    dec e                                         ; $439a: $1d
    dec de                                        ; $439b: $1b
    jp nz, $d928                                  ; $439c: $c2 $28 $d9

    db $e4                                        ; $439f: $e4
    ret nc                                        ; $43a0: $d0

    sub b                                         ; $43a1: $90
    halt                                          ; $43a2: $76
    ld c, d                                       ; $43a3: $4a
    add hl, sp                                    ; $43a4: $39
    and d                                         ; $43a5: $a2
    add c                                         ; $43a6: $81
    call nz, $fe7a                                ; $43a7: $c4 $7a $fe
    ld e, c                                       ; $43aa: $59
    and l                                         ; $43ab: $a5
    ld d, l                                       ; $43ac: $55
    call nz, $d115                                ; $43ad: $c4 $15 $d1
    dec sp                                        ; $43b0: $3b
    sbc e                                         ; $43b1: $9b
    ld e, h                                       ; $43b2: $5c
    ld b, e                                       ; $43b3: $43
    dec de                                        ; $43b4: $1b
    ld de, $c755                                  ; $43b5: $11 $55 $c7
    or [hl]                                       ; $43b8: $b6
    inc bc                                        ; $43b9: $03
    sbc a                                         ; $43ba: $9f
    adc l                                         ; $43bb: $8d
    ld h, e                                       ; $43bc: $63
    sub e                                         ; $43bd: $93
    xor e                                         ; $43be: $ab
    db $10                                        ; $43bf: $10
    ld e, c                                       ; $43c0: $59
    inc a                                         ; $43c1: $3c
    push af                                       ; $43c2: $f5
    db $ec                                        ; $43c3: $ec
    sbc [hl]                                      ; $43c4: $9e
    or b                                          ; $43c5: $b0
    push af                                       ; $43c6: $f5
    and e                                         ; $43c7: $a3
    rst $18                                       ; $43c8: $df
    ld de, $1a94                                  ; $43c9: $11 $94 $1a
    jp nc, $6dd8                                  ; $43cc: $d2 $d8 $6d

    db $db                                        ; $43cf: $db
    ld c, d                                       ; $43d0: $4a
    ld d, l                                       ; $43d1: $55
    or $42                                        ; $43d2: $f6 $42
    and a                                         ; $43d4: $a7
    and c                                         ; $43d5: $a1
    adc l                                         ; $43d6: $8d
    and h                                         ; $43d7: $a4
    ld e, a                                       ; $43d8: $5f
    adc [hl]                                      ; $43d9: $8e
    add hl, sp                                    ; $43da: $39
    ld c, [hl]                                    ; $43db: $4e
    ld b, e                                       ; $43dc: $43
    jr jr_06d_4389                                ; $43dd: $18 $aa

    xor h                                         ; $43df: $ac
    pop de                                        ; $43e0: $d1
    call $d69f                                    ; $43e1: $cd $9f $d6
    ccf                                           ; $43e4: $3f
    call Call_000_09d2                            ; $43e5: $cd $d2 $09
    cp d                                          ; $43e8: $ba
    dec e                                         ; $43e9: $1d
    ld l, a                                       ; $43ea: $6f
    ld d, e                                       ; $43eb: $53
    ld h, l                                       ; $43ec: $65
    jp c, Jump_000_0a43                           ; $43ed: $da $43 $0a

    ld a, d                                       ; $43f0: $7a
    ld a, [de]                                    ; $43f1: $1a
    adc l                                         ; $43f2: $8d
    or b                                          ; $43f3: $b0
    add l                                         ; $43f4: $85
    ld a, d                                       ; $43f5: $7a
    ld [hl], $1c                                  ; $43f6: $36 $1c
    ld c, a                                       ; $43f8: $4f
    dec hl                                        ; $43f9: $2b
    cp [hl]                                       ; $43fa: $be
    ld c, a                                       ; $43fb: $4f
    ld e, $b6                                     ; $43fc: $1e $b6
    dec e                                         ; $43fe: $1d
    rra                                           ; $43ff: $1f
    db $fd                                        ; $4400: $fd
    ld c, [hl]                                    ; $4401: $4e
    ld b, l                                       ; $4402: $45
    cp b                                          ; $4403: $b8
    jr c, @+$5f                                   ; $4404: $38 $5d

    cp $c2                                        ; $4406: $fe $c2
    jp nz, Jump_000_0076                          ; $4408: $c2 $76 $00

    scf                                           ; $440b: $37
    ld b, a                                       ; $440c: $47
    sbc [hl]                                      ; $440d: $9e
    push af                                       ; $440e: $f5
    ei                                            ; $440f: $fb
    ldh [rDMA], a                                 ; $4410: $e0 $46
    and $38                                       ; $4412: $e6 $38
    xor c                                         ; $4414: $a9
    pop bc                                        ; $4415: $c1
    and a                                         ; $4416: $a7
    add h                                         ; $4417: $84
    or d                                          ; $4418: $b2
    ld a, [bc]                                    ; $4419: $0a
    pop hl                                        ; $441a: $e1
    rst $28                                       ; $441b: $ef
    cp h                                          ; $441c: $bc
    ld [hl], c                                    ; $441d: $71
    nop                                           ; $441e: $00
    rra                                           ; $441f: $1f
    db $fd                                        ; $4420: $fd
    adc $d6                                       ; $4421: $ce $d6
    rst $08                                       ; $4423: $cf
    or b                                          ; $4424: $b0
    rst $38                                       ; $4425: $ff
    ld a, c                                       ; $4426: $79
    cp e                                          ; $4427: $bb
    rst $38                                       ; $4428: $ff
    sub c                                         ; $4429: $91
    ld h, a                                       ; $442a: $67
    push af                                       ; $442b: $f5
    db $fc                                        ; $442c: $fc
    ld d, e                                       ; $442d: $53
    sub l                                         ; $442e: $95
    dec c                                         ; $442f: $0d
    ld l, l                                       ; $4430: $6d
    ld h, h                                       ; $4431: $64
    ld [hl-], a                                   ; $4432: $32
    ld e, b                                       ; $4433: $58
    rst $30                                       ; $4434: $f7
    ldh [$d2], a                                  ; $4435: $e0 $d2
    ld d, l                                       ; $4437: $55
    ld l, $87                                     ; $4438: $2e $87
    db $ed                                        ; $443a: $ed
    nop                                           ; $443b: $00
    scf                                           ; $443c: $37
    ld b, a                                       ; $443d: $47
    sbc [hl]                                      ; $443e: $9e
    dec [hl]                                      ; $443f: $35
    and h                                         ; $4440: $a4
    sbc l                                         ; $4441: $9d
    ld d, d                                       ; $4442: $52
    adc [hl]                                      ; $4443: $8e
    add sp, $3e                                   ; $4444: $e8 $3e
    and a                                         ; $4446: $a7
    ld l, c                                       ; $4447: $69
    ld [$dd43], sp                                ; $4448: $08 $43 $dd
    ld [hl], d                                    ; $444b: $72
    ld l, a                                       ; $444c: $6f
    db $f4                                        ; $444d: $f4
    inc a                                         ; $444e: $3c
    dec [hl]                                      ; $444f: $35
    rst $38                                       ; $4450: $ff
    ld c, [hl]                                    ; $4451: $4e
    sub l                                         ; $4452: $95
    xor e                                         ; $4453: $ab
    sbc c                                         ; $4454: $99
    xor [hl]                                      ; $4455: $ae
    ld [hl], d                                    ; $4456: $72
    call c, Call_000_2e34                         ; $4457: $dc $34 $2e
    add e                                         ; $445a: $83
    dec d                                         ; $445b: $15
    adc l                                         ; $445c: $8d
    ld [hl], b                                    ; $445d: $70
    ld hl, $d9ea                                  ; $445e: $21 $ea $d9
    db $e4                                        ; $4461: $e4
    ld a, [$de5f]                                 ; $4462: $fa $5f $de
    and [hl]                                      ; $4465: $a6
    sbc [hl]                                      ; $4466: $9e
    dec a                                         ; $4467: $3d
    ld [hl], c                                    ; $4468: $71
    cp a                                          ; $4469: $bf
    or b                                          ; $446a: $b0
    or b                                          ; $446b: $b0
    dec e                                         ; $446c: $1d
    rst $20                                       ; $446d: $e7
    ld [de], a                                    ; $446e: $12
    ld e, e                                       ; $446f: $5b
    ld l, a                                       ; $4470: $6f
    or b                                          ; $4471: $b0
    rst $38                                       ; $4472: $ff
    sub c                                         ; $4473: $91
    ld h, a                                       ; $4474: $67
    and l                                         ; $4475: $a5
    add $e0                                       ; $4476: $c6 $e0
    jp z, Jump_06d_4d71                           ; $4478: $ca $71 $4d

    ld c, $0d                                     ; $447b: $0e $0d
    dec c                                         ; $447d: $0d
    daa                                           ; $447e: $27
    ld [$5a2a], sp                                ; $447f: $08 $2a $5a
    add c                                         ; $4482: $81
    call nz, $93ee                                ; $4483: $c4 $ee $93
    ld c, a                                       ; $4486: $4f
    xor h                                         ; $4487: $ac
    ld h, a                                       ; $4488: $67
    db $dd                                        ; $4489: $dd
    ld [hl], d                                    ; $448a: $72
    sub a                                         ; $448b: $97
    ld c, $9f                                     ; $448c: $0e $9f
    ld h, c                                       ; $448e: $61
    rst $38                                       ; $448f: $ff
    di                                            ; $4490: $f3
    halt                                          ; $4491: $76
    sub l                                         ; $4492: $95
    db $fd                                        ; $4493: $fd
    adc a                                         ; $4494: $8f
    inc a                                         ; $4495: $3c
    dec hl                                        ; $4496: $2b

Call_06d_4497:
    ld d, l                                       ; $4497: $55
    ld h, h                                       ; $4498: $64
    inc a                                         ; $4499: $3c
    pop bc                                        ; $449a: $c1
    ld a, [hl+]                                   ; $449b: $2a
    rst $00                                       ; $449c: $c7
    ld d, l                                       ; $449d: $55
    inc [hl]                                      ; $449e: $34
    halt                                          ; $449f: $76
    ld de, $ea35                                  ; $44a0: $11 $35 $ea
    db $ec                                        ; $44a3: $ec
    ld a, a                                       ; $44a4: $7f
    ld l, h                                       ; $44a5: $6c
    rlca                                          ; $44a6: $07
    rst $20                                       ; $44a7: $e7
    xor c                                         ; $44a8: $a9
    and d                                         ; $44a9: $a2
    dec h                                         ; $44aa: $25
    and a                                         ; $44ab: $a7
    ei                                            ; $44ac: $fb
    db $e4                                        ; $44ad: $e4
    inc de                                        ; $44ae: $13
    db $eb                                        ; $44af: $eb
    reti                                          ; $44b0: $d9


    ret nc                                        ; $44b1: $d0

    ld [hl], b                                    ; $44b2: $70
    add d                                         ; $44b3: $82
    ld l, [hl]                                    ; $44b4: $6e
    rlca                                          ; $44b5: $07
    rra                                           ; $44b6: $1f
    db $fd                                        ; $44b7: $fd
    adc [hl]                                      ; $44b8: $8e
    and b                                         ; $44b9: $a0
    ld c, $5a                                     ; $44ba: $0e $5a
    and [hl]                                      ; $44bc: $a6
    ld [hl+], a                                   ; $44bd: $22
    inc e                                         ; $44be: $1c
    adc l                                         ; $44bf: $8d
    db $d3                                        ; $44c0: $d3
    ld b, b                                       ; $44c1: $40
    ld h, d                                       ; $44c2: $62
    ld a, c                                       ; $44c3: $79
    ld l, e                                       ; $44c4: $6b
    ld l, c                                       ; $44c5: $69
    ld h, h                                       ; $44c6: $64
    sub e                                         ; $44c7: $93
    db $eb                                        ; $44c8: $eb
    cp [hl]                                       ; $44c9: $be
    cp $36                                        ; $44ca: $fe $36
    and l                                         ; $44cc: $a5
    dec hl                                        ; $44cd: $2b
    or $53                                        ; $44ce: $f6 $53
    ld [hl], d                                    ; $44d0: $72
    db $dd                                        ; $44d1: $dd
    db $d3                                        ; $44d2: $d3
    add hl, bc                                    ; $44d3: $09
    ld d, [hl]                                    ; $44d4: $56
    ld c, a                                       ; $44d5: $4f
    ld d, l                                       ; $44d6: $55
    sub h                                         ; $44d7: $94
    ld a, [hl+]                                   ; $44d8: $2a
    ld h, a                                       ; $44d9: $67
    ld b, a                                       ; $44da: $47
    inc bc                                        ; $44db: $03
    adc c                                         ; $44dc: $89

jr_06d_44dd:
    dec c                                         ; $44dd: $0d
    rst $00                                       ; $44de: $c7
    or e                                          ; $44df: $b3
    ld hl, sp+$3e                                 ; $44e0: $f8 $3e
    ld sp, hl                                     ; $44e2: $f9
    ldh [$27], a                                  ; $44e3: $e0 $27
    or $d9                                        ; $44e5: $f6 $d9
    ld c, $37                                     ; $44e7: $0e $37
    ld b, a                                       ; $44e9: $47
    sbc [hl]                                      ; $44ea: $9e

jr_06d_44eb:
    sub l                                         ; $44eb: $95
    ld a, [de]                                    ; $44ec: $1a
    add e                                         ; $44ed: $83
    xor e                                         ; $44ee: $ab
    inc hl                                        ; $44ef: $23
    inc [hl]                                      ; $44f0: $34
    sub [hl]                                      ; $44f1: $96
    ld [hl+], a                                   ; $44f2: $22
    xor [hl]                                      ; $44f3: $ae
    jr c, jr_06d_44eb                             ; $44f4: $38 $f5

    ld l, h                                       ; $44f6: $6c
    ld [hl], d                                    ; $44f7: $72
    ld l, b                                       ; $44f8: $68
    ld l, b                                       ; $44f9: $68
    jr c, jr_06d_44dd                             ; $44fa: $38 $e1

    adc l                                         ; $44fc: $8d
    ld a, [hl]                                    ; $44fd: $7e
    sub d                                         ; $44fe: $92
    ret c                                         ; $44ff: $d8

    sbc l                                         ; $4500: $9d
    daa                                           ; $4501: $27
    db $ec                                        ; $4502: $ec
    sub a                                         ; $4503: $97
    ld a, d                                       ; $4504: $7a
    sbc [hl]                                      ; $4505: $9e
    ld a, [de]                                    ; $4506: $1a
    pop hl                                        ; $4507: $e1
    add h                                         ; $4508: $84
    rla                                           ; $4509: $17
    ld e, h                                       ; $450a: $5c
    ld c, a                                       ; $450b: $4f
    and e                                         ; $450c: $a3
    ld de, $50b6                                  ; $450d: $11 $b6 $50
    rst $08                                       ; $4510: $cf
    ld d, d                                       ; $4511: $52
    inc hl                                        ; $4512: $23
    db $ec                                        ; $4513: $ec
    jp nc, $e701                                  ; $4514: $d2 $01 $e7

    xor c                                         ; $4517: $a9
    ld e, b                                       ; $4518: $58
    reti                                          ; $4519: $d9


    and e                                         ; $451a: $a3
    ld sp, hl                                     ; $451b: $f9
    ld [hl], a                                    ; $451c: $77
    adc d                                         ; $451d: $8a
    ret nc                                        ; $451e: $d0

Jump_06d_451f:
    sbc b                                         ; $451f: $98
    db $fd                                        ; $4520: $fd
    ld [$9d52], a                                 ; $4521: $ea $52 $9d
    db $ed                                        ; $4524: $ed
    nop                                           ; $4525: $00
    rst $10                                       ; $4526: $d7
    sbc b                                         ; $4527: $98
    ld a, [de]                                    ; $4528: $1a
    rst $10                                       ; $4529: $d7
    db $f4                                        ; $452a: $f4
    adc e                                         ; $452b: $8b
    sub l                                         ; $452c: $95
    dec [hl]                                      ; $452d: $35
    ld c, [hl]                                    ; $452e: $4e
    xor [hl]                                      ; $452f: $ae
    ld l, b                                       ; $4530: $68
    ld d, [hl]                                    ; $4531: $56
    pop hl                                        ; $4532: $e1
    or b                                          ; $4533: $b0
    ei                                            ; $4534: $fb
    ld [hl], l                                    ; $4535: $75
    ld [hl], c                                    ; $4536: $71
    ldh [$a7], a                                  ; $4537: $e0 $a7
    ret                                           ; $4539: $c9


    and c                                         ; $453a: $a1
    ld a, a                                       ; $453b: $7f
    sbc $de                                       ; $453c: $de $de
    ld a, d                                       ; $453e: $7a
    cp [hl]                                       ; $453f: $be
    or e                                          ; $4540: $b3
    add hl, sp                                    ; $4541: $39
    ld h, l                                       ; $4542: $65
    adc c                                         ; $4543: $89
    jp z, $cac9                                   ; $4544: $ca $c9 $ca

    ld d, e                                       ; $4547: $53
    ld e, d                                       ; $4548: $5a
    xor c                                         ; $4549: $a9
    jp z, $ebee                                   ; $454a: $ca $ee $eb

    ld l, a                                       ; $454d: $6f
    or b                                          ; $454e: $b0
    ld a, d                                       ; $454f: $7a
    xor $d8                                       ; $4550: $ee $d8
    ld c, $e7                                     ; $4552: $0e $e7
    xor c                                         ; $4554: $a9
    ld sp, hl                                     ; $4555: $f9
    ld [hl], a                                    ; $4556: $77
    xor d                                         ; $4557: $aa
    ld e, h                                       ; $4558: $5c
    call $a8f0                                    ; $4559: $cd $f0 $a8
    adc [hl]                                      ; $455c: $8e
    ret nc                                        ; $455d: $d0

    ret c                                         ; $455e: $d8

    ret nc                                        ; $455f: $d0

    ld [hl], b                                    ; $4560: $70
    add d                                         ; $4561: $82
    ld l, [hl]                                    ; $4562: $6e
    rlca                                          ; $4563: $07
    rra                                           ; $4564: $1f
    scf                                           ; $4565: $37
    or h                                          ; $4566: $b4
    ld de, $7551                                  ; $4567: $11 $51 $75
    xor h                                         ; $456a: $ac
    sbc a                                         ; $456b: $9f
    and h                                         ; $456c: $a4
    ld h, l                                       ; $456d: $65
    add $bd                                       ; $456e: $c6 $bd
    sbc [hl]                                      ; $4570: $9e

Jump_06d_4571:
    ld a, a                                       ; $4571: $7f
    ld d, [hl]                                    ; $4572: $56
    ld hl, $6da4                                  ; $4573: $21 $a4 $6d
    rlca                                          ; $4576: $07
    scf                                           ; $4577: $37
    ld b, a                                       ; $4578: $47
    sbc [hl]                                      ; $4579: $9e
    sub l                                         ; $457a: $95
    push de                                       ; $457b: $d5
    add h                                         ; $457c: $84
    add [hl]                                      ; $457d: $86
    add [hl]                                      ; $457e: $86
    inc de                                        ; $457f: $13
    ld a, [hl+]                                   ; $4580: $2a
    jp nz, $b845                                  ; $4581: $c2 $45 $b8

    ld c, [hl]                                    ; $4584: $4e
    ld b, l                                       ; $4585: $45
    ld hl, sp-$71                                 ; $4586: $f8 $8f
    push de                                       ; $4588: $d5
    or e                                          ; $4589: $b3
    and d                                         ; $458a: $a2
    dec h                                         ; $458b: $25
    ld h, c                                       ; $458c: $61
    db $dd                                        ; $458d: $dd
    daa                                           ; $458e: $27
    sbc a                                         ; $458f: $9f
    ld e, b                                       ; $4590: $58
    rst $08                                       ; $4591: $cf
    cp d                                          ; $4592: $ba
    push hl                                       ; $4593: $e5
    ld l, $1d                                     ; $4594: $2e $1d
    rst $20                                       ; $4596: $e7
    xor c                                         ; $4597: $a9
    ld sp, hl                                     ; $4598: $f9
    ld [hl], a                                    ; $4599: $77
    ld a, [hl+]                                   ; $459a: $2a
    daa                                           ; $459b: $27
    dec hl                                        ; $459c: $2b
    ld c, a                                       ; $459d: $4f
    ld l, c                                       ; $459e: $69
    reti                                          ; $459f: $d9


    ld b, d                                       ; $45a0: $42
    inc hl                                        ; $45a1: $23
    bit 3, e                                      ; $45a2: $cb $5b
    pop hl                                        ; $45a4: $e1
    cp [hl]                                       ; $45a5: $be
    inc h                                         ; $45a6: $24
    ld l, h                                       ; $45a7: $6c
    dec sp                                        ; $45a8: $3b
    nop                                           ; $45a9: $00
    rst $10                                       ; $45aa: $d7
    dec c                                         ; $45ab: $0d
    daa                                           ; $45ac: $27
    ld l, b                                       ; $45ad: $68
    jp Jump_06d_74f1                              ; $45ae: $c3 $f1 $74


    ld d, l                                       ; $45b1: $55
    ld e, d                                       ; $45b2: $5a
    adc l                                         ; $45b3: $8d
    ld l, [hl]                                    ; $45b4: $6e
    cp $cb                                        ; $45b5: $fe $cb
    ld b, e                                       ; $45b7: $43
    rst $18                                       ; $45b8: $df
    add sp, $55                                   ; $45b9: $e8 $55
    rst $20                                       ; $45bb: $e7
    ld e, h                                       ; $45bc: $5c
    or a                                          ; $45bd: $b7
    ld l, l                                       ; $45be: $6d
    db $eb                                        ; $45bf: $eb
    ld d, d                                       ; $45c0: $52
    sbc l                                         ; $45c1: $9d
    ld e, [hl]                                    ; $45c2: $5e
    ld l, b                                       ; $45c3: $68
    ld [hl], d                                    ; $45c4: $72
    ld l, b                                       ; $45c5: $68
    sbc [hl]                                      ; $45c6: $9e
    rst $38                                       ; $45c7: $ff
    ld a, [c]                                     ; $45c8: $f2
    ldh a, [$ec]                                  ; $45c9: $f0 $ec
    jp z, Jump_06d_4691                           ; $45cb: $ca $91 $46

    ld d, l                                       ; $45ce: $55
    db $e4                                        ; $45cf: $e4
    ret z                                         ; $45d0: $c8

    db $ed                                        ; $45d1: $ed
    nop                                           ; $45d2: $00
    rst $10                                       ; $45d3: $d7
    ld l, l                                       ; $45d4: $6d
    ld h, h                                       ; $45d5: $64
    ld [hl-], a                                   ; $45d6: $32
    ld [hl], $a3                                  ; $45d7: $36 $a3
    jp nz, $dc25                                  ; $45d9: $c2 $25 $dc

    rst $10                                       ; $45dc: $d7
    ld b, h                                       ; $45dd: $44
    ld c, d                                       ; $45de: $4a
    ld l, h                                       ; $45df: $6c
    dec a                                         ; $45e0: $3d
    rst $18                                       ; $45e1: $df
    xor c                                         ; $45e2: $a9
    adc l                                         ; $45e3: $8d
    ld [hl], h                                    ; $45e4: $74
    db $dd                                        ; $45e5: $dd
    rst $10                                       ; $45e6: $d7
    rst $18                                       ; $45e7: $df
    ld b, [hl]                                    ; $45e8: $46
    xor e                                         ; $45e9: $ab
    inc hl                                        ; $45ea: $23
    inc [hl]                                      ; $45eb: $34
    ld [hl], $26                                  ; $45ec: $36 $26
    ccf                                           ; $45ee: $3f
    dec c                                         ; $45ef: $0d
    rst $00                                       ; $45f0: $c7
    cp d                                          ; $45f1: $ba
    rlca                                          ; $45f2: $07
    ld l, a                                       ; $45f3: $6f
    rlca                                          ; $45f4: $07
    rst $10                                       ; $45f5: $d7
    rst $00                                       ; $45f6: $c7
    ld [bc], a                                    ; $45f7: $02
    adc c                                         ; $45f8: $89
    db $fd                                        ; $45f9: $fd
    adc a                                         ; $45fa: $8f
    inc a                                         ; $45fb: $3c
    ld l, e                                       ; $45fc: $6b
    cp $9d                                        ; $45fd: $fe $9d

jr_06d_45ff:
    and d                                         ; $45ff: $a2
    ld b, [hl]                                    ; $4600: $46
    scf                                           ; $4601: $37
    ld a, a                                       ; $4602: $7f
    ld d, [hl]                                    ; $4603: $56
    rst $20                                       ; $4604: $e7
    or $ca                                        ; $4605: $f6 $ca
    ld [c], a                                     ; $4607: $e2
    ld de, $3ff4                                  ; $4608: $11 $f4 $3f
    ld a, [c]                                     ; $460b: $f2
    xor h                                         ; $460c: $ac
    ld a, [bc]                                    ; $460d: $0a
    ld hl, $0d05                                  ; $460e: $21 $05 $0d
    ld h, c                                       ; $4611: $61

jr_06d_4612:
    ld l, b                                       ; $4612: $68
    ld l, b                                       ; $4613: $68
    adc b                                         ; $4614: $88
    ld c, e                                       ; $4615: $4b
    jp nz, Jump_000_38de                          ; $4616: $c2 $de $38

    nop                                           ; $4619: $00
    scf                                           ; $461a: $37
    ret c                                         ; $461b: $d8

    rst $38                                       ; $461c: $ff
    ret z                                         ; $461d: $c8

    or e                                          ; $461e: $b3
    and d                                         ; $461f: $a2
    db $eb                                        ; $4620: $eb
    sub h                                         ; $4621: $94
    rst $00                                       ; $4622: $c7
    ld h, b                                       ; $4623: $60
    add d                                         ; $4624: $82
    ld b, [hl]                                    ; $4625: $46
    db $ec                                        ; $4626: $ec
    ld a, a                                       ; $4627: $7f
    sbc $2e                                       ; $4628: $de $2e
    ld [hl], a                                    ; $462a: $77
    call nc, Call_000_1153                        ; $462b: $d4 $53 $11
    jp nz, Jump_000_1178                          ; $462e: $c2 $78 $11

    push de                                       ; $4631: $d5
    cp c                                          ; $4632: $b9
    cp l                                          ; $4633: $bd
    or d                                          ; $4634: $b2
    jr jr_06d_4612                                ; $4635: $18 $db

    ld bc, $98d7                                  ; $4637: $01 $d7 $98
    or h                                          ; $463a: $b4
    ld hl, $3696                                  ; $463b: $21 $96 $36
    and a                                         ; $463e: $a7
    inc l                                         ; $463f: $2c
    ld d, c                                       ; $4640: $51
    rst $00                                       ; $4641: $c7
    ld a, d                                       ; $4642: $7a
    xor [hl]                                      ; $4643: $ae
    ld e, e                                       ; $4644: $5b
    jr nc, jr_06d_45ff                            ; $4645: $30 $b8

    ld [hl-], a                                   ; $4647: $32
    adc e                                         ; $4648: $8b
    cp b                                          ; $4649: $b8
    ld [c], a                                     ; $464a: $e2
    cp d                                          ; $464b: $ba
    ld [$5e6b], sp                                ; $464c: $08 $6b $5e
    ld sp, hl                                     ; $464f: $f9
    sub h                                         ; $4650: $94
    ld l, $38                                     ; $4651: $2e $38
    ld b, c                                       ; $4653: $41
    jp Jump_000_2eb1                              ; $4654: $c3 $b1 $2e


    push de                                       ; $4657: $d5
    add hl, hl                                    ; $4658: $29
    ld d, e                                       ; $4659: $53
    di                                            ; $465a: $f3
    rst $28                                       ; $465b: $ef
    ld d, h                                       ; $465c: $54
    cp c                                          ; $465d: $b9
    sbc d                                         ; $465e: $9a
    pop hl                                        ; $465f: $e1
    ld d, c                                       ; $4660: $51
    call nc, $21a8                                ; $4661: $d4 $a8 $21
    ld d, a                                       ; $4664: $57
    sbc h                                         ; $4665: $9c
    db $ed                                        ; $4666: $ed
    nop                                           ; $4667: $00
    rra                                           ; $4668: $1f
    db $fd                                        ; $4669: $fd
    adc [hl]                                      ; $466a: $8e
    and b                                         ; $466b: $a0
    ld c, $5a                                     ; $466c: $0e $5a
    and [hl]                                      ; $466e: $a6
    sbc [hl]                                      ; $466f: $9e
    ld b, [hl]                                    ; $4670: $46
    inc hl                                        ; $4671: $23
    ld l, h                                       ; $4672: $6c
    and c                                         ; $4673: $a1
    sbc [hl]                                      ; $4674: $9e
    ld d, l                                       ; $4675: $55
    ld [$9569], sp                                ; $4676: $08 $69 $95
    db $e3                                        ; $4679: $e3
    and [hl]                                      ; $467a: $a6
    dec sp                                        ; $467b: $3b
    ld a, [c]                                     ; $467c: $f2
    ld b, l                                       ; $467d: $45
    ld e, b                                       ; $467e: $58
    sub e                                         ; $467f: $93
    jp $f7d6                                      ; $4680: $c3 $d6 $f7


    ld d, h                                       ; $4683: $54
    and a                                         ; $4684: $a7
    cp d                                          ; $4685: $ba
    ld e, h                                       ; $4686: $5c
    rla                                           ; $4687: $17
    xor d                                         ; $4688: $aa
    or h                                          ; $4689: $b4
    ld a, d                                       ; $468a: $7a
    ld a, [hl-]                                   ; $468b: $3a
    inc l                                         ; $468c: $2c
    cp l                                          ; $468d: $bd
    ld [hl], h                                    ; $468e: $74
    nop                                           ; $468f: $00
    rst $10                                       ; $4690: $d7

Jump_06d_4691:
    ld l, c                                       ; $4691: $69
    and a                                         ; $4692: $a7
    sub h                                         ; $4693: $94
    inc hl                                        ; $4694: $23
    adc e                                         ; $4695: $8b
    ld e, [hl]                                    ; $4696: $5e
    add e                                         ; $4697: $83
    add a                                         ; $4698: $87
    ld h, e                                       ; $4699: $63
    xor a                                         ; $469a: $af
    xor a                                         ; $469b: $af
    inc l                                         ; $469c: $2c
    ld e, c                                       ; $469d: $59
    adc a                                         ; $469e: $8f
    ld a, [bc]                                    ; $469f: $0a
    sub a                                         ; $46a0: $97
    ld [hl], b                                    ; $46a1: $70
    ld e, a                                       ; $46a2: $5f
    inc de                                        ; $46a3: $13
    add hl, hl                                    ; $46a4: $29
    or c                                          ; $46a5: $b1
    push af                                       ; $46a6: $f5
    ld a, h                                       ; $46a7: $7c
    ld b, a                                       ; $46a8: $47
    jp $2cf1                                      ; $46a9: $c3 $f1 $2c


    cp [hl]                                       ; $46ac: $be
    ld c, a                                       ; $46ad: $4f
    ld a, $f8                                     ; $46ae: $3e $f8
    adc c                                         ; $46b0: $89
    ld a, l                                       ; $46b1: $7d
    adc d                                         ; $46b2: $8a
    ld b, d                                       ; $46b3: $42
    adc d                                         ; $46b4: $8a
    ld h, c                                       ; $46b5: $61
    ld b, l                                       ; $46b6: $45
    adc l                                         ; $46b7: $8d
    ld a, [de]                                    ; $46b8: $1a
    adc [hl]                                      ; $46b9: $8e
    ld b, [hl]                                    ; $46ba: $46
    ld l, h                                       ; $46bb: $6c
    rlca                                          ; $46bc: $07
    rst $10                                       ; $46bd: $d7
    sbc b                                         ; $46be: $98
    or h                                          ; $46bf: $b4
    ld hl, $5696                                  ; $46c0: $21 $96 $56
    adc [hl]                                      ; $46c3: $8e
    add $e4                                       ; $46c4: $c6 $e4
    ldh a, [$87]                                  ; $46c6: $f0 $87
    xor e                                         ; $46c8: $ab
    ld e, a                                       ; $46c9: $5f
    or a                                          ; $46ca: $b7
    ld l, c                                       ; $46cb: $69
    dec c                                         ; $46cc: $0d
    inc h                                         ; $46cd: $24
    sub [hl]                                      ; $46ce: $96
    xor c                                         ; $46cf: $a9
    inc [hl]                                      ; $46d0: $34
    inc [hl]                                      ; $46d1: $34
    add hl, sp                                    ; $46d2: $39
    inc [hl]                                      ; $46d3: $34
    inc [hl]                                      ; $46d4: $34
    sbc h                                         ; $46d5: $9c
    or b                                          ; $46d6: $b0
    push af                                       ; $46d7: $f5
    ld a, h                                       ; $46d8: $7c
    and a                                         ; $46d9: $a7
    sub $b1                                       ; $46da: $d6 $b1
    ld b, [hl]                                    ; $46dc: $46
    scf                                           ; $46dd: $37
    ld a, a                                       ; $46de: $7f
    ld a, [de]                                    ; $46df: $1a
    ld e, h                                       ; $46e0: $5c
    dec e                                         ; $46e1: $1d
    db $eb                                        ; $46e2: $eb
    sub b                                         ; $46e3: $90
    dec a                                         ; $46e4: $3d
    or d                                          ; $46e5: $b2
    sbc a                                         ; $46e6: $9f
    add [hl]                                      ; $46e7: $86
    jr nc, @+$56                                  ; $46e8: $30 $54

    ld b, $6f                                     ; $46ea: $06 $6f
    rlca                                          ; $46ec: $07
    ld d, a                                       ; $46ed: $57
    add $4d                                       ; $46ee: $c6 $4d
    sbc c                                         ; $46f0: $99
    ld a, [de]                                    ; $46f1: $1a
    adc [hl]                                      ; $46f2: $8e
    and a                                         ; $46f3: $a7
    dec l                                         ; $46f4: $2d
    ld d, h                                       ; $46f5: $54
    ld hl, $09a4                                  ; $46f6: $21 $a4 $09
    jp z, $9d54                                   ; $46f9: $ca $54 $9d

    call nc, $8ae4                                ; $46fc: $d4 $e4 $8a
    dec a                                         ; $46ff: $3d
    push hl                                       ; $4700: $e5
    xor c                                         ; $4701: $a9
    sbc a                                         ; $4702: $9f
    add [hl]                                      ; $4703: $86
    or [hl]                                       ; $4704: $b6
    inc e                                         ; $4705: $1c
    sub a                                         ; $4706: $97
    ld c, l                                       ; $4707: $4d
    sub c                                         ; $4708: $91
    and a                                         ; $4709: $a7
    ld [hl], d                                    ; $470a: $72
    call c, Call_000_3ff4                         ; $470b: $dc $f4 $3f
    ld a, [c]                                     ; $470e: $f2
    ld l, h                                       ; $470f: $6c
    dec sp                                        ; $4710: $3b
    nop                                           ; $4711: $00
    rst $10                                       ; $4712: $d7
    ld l, l                                       ; $4713: $6d
    cp $f8                                        ; $4714: $fe $f8
    ld [hl], e                                    ; $4716: $73
    ld [hl], a                                    ; $4717: $77
    call z, $fd91                                 ; $4718: $cc $91 $fd
    adc a                                         ; $471b: $8f
    inc a                                         ; $471c: $3c
    db $eb                                        ; $471d: $eb
    rra                                           ; $471e: $1f
    xor e                                         ; $471f: $ab
    and c                                         ; $4720: $a1
    ld d, c                                       ; $4721: $51
    ld l, $85                                     ; $4722: $2e $85
    ld d, l                                       ; $4724: $55
    add h                                         ; $4725: $84
    db $db                                        ; $4726: $db
    or h                                          ; $4727: $b4
    ld h, $87                                     ; $4728: $26 $87
    ld a, [bc]                                    ; $472a: $0a
    cp c                                          ; $472b: $b9
    and e                                         ; $472c: $a3
    ld hl, $9035                                  ; $472d: $21 $35 $90
    sub [hl]                                      ; $4730: $96
    and d                                         ; $4731: $a2

Call_06d_4732:
    ld hl, $f50c                                  ; $4732: $21 $0c $f5
    ld d, h                                       ; $4735: $54
    add hl, sp                                    ; $4736: $39
    ld b, d                                       ; $4737: $42
    ld e, e                                       ; $4738: $5b
    ld d, [hl]                                    ; $4739: $56
    add hl, sp                                    ; $473a: $39
    ld l, [hl]                                    ; $473b: $6e
    ld a, [hl+]                                   ; $473c: $2a
    jp nz, $5a6d                                  ; $473d: $c2 $6d $5a

    sub a                                         ; $4740: $97
    ld [$076c], a                                 ; $4741: $ea $6c $07
    ld l, a                                       ; $4744: $6f
    ld d, e                                       ; $4745: $53
    ld h, l                                       ; $4746: $65
    jp c, Jump_000_0a43                           ; $4747: $da $43 $0a

    jp z, $ac54                                   ; $474a: $ca $54 $ac

    db $ec                                        ; $474d: $ec
    pop de                                        ; $474e: $d1
    db $fc                                        ; $474f: $fc
    dec sp                                        ; $4750: $3b
    sub l                                         ; $4751: $95
    ld h, d                                       ; $4752: $62
    sbc [hl]                                      ; $4753: $9e
    ld [de], a                                    ; $4754: $12
    ld d, a                                       ; $4755: $57
    inc sp                                        ; $4756: $33
    ld d, l                                       ; $4757: $55
    ld e, c                                       ; $4758: $59
    adc c                                         ; $4759: $89
    ldh a, [$ee]                                  ; $475a: $f0 $ee
    sbc b                                         ; $475c: $98
    or $d9                                        ; $475d: $f6 $d9
    ld c, $1f                                     ; $475f: $0e $1f
    scf                                           ; $4761: $37
    sub b                                         ; $4762: $90
    ret c                                         ; $4763: $d8

    rst $38                                       ; $4764: $ff
    ret z                                         ; $4765: $c8

    or e                                          ; $4766: $b3
    ld b, [hl]                                    ; $4767: $46
    cp d                                          ; $4768: $ba
    ld [c], a                                     ; $4769: $e2
    ld l, [hl]                                    ; $476a: $6e
    ld b, c                                       ; $476b: $41
    ccf                                           ; $476c: $3f
    ld [c], a                                     ; $476d: $e2
    ld a, a                                       ; $476e: $7f
    db $ed                                        ; $476f: $ed
    dec sp                                        ; $4770: $3b
    rst $18                                       ; $4771: $df
    jr c, jr_06d_4774                             ; $4772: $38 $00

jr_06d_4774:
    xor a                                         ; $4774: $af
    scf                                           ; $4775: $37
    cp c                                          ; $4776: $b9
    ld a, [hl]                                    ; $4777: $7e
    ld c, b                                       ; $4778: $48
    daa                                           ; $4779: $27
    or h                                          ; $477a: $b4
    reti                                          ; $477b: $d9


    or a                                          ; $477c: $b7
    sbc $9c                                       ; $477d: $de $9c
    rst $38                                       ; $477f: $ff
    dec a                                         ; $4780: $3d
    ld [hl], l                                    ; $4781: $75
    xor h                                         ; $4782: $ac
    ld b, e                                       ; $4783: $43
    or $93                                        ; $4784: $f6 $93
    or [hl]                                       ; $4786: $b6
    sbc [hl]                                      ; $4787: $9e
    rst $28                                       ; $4788: $ef
    xor b                                         ; $4789: $a8
    ld b, d                                       ; $478a: $42
    ret z                                         ; $478b: $c8

jr_06d_478c:
    ld b, $12                                     ; $478c: $06 $12
    bit 2, h                                      ; $478e: $cb $54
    sbc l                                         ; $4790: $9d
    ld d, h                                       ; $4791: $54
    ld l, d                                       ; $4792: $6a
    jr nz, jr_06d_47e6                            ; $4793: $20 $51

    ld l, $3f                                     ; $4795: $2e $3f
    db $db                                        ; $4797: $db
    ld bc, $2397                                  ; $4798: $01 $97 $23
    di                                            ; $479b: $f3
    push bc                                       ; $479c: $c5
    rst $18                                       ; $479d: $df
    xor c                                         ; $479e: $a9
    call c, $caa1                                 ; $479f: $dc $a1 $ca
    ld c, e                                       ; $47a2: $4b
    cp l                                          ; $47a3: $bd
    ld [bc], a                                    ; $47a4: $02
    adc a                                         ; $47a5: $8f
    ld h, $57                                     ; $47a6: $26 $57
    ld c, h                                       ; $47a8: $4c
    ld [hl], a                                    ; $47a9: $77
    ld hl, sp-$57                                 ; $47aa: $f8 $a9
    ld h, a                                       ; $47ac: $67
    sub e                                         ; $47ad: $93
    ld b, e                                       ; $47ae: $43
    rst $38                                       ; $47af: $ff
    ld d, b                                       ; $47b0: $50
    sbc l                                         ; $47b1: $9d
    ld h, h                                       ; $47b2: $64
    cp b                                          ; $47b3: $b8
    ld [hl], h                                    ; $47b4: $74
    nop                                           ; $47b5: $00
    rst $20                                       ; $47b6: $e7
    ld a, [de]                                    ; $47b7: $1a
    ld d, a                                       ; $47b8: $57
    jr nz, jr_06d_478c                            ; $47b9: $20 $d1

    dec d                                         ; $47bb: $15
    ld [hl], l                                    ; $47bc: $75
    cp a                                          ; $47bd: $bf
    ld d, e                                       ; $47be: $53
    cp a                                          ; $47bf: $bf
    adc h                                         ; $47c0: $8c
    dec hl                                        ; $47c1: $2b
    and d                                         ; $47c2: $a2
    ld a, [hl-]                                   ; $47c3: $3a
    ld b, d                                       ; $47c4: $42
    ld h, e                                       ; $47c5: $63
    pop de                                        ; $47c6: $d1
    ccf                                           ; $47c7: $3f
    ld d, h                                       ; $47c8: $54
    daa                                           ; $47c9: $27
    add hl, de                                    ; $47ca: $19
    jp z, Jump_06d_75fa                           ; $47cb: $ca $fa $75

    add d                                         ; $47ce: $82
    db $eb                                        ; $47cf: $eb
    inc hl                                        ; $47d0: $23
    rst $20                                       ; $47d1: $e7
    xor [hl]                                      ; $47d2: $ae
    pop hl                                        ; $47d3: $e1
    add l                                         ; $47d4: $85
    ld c, e                                       ; $47d5: $4b
    adc a                                         ; $47d6: $8f
    inc e                                         ; $47d7: $1c
    rst $20                                       ; $47d8: $e7
    xor [hl]                                      ; $47d9: $ae
    pop hl                                        ; $47da: $e1
    add l                                         ; $47db: $85
    ld c, e                                       ; $47dc: $4b
    rlca                                          ; $47dd: $07
    rst $20                                       ; $47de: $e7
    xor [hl]                                      ; $47df: $ae
    pop hl                                        ; $47e0: $e1
    add l                                         ; $47e1: $85
    ld c, e                                       ; $47e2: $4b
    rlca                                          ; $47e3: $07
    rst $20                                       ; $47e4: $e7
    xor [hl]                                      ; $47e5: $ae

jr_06d_47e6:
    pop hl                                        ; $47e6: $e1
    add l                                         ; $47e7: $85
    ld c, e                                       ; $47e8: $4b
    rlca                                          ; $47e9: $07
    scf                                           ; $47ea: $37
    ld h, a                                       ; $47eb: $67
    adc a                                         ; $47ec: $8f
    inc d                                         ; $47ed: $14
    call nc, $af31                                ; $47ee: $d4 $31 $af
    inc a                                         ; $47f1: $3c
    sub a                                         ; $47f2: $97
    ld c, $97                                     ; $47f3: $0e $97
    rst $10                                       ; $47f5: $d7
    ld e, d                                       ; $47f6: $5a
    xor e                                         ; $47f7: $ab
    db $db                                        ; $47f8: $db
    or [hl]                                       ; $47f9: $b6
    dec e                                         ; $47fa: $1d
    rst $10                                       ; $47fb: $d7
    ld h, c                                       ; $47fc: $61
    sub h                                         ; $47fd: $94

Call_06d_47fe:
    ld l, h                                       ; $47fe: $6c
    ld [hl], d                                    ; $47ff: $72
    dec c                                         ; $4800: $0d
    db $d3                                        ; $4801: $d3
    xor [hl]                                      ; $4802: $ae
    db $d3                                        ; $4803: $d3
    ld b, b                                       ; $4804: $40
    and d                                         ; $4805: $a2
    ret nc                                        ; $4806: $d0

    ldh [$67], a                                  ; $4807: $e0 $67
    db $eb                                        ; $4809: $eb
    ld b, a                                       ; $480a: $47
    call z, $e4e2                                 ; $480b: $cc $e2 $e4
    ld [$ffd9], a                                 ; $480e: $ea $d9 $ff
    ret z                                         ; $4811: $c8

    inc sp                                        ; $4812: $33
    db $ed                                        ; $4813: $ed
    rra                                           ; $4814: $1f
    xor e                                         ; $4815: $ab
    jp z, $de3a                                   ; $4816: $ca $3a $de

    and d                                         ; $4819: $a2

Jump_06d_481a:
    sub l                                         ; $481a: $95
    add hl, sp                                    ; $481b: $39
    sub b                                         ; $481c: $90
    sub b                                         ; $481d: $90
    db $e3                                        ; $481e: $e3
    ld [hl], h                                    ; $481f: $74
    rst $20                                       ; $4820: $e7
    ld a, a                                       ; $4821: $7f
    ld c, d                                       ; $4822: $4a
    adc l                                         ; $4823: $8d
    xor h                                         ; $4824: $ac
    ld h, e                                       ; $4825: $63
    ld e, [hl]                                    ; $4826: $5e
    ld a, c                                       ; $4827: $79
    adc d                                         ; $4828: $8a
    xor c                                         ; $4829: $a9
    ld a, b                                       ; $482a: $78
    inc [hl]                                      ; $482b: $34
    ld e, h                                       ; $482c: $5c
    ld de, $76fb                                  ; $482d: $11 $fb $76
    nop                                           ; $4830: $00
    ld d, a                                       ; $4831: $57
    ld d, c                                       ; $4832: $51
    ld sp, $c62a                                  ; $4833: $31 $2a $c6
    and l                                         ; $4836: $a5
    sbc $1c                                       ; $4837: $de $1c
    ld a, c                                       ; $4839: $79
    and [hl]                                      ; $483a: $a6
    db $fd                                        ; $483b: $fd
    cpl                                           ; $483c: $2f
    add e                                         ; $483d: $83
    dec hl                                        ; $483e: $2b
    ld a, [hl+]                                   ; $483f: $2a
    ld h, c                                       ; $4840: $61
    xor b                                         ; $4841: $a8
    rst $20                                       ; $4842: $e7
    ld c, [hl]                                    ; $4843: $4e
    ld b, c                                       ; $4844: $41
    and a                                         ; $4845: $a7
    ld hl, $2432                                  ; $4846: $21 $32 $24
    ld l, $1d                                     ; $4849: $2e $1d
    ld d, a                                       ; $484b: $57
    or b                                          ; $484c: $b0

jr_06d_484d:
    and e                                         ; $484d: $a3
    xor b                                         ; $484e: $a8
    ld [hl], b                                    ; $484f: $70
    inc h                                         ; $4850: $24
    inc b                                         ; $4851: $04
    cp l                                          ; $4852: $bd
    add [hl]                                      ; $4853: $86
    ld e, l                                       ; $4854: $5d
    inc [hl]                                      ; $4855: $34
    ccf                                           ; $4856: $3f
    ld e, l                                       ; $4857: $5d
    ld a, [hl-]                                   ; $4858: $3a
    nop                                           ; $4859: $00
    rra                                           ; $485a: $1f
    scf                                           ; $485b: $37
    sub b                                         ; $485c: $90
    ret c                                         ; $485d: $d8

    dec bc                                        ; $485e: $0b
    ld e, l                                       ; $485f: $5d
    xor d                                         ; $4860: $aa
    di                                            ; $4861: $f3
    add $01                                       ; $4862: $c6 $01
    xor a                                         ; $4864: $af
    rla                                           ; $4865: $17
    add c                                         ; $4866: $81
    call nz, Call_000_0d1d                        ; $4867: $c4 $1d $0d
    rst $00                                       ; $486a: $c7
    inc h                                         ; $486b: $24
    ld l, h                                       ; $486c: $6c
    and c                                         ; $486d: $a1
    add c                                         ; $486e: $81
    call nz, $f8a2                                ; $486f: $c4 $a2 $f8
    rst $18                                       ; $4872: $df
    ld d, e                                       ; $4873: $53
    ccf                                           ; $4874: $3f
    db $fd                                        ; $4875: $fd
    adc b                                         ; $4876: $88
    rst $38                                       ; $4877: $ff
    or l                                          ; $4878: $b5
    rst $28                                       ; $4879: $ef
    xor h                                         ; $487a: $ac
    ld b, e                                       ; $487b: $43
    or $93                                        ; $487c: $f6 $93
    or [hl]                                       ; $487e: $b6
    inc bc                                        ; $487f: $03
    rst $20                                       ; $4880: $e7
    xor d                                         ; $4881: $aa
    db $ec                                        ; $4882: $ec
    add l                                         ; $4883: $85
    ld c, [hl]                                    ; $4884: $4e
    ccf                                           ; $4885: $3f
    and h                                         ; $4886: $a4
    inc de                                        ; $4887: $13
    jp c, $f5ec                                   ; $4888: $da $ec $f5

    db $d3                                        ; $488b: $d3
    adc a                                         ; $488c: $8f
    ld hl, sp+$5f                                 ; $488d: $f8 $5f
    ei                                            ; $488f: $fb
    adc $4b                                       ; $4890: $ce $4b
    cp l                                          ; $4892: $bd
    add $fa                                       ; $4893: $c6 $fa
    ldh [$2e], a                                  ; $4895: $e0 $2e
    push de                                       ; $4897: $d5
    add hl, hl                                    ; $4898: $29
    ld [bc], a                                    ; $4899: $02
    ld l, c                                       ; $489a: $69
    ld e, l                                       ; $489b: $5d
    ld a, [hl-]                                   ; $489c: $3a
    nop                                           ; $489d: $00
    scf                                           ; $489e: $37
    sbc c                                         ; $489f: $99
    push bc                                       ; $48a0: $c5
    xor b                                         ; $48a1: $a8
    jr nc, jr_06d_484d                            ; $48a2: $30 $a9

    add h                                         ; $48a4: $84
    add hl, bc                                    ; $48a5: $09
    ld a, d                                       ; $48a6: $7a
    ld a, l                                       ; $48a7: $7d
    ld h, d                                       ; $48a8: $62
    and h                                         ; $48a9: $a4
    ld e, l                                       ; $48aa: $5d
    ld a, [hl-]                                   ; $48ab: $3a
    nop                                           ; $48ac: $00
    rst $10                                       ; $48ad: $d7
    jp nc, Jump_06d_538a                          ; $48ae: $d2 $8a $53

    ld hl, $af5d                                  ; $48b1: $21 $5d $af
    jp nz, $a7ec                                  ; $48b4: $c2 $ec $a7

    ld c, e                                       ; $48b7: $4b
    rlca                                          ; $48b8: $07
    ld d, a                                       ; $48b9: $57
    ld h, c                                       ; $48ba: $61
    or $93                                        ; $48bb: $f6 $93
    and b                                         ; $48bd: $a0
    rst $38                                       ; $48be: $ff
    sub c                                         ; $48bf: $91
    ld h, a                                       ; $48c0: $67
    dec c                                         ; $48c1: $0d
    rst $00                                       ; $48c2: $c7
    db $d3                                        ; $48c3: $d3
    ld d, $1a                                     ; $48c4: $16 $1a
    ld l, c                                       ; $48c6: $69
    sub l                                         ; $48c7: $95
    or e                                          ; $48c8: $b3
    adc a                                         ; $48c9: $8f
    add h                                         ; $48ca: $84
    sbc a                                         ; $48cb: $9f
    add $f1                                       ; $48cc: $c6 $f1
    and e                                         ; $48ce: $a3
    call Call_06d_68f7                            ; $48cf: $cd $f7 $68
    ld [hl], e                                    ; $48d2: $73
    ld [hl], d                                    ; $48d3: $72
    jr z, @-$4b                                   ; $48d4: $28 $b3

    inc [hl]                                      ; $48d6: $34
    ld h, [hl]                                    ; $48d7: $66
    adc c                                         ; $48d8: $89
    ld c, e                                       ; $48d9: $4b
    rlca                                          ; $48da: $07
    rra                                           ; $48db: $1f
    pop af                                        ; $48dc: $f1
    cp a                                          ; $48dd: $bf
    or $9d                                        ; $48de: $f6 $9d
    sub a                                         ; $48e0: $97
    ld a, d                                       ; $48e1: $7a
    ld h, l                                       ; $48e2: $65
    call c, Call_000_1a94                         ; $48e3: $dc $94 $1a
    add e                                         ; $48e6: $83
    xor e                                         ; $48e7: $ab
    ld c, h                                       ; $48e8: $4c
    dec d                                         ; $48e9: $15
    ld a, [de]                                    ; $48ea: $1a
    ld l, $ce                                     ; $48eb: $2e $ce
    dec de                                        ; $48ed: $1b
    rlca                                          ; $48ee: $07
    ccf                                           ; $48ef: $3f
    rst $00                                       ; $48f0: $c7
    push hl                                       ; $48f1: $e5
    ld b, [hl]                                    ; $48f2: $46
    ret nc                                        ; $48f3: $d0

    ld l, e                                       ; $48f4: $6b
    ldh a, [rSVBK]                                ; $48f5: $f0 $70
    db $ec                                        ; $48f7: $ec
    push af                                       ; $48f8: $f5
    ld [hl], c                                    ; $48f9: $71
    ld [hl+], a                                   ; $48fa: $22
    db $e3                                        ; $48fb: $e3
    ld c, a                                       ; $48fc: $4f
    sub l                                         ; $48fd: $95
    sub e                                         ; $48fe: $93
    sub l                                         ; $48ff: $95
    ld d, $27                                     ; $4900: $16 $27
    dec a                                         ; $4902: $3d
    ld sp, $a8cd                                  ; $4903: $31 $cd $a8
    ld a, b                                       ; $4906: $78
    inc c                                         ; $4907: $0c
    db $db                                        ; $4908: $db
    ld bc, $a9e7                                  ; $4909: $01 $e7 $a9
    rst $38                                       ; $490c: $ff
    ld d, l                                       ; $490d: $55
    ld d, h                                       ; $490e: $54
    inc de                                        ; $490f: $13
    ld a, [de]                                    ; $4910: $1a
    ld [hl-], a                                   ; $4911: $32
    sub b                                         ; $4912: $90
    sbc b                                         ; $4913: $98
    ld d, c                                       ; $4914: $51
    db $fc                                        ; $4915: $fc
    sbc c                                         ; $4916: $99
    ld h, e                                       ; $4917: $63
    ld [hl-], a                                   ; $4918: $32
    ld [$157a], sp                                ; $4919: $08 $7a $15
    ld h, [hl]                                    ; $491c: $66
    ccf                                           ; $491d: $3f
    push af                                       ; $491e: $f5
    ld a, [$48c4]                                 ; $491f: $fa $c4 $48
    db $db                                        ; $4922: $db
    ld c, $97                                     ; $4923: $0e $97
    push bc                                       ; $4925: $c5
    cp c                                          ; $4926: $b9
    db $db                                        ; $4927: $db
    or [hl]                                       ; $4928: $b6
    sub l                                         ; $4929: $95
    sub $6d                                       ; $492a: $d6 $6d
    db $db                                        ; $492c: $db
    ld a, [de]                                    ; $492d: $1a
    ld c, b                                       ; $492e: $48
    or h                                          ; $492f: $b4
    ld a, [$9b75]                                 ; $4930: $fa $75 $9b
    sub $6d                                       ; $4933: $d6 $6d
    db $db                                        ; $4935: $db
    ld c, $1f                                     ; $4936: $0e $1f
    and l                                         ; $4938: $a5
    inc l                                         ; $4939: $2c
    ld d, c                                       ; $493a: $51
    add a                                         ; $493b: $87
    and l                                         ; $493c: $a5
    dec d                                         ; $493d: $15
    pop hl                                        ; $493e: $e1
    ld [hl+], a                                   ; $493f: $22
    cp d                                          ; $4940: $ba
    ld d, h                                       ; $4941: $54
    and a                                         ; $4942: $a7
    sbc [hl]                                      ; $4943: $9e
    call $9ff3                                    ; $4944: $cd $f3 $9f
    xor l                                         ; $4947: $ad
    rra                                           ; $4948: $1f
    db $dd                                        ; $4949: $dd
    db $d3                                        ; $494a: $d3
    ld h, l                                       ; $494b: $65
    ld [hl], h                                    ; $494c: $74
    and e                                         ; $494d: $a3
    sub l                                         ; $494e: $95
    sub e                                         ; $494f: $93
    rst $38                                       ; $4950: $ff
    inc [hl]                                      ; $4951: $34
    add l                                         ; $4952: $85
    push de                                       ; $4953: $d5
    inc sp                                        ; $4954: $33
    sbc h                                         ; $4955: $9c
    and l                                         ; $4956: $a5
    ld e, e                                       ; $4957: $5b
    xor a                                         ; $4958: $af
    db $ec                                        ; $4959: $ec
    ld d, b                                       ; $495a: $50
    ld h, l                                       ; $495b: $65
    db $fd                                        ; $495c: $fd
    jp nc, Jump_06d_5990                          ; $495d: $d2 $90 $59

    pop hl                                        ; $4960: $e1
    or c                                          ; $4961: $b1
    dec e                                         ; $4962: $1d
    rra                                           ; $4963: $1f
    rst $28                                       ; $4964: $ef
    pop bc                                        ; $4965: $c1
    add d                                         ; $4966: $82
    ld a, [hl]                                    ; $4967: $7e
    ld a, [hl-]                                   ; $4968: $3a
    ld sp, hl                                     ; $4969: $f9
    and a                                         ; $496a: $a7
    db $ed                                        ; $496b: $ed
    nop                                           ; $496c: $00
    rst $20                                       ; $496d: $e7

jr_06d_496e:
    ld c, e                                       ; $496e: $4b
    ret nc                                        ; $496f: $d0

    xor e                                         ; $4970: $ab
    jr nc, jr_06d_496e                            ; $4971: $30 $fb

    xor c                                         ; $4973: $a9
    db $db                                        ; $4974: $db
    or [hl]                                       ; $4975: $b6
    dec [hl]                                      ; $4976: $35
    rst $38                                       ; $4977: $ff
    ld c, [hl]                                    ; $4978: $4e
    sub l                                         ; $4979: $95
    add hl, sp                                    ; $497a: $39
    or d                                          ; $497b: $b2
    ld hl, $4e2d                                  ; $497c: $21 $2d $4e
    dec a                                         ; $497f: $3d
    ld a, d                                       ; $4980: $7a
    sub l                                         ; $4981: $95
    and $d6                                       ; $4982: $e6 $d6
    ld h, h                                       ; $4984: $64
    ld a, [bc]                                    ; $4985: $0a
    jp z, $a51d                                   ; $4986: $ca $1d $a5

    add $e0                                       ; $4989: $c6 $e0
    ld a, d                                       ; $498b: $7a
    ld h, h                                       ; $498c: $64
    ccf                                           ; $498d: $3f
    ld c, l                                       ; $498e: $4d
    ld c, $f5                                     ; $498f: $0e $f5
    xor h                                         ; $4991: $ac
    ld b, d                                       ; $4992: $42
    ret z                                         ; $4993: $c8

    daa                                           ; $4994: $27
    ld h, d                                       ; $4995: $62
    ld a, [c]                                     ; $4996: $f2
    or e                                          ; $4997: $b3
    dec e                                         ; $4998: $1d
    rra                                           ; $4999: $1f
    scf                                           ; $499a: $37
    sub b                                         ; $499b: $90
    adc $fa                                       ; $499c: $ce $fa
    ld b, h                                       ; $499e: $44
    dec a                                         ; $499f: $3d
    sbc e                                         ; $49a0: $9b
    rst $20                                       ; $49a1: $e7
    ccf                                           ; $49a2: $3f
    ld l, a                                       ; $49a3: $6f
    inc e                                         ; $49a4: $1c
    rra                                           ; $49a5: $1f
    xor a                                         ; $49a6: $af
    ld e, [hl]                                    ; $49a7: $5e
    add l                                         ; $49a8: $85
    reti                                          ; $49a9: $d9


    ld c, a                                       ; $49aa: $4f
    add d                                         ; $49ab: $82
    ld a, [hl+]                                   ; $49ac: $2a
    ld [hl], e                                    ; $49ad: $73
    ld h, h                                       ; $49ae: $64
    push hl                                       ; $49af: $e5
    cp b                                          ; $49b0: $b8
    ld [hl], l                                    ; $49b1: $75
    sbc d                                         ; $49b2: $9a
    xor l                                         ; $49b3: $ad
    rst $20                                       ; $49b4: $e7
    xor c                                         ; $49b5: $a9
    jp z, $98d5                                   ; $49b6: $ca $d5 $98

    db $fc                                        ; $49b9: $fc
    ld d, h                                       ; $49ba: $54
    ld b, a                                       ; $49bb: $47
    ld l, b                                       ; $49bc: $68
    db $ec                                        ; $49bd: $ec
    ld d, l                                       ; $49be: $55
    sbc d                                         ; $49bf: $9a
    ld [hl], b                                    ; $49c0: $70
    or $39                                        ; $49c1: $f6 $39
    dec l                                         ; $49c3: $2d
    ld l, h                                       ; $49c4: $6c
    rlca                                          ; $49c5: $07
    rst $10                                       ; $49c6: $d7
    jp nc, Jump_06d_538a                          ; $49c7: $d2 $8a $53

    ld hl, $b15d                                  ; $49ca: $21 $5d $b1
    and a                                         ; $49cd: $a7
    inc a                                         ; $49ce: $3c
    ld a, [hl+]                                   ; $49cf: $2a
    xor b                                         ; $49d0: $a8
    ld [hl-], a                                   ; $49d1: $32
    ld b, a                                       ; $49d2: $47
    cp d                                          ; $49d3: $ba
    daa                                           ; $49d4: $27
    sub h                                         ; $49d5: $94
    dec c                                         ; $49d6: $0d
    rst $00                                       ; $49d7: $c7
    ld a, [hl+]                                   ; $49d8: $2a
    jp nz, Jump_06d_6c7f                          ; $49d9: $c2 $7f $6c

    dec sp                                        ; $49dc: $3b
    nop                                           ; $49dd: $00
    sbc a                                         ; $49de: $9f
    adc e                                         ; $49df: $8b
    jr nz, jr_06d_4a0a                            ; $49e0: $20 $28

    ld d, l                                       ; $49e2: $55
    ld d, c                                       ; $49e3: $51
    pop de                                        ; $49e4: $d1
    xor h                                         ; $49e5: $ac
    add [hl]                                      ; $49e6: $86
    ld h, e                                       ; $49e7: $63
    dec c                                         ; $49e8: $0d
    daa                                           ; $49e9: $27
    ret                                           ; $49ea: $c9


    reti                                          ; $49eb: $d9


    ld c, $97                                     ; $49ec: $0e $97
    dec de                                        ; $49ee: $1b
    jp c, $5c72                                   ; $49ef: $da $72 $5c

    add [hl]                                      ; $49f2: $86
    xor $eb                                       ; $49f3: $ee $eb
    ld [c], a                                     ; $49f5: $e2
    rst $28                                       ; $49f6: $ef
    call nc, Call_06d_57b3                        ; $49f7: $d4 $b3 $57
    ld l, c                                       ; $49fa: $69
    jp nz, $e7d9                                  ; $49fb: $c2 $d9 $e7

    or h                                          ; $49fe: $b4
    ret nc                                        ; $49ff: $d0

    dec bc                                        ; $4a00: $0b
    push de                                       ; $4a01: $d5
    ld de, $bb1a                                  ; $4a02: $11 $1a $bb
    inc a                                         ; $4a05: $3c
    ld [hl], e                                    ; $4a06: $73
    ld e, h                                       ; $4a07: $5c
    and d                                         ; $4a08: $a2
    dec h                                         ; $4a09: $25

jr_06d_4a0a:
    ld [hl], c                                    ; $4a0a: $71
    pop af                                        ; $4a0b: $f1
    ld [hl], a                                    ; $4a0c: $77
    ld [$da59], a                                 ; $4a0d: $ea $59 $da
    rra                                           ; $4a10: $1f
    cp d                                          ; $4a11: $ba
    push af                                       ; $4a12: $f5
    or d                                          ; $4a13: $b2
    sub [hl]                                      ; $4a14: $96
    or $87                                        ; $4a15: $f6 $87
    ld d, [hl]                                    ; $4a17: $56
    ld a, a                                       ; $4a18: $7f
    and a                                         ; $4a19: $a7
    ret                                           ; $4a1a: $c9


    and c                                         ; $4a1b: $a1
    ld hl, $b22c                                  ; $4a1c: $21 $2c $b2
    ld l, $ad                                     ; $4a1f: $2e $ad
    jr c, jr_06d_4a80                             ; $4a21: $38 $5d

    ld l, $1c                                     ; $4a23: $2e $1c
    adc e                                         ; $4a25: $8b
    ret z                                         ; $4a26: $c8

    sub c                                         ; $4a27: $91
    push af                                       ; $4a28: $f5
    xor b                                         ; $4a29: $a8
    add sp, $1e                                   ; $4a2a: $e8 $1e
    ld [hl], e                                    ; $4a2c: $73
    ld l, c                                       ; $4a2d: $69
    ld b, a                                       ; $4a2e: $47
    dec a                                         ; $4a2f: $3d
    ei                                            ; $4a30: $fb
    rrca                                          ; $4a31: $0f
    or [hl]                                       ; $4a32: $b6
    dec b                                         ; $4a33: $05
    ld l, l                                       ; $4a34: $6d
    jr c, jr_06d_4a4e                             ; $4a35: $38 $17

    rst $28                                       ; $4a37: $ef
    and l                                         ; $4a38: $a5
    ld a, [bc]                                    ; $4a39: $0a
    ld a, [de]                                    ; $4a3a: $1a
    adc [hl]                                      ; $4a3b: $8e
    ld [hl], l                                    ; $4a3c: $75
    xor c                                         ; $4a3d: $a9
    ld c, [hl]                                    ; $4a3e: $4e
    dec d                                         ; $4a3f: $15
    ld b, d                                       ; $4a40: $42
    ld e, d                                       ; $4a41: $5a
    db $fd                                        ; $4a42: $fd
    ld [de], a                                    ; $4a43: $12
    pop de                                        ; $4a44: $d1
    sbc b                                         ; $4a45: $98
    push hl                                       ; $4a46: $e5
    add d                                         ; $4a47: $82
    dec [hl]                                      ; $4a48: $35
    add hl, sp                                    ; $4a49: $39
    ld l, b                                       ; $4a4a: $68
    dec a                                         ; $4a4b: $3d
    or h                                          ; $4a4c: $b4
    sub e                                         ; $4a4d: $93

jr_06d_4a4e:
    and d                                         ; $4a4e: $a2
    ld b, c                                       ; $4a4f: $41
    dec de                                        ; $4a50: $1b
    pop hl                                        ; $4a51: $e1
    add h                                         ; $4a52: $84
    rla                                           ; $4a53: $17
    ld e, h                                       ; $4a54: $5c
    cpl                                           ; $4a55: $2f
    call nc, Call_000_15a5                        ; $4a56: $d4 $a5 $15
    and a                                         ; $4a59: $a7
    res 0, l                                      ; $4a5a: $cb $85
    ld h, e                                       ; $4a5c: $63
    ld de, $7239                                  ; $4a5d: $11 $39 $72
    dec sp                                        ; $4a60: $3b
    nop                                           ; $4a61: $00
    rst $20                                       ; $4a62: $e7
    xor c                                         ; $4a63: $a9
    rst $18                                       ; $4a64: $df
    rlca                                          ; $4a65: $07
    ld d, a                                       ; $4a66: $57
    cp c                                          ; $4a67: $b9
    ld l, $1d                                     ; $4a68: $2e $1d
    ld d, a                                       ; $4a6a: $57
    ld d, e                                       ; $4a6b: $53
    ld d, $6d                                     ; $4a6c: $16 $6d
    rlca                                          ; $4a6e: $07
    ld d, a                                       ; $4a6f: $57
    add $4d                                       ; $4a70: $c6 $4d
    sub l                                         ; $4a72: $95
    ld l, $34                                     ; $4a73: $2e $34
    ld l, [hl]                                    ; $4a75: $6e
    rlca                                          ; $4a76: $07
    rst $20                                       ; $4a77: $e7
    ld a, [de]                                    ; $4a78: $1a
    daa                                           ; $4a79: $27
    sub l                                         ; $4a7a: $95
    add hl, sp                                    ; $4a7b: $39
    ld a, [de]                                    ; $4a7c: $1a
    ld c, a                                       ; $4a7d: $4f
    ret z                                         ; $4a7e: $c8

    ld a, [hl]                                    ; $4a7f: $7e

jr_06d_4a80:
    ld a, d                                       ; $4a80: $7a
    ld h, a                                       ; $4a81: $67
    dec h                                         ; $4a82: $25
    inc a                                         ; $4a83: $3c
    sbc d                                         ; $4a84: $9a
    ld e, h                                       ; $4a85: $5c
    dec a                                         ; $4a86: $3d
    ei                                            ; $4a87: $fb

Call_06d_4a88:
    rra                                           ; $4a88: $1f
    ld a, c                                       ; $4a89: $79
    and [hl]                                      ; $4a8a: $a6
    ld c, l                                       ; $4a8b: $4d
    ld c, $3d                                     ; $4a8c: $0e $3d
    rst $08                                       ; $4a8e: $cf
    ld [hl], d                                    ; $4a8f: $72
    ret                                           ; $4a90: $c9


    ld a, l                                       ; $4a91: $7d
    jp nz, Jump_06d_7e0b                          ; $4a92: $c2 $0b $7e

    and c                                         ; $4a95: $a1
    sbc [hl]                                      ; $4a96: $9e
    ld a, l                                       ; $4a97: $7d
    cpl                                           ; $4a98: $2f
    sbc a                                         ; $4a99: $9f
    adc h                                         ; $4a9a: $8c
    ld a, [hl]                                    ; $4a9b: $7e
    ld sp, $ea47                                  ; $4a9c: $31 $47 $ea
    sub $9b                                       ; $4a9f: $d6 $9b
    inc hl                                        ; $4aa1: $23
    rst $08                                       ; $4aa2: $cf
    or h                                          ; $4aa3: $b4
    pop hl                                        ; $4aa4: $e1
    ld a, b                                       ; $4aa5: $78
    jp c, $34ef                                   ; $4aa6: $da $ef $34

    add hl, hl                                    ; $4aa9: $29
    xor h                                         ; $4aaa: $ac
    sbc d                                         ; $4aab: $9a
    and b                                         ; $4aac: $a0
    ld e, l                                       ; $4aad: $5d
    ld a, e                                       ; $4aae: $7b
    jp nc, $b868                                  ; $4aaf: $d2 $68 $b8

    ld a, b                                       ; $4ab2: $78
    cpl                                           ; $4ab3: $2f
    or l                                          ; $4ab4: $b5
    ld hl, $5d0c                                  ; $4ab5: $21 $0c $5d
    sbc [hl]                                      ; $4ab8: $9e
    add hl, sp                                    ; $4ab9: $39
    ld l, $d1                                     ; $4aba: $2e $d1
    sub d                                         ; $4abc: $92
    or b                                          ; $4abd: $b0
    ld b, $12                                     ; $4abe: $06 $12
    or $40                                        ; $4ac0: $f6 $40
    and d                                         ; $4ac2: $a2
    sub l                                         ; $4ac3: $95
    or $c7                                        ; $4ac4: $f6 $c7
    halt                                          ; $4ac6: $76
    nop                                           ; $4ac7: $00
    sbc a                                         ; $4ac8: $9f
    inc h                                         ; $4ac9: $24

Jump_06d_4aca:
    ld h, h                                       ; $4aca: $64
    ccf                                           ; $4acb: $3f
    db $fd                                        ; $4acc: $fd
    adc a                                         ; $4acd: $8f
    inc a                                         ; $4ace: $3c
    dec hl                                        ; $4acf: $2b
    or e                                          ; $4ad0: $b3
    sbc h                                         ; $4ad1: $9c
    inc e                                         ; $4ad2: $1c
    dec c                                         ; $4ad3: $0d
    sub $e4                                       ; $4ad4: $d6 $e4
    ld d, b                                       ; $4ad6: $50
    jp c, $9d1f                                   ; $4ad7: $da $1f $9d

    call nc, $d149                                ; $4ada: $d4 $49 $d1
    and [hl]                                      ; $4add: $a6
    dec hl                                        ; $4ade: $2b
    sbc a                                         ; $4adf: $9f
    adc h                                         ; $4ae0: $8c
    ld a, [hl]                                    ; $4ae1: $7e
    ld sp, $3647                                  ; $4ae2: $31 $47 $36
    sub b                                         ; $4ae5: $90
    ret c                                         ; $4ae6: $d8

    db $fc                                        ; $4ae7: $fc
    dec sp                                        ; $4ae8: $3b
    sub l                                         ; $4ae9: $95
    sub e                                         ; $4aea: $93
    ld [hl], l                                    ; $4aeb: $75
    sbc l                                         ; $4aec: $9d
    ld d, b                                       ; $4aed: $50
    and e                                         ; $4aee: $a3
    sbc h                                         ; $4aef: $9c
    inc l                                         ; $4af0: $2c
    and [hl]                                      ; $4af1: $a6
    and h                                         ; $4af2: $a4
    add hl, bc                                    ; $4af3: $09
    adc d                                         ; $4af4: $8a
    sub b                                         ; $4af5: $90
    ld d, $f9                                     ; $4af6: $16 $f9
    call nz, $ae94                                ; $4af8: $c4 $94 $ae
    sbc d                                         ; $4afb: $9a
    ret nc                                        ; $4afc: $d0

    di                                            ; $4afd: $f3
    inc l                                         ; $4afe: $2c
    sub a                                         ; $4aff: $97
    call c, $bc27                                 ; $4b00: $dc $27 $bc
    ldh [rNR22], a                                ; $4b03: $e0 $17
    or [hl]                                       ; $4b05: $b6
    sbc [hl]                                      ; $4b06: $9e
    rst $28                                       ; $4b07: $ef
    xor h                                         ; $4b08: $ac
    jp nc, $eb82                                  ; $4b09: $d2 $82 $eb

    ld [hl], b                                    ; $4b0c: $70
    ld e, d                                       ; $4b0d: $5a
    ld [de], a                                    ; $4b0e: $12
    adc [hl]                                      ; $4b0f: $8e
    add hl, sp                                    ; $4b10: $39
    or d                                          ; $4b11: $b2
    swap e                                        ; $4b12: $cb $33
    rst $00                                       ; $4b14: $c7
    dec h                                         ; $4b15: $25
    ld e, d                                       ; $4b16: $5a
    ld [de], a                                    ; $4b17: $12
    ld a, [hl]                                    ; $4b18: $7e
    jp z, Jump_000_1dca                           ; $4b19: $ca $ca $1d

    xor d                                         ; $4b1c: $aa
    ld c, e                                       ; $4b1d: $4b
    or h                                          ; $4b1e: $b4
    inc h                                         ; $4b1f: $24
    db $fc                                        ; $4b20: $fc
    ld l, h                                       ; $4b21: $6c
    cp l                                          ; $4b22: $bd
    adc $53                                       ; $4b23: $ce $53
    and d                                         ; $4b25: $a2
    xor e                                         ; $4b26: $ab
    ld h, $68                                     ; $4b27: $26 $68
    rst $08                                       ; $4b29: $cf
    or e                                          ; $4b2a: $b3
    ld e, h                                       ; $4b2b: $5c
    ld [hl], d                                    ; $4b2c: $72
    sbc a                                         ; $4b2d: $9f
    ldh a, [$82]                                  ; $4b2e: $f0 $82
    ld e, a                                       ; $4b30: $5f
    ret nc                                        ; $4b31: $d0

    or d                                          ; $4b32: $b2
    and c                                         ; $4b33: $a1
    adc l                                         ; $4b34: $8d
    ld c, h                                       ; $4b35: $4c
    ld b, [hl]                                    ; $4b36: $46
    rst $10                                       ; $4b37: $d7
    ld [hl], b                                    ; $4b38: $70
    xor h                                         ; $4b39: $ac
    or h                                          ; $4b3a: $b4
    ccf                                           ; $4b3b: $3f
    or h                                          ; $4b3c: $b4
    ld hl, $3477                                  ; $4b3d: $21 $77 $34
    or h                                          ; $4b40: $b4
    add hl, bc                                    ; $4b41: $09
    ld l, l                                       ; $4b42: $6d
    pop de                                        ; $4b43: $d1
    jp Jump_000_1eb3                              ; $4b44: $c3 $b3 $1e


    and l                                         ; $4b47: $a5
    jp z, $b1d9                                   ; $4b48: $ca $d9 $b1

    push af                                       ; $4b4b: $f5
    and e                                         ; $4b4c: $a3
    rst $18                                       ; $4b4d: $df
    add hl, hl                                    ; $4b4e: $29
    ld [hl], e                                    ; $4b4f: $73
    inc [hl]                                      ; $4b50: $34
    cp d                                          ; $4b51: $ba
    ld h, [hl]                                    ; $4b52: $66
    db $f4                                        ; $4b53: $f4
    sbc l                                         ; $4b54: $9d
    ld a, l                                       ; $4b55: $7d
    adc h                                         ; $4b56: $8c
    ld a, [de]                                    ; $4b57: $1a
    pop de                                        ; $4b58: $d1
    db $eb                                        ; $4b59: $eb
    ld [hl], $4b                                  ; $4b5a: $36 $4b
    cp b                                          ; $4b5c: $b8
    inc a                                         ; $4b5d: $3c
    or [hl]                                       ; $4b5e: $b6
    sbc [hl]                                      ; $4b5f: $9e
    scf                                           ; $4b60: $37
    rst $38                                       ; $4b61: $ff
    ld c, [hl]                                    ; $4b62: $4e
    rst $38                                       ; $4b63: $ff
    or e                                          ; $4b64: $b3
    ld b, a                                       ; $4b65: $47
    cp d                                          ; $4b66: $ba
    ld [hl+], a                                   ; $4b67: $22
    ld e, [hl]                                    ; $4b68: $5e
    ld l, b                                       ; $4b69: $68
    and h                                         ; $4b6a: $a4
    pop de                                        ; $4b6b: $d1
    sub l                                         ; $4b6c: $95
    ld e, c                                       ; $4b6d: $59
    ld c, [hl]                                    ; $4b6e: $4e
    adc [hl]                                      ; $4b6f: $8e
    ld b, $3f                                     ; $4b70: $06 $3f
    add l                                         ; $4b72: $85
    ld d, [hl]                                    ; $4b73: $56
    cp c                                          ; $4b74: $b9
    or h                                          ; $4b75: $b4
    or h                                          ; $4b76: $b4
    ccf                                           ; $4b77: $3f
    or h                                          ; $4b78: $b4
    add c                                         ; $4b79: $81
    call nz, $8422                                ; $4b7a: $c4 $22 $84
    ld d, c                                       ; $4b7d: $51
    jp nc, $a335                                  ; $4b7e: $d2 $35 $a3

    ei                                            ; $4b81: $fb
    jp nc, Jump_06d_7a88                          ; $4b82: $d2 $88 $7a

    sub [hl]                                      ; $4b85: $96
    or $87                                        ; $4b86: $f6 $87
    ld [hl], $90                                  ; $4b88: $36 $90
    ld e, b                                       ; $4b8a: $58
    ld l, d                                       ; $4b8b: $6a
    sbc h                                         ; $4b8c: $9c
    ld d, h                                       ; $4b8d: $54
    and $68                                       ; $4b8e: $e6 $68
    inc a                                         ; $4b90: $3c
    ld hl, $e9fb                                  ; $4b91: $21 $fb $e9
    sbc l                                         ; $4b94: $9d
    db $fd                                        ; $4b95: $fd
    adc a                                         ; $4b96: $8f
    inc a                                         ; $4b97: $3c
    db $d3                                        ; $4b98: $d3
    db $ed                                        ; $4b99: $ed
    nop                                           ; $4b9a: $00
    scf                                           ; $4b9b: $37
    ld b, a                                       ; $4b9c: $47
    sbc [hl]                                      ; $4b9d: $9e
    dec [hl]                                      ; $4b9e: $35
    inc e                                         ; $4b9f: $1c
    rst $08                                       ; $4ba0: $cf
    ld a, [hl-]                                   ; $4ba1: $3a
    ld d, [hl]                                    ; $4ba2: $56
    ld a, c                                       ; $4ba3: $79
    ld c, d                                       ; $4ba4: $4a
    res 5, d                                      ; $4ba5: $cb $aa
    ld l, h                                       ; $4ba7: $6c
    jr nz, jr_06d_4bd7                            ; $4ba8: $20 $2d

    and l                                         ; $4baa: $a5
    ld l, l                                       ; $4bab: $6d
    dec a                                         ; $4bac: $3d
    ld c, a                                       ; $4bad: $4f
    db $fd                                        ; $4bae: $fd
    ld a, $b8                                     ; $4baf: $3e $b8
    ld [hl], d                                    ; $4bb1: $72
    or d                                          ; $4bb2: $b2
    xor [hl]                                      ; $4bb3: $ae
    db $d3                                        ; $4bb4: $d3
    ld [hl], h                                    ; $4bb5: $74
    ld a, c                                       ; $4bb6: $79
    and $b8                                       ; $4bb7: $e6 $b8
    ld b, h                                       ; $4bb9: $44
    ld c, e                                       ; $4bba: $4b
    jp nz, Jump_000_3a8a                          ; $4bbb: $c2 $8a $3a

    xor h                                         ; $4bbe: $ac
    or c                                          ; $4bbf: $b1
    add l                                         ; $4bc0: $85
    ld a, [$aed1]                                 ; $4bc1: $fa $d1 $ae
    ld a, h                                       ; $4bc4: $7c
    ld [hl-], a                                   ; $4bc5: $32
    ld a, [$1cc5]                                 ; $4bc6: $fa $c5 $1c
    xor c                                         ; $4bc9: $a9
    db $db                                        ; $4bca: $db
    ld bc, $fd1f                                  ; $4bcb: $01 $1f $fd
    adc [hl]                                      ; $4bce: $8e
    and b                                         ; $4bcf: $a0
    ld c, h                                       ; $4bd0: $4c
    dec c                                         ; $4bd1: $0d
    ld l, l                                       ; $4bd2: $6d
    cp $f8                                        ; $4bd3: $fe $f8
    ld [hl], e                                    ; $4bd5: $73
    ld [hl], a                                    ; $4bd6: $77

jr_06d_4bd7:
    call z, $f591                                 ; $4bd7: $cc $91 $f5
    db $fc                                        ; $4bda: $fc
    ld c, a                                       ; $4bdb: $4f
    ld de, $b31a                                  ; $4bdc: $11 $1a $b3
    and a                                         ; $4bdf: $a7
    ld d, l                                       ; $4be0: $55
    rst $20                                       ; $4be1: $e7

Call_06d_4be2:
    or $ca                                        ; $4be2: $f6 $ca
    ld [c], a                                     ; $4be4: $e2
    reti                                          ; $4be5: $d9


    ld c, $1f                                     ; $4be6: $0e $1f
    db $fd                                        ; $4be8: $fd
    ld c, [hl]                                    ; $4be9: $4e
    rst $38                                       ; $4bea: $ff
    pop bc                                        ; $4beb: $c1
    dec c                                         ; $4bec: $0d
    ld a, c                                       ; $4bed: $79
    add d                                         ; $4bee: $82
    dec [hl]                                      ; $4bef: $35
    inc sp                                        ; $4bf0: $33
    adc e                                         ; $4bf1: $8b
    sub e                                         ; $4bf2: $93
    dec hl                                        ; $4bf3: $2b
    dec [hl]                                      ; $4bf4: $35
    ld e, h                                       ; $4bf5: $5c
    ld e, c                                       ; $4bf6: $59
    inc a                                         ; $4bf7: $3c
    sub a                                         ; $4bf8: $97
    ld c, $ef                                     ; $4bf9: $0e $ef
    ldh [rNR43], a                                ; $4bfb: $e0 $22
    ld a, [hl+]                                   ; $4bfd: $2a
    rst $00                                       ; $4bfe: $c7
    ld c, l                                       ; $4bff: $4d
    inc bc                                        ; $4c00: $03
    ld l, c                                       ; $4c01: $69
    add hl, hl                                    ; $4c02: $29
    ld l, l                                       ; $4c03: $6d
    dec sp                                        ; $4c04: $3b
    nop                                           ; $4c05: $00
    sbc a                                         ; $4c06: $9f
    or c                                          ; $4c07: $b1
    ld a, a                                       ; $4c08: $7f
    ld a, [hl]                                    ; $4c09: $7e
    ccf                                           ; $4c0a: $3f
    ld [hl], l                                    ; $4c0b: $75
    ld e, b                                       ; $4c0c: $58
    jp c, $f308                                   ; $4c0d: $da $08 $f3

    inc d                                         ; $4c10: $14
    db $f4                                        ; $4c11: $f4
    ld a, [hl+]                                   ; $4c12: $2a
    call z, $da7e                                 ; $4c13: $cc $7e $da
    ld c, $37                                     ; $4c16: $0e $37
    ld b, a                                       ; $4c18: $47
    sbc [hl]                                      ; $4c19: $9e
    push de                                       ; $4c1a: $d5
    di                                            ; $4c1b: $f3
    ld c, a                                       ; $4c1c: $4f
    ld e, e                                       ; $4c1d: $5b
    ld l, b                                       ; $4c1e: $68
    ld l, b                                       ; $4c1f: $68
    inc hl                                        ; $4c20: $23
    sub e                                         ; $4c21: $93

jr_06d_4c22:
    pop bc                                        ; $4c22: $c1
    cp d                                          ; $4c23: $ba
    rlca                                          ; $4c24: $07
    ld d, a                                       ; $4c25: $57
    inc [hl]                                      ; $4c26: $34
    ld b, $41                                     ; $4c27: $06 $41
    xor a                                         ; $4c29: $af
    jp nz, $a7ec                                  ; $4c2a: $c2 $ec $a7

    db $ed                                        ; $4c2d: $ed
    nop                                           ; $4c2e: $00
    scf                                           ; $4c2f: $37
    ld b, a                                       ; $4c30: $47
    sbc [hl]                                      ; $4c31: $9e
    dec [hl]                                      ; $4c32: $35
    rst $38                                       ; $4c33: $ff
    ld c, [hl]                                    ; $4c34: $4e
    rst $38                                       ; $4c35: $ff
    ld e, b                                       ; $4c36: $58
    ld h, l                                       ; $4c37: $65
    sub [hl]                                      ; $4c38: $96
    sub e                                         ; $4c39: $93
    and e                                         ; $4c3a: $a3
    pop bc                                        ; $4c3b: $c1
    cp d                                          ; $4c3c: $ba
    ld a, [c]                                     ; $4c3d: $f2
    ret                                           ; $4c3e: $c9


    add sp, $17                                   ; $4c3f: $e8 $17
    ld [hl], e                                    ; $4c41: $73
    and h                                         ; $4c42: $a4
    ld d, $81                                     ; $4c43: $16 $81
    or h                                          ; $4c45: $b4
    inc b                                         ; $4c46: $04
    cp l                                          ; $4c47: $bd
    ld a, [bc]                                    ; $4c48: $0a
    or e                                          ; $4c49: $b3
    sbc a                                         ; $4c4a: $9f
    or [hl]                                       ; $4c4b: $b6
    inc bc                                        ; $4c4c: $03
    rst $20                                       ; $4c4d: $e7
    xor d                                         ; $4c4e: $aa
    xor b                                         ; $4c4f: $a8
    rst $20                                       ; $4c50: $e7
    sbc a                                         ; $4c51: $9f
    or [hl]                                       ; $4c52: $b6
    ld d, b                                       ; $4c53: $50
    and l                                         ; $4c54: $a5
    dec [hl]                                      ; $4c55: $35
    add hl, sp                                    ; $4c56: $39
    inc [hl]                                      ; $4c57: $34
    and h                                         ; $4c58: $a4
    ld b, $d2                                     ; $4c59: $06 $d2
    ld d, d                                       ; $4c5b: $52
    call nc, $12b3                                ; $4c5c: $d4 $b3 $12
    ld l, $1c                                     ; $4c5f: $2e $1c
    ld b, c                                       ; $4c61: $41
    xor a                                         ; $4c62: $af
    jp nz, $a7ec                                  ; $4c63: $c2 $ec $a7

    db $ed                                        ; $4c66: $ed
    nop                                           ; $4c67: $00
    scf                                           ; $4c68: $37
    ld b, a                                       ; $4c69: $47
    sbc [hl]                                      ; $4c6a: $9e
    ld d, l                                       ; $4c6b: $55

jr_06d_4c6c:
    ld c, [hl]                                    ; $4c6c: $4e
    ld d, $53                                     ; $4c6d: $16 $53
    or d                                          ; $4c6f: $b2
    ret                                           ; $4c70: $c9


    ld d, l                                       ; $4c71: $55
    jr c, jr_06d_4c22                             ; $4c72: $38 $ae

    ld a, e                                       ; $4c74: $7b
    ld a, [hl-]                                   ; $4c75: $3a
    pop bc                                        ; $4c76: $c1
    ld a, [de]                                    ; $4c77: $1a
    jp nz, Jump_06d_6550                          ; $4c78: $c2 $50 $65

    sbc c                                         ; $4c7b: $99
    push hl                                       ; $4c7c: $e5
    db $e4                                        ; $4c7d: $e4
    ld l, b                                       ; $4c7e: $68

Jump_06d_4c7f:
    or b                                          ; $4c7f: $b0
    xor [hl]                                      ; $4c80: $ae
    ld a, h                                       ; $4c81: $7c
    ld [hl-], a                                   ; $4c82: $32
    ld a, [$1cc5]                                 ; $4c83: $fa $c5 $1c
    xor c                                         ; $4c86: $a9
    call $6868                                    ; $4c87: $cd $68 $68
    inc de                                        ; $4c8a: $13
    jp c, $87a2                                   ; $4c8b: $da $a2 $87

    ld h, a                                       ; $4c8e: $67
    dec a                                         ; $4c8f: $3d
    ld c, d                                       ; $4c90: $4a
    sub l                                         ; $4c91: $95
    or e                                          ; $4c92: $b3
    db $e3                                        ; $4c93: $e3
    adc l                                         ; $4c94: $8d
    inc bc                                        ; $4c95: $03
    rst $10                                       ; $4c96: $d7
    ld l, l                                       ; $4c97: $6d
    ld h, h                                       ; $4c98: $64
    ld [hl-], a                                   ; $4c99: $32
    ld [hl], $1c                                  ; $4c9a: $36 $1c
    ld l, e                                       ; $4c9c: $6b
    ld c, h                                       ; $4c9d: $4c
    and d                                         ; $4c9e: $a2
    pop de                                        ; $4c9f: $d1
    ld a, d                                       ; $4ca0: $7a
    or $64                                        ; $4ca1: $f6 $64
    ld [hl], b                                    ; $4ca3: $70
    add sp, -$36                                  ; $4ca4: $e8 $ca
    ld [hl], d                                    ; $4ca6: $72

jr_06d_4ca7:
    ld e, h                                       ; $4ca7: $5c
    jp z, $f5ba                                   ; $4ca8: $ca $ba $f5

    ld a, h                                       ; $4cab: $7c
    and a                                         ; $4cac: $a7
    ld d, [hl]                                    ; $4cad: $56
    ld a, a                                       ; $4cae: $7f
    and a                                         ; $4caf: $a7
    ld [hl], d                                    ; $4cb0: $72
    call c, Call_06d_6ef4                         ; $4cb1: $dc $f4 $6e
    rst $30                                       ; $4cb4: $f7
    xor e                                         ; $4cb5: $ab
    dec c                                         ; $4cb6: $0d
    ld h, c                                       ; $4cb7: $61
    jr z, jr_06d_4ca7                             ; $4cb8: $28 $ed

    rrca                                          ; $4cba: $0f
    dec l                                         ; $4cbb: $2d
    dec sp                                        ; $4cbc: $3b
    add hl, hl                                    ; $4cbd: $29
    jp c, $5768                                   ; $4cbe: $da $68 $57

    ld a, $19                                     ; $4cc1: $3e $19
    db $fd                                        ; $4cc3: $fd
    ld h, d                                       ; $4cc4: $62
    adc [hl]                                      ; $4cc5: $8e
    call nc, Call_000_367a                        ; $4cc6: $d4 $7a $36
    sbc h                                         ; $4cc9: $9c
    adc e                                         ; $4cca: $8b
    rst $30                                       ; $4ccb: $f7
    ld d, d                                       ; $4ccc: $52
    or a                                          ; $4ccd: $b7
    inc bc                                        ; $4cce: $03
    sub a                                         ; $4ccf: $97
    ld b, e                                       ; $4cd0: $43
    ld h, [hl]                                    ; $4cd1: $66
    ld l, b                                       ; $4cd2: $68
    inc hl                                        ; $4cd3: $23
    or e                                          ; $4cd4: $b3
    jr jr_06d_4c6c                                ; $4cd5: $18 $95

    or h                                          ; $4cd7: $b4
    ret z                                         ; $4cd8: $c8

    db $db                                        ; $4cd9: $db
    xor b                                         ; $4cda: $a8
    ld h, a                                       ; $4cdb: $67
    xor c                                         ; $4cdc: $a9
    ld de, $a4d6                                  ; $4cdd: $11 $d6 $a4
    ret z                                         ; $4ce0: $c8

    ld a, [hl]                                    ; $4ce1: $7e
    xor d                                         ; $4ce2: $aa
    add hl, bc                                    ; $4ce3: $09
    jp c, $fd3d                                   ; $4ce4: $da $3d $fd

    and c                                         ; $4ce7: $a1
    push af                                       ; $4ce8: $f5
    ld l, h                                       ; $4ce9: $6c
    ret z                                         ; $4cea: $c8

    sbc l                                         ; $4ceb: $9d
    push af                                       ; $4cec: $f5
    xor h                                         ; $4ced: $ac
    scf                                           ; $4cee: $37
    sbc h                                         ; $4cef: $9c
    ld a, [hl]                                    ; $4cf0: $7e
    and a                                         ; $4cf1: $a7
    add c                                         ; $4cf2: $81
    add h                                         ; $4cf3: $84
    db $ec                                        ; $4cf4: $ec
    and a                                         ; $4cf5: $a7
    rst $38                                       ; $4cf6: $ff
    sub c                                         ; $4cf7: $91
    ld h, a                                       ; $4cf8: $67
    add l                                         ; $4cf9: $85
    ld [hl], $e4                                  ; $4cfa: $36 $e4
    add hl, bc                                    ; $4cfc: $09
    or [hl]                                       ; $4cfd: $b6
    push af                                       ; $4cfe: $f5
    ld a, [c]                                     ; $4cff: $f2
    ld a, [hl]                                    ; $4d00: $7e
    ld c, d                                       ; $4d01: $4a
    ld c, $5a                                     ; $4d02: $0e $5a
    jp c, $da1f                                   ; $4d04: $da $1f $da

    ld [hl], b                                    ; $4d07: $70
    inc a                                         ; $4d08: $3c
    ld e, l                                       ; $4d09: $5d
    dec e                                         ; $4d0a: $1d

Call_06d_4d0b:
    and h                                         ; $4d0b: $a4
    jr c, @+$4b                                   ; $4d0c: $38 $49

    ld e, b                                       ; $4d0e: $58
    sub e                                         ; $4d0f: $93
    ld l, e                                       ; $4d10: $6b
    jr c, jr_06d_4d5c                             ; $4d11: $38 $49

    adc $76                                       ; $4d13: $ce $76
    nop                                           ; $4d15: $00
    ld d, a                                       ; $4d16: $57
    ld [hl], c                                    ; $4d17: $71
    or d                                          ; $4d18: $b2
    push hl                                       ; $4d19: $e5
    dec b                                         ; $4d1a: $05
    db $fd                                        ; $4d1b: $fd
    adc a                                         ; $4d1c: $8f
    inc a                                         ; $4d1d: $3c
    xor e                                         ; $4d1e: $ab
    sbc h                                         ; $4d1f: $9c
    inc l                                         ; $4d20: $2c
    and [hl]                                      ; $4d21: $a6
    ld h, h                                       ; $4d22: $64
    sub e                                         ; $4d23: $93
    xor e                                         ; $4d24: $ab
    ld [hl], b                                    ; $4d25: $70
    ld e, h                                       ; $4d26: $5c
    rst $30                                       ; $4d27: $f7
    ld [hl], h                                    ; $4d28: $74
    add d                                         ; $4d29: $82
    dec [hl]                                      ; $4d2a: $35
    add h                                         ; $4d2b: $84
    and c                                         ; $4d2c: $a1
    jp z, $cb32                                   ; $4d2d: $ca $32 $cb

    ret                                           ; $4d30: $c9


    pop de                                        ; $4d31: $d1
    ld h, b                                       ; $4d32: $60
    ld e, l                                       ; $4d33: $5d
    ld sp, hl                                     ; $4d34: $f9
    ld h, h                                       ; $4d35: $64
    db $f4                                        ; $4d36: $f4
    adc e                                         ; $4d37: $8b
    add hl, sp                                    ; $4d38: $39
    ld d, d                                       ; $4d39: $52
    dec de                                        ; $4d3a: $1b
    adc [hl]                                      ; $4d3b: $8e
    dec d                                         ; $4d3c: $15
    add c                                         ; $4d3d: $81
    or h                                          ; $4d3e: $b4
    sbc $38                                       ; $4d3f: $de $38
    nop                                           ; $4d41: $00
    ld d, a                                       ; $4d42: $57
    add $85                                       ; $4d43: $c6 $85
    dec sp                                        ; $4d45: $3b
    inc hl                                        ; $4d46: $23
    or d                                          ; $4d47: $b2
    sbc a                                         ; $4d48: $9f
    ld l, d                                       ; $4d49: $6a
    ld b, d                                       ; $4d4a: $42
    rst $08                                       ; $4d4b: $cf
    or e                                          ; $4d4c: $b3
    ld e, h                                       ; $4d4d: $5c
    ld [hl], d                                    ; $4d4e: $72
    sbc a                                         ; $4d4f: $9f

Jump_06d_4d50:
    ldh a, [$82]                                  ; $4d50: $f0 $82
    ld e, a                                       ; $4d52: $5f
    db $10                                        ; $4d53: $10
    ld d, h                                       ; $4d54: $54
    call z, $df95                                 ; $4d55: $cc $95 $df
    add sp, $75                                   ; $4d58: $e8 $75
    dec de                                        ; $4d5a: $1b
    sbc c                                         ; $4d5b: $99

jr_06d_4d5c:
    adc h                                         ; $4d5c: $8c
    call $8da3                                    ; $4d5d: $cd $a3 $8d
    ld c, c                                       ; $4d60: $49
    inc [hl]                                      ; $4d61: $34
    ld e, d                                       ; $4d62: $5a
    rst $08                                       ; $4d63: $cf
    sbc [hl]                                      ; $4d64: $9e
    inc c                                         ; $4d65: $0c
    ld c, $a5                                     ; $4d66: $0e $a5
    ld b, [hl]                                    ; $4d68: $46
    ld b, e                                       ; $4d69: $43
    ld d, $8f                                     ; $4d6a: $16 $8f
    ld [hl], $90                                  ; $4d6c: $36 $90
    ret c                                         ; $4d6e: $d8

    rst $38                                       ; $4d6f: $ff
    ret z                                         ; $4d70: $c8

Jump_06d_4d71:
    or e                                          ; $4d71: $b3
    cp $cf                                        ; $4d72: $fe $cf
    adc d                                         ; $4d74: $8a
    ld b, b                                       ; $4d75: $40
    ld e, d                                       ; $4d76: $5a
    ld h, l                                       ; $4d77: $65
    or c                                          ; $4d78: $b1
    xor a                                         ; $4d79: $af
    xor l                                         ; $4d7a: $ad
    rst $20                                       ; $4d7b: $e7
    xor c                                         ; $4d7c: $a9
    rst $38                                       ; $4d7d: $ff
    push de                                       ; $4d7e: $d5
    db $e4                                        ; $4d7f: $e4
    ld a, [de]                                    ; $4d80: $1a
    ld c, [hl]                                    ; $4d81: $4e
    sub d                                         ; $4d82: $92
    ld d, e                                       ; $4d83: $53
    rst $08                                       ; $4d84: $cf
    ld a, [$e115]                                 ; $4d85: $fa $15 $e1
    ld a, [c]                                     ; $4d88: $f2
    inc [hl]                                      ; $4d89: $34
    inc e                                         ; $4d8a: $1c
    dec hl                                        ; $4d8b: $2b
    xor $16                                       ; $4d8c: $ee $16
    call nc, $cb41                                ; $4d8e: $d4 $41 $cb
    sbc l                                         ; $4d91: $9d
    dec d                                         ; $4d92: $15
    pop hl                                        ; $4d93: $e1
    halt                                          ; $4d94: $76
    ld b, a                                       ; $4d95: $47
    db $eb                                        ; $4d96: $eb
    dec c                                         ; $4d97: $0d
    and a                                         ; $4d98: $a7
    ld a, e                                       ; $4d99: $7b
    xor c                                         ; $4d9a: $a9
    and l                                         ; $4d9b: $a5
    add [hl]                                      ; $4d9c: $86
    rrc h                                         ; $4d9d: $cb $0c
    ld b, [hl]                                    ; $4d9f: $46
    daa                                           ; $4da0: $27
    jr z, @+$75                                   ; $4da1: $28 $73

    db $fc                                        ; $4da3: $fc
    sbc l                                         ; $4da4: $9d
    ld [hl-], a                                   ; $4da5: $32
    sub l                                         ; $4da6: $95
    add hl, sp                                    ; $4da7: $39
    jp nc, Jump_06d_6b8c                          ; $4da8: $d2 $8c $6b

    dec sp                                        ; $4dab: $3b
    nop                                           ; $4dac: $00
    ld l, a                                       ; $4dad: $6f
    dec de                                        ; $4dae: $1b
    ld c, [hl]                                    ; $4daf: $4e
    rst $30                                       ; $4db0: $f7
    ld d, d                                       ; $4db1: $52
    rst $18                                       ; $4db2: $df
    jr c, jr_06d_4db5                             ; $4db3: $38 $00

jr_06d_4db5:
    sub a                                         ; $4db5: $97
    push bc                                       ; $4db6: $c5
    cp c                                          ; $4db7: $b9
    db $db                                        ; $4db8: $db
    or [hl]                                       ; $4db9: $b6
    sub l                                         ; $4dba: $95
    xor c                                         ; $4dbb: $a9
    ld a, [hl]                                    ; $4dbc: $7e
    xor c                                         ; $4dbd: $a9
    or d                                          ; $4dbe: $b2
    sbc $70                                       ; $4dbf: $de $70
    cp d                                          ; $4dc1: $ba
    sub a                                         ; $4dc2: $97
    ld a, [$3f46]                                 ; $4dc3: $fa $46 $3f
    ld c, c                                       ; $4dc6: $49
    ld c, e                                       ; $4dc7: $4b
    db $eb                                        ; $4dc8: $eb
    rst $10                                       ; $4dc9: $d7
    ld l, l                                       ; $4dca: $6d
    ld e, d                                       ; $4dcb: $5a
    dec e                                         ; $4dcc: $1d
    ld d, e                                       ; $4dcd: $53
    dec h                                         ; $4dce: $25
    and h                                         ; $4dcf: $a4
    ld a, b                                       ; $4dd0: $78
    call z, Call_06d_57a6                         ; $4dd1: $cc $a6 $57
    sub b                                         ; $4dd4: $90
    ld d, a                                       ; $4dd5: $57
    sbc [hl]                                      ; $4dd6: $9e
    ld l, [hl]                                    ; $4dd7: $6e
    db $db                                        ; $4dd8: $db
    ld d, [hl]                                    ; $4dd9: $56
    sub h                                         ; $4dda: $94
    or $47                                        ; $4ddb: $f6 $47
    ld b, l                                       ; $4ddd: $45
    cp b                                          ; $4dde: $b8
    db $dd                                        ; $4ddf: $dd
    jp hl                                         ; $4de0: $e9


    dec d                                         ; $4de1: $15
    db $e4                                        ; $4de2: $e4
    sub l                                         ; $4de3: $95
    and a                                         ; $4de4: $a7
    call nc, $9970                                ; $4de5: $d4 $70 $99
    pop bc                                        ; $4de8: $c1
    or [hl]                                       ; $4de9: $b6
    cp [hl]                                       ; $4dea: $be
    add e                                         ; $4deb: $83
    ld a, l                                       ; $4dec: $7d
    ld a, [hl+]                                   ; $4ded: $2a
    rst $00                                       ; $4dee: $c7
    push af                                       ; $4def: $f5
    ccf                                           ; $4df0: $3f
    ld a, [c]                                     ; $4df1: $f2
    xor h                                         ; $4df2: $ac
    sbc [hl]                                      ; $4df3: $9e
    pop hl                                        ; $4df4: $e1
    inc l                                         ; $4df5: $2c
    dec d                                         ; $4df6: $15
    db $f4                                        ; $4df7: $f4
    ld a, [hl+]                                   ; $4df8: $2a
    call z, Call_000_3a7e                         ; $4df9: $cc $7e $3a
    nop                                           ; $4dfc: $00
    rra                                           ; $4dfd: $1f
    rst $28                                       ; $4dfe: $ef
    pop bc                                        ; $4dff: $c1
    add d                                         ; $4e00: $82
    ld e, [hl]                                    ; $4e01: $5e
    add l                                         ; $4e02: $85
    reti                                          ; $4e03: $d9


    ld c, a                                       ; $4e04: $4f
    add d                                         ; $4e05: $82
    ld c, [hl]                                    ; $4e06: $4e
    inc bc                                        ; $4e07: $03
    adc c                                         ; $4e08: $89
    db $fd                                        ; $4e09: $fd
    adc a                                         ; $4e0a: $8f
    inc a                                         ; $4e0b: $3c
    ld l, e                                       ; $4e0c: $6b
    and h                                         ; $4e0d: $a4
    dec hl                                        ; $4e0e: $2b
    xor $7e                                       ; $4e0f: $ee $7e
    db $e3                                        ; $4e11: $e3
    nop                                           ; $4e12: $00
    rst $10                                       ; $4e13: $d7
    ld d, [hl]                                    ; $4e14: $56
    ld d, $a3                                     ; $4e15: $16 $a3
    rst $20                                       ; $4e17: $e7
    ld e, c                                       ; $4e18: $59
    ld l, $b9                                     ; $4e19: $2e $b9
    ld c, a                                       ; $4e1b: $4f
    ld a, b                                       ; $4e1c: $78
    pop bc                                        ; $4e1d: $c1
    cpl                                           ; $4e1e: $2f
    call nc, $2bb3                                ; $4e1f: $d4 $b3 $2b
    sbc a                                         ; $4e22: $9f
    adc h                                         ; $4e23: $8c
    ld a, [hl]                                    ; $4e24: $7e
    ld sp, $aa47                                  ; $4e25: $31 $47 $aa
    and b                                         ; $4e28: $a0
    ld hl, $450c                                  ; $4e29: $21 $0c $45
    sub c                                         ; $4e2c: $91
    halt                                          ; $4e2d: $76
    call nc, Call_06d_57b3                        ; $4e2e: $d4 $b3 $57
    ld l, c                                       ; $4e31: $69
    jp nz, $e7d9                                  ; $4e32: $c2 $d9 $e7

    or h                                          ; $4e35: $b4
    or b                                          ; $4e36: $b0
    dec e                                         ; $4e37: $1d
    sub a                                         ; $4e38: $97
    push bc                                       ; $4e39: $c5
    add d                                         ; $4e3a: $82
    cp $47                                        ; $4e3b: $fe $47
    sbc [hl]                                      ; $4e3d: $9e
    sub l                                         ; $4e3e: $95
    ld a, [de]                                    ; $4e3f: $1a
    add e                                         ; $4e40: $83
    dec hl                                        ; $4e41: $2b
    ld [hl], c                                    ; $4e42: $71
    ld de, $4fd9                                  ; $4e43: $11 $d9 $4f
    ld d, a                                       ; $4e46: $57
    ld a, $19                                     ; $4e47: $3e $19
    db $fd                                        ; $4e49: $fd
    ld h, d                                       ; $4e4a: $62
    adc [hl]                                      ; $4e4b: $8e
    call nc, $d7ad                                ; $4e4c: $d4 $ad $d7
    and b                                         ; $4e4f: $a0
    cp l                                          ; $4e50: $bd
    ld d, b                                       ; $4e51: $50
    rst $00                                       ; $4e52: $c7
    ld e, l                                       ; $4e53: $5d
    inc a                                         ; $4e54: $3c
    sub $ff                                       ; $4e55: $d6 $ff
    ret z                                         ; $4e57: $c8

    or e                                          ; $4e58: $b3
    adc d                                         ; $4e59: $8a
    sub [hl]                                      ; $4e5a: $96
    add h                                         ; $4e5b: $84
    push de                                       ; $4e5c: $d5
    ld c, a                                       ; $4e5d: $4f
    ld [hl], a                                    ; $4e5e: $77
    ld hl, sp-$57                                 ; $4e5f: $f8 $a9
    ld h, a                                       ; $4e61: $67
    ld b, l                                       ; $4e62: $45
    ld h, e                                       ; $4e63: $63
    xor b                                         ; $4e64: $a8
    or d                                          ; $4e65: $b2
    add c                                         ; $4e66: $81
    or h                                          ; $4e67: $b4
    sub h                                         ; $4e68: $94
    sub $48                                       ; $4e69: $d6 $48
    xor e                                         ; $4e6b: $ab
    ld h, $49                                     ; $4e6c: $26 $49
    push de                                       ; $4e6e: $d5
    ld l, c                                       ; $4e6f: $69
    ld b, [hl]                                    ; $4e70: $46
    dec [hl]                                      ; $4e71: $35
    and c                                         ; $4e72: $a1
    jp nz, $12a4                                  ; $4e73: $c2 $a4 $12

    db $db                                        ; $4e76: $db
    ld bc, $a9e7                                  ; $4e77: $01 $e7 $a9
    ld [$e347], sp                                ; $4e7a: $08 $47 $e3
    inc [hl]                                      ; $4e7d: $34
    sub b                                         ; $4e7e: $90
    ret c                                         ; $4e7f: $d8

    and l                                         ; $4e80: $a5
    ld [hl], c                                    ; $4e81: $71
    ld a, d                                       ; $4e82: $7a
    and c                                         ; $4e83: $a1
    ret                                           ; $4e84: $c9


    push de                                       ; $4e85: $d5
    adc a                                         ; $4e86: $8f
    halt                                          ; $4e87: $76
    push hl                                       ; $4e88: $e5
    sub e                                         ; $4e89: $93
    pop de                                        ; $4e8a: $d1
    cpl                                           ; $4e8b: $2f
    and $48                                       ; $4e8c: $e6 $48
    db $dd                                        ; $4e8e: $dd
    ld c, $e7                                     ; $4e8f: $0e $e7
    xor c                                         ; $4e91: $a9
    ld a, [bc]                                    ; $4e92: $0a
    pop hl                                        ; $4e93: $e1
    ld b, d                                       ; $4e94: $42
    or a                                          ; $4e95: $b7
    ld l, l                                       ; $4e96: $6d
    xor e                                         ; $4e97: $ab
    cp $4e                                        ; $4e98: $fe $4e
    ld hl, $cbef                                  ; $4e9a: $21 $ef $cb

jr_06d_4e9d:
    dec hl                                        ; $4e9d: $2b
    adc [hl]                                      ; $4e9e: $8e
    ld l, [hl]                                    ; $4e9f: $6e
    rlca                                          ; $4ea0: $07
    rst $20                                       ; $4ea1: $e7
    xor c                                         ; $4ea2: $a9
    and a                                         ; $4ea3: $a7
    pop de                                        ; $4ea4: $d1
    ld [$a85b], sp                                ; $4ea5: $08 $5b $a8
    ld h, a                                       ; $4ea8: $67
    dec d                                         ; $4ea9: $15
    ld b, d                                       ; $4eaa: $42
    ld e, d                                       ; $4eab: $5a
    and a                                         ; $4eac: $a7
    add c                                         ; $4ead: $81
    call nz, $e7a2                                ; $4eae: $c4 $a2 $e7
    ld e, c                                       ; $4eb1: $59
    ld l, $b9                                     ; $4eb2: $2e $b9
    ld c, a                                       ; $4eb4: $4f
    ld a, b                                       ; $4eb5: $78
    pop bc                                        ; $4eb6: $c1
    cpl                                           ; $4eb7: $2f
    db $f4                                        ; $4eb8: $f4
    adc a                                         ; $4eb9: $8f
    ld d, l                                       ; $4eba: $55
    cp a                                          ; $4ebb: $bf
    ld l, [hl]                                    ; $4ebc: $6e
    db $d3                                        ; $4ebd: $d3
    xor d                                         ; $4ebe: $aa
    inc hl                                        ; $4ebf: $23
    inc [hl]                                      ; $4ec0: $34
    sub [hl]                                      ; $4ec1: $96
    xor d                                         ; $4ec2: $aa
    inc l                                         ; $4ec3: $2c
    ld [bc], a                                    ; $4ec4: $02
    ld l, c                                       ; $4ec5: $69
    ld l, l                                       ; $4ec6: $6d
    rlca                                          ; $4ec7: $07
    sub a                                         ; $4ec8: $97
    rst $10                                       ; $4ec9: $d7
    and l                                         ; $4eca: $a5
    cp [hl]                                       ; $4ecb: $be
    and a                                         ; $4ecc: $a7
    ld a, [hl-]                                   ; $4ecd: $3a
    dec c                                         ; $4ece: $0d
    inc h                                         ; $4ecf: $24
    ld l, $87                                     ; $4ed0: $2e $87
    ld c, e                                       ; $4ed2: $4b
    rlca                                          ; $4ed3: $07
    ld d, a                                       ; $4ed4: $57
    sbc l                                         ; $4ed5: $9d
    inc de                                        ; $4ed6: $13
    sub h                                         ; $4ed7: $94
    add hl, sp                                    ; $4ed8: $39
    cp $4e                                        ; $4ed9: $fe $4e
    sub a                                         ; $4edb: $97
    add $e9                                       ; $4edc: $c6 $e9
    add l                                         ; $4ede: $85
    ld a, [$e115]                                 ; $4edf: $fa $15 $e1
    ld a, [c]                                     ; $4ee2: $f2
    ld l, h                                       ; $4ee3: $6c
    rlca                                          ; $4ee4: $07
    rst $20                                       ; $4ee5: $e7
    xor c                                         ; $4ee6: $a9
    sub b                                         ; $4ee7: $90
    ld [c], a                                     ; $4ee8: $e2
    ld l, c                                       ; $4ee9: $69
    jr nz, jr_06d_4e9d                            ; $4eea: $20 $b1

    ld [hl], d                                    ; $4eec: $72
    or d                                          ; $4eed: $b2
    sbc b                                         ; $4eee: $98
    rla                                           ; $4eef: $17
    and a                                         ; $4ef0: $a7
    ld d, h                                       ; $4ef1: $54
    ld h, l                                       ; $4ef2: $65
    ld de, $6b48                                  ; $4ef3: $11 $48 $6b
    dec sp                                        ; $4ef6: $3b
    nop                                           ; $4ef7: $00
    sbc a                                         ; $4ef8: $9f
    cpl                                           ; $4ef9: $2f
    ld b, c                                       ; $4efa: $41
    sub a                                         ; $4efb: $97
    ld [$e614], a                                 ; $4efc: $ea $14 $e6
    cp c                                          ; $4eff: $b9
    dec e                                         ; $4f00: $1d
    rst $20                                       ; $4f01: $e7
    xor c                                         ; $4f02: $a9
    ld a, [bc]                                    ; $4f03: $0a
    pop hl                                        ; $4f04: $e1
    ld b, d                                       ; $4f05: $42
    or a                                          ; $4f06: $b7
    ld l, l                                       ; $4f07: $6d
    ld l, e                                       ; $4f08: $6b
    or d                                          ; $4f09: $b2

jr_06d_4f0a:
    cp b                                          ; $4f0a: $b8
    ld c, [hl]                                    ; $4f0b: $4e
    ret c                                         ; $4f0c: $d8

    ld a, [$bf71]                                 ; $4f0d: $fa $71 $bf
    add a                                         ; $4f10: $87
    ld sp, hl                                     ; $4f11: $f9
    push hl                                       ; $4f12: $e5
    ld [$fb47], a                                 ; $4f13: $ea $47 $fb
    halt                                          ; $4f16: $76
    ld [hl-], a                                   ; $4f17: $32
    db $dd                                        ; $4f18: $dd
    ld sp, hl                                     ; $4f19: $f9
    ld d, e                                       ; $4f1a: $53
    ld l, c                                       ; $4f1b: $69
    xor b                                         ; $4f1c: $a8
    inc d                                         ; $4f1d: $14
    ld [hl], e                                    ; $4f1e: $73
    ld c, l                                       ; $4f1f: $4d
    db $fd                                        ; $4f20: $fd
    ld d, d                                       ; $4f21: $52
    sbc l                                         ; $4f22: $9d
    db $ed                                        ; $4f23: $ed
    nop                                           ; $4f24: $00
    rst $10                                       ; $4f25: $d7
    and b                                         ; $4f26: $a0
    dec c                                         ; $4f27: $0d
    inc h                                         ; $4f28: $24
    ld d, [hl]                                    ; $4f29: $56
    adc $52                                       ; $4f2a: $ce $52
    call nc, Call_06d_6961                        ; $4f2c: $d4 $61 $69
    xor c                                         ; $4f2f: $a9
    pop de                                        ; $4f30: $d1
    sub b                                         ; $4f31: $90
    push bc                                       ; $4f32: $c5
    ret c                                         ; $4f33: $d8

    ld a, [$0371]                                 ; $4f34: $fa $71 $03
    adc c                                         ; $4f37: $89
    ld d, l                                       ; $4f38: $55
    ld e, d                                       ; $4f39: $5a
    ldh a, [rNR31]                                ; $4f3a: $f0 $1b
    rlca                                          ; $4f3c: $07
    rra                                           ; $4f3d: $1f
    ld [hl], a                                    ; $4f3e: $77
    ld e, a                                       ; $4f3f: $5f
    ld a, a                                       ; $4f40: $7f
    sbc e                                         ; $4f41: $9b
    ld a, [$bb75]                                 ; $4f42: $fa $75 $bb
    add c                                         ; $4f45: $81
    call nz, $a85e                                ; $4f46: $c4 $5e $a8
    ld h, c                                       ; $4f49: $61
    db $dd                                        ; $4f4a: $dd
    xor [hl]                                      ; $4f4b: $ae
    ld h, a                                       ; $4f4c: $67
    dec e                                         ; $4f4d: $1d
    or d                                          ; $4f4e: $b2
    or a                                          ; $4f4f: $b7
    ldh [$d3], a                                  ; $4f50: $e0 $d3
    jr jr_06d_4f0a                                ; $4f52: $18 $b6

    inc bc                                        ; $4f54: $03
    sub a                                         ; $4f55: $97
    push hl                                       ; $4f56: $e5
    ld a, l                                       ; $4f57: $7d
    ld a, c                                       ; $4f58: $79
    push bc                                       ; $4f59: $c5
    jp hl                                         ; $4f5a: $e9


    cp [hl]                                       ; $4f5b: $be
    db $e4                                        ; $4f5c: $e4
    ret z                                         ; $4f5d: $c8

    jr c, jr_06d_4fd9                             ; $4f5e: $38 $79

    or [hl]                                       ; $4f60: $b6
    ld a, [hl]                                    ; $4f61: $7e
    xor $50                                       ; $4f62: $ee $50
    jp c, Jump_06d_451f                           ; $4f64: $da $1f $45

    dec e                                         ; $4f67: $1d
    di                                            ; $4f68: $f3

jr_06d_4f69:
    ld l, b                                       ; $4f69: $68
    ld b, e                                       ; $4f6a: $43
    jr jr_06d_4f87                                ; $4f6b: $18 $1a

    jp c, Jump_06d_64c8                           ; $4f6d: $da $c8 $64

    or b                                          ; $4f70: $b0
    db $ed                                        ; $4f71: $ed
    nop                                           ; $4f72: $00
    rra                                           ; $4f73: $1f

Jump_06d_4f74:
    adc [hl]                                      ; $4f74: $8e
    ld h, [hl]                                    ; $4f75: $66
    ld l, h                                       ; $4f76: $6c
    db $fd                                        ; $4f77: $fd
    inc h                                         ; $4f78: $24
    or c                                          ; $4f79: $b1
    ld a, c                                       ; $4f7a: $79
    inc e                                         ; $4f7b: $1c
    db $eb                                        ; $4f7c: $eb
    or b                                          ; $4f7d: $b0
    or h                                          ; $4f7e: $b4
    call nc, $c868                                ; $4f7f: $d4 $68 $c8
    ld [c], a                                     ; $4f82: $e2
    reti                                          ; $4f83: $d9


    ld c, $ef                                     ; $4f84: $0e $ef
    ld l, c                                       ; $4f86: $69

jr_06d_4f87:
    sbc h                                         ; $4f87: $9c
    ld b, [hl]                                    ; $4f88: $46
    cp d                                          ; $4f89: $ba
    ld b, $12                                     ; $4f8a: $06 $12
    xor e                                         ; $4f8c: $ab
    or h                                          ; $4f8d: $b4
    ld h, $d7                                     ; $4f8e: $26 $d7
    sub l                                         ; $4f90: $95
    ld c, a                                       ; $4f91: $4f
    ld b, [hl]                                    ; $4f92: $46
    cp a                                          ; $4f93: $bf
    sbc b                                         ; $4f94: $98
    inc hl                                        ; $4f95: $23
    or a                                          ; $4f96: $b7
    inc bc                                        ; $4f97: $03
    ld l, a                                       ; $4f98: $6f
    pop de                                        ; $4f99: $d1
    add hl, bc                                    ; $4f9a: $09
    adc d                                         ; $4f9b: $8a
    db $d3                                        ; $4f9c: $d3
    jr jr_06d_4f69                                ; $4f9d: $18 $ca

    call nc, Call_000_2cc8                        ; $4f9f: $d4 $c8 $2c
    sbc [hl]                                      ; $4fa2: $9e
    ld a, [de]                                    ; $4fa3: $1a
    sub $ed                                       ; $4fa4: $d6 $ed
    ld a, d                                       ; $4fa6: $7a

Jump_06d_4fa7:
    ld d, $2a                                     ; $4fa7: $16 $2a
    cp d                                          ; $4fa9: $ba
    rst $00                                       ; $4faa: $c7
    ld [hl], e                                    ; $4fab: $73
    sbc a                                         ; $4fac: $9f
    db $ed                                        ; $4fad: $ed
    nop                                           ; $4fae: $00
    scf                                           ; $4faf: $37
    ld b, a                                       ; $4fb0: $47
    sbc [hl]                                      ; $4fb1: $9e
    dec d                                         ; $4fb2: $15
    dec hl                                        ; $4fb3: $2b
    ld a, e                                       ; $4fb4: $7b
    inc [hl]                                      ; $4fb5: $34
    rst $38                                       ; $4fb6: $ff
    ld c, [hl]                                    ; $4fb7: $4e
    xor c                                         ; $4fb8: $a9
    ld sp, $99b8                                  ; $4fb9: $31 $b8 $99
    xor [hl]                                      ; $4fbc: $ae
    ld hl, $4e2d                                  ; $4fbd: $21 $2d $4e
    dec a                                         ; $4fc0: $3d
    dec de                                        ; $4fc1: $1b
    ld l, c                                       ; $4fc2: $69
    ld l, [hl]                                    ; $4fc3: $6e
    ld h, l                                       ; $4fc4: $65
    sbc b                                         ; $4fc5: $98
    and b                                         ; $4fc6: $a0
    ld d, a                                       ; $4fc7: $57
    ld h, c                                       ; $4fc8: $61
    or $d3                                        ; $4fc9: $f6 $d3
    sub $b7                                       ; $4fcb: $d6 $b7

jr_06d_4fcd:
    reti                                          ; $4fcd: $d9


    rst $38                                       ; $4fce: $ff
    db $ec                                        ; $4fcf: $ec
    ld de, $34c5                                  ; $4fd0: $11 $c5 $34
    ld a, [de]                                    ; $4fd3: $1a
    add h                                         ; $4fd4: $84
    ret c                                         ; $4fd5: $d8

    push bc                                       ; $4fd6: $c5
    or e                                          ; $4fd7: $b3
    dec e                                         ; $4fd8: $1d

jr_06d_4fd9:
    rst $20                                       ; $4fd9: $e7
    ld a, [de]                                    ; $4fda: $1a
    add e                                         ; $4fdb: $83
    db $eb                                        ; $4fdc: $eb
    ld e, b                                       ; $4fdd: $58
    ld c, a                                       ; $4fde: $4f
    ret                                           ; $4fdf: $c9


    ld d, b                                       ; $4fe0: $50
    xor [hl]                                      ; $4fe1: $ae
    ret                                           ; $4fe2: $c9


    ret z                                         ; $4fe3: $c8

    ld a, [hl]                                    ; $4fe4: $7e
    inc b                                         ; $4fe5: $04
    cp l                                          ; $4fe6: $bd
    ld a, $31                                     ; $4fe7: $3e $31
    jp nc, Jump_06d_5eb6                          ; $4fe9: $d2 $b6 $5e

    sbc c                                         ; $4fec: $99
    inc e                                         ; $4fed: $1c
    ld d, a                                       ; $4fee: $57
    ld c, [hl]                                    ; $4fef: $4e
    ld l, h                                       ; $4ff0: $6c
    ld h, h                                       ; $4ff1: $64
    adc [hl]                                      ; $4ff2: $8e
    ret z                                         ; $4ff3: $c8

    ld a, [hl]                                    ; $4ff4: $7e
    or [hl]                                       ; $4ff5: $b6
    inc bc                                        ; $4ff6: $03
    rst $20                                       ; $4ff7: $e7
    ld a, [de]                                    ; $4ff8: $1a
    pop de                                        ; $4ff9: $d1
    dec bc                                        ; $4ffa: $0b
    ld b, l                                       ; $4ffb: $45
    inc hl                                        ; $4ffc: $23
    ld c, l                                       ; $4ffd: $4d
    ld [hl], d                                    ; $4ffe: $72
    add hl, de                                    ; $4fff: $19
    ld a, [$ede7]                                 ; $5000: $fa $e7 $ed
    ld b, $12                                     ; $5003: $06 $12
    ei                                            ; $5005: $fb
    rra                                           ; $5006: $1f
    ld a, c                                       ; $5007: $79
    ld d, [hl]                                    ; $5008: $56
    and $68                                       ; $5009: $e6 $68
    inc a                                         ; $500b: $3c
    and c                                         ; $500c: $a1
    ld l, b                                       ; $500d: $68
    add h                                         ; $500e: $84
    ld d, c                                       ; $500f: $51
    add h                                         ; $5010: $84
    xor [hl]                                      ; $5011: $ae
    inc l                                         ; $5012: $2c
    rst $00                                       ; $5013: $c7
    add l                                         ; $5014: $85

jr_06d_5015:
    dec sp                                        ; $5015: $3b
    inc hl                                        ; $5016: $23
    or [hl]                                       ; $5017: $b6
    ld e, [hl]                                    ; $5018: $5e
    sbc c                                         ; $5019: $99
    inc e                                         ; $501a: $1c
    ld d, a                                       ; $501b: $57
    ld c, [hl]                                    ; $501c: $4e
    jr nc, jr_06d_4fcd                            ; $501d: $30 $ae

    add $65                                       ; $501f: $c6 $65
    ret z                                         ; $5021: $c8

    ld a, [hl]                                    ; $5022: $7e
    ld a, [$c374]                                 ; $5023: $fa $74 $c3
    ret                                           ; $5026: $c9


    ld [hl], c                                    ; $5027: $71
    ld [$4d59], a                                 ; $5028: $ea $59 $4d
    xor b                                         ; $502b: $a8
    add h                                         ; $502c: $84
    and d                                         ; $502d: $a2
    ld [hl], c                                    ; $502e: $71
    inc a                                         ; $502f: $3c
    ld a, [$ede7]                                 ; $5030: $fa $e7 $ed
    ld b, $12                                     ; $5033: $06 $12
    ei                                            ; $5035: $fb
    rra                                           ; $5036: $1f
    ld a, c                                       ; $5037: $79
    sub $ff                                       ; $5038: $d6 $ff
    db $ec                                        ; $503a: $ec
    ld de, $a556                                  ; $503b: $11 $56 $a5
    ld l, e                                       ; $503e: $6b
    and h                                         ; $503f: $a4
    cp c                                          ; $5040: $b9
    sub l                                         ; $5041: $95
    ld h, c                                       ; $5042: $61
    push de                                       ; $5043: $d5
    add h                                         ; $5044: $84
    ld b, [hl]                                    ; $5045: $46
    jr jr_06d_508d                                ; $5046: $18 $45

    ret c                                         ; $5048: $d8

    ld c, $3f                                     ; $5049: $0e $3f
    rst $00                                       ; $504b: $c7
    push hl                                       ; $504c: $e5
    and [hl]                                      ; $504d: $a6
    pop de                                        ; $504e: $d1
    jr nz, jr_06d_5015                            ; $504f: $20 $c4

    ld l, $1e                                     ; $5051: $2e $1e
    ld b, c                                       ; $5053: $41
    xor a                                         ; $5054: $af
    jp nz, $a7ec                                  ; $5055: $c2 $ec $a7

    xor l                                         ; $5058: $ad
    scf                                           ; $5059: $37
    ld b, a                                       ; $505a: $47
    sbc [hl]                                      ; $505b: $9e
    push af                                       ; $505c: $f5
    ld b, d                                       ; $505d: $42
    and a                                         ; $505e: $a7
    and c                                         ; $505f: $a1
    dec l                                         ; $5060: $2d
    rst $00                                       ; $5061: $c7
    ld h, l                                       ; $5062: $65
    ld d, e                                       ; $5063: $53
    db $f4                                        ; $5064: $f4
    ccf                                           ; $5065: $3f
    ld a, e                                       ; $5066: $7b
    add h                                         ; $5067: $84
    ld d, l                                       ; $5068: $55
    adc [hl]                                      ; $5069: $8e
    dec hl                                        ; $506a: $2b
    ld a, [de]                                    ; $506b: $1a
    ld h, c                                       ; $506c: $61
    inc d                                         ; $506d: $14
    and c                                         ; $506e: $a1
    ld [hl], d                                    ; $506f: $72
    ld e, h                                       ; $5070: $5c
    cp b                                          ; $5071: $b8
    inc sp                                        ; $5072: $33
    ld h, d                                       ; $5073: $62
    db $eb                                        ; $5074: $eb
    sub l                                         ; $5075: $95
    ld [hl], c                                    ; $5076: $71

jr_06d_5077:
    ld d, e                                       ; $5077: $53
    and e                                         ; $5078: $a3
    inc e                                         ; $5079: $1c
    rla                                           ; $507a: $17
    ld [hl-], a                                   ; $507b: $32
    dec hl                                        ; $507c: $2b
    ld a, [$791f]                                 ; $507d: $fa $1f $79
    sub $3f                                       ; $5080: $d6 $3f
    ld d, [hl]                                    ; $5082: $56
    ld de, $b31a                                  ; $5083: $11 $1a $b3
    and a                                         ; $5086: $a7
    push de                                       ; $5087: $d5
    daa                                           ; $5088: $27
    ld l, b                                       ; $5089: $68
    ld b, l                                       ; $508a: $45
    rst $30                                       ; $508b: $f7
    sbc b                                         ; $508c: $98

jr_06d_508d:
    ld c, e                                       ; $508d: $4b
    dec sp                                        ; $508e: $3b
    or h                                          ; $508f: $b4
    sbc [hl]                                      ; $5090: $9e
    dec c                                         ; $5091: $0d
    rst $20                                       ; $5092: $e7
    ld [c], a                                     ; $5093: $e2
    cp l                                          ; $5094: $bd
    call nc, $37ad                                ; $5095: $d4 $ad $37
    add e                                         ; $5098: $83
    dec de                                        ; $5099: $1b
    jp c, Jump_06d_64c8                           ; $509a: $da $c8 $64

    or b                                          ; $509d: $b0
    ld c, [hl]                                    ; $509e: $4e
    ld b, e                                       ; $509f: $43
    dec de                                        ; $50a0: $1b
    ld de, $c755                                  ; $50a1: $11 $55 $c7
    ld a, d                                       ; $50a4: $7a
    inc hl                                        ; $50a5: $23
    inc hl                                        ; $50a6: $23
    ld h, h                                       ; $50a7: $64
    ld e, c                                       ; $50a8: $59
    cp a                                          ; $50a9: $bf
    ld c, [hl]                                    ; $50aa: $4e
    jr z, jr_06d_5077                             ; $50ab: $28 $ca

    sbc l                                         ; $50ad: $9d
    dec c                                         ; $50ae: $0d
    inc h                                         ; $50af: $24
    sub [hl]                                      ; $50b0: $96
    xor c                                         ; $50b1: $a9
    ld d, e                                       ; $50b2: $53
    add a                                         ; $50b3: $87

jr_06d_50b4:
    db $ec                                        ; $50b4: $ec
    cp c                                          ; $50b5: $b9
    or [hl]                                       ; $50b6: $b6
    inc bc                                        ; $50b7: $03
    rst $10                                       ; $50b8: $d7
    ld l, l                                       ; $50b9: $6d
    ld b, h                                       ; $50ba: $44
    ld d, h                                       ; $50bb: $54
    dec e                                         ; $50bc: $1d
    db $eb                                        ; $50bd: $eb
    adc l                                         ; $50be: $8d
    adc h                                         ; $50bf: $8c
    sub b                                         ; $50c0: $90
    ld l, a                                       ; $50c1: $6f
    ld e, h                                       ; $50c2: $5c
    ld a, [hl-]                                   ; $50c3: $3a
    nop                                           ; $50c4: $00
    ld l, a                                       ; $50c5: $6f
    or e                                          ; $50c6: $b3
    add c                                         ; $50c7: $81
    ld b, h                                       ; $50c8: $44
    ld d, a                                       ; $50c9: $57
    add a                                         ; $50ca: $87
    and l                                         ; $50cb: $a5
    db $fd                                        ; $50cc: $fd
    adc a                                         ; $50cd: $8f
    inc a                                         ; $50ce: $3c
    dec hl                                        ; $50cf: $2b
    ld b, d                                       ; $50d0: $42
    ld h, e                                       ; $50d1: $63
    or $b4                                        ; $50d2: $f6 $b4
    add l                                         ; $50d4: $85
    ld a, [de]                                    ; $50d5: $1a
    dec h                                         ; $50d6: $25
    ld d, a                                       ; $50d7: $57
    add h                                         ; $50d8: $84
    ld [hl], $84                                  ; $50d9: $36 $84
    and c                                         ; $50db: $a1
    pop hl                                        ; $50dc: $e1
    ld e, h                                       ; $50dd: $5c
    cp h                                          ; $50de: $bc
    sub a                                         ; $50df: $97
    ld a, [$cf46]                                 ; $50e0: $fa $46 $cf
    ld [hl], a                                    ; $50e3: $77
    sub $f3                                       ; $50e4: $d6 $f3
    rst $08                                       ; $50e6: $cf
    ld d, d                                       ; $50e7: $52
    inc hl                                        ; $50e8: $23
    xor h                                         ; $50e9: $ac
    ld [hl], h                                    ; $50ea: $74
    ld d, l                                       ; $50eb: $55
    and [hl]                                      ; $50ec: $a6
    ld d, d                                       ; $50ed: $52
    and l                                         ; $50ee: $a5
    xor l                                         ; $50ef: $ad
    ld a, b                                       ; $50f0: $78
    adc a                                         ; $50f1: $8f
    xor l                                         ; $50f2: $ad
    add hl, hl                                    ; $50f3: $29
    ld c, d                                       ; $50f4: $4a
    adc l                                         ; $50f5: $8d
    xor b                                         ; $50f6: $a8
    ld a, b                                       ; $50f7: $78
    inc c                                         ; $50f8: $0c
    ld e, e                                       ; $50f9: $5b
    cpl                                           ; $50fa: $2f
    sbc a                                         ; $50fb: $9f
    add $d0                                       ; $50fc: $c6 $d0
    ld a, a                                       ; $50fe: $7f
    ld [hl], b                                    ; $50ff: $70
    sub c                                         ; $5100: $91
    dec a                                         ; $5101: $3d
    or d                                          ; $5102: $b2
    sbc a                                         ; $5103: $9f
    db $ed                                        ; $5104: $ed
    nop                                           ; $5105: $00
    rra                                           ; $5106: $1f
    scf                                           ; $5107: $37
    sub b                                         ; $5108: $90
    ret c                                         ; $5109: $d8

    rst $38                                       ; $510a: $ff
    ret z                                         ; $510b: $c8

    or e                                          ; $510c: $b3
    ld b, $12                                     ; $510d: $06 $12
    ld c, l                                       ; $510f: $4d
    ret nc                                        ; $5110: $d0

    db $eb                                        ; $5111: $eb
    inc de                                        ; $5112: $13
    inc hl                                        ; $5113: $23
    db $ed                                        ; $5114: $ed
    adc l                                         ; $5115: $8d
    inc bc                                        ; $5116: $03
    rst $20                                       ; $5117: $e7
    xor c                                         ; $5118: $a9
    and d                                         ; $5119: $a2
    or h                                          ; $511a: $b4
    ld a, [hl-]                                   ; $511b: $3a
    dec c                                         ; $511c: $0d
    ld l, l                                       ; $511d: $6d
    add hl, sp                                    ; $511e: $39
    ld l, $9b                                     ; $511f: $2e $9b
    and d                                         ; $5121: $a2
    sub c                                         ; $5122: $91
    and $56                                       ; $5123: $e6 $56
    add [hl]                                      ; $5125: $86
    dec d                                         ; $5126: $15
    adc l                                         ; $5127: $8d
    jr nc, jr_06d_50b4                            ; $5128: $30 $8a

    ld d, b                                       ; $512a: $50
    rst $08                                       ; $512b: $cf
    ld e, [hl]                                    ; $512c: $5e
    and l                                         ; $512d: $a5
    add hl, bc                                    ; $512e: $09
    ld h, a                                       ; $512f: $67
    sbc a                                         ; $5130: $9f
    db $d3                                        ; $5131: $d3
    ld b, d                                       ; $5132: $42
    ld e, c                                       ; $5133: $59
    inc [hl]                                      ; $5134: $34
    or h                                          ; $5135: $b4
    ld de, $7551                                  ; $5136: $11 $51 $75
    inc c                                         ; $5139: $0c
    cp l                                          ; $513a: $bd
    ld de, $a4da                                  ; $513b: $11 $da $a4
    ld e, b                                       ; $513e: $58
    rst $00                                       ; $513f: $c7
    ld a, [hl-]                                   ; $5140: $3a
    ld h, h                                       ; $5141: $64
    ccf                                           ; $5142: $3f
    xor c                                         ; $5143: $a9
    ld [$d5a4], sp                                ; $5144: $08 $a4 $d5
    db $10                                        ; $5147: $10
    add [hl]                                      ; $5148: $86
    ld a, [de]                                    ; $5149: $1a
    dec h                                         ; $514a: $25
    add l                                         ; $514b: $85
    or h                                          ; $514c: $b4
    ld a, [$ad04]                                 ; $514d: $fa $04 $ad
    ld d, c                                       ; $5150: $51
    ld [hl], d                                    ; $5151: $72
    ld b, l                                       ; $5152: $45
    ld l, b                                       ; $5153: $68
    dec a                                         ; $5154: $3d
    dec de                                        ; $5155: $1b
    adc $c5                                       ; $5156: $ce $c5
    rst $18                                       ; $5158: $df
    xor c                                         ; $5159: $a9
    inc e                                         ; $515a: $1c
    scf                                           ; $515b: $37
    dec [hl]                                      ; $515c: $35
    jp z, $2171                                   ; $515d: $ca $71 $21

    or e                                          ; $5160: $b3
    ld h, d                                       ; $5161: $62
    dec sp                                        ; $5162: $3b
    nop                                           ; $5163: $00
    rst $20                                       ; $5164: $e7
    dec sp                                        ; $5165: $3b
    xor d                                         ; $5166: $aa
    ld [hl], h                                    ; $5167: $74
    and c                                         ; $5168: $a1
    or c                                          ; $5169: $b1
    and d                                         ; $516a: $a2
    ld e, c                                       ; $516b: $59
    dec a                                         ; $516c: $3d
    ld sp, $46d3                                  ; $516d: $31 $d3 $46
    ld d, c                                       ; $5170: $51
    ld c, a                                       ; $5171: $4f
    add a                                         ; $5172: $87
    and l                                         ; $5173: $a5
    ld e, e                                       ; $5174: $5b
    xor a                                         ; $5175: $af
    or c                                          ; $5176: $b1
    ld l, [hl]                                    ; $5177: $6e
    inc [hl]                                      ; $5178: $34
    ld a, [de]                                    ; $5179: $1a
    xor e                                         ; $517a: $ab
    add hl, bc                                    ; $517b: $09
    dec a                                         ; $517c: $3d
    rst $08                                       ; $517d: $cf
    ld [hl], d                                    ; $517e: $72
    ret                                           ; $517f: $c9


    ld a, l                                       ; $5180: $7d
    jp nz, Jump_06d_7e0b                          ; $5181: $c2 $0b $7e

    ld b, c                                       ; $5184: $41
    ret nc                                        ; $5185: $d0

    db $eb                                        ; $5186: $eb
    inc de                                        ; $5187: $13
    inc hl                                        ; $5188: $23
    ld l, l                                       ; $5189: $6d
    dec sp                                        ; $518a: $3b
    nop                                           ; $518b: $00
    sub a                                         ; $518c: $97
    rst $28                                       ; $518d: $ef
    ld l, $35                                     ; $518e: $2e $35
    cp $4e                                        ; $5190: $fe $4e
    dec [hl]                                      ; $5192: $35
    ld b, c                                       ; $5193: $41
    dec hl                                        ; $5194: $2b
    cp d                                          ; $5195: $ba
    rst $00                                       ; $5196: $c7
    ld e, h                                       ; $5197: $5c
    jp c, $82a1                                   ; $5198: $da $a1 $82

    ld e, [hl]                                    ; $519b: $5e
    sbc a                                         ; $519c: $9f
    jr jr_06d_5208                                ; $519d: $18 $69

    ld e, e                                       ; $519f: $5b
    cpl                                           ; $51a0: $2f
    sbc a                                         ; $51a1: $9f
    add $50                                       ; $51a2: $c6 $50
    push bc                                       ; $51a4: $c5
    ld b, d                                       ; $51a5: $42
    db $fd                                        ; $51a6: $fd
    call nc, $9531                                ; $51a7: $d4 $31 $95
    ld a, [hl+]                                   ; $51aa: $2a
    ld l, l                                       ; $51ab: $6d
    push bc                                       ; $51ac: $c5
    ld a, e                                       ; $51ad: $7b
    ld l, h                                       ; $51ae: $6c
    call Call_000_0076                            ; $51af: $cd $76 $00
    rst $20                                       ; $51b2: $e7
    xor c                                         ; $51b3: $a9
    ld [hl], d                                    ; $51b4: $72
    or d                                          ; $51b5: $b2
    ld a, [c]                                     ; $51b6: $f2
    sub h                                         ; $51b7: $94
    ld d, [hl]                                    ; $51b8: $56
    db $e3                                        ; $51b9: $e3
    ld hl, sp-$2f                                 ; $51ba: $f8 $d1
    ld [hl], d                                    ; $51bc: $72
    and a                                         ; $51bd: $a7
    ld e, [hl]                                    ; $51be: $5e
    ld [$aa79], a                                 ; $51bf: $ea $79 $aa
    ld c, [hl]                                    ; $51c2: $4e
    ld [$6db6], a                                 ; $51c3: $ea $b6 $6d
    dec e                                         ; $51c6: $1d
    or c                                          ; $51c7: $b1
    and b                                         ; $51c8: $a0
    ld d, a                                       ; $51c9: $57
    ld h, c                                       ; $51ca: $61
    or $d3                                        ; $51cb: $f6 $d3
    sub $f3                                       ; $51cd: $d6 $f3
    call nc, Call_06d_5990                        ; $51cf: $d4 $90 $59
    cp c                                          ; $51d2: $b9
    ld a, [de]                                    ; $51d3: $1a
    ld c, b                                       ; $51d4: $48
    xor h                                         ; $51d5: $ac
    jp nc, $8a16                                  ; $51d6: $d2 $16 $8a

    add [hl]                                      ; $51d9: $86
    or [hl]                                       ; $51da: $b6
    inc e                                         ; $51db: $1c
    sub a                                         ; $51dc: $97
    and c                                         ; $51dd: $a1
    ld l, b                                       ; $51de: $68
    and h                                         ; $51df: $a4
    cp c                                          ; $51e0: $b9
    sub l                                         ; $51e1: $95
    ld h, c                                       ; $51e2: $61
    ld b, l                                       ; $51e3: $45
    inc hl                                        ; $51e4: $23
    adc h                                         ; $51e5: $8c
    ld [hl+], a                                   ; $51e6: $22
    ld l, h                                       ; $51e7: $6c
    rlca                                          ; $51e8: $07
    rra                                           ; $51e9: $1f
    db $fd                                        ; $51ea: $fd
    adc [hl]                                      ; $51eb: $8e
    and b                                         ; $51ec: $a0
    ld d, a                                       ; $51ed: $57
    ld h, c                                       ; $51ee: $61
    or $53                                        ; $51ef: $f6 $53
    ld b, l                                       ; $51f1: $45
    or e                                          ; $51f2: $b3
    ld a, [hl-]                                   ; $51f3: $3a
    dec c                                         ; $51f4: $0d
    ld l, l                                       ; $51f5: $6d
    add hl, sp                                    ; $51f6: $39
    ld l, $9b                                     ; $51f7: $2e $9b
    or d                                          ; $51f9: $b2
    daa                                           ; $51fa: $27
    ld h, h                                       ; $51fb: $64
    pop af                                        ; $51fc: $f1
    and h                                         ; $51fd: $a4
    ld h, $87                                     ; $51fe: $26 $87
    ld a, [de]                                    ; $5200: $1a
    push hl                                       ; $5201: $e5
    cp b                                          ; $5202: $b8
    sub b                                         ; $5203: $90
    ld e, c                                       ; $5204: $59
    ld d, c                                       ; $5205: $51
    ld l, d                                       ; $5206: $6a
    ld c, b                                       ; $5207: $48

jr_06d_5208:
    cp c                                          ; $5208: $b9
    or b                                          ; $5209: $b0
    ld l, a                                       ; $520a: $6f
    rlca                                          ; $520b: $07
    rst $10                                       ; $520c: $d7
    and b                                         ; $520d: $a0
    add d                                         ; $520e: $82
    ld [hl-], a                                   ; $520f: $32
    push af                                       ; $5210: $f5
    add h                                         ; $5211: $84
    inc l                                         ; $5212: $2c
    sbc [hl]                                      ; $5213: $9e
    ld h, d                                       ; $5214: $62
    ccf                                           ; $5215: $3f
    dec h                                         ; $5216: $25
    add a                                         ; $5217: $87
    jp z, $8a59                                   ; $5218: $ca $59 $8a

    add [hl]                                      ; $521b: $86
    ld h, e                                       ; $521c: $63
    ld d, l                                       ; $521d: $55
    ld e, d                                       ; $521e: $5a
    ld d, c                                       ; $521f: $51
    push hl                                       ; $5220: $e5
    add hl, hl                                    ; $5221: $29
    ld h, l                                       ; $5222: $65
    adc a                                         ; $5223: $8f
    scf                                           ; $5224: $37
    ld c, $6f                                     ; $5225: $0e $6f
    pop de                                        ; $5227: $d1
    add hl, bc                                    ; $5228: $09
    ld a, [hl+]                                   ; $5229: $2a
    rst $00                                       ; $522a: $c7
    ld c, l                                       ; $522b: $4d
    rst $38                                       ; $522c: $ff
    inc hl                                        ; $522d: $23
    rst $08                                       ; $522e: $cf
    xor d                                         ; $522f: $aa
    db $10                                        ; $5230: $10
    or d                                          ; $5231: $b2
    ld de, $4e39                                  ; $5232: $11 $39 $4e
    ld [hl], l                                    ; $5235: $75
    add h                                         ; $5236: $84
    add $5e                                       ; $5237: $c6 $5e
    and l                                         ; $5239: $a5
    add hl, bc                                    ; $523a: $09
    ld h, a                                       ; $523b: $67
    sbc a                                         ; $523c: $9f
    db $d3                                        ; $523d: $d3
    add d                                         ; $523e: $82
    and b                                         ; $523f: $a0
    rst $38                                       ; $5240: $ff
    sub c                                         ; $5241: $91
    ld h, a                                       ; $5242: $67
    dec d                                         ; $5243: $15
    pop bc                                        ; $5244: $c1
    ld d, $9a                                     ; $5245: $16 $9a
    ld e, h                                       ; $5247: $5c
    rst $28                                       ; $5248: $ef
    adc c                                         ; $5249: $89
    bit 1, l                                      ; $524a: $cb $4d
    and e                                         ; $524c: $a3
    ld b, c                                       ; $524d: $41
    adc b                                         ; $524e: $88
    ld e, l                                       ; $524f: $5d
    inc a                                         ; $5250: $3c
    sub l                                         ; $5251: $95
    ld l, c                                       ; $5252: $69
    ld a, c                                       ; $5253: $79
    ld h, h                                       ; $5254: $64
    ccf                                           ; $5255: $3f
    push af                                       ; $5256: $f5
    db $d3                                        ; $5257: $d3
    rst $28                                       ; $5258: $ef
    ld h, c                                       ; $5259: $61
    ld a, [hl]                                    ; $525a: $7e
    cp c                                          ; $525b: $b9
    xor l                                         ; $525c: $ad
    rra                                           ; $525d: $1f
    db $fd                                        ; $525e: $fd
    ld c, [hl]                                    ; $525f: $4e
    sub l                                         ; $5260: $95
    or [hl]                                       ; $5261: $b6
    ld d, b                                       ; $5262: $50
    cp a                                          ; $5263: $bf
    cp $b4                                        ; $5264: $fe $b4
    cp b                                          ; $5266: $b8
    db $fc                                        ; $5267: $fc
    cp h                                          ; $5268: $bc
    ld [hl], c                                    ; $5269: $71
    nop                                           ; $526a: $00
    rst $10                                       ; $526b: $d7
    and b                                         ; $526c: $a0
    db $dd                                        ; $526d: $dd
    or [hl]                                       ; $526e: $b6
    db $ed                                        ; $526f: $ed
    nop                                           ; $5270: $00
    rst $10                                       ; $5271: $d7
    ld h, c                                       ; $5272: $61
    db $10                                        ; $5273: $10
    ld e, [hl]                                    ; $5274: $5e
    ret z                                         ; $5275: $c8

    ld a, [hl+]                                   ; $5276: $2a
    add sp, $55                                   ; $5277: $e8 $55
    sbc d                                         ; $5279: $9a
    ld e, e                                       ; $527a: $5b
    sub e                                         ; $527b: $93
    cp c                                          ; $527c: $b9
    dec e                                         ; $527d: $1d
    rst $20                                       ; $527e: $e7
    xor c                                         ; $527f: $a9
    call nc, Call_000_3690                        ; $5280: $d4 $90 $36
    call Call_06d_53bf                            ; $5283: $cd $bf $53
    and l                                         ; $5286: $a5
    dec d                                         ; $5287: $15
    ei                                            ; $5288: $fb
    dec b                                         ; $5289: $05
    dec sp                                        ; $528a: $3b
    dec l                                         ; $528b: $2d
    add hl, sp                                    ; $528c: $39
    ld b, l                                       ; $528d: $45
    inc sp                                        ; $528e: $33
    or e                                          ; $528f: $b3
    jr c, jr_06d_52cb                             ; $5290: $38 $39

    call nc, Call_000_1553                        ; $5292: $d4 $53 $15
    ld e, d                                       ; $5295: $5a

jr_06d_5296:
    jp c, $ba1f                                   ; $5296: $da $1f $ba

    dec e                                         ; $5299: $1d
    sbc a                                         ; $529a: $9f
    inc h                                         ; $529b: $24
    inc l                                         ; $529c: $2c
    ld l, l                                       ; $529d: $6d
    ld c, h                                       ; $529e: $4c
    and d                                         ; $529f: $a2
    pop de                                        ; $52a0: $d1
    ld a, d                                       ; $52a1: $7a
    or $64                                        ; $52a2: $f6 $64
    ld [hl], b                                    ; $52a4: $70
    xor b                                         ; $52a5: $a8
    cp $4e                                        ; $52a6: $fe $4e
    ld b, a                                       ; $52a8: $47
    ld c, e                                       ; $52a9: $4b
    adc l                                         ; $52aa: $8d
    add [hl]                                      ; $52ab: $86
    inc l                                         ; $52ac: $2c
    ld e, $7d                                     ; $52ad: $1e $7d
    db $e3                                        ; $52af: $e3
    nop                                           ; $52b0: $00
    rst $10                                       ; $52b1: $d7
    ld d, [hl]                                    ; $52b2: $56
    ld d, $a3                                     ; $52b3: $16 $a3
    ld hl, sp-$21                                 ; $52b5: $f8 $df
    ld d, e                                       ; $52b7: $53
    add hl, sp                                    ; $52b8: $39
    ld a, [de]                                    ; $52b9: $1a
    sub e                                         ; $52ba: $93
    jp $951f                                      ; $52bb: $c3 $1f $95


    or e                                          ; $52be: $b3
    adc a                                         ; $52bf: $8f
    add h                                         ; $52c0: $84
    dec d                                         ; $52c1: $15
    ei                                            ; $52c2: $fb
    add hl, hl                                    ; $52c3: $29
    ld h, l                                       ; $52c4: $65
    xor l                                         ; $52c5: $ad
    and a                                         ; $52c6: $a7
    ld a, [hl+]                                   ; $52c7: $2a
    or l                                          ; $52c8: $b5
    dec hl                                        ; $52c9: $2b
    sbc a                                         ; $52ca: $9f

jr_06d_52cb:
    adc h                                         ; $52cb: $8c
    ld a, [hl]                                    ; $52cc: $7e
    ld sp, $6a47                                  ; $52cd: $31 $47 $6a
    inc sp                                        ; $52d0: $33
    xor d                                         ; $52d1: $aa
    inc de                                        ; $52d2: $13
    ld h, d                                       ; $52d3: $62
    dec sp                                        ; $52d4: $3b
    nop                                           ; $52d5: $00
    sub a                                         ; $52d6: $97
    and l                                         ; $52d7: $a5
    ld a, b                                       ; $52d8: $78
    ld a, [de]                                    ; $52d9: $1a
    ld c, b                                       ; $52da: $48
    xor h                                         ; $52db: $ac
    jr c, jr_06d_5296                             ; $52dc: $38 $b8

    add c                                         ; $52de: $81
    add h                                         ; $52df: $84
    ld l, b                                       ; $52e0: $68
    db $d3                                        ; $52e1: $d3
    sbc b                                         ; $52e2: $98
    ld b, h                                       ; $52e3: $44
    and e                                         ; $52e4: $a3
    push af                                       ; $52e5: $f5
    db $ec                                        ; $52e6: $ec
    ret                                           ; $52e7: $c9


    ldh [$50], a                                  ; $52e8: $e0 $50
    add hl, sp                                    ; $52ea: $39
    xor [hl]                                      ; $52eb: $ae
    dec hl                                        ; $52ec: $2b
    sbc a                                         ; $52ed: $9f
    adc h                                         ; $52ee: $8c
    ld a, [hl]                                    ; $52ef: $7e
    ld sp, $aa47                                  ; $52f0: $31 $47 $aa
    and b                                         ; $52f3: $a0
    ld c, $da                                     ; $52f4: $0e $da
    db $fc                                        ; $52f6: $fc
    dec sp                                        ; $52f7: $3b
    adc l                                         ; $52f8: $8d
    call z, $a9e2                                 ; $52f9: $cc $e2 $a9
    and h                                         ; $52fc: $a4
    ld b, l                                       ; $52fd: $45
    sbc $c6                                       ; $52fe: $de $c6
    halt                                          ; $5300: $76
    nop                                           ; $5301: $00
    rst $20                                       ; $5302: $e7
    xor c                                         ; $5303: $a9
    ld [$e347], sp                                ; $5304: $08 $47 $e3
    inc [hl]                                      ; $5307: $34
    sub b                                         ; $5308: $90
    ret c                                         ; $5309: $d8

    rst $38                                       ; $530a: $ff
    ret z                                         ; $530b: $c8

    or e                                          ; $530c: $b3
    cp $b1                                        ; $530d: $fe $b1
    jp z, $272c                                   ; $530f: $ca $2c $27

    ld b, a                                       ; $5312: $47
    add e                                         ; $5313: $83
    sub l                                         ; $5314: $95
    or $87                                        ; $5315: $f6 $87
    ld [hl], $4f                                  ; $5317: $36 $4f
    cp a                                          ; $5319: $bf
    add a                                         ; $531a: $87
    ld sp, hl                                     ; $531b: $f9
    push hl                                       ; $531c: $e5
    or [hl]                                       ; $531d: $b6
    inc bc                                        ; $531e: $03
    rra                                           ; $531f: $1f
    cpl                                           ; $5320: $2f
    ld b, c                                       ; $5321: $41
    ccf                                           ; $5322: $3f
    ld [c], a                                     ; $5323: $e2
    ld a, a                                       ; $5324: $7f
    db $ed                                        ; $5325: $ed
    dec sp                                        ; $5326: $3b
    or a                                          ; $5327: $b7
    inc bc                                        ; $5328: $03
    scf                                           ; $5329: $37
    call nz, Call_06d_4be2                        ; $532a: $c4 $e2 $4b
    dec a                                         ; $532d: $3d
    rst $18                                       ; $532e: $df
    ld e, c                                       ; $532f: $59
    ld l, d                                       ; $5330: $6a
    inc c                                         ; $5331: $0c
    xor [hl]                                      ; $5332: $ae
    rra                                           ; $5333: $1f
    ld [hl], e                                    ; $5334: $73

jr_06d_5335:
    dec hl                                        ; $5335: $2b
    ei                                            ; $5336: $fb
    reti                                          ; $5337: $d9


    ld c, $1f                                     ; $5338: $0e $1f
    db $fd                                        ; $533a: $fd
    adc [hl]                                      ; $533b: $8e
    and b                                         ; $533c: $a0
    ld sp, hl                                     ; $533d: $f9
    ld [hl], a                                    ; $533e: $77
    ld c, d                                       ; $533f: $4a
    adc l                                         ; $5340: $8d
    pop bc                                        ; $5341: $c1
    ld e, e                                       ; $5342: $5b
    ccf                                           ; $5343: $3f
    ld b, d                                       ; $5344: $42
    rst $38                                       ; $5345: $ff
    inc [hl]                                      ; $5346: $34
    rrca                                          ; $5347: $0f
    ld c, a                                       ; $5348: $4f
    ld b, c                                       ; $5349: $41

jr_06d_534a:
    cp c                                          ; $534a: $b9
    or e                                          ; $534b: $b3
    call nc, Call_06d_5c18                        ; $534c: $d4 $18 $5c
    cp d                                          ; $534f: $ba
    add [hl]                                      ; $5350: $86
    rla                                           ; $5351: $17
    ld a, [hl+]                                   ; $5352: $2a
    and h                                         ; $5353: $a4
    dec hl                                        ; $5354: $2b
    ld [bc], a                                    ; $5355: $02
    ld l, c                                       ; $5356: $69
    add hl, bc                                    ; $5357: $09
    ld a, [hl-]                                   ; $5358: $3a
    cp e                                          ; $5359: $bb
    jr jr_06d_5335                                ; $535a: $18 $d9

    ld c, a                                       ; $535c: $4f
    ld b, e                                       ; $535d: $43
    jr jr_06d_534a                                ; $535e: $18 $ea

    sub [hl]                                      ; $5360: $96
    db $db                                        ; $5361: $db
    ld c, $1f                                     ; $5362: $0e $1f
    db $fd                                        ; $5364: $fd

Call_06d_5365:
    ld c, [hl]                                    ; $5365: $4e
    and a                                         ; $5366: $a7
    rra                                           ; $5367: $1f
    pop af                                        ; $5368: $f1
    cp a                                          ; $5369: $bf
    or $9d                                        ; $536a: $f6 $9d
    add d                                         ; $536c: $82
    ld c, [hl]                                    ; $536d: $4e
    ld b, e                                       ; $536e: $43
    dec de                                        ; $536f: $1b
    ld de, $c755                                  ; $5370: $11 $55 $c7
    ld a, [$cad6]                                 ; $5373: $fa $d6 $ca
    ld e, c                                       ; $5376: $59
    cpl                                           ; $5377: $2f
    dec e                                         ; $5378: $1d
    ld e, a                                       ; $5379: $5f
    rst $18                                       ; $537a: $df
    cp [hl]                                       ; $537b: $be
    ld a, l                                       ; $537c: $7d
    ei                                            ; $537d: $fb
    or $ed                                        ; $537e: $f6 $ed
    db $db                                        ; $5380: $db
    or a                                          ; $5381: $b7
    cp e                                          ; $5382: $bb
    ld l, l                                       ; $5383: $6d
    db $db                                        ; $5384: $db
    ld bc, $6837                                  ; $5385: $01 $37 $68
    pop bc                                        ; $5388: $c1
    dec c                                         ; $5389: $0d

Jump_06d_538a:
    inc h                                         ; $538a: $24
    ld [hl], $df                                  ; $538b: $36 $df
    and e                                         ; $538d: $a3
    push af                                       ; $538e: $f5
    db $fc                                        ; $538f: $fc
    db $d3                                        ; $5390: $d3
    adc l                                         ; $5391: $8d
    ld d, $72                                     ; $5392: $16 $72
    call z, Call_000_3f07                         ; $5394: $cc $07 $3f
    or c                                          ; $5397: $b1
    rst $08                                       ; $5398: $cf
    dec de                                        ; $5399: $1b
    rlca                                          ; $539a: $07
    rst $20                                       ; $539b: $e7
    xor c                                         ; $539c: $a9
    ld sp, hl                                     ; $539d: $f9
    ld [hl], a                                    ; $539e: $77
    xor d                                         ; $539f: $aa
    ld e, h                                       ; $53a0: $5c
    ld d, l                                       ; $53a1: $55
    or $3f                                        ; $53a2: $f6 $3f
    ld a, [c]                                     ; $53a4: $f2
    xor h                                         ; $53a5: $ac
    ld d, a                                       ; $53a6: $57
    ld a, $fe                                     ; $53a7: $3e $fe
    add sp, -$3a                                  ; $53a9: $e8 $c6
    ld sp, hl                                     ; $53ab: $f9
    cp e                                          ; $53ac: $bb
    sbc a                                         ; $53ad: $9f
    sbc a                                         ; $53ae: $9f
    rla                                           ; $53af: $17
    ld [hl], d                                    ; $53b0: $72
    call z, $9ac3                                 ; $53b1: $cc $c3 $9a
    ld e, h                                       ; $53b4: $5c
    ld b, l                                       ; $53b5: $45
    ret z                                         ; $53b6: $c8

    ld de, $b0ea                                  ; $53b7: $11 $ea $b0
    push af                                       ; $53ba: $f5
    ld b, $fb                                     ; $53bb: $06 $fb
    rra                                           ; $53bd: $1f
    ld a, c                                       ; $53be: $79

Call_06d_53bf:
    sub $c8                                       ; $53bf: $d6 $c8
    inc e                                         ; $53c1: $1c
    and c                                         ; $53c2: $a1

Call_06d_53c3:
    jp z, Jump_000_314a                           ; $53c3: $ca $4a $31

    db $e4                                        ; $53c6: $e4
    ld h, b                                       ; $53c7: $60
    rla                                           ; $53c8: $17
    jp $9dca                                      ; $53c9: $c3 $ca $9d


    add d                                         ; $53cc: $82
    ld l, d                                       ; $53cd: $6a
    add d                                         ; $53ce: $82
    sub $fd                                       ; $53cf: $d6 $fd
    adc [hl]                                      ; $53d1: $8e
    halt                                          ; $53d2: $76
    reti                                          ; $53d3: $d9


    add d                                         ; $53d4: $82
    dec hl                                        ; $53d5: $2b
    and d                                         ; $53d6: $a2
    pop hl                                        ; $53d7: $e1
    ld c, a                                       ; $53d8: $4f
    push de                                       ; $53d9: $d5
    ldh [$27], a                                  ; $53da: $e0 $27
    or $d9                                        ; $53dc: $f6 $d9
    ld c, $5f                                     ; $53de: $0e $5f
    rst $18                                       ; $53e0: $df
    cp [hl]                                       ; $53e1: $be
    ld a, l                                       ; $53e2: $7d
    ei                                            ; $53e3: $fb
    or $ed                                        ; $53e4: $f6 $ed
    ld l, [hl]                                    ; $53e6: $6e
    db $db                                        ; $53e7: $db
    ld d, [hl]                                    ; $53e8: $56
    sub [hl]                                      ; $53e9: $96
    add hl, sp                                    ; $53ea: $39
    sub b                                         ; $53eb: $90
    sub b                                         ; $53ec: $90
    db $e3                                        ; $53ed: $e3
    ld [hl], h                                    ; $53ee: $74
    xor d                                         ; $53ef: $aa
    rla                                           ; $53f0: $17
    ld h, h                                       ; $53f1: $64
    jp c, Jump_06d_4fa7                           ; $53f2: $da $a7 $4f

    cp a                                          ; $53f5: $bf
    ld e, b                                       ; $53f6: $58
    ld h, l                                       ; $53f7: $65
    ld de, $dcda                                  ; $53f8: $11 $da $dc
    ld e, d                                       ; $53fb: $5a
    ld c, $7f                                     ; $53fc: $0e $7f
    ld [$ef9a], sp                                ; $53fe: $08 $9a $ef
    pop de                                        ; $5401: $d1
    ld a, [de]                                    ; $5402: $1a
    or c                                          ; $5403: $b1
    dec sp                                        ; $5404: $3b
    and $c8                                       ; $5405: $e6 $c8
    and $df                                       ; $5407: $e6 $df
    add hl, hl                                    ; $5409: $29
    dec [hl]                                      ; $540a: $35
    ld b, $ff                                     ; $540b: $06 $ff
    pop hl                                        ; $540d: $e1
    ld b, [hl]                                    ; $540e: $46
    dec de                                        ; $540f: $1b
    ld a, [de]                                    ; $5410: $1a
    ld b, a                                       ; $5411: $47
    and [hl]                                      ; $5412: $a6
    db $10                                        ; $5413: $10
    ld a, [hl]                                    ; $5414: $7e
    or h                                          ; $5415: $b4
    db $db                                        ; $5416: $db
    or [hl]                                       ; $5417: $b6
    push af                                       ; $5418: $f5
    ld a, [hl+]                                   ; $5419: $2a
    call z, $ea7e                                 ; $541a: $cc $7e $ea
    push af                                       ; $541d: $f5
    adc c                                         ; $541e: $89
    sub c                                         ; $541f: $91
    halt                                          ; $5420: $76
    xor c                                         ; $5421: $a9
    xor a                                         ; $5422: $af
    scf                                           ; $5423: $37
    cp $4e                                        ; $5424: $fe $4e
    add l                                         ; $5426: $85
    db $e3                                        ; $5427: $e3
    ld a, [hl+]                                   ; $5428: $2a
    ld e, d                                       ; $5429: $5a
    add hl, de                                    ; $542a: $19
    cp e                                          ; $542b: $bb
    ld h, e                                       ; $542c: $63

Call_06d_542d:
    adc [hl]                                      ; $542d: $8e
    ld l, h                                       ; $542e: $6c
    inc a                                         ; $542f: $3c
    ld a, e                                       ; $5430: $7b
    ld h, d                                       ; $5431: $62
    sbc a                                         ; $5432: $9f
    jp nc, $add5                                  ; $5433: $d2 $d5 $ad

    inc l                                         ; $5436: $2c
    ld b, [hl]                                    ; $5437: $46
    push hl                                       ; $5438: $e5
    ld c, $55                                     ; $5439: $0e $55
    ld l, [hl]                                    ; $543b: $6e
    dec a                                         ; $543c: $3d
    ld c, a                                       ; $543d: $4f
    ld [hl], l                                    ; $543e: $75
    db $ec                                        ; $543f: $ec
    ld c, [hl]                                    ; $5440: $4e
    daa                                           ; $5441: $27
    or h                                          ; $5442: $b4
    xor c                                         ; $5443: $a9
    ld c, e                                       ; $5444: $4b
    dec hl                                        ; $5445: $2b
    ld c, [hl]                                    ; $5446: $4e
    add l                                         ; $5447: $85
    ld [hl], h                                    ; $5448: $74
    push af                                       ; $5449: $f5
    xor h                                         ; $544a: $ac
    ld [hl-], a                                   ; $544b: $32
    dec [hl]                                      ; $544c: $35
    call nz, $0eda                                ; $544d: $c4 $da $0e

Jump_06d_5450:
    rra                                           ; $5450: $1f
    dec bc                                        ; $5451: $0b
    ld l, l                                       ; $5452: $6d
    sbc l                                         ; $5453: $9d
    ldh [rBGP], a                                 ; $5454: $e0 $47
    ret nc                                        ; $5456: $d0

    ret nc                                        ; $5457: $d0

    ld b, [hl]                                    ; $5458: $46
    ld b, h                                       ; $5459: $44
    push de                                       ; $545a: $d5
    or c                                          ; $545b: $b1
    cp [hl]                                       ; $545c: $be
    or l                                          ; $545d: $b5
    ld [hl], d                                    ; $545e: $72
    sub $ed                                       ; $545f: $d6 $ed
    nop                                           ; $5461: $00
    scf                                           ; $5462: $37
    ld b, a                                       ; $5463: $47
    sbc [hl]                                      ; $5464: $9e
    ld d, l                                       ; $5465: $55
    adc $4e                                       ; $5466: $ce $4e
    cp c                                          ; $5468: $b9
    ld h, $a3                                     ; $5469: $26 $a3
    ld [de], a                                    ; $546b: $12
    ld d, $a1                                     ; $546c: $16 $a1
    push af                                       ; $546e: $f5
    xor h                                         ; $546f: $ac
    ret nc                                        ; $5470: $d0

    jp nc, $682d                                  ; $5471: $d2 $2d $68

    ld e, c                                       ; $5474: $59
    and c                                         ; $5475: $a1
    and l                                         ; $5476: $a5
    ld e, e                                       ; $5477: $5b
    and e                                         ; $5478: $a3
    dec d                                         ; $5479: $15
    pop bc                                        ; $547a: $c1
    adc l                                         ; $547b: $8d
    adc [hl]                                      ; $547c: $8e
    ld a, [bc]                                    ; $547d: $0a
    ld a, d                                       ; $547e: $7a
    dec d                                         ; $547f: $15
    ld h, [hl]                                    ; $5480: $66
    ccf                                           ; $5481: $3f
    cp l                                          ; $5482: $bd
    pop de                                        ; $5483: $d1
    dec de                                        ; $5484: $1b
    ld c, h                                       ; $5485: $4c
    dec c                                         ; $5486: $0d
    or c                                          ; $5487: $b1
    ld a, [hl+]                                   ; $5488: $2a
    ld h, a                                       ; $5489: $67
    and a                                         ; $548a: $a7
    ld e, h                                       ; $548b: $5c
    sub e                                         ; $548c: $93
    pop af                                        ; $548d: $f1
    rst $00                                       ; $548e: $c7
    sub $cf                                       ; $548f: $d6 $cf
    dec e                                         ; $5491: $1d
    ld a, [$ede7]                                 ; $5492: $fa $e7 $ed
    ld [hl-], a                                   ; $5495: $32
    ld [hl], l                                    ; $5496: $75
    rla                                           ; $5497: $17
    or e                                          ; $5498: $b3
    sbc [hl]                                      ; $5499: $9e

jr_06d_549a:
    xor e                                         ; $549a: $ab
    ret                                           ; $549b: $c9


    and c                                         ; $549c: $a1
    ld [de], a                                    ; $549d: $12
    ld d, $51                                     ; $549e: $16 $51
    adc a                                         ; $54a0: $8f
    ld e, [hl]                                    ; $54a1: $5e
    ld e, c                                       ; $54a2: $59
    ld h, $b9                                     ; $54a3: $26 $b9
    push af                                       ; $54a5: $f5
    ld a, h                                       ; $54a6: $7c
    ld h, a                                       ; $54a7: $67
    ld b, l                                       ; $54a8: $45
    ld c, e                                       ; $54a9: $4b
    ld c, [hl]                                    ; $54aa: $4e
    xor d                                         ; $54ab: $aa

jr_06d_54ac:
    ld c, e                                       ; $54ac: $4b
    dec hl                                        ; $54ad: $2b
    ld c, [hl]                                    ; $54ae: $4e
    ld [hl], c                                    ; $54af: $71
    ld [hl-], a                                   ; $54b0: $32
    ld a, b                                       ; $54b1: $78
    jp z, $a7e5                                   ; $54b2: $ca $e5 $a7

    pop hl                                        ; $54b5: $e1
    ld e, b                                       ; $54b6: $58
    cp c                                          ; $54b7: $b9
    ld h, e                                       ; $54b8: $63
    db $eb                                        ; $54b9: $eb
    ld a, c                                       ; $54ba: $79
    ld a, [hl+]                                   ; $54bb: $2a
    db $fc                                        ; $54bc: $fc
    jr jr_06d_552b                                ; $54bd: $18 $6c

    and c                                         ; $54bf: $a1
    ld a, [bc]                                    ; $54c0: $0a
    ld hl, $d3ad                                  ; $54c1: $21 $ad $d3
    ld b, b                                       ; $54c4: $40
    ld h, d                                       ; $54c5: $62
    ld hl, $4727                                  ; $54c6: $21 $27 $47
    ld c, d                                       ; $54c9: $4a
    and [hl]                                      ; $54ca: $a6
    jp z, Jump_06d_4571                           ; $54cb: $ca $71 $45

    jr nz, jr_06d_5541                            ; $54ce: $20 $71

    ld b, a                                       ; $54d0: $47
    dec h                                         ; $54d1: $25
    inc l                                         ; $54d2: $2c
    and d                                         ; $54d3: $a2
    db $db                                        ; $54d4: $db
    or [hl]                                       ; $54d5: $b6
    dec e                                         ; $54d6: $1d
    rst $20                                       ; $54d7: $e7
    xor c                                         ; $54d8: $a9
    adc [hl]                                      ; $54d9: $8e
    db $dd                                        ; $54da: $dd
    jp hl                                         ; $54db: $e9


    add h                                         ; $54dc: $84
    ld [hl], $f5                                  ; $54dd: $36 $f5
    ld l, h                                       ; $54df: $6c
    and h                                         ; $54e0: $a4
    ld d, l                                       ; $54e1: $55
    ld c, [hl]                                    ; $54e2: $4e
    cp $d3                                        ; $54e3: $fe $d3
    inc d                                         ; $54e5: $14
    ld a, [hl]                                    ; $54e6: $7e
    ld a, [hl+]                                   ; $54e7: $2a
    rst $00                                       ; $54e8: $c7
    dec d                                         ; $54e9: $15
    ei                                            ; $54ea: $fb
    add hl, hl                                    ; $54eb: $29
    ld e, l                                       ; $54ec: $5d
    ld [hl], b                                    ; $54ed: $70
    call $b7d3                                    ; $54ee: $cd $d3 $b7
    jr z, jr_06d_549a                             ; $54f1: $28 $a7

    ld l, a                                       ; $54f3: $6f
    cpl                                           ; $54f4: $2f
    sbc h                                         ; $54f5: $9c
    ld h, $63                                     ; $54f6: $26 $63
    ld l, a                                       ; $54f8: $6f
    jr nz, jr_06d_54ac                            ; $54f9: $20 $b1

    call nc, Call_000_3f88                        ; $54fb: $d4 $88 $3f
    ld a, [de]                                    ; $54fe: $1a
    sbc c                                         ; $54ff: $99
    inc hl                                        ; $5500: $23
    or d                                          ; $5501: $b2
    sbc a                                         ; $5502: $9f
    cp $99                                        ; $5503: $fe $99
    dec a                                         ; $5505: $3d
    xor l                                         ; $5506: $ad
    ld d, h                                       ; $5507: $54
    ld b, l                                       ; $5508: $45
    dec h                                         ; $5509: $25
    inc l                                         ; $550a: $2c
    ld h, d                                       ; $550b: $62
    dec sp                                        ; $550c: $3b
    nop                                           ; $550d: $00
    rra                                           ; $550e: $1f
    db $fd                                        ; $550f: $fd
    ld c, [hl]                                    ; $5510: $4e
    dec e                                         ; $5511: $1d
    db $eb                                        ; $5512: $eb
    rst $10                                       ; $5513: $d7
    add hl, bc                                    ; $5514: $09
    sub a                                         ; $5515: $97
    ld a, [$f619]                                 ; $5516: $fa $19 $f6
    ccf                                           ; $5519: $3f
    ld l, a                                       ; $551a: $6f
    sub a                                         ; $551b: $97
    dec sp                                        ; $551c: $3b
    xor d                                         ; $551d: $aa
    db $fc                                        ; $551e: $fc
    ld e, $45                                     ; $551f: $1e $45
    dec e                                         ; $5521: $1d
    push de                                       ; $5522: $d5
    and c                                         ; $5523: $a1
    add c                                         ; $5524: $81
    call nz, $d532                                ; $5525: $c4 $32 $d5
    ld [hl], e                                    ; $5528: $73
    dec d                                         ; $5529: $15
    ld d, e                                       ; $552a: $53

jr_06d_552b:
    ld h, l                                       ; $552b: $65
    ld l, d                                       ; $552c: $6a
    adc b                                         ; $552d: $88
    or l                                          ; $552e: $b5
    push af                                       ; $552f: $f5
    ld b, $cb                                     ; $5530: $06 $cb
    call nc, Call_06d_7930                        ; $5532: $d4 $30 $79
    xor d                                         ; $5535: $aa
    or d                                          ; $5536: $b2
    rst $38                                       ; $5537: $ff
    or e                                          ; $5538: $b3
    daa                                           ; $5539: $27
    halt                                          ; $553a: $76
    ld [$8e1a], sp                                ; $553b: $08 $1a $8e
    and a                                         ; $553e: $a7
    dec l                                         ; $553f: $2d
    inc [hl]                                      ; $5540: $34

jr_06d_5541:
    jp nc, Jump_06d_692a                          ; $5541: $d2 $2a $69

    sub c                                         ; $5544: $91
    or a                                          ; $5545: $b7
    or c                                          ; $5546: $b1
    dec e                                         ; $5547: $1d
    rra                                           ; $5548: $1f
    ld d, a                                       ; $5549: $57
    sbc c                                         ; $554a: $99
    push bc                                       ; $554b: $c5
    ld h, e                                       ; $554c: $63
    dec a                                         ; $554d: $3d
    adc l                                         ; $554e: $8d
    ld b, [hl]                                    ; $554f: $46
    ret c                                         ; $5550: $d8

    ld b, d                                       ; $5551: $42
    inc bc                                        ; $5552: $03
    adc c                                         ; $5553: $89
    ld h, l                                       ; $5554: $65
    ld a, [hl+]                                   ; $5555: $2a
    ld a, [de]                                    ; $5556: $1a
    ld l, l                                       ; $5557: $6d
    jp nc, $aa2d                                  ; $5558: $d2 $2d $aa

    or d                                          ; $555b: $b2
    ld hl, $9d0c                                  ; $555c: $21 $0c $9d
    ld a, [hl+]                                   ; $555f: $2a
    or e                                          ; $5560: $b3
    ld a, b                                       ; $5561: $78
    db $ec                                        ; $5562: $ec
    adc l                                         ; $5563: $8d
    inc bc                                        ; $5564: $03
    rst $20                                       ; $5565: $e7
    or a                                          ; $5566: $b7
    inc h                                         ; $5567: $24
    ld [hl], a                                    ; $5568: $77
    and $c8                                       ; $5569: $e6 $c8
    ld l, $7f                                     ; $556b: $2e $7f
    ld h, c                                       ; $556d: $61
    ld h, c                                       ; $556e: $61
    db $eb                                        ; $556f: $eb
    ld h, l                                       ; $5570: $65
    xor l                                         ; $5571: $ad
    add sp, -$7e                                  ; $5572: $e8 $82
    dec l                                         ; $5574: $2d
    ld l, b                                       ; $5575: $68
    dec a                                         ; $5576: $3d
    db $eb                                        ; $5577: $eb
    cp b                                          ; $5578: $b8
    and [hl]                                      ; $5579: $a6
    sbc [hl]                                      ; $557a: $9e
    ld b, l                                       ; $557b: $45
    sbc [hl]                                      ; $557c: $9e
    jp z, $bc71                                   ; $557d: $ca $71 $bc

    ld [$f157], sp                                ; $5580: $08 $57 $f1
    ld a, h                                       ; $5583: $7c
    ld c, a                                       ; $5584: $4f
    ld b, c                                       ; $5585: $41
    jp $88b1                                      ; $5586: $c3 $b1 $88


    inc e                                         ; $5589: $1c
    ld b, a                                       ; $558a: $47
    ret nc                                        ; $558b: $d0

    rst $38                                       ; $558c: $ff
    ret z                                         ; $558d: $c8

    or e                                          ; $558e: $b3
    ld d, d                                       ; $558f: $52
    ld h, e                                       ; $5590: $63
    ld [hl], b                                    ; $5591: $70
    rst $30                                       ; $5592: $f7
    push af                                       ; $5593: $f5
    scf                                           ; $5594: $37
    ld [hl], $84                                  ; $5595: $36 $84
    and c                                         ; $5597: $a1
    res 1, d                                      ; $5598: $cb $8a
    jp hl                                         ; $559a: $e9


    ld e, e                                       ; $559b: $5b
    sub h                                         ; $559c: $94
    db $d3                                        ; $559d: $d3
    or a                                          ; $559e: $b7
    rla                                           ; $559f: $17
    ld c, [hl]                                    ; $55a0: $4e
    sub e                                         ; $55a1: $93
    or c                                          ; $55a2: $b1
    ld l, a                                       ; $55a3: $6f
    db $fd                                        ; $55a4: $fd
    sub b                                         ; $55a5: $90
    ld a, a                                       ; $55a6: $7f
    sub [hl]                                      ; $55a7: $96
    ld a, [de]                                    ; $55a8: $1a
    reti                                          ; $55a9: $d9


    db $10                                        ; $55aa: $10
    xor d                                         ; $55ab: $aa
    ld l, h                                       ; $55ac: $6c
    ld [$af43], sp                                ; $55ad: $08 $43 $af
    ld [c], a                                     ; $55b0: $e2
    ld h, h                                       ; $55b1: $64
    rrc e                                         ; $55b2: $cb $0b
    jp z, Jump_06d_6772                           ; $55b4: $ca $72 $67

    and a                                         ; $55b7: $a7
    sub b                                         ; $55b8: $90
    db $e3                                        ; $55b9: $e3
    ld b, d                                       ; $55ba: $42
    ld h, h                                       ; $55bb: $64
    ld sp, $b82c                                  ; $55bc: $31 $2c $b8
    adc b                                         ; $55bf: $88
    rla                                           ; $55c0: $17
    cp d                                          ; $55c1: $ba
    rlca                                          ; $55c2: $07
    ld l, a                                       ; $55c3: $6f
    db $fd                                        ; $55c4: $fd
    inc h                                         ; $55c5: $24
    ld h, c                                       ; $55c6: $61
    rst $28                                       ; $55c7: $ef
    ld d, h                                       ; $55c8: $54
    sbc c                                         ; $55c9: $99
    sbc d                                         ; $55ca: $9a
    rst $00                                       ; $55cb: $c7
    or c                                          ; $55cc: $b1
    adc [hl]                                      ; $55cd: $8e
    ld [$8de6], a                                 ; $55ce: $ea $e6 $8d
    inc bc                                        ; $55d1: $03
    ld d, a                                       ; $55d2: $57
    ld h, c                                       ; $55d3: $61
    or $53                                        ; $55d4: $f6 $53
    xor a                                         ; $55d6: $af
    ld c, a                                       ; $55d7: $4f
    adc h                                         ; $55d8: $8c
    or h                                          ; $55d9: $b4
    db $ed                                        ; $55da: $ed
    nop                                           ; $55db: $00
    sub a                                         ; $55dc: $97
    push bc                                       ; $55dd: $c5
    push de                                       ; $55de: $d5
    push hl                                       ; $55df: $e5
    inc b                                         ; $55e0: $04
    cp l                                          ; $55e1: $bd
    ld a, [bc]                                    ; $55e2: $0a
    or e                                          ; $55e3: $b3
    sbc a                                         ; $55e4: $9f
    ld a, d                                       ; $55e5: $7a
    ld a, l                                       ; $55e6: $7d
    ld h, d                                       ; $55e7: $62
    and h                                         ; $55e8: $a4
    ld l, l                                       ; $55e9: $6d
    db $fd                                        ; $55ea: $fd
    add hl, sp                                    ; $55eb: $39
    ld l, $37                                     ; $55ec: $2e $37
    dec [hl]                                      ; $55ee: $35
    add h                                         ; $55ef: $84
    cp b                                          ; $55f0: $b8
    dec l                                         ; $55f1: $2d
    jr z, jr_06d_5629                             ; $55f2: $28 $35

    ld [c], a                                     ; $55f4: $e2
    adc a                                         ; $55f5: $8f
    jp z, Jump_06d_7fc9                           ; $55f6: $ca $c9 $7f

    sbc d                                         ; $55f9: $9a
    ld [hl+], a                                   ; $55fa: $22
    ei                                            ; $55fb: $fb
    xor c                                         ; $55fc: $a9
    inc e                                         ; $55fd: $1c
    ld d, a                                       ; $55fe: $57
    xor $2c                                       ; $55ff: $ee $2c
    ld c, [hl]                                    ; $5601: $4e
    ld h, e                                       ; $5602: $63
    xor b                                         ; $5603: $a8
    and e                                         ; $5604: $a3
    cp d                                          ; $5605: $ba
    reti                                          ; $5606: $d9


    ld c, $57                                     ; $5607: $0e $57
    ld [hl], c                                    ; $5609: $71
    or d                                          ; $560a: $b2
    push hl                                       ; $560b: $e5
    cpl                                           ; $560c: $2f
    push af                                       ; $560d: $f5
    inc a                                         ; $560e: $3c
    sub l                                         ; $560f: $95
    ld a, [de]                                    ; $5610: $1a
    pop af                                        ; $5611: $f1
    ld b, a                                       ; $5612: $47
    ld d, c                                       ; $5613: $51
    add hl, bc                                    ; $5614: $09
    or a                                          ; $5615: $b7
    or d                                          ; $5616: $b2
    ld a, b                                       ; $5617: $78
    ld a, [de]                                    ; $5618: $1a
    jp nz, $6650                                  ; $5619: $c2 $50 $66

    add hl, sp                                    ; $561c: $39
    add hl, sp                                    ; $561d: $39
    ld e, d                                       ; $561e: $5a
    ldh a, [rNR13]                                ; $561f: $f0 $13
    ei                                            ; $5621: $fb
    ld l, h                                       ; $5622: $6c
    rlca                                          ; $5623: $07
    rra                                           ; $5624: $1f
    rst $28                                       ; $5625: $ef
    pop bc                                        ; $5626: $c1
    add d                                         ; $5627: $82
    ld e, [hl]                                    ; $5628: $5e

jr_06d_5629:
    add l                                         ; $5629: $85
    reti                                          ; $562a: $d9


    ld c, a                                       ; $562b: $4f
    ld e, e                                       ; $562c: $5b
    rst $08                                       ; $562d: $cf
    ld d, e                                       ; $562e: $53
    xor c                                         ; $562f: $a9
    ld [hl], c                                    ; $5630: $71
    ld d, d                                       ; $5631: $52
    ld b, e                                       ; $5632: $43
    dec de                                        ; $5633: $1b
    sbc c                                         ; $5634: $99
    inc c                                         ; $5635: $0c
    reti                                          ; $5636: $d9


    ld c, a                                       ; $5637: $4f
    push hl                                       ; $5638: $e5
    sbc h                                         ; $5639: $9c

jr_06d_563a:
    sub d                                         ; $563a: $92
    cp e                                          ; $563b: $bb
    or b                                          ; $563c: $b0
    cpl                                           ; $563d: $2f
    add hl, sp                                    ; $563e: $39
    cp d                                          ; $563f: $ba
    push af                                       ; $5640: $f5
    inc a                                         ; $5641: $3c
    ld [hl], l                                    ; $5642: $75
    jp nc, $d57f                                  ; $5643: $d2 $7f $d5

    xor a                                         ; $5646: $af
    db $db                                        ; $5647: $db
    or h                                          ; $5648: $b4
    ld b, $12                                     ; $5649: $06 $12
    dec de                                        ; $564b: $1b
    jp hl                                         ; $564c: $e9


    sbc d                                         ; $564d: $9a
    ld e, h                                       ; $564e: $5c
    di                                            ; $564f: $f3
    jp z, $a9e2                                   ; $5650: $ca $e2 $a9

    rst $20                                       ; $5653: $e7
    ld c, [hl]                                    ; $5654: $4e
    dec l                                         ; $5655: $2d
    ld e, l                                       ; $5656: $5d
    or c                                          ; $5657: $b1
    sbc a                                         ; $5658: $9f
    sub d                                         ; $5659: $92
    db $eb                                        ; $565a: $eb
    sbc [hl]                                      ; $565b: $9e
    ld c, [hl]                                    ; $565c: $4e
    or b                                          ; $565d: $b0
    ld a, d                                       ; $565e: $7a
    sub h                                         ; $565f: $94
    ld a, [hl+]                                   ; $5660: $2a
    ld h, a                                       ; $5661: $67
    rst $00                                       ; $5662: $c7
    halt                                          ; $5663: $76
    nop                                           ; $5664: $00
    rra                                           ; $5665: $1f
    scf                                           ; $5666: $37
    or h                                          ; $5667: $b4
    ld de, $7551                                  ; $5668: $11 $51 $75
    xor h                                         ; $566b: $ac
    ld l, a                                       ; $566c: $6f
    xor l                                         ; $566d: $ad
    sbc h                                         ; $566e: $9c
    or l                                          ; $566f: $b5
    adc [hl]                                      ; $5670: $8e
    push af                                       ; $5671: $f5
    ld c, h                                       ; $5672: $4c
    ld c, l                                       ; $5673: $4d
    ld c, $45                                     ; $5674: $0e $45
    adc d                                         ; $5676: $8a
    ld h, e                                       ; $5677: $63
    db $eb                                        ; $5678: $eb
    ld [hl], $2e                                  ; $5679: $36 $2e
    cp $4e                                        ; $567b: $fe $4e
    ld b, e                                       ; $567d: $43
    jr jr_06d_563a                                ; $567e: $18 $ba

    xor h                                         ; $5680: $ac
    adc b                                         ; $5681: $88
    rla                                           ; $5682: $17
    ld a, [hl-]                                   ; $5683: $3a
    ld a, l                                       ; $5684: $7d
    adc e                                         ; $5685: $8b
    ld [hl], d                                    ; $5686: $72
    ld a, [$c2f6]                                 ; $5687: $fa $f6 $c2
    ld l, c                                       ; $568a: $69
    ld [hl-], a                                   ; $568b: $32
    or $b2                                        ; $568c: $f6 $b2
    adc [hl]                                      ; $568e: $8e
    dec c                                         ; $568f: $0d
    jp hl                                         ; $5690: $e9


    ld d, a                                       ; $5691: $57
    ld l, d                                       ; $5692: $6a
    ld [$9943], sp                                ; $5693: $08 $43 $99
    and e                                         ; $5696: $a3
    pop af                                        ; $5697: $f1
    inc d                                         ; $5698: $14
    db $fc                                        ; $5699: $fc
    call nz, $de8e                                ; $569a: $c4 $8e $de
    reti                                          ; $569d: $d9


    rst $38                                       ; $569e: $ff
    ret z                                         ; $569f: $c8

    or e                                          ; $56a0: $b3
    xor l                                         ; $56a1: $ad
    rst $20                                       ; $56a2: $e7
    xor c                                         ; $56a3: $a9
    rst $38                                       ; $56a4: $ff
    ld c, c                                       ; $56a5: $49
    dec d                                         ; $56a6: $15
    ld h, $95                                     ; $56a7: $26 $95
    or b                                          ; $56a9: $b0
    ld h, $87                                     ; $56aa: $26 $87
    ld c, d                                       ; $56ac: $4a
    ld e, b                                       ; $56ad: $58
    ld b, h                                       ; $56ae: $44
    dec a                                         ; $56af: $3d
    dec hl                                        ; $56b0: $2b
    or h                                          ; $56b1: $b4
    ld [hl], h                                    ; $56b2: $74
    dec bc                                        ; $56b3: $0b
    ld e, d                                       ; $56b4: $5a
    ld d, [hl]                                    ; $56b5: $56
    ld l, b                                       ; $56b6: $68
    jp hl                                         ; $56b7: $e9


    sub $68                                       ; $56b8: $d6 $68
    ld b, l                                       ; $56ba: $45
    ld [hl], b                                    ; $56bb: $70
    and e                                         ; $56bc: $a3
    and e                                         ; $56bd: $a3
    dec c                                         ; $56be: $0d
    inc h                                         ; $56bf: $24
    or $ad                                        ; $56c0: $f6 $ad
    sub l                                         ; $56c2: $95
    or e                                          ; $56c3: $b3
    ld [hl], $1c                                  ; $56c4: $36 $1c
    rst $08                                       ; $56c6: $cf
    ld b, [hl]                                    ; $56c7: $46
    ld e, d                                       ; $56c8: $5a
    dec a                                         ; $56c9: $3d
    db $fc                                        ; $56ca: $fc
    inc d                                         ; $56cb: $14
    ld d, e                                       ; $56cc: $53
    rst $00                                       ; $56cd: $c7
    call nc, Call_06d_6b10                        ; $56ce: $d4 $10 $6b
    dec sp                                        ; $56d1: $3b
    nop                                           ; $56d2: $00
    rst $20                                       ; $56d3: $e7
    xor c                                         ; $56d4: $a9
    rst $38                                       ; $56d5: $ff
    ld c, c                                       ; $56d6: $49
    dec c                                         ; $56d7: $0d
    ld l, l                                       ; $56d8: $6d
    ld h, h                                       ; $56d9: $64
    ld [hl-], a                                   ; $56da: $32
    ld e, b                                       ; $56db: $58
    ld b, a                                       ; $56dc: $47
    dec hl                                        ; $56dd: $2b
    rst $20                                       ; $56de: $e7
    sub h                                         ; $56df: $94
    call c, Call_06d_7d85                         ; $56e0: $dc $85 $7d
    ret                                           ; $56e3: $c9


    pop de                                        ; $56e4: $d1
    ld a, d                                       ; $56e5: $7a
    add [hl]                                      ; $56e6: $86
    or e                                          ; $56e7: $b3
    ld [hl], h                                    ; $56e8: $74
    db $eb                                        ; $56e9: $eb
    ld c, l                                       ; $56ea: $4d
    cp b                                          ; $56eb: $b8
    pop de                                        ; $56ec: $d1
    xor [hl]                                      ; $56ed: $ae
    db $ec                                        ; $56ee: $ec

jr_06d_56ef:
    ld b, a                                       ; $56ef: $47
    ret nc                                        ; $56f0: $d0

    xor e                                         ; $56f1: $ab
    jr nc, jr_06d_56ef                            ; $56f2: $30 $fb

    jp hl                                         ; $56f4: $e9


    jp nc, $e701                                  ; $56f5: $d2 $01 $e7

    xor c                                         ; $56f8: $a9
    rst $38                                       ; $56f9: $ff
    ld c, c                                       ; $56fa: $49
    and l                                         ; $56fb: $a5
    add [hl]                                      ; $56fc: $86
    inc [hl]                                      ; $56fd: $34
    ld e, b                                       ; $56fe: $58
    ld de, $4b48                                  ; $56ff: $11 $48 $4b
    ret nc                                        ; $5702: $d0

    xor e                                         ; $5703: $ab
    jr nc, @-$03                                  ; $5704: $30 $fb

    ld l, c                                       ; $5706: $69
    db $eb                                        ; $5707: $eb
    call Call_06d_6791                            ; $5708: $cd $91 $67
    call $d3bf                                    ; $570b: $cd $bf $d3
    ccf                                           ; $570e: $3f
    ld d, [hl]                                    ; $570f: $56
    ld b, e                                       ; $5710: $43
    and e                                         ; $5711: $a3
    ld e, h                                       ; $5712: $5c
    ld a, [bc]                                    ; $5713: $0a
    xor e                                         ; $5714: $ab
    ld h, a                                       ; $5715: $67
    db $dd                                        ; $5716: $dd

jr_06d_5717:
    ld [hl], d                                    ; $5717: $72
    dec c                                         ; $5718: $0d
    ld h, c                                       ; $5719: $61
    xor b                                         ; $571a: $a8
    ld [$69b7], sp                                ; $571b: $08 $b7 $69
    ld c, l                                       ; $571e: $4d
    ld c, $8d                                     ; $571f: $0e $8d
    ld [hl], $12                                  ; $5721: $36 $12
    push de                                       ; $5723: $d5
    push hl                                       ; $5724: $e5
    jp nz, Jump_06d_5a9d                          ; $5725: $c2 $9d $5a

    add hl, sp                                    ; $5728: $39
    ld l, [hl]                                    ; $5729: $6e
    ld c, d                                       ; $572a: $4a
    ld d, l                                       ; $572b: $55
    ld l, h                                       ; $572c: $6c
    rlca                                          ; $572d: $07
    scf                                           ; $572e: $37
    ld b, a                                       ; $572f: $47
    sbc [hl]                                      ; $5730: $9e
    push af                                       ; $5731: $f5
    cp a                                          ; $5732: $bf
    ld d, d                                       ; $5733: $52
    sub e                                         ; $5734: $93
    xor e                                         ; $5735: $ab
    ld a, b                                       ; $5736: $78
    inc e                                         ; $5737: $1c
    ld e, l                                       ; $5738: $5d
    ld b, a                                       ; $5739: $47
    ld b, h                                       ; $573a: $44
    and e                                         ; $573b: $a3
    ld h, h                                       ; $573c: $64
    or $d3                                        ; $573d: $f6 $d3
    db $e4                                        ; $573f: $e4
    ld d, b                                       ; $5740: $50
    add hl, bc                                    ; $5741: $09
    adc e                                         ; $5742: $8b
    xor b                                         ; $5743: $a8
    ld h, a                                       ; $5744: $67
    add l                                         ; $5745: $85
    sub [hl]                                      ; $5746: $96
    ld l, [hl]                                    ; $5747: $6e
    ld b, c                                       ; $5748: $41
    rrc d                                         ; $5749: $cb $0a
    dec l                                         ; $574b: $2d
    db $dd                                        ; $574c: $dd
    ld a, [de]                                    ; $574d: $1a
    xor l                                         ; $574e: $ad
    ld [$746e], sp                                ; $574f: $08 $6e $74
    or h                                          ; $5752: $b4
    ld [hl], a                                    ; $5753: $77
    or $cf                                        ; $5754: $f6 $cf
    db $ec                                        ; $5756: $ec
    pop de                                        ; $5757: $d1
    ld [hl], b                                    ; $5758: $70
    xor h                                         ; $5759: $ac
    ld [$f5a4], sp                                ; $575a: $08 $a4 $f5
    add $01                                       ; $575d: $c6 $01
    rst $20                                       ; $575f: $e7
    xor c                                         ; $5760: $a9
    sub b                                         ; $5761: $90
    ld [c], a                                     ; $5762: $e2
    ld l, c                                       ; $5763: $69
    jr nz, jr_06d_5717                            ; $5764: $20 $b1

    call c, $10d9                                 ; $5766: $dc $d9 $10
    xor d                                         ; $5769: $aa
    add sp, -$2c                                  ; $576a: $e8 $d4
    cpl                                           ; $576c: $2f
    inc [hl]                                      ; $576d: $34
    and h                                         ; $576e: $a4
    push bc                                       ; $576f: $c5
    xor c                                         ; $5770: $a9
    ld h, a                                       ; $5771: $67
    rst $18                                       ; $5772: $df
    or l                                          ; $5773: $b5
    sub l                                         ; $5774: $95
    ld c, a                                       ; $5775: $4f
    inc de                                        ; $5776: $13
    xor c                                         ; $5777: $a9
    db $db                                        ; $5778: $db
    ld bc, $fd1f                                  ; $5779: $01 $1f $fd
    adc [hl]                                      ; $577c: $8e
    and b                                         ; $577d: $a0
    ld sp, hl                                     ; $577e: $f9
    ld [hl], a                                    ; $577f: $77
    ld a, [hl-]                                   ; $5780: $3a
    db $fd                                        ; $5781: $fd
    xor a                                         ; $5782: $af
    db $ed                                        ; $5783: $ed
    nop                                           ; $5784: $00
    rst $20                                       ; $5785: $e7
    xor c                                         ; $5786: $a9
    ld sp, hl                                     ; $5787: $f9
    ld [hl], a                                    ; $5788: $77
    xor d                                         ; $5789: $aa
    ld e, h                                       ; $578a: $5c
    call $a8f0                                    ; $578b: $cd $f0 $a8
    adc [hl]                                      ; $578e: $8e
    ret nc                                        ; $578f: $d0

    ret c                                         ; $5790: $d8

    and l                                         ; $5791: $a5
    ld [hl], c                                    ; $5792: $71
    or [hl]                                       ; $5793: $b6
    inc bc                                        ; $5794: $03
    rst $20                                       ; $5795: $e7
    xor c                                         ; $5796: $a9
    ld a, a                                       ; $5797: $7f
    ld a, [hl]                                    ; $5798: $7e
    ccf                                           ; $5799: $3f
    ld [hl], l                                    ; $579a: $75
    ld l, c                                       ; $579b: $69
    ld b, l                                       ; $579c: $45
    ld l, b                                       ; $579d: $68
    ld b, e                                       ; $579e: $43
    xor d                                         ; $579f: $aa
    ld c, $b4                                     ; $57a0: $0e $b4
    ld [hl], d                                    ; $57a2: $72
    ld e, h                                       ; $57a3: $5c
    dec h                                         ; $57a4: $25
    inc l                                         ; $57a5: $2c

Call_06d_57a6:
    ld b, d                                       ; $57a6: $42
    db $eb                                        ; $57a7: $eb
    ld e, c                                       ; $57a8: $59
    and c                                         ; $57a9: $a1
    and l                                         ; $57aa: $a5
    ld e, e                                       ; $57ab: $5b
    ret nc                                        ; $57ac: $d0

    or d                                          ; $57ad: $b2
    ld b, d                                       ; $57ae: $42
    ld c, e                                       ; $57af: $4b
    or a                                          ; $57b0: $b7
    ld b, [hl]                                    ; $57b1: $46
    dec hl                                        ; $57b2: $2b

Call_06d_57b3:
jr_06d_57b3:
    add d                                         ; $57b3: $82
    dec de                                        ; $57b4: $1b
    dec e                                         ; $57b5: $1d
    db $ed                                        ; $57b6: $ed
    sbc l                                         ; $57b7: $9d
    db $fd                                        ; $57b8: $fd
    inc sp                                        ; $57b9: $33
    ld a, e                                       ; $57ba: $7b
    ld l, h                                       ; $57bb: $6c
    rlca                                          ; $57bc: $07
    rst $20                                       ; $57bd: $e7
    ld a, [de]                                    ; $57be: $1a
    reti                                          ; $57bf: $d9


    db $fc                                        ; $57c0: $fc
    dec sp                                        ; $57c1: $3b
    cp l                                          ; $57c2: $bd
    ret nc                                        ; $57c3: $d0

    ld l, c                                       ; $57c4: $69
    ld e, h                                       ; $57c5: $5c
    pop hl                                        ; $57c6: $e1
    call nc, $72b3                                ; $57c7: $d4 $b3 $72
    sub [hl]                                      ; $57ca: $96
    and d                                         ; $57cb: $a2
    ld [hl], a                                    ; $57cc: $77
    ld [hl], $90                                  ; $57cd: $36 $90
    or b                                          ; $57cf: $b0
    sub a                                         ; $57d0: $97
    xor c                                         ; $57d1: $a9
    and c                                         ; $57d2: $a1
    ld d, c                                       ; $57d3: $51
    db $e3                                        ; $57d4: $e3
    inc d                                         ; $57d5: $14
    sub c                                         ; $57d6: $91
    ld sp, hl                                     ; $57d7: $f9
    ld [c], a                                     ; $57d8: $e2
    rst $28                                       ; $57d9: $ef
    ld l, h                                       ; $57da: $6c
    rlca                                          ; $57db: $07
    rra                                           ; $57dc: $1f
    db $fd                                        ; $57dd: $fd
    adc [hl]                                      ; $57de: $8e
    and b                                         ; $57df: $a0
    ld c, $da                                     ; $57e0: $0e $da
    adc b                                         ; $57e2: $88
    db $fd                                        ; $57e3: $fd
    rst $08                                       ; $57e4: $cf
    db $db                                        ; $57e5: $db
    ld h, l                                       ; $57e6: $65
    ld l, d                                       ; $57e7: $6a
    cp $9d                                        ; $57e8: $fe $9d
    ld d, d                                       ; $57ea: $52
    db $e3                                        ; $57eb: $e3
    ld a, [$9553]                                 ; $57ec: $fa $53 $95
    dec c                                         ; $57ef: $0d
    adc l                                         ; $57f0: $8d
    ld a, [de]                                    ; $57f1: $1a
    sub c                                         ; $57f2: $91
    db $fd                                        ; $57f3: $fd
    inc d                                         ; $57f4: $14
    sub c                                         ; $57f5: $91
    ld sp, hl                                     ; $57f6: $f9
    ld [c], a                                     ; $57f7: $e2
    rst $28                                       ; $57f8: $ef
    ld l, h                                       ; $57f9: $6c
    rlca                                          ; $57fa: $07
    rst $20                                       ; $57fb: $e7
    xor c                                         ; $57fc: $a9
    sub b                                         ; $57fd: $90
    ld [c], a                                     ; $57fe: $e2
    ld l, c                                       ; $57ff: $69
    jr nz, jr_06d_57b3                            ; $5800: $20 $b1

    rst $38                                       ; $5802: $ff
    ld d, l                                       ; $5803: $55
    db $ec                                        ; $5804: $ec
    and a                                         ; $5805: $a7
    ld [hl], h                                    ; $5806: $74
    pop bc                                        ; $5807: $c1
    dec [hl]                                      ; $5808: $35
    add h                                         ; $5809: $84
    ld d, c                                       ; $580a: $51
    ld l, $3f                                     ; $580b: $2e $3f
    dec c                                         ; $580d: $0d
    ld l, c                                       ; $580e: $69
    ld [hl], c                                    ; $580f: $71
    ld [$42a7], a                                 ; $5810: $ea $a7 $42
    ld h, h                                       ; $5813: $64
    add hl, sp                                    ; $5814: $39
    db $db                                        ; $5815: $db
    ld bc, $a9e7                                  ; $5816: $01 $e7 $a9
    scf                                           ; $5819: $37
    ld a, $fe                                     ; $581a: $3e $fe
    cp h                                          ; $581c: $bc
    ret                                           ; $581d: $c9


    ld d, l                                       ; $581e: $55
    inc a                                         ; $581f: $3c
    adc [hl]                                      ; $5820: $8e
    xor [hl]                                      ; $5821: $ae
    inc hl                                        ; $5822: $23
    and d                                         ; $5823: $a2
    ld d, c                                       ; $5824: $51
    ld [hl-], a                                   ; $5825: $32
    ei                                            ; $5826: $fb
    ld l, c                                       ; $5827: $69
    ld [hl], d                                    ; $5828: $72
    xor b                                         ; $5829: $a8
    add h                                         ; $582a: $84
    ld b, l                                       ; $582b: $45
    call nc, Call_06d_42b3                        ; $582c: $d4 $b3 $42
    ld c, e                                       ; $582f: $4b
    or a                                          ; $5830: $b7
    and b                                         ; $5831: $a0
    ld h, l                                       ; $5832: $65
    add l                                         ; $5833: $85
    sub [hl]                                      ; $5834: $96
    ld l, [hl]                                    ; $5835: $6e
    adc l                                         ; $5836: $8d
    ld d, [hl]                                    ; $5837: $56
    inc b                                         ; $5838: $04
    scf                                           ; $5839: $37
    ld a, [hl-]                                   ; $583a: $3a
    jp c, $fb3b                                   ; $583b: $da $3b $fb

    ld h, a                                       ; $583e: $67
    or $d8                                        ; $583f: $f6 $d8
    ld a, d                                       ; $5841: $7a
    dec c                                         ; $5842: $0d
    ld e, d                                       ; $5843: $5a
    xor $28                                       ; $5844: $ee $28
    dec [hl]                                      ; $5846: $35
    ld b, $37                                     ; $5847: $06 $37
    ld c, a                                       ; $5849: $4f
    dec e                                         ; $584a: $1d
    ld d, e                                       ; $584b: $53
    push hl                                       ; $584c: $e5
    adc b                                         ; $584d: $88
    adc h                                         ; $584e: $8c
    and l                                         ; $584f: $a5
    db $eb                                        ; $5850: $eb
    cp e                                          ; $5851: $bb
    or [hl]                                       ; $5852: $b6
    ld a, [c]                                     ; $5853: $f2
    ld l, c                                       ; $5854: $69
    ld [hl+], a                                   ; $5855: $22
    ld [hl], l                                    ; $5856: $75
    db $eb                                        ; $5857: $eb
    dec c                                         ; $5858: $0d
    or $3f                                        ; $5859: $f6 $3f
    ld a, [c]                                     ; $585b: $f2
    xor h                                         ; $585c: $ac
    and d                                         ; $585d: $a2
    or c                                          ; $585e: $b1
    ld [hl+], a                                   ; $585f: $22
    ld e, [hl]                                    ; $5860: $5e
    add sp, $1e                                   ; $5861: $e8 $1e
    call c, $a790                                 ; $5863: $dc $90 $a7
    ldh [$27], a                                  ; $5866: $e0 $27
    halt                                          ; $5868: $76
    ld [$d4ca], sp                                ; $5869: $08 $ca $d4
    ld h, l                                       ; $586c: $65
    ld e, h                                       ; $586d: $5c
    dec [hl]                                      ; $586e: $35
    ld a, [$7b74]                                 ; $586f: $fa $74 $7b
    ld e, c                                       ; $5872: $59
    and a                                         ; $5873: $a7
    and c                                         ; $5874: $a1
    pop af                                        ; $5875: $f1
    ld [c], a                                     ; $5876: $e2
    call nc, $c9b3                                ; $5877: $d4 $b3 $c9
    and c                                         ; $587a: $a1
    ld hl, $a1bd                                  ; $587b: $21 $bd $a1
    ld b, d                                       ; $587e: $42

jr_06d_587f:
    sbc $1e                                       ; $587f: $de $1e
    ld e, b                                       ; $5881: $58
    ld b, e                                       ; $5882: $43
    jr jr_06d_587f                                ; $5883: $18 $fa

    db $f4                                        ; $5885: $f4
    ld d, e                                       ; $5886: $53
    push de                                       ; $5887: $d5
    dec h                                         ; $5888: $25
    ld [hl], a                                    ; $5889: $77
    ld [$0076], a                                 ; $588a: $ea $76 $00
    scf                                           ; $588d: $37
    pop hl                                        ; $588e: $e1
    ld b, [hl]                                    ; $588f: $46
    cp e                                          ; $5890: $bb
    rlca                                          ; $5891: $07
    ld l, a                                       ; $5892: $6f
    rlca                                          ; $5893: $07
    ccf                                           ; $5894: $3f
    rst $00                                       ; $5895: $c7
    push hl                                       ; $5896: $e5
    ld h, [hl]                                    ; $5897: $66
    db $eb                                        ; $5898: $eb
    ld a, c                                       ; $5899: $79
    ld [$ae32], a                                 ; $589a: $ea $32 $ae
    ld [hl+], a                                   ; $589d: $22
    ld e, [hl]                                    ; $589e: $5e
    add sp, -$45                                  ; $589f: $e8 $bb
    or [hl]                                       ; $58a1: $b6
    ld a, [c]                                     ; $58a2: $f2
    ld l, c                                       ; $58a3: $69
    ld [hl+], a                                   ; $58a4: $22
    or l                                          ; $58a5: $b5
    inc l                                         ; $58a6: $2c
    ld d, d                                       ; $58a7: $52
    inc e                                         ; $58a8: $1c
    ld e, e                                       ; $58a9: $5b
    or a                                          ; $58aa: $b7
    ld h, c                                       ; $58ab: $61
    ld e, h                                       ; $58ac: $5c
    db $fd                                        ; $58ad: $fd
    adc a                                         ; $58ae: $8f
    inc a                                         ; $58af: $3c
    dec hl                                        ; $58b0: $2b
    jp z, Jump_000_0d1c                           ; $58b1: $ca $1c $0d

    sub $3c                                       ; $58b4: $d6 $3c
    ld [hl], l                                    ; $58b6: $75
    ld c, h                                       ; $58b7: $4c
    sub l                                         ; $58b8: $95
    inc hl                                        ; $58b9: $23
    ld [hl-], a                                   ; $58ba: $32
    ld l, [hl]                                    ; $58bb: $6e
    rlca                                          ; $58bc: $07
    sub a                                         ; $58bd: $97
    and l                                         ; $58be: $a5
    ld a, b                                       ; $58bf: $78
    ld a, [de]                                    ; $58c0: $1a
    ld c, b                                       ; $58c1: $48
    inc l                                         ; $58c2: $2c
    ld d, e                                       ; $58c3: $53
    di                                            ; $58c4: $f3
    rst $28                                       ; $58c5: $ef
    inc [hl]                                      ; $58c6: $34
    ld [hl-], a                                   ; $58c7: $32
    adc e                                         ; $58c8: $8b
    and a                                         ; $58c9: $a7
    call nc, $0688                                ; $58ca: $d4 $88 $06
    ld [de], a                                    ; $58cd: $12
    ld [hl], d                                    ; $58ce: $72
    ld e, h                                       ; $58cf: $5c
    ret c                                         ; $58d0: $d8

    ld c, $ef                                     ; $58d1: $0e $ef
    ld l, c                                       ; $58d3: $69
    sbc h                                         ; $58d4: $9c
    ld e, [hl]                                    ; $58d5: $5e
    ld l, b                                       ; $58d6: $68
    ld [hl], d                                    ; $58d7: $72
    add sp, -$61                                  ; $58d8: $e8 $9f
    halt                                          ; $58da: $76
    sbc d                                         ; $58db: $9a
    inc l                                         ; $58dc: $2c
    add $d6                                       ; $58dd: $c6 $d6
    sbc e                                         ; $58df: $9b
    or e                                          ; $58e0: $b3
    ld b, a                                       ; $58e1: $47
    ld [hl], $90                                  ; $58e2: $36 $90
    sub b                                         ; $58e4: $90
    db $fd                                        ; $58e5: $fd
    db $f4                                        ; $58e6: $f4
    ccf                                           ; $58e7: $3f
    ld a, [c]                                     ; $58e8: $f2
    xor h                                         ; $58e9: $ac
    ld [hl], c                                    ; $58ea: $71
    db $fd                                        ; $58eb: $fd
    ld l, c                                       ; $58ec: $69
    push af                                       ; $58ed: $f5
    dec hl                                        ; $58ee: $2b
    adc e                                         ; $58ef: $8b
    cp c                                          ; $58f0: $b9
    ld l, h                                       ; $58f1: $6c
    jp z, $7f1c                                   ; $58f2: $ca $1c $7f

    ld h, a                                       ; $58f5: $67
    db $eb                                        ; $58f6: $eb
    ld a, c                                       ; $58f7: $79
    ld a, [hl+]                                   ; $58f8: $2a
    dec [hl]                                      ; $58f9: $35
    jp nz, $2ab8                                  ; $58fa: $c2 $b8 $2a

    and h                                         ; $58fd: $a4
    dec hl                                        ; $58fe: $2b
    ld [bc], a                                    ; $58ff: $02
    ld l, c                                       ; $5900: $69
    ld l, l                                       ; $5901: $6d
    rlca                                          ; $5902: $07
    sub a                                         ; $5903: $97
    dec hl                                        ; $5904: $2b
    ld h, c                                       ; $5905: $61
    ld de, $4995                                  ; $5906: $11 $95 $49
    inc hl                                        ; $5909: $23
    ld a, [$53f4]                                 ; $590a: $fa $f4 $53
    push de                                       ; $590d: $d5
    dec h                                         ; $590e: $25
    ld [hl], a                                    ; $590f: $77
    ld l, d                                       ; $5910: $6a
    dec e                                         ; $5911: $1d
    or h                                          ; $5912: $b4

jr_06d_5913:
    ld c, h                                       ; $5913: $4c
    call $d3bf                                    ; $5914: $cd $bf $d3
    ret z                                         ; $5917: $c8

    inc l                                         ; $5918: $2c
    sbc [hl]                                      ; $5919: $9e
    ld b, [hl]                                    ; $591a: $46
    db $e4                                        ; $591b: $e4
    jr c, jr_06d_5913                             ; $591c: $38 $f5

    dec hl                                        ; $591e: $2b
    adc e                                         ; $591f: $8b
    cp c                                          ; $5920: $b9
    ld l, h                                       ; $5921: $6c

jr_06d_5922:
    or [hl]                                       ; $5922: $b6
    sbc $a0                                       ; $5923: $de $a0
    dec b                                         ; $5925: $05
    scf                                           ; $5926: $37
    sub b                                         ; $5927: $90
    ret c                                         ; $5928: $d8

    rst $38                                       ; $5929: $ff
    ret z                                         ; $592a: $c8

    or e                                          ; $592b: $b3
    add [hl]                                      ; $592c: $86
    db $e3                                        ; $592d: $e3
    ld e, c                                       ; $592e: $59
    rst $00                                       ; $592f: $c7
    ld a, d                                       ; $5930: $7a
    ld e, b                                       ; $5931: $58
    sbc a                                         ; $5932: $9f
    ld a, [hl]                                    ; $5933: $7e
    xor d                                         ; $5934: $aa
    cp d                                          ; $5935: $ba
    db $e4                                        ; $5936: $e4
    ld c, [hl]                                    ; $5937: $4e
    ld a, l                                       ; $5938: $7d
    db $e3                                        ; $5939: $e3
    nop                                           ; $593a: $00
    ld d, a                                       ; $593b: $57
    halt                                          ; $593c: $76
    ret c                                         ; $593d: $d8

    ld l, h                                       ; $593e: $6c
    rlca                                          ; $593f: $07
    rra                                           ; $5940: $1f
    ld c, l                                       ; $5941: $4d
    inc bc                                        ; $5942: $03
    adc c                                         ; $5943: $89
    dec c                                         ; $5944: $0d
    ld b, a                                       ; $5945: $47
    ld [hl], l                                    ; $5946: $75
    adc d                                         ; $5947: $8a
    rst $28                                       ; $5948: $ef
    sub e                                         ; $5949: $93
    rrca                                          ; $594a: $0f
    ld a, [hl]                                    ; $594b: $7e
    ld h, d                                       ; $594c: $62
    sbc a                                         ; $594d: $9f
    scf                                           ; $594e: $37
    ld c, $1f                                     ; $594f: $0e $1f
    rst $30                                       ; $5951: $f7
    add [hl]                                      ; $5952: $86
    ld l, l                                       ; $5953: $6d
    cp l                                          ; $5954: $bd
    ld a, $31                                     ; $5955: $3e $31
    jp nc, $408a                                  ; $5957: $d2 $8a $40

    ld e, d                                       ; $595a: $5a
    adc l                                         ; $595b: $8d
    ld [hl], h                                    ; $595c: $74
    ld b, l                                       ; $595d: $45

Call_06d_595e:
    adc d                                         ; $595e: $8a
    ld h, e                                       ; $595f: $63
    db $eb                                        ; $5960: $eb
    ld [hl], $2e                                  ; $5961: $36 $2e
    cp $4e                                        ; $5963: $fe $4e
    ld b, e                                       ; $5965: $43
    jr jr_06d_5922                                ; $5966: $18 $ba

    xor h                                         ; $5968: $ac
    adc b                                         ; $5969: $88
    rla                                           ; $596a: $17
    ld a, [hl-]                                   ; $596b: $3a
    ld [hl], l                                    ; $596c: $75
    ld c, h                                       ; $596d: $4c
    sub l                                         ; $596e: $95
    inc hl                                        ; $596f: $23
    ld [hl-], a                                   ; $5970: $32
    ld a, [bc]                                    ; $5971: $0a
    ld a, [$cbf2]                                 ; $5972: $fa $f2 $cb
    cpl                                           ; $5975: $2f
    add hl, bc                                    ; $5976: $09
    jp z, $e31a                                   ; $5977: $ca $1a $e3

    ld [hl-], a                                   ; $597a: $32
    ld e, b                                       ; $597b: $58
    sub e                                         ; $597c: $93
    ld b, e                                       ; $597d: $43
    dec h                                         ; $597e: $25
    inc l                                         ; $597f: $2c
    and d                                         ; $5980: $a2
    sbc [hl]                                      ; $5981: $9e
    dec d                                         ; $5982: $15
    ld e, d                                       ; $5983: $5a
    cp d                                          ; $5984: $ba
    dec b                                         ; $5985: $05
    dec l                                         ; $5986: $2d
    dec hl                                        ; $5987: $2b
    or h                                          ; $5988: $b4
    ld [hl], h                                    ; $5989: $74
    ld l, e                                       ; $598a: $6b
    or h                                          ; $598b: $b4
    ld [hl+], a                                   ; $598c: $22
    cp b                                          ; $598d: $b8
    pop de                                        ; $598e: $d1
    pop de                                        ; $598f: $d1

Call_06d_5990:
Jump_06d_5990:
    db $ed                                        ; $5990: $ed
    nop                                           ; $5991: $00
    rst $20                                       ; $5992: $e7
    xor c                                         ; $5993: $a9
    pop hl                                        ; $5994: $e1
    xor b                                         ; $5995: $a8
    ld c, [hl]                                    ; $5996: $4e
    rst $38                                       ; $5997: $ff
    or h                                          ; $5998: $b4
    ld l, d                                       ; $5999: $6a
    ld b, d                                       ; $599a: $42
    and l                                         ; $599b: $a5
    jr @+$81                                      ; $599c: $18 $7f

    ld a, [bc]                                    ; $599e: $0a
    xor d                                         ; $599f: $aa
    call z, $b1e2                                 ; $59a0: $cc $e2 $b1
    scf                                           ; $59a3: $37
    ld c, $97                                     ; $59a4: $0e $97
    inc bc                                        ; $59a6: $03
    ld l, c                                       ; $59a7: $69
    sub l                                         ; $59a8: $95
    ld a, [de]                                    ; $59a9: $1a
    add e                                         ; $59aa: $83
    or a                                          ; $59ab: $b7
    ld a, [hl]                                    ; $59ac: $7e
    call c, $b61b                                 ; $59ad: $dc $1b $b6
    push af                                       ; $59b0: $f5
    ld a, [$48c4]                                 ; $59b1: $fa $c4 $48
    db $eb                                        ; $59b4: $eb
    or d                                          ; $59b5: $b2
    ldh [$ea], a                                  ; $59b6: $e0 $ea
    call c, Call_06d_595e                         ; $59b8: $dc $5e $59
    inc a                                         ; $59bb: $3c
    ld b, l                                       ; $59bc: $45
    cp h                                          ; $59bd: $bc
    ret nc                                        ; $59be: $d0

    xor c                                         ; $59bf: $a9
    inc e                                         ; $59c0: $1c
    sub c                                         ; $59c1: $91
    ld [hl], c                                    ; $59c2: $71
    db $eb                                        ; $59c3: $eb
    ld h, a                                       ; $59c4: $67
    db $ec                                        ; $59c5: $ec
    sbc a                                         ; $59c6: $9f
    rst $18                                       ; $59c7: $df
    ld c, a                                       ; $59c8: $4f
    dec e                                         ; $59c9: $1d
    sub [hl]                                      ; $59ca: $96
    ld [hl], $c2                                  ; $59cb: $36 $c2
    inc a                                         ; $59cd: $3c
    dec b                                         ; $59ce: $05
    cp l                                          ; $59cf: $bd
    ld a, [bc]                                    ; $59d0: $0a
    or e                                          ; $59d1: $b3
    sbc a                                         ; $59d2: $9f
    or [hl]                                       ; $59d3: $b6
    inc bc                                        ; $59d4: $03
    rst $10                                       ; $59d5: $d7
    jp nc, Jump_06d_538a                          ; $59d6: $d2 $8a $53

    ld hl, $d6dd                                  ; $59d9: $21 $dd $d6
    adc a                                         ; $59dc: $8f
    xor $d1                                       ; $59dd: $ee $d1
    ld l, $a3                                     ; $59df: $2e $a3
    dec de                                        ; $59e1: $1b
    dec l                                         ; $59e2: $2d
    ld [c], a                                     ; $59e3: $e2
    add l                                         ; $59e4: $85
    and d                                         ; $59e5: $a2
    ld a, c                                       ; $59e6: $79
    cp $68                                        ; $59e7: $fe $68
    or b                                          ; $59e9: $b0
    ld de, $a3f5                                  ; $59ea: $11 $f5 $a3
    sub l                                         ; $59ed: $95
    inc hl                                        ; $59ee: $23
    ld [hl-], a                                   ; $59ef: $32
    ld [$ebd6], a                                 ; $59f0: $ea $d6 $eb
    ld h, e                                       ; $59f3: $63
    dec d                                         ; $59f4: $15
    pop hl                                        ; $59f5: $e1
    ccf                                           ; $59f6: $3f
    ld h, $a8                                     ; $59f7: $26 $a8
    xor [hl]                                      ; $59f9: $ae
    inc de                                        ; $59fa: $13
    sbc [hl]                                      ; $59fb: $9e
    ld [hl], b                                    ; $59fc: $70
    call c, Call_000_1f0e                         ; $59fd: $dc $0e $1f
    ld d, a                                       ; $5a00: $57
    adc [hl]                                      ; $5a01: $8e
    ret z                                         ; $5a02: $c8

    ret c                                         ; $5a03: $d8

    sub a                                         ; $5a04: $97
    ld e, a                                       ; $5a05: $5f
    ld a, [hl]                                    ; $5a06: $7e
    xor c                                         ; $5a07: $a9
    rla                                           ; $5a08: $17
    ld a, [de]                                    ; $5a09: $1a
    adc [hl]                                      ; $5a0a: $8e
    dec d                                         ; $5a0b: $15
    add c                                         ; $5a0c: $81
    or h                                          ; $5a0d: $b4
    or [hl]                                       ; $5a0e: $b6
    ld e, [hl]                                    ; $5a0f: $5e
    rra                                           ; $5a10: $1f
    xor e                                         ; $5a11: $ab
    ld [$31ff], sp                                ; $5a12: $08 $ff $31
    ld b, c                                       ; $5a15: $41
    sbc c                                         ; $5a16: $99
    and e                                         ; $5a17: $a3
    or c                                          ; $5a18: $b1
    ld [$a199], sp                                ; $5a19: $08 $99 $a1
    call Call_000_3953                            ; $5a1c: $cd $53 $39
    ld [hl+], a                                   ; $5a1f: $22
    ld h, e                                       ; $5a20: $63
    sub c                                         ; $5a21: $91
    ld [c], a                                     ; $5a22: $e2
    ret c                                         ; $5a23: $d8

    cp d                                          ; $5a24: $ba
    dec c                                         ; $5a25: $0d
    ccf                                           ; $5a26: $3f
    ld e, e                                       ; $5a27: $5b
    xor a                                         ; $5a28: $af
    ld b, b                                       ; $5a29: $40
    and a                                         ; $5a2a: $a7
    ld [hl], d                                    ; $5a2b: $72
    ld [hl], d                                    ; $5a2c: $72
    or h                                          ; $5a2d: $b4
    ld h, b                                       ; $5a2e: $60
    ld e, e                                       ; $5a2f: $5b
    db $d3                                        ; $5a30: $d3
    ld [hl], a                                    ; $5a31: $77
    ld l, l                                       ; $5a32: $6d
    push hl                                       ; $5a33: $e5
    db $d3                                        ; $5a34: $d3
    ld b, h                                       ; $5a35: $44
    ld l, d                                       ; $5a36: $6a
    di                                            ; $5a37: $f3
    rst $28                                       ; $5a38: $ef
    ld d, h                                       ; $5a39: $54
    ld e, c                                       ; $5a3a: $59
    and e                                         ; $5a3b: $a3
    add [hl]                                      ; $5a3c: $86
    sub e                                         ; $5a3d: $93
    dec d                                         ; $5a3e: $15
    jp nz, $afb5                                  ; $5a3f: $c2 $b5 $af

    db $db                                        ; $5a42: $db
    or b                                          ; $5a43: $b0
    ldh [$86], a                                  ; $5a44: $e0 $86
    ld h, e                                       ; $5a46: $63
    ld e, l                                       ; $5a47: $5d
    sub c                                         ; $5a48: $91
    ld e, c                                       ; $5a49: $59
    dec sp                                        ; $5a4a: $3b
    xor c                                         ; $5a4b: $a9
    adc [hl]                                      ; $5a4c: $8e
    ld c, [hl]                                    ; $5a4d: $4e
    ld l, b                                       ; $5a4e: $68
    and e                                         ; $5a4f: $a3
    dec c                                         ; $5a50: $0d
    ld l, c                                       ; $5a51: $69
    ld a, [hl]                                    ; $5a52: $7e
    ld sp, hl                                     ; $5a53: $f9
    pop de                                        ; $5a54: $d1
    db $ed                                        ; $5a55: $ed
    nop                                           ; $5a56: $00
    rst $20                                       ; $5a57: $e7
    xor c                                         ; $5a58: $a9
    dec sp                                        ; $5a59: $3b
    inc e                                         ; $5a5a: $1c
    ld [hl], e                                    ; $5a5b: $73
    sbc h                                         ; $5a5c: $9c
    cp d                                          ; $5a5d: $ba
    or h                                          ; $5a5e: $b4
    ld [c], a                                     ; $5a5f: $e2
    ld d, h                                       ; $5a60: $54
    sbc c                                         ; $5a61: $99
    push bc                                       ; $5a62: $c5
    ld h, e                                       ; $5a63: $63
    add d                                         ; $5a64: $82
    ld a, [hl-]                                   ; $5a65: $3a
    ld l, b                                       ; $5a66: $68
    ld b, e                                       ; $5a67: $43
    and e                                         ; $5a68: $a3
    ld e, h                                       ; $5a69: $5c
    ld a, [hl-]                                   ; $5a6a: $3a
    dec [hl]                                      ; $5a6b: $35
    add $b1                                       ; $5a6c: $c6 $b1
    inc c                                         ; $5a6e: $0c
    db $eb                                        ; $5a6f: $eb
    sbc l                                         ; $5a70: $9d
    dec [hl]                                      ; $5a71: $35
    ld c, d                                       ; $5a72: $4a
    add [hl]                                      ; $5a73: $86
    rla                                           ; $5a74: $17
    ld a, a                                       ; $5a75: $7f
    ld h, a                                       ; $5a76: $67
    dec sp                                        ; $5a77: $3b
    nop                                           ; $5a78: $00
    ld l, a                                       ; $5a79: $6f
    ld d, e                                       ; $5a7a: $53
    ld h, l                                       ; $5a7b: $65
    jp c, Jump_000_0a43                           ; $5a7c: $da $43 $0a

    ld c, d                                       ; $5a7f: $4a
    adc l                                         ; $5a80: $8d
    xor h                                         ; $5a81: $ac
    call nz, $85ba                                ; $5a82: $c4 $ba $85
    ld d, d                                       ; $5a85: $52
    ld h, e                                       ; $5a86: $63
    ld [hl], b                                    ; $5a87: $70
    ld b, l                                       ; $5a88: $45
    sub h                                         ; $5a89: $94
    ld h, d                                       ; $5a8a: $62
    ld hl, sp-$27                                 ; $5a8b: $f8 $d9
    ld c, $d7                                     ; $5a8d: $0e $d7
    rst $00                                       ; $5a8f: $c7
    ld a, [hl+]                                   ; $5a90: $2a
    jp nz, Jump_06d_4c7f                          ; $5a91: $c2 $7f $4c

    ld d, b                                       ; $5a94: $50
    cp a                                          ; $5a95: $bf
    ld l, h                                       ; $5a96: $6c
    ld a, l                                       ; $5a97: $7d
    adc a                                         ; $5a98: $8f
    daa                                           ; $5a99: $27
    sub h                                         ; $5a9a: $94
    push bc                                       ; $5a9b: $c5
    inc [hl]                                      ; $5a9c: $34

Jump_06d_5a9d:
    or h                                          ; $5a9d: $b4
    ld a, e                                       ; $5a9e: $7b
    ld l, [hl]                                    ; $5a9f: $6e
    dec l                                         ; $5aa0: $2d
    scf                                           ; $5aa1: $37
    sub l                                         ; $5aa2: $95
    ld e, b                                       ; $5aa3: $58
    or a                                          ; $5aa4: $b7
    or b                                          ; $5aa5: $b0
    dec e                                         ; $5aa6: $1d
    rst $10                                       ; $5aa7: $d7
    rst $00                                       ; $5aa8: $c7
    ld a, [hl+]                                   ; $5aa9: $2a
    jp nz, Jump_06d_4c7f                          ; $5aaa: $c2 $7f $4c

    ld d, b                                       ; $5aad: $50
    cp a                                          ; $5aae: $bf
    ld l, h                                       ; $5aaf: $6c
    ld a, l                                       ; $5ab0: $7d
    adc a                                         ; $5ab1: $8f
    daa                                           ; $5ab2: $27
    sub h                                         ; $5ab3: $94
    push bc                                       ; $5ab4: $c5
    ld d, h                                       ; $5ab5: $54
    ld h, d                                       ; $5ab6: $62
    db $dd                                        ; $5ab7: $dd
    ld b, d                                       ; $5ab8: $42
    sub c                                         ; $5ab9: $91
    inc hl                                        ; $5aba: $23
    ld l, l                                       ; $5abb: $6d
    adc l                                         ; $5abc: $8d
    ld l, l                                       ; $5abd: $6d
    rlca                                          ; $5abe: $07
    ld l, a                                       ; $5abf: $6f
    ld d, e                                       ; $5ac0: $53
    ld h, l                                       ; $5ac1: $65
    jp c, Jump_000_0a43                           ; $5ac2: $da $43 $0a

    xor d                                         ; $5ac5: $aa
    call z, Call_000_31e2                         ; $5ac6: $cc $e2 $31
    ld b, c                                       ; $5ac9: $41
    dec e                                         ; $5aca: $1d
    ld d, e                                       ; $5acb: $53
    dec h                                         ; $5acc: $25
    sub $2d                                       ; $5acd: $d6 $2d
    sub h                                         ; $5acf: $94
    ld a, [de]                                    ; $5ad0: $1a
    add e                                         ; $5ad1: $83
    dec de                                        ; $5ad2: $1b
    ld c, b                                       ; $5ad3: $48
    inc d                                         ; $5ad4: $14
    ld a, [de]                                    ; $5ad5: $1a
    db $fc                                        ; $5ad6: $fc
    ld l, h                                       ; $5ad7: $6c
    rlca                                          ; $5ad8: $07
    ld d, a                                       ; $5ad9: $57
    jp nc, $f0f2                                  ; $5ada: $d2 $f2 $f0

    inc hl                                        ; $5add: $23
    xor b                                         ; $5ade: $a8
    ld [hl-], a                                   ; $5adf: $32
    adc e                                         ; $5ae0: $8b
    rst $00                                       ; $5ae1: $c7
    inc b                                         ; $5ae2: $04
    call Call_000_3aa3                            ; $5ae3: $cd $a3 $3a
    call $9ff3                                    ; $5ae6: $cd $f3 $9f
    add [hl]                                      ; $5ae9: $86
    ld c, e                                       ; $5aea: $4b
    and a                                         ; $5aeb: $a7
    ld e, b                                       ; $5aec: $58
    reti                                          ; $5aed: $d9


    and e                                         ; $5aee: $a3
    call nc, Call_06d_5c18                        ; $5aef: $d4 $18 $5c
    xor d                                         ; $5af2: $aa
    inc e                                         ; $5af3: $1c
    inc sp                                        ; $5af4: $33
    sbc [hl]                                      ; $5af5: $9e
    ldh [$d7], a                                  ; $5af6: $e0 $d7
    ld l, h                                       ; $5af8: $6c
    rlca                                          ; $5af9: $07
    scf                                           ; $5afa: $37
    ld b, a                                       ; $5afb: $47
    sbc [hl]                                      ; $5afc: $9e
    sub l                                         ; $5afd: $95
    ld a, [de]                                    ; $5afe: $1a
    add e                                         ; $5aff: $83
    dec hl                                        ; $5b00: $2b
    rst $00                                       ; $5b01: $c7
    dec d                                         ; $5b02: $15
    sub l                                         ; $5b03: $95
    or b                                          ; $5b04: $b0
    adc b                                         ; $5b05: $88
    scf                                           ; $5b06: $37
    ld c, $1f                                     ; $5b07: $0e $1f
    db $fd                                        ; $5b09: $fd
    adc $76                                       ; $5b0a: $ce $76
    nop                                           ; $5b0c: $00
    ld l, a                                       ; $5b0d: $6f
    pop de                                        ; $5b0e: $d1
    add hl, bc                                    ; $5b0f: $09
    ld a, [de]                                    ; $5b10: $1a
    ld a, [c]                                     ; $5b11: $f2
    sub h                                         ; $5b12: $94
    ld hl, sp+$04                                 ; $5b13: $f8 $04
    ld [$1a19], a                                 ; $5b15: $ea $19 $1a
    ld d, l                                       ; $5b18: $55
    or c                                          ; $5b19: $b1
    push af                                       ; $5b1a: $f5
    inc a                                         ; $5b1b: $3c
    dec [hl]                                      ; $5b1c: $35
    rst $38                                       ; $5b1d: $ff
    ld c, [hl]                                    ; $5b1e: $4e
    jp $9d51                                      ; $5b1f: $c3 $51 $9d


    ld d, d                                       ; $5b22: $52
    ld b, e                                       ; $5b23: $43
    ld a, [de]                                    ; $5b24: $1a
    xor h                                         ; $5b25: $ac
    ld [$d5a4], sp                                ; $5b26: $08 $a4 $d5
    xor c                                         ; $5b29: $a9
    ld e, a                                       ; $5b2a: $5f
    ld l, b                                       ; $5b2b: $68
    inc e                                         ; $5b2c: $1c
    ccf                                           ; $5b2d: $3f
    db $db                                        ; $5b2e: $db
    ld bc, $249f                                  ; $5b2f: $01 $9f $24
    ld h, h                                       ; $5b32: $64
    ccf                                           ; $5b33: $3f
    db $fd                                        ; $5b34: $fd
    adc a                                         ; $5b35: $8f
    inc a                                         ; $5b36: $3c
    ld l, e                                       ; $5b37: $6b
    and h                                         ; $5b38: $a4
    cp c                                          ; $5b39: $b9
    sub l                                         ; $5b3a: $95
    ld h, c                                       ; $5b3b: $61
    add d                                         ; $5b3c: $82
    ld e, [hl]                                    ; $5b3d: $5e
    add l                                         ; $5b3e: $85
    reti                                          ; $5b3f: $d9


    ld c, a                                       ; $5b40: $4f
    add d                                         ; $5b41: $82
    and $7b                                       ; $5b42: $e6 $7b

jr_06d_5b44:
    or h                                          ; $5b44: $b4
    pop hl                                        ; $5b45: $e1
    ld a, b                                       ; $5b46: $78
    cp d                                          ; $5b47: $ba
    pop de                                        ; $5b48: $d1
    cp $67                                        ; $5b49: $fe $67
    adc a                                         ; $5b4b: $8f
    or b                                          ; $5b4c: $b0
    add [hl]                                      ; $5b4d: $86
    jr nc, jr_06d_5b44                            ; $5b4e: $30 $f4

    ld [$7e9c], a                                 ; $5b50: $ea $9c $7e
    add h                                         ; $5b53: $84
    ld b, l                                       ; $5b54: $45
    db $dd                                        ; $5b55: $dd
    ld c, $37                                     ; $5b56: $0e $37
    ld b, a                                       ; $5b58: $47
    sbc [hl]                                      ; $5b59: $9e
    sub l                                         ; $5b5a: $95
    ld a, [de]                                    ; $5b5b: $1a
    pop af                                        ; $5b5c: $f1
    ld b, a                                       ; $5b5d: $47
    ld e, l                                       ; $5b5e: $5d
    ld e, d                                       ; $5b5f: $5a
    ld [hl], c                                    ; $5b60: $71
    ld [$c520], a                                 ; $5b61: $ea $20 $c5
    ld c, c                                       ; $5b64: $49
    jp nz, $a08f                                  ; $5b65: $c2 $8f $a0

    ld c, $5a                                     ; $5b68: $0e $5a
    sbc h                                         ; $5b6a: $9c
    add $50                                       ; $5b6b: $c6 $50
    ld h, l                                       ; $5b6d: $65
    jp nc, Jump_06d_688a                          ; $5b6e: $d2 $8a $68

    swap c                                        ; $5b71: $cb $31
    rst $00                                       ; $5b73: $c7
    pop de                                        ; $5b74: $d1
    ld d, d                                       ; $5b75: $52
    db $e3                                        ; $5b76: $e3
    rst $28                                       ; $5b77: $ef
    ld d, h                                       ; $5b78: $54
    ld h, $83                                     ; $5b79: $26 $83
    rra                                           ; $5b7b: $1f
    db $dd                                        ; $5b7c: $dd
    ld c, $37                                     ; $5b7d: $0e $37
    ld sp, hl                                     ; $5b7f: $f9
    db $fd                                        ; $5b80: $fd
    inc [hl]                                      ; $5b81: $34
    sub b                                         ; $5b82: $90
    ret c                                         ; $5b83: $d8

    rst $38                                       ; $5b84: $ff
    ret z                                         ; $5b85: $c8

    or e                                          ; $5b86: $b3
    adc d                                         ; $5b87: $8a
    ld h, [hl]                                    ; $5b88: $66
    push af                                       ; $5b89: $f5
    adc $5e                                       ; $5b8a: $ce $5e
    ld h, c                                       ; $5b8c: $61
    adc [hl]                                      ; $5b8d: $8e
    add [hl]                                      ; $5b8e: $86
    cp l                                          ; $5b8f: $bd
    sbc [hl]                                      ; $5b90: $9e

Call_06d_5b91:
    cp l                                          ; $5b91: $bd
    sub d                                         ; $5b92: $92
    inc c                                         ; $5b93: $0c
    db $db                                        ; $5b94: $db
    ld bc, $4737                                  ; $5b95: $01 $37 $47
    sbc [hl]                                      ; $5b98: $9e
    push de                                       ; $5b99: $d5
    or c                                          ; $5b9a: $b1
    ld hl, $928c                                  ; $5b9b: $21 $8c $92
    dec d                                         ; $5b9e: $15
    jp nc, Jump_06d_71d5                          ; $5b9f: $d2 $d5 $71

    rla                                           ; $5ba2: $17
    adc a                                         ; $5ba3: $8f
    push de                                       ; $5ba4: $d5
    ld c, a                                       ; $5ba5: $4f
    inc bc                                        ; $5ba6: $03
    adc c                                         ; $5ba7: $89
    push af                                       ; $5ba8: $f5
    add sp, -$03                                  ; $5ba9: $e8 $fd
    ld a, e                                       ; $5bab: $7b
    ld e, h                                       ; $5bac: $5c
    ld c, $fd                                     ; $5bad: $0e $fd
    di                                            ; $5baf: $f3
    halt                                          ; $5bb0: $76
    inc bc                                        ; $5bb1: $03
    adc c                                         ; $5bb2: $89
    sbc l                                         ; $5bb3: $9d
    cp $d7                                        ; $5bb4: $fe $d7
    halt                                          ; $5bb6: $76
    nop                                           ; $5bb7: $00
    rst $20                                       ; $5bb8: $e7
    ld a, [de]                                    ; $5bb9: $1a
    jp nc, $81a6                                  ; $5bba: $d2 $a6 $81

    call nz, Call_06d_47fe                        ; $5bbd: $c4 $fe $47
    sbc [hl]                                      ; $5bc0: $9e
    ld d, l                                       ; $5bc1: $55
    ld e, c                                       ; $5bc2: $59
    ld a, a                                       ; $5bc3: $7f
    ld d, [hl]                                    ; $5bc4: $56
    rst $00                                       ; $5bc5: $c7
    ld e, l                                       ; $5bc6: $5d
    inc a                                         ; $5bc7: $3c
    sub $8c                                       ; $5bc8: $d6 $8c
    add [hl]                                      ; $5bca: $86
    halt                                          ; $5bcb: $76
    rst $08                                       ; $5bcc: $cf
    xor l                                         ; $5bcd: $ad
    push hl                                       ; $5bce: $e5
    ret nc                                        ; $5bcf: $d0

    dec a                                         ; $5bd0: $3d
    ld b, l                                       ; $5bd1: $45
    ld [$ccaa], sp                                ; $5bd2: $08 $aa $cc
    ld [c], a                                     ; $5bd5: $e2
    or c                                          ; $5bd6: $b1
    db $ed                                        ; $5bd7: $ed
    nop                                           ; $5bd8: $00
    rra                                           ; $5bd9: $1f
    db $dd                                        ; $5bda: $dd
    and e                                         ; $5bdb: $a3
    db $fd                                        ; $5bdc: $fd
    jp Jump_06d_768d                              ; $5bdd: $c3 $8d $76


    ld b, a                                       ; $5be0: $47
    cp [hl]                                       ; $5be1: $be
    ld [$726b], sp                                ; $5be2: $08 $6b $72
    xor b                                         ; $5be5: $a8
    dec de                                        ; $5be6: $1b
    ld a, d                                       ; $5be7: $7a
    ld d, h                                       ; $5be8: $54
    adc [hl]                                      ; $5be9: $8e
    and e                                         ; $5bea: $a3
    dec de                                        ; $5beb: $1b
    ld b, e                                       ; $5bec: $43
    ld e, h                                       ; $5bed: $5c
    ld a, a                                       ; $5bee: $7f
    sub h                                         ; $5bef: $94
    xor [hl]                                      ; $5bf0: $ae
    jp z, $3cd4                                   ; $5bf1: $ca $d4 $3c

    adc [hl]                                      ; $5bf4: $8e
    ld d, l                                       ; $5bf5: $55
    ld d, [hl]                                    ; $5bf6: $56
    ld c, [hl]                                    ; $5bf7: $4e
    adc [hl]                                      ; $5bf8: $8e
    dec hl                                        ; $5bf9: $2b
    daa                                           ; $5bfa: $27
    ld e, b                                       ; $5bfb: $58
    ld b, e                                       ; $5bfc: $43
    sbc d                                         ; $5bfd: $9a
    ld h, a                                       ; $5bfe: $67
    or $53                                        ; $5bff: $f6 $53
    ld c, a                                       ; $5c01: $4f
    ld d, l                                       ; $5c02: $55
    or $7b                                        ; $5c03: $f6 $7b
    xor [hl]                                      ; $5c05: $ae
    jr c, @-$23                                   ; $5c06: $38 $db

    ld bc, $b8d7                                  ; $5c08: $01 $d7 $b8
    adc e                                         ; $5c0b: $8b
    rst $00                                       ; $5c0c: $c7
    xor d                                         ; $5c0d: $aa
    ld h, e                                       ; $5c0e: $63
    sub c                                         ; $5c0f: $91
    push af                                       ; $5c10: $f5
    call nc, $fe88                                ; $5c11: $d4 $88 $fe
    ld a, c                                       ; $5c14: $79
    ld e, e                                       ; $5c15: $5b
    ld d, b                                       ; $5c16: $50
    ld h, l                                       ; $5c17: $65

Call_06d_5c18:
    ld d, $8f                                     ; $5c18: $16 $8f
    ld l, l                                       ; $5c1a: $6d
    rlca                                          ; $5c1b: $07
    rst $20                                       ; $5c1c: $e7
    ld a, [de]                                    ; $5c1d: $1a
    jp nc, $81a6                                  ; $5c1e: $d2 $a6 $81

    call nz, Call_06d_47fe                        ; $5c21: $c4 $fe $47
    sbc [hl]                                      ; $5c24: $9e
    dec [hl]                                      ; $5c25: $35
    rst $38                                       ; $5c26: $ff
    ld c, [hl]                                    ; $5c27: $4e
    sub l                                         ; $5c28: $95
    ld [hl], l                                    ; $5c29: $75
    sub b                                         ; $5c2a: $90
    ld [c], a                                     ; $5c2b: $e2
    inc d                                         ; $5c2c: $14
    ld c, b                                       ; $5c2d: $48
    ld l, h                                       ; $5c2e: $6c
    ld b, h                                       ; $5c2f: $44
    adc [hl]                                      ; $5c30: $8e
    ld d, e                                       ; $5c31: $53
    ld c, a                                       ; $5c32: $4f
    adc l                                         ; $5c33: $8d
    add sp, -$61                                  ; $5c34: $e8 $9f
    or a                                          ; $5c36: $b7
    dec b                                         ; $5c37: $05
    ld d, l                                       ; $5c38: $55
    ld h, [hl]                                    ; $5c39: $66
    pop af                                        ; $5c3a: $f1
    ret c                                         ; $5c3b: $d8

    halt                                          ; $5c3c: $76
    nop                                           ; $5c3d: $00
    rra                                           ; $5c3e: $1f
    ld d, a                                       ; $5c3f: $57
    sbc c                                         ; $5c40: $99
    push bc                                       ; $5c41: $c5
    ld h, e                                       ; $5c42: $63
    dec [hl]                                      ; $5c43: $35
    ld h, d                                       ; $5c44: $62
    ld [hl], a                                    ; $5c45: $77
    call z, $bd91                                 ; $5c46: $cc $91 $bd
    ret nc                                        ; $5c49: $d0

    db $e4                                        ; $5c4a: $e4
    ret nc                                        ; $5c4b: $d0

    sub b                                         ; $5c4c: $90
    xor d                                         ; $5c4d: $aa
    add e                                         ; $5c4e: $83
    jp z, Jump_06d_7c31                           ; $5c4f: $ca $31 $7c

    ccf                                           ; $5c52: $3f
    adc d                                         ; $5c53: $8a
    db $ed                                        ; $5c54: $ed
    nop                                           ; $5c55: $00
    rst $20                                       ; $5c56: $e7
    xor c                                         ; $5c57: $a9
    ld d, e                                       ; $5c58: $53
    ld a, b                                       ; $5c59: $78
    or a                                          ; $5c5a: $b7
    ld l, h                                       ; $5c5b: $6c
    ld a, [de]                                    ; $5c5c: $1a
    adc [hl]                                      ; $5c5d: $8e
    ld d, l                                       ; $5c5e: $55
    ld c, [hl]                                    ; $5c5f: $4e
    adc [hl]                                      ; $5c60: $8e
    dec hl                                        ; $5c61: $2b
    daa                                           ; $5c62: $27
    ld e, b                                       ; $5c63: $58
    rst $30                                       ; $5c64: $f7

Call_06d_5c65:
    inc d                                         ; $5c65: $14
    sub c                                         ; $5c66: $91
    db $fd                                        ; $5c67: $fd
    ld [$ccaa], sp                                ; $5c68: $08 $aa $cc
    ld [c], a                                     ; $5c6b: $e2
    or c                                          ; $5c6c: $b1
    db $ed                                        ; $5c6d: $ed
    nop                                           ; $5c6e: $00
    ld d, a                                       ; $5c6f: $57
    ld l, b                                       ; $5c70: $68
    ld de, $398e                                  ; $5c71: $11 $8e $39
    or d                                          ; $5c74: $b2
    ld d, e                                       ; $5c75: $53
    ld h, l                                       ; $5c76: $65
    ld d, $8f                                     ; $5c77: $16 $8f
    dec [hl]                                      ; $5c79: $35
    rst $38                                       ; $5c7a: $ff
    ld c, [hl]                                    ; $5c7b: $4e
    dec a                                         ; $5c7c: $3d
    ld [hl], l                                    ; $5c7d: $75
    ld l, c                                       ; $5c7e: $69
    ld h, h                                       ; $5c7f: $64
    ld b, l                                       ; $5c80: $45
    sub b                                         ; $5c81: $90
    ld l, e                                       ; $5c82: $6b
    ld [hl], a                                    ; $5c83: $77
    call z, $db91                                 ; $5c84: $cc $91 $db
    ld bc, $a597                                  ; $5c87: $01 $97 $a5
    pop de                                        ; $5c8a: $d1
    xor a                                         ; $5c8b: $af
    jr c, jr_06d_5c9b                             ; $5c8c: $38 $0d

    inc h                                         ; $5c8e: $24
    halt                                          ; $5c8f: $76
    xor d                                         ; $5c90: $aa
    call z, $b1e2                                 ; $5c91: $cc $e2 $b1
    ld a, [hl+]                                   ; $5c94: $2a
    cp a                                          ; $5c95: $bf
    ld b, a                                       ; $5c96: $47
    sub e                                         ; $5c97: $93
    ld b, e                                       ; $5c98: $43
    ld b, e                                       ; $5c99: $43

Jump_06d_5c9a:
    xor d                                         ; $5c9a: $aa

jr_06d_5c9b:
    ld c, $2a                                     ; $5c9b: $0e $2a
    daa                                           ; $5c9d: $27
    adc e                                         ; $5c9e: $8b
    add hl, hl                                    ; $5c9f: $29
    sub a                                         ; $5ca0: $97
    ld b, a                                       ; $5ca1: $47
    inc sp                                        ; $5ca2: $33
    ld a, d                                       ; $5ca3: $7a
    add l                                         ; $5ca4: $85
    add hl, sp                                    ; $5ca5: $39
    ld a, [de]                                    ; $5ca6: $1a
    or $7a                                        ; $5ca7: $f6 $7a
    or $4a                                        ; $5ca9: $f6 $4a
    ld [hl-], a                                   ; $5cab: $32
    ld [$7f9a], sp                                ; $5cac: $08 $9a $7f
    rst $20                                       ; $5caf: $e7
    adc l                                         ; $5cb0: $8d
    inc bc                                        ; $5cb1: $03
    scf                                           ; $5cb2: $37
    ld b, a                                       ; $5cb3: $47
    sbc [hl]                                      ; $5cb4: $9e
    sub l                                         ; $5cb5: $95
    ld a, [de]                                    ; $5cb6: $1a
    ld d, c                                       ; $5cb7: $51
    ld h, l                                       ; $5cb8: $65
    db $e3                                        ; $5cb9: $e3
    ld e, b                                       ; $5cba: $58
    ld b, [hl]                                    ; $5cbb: $46
    or $d3                                        ; $5cbc: $f6 $d3
    inc a                                         ; $5cbe: $3c
    xor d                                         ; $5cbf: $aa
    ld d, e                                       ; $5cc0: $53
    cp c                                          ; $5cc1: $b9
    cpl                                           ; $5cc2: $2f
    and $c8                                       ; $5cc3: $e6 $c8
    add [hl]                                      ; $5cc5: $86
    ld b, [hl]                                    ; $5cc6: $46
    ld de, $f96d                                  ; $5cc7: $11 $6d $f9
    ld de, $9954                                  ; $5cca: $11 $54 $99
    push bc                                       ; $5ccd: $c5
    ld h, e                                       ; $5cce: $63
    db $db                                        ; $5ccf: $db
    ld bc, $2657                                  ; $5cd0: $01 $57 $26
    dec hl                                        ; $5cd3: $2b
    ld c, a                                       ; $5cd4: $4f
    ld l, c                                       ; $5cd5: $69
    and l                                         ; $5cd6: $a5
    and d                                         ; $5cd7: $a2
    ld [de], a                                    ; $5cd8: $12
    ld d, $f1                                     ; $5cd9: $16 $f1
    add $01                                       ; $5cdb: $c6 $01
    scf                                           ; $5cdd: $37
    sub [hl]                                      ; $5cde: $96
    inc de                                        ; $5cdf: $13
    ld d, h                                       ; $5ce0: $54
    ld c, [hl]                                    ; $5ce1: $4e
    ld d, [hl]                                    ; $5ce2: $56
    sbc [hl]                                      ; $5ce3: $9e
    jp nc, Jump_06d_7ada                          ; $5ce4: $d2 $da $7a

    add hl, sp                                    ; $5ce7: $39
    sub b                                         ; $5ce8: $90
    ld d, [hl]                                    ; $5ce9: $56
    xor c                                         ; $5cea: $a9
    ld sp, $9ab8                                  ; $5ceb: $31 $b8 $9a
    ld d, b                                       ; $5cee: $50
    add hl, hl                                    ; $5cef: $29
    add $9f                                       ; $5cf0: $c6 $9f
    ld e, e                                       ; $5cf2: $5b
    ld l, a                                       ; $5cf3: $6f
    adc [hl]                                      ; $5cf4: $8e
    inc a                                         ; $5cf5: $3c
    xor e                                         ; $5cf6: $ab
    ld b, d                                       ; $5cf7: $42
    cp b                                          ; $5cf8: $b8
    ret nc                                        ; $5cf9: $d0

    ld b, b                                       ; $5cfa: $40
    ld h, d                                       ; $5cfb: $62
    push bc                                       ; $5cfc: $c5
    ld hl, sp+$2f                                 ; $5cfd: $f8 $2f
    inc [hl]                                      ; $5cff: $34
    cp c                                          ; $5d00: $b9
    cp d                                          ; $5d01: $ba
    ret                                           ; $5d02: $c9


    ld a, [de]                                    ; $5d03: $1a
    ld l, l                                       ; $5d04: $6d
    ld c, d                                       ; $5d05: $4a
    ld d, a                                       ; $5d06: $57
    ld h, l                                       ; $5d07: $65
    xor d                                         ; $5d08: $aa
    inc e                                         ; $5d09: $1c
    sub c                                         ; $5d0a: $91
    pop af                                        ; $5d0b: $f1
    adc l                                         ; $5d0c: $8d
    inc bc                                        ; $5d0d: $03
    ld d, a                                       ; $5d0e: $57
    halt                                          ; $5d0f: $76
    ret c                                         ; $5d10: $d8

    inc [hl]                                      ; $5d11: $34
    sub b                                         ; $5d12: $90
    ret c                                         ; $5d13: $d8

    db $fc                                        ; $5d14: $fc
    dec sp                                        ; $5d15: $3b
    ld e, e                                       ; $5d16: $5b
    rst $08                                       ; $5d17: $cf
    ld d, e                                       ; $5d18: $53
    xor c                                         ; $5d19: $a9
    ld hl, $7f0d                                  ; $5d1a: $21 $0d $7f
    inc [hl]                                      ; $5d1d: $34
    cp c                                          ; $5d1e: $b9
    jp z, $d1c9                                   ; $5d1f: $ca $c9 $d1

    ld h, [hl]                                    ; $5d22: $66
    ld h, a                                       ; $5d23: $67
    dec a                                         ; $5d24: $3d
    dec de                                        ; $5d25: $1b
    ld d, d                                       ; $5d26: $52
    inc hl                                        ; $5d27: $23
    or l                                          ; $5d28: $b5
    adc [hl]                                      ; $5d29: $8e
    cp e                                          ; $5d2a: $bb
    ld a, b                                       ; $5d2b: $78
    xor h                                         ; $5d2c: $ac
    ld [hl], h                                    ; $5d2d: $74
    ld a, l                                       ; $5d2e: $7d
    rst $10                                       ; $5d2f: $d7
    ld d, [hl]                                    ; $5d30: $56
    ld a, $4d                                     ; $5d31: $3e $4d
    and h                                         ; $5d33: $a4
    ld l, [hl]                                    ; $5d34: $6e
    cp l                                          ; $5d35: $bd
    ld b, $ad                                     ; $5d36: $06 $ad
    sub b                                         ; $5d38: $90
    ld c, [hl]                                    ; $5d39: $4e

jr_06d_5d3a:
    ret nc                                        ; $5d3a: $d0

    inc a                                         ; $5d3b: $3c
    xor d                                         ; $5d3c: $aa
    ld d, e                                       ; $5d3d: $53
    ret z                                         ; $5d3e: $c8

    ld sp, $a53f                                  ; $5d3f: $31 $3f $a5
    add $e0                                       ; $5d42: $c6 $e0
    jp z, $e171                                   ; $5d44: $ca $71 $e1

    adc $38                                       ; $5d47: $ce $38
    ld e, e                                       ; $5d49: $5b
    rst $18                                       ; $5d4a: $df
    pop bc                                        ; $5d4b: $c1
    ld b, l                                       ; $5d4c: $45
    inc [hl]                                      ; $5d4d: $34
    add hl, sp                                    ; $5d4e: $39
    ld d, h                                       ; $5d4f: $54
    jr c, jr_06d_5d3a                             ; $5d50: $38 $e8

    ld a, a                                       ; $5d52: $7f
    pop hl                                        ; $5d53: $e1
    ld b, h                                       ; $5d54: $44
    ld d, a                                       ; $5d55: $57
    rst $08                                       ; $5d56: $cf
    cp $67                                        ; $5d57: $fe $67
    adc a                                         ; $5d59: $8f
    add sp, -$63                                  ; $5d5a: $e8 $9d
    cp l                                          ; $5d5c: $bd
    ld a, [hl-]                                   ; $5d5d: $3a
    and a                                         ; $5d5e: $a7
    rra                                           ; $5d5f: $1f
    ld h, c                                       ; $5d60: $61
    ld d, c                                       ; $5d61: $51
    or a                                          ; $5d62: $b7
    inc bc                                        ; $5d63: $03
    sbc a                                         ; $5d64: $9f
    pop de                                        ; $5d65: $d1
    call c, $93ca                                 ; $5d66: $dc $ca $93
    ld a, [hl-]                                   ; $5d69: $3a
    jp c, $d3cc                                   ; $5d6a: $da $cc $d3

    dec a                                         ; $5d6d: $3d
    ld [hl], d                                    ; $5d6e: $72
    adc l                                         ; $5d6f: $8d
    ld a, [bc]                                    ; $5d70: $0a
    ld a, d                                       ; $5d71: $7a
    dec d                                         ; $5d72: $15
    ld h, [hl]                                    ; $5d73: $66
    ccf                                           ; $5d74: $3f
    cp l                                          ; $5d75: $bd
    ld [hl], c                                    ; $5d76: $71
    nop                                           ; $5d77: $00
    sub a                                         ; $5d78: $97
    and l                                         ; $5d79: $a5
    ld a, b                                       ; $5d7a: $78
    ld a, [de]                                    ; $5d7b: $1a
    ld c, b                                       ; $5d7c: $48
    xor h                                         ; $5d7d: $ac
    ld l, $b7                                     ; $5d7e: $2e $b7
    push af                                       ; $5d80: $f5
    ld a, [de]                                    ; $5d81: $1a
    or h                                          ; $5d82: $b4
    ld sp, $a9f9                                  ; $5d83: $31 $f9 $a9
    ld h, e                                       ; $5d86: $63
    ld b, e                                       ; $5d87: $43
    jr jr_06d_5daf                                ; $5d88: $18 $25

    ld d, e                                       ; $5d8a: $53
    db $e3                                        ; $5d8b: $e3
    rst $28                                       ; $5d8c: $ef
    sub h                                         ; $5d8d: $94
    ld a, [de]                                    ; $5d8e: $1a
    dec c                                         ; $5d8f: $0d
    ld e, c                                       ; $5d90: $59
    inc a                                         ; $5d91: $3c
    db $dd                                        ; $5d92: $dd
    or [hl]                                       ; $5d93: $b6
    db $ed                                        ; $5d94: $ed
    nop                                           ; $5d95: $00
    rst $10                                       ; $5d96: $d7
    ld d, [hl]                                    ; $5d97: $56
    ld d, $a3                                     ; $5d98: $16 $a3
    jr nc, jr_06d_5da3                            ; $5d9a: $30 $07

    cp a                                          ; $5d9c: $bf
    halt                                          ; $5d9d: $76
    ld sp, $c22a                                  ; $5d9e: $31 $2a $c2
    ld l, $9e                                     ; $5da1: $2e $9e

jr_06d_5da3:
    or h                                          ; $5da3: $b4
    push af                                       ; $5da4: $f5
    and $c8                                       ; $5da5: $e6 $c8
    or e                                          ; $5da7: $b3
    ld e, [hl]                                    ; $5da8: $5e
    xor b                                         ; $5da9: $a8
    jp $8ad2                                      ; $5daa: $c3 $d2 $8a


    add $22                                       ; $5dad: $c6 $22

jr_06d_5daf:
    db $eb                                        ; $5daf: $eb
    and a                                         ; $5db0: $a7
    add c                                         ; $5db1: $81
    call nz, Call_000_3532                        ; $5db2: $c4 $32 $35
    ld h, h                                       ; $5db5: $64
    ld d, [hl]                                    ; $5db6: $56
    db $fc                                        ; $5db7: $fc
    ld hl, $55e8                                  ; $5db8: $21 $e8 $55
    sbc b                                         ; $5dbb: $98
    db $fd                                        ; $5dbc: $fd
    call nc, Call_000_13eb                        ; $5dbd: $d4 $eb $13
    inc hl                                        ; $5dc0: $23
    ld l, l                                       ; $5dc1: $6d
    dec sp                                        ; $5dc2: $3b
    nop                                           ; $5dc3: $00
    ld l, a                                       ; $5dc4: $6f
    cpl                                           ; $5dc5: $2f
    inc d                                         ; $5dc6: $14
    ld a, [hl]                                    ; $5dc7: $7e
    inc l                                         ; $5dc8: $2c
    ld hl, sp-$31                                 ; $5dc9: $f8 $cf
    ld e, l                                       ; $5dcb: $5d
    ret nc                                        ; $5dcc: $d0

    db $fc                                        ; $5dcd: $fc
    dec sp                                        ; $5dce: $3b
    cp l                                          ; $5dcf: $bd
    ld d, b                                       ; $5dd0: $50
    ld b, a                                       ; $5dd1: $47
    ld [hl], l                                    ; $5dd2: $75
    di                                            ; $5dd3: $f3
    add $01                                       ; $5dd4: $c6 $01
    rst $20                                       ; $5dd6: $e7
    xor c                                         ; $5dd7: $a9
    adc [hl]                                      ; $5dd8: $8e
    db $dd                                        ; $5dd9: $dd
    jp hl                                         ; $5dda: $e9


    add h                                         ; $5ddb: $84
    ld [hl], $f5                                  ; $5ddc: $36 $f5
    xor h                                         ; $5dde: $ac
    ld h, e                                       ; $5ddf: $63
    jp nc, $05fa                                  ; $5de0: $d2 $fa $05

    xor l                                         ; $5de3: $ad
    ld h, a                                       ; $5de4: $67
    xor c                                         ; $5de5: $a9
    ld sp, $e479                                  ; $5de6: $31 $79 $e4
    ret z                                         ; $5de9: $c8

    jp nc, $eaf5                                  ; $5dea: $d2 $f5 $ea

    sbc h                                         ; $5ded: $9c
    ld a, [hl]                                    ; $5dee: $7e
    add h                                         ; $5def: $84
    ld b, l                                       ; $5df0: $45
    db $dd                                        ; $5df1: $dd
    ld a, d                                       ; $5df2: $7a
    ld e, c                                       ; $5df3: $59
    dec de                                        ; $5df4: $1b
    ld b, d                                       ; $5df5: $42
    dec d                                         ; $5df6: $15
    daa                                           ; $5df7: $27
    ld h, [hl]                                    ; $5df8: $66

jr_06d_5df9:
    xor l                                         ; $5df9: $ad
    ld d, d                                       ; $5dfa: $52
    ld a, [de]                                    ; $5dfb: $1a
    inc hl                                        ; $5dfc: $23
    or h                                          ; $5dfd: $b4
    adc [hl]                                      ; $5dfe: $8e
    push bc                                       ; $5dff: $c5
    rst $30                                       ; $5e00: $f7
    ret                                           ; $5e01: $c9


    db $e3                                        ; $5e02: $e3
    rrca                                          ; $5e03: $0f
    ld d, a                                       ; $5e04: $57
    ld d, h                                       ; $5e05: $54
    adc d                                         ; $5e06: $8a
    ld a, c                                       ; $5e07: $79
    add d                                         ; $5e08: $82
    push af                                       ; $5e09: $f5
    ld c, [hl]                                    ; $5e0a: $4e
    dec l                                         ; $5e0b: $2d
    jp nc, $ad0e                                  ; $5e0c: $d2 $0e $ad

    jp Jump_000_1ad2                              ; $5e0f: $c3 $d2 $1a


    jp nz, $e1e5                                  ; $5e12: $c2 $e5 $e1

    sbc b                                         ; $5e15: $98
    inc hl                                        ; $5e16: $23
    or a                                          ; $5e17: $b7
    inc bc                                        ; $5e18: $03
    sbc a                                         ; $5e19: $9f
    and h                                         ; $5e1a: $a4
    ld h, l                                       ; $5e1b: $65
    add $bd                                       ; $5e1c: $c6 $bd
    rla                                           ; $5e1e: $17
    sbc d                                         ; $5e1f: $9a
    ld e, h                                       ; $5e20: $5c
    db $fd                                        ; $5e21: $fd
    ld l, b                                       ; $5e22: $68
    sub l                                         ; $5e23: $95
    ld c, c                                       ; $5e24: $49
    dec de                                        ; $5e25: $1b
    jp c, $a888                                   ; $5e26: $da $88 $a8

    ld a, [hl-]                                   ; $5e29: $3a
    ld b, [hl]                                    ; $5e2a: $46
    ld a, l                                       ; $5e2b: $7d
    and e                                         ; $5e2c: $a3
    rst $20                                       ; $5e2d: $e7
    dec sp                                        ; $5e2e: $3b
    sbc e                                         ; $5e2f: $9b
    ld a, a                                       ; $5e30: $7f
    and a                                         ; $5e31: $a7
    adc [hl]                                      ; $5e32: $8e
    dec c                                         ; $5e33: $0d
    ld h, c                                       ; $5e34: $61
    sub h                                         ; $5e35: $94
    dec bc                                        ; $5e36: $0b
    ld [hl], l                                    ; $5e37: $75
    ld l, c                                       ; $5e38: $69
    push bc                                       ; $5e39: $c5
    xor c                                         ; $5e3a: $a9
    sub b                                         ; $5e3b: $90
    xor [hl]                                      ; $5e3c: $ae
    add hl, de                                    ; $5e3d: $19
    cp l                                          ; $5e3e: $bd
    ld a, a                                       ; $5e3f: $7f
    adc a                                         ; $5e40: $8f
    res 4, c                                      ; $5e41: $cb $a1
    ld a, a                                       ; $5e43: $7f
    sbc $6e                                       ; $5e44: $de $6e
    jr nz, jr_06d_5df9                            ; $5e46: $20 $b1

    db $d3                                        ; $5e48: $d3
    rst $38                                       ; $5e49: $ff
    jp c, $e70e                                   ; $5e4a: $da $0e $e7

    xor c                                         ; $5e4d: $a9
    rst $38                                       ; $5e4e: $ff
    push de                                       ; $5e4f: $d5
    db $e4                                        ; $5e50: $e4
    ld d, b                                       ; $5e51: $50
    pop de                                        ; $5e52: $d1
    ld a, [hl-]                                   ; $5e53: $3a
    dec h                                         ; $5e54: $25
    ld b, e                                       ; $5e55: $43
    xor c                                         ; $5e56: $a9
    pop de                                        ; $5e57: $d1
    sub b                                         ; $5e58: $90
    push bc                                       ; $5e59: $c5
    xor b                                         ; $5e5a: $a8
    or d                                          ; $5e5b: $b2
    call nc, $e253                                ; $5e5c: $d4 $53 $e2
    ld [hl-], a                                   ; $5e5f: $32
    ld h, h                                       ; $5e60: $64
    ccf                                           ; $5e61: $3f
    dec c                                         ; $5e62: $0d
    rst $00                                       ; $5e63: $c7
    adc d                                         ; $5e64: $8a
    ld b, b                                       ; $5e65: $40
    ld e, d                                       ; $5e66: $5a
    ld c, l                                       ; $5e67: $4d
    ld c, $cd                                     ; $5e68: $0e $cd
    or e                                          ; $5e6a: $b3
    ld [hl+], a                                   ; $5e6b: $22
    db $eb                                        ; $5e6c: $eb
    xor c                                         ; $5e6d: $a9
    ld a, [bc]                                    ; $5e6e: $0a
    db $dd                                        ; $5e6f: $dd
    ld a, [$9d16]                                 ; $5e70: $fa $16 $9d
    and b                                         ; $5e73: $a0
    ld de, $9ffb                                  ; $5e74: $11 $fb $9f
    or a                                          ; $5e77: $b7
    dec hl                                        ; $5e78: $2b
    ld a, [de]                                    ; $5e79: $1a
    ld d, l                                       ; $5e7a: $55
    ld d, $21                                     ; $5e7b: $16 $21
    inc sp                                        ; $5e7d: $33
    or h                                          ; $5e7e: $b4
    ld l, [hl]                                    ; $5e7f: $6e
    ld h, l                                       ; $5e80: $65
    ld sp, $1cba                                  ; $5e81: $31 $ba $1c
    ld c, [hl]                                    ; $5e84: $4e
    dec hl                                        ; $5e85: $2b
    db $e3                                        ; $5e86: $e3
    ld [c], a                                     ; $5e87: $e2

Call_06d_5e88:
    rst $28                                       ; $5e88: $ef
    ld l, h                                       ; $5e89: $6c
    rlca                                          ; $5e8a: $07
    rst $20                                       ; $5e8b: $e7
    xor c                                         ; $5e8c: $a9
    call nc, Call_000_3f88                        ; $5e8d: $d4 $88 $3f
    ld [$fd91], a                                 ; $5e90: $ea $91 $fd
    inc [hl]                                      ; $5e93: $34
    add hl, sp                                    ; $5e94: $39
    ld [hl], h                                    ; $5e95: $74
    halt                                          ; $5e96: $76
    ld sp, $9a3c                                  ; $5e97: $31 $3c $9a
    and a                                         ; $5e9a: $a7
    adc [hl]                                      ; $5e9b: $8e
    xor c                                         ; $5e9c: $a9
    rst $28                                       ; $5e9d: $ef
    call z, $a6be                                 ; $5e9e: $cc $be $a6
    rst $10                                       ; $5ea1: $d7
    ld [hl], b                                    ; $5ea2: $70
    ld e, d                                       ; $5ea3: $5a
    ld c, l                                       ; $5ea4: $4d
    ld c, $cd                                     ; $5ea5: $0e $cd
    or e                                          ; $5ea7: $b3
    ld [hl+], a                                   ; $5ea8: $22
    db $eb                                        ; $5ea9: $eb
    xor c                                         ; $5eaa: $a9
    ld a, [bc]                                    ; $5eab: $0a
    db $dd                                        ; $5eac: $dd
    ld a, d                                       ; $5ead: $7a
    ld a, l                                       ; $5eae: $7d
    db $ec                                        ; $5eaf: $ec
    add d                                         ; $5eb0: $82
    inc de                                        ; $5eb1: $13
    sub h                                         ; $5eb2: $94
    xor c                                         ; $5eb3: $a9
    adc [hl]                                      ; $5eb4: $8e
    and l                                         ; $5eb5: $a5

Jump_06d_5eb6:
    ld b, $12                                     ; $5eb6: $06 $12
    push hl                                       ; $5eb8: $e5
    xor d                                         ; $5eb9: $aa
    ld h, a                                       ; $5eba: $67
    db $e3                                        ; $5ebb: $e3
    ld a, b                                       ; $5ebc: $78
    ld l, b                                       ; $5ebd: $68
    and c                                         ; $5ebe: $a1
    sub l                                         ; $5ebf: $95
    db $e3                                        ; $5ec0: $e3
    add h                                         ; $5ec1: $84
    dec hl                                        ; $5ec2: $2b
    db $e3                                        ; $5ec3: $e3
    ld [c], a                                     ; $5ec4: $e2
    cp l                                          ; $5ec5: $bd
    call nc, $e0ba                                ; $5ec6: $d4 $ba $e0
    db $d3                                        ; $5ec9: $d3
    sub d                                         ; $5eca: $92
    ret nc                                        ; $5ecb: $d0

    ld a, d                                       ; $5ecc: $7a
    ld l, b                                       ; $5ecd: $68
    dec h                                         ; $5ece: $25
    inc l                                         ; $5ecf: $2c
    ld b, d                                       ; $5ed0: $42
    or a                                          ; $5ed1: $b7
    inc bc                                        ; $5ed2: $03
    rst $28                                       ; $5ed3: $ef
    rlca                                          ; $5ed4: $07
    rst $10                                       ; $5ed5: $d7
    or e                                          ; $5ed6: $b3
    rst $38                                       ; $5ed7: $ff
    reti                                          ; $5ed8: $d9


    inc hl                                        ; $5ed9: $23
    inc b                                         ; $5eda: $04
    cp l                                          ; $5edb: $bd
    ld a, [bc]                                    ; $5edc: $0a
    or e                                          ; $5edd: $b3
    sbc a                                         ; $5ede: $9f
    sbc $e8                                       ; $5edf: $de $e8
    db $eb                                        ; $5ee1: $eb
    ld d, l                                       ; $5ee2: $55
    cp d                                          ; $5ee3: $ba
    ret nc                                        ; $5ee4: $d0

    ld e, b                                       ; $5ee5: $58
    pop hl                                        ; $5ee6: $e1
    cp b                                          ; $5ee7: $b8
    cp $69                                        ; $5ee8: $fe $69
    ld c, l                                       ; $5eea: $4d
    xor [hl]                                      ; $5eeb: $ae
    rst $10                                       ; $5eec: $d7
    daa                                           ; $5eed: $27
    ld b, [hl]                                    ; $5eee: $46
    ld e, d                                       ; $5eef: $5a
    di                                            ; $5ef0: $f3
    db $f4                                        ; $5ef1: $f4
    dec l                                         ; $5ef2: $2d
    jp z, $dbe9                                   ; $5ef3: $ca $e9 $db

    dec bc                                        ; $5ef6: $0b
    and a                                         ; $5ef7: $a7
    ret                                           ; $5ef8: $c9


    ret c                                         ; $5ef9: $d8

    or a                                          ; $5efa: $b7
    inc bc                                        ; $5efb: $03
    ld l, a                                       ; $5efc: $6f
    xor a                                         ; $5efd: $af
    inc de                                        ; $5efe: $13
    ld a, [hl-]                                   ; $5eff: $3a
    ld a, e                                       ; $5f00: $7b
    ld [hl], b                                    ; $5f01: $70
    rst $28                                       ; $5f02: $ef
    db $ec                                        ; $5f03: $ec
    db $db                                        ; $5f04: $db
    ret                                           ; $5f05: $c9


    add hl, bc                                    ; $5f06: $09
    ld [hl], a                                    ; $5f07: $77
    ld a, [$3631]                                 ; $5f08: $fa $31 $36
    inc e                                         ; $5f0b: $1c
    xor e                                         ; $5f0c: $ab
    ld e, e                                       ; $5f0d: $5b

jr_06d_5f0e:
    ld c, [hl]                                    ; $5f0e: $4e
    ret nc                                        ; $5f0f: $d0

    xor e                                         ; $5f10: $ab
    jr nc, jr_06d_5f0e                            ; $5f11: $30 $fb

    ld l, c                                       ; $5f13: $69
    dec sp                                        ; $5f14: $3b
    nop                                           ; $5f15: $00
    sub a                                         ; $5f16: $97
    ld d, a                                       ; $5f17: $57
    or $68                                        ; $5f18: $f6 $68
    cp $1d                                        ; $5f1a: $fe $1d
    ld b, c                                       ; $5f1c: $41
    sbc c                                         ; $5f1d: $99
    adc d                                         ; $5f1e: $8a
    sub l                                         ; $5f1f: $95
    dec a                                         ; $5f20: $3d
    ld a, [de]                                    ; $5f21: $1a
    ld a, [de]                                    ; $5f22: $1a
    push hl                                       ; $5f23: $e5
    jp nc, $e7a9                                  ; $5f24: $d2 $a9 $e7

    ld a, a                                       ; $5f27: $7f
    or $3f                                        ; $5f28: $f6 $3f
    xor l                                         ; $5f2a: $ad
    call nc, Call_06d_4a88                        ; $5f2b: $d4 $88 $4a
    ld sp, $dcfe                                  ; $5f2e: $31 $fe $dc
    ld c, $d7                                     ; $5f31: $0e $d7
    ld l, l                                       ; $5f33: $6d
    ld b, h                                       ; $5f34: $44
    ld d, h                                       ; $5f35: $54
    dec e                                         ; $5f36: $1d
    db $eb                                        ; $5f37: $eb
    ld e, e                                       ; $5f38: $5b
    dec hl                                        ; $5f39: $2b
    ld h, a                                       ; $5f3a: $67
    ld a, l                                       ; $5f3b: $7d
    db $e3                                        ; $5f3c: $e3
    nop                                           ; $5f3d: $00
    ld e, a                                       ; $5f3e: $5f
    rst $18                                       ; $5f3f: $df
    cp [hl]                                       ; $5f40: $be
    ld a, l                                       ; $5f41: $7d
    cp e                                          ; $5f42: $bb
    db $db                                        ; $5f43: $db
    or [hl]                                       ; $5f44: $b6
    sub l                                         ; $5f45: $95
    push hl                                       ; $5f46: $e5
    ld c, [hl]                                    ; $5f47: $4e
    ld l, l                                       ; $5f48: $6d
    ld c, [hl]                                    ; $5f49: $4e
    ld e, c                                       ; $5f4a: $59
    and d                                         ; $5f4b: $a2
    sbc [hl]                                      ; $5f4c: $9e
    ld a, [hl+]                                   ; $5f4d: $2a
    ld b, a                                       ; $5f4e: $47
    ld l, b                                       ; $5f4f: $68
    set 4, b                                      ; $5f50: $cb $e0
    ld a, [de]                                    ; $5f52: $1a

jr_06d_5f53:
    ld c, b                                       ; $5f53: $48
    xor h                                         ; $5f54: $ac
    inc d                                         ; $5f55: $14
    cpl                                           ; $5f56: $2f
    cp c                                          ; $5f57: $b9
    inc sp                                        ; $5f58: $33
    ld d, d                                       ; $5f59: $52
    xor e                                         ; $5f5a: $ab
    cp a                                          ; $5f5b: $bf
    inc hl                                        ; $5f5c: $23
    ld l, b                                       ; $5f5d: $68
    ld b, [hl]                                    ; $5f5e: $46
    rst $38                                       ; $5f5f: $ff
    inc [hl]                                      ; $5f60: $34
    rrca                                          ; $5f61: $0f
    ld c, a                                       ; $5f62: $4f
    ld b, c                                       ; $5f63: $41
    ld e, l                                       ; $5f64: $5d
    ldh a, [rBCPD]                                ; $5f65: $f0 $69
    ret                                           ; $5f67: $c9


    pop de                                        ; $5f68: $d1
    or d                                          ; $5f69: $b2
    db $db                                        ; $5f6a: $db
    or [hl]                                       ; $5f6b: $b6
    ld [hl], l                                    ; $5f6c: $75
    call nz, $ce82                                ; $5f6d: $c4 $82 $ce

jr_06d_5f70:
    ld e, $dc                                     ; $5f70: $1e $dc
    xor e                                         ; $5f72: $ab
    jr nc, jr_06d_5f70                            ; $5f73: $30 $fb

    ld l, c                                       ; $5f75: $69
    dec sp                                        ; $5f76: $3b
    nop                                           ; $5f77: $00
    rst $20                                       ; $5f78: $e7
    xor c                                         ; $5f79: $a9
    pop de                                        ; $5f7a: $d1
    ld h, $dd                                     ; $5f7b: $26 $dd
    ld h, d                                       ; $5f7d: $62
    ld d, c                                       ; $5f7e: $51
    add hl, bc                                    ; $5f7f: $09
    adc e                                         ; $5f80: $8b
    xor b                                         ; $5f81: $a8
    ld h, a                                       ; $5f82: $67
    add l                                         ; $5f83: $85
    sub [hl]                                      ; $5f84: $96
    ld l, [hl]                                    ; $5f85: $6e
    ld b, c                                       ; $5f86: $41
    rrc d                                         ; $5f87: $cb $0a
    dec l                                         ; $5f89: $2d
    db $dd                                        ; $5f8a: $dd
    ld a, [de]                                    ; $5f8b: $1a
    xor l                                         ; $5f8c: $ad
    ld [$746e], sp                                ; $5f8d: $08 $6e $74
    or h                                          ; $5f90: $b4

jr_06d_5f91:
    ld e, $bd                                     ; $5f91: $1e $bd
    or d                                          ; $5f93: $b2
    ld c, h                                       ; $5f94: $4c
    ld [hl], d                                    ; $5f95: $72
    dec sp                                        ; $5f96: $3b
    nop                                           ; $5f97: $00
    scf                                           ; $5f98: $37
    sub [hl]                                      ; $5f99: $96
    inc de                                        ; $5f9a: $13
    sub h                                         ; $5f9b: $94
    xor c                                         ; $5f9c: $a9
    sub b                                         ; $5f9d: $90

jr_06d_5f9e:
    ld [c], a                                     ; $5f9e: $e2
    ld l, c                                       ; $5f9f: $69
    jr nz, jr_06d_5f53                            ; $5fa0: $20 $b1

    call nc, Call_06d_5e88                        ; $5fa2: $d4 $88 $5e
    jr z, jr_06d_5f91                             ; $5fa5: $28 $ea

    xor b                                         ; $5fa7: $a8
    ld c, $95                                     ; $5fa8: $0e $95
    or b                                          ; $5faa: $b0
    adc b                                         ; $5fab: $88
    ld b, $12                                     ; $5fac: $06 $12
    db $eb                                        ; $5fae: $eb
    cp c                                          ; $5faf: $b9
    adc d                                         ; $5fb0: $8a
    xor c                                         ; $5fb1: $a9
    ld [hl-], a                                   ; $5fb2: $32
    dec [hl]                                      ; $5fb3: $35
    call nz, Call_06d_7ada                        ; $5fb4: $c4 $da $7a
    dec c                                         ; $5fb7: $0d
    ld e, d                                       ; $5fb8: $5a
    and [hl]                                      ; $5fb9: $a6
    ld b, [hl]                                    ; $5fba: $46
    jr c, jr_06d_5f9e                             ; $5fbb: $38 $e1

    dec b                                         ; $5fbd: $05
    ld d, a                                       ; $5fbe: $57
    ld c, b                                       ; $5fbf: $48
    pop af                                        ; $5fc0: $f1
    inc [hl]                                      ; $5fc1: $34
    sub b                                         ; $5fc2: $90
    ld e, b                                       ; $5fc3: $58
    xor $ec                                       ; $5fc4: $ee $ec
    ld l, c                                       ; $5fc6: $69
    inc [hl]                                      ; $5fc7: $34
    jp nz, $1a16                                  ; $5fc8: $c2 $16 $1a

    ld c, b                                       ; $5fcb: $48
    db $ec                                        ; $5fcc: $ec
    ld a, a                                       ; $5fcd: $7f
    db $e4                                        ; $5fce: $e4
    ld e, c                                       ; $5fcf: $59
    ld b, l                                       ; $5fd0: $45
    ld c, e                                       ; $5fd1: $4b
    ld b, d                                       ; $5fd2: $42
    sub l                                         ; $5fd3: $95
    sub l                                         ; $5fd4: $95
    db $e3                                        ; $5fd5: $e3
    jp z, $db1d                                   ; $5fd6: $ca $1d $db

    ld bc, $0b1f                                  ; $5fd9: $01 $1f $0b
    ld l, l                                       ; $5fdc: $6d
    sbc l                                         ; $5fdd: $9d
    ldh [rBGP], a                                 ; $5fde: $e0 $47
    ret nc                                        ; $5fe0: $d0

    ret nc                                        ; $5fe1: $d0

    ld b, [hl]                                    ; $5fe2: $46
    ld b, h                                       ; $5fe3: $44
    push de                                       ; $5fe4: $d5

jr_06d_5fe5:
    or c                                          ; $5fe5: $b1
    cp [hl]                                       ; $5fe6: $be
    or l                                          ; $5fe7: $b5
    ld [hl], d                                    ; $5fe8: $72
    sub $4b                                       ; $5fe9: $d6 $4b
    rlca                                          ; $5feb: $07
    ld d, a                                       ; $5fec: $57
    halt                                          ; $5fed: $76
    xor b                                         ; $5fee: $a8
    or d                                          ; $5fef: $b2
    ld a, [hl]                                    ; $5ff0: $7e
    ld l, c                                       ; $5ff1: $69
    ret z                                         ; $5ff2: $c8

    xor h                                         ; $5ff3: $ac
    ldh a, [$e8]                                  ; $5ff4: $f0 $e8
    or [hl]                                       ; $5ff6: $b6
    ld l, l                                       ; $5ff7: $6d
    cp l                                          ; $5ff8: $bd
    ld a, l                                       ; $5ff9: $7d

Jump_06d_5ffa:
    ei                                            ; $5ffa: $fb
    or $ed                                        ; $5ffb: $f6 $ed
    db $db                                        ; $5ffd: $db
    or a                                          ; $5ffe: $b7
    cp e                                          ; $5fff: $bb
    ld l, l                                       ; $6000: $6d
    db $db                                        ; $6001: $db
    ld bc, $df5f                                  ; $6002: $01 $5f $df
    cp [hl]                                       ; $6005: $be
    ld a, l                                       ; $6006: $7d
    cp e                                          ; $6007: $bb
    db $db                                        ; $6008: $db
    or [hl]                                       ; $6009: $b6
    dec e                                         ; $600a: $1d
    rst $28                                       ; $600b: $ef
    ld l, c                                       ; $600c: $69
    sbc h                                         ; $600d: $9c
    ld e, [hl]                                    ; $600e: $5e
    ld l, b                                       ; $600f: $68
    ld [hl], d                                    ; $6010: $72
    jr z, jr_06d_5fe5                             ; $6011: $28 $d2

    adc [hl]                                      ; $6013: $8e
    ld c, [hl]                                    ; $6014: $4e
    ld l, d                                       ; $6015: $6a
    adc b                                         ; $6016: $88
    and h                                         ; $6017: $a4
    ld l, b                                       ; $6018: $68
    ld [$a743], sp                                ; $6019: $08 $43 $a7
    ld [hl], d                                    ; $601c: $72
    and h                                         ; $601d: $a4
    ld a, b                                       ; $601e: $78
    db $ed                                        ; $601f: $ed
    di                                            ; $6020: $f3
    add $01                                       ; $6021: $c6 $01
    rst $10                                       ; $6023: $d7
    and b                                         ; $6024: $a0
    dec c                                         ; $6025: $0d
    inc h                                         ; $6026: $24
    ld d, $69                                     ; $6027: $16 $69
    ld b, a                                       ; $6029: $47
    add l                                         ; $602a: $85
    inc hl                                        ; $602b: $23
    call nz, $f3d6                                ; $602c: $c4 $d6 $f3
    ld d, h                                       ; $602f: $54
    rst $08                                       ; $6030: $cf
    ccf                                           ; $6031: $3f
    ld l, l                                       ; $6032: $6d
    and c                                         ; $6033: $a1
    sub c                                         ; $6034: $91
    sub $68                                       ; $6035: $d6 $68
    cp b                                          ; $6037: $b8
    cp l                                          ; $6038: $bd
    db $fc                                        ; $6039: $fc
    inc d                                         ; $603a: $14
    ei                                            ; $603b: $fb
    add hl, hl                                    ; $603c: $29
    add hl, sp                                    ; $603d: $39
    ld d, h                                       ; $603e: $54
    adc $52                                       ; $603f: $ce $52
    inc [hl]                                      ; $6041: $34
    add h                                         ; $6042: $84
    and c                                         ; $6043: $a1
    dec sp                                        ; $6044: $3b
    ld l, l                                       ; $6045: $6d
    dec sp                                        ; $6046: $3b
    nop                                           ; $6047: $00
    rra                                           ; $6048: $1f
    rst $28                                       ; $6049: $ef
    pop bc                                        ; $604a: $c1
    add d                                         ; $604b: $82
    add [hl]                                      ; $604c: $86
    ld [hl], $22                                  ; $604d: $36 $22
    xor d                                         ; $604f: $aa
    adc [hl]                                      ; $6050: $8e
    push af                                       ; $6051: $f5
    sbc l                                         ; $6052: $9d
    ld a, l                                       ; $6053: $7d
    push bc                                       ; $6054: $c5
    rra                                           ; $6055: $1f
    sub a                                         ; $6056: $97
    db $fc                                        ; $6057: $fc
    ld h, c                                       ; $6058: $61
    dec sp                                        ; $6059: $3b
    nop                                           ; $605a: $00
    rra                                           ; $605b: $1f
    and c                                         ; $605c: $a1
    ld c, b                                       ; $605d: $48
    dec sp                                        ; $605e: $3b
    ld [$f159], a                                 ; $605f: $ea $59 $f1
    ld a, h                                       ; $6062: $7c
    ld c, a                                       ; $6063: $4f
    ld b, c                                       ; $6064: $41
    di                                            ; $6065: $f3
    dec a                                         ; $6066: $3d
    jp c, $dc3f                                   ; $6067: $da $3f $dc

    ld l, b                                       ; $606a: $68
    sbc c                                         ; $606b: $99
    ld b, l                                       ; $606c: $45
    ld e, h                                       ; $606d: $5c
    ld [hl], c                                    ; $606e: $71
    ld e, l                                       ; $606f: $5d
    add h                                         ; $6070: $84
    dec [hl]                                      ; $6071: $35
    add hl, sp                                    ; $6072: $39
    inc [hl]                                      ; $6073: $34
    ld h, h                                       ; $6074: $64
    ld b, [hl]                                    ; $6075: $46
    ld e, c                                       ; $6076: $59
    ld de, $9f6e                                  ; $6077: $11 $6e $9f
    dec a                                         ; $607a: $3d
    or c                                          ; $607b: $b1
    and e                                         ; $607c: $a3
    and d                                         ; $607d: $a2
    dec a                                         ; $607e: $3d
    push bc                                       ; $607f: $c5
    inc b                                         ; $6080: $04
    db $db                                        ; $6081: $db
    ld a, d                                       ; $6082: $7a
    sbc $ef                                       ; $6083: $de $ef
    add e                                         ; $6085: $83
    dec de                                        ; $6086: $1b
    ld c, b                                       ; $6087: $48
    db $ec                                        ; $6088: $ec
    ld a, a                                       ; $6089: $7f
    db $e4                                        ; $608a: $e4
    ld e, c                                       ; $608b: $59
    xor c                                         ; $608c: $a9
    ld sp, $08b8                                  ; $608d: $31 $b8 $08

jr_06d_6090:
    and h                                         ; $6090: $a4
    push de                                       ; $6091: $d5
    xor e                                         ; $6092: $ab
    jr nc, jr_06d_6090                            ; $6093: $30 $fb

    ld c, c                                       ; $6095: $49
    ld d, b                                       ; $6096: $50
    and [hl]                                      ; $6097: $a6
    ld l, $e3                                     ; $6098: $2e $e3
    ld a, [hl+]                                   ; $609a: $2a
    ld d, l                                       ; $609b: $55
    adc $2e                                       ; $609c: $ce $2e
    and [hl]                                      ; $609e: $a6
    push af                                       ; $609f: $f5
    ccf                                           ; $60a0: $3f
    ld a, [c]                                     ; $60a1: $f2
    xor h                                         ; $60a2: $ac
    ld hl, $f50c                                  ; $60a3: $21 $0c $f5
    ld [hl], h                                    ; $60a6: $74
    sub e                                         ; $60a7: $93
    dec [hl]                                      ; $60a8: $35
    ld a, [de]                                    ; $60a9: $1a
    xor h                                         ; $60aa: $ac
    ld d, e                                       ; $60ab: $53
    ld de, $5c57                                  ; $60ac: $11 $57 $5c
    rla                                           ; $60af: $17
    and a                                         ; $60b0: $a7
    ld hl, $450c                                  ; $60b1: $21 $0c $45
    push hl                                       ; $60b4: $e5
    ld c, $55                                     ; $60b5: $0e $55
    ld l, [hl]                                    ; $60b7: $6e
    rlca                                          ; $60b8: $07
    rst $20                                       ; $60b9: $e7
    dec sp                                        ; $60ba: $3b
    db $eb                                        ; $60bb: $eb
    ld sp, hl                                     ; $60bc: $f9
    and a                                         ; $60bd: $a7
    dec l                                         ; $60be: $2d
    inc [hl]                                      ; $60bf: $34
    jp nc, $954a                                  ; $60c0: $d2 $4a $95

    or e                                          ; $60c3: $b3
    adc e                                         ; $60c4: $8b
    sub a                                         ; $60c5: $97
    sbc a                                         ; $60c6: $9f
    and d                                         ; $60c7: $a2
    ld l, [hl]                                    ; $60c8: $6e
    cp c                                          ; $60c9: $b9
    xor l                                         ; $60ca: $ad
    rst $20                                       ; $60cb: $e7
    xor c                                         ; $60cc: $a9
    rst $18                                       ; $60cd: $df
    rlca                                          ; $60ce: $07
    sub a                                         ; $60cf: $97
    ld a, [de]                                    ; $60d0: $1a
    daa                                           ; $60d1: $27
    dec [hl]                                      ; $60d2: $35
    sub b                                         ; $60d3: $90
    and b                                         ; $60d4: $a0
    xor h                                         ; $60d5: $ac
    sbc h                                         ; $60d6: $9c
    xor h                                         ; $60d7: $ac
    inc a                                         ; $60d8: $3c
    and l                                         ; $60d9: $a5
    sub l                                         ; $60da: $95
    db $fd                                        ; $60db: $fd
    ld d, h                                       ; $60dc: $54
    add h                                         ; $60dd: $84
    db $db                                        ; $60de: $db
    or h                                          ; $60df: $b4
    add [hl]                                      ; $60e0: $86
    call z, $8ad0                                 ; $60e1: $cc $d0 $8a
    or $14                                        ; $60e4: $f6 $14
    inc de                                        ; $60e6: $13
    adc h                                         ; $60e7: $8c
    ld l, [hl]                                    ; $60e8: $6e
    dec sp                                        ; $60e9: $3b
    nop                                           ; $60ea: $00
    rra                                           ; $60eb: $1f
    rst $08                                       ; $60ec: $cf
    adc b                                         ; $60ed: $88
    dec b                                         ; $60ee: $05
    db $fd                                        ; $60ef: $fd
    adc a                                         ; $60f0: $8f
    inc a                                         ; $60f1: $3c
    db $eb                                        ; $60f2: $eb
    add l                                         ; $60f3: $85
    ld h, $87                                     ; $60f4: $26 $87
    ld a, [bc]                                    ; $60f6: $0a
    dec l                                         ; $60f7: $2d
    db $dd                                        ; $60f8: $dd
    ld b, d                                       ; $60f9: $42
    ld e, l                                       ; $60fa: $5d
    ld e, d                                       ; $60fb: $5a
    ld [hl], c                                    ; $60fc: $71
    ld a, [de]                                    ; $60fd: $1a
    adc [hl]                                      ; $60fe: $8e
    and a                                         ; $60ff: $a7
    adc l                                         ; $6100: $8d
    ld b, d                                       ; $6101: $42
    ld d, b                                       ; $6102: $50
    cp c                                          ; $6103: $b9
    jp $eb66                                      ; $6104: $c3 $66 $eb


    ld c, l                                       ; $6107: $4d
    ld a, [hl]                                    ; $6108: $7e
    rrca                                          ; $6109: $0f
    ld b, c                                       ; $610a: $41
    rst $38                                       ; $610b: $ff
    inc hl                                        ; $610c: $23
    rst $08                                       ; $610d: $cf
    ld c, d                                       ; $610e: $4a
    adc l                                         ; $610f: $8d
    pop bc                                        ; $6110: $c1
    ld [hl], l                                    ; $6111: $75
    xor h                                         ; $6112: $ac
    rst $20                                       ; $6113: $e7
    cp d                                          ; $6114: $ba
    add l                                         ; $6115: $85
    db $ec                                        ; $6116: $ec
    and a                                         ; $6117: $a7
    call z, Call_000_0fdf                         ; $6118: $cc $df $0f
    db $fc                                        ; $611b: $fc
    ld e, h                                       ; $611c: $5c
    ld a, [hl-]                                   ; $611d: $3a
    nop                                           ; $611e: $00
    rst $10                                       ; $611f: $d7
    jp nc, Jump_06d_538a                          ; $6120: $d2 $8a $53

    ld hl, $a09d                                  ; $6123: $21 $9d $a0
    ld d, a                                       ; $6126: $57
    ld h, c                                       ; $6127: $61
    or $d3                                        ; $6128: $f6 $d3
    sub $e7                                       ; $612a: $d6 $e7
    dec de                                        ; $612c: $1b
    ld c, [hl]                                    ; $612d: $4e

jr_06d_612e:
    adc [hl]                                      ; $612e: $8e
    and e                                         ; $612f: $a3
    dec c                                         ; $6130: $0d
    ld h, c                                       ; $6131: $61
    jr z, jr_06d_612e                             ; $6132: $28 $fa

    xor [hl]                                      ; $6134: $ae
    dec l                                         ; $6135: $2d
    pop de                                        ; $6136: $d1
    jp z, $d8f7                                   ; $6137: $ca $f7 $d8

    ld b, d                                       ; $613a: $42
    jp $2ab1                                      ; $613b: $c3 $b1 $2a


    ld d, e                                       ; $613e: $53
    add l                                         ; $613f: $85
    db $e3                                        ; $6140: $e3

jr_06d_6141:
    ld [$74a9], a                                 ; $6141: $ea $a9 $74
    ld hl, $78b3                                  ; $6144: $21 $b3 $78
    or [hl]                                       ; $6147: $b6
    inc bc                                        ; $6148: $03
    rst $10                                       ; $6149: $d7
    ld h, b                                       ; $614a: $60
    ld hl, sp-$51                                 ; $614b: $f8 $af
    ld e, l                                       ; $614d: $5d
    inc a                                         ; $614e: $3c
    ld a, [hl-]                                   ; $614f: $3a
    sub a                                         ; $6150: $97
    ld a, [$5d19]                                 ; $6151: $fa $19 $5d
    dec h                                         ; $6154: $25
    dec l                                         ; $6155: $2d
    ld a, [c]                                     ; $6156: $f2
    ld [hl], $1a                                  ; $6157: $36 $1a
    ld c, b                                       ; $6159: $48
    db $ec                                        ; $615a: $ec
    ld a, a                                       ; $615b: $7f
    db $e4                                        ; $615c: $e4
    ld e, c                                       ; $615d: $59
    ld [hl], e                                    ; $615e: $73
    jp z, $1512                                   ; $615f: $ca $12 $15

    pop af                                        ; $6162: $f1
    halt                                          ; $6163: $76
    sub e                                         ; $6164: $93
    ld b, e                                       ; $6165: $43
    ld b, e                                       ; $6166: $43
    ld h, [hl]                                    ; $6167: $66
    ld d, h                                       ; $6168: $54
    or h                                          ; $6169: $b4
    and a                                         ; $616a: $a7
    sbc b                                         ; $616b: $98
    ld h, b                                       ; $616c: $60
    ld b, l                                       ; $616d: $45
    adc [hl]                                      ; $616e: $8e
    call nc, $fa37                                ; $616f: $d4 $37 $fa
    db $f4                                        ; $6172: $f4
    ld d, e                                       ; $6173: $53
    dec c                                         ; $6174: $0d
    daa                                           ; $6175: $27
    rst $00                                       ; $6176: $c7
    pop de                                        ; $6177: $d1
    add [hl]                                      ; $6178: $86
    jr nc, @+$56                                  ; $6179: $30 $54

    inc de                                        ; $617b: $13

jr_06d_617c:
    ld a, [hl+]                                   ; $617c: $2a
    and c                                         ; $617d: $a1
    ld l, b                                       ; $617e: $68
    jr c, jr_06d_61d7                             ; $617f: $38 $56

    ld l, d                                       ; $6181: $6a
    ld h, h                                       ; $6182: $64
    rst $28                                       ; $6183: $ef
    adc c                                         ; $6184: $89
    bit 1, l                                      ; $6185: $cb $4d
    and e                                         ; $6187: $a3
    ld b, c                                       ; $6188: $41
    adc b                                         ; $6189: $88
    ld e, l                                       ; $618a: $5d
    inc a                                         ; $618b: $3c
    sub a                                         ; $618c: $97
    ld c, $37                                     ; $618d: $0e $37
    ld b, a                                       ; $618f: $47
    sbc [hl]                                      ; $6190: $9e
    ld d, l                                       ; $6191: $55
    adc [hl]                                      ; $6192: $8e
    dec bc                                        ; $6193: $0b
    ld [hl], a                                    ; $6194: $77
    add $49                                       ; $6195: $c6 $49
    sbc l                                         ; $6197: $9d
    ld a, [c]                                     ; $6198: $f2
    ld d, $4d                                     ; $6199: $16 $4d
    sbc $2d                                       ; $619b: $de $2d
    rst $10                                       ; $619d: $d7
    ld d, h                                       ; $619e: $54
    adc [hl]                                      ; $619f: $8e
    ld l, e                                       ; $61a0: $6b
    ld c, b                                       ; $61a1: $48
    inc de                                        ; $61a2: $13
    ld [hl], c                                    ; $61a3: $71
    ld e, l                                       ; $61a4: $5d
    db $fc                                        ; $61a5: $fc
    dec e                                         ; $61a6: $1d
    ld b, c                                       ; $61a7: $41
    xor a                                         ; $61a8: $af
    jp nz, $a7ec                                  ; $61a9: $c2 $ec $a7

    ld c, e                                       ; $61ac: $4b
    ld a, l                                       ; $61ad: $7d
    ld a, [$86f9]                                 ; $61ae: $fa $f9 $86
    sub e                                         ; $61b1: $93
    db $e3                                        ; $61b2: $e3
    ld l, b                                       ; $61b3: $68
    ld b, e                                       ; $61b4: $43
    jr jr_06d_6141                                ; $61b5: $18 $8a

    cp [hl]                                       ; $61b7: $be
    ld l, e                                       ; $61b8: $6b
    ld c, e                                       ; $61b9: $4b
    or h                                          ; $61ba: $b4
    ld a, [c]                                     ; $61bb: $f2
    dec a                                         ; $61bc: $3d
    or [hl]                                       ; $61bd: $b6
    ret nc                                        ; $61be: $d0

    sub b                                         ; $61bf: $90
    dec sp                                        ; $61c0: $3b
    jp z, $925b                                   ; $61c1: $ca $5b $92

    ei                                            ; $61c4: $fb
    ld e, c                                       ; $61c5: $59
    sub [hl]                                      ; $61c6: $96
    dec bc                                        ; $61c7: $0b
    push af                                       ; $61c8: $f5
    xor h                                         ; $61c9: $ac
    ld h, $d4                                     ; $61ca: $26 $d4
    db $d3                                        ; $61cc: $d3
    ld c, l                                       ; $61cd: $4d
    sub $68                                       ; $61ce: $d6 $68
    cp b                                          ; $61d0: $b8
    ld hl, sp+$3b                                 ; $61d1: $f8 $3b
    sub a                                         ; $61d3: $97
    ld c, $6f                                     ; $61d4: $0e $6f
    pop de                                        ; $61d6: $d1

jr_06d_61d7:
    add hl, bc                                    ; $61d7: $09
    ld a, [de]                                    ; $61d8: $1a
    jp hl                                         ; $61d9: $e9


    and [hl]                                      ; $61da: $a6
    add c                                         ; $61db: $81
    call nz, Call_06d_47fe                        ; $61dc: $c4 $fe $47
    sbc [hl]                                      ; $61df: $9e
    dec [hl]                                      ; $61e0: $35
    rst $38                                       ; $61e1: $ff
    ld c, [hl]                                    ; $61e2: $4e
    inc hl                                        ; $61e3: $23
    or e                                          ; $61e4: $b3
    jr jr_06d_617c                                ; $61e5: $18 $95

    sub e                                         ; $61e7: $93
    sub l                                         ; $61e8: $95
    and a                                         ; $61e9: $a7
    or h                                          ; $61ea: $b4
    db $fc                                        ; $61eb: $fc
    inc d                                         ; $61ec: $14
    pop de                                        ; $61ed: $d1
    or b                                          ; $61ee: $b0
    xor h                                         ; $61ef: $ac
    jr z, jr_06d_6214                             ; $61f0: $28 $22

    di                                            ; $61f2: $f3
    push bc                                       ; $61f3: $c5
    rst $18                                       ; $61f4: $df
    xor c                                         ; $61f5: $a9
    ld b, a                                       ; $61f6: $47
    ld b, e                                       ; $61f7: $43
    ld h, [hl]                                    ; $61f8: $66
    ld l, h                                       ; $61f9: $6c
    cp l                                          ; $61fa: $bd
    add hl, bc                                    ; $61fb: $09
    scf                                           ; $61fc: $37
    jp c, Jump_000_1cc8                           ; $61fd: $da $c8 $1c

    ld h, c                                       ; $6200: $61
    call $87f3                                    ; $6201: $cd $f3 $87
    ld h, e                                       ; $6204: $63
    adc [hl]                                      ; $6205: $8e
    call c, $970e                                 ; $6206: $dc $0e $97
    ld c, a                                       ; $6209: $4f
    ld h, e                                       ; $620a: $63
    db $10                                        ; $620b: $10
    db $f4                                        ; $620c: $f4
    ld a, [hl+]                                   ; $620d: $2a
    call z, $127e                                 ; $620e: $cc $7e $12
    call nc, Call_06d_70a7                        ; $6211: $d4 $a7 $70

jr_06d_6214:
    ld e, a                                       ; $6214: $5f
    add c                                         ; $6215: $81
    call nz, Call_06d_71ca                        ; $6216: $c4 $ca $71
    push hl                                       ; $6219: $e5
    dec l                                         ; $621a: $2d
    call nz, $7fe5                                ; $621b: $c4 $e5 $7f
    and a                                         ; $621e: $a7
    and e                                         ; $621f: $a3
    ld [hl], l                                    ; $6220: $75
    di                                            ; $6221: $f3
    ld e, a                                       ; $6222: $5f
    adc [hl]                                      ; $6223: $8e
    add hl, sp                                    ; $6224: $39
    adc [hl]                                      ; $6225: $8e
    sub $b3                                       ; $6226: $d6 $b3
    ld l, [hl]                                    ; $6228: $6e
    ld h, l                                       ; $6229: $65
    ld sp, $87fa                                  ; $622a: $31 $fa $87
    xor l                                         ; $622d: $ad
    inc l                                         ; $622e: $2c
    add $d6                                       ; $622f: $c6 $d6
    adc a                                         ; $6231: $8f

jr_06d_6232:
    ld l, e                                       ; $6232: $6b
    call nc, $f538                                ; $6233: $d4 $38 $f5
    db $ec                                        ; $6236: $ec
    ld a, a                                       ; $6237: $7f
    db $e4                                        ; $6238: $e4
    sbc c                                         ; $6239: $99
    ld a, [bc]                                    ; $623a: $0a
    ld a, [de]                                    ; $623b: $1a
    ld a, [de]                                    ; $623c: $1a
    dec [hl]                                      ; $623d: $35
    or d                                          ; $623e: $b2
    adc b                                         ; $623f: $88

Call_06d_6240:
    call z, Call_06d_7f17                         ; $6240: $cc $17 $7f
    ld h, a                                       ; $6243: $67
    dec sp                                        ; $6244: $3b
    nop                                           ; $6245: $00
    ld l, a                                       ; $6246: $6f
    adc l                                         ; $6247: $8d
    ld l, e                                       ; $6248: $6b
    inc [hl]                                      ; $6249: $34
    ld [$8bb1], sp                                ; $624a: $08 $b1 $8b

jr_06d_624d:
    ld b, a                                       ; $624d: $47
    ret nc                                        ; $624e: $d0

    xor e                                         ; $624f: $ab
    jr nc, jr_06d_624d                            ; $6250: $30 $fb

    jp hl                                         ; $6252: $e9


    ld d, d                                       ; $6253: $52
    ld l, a                                       ; $6254: $6f
    adc [hl]                                      ; $6255: $8e
    inc a                                         ; $6256: $3c
    db $eb                                        ; $6257: $eb
    add l                                         ; $6258: $85
    cp d                                          ; $6259: $ba
    adc c                                         ; $625a: $89
    db $eb                                        ; $625b: $eb
    ccf                                           ; $625c: $3f
    push af                                       ; $625d: $f5
    db $ec                                        ; $625e: $ec
    ret c                                         ; $625f: $d8

    add hl, hl                                    ; $6260: $29
    db $ed                                        ; $6261: $ed
    ld [c], a                                     ; $6262: $e2
    ld l, c                                       ; $6263: $69
    ld [$d143], sp                                ; $6264: $08 $43 $d1
    ld [hl], a                                    ; $6267: $77
    ld l, l                                       ; $6268: $6d
    adc c                                         ; $6269: $89

jr_06d_626a:
    ld d, [hl]                                    ; $626a: $56
    cp [hl]                                       ; $626b: $be
    rst $00                                       ; $626c: $c7
    ld d, $2e                                     ; $626d: $16 $2e
    dec e                                         ; $626f: $1d
    rst $10                                       ; $6270: $d7
    jp nc, Jump_06d_538a                          ; $6271: $d2 $8a $53

    ld hl, $a09d                                  ; $6274: $21 $9d $a0
    ld d, a                                       ; $6277: $57
    ld h, c                                       ; $6278: $61
    or $93                                        ; $6279: $f6 $93
    and b                                         ; $627b: $a0
    sub b                                         ; $627c: $90
    ld [c], a                                     ; $627d: $e2
    ld l, c                                       ; $627e: $69
    jr nz, jr_06d_6232                            ; $627f: $20 $b1

    sbc c                                         ; $6281: $99
    xor [hl]                                      ; $6282: $ae
    adc [hl]                                      ; $6283: $8e
    ld [$4ca6], a                                 ; $6284: $ea $a6 $4c
    adc l                                         ; $6287: $8d
    or h                                          ; $6288: $b4
    add l                                         ; $6289: $85
    adc d                                         ; $628a: $8a
    cp b                                          ; $628b: $b8
    ld [c], a                                     ; $628c: $e2
    call nc, $1771                                ; $628d: $d4 $71 $17
    adc a                                         ; $6290: $8f
    ld l, l                                       ; $6291: $6d
    rlca                                          ; $6292: $07
    rst $10                                       ; $6293: $d7
    jp nc, Jump_06d_538a                          ; $6294: $d2 $8a $53

    ld hl, $b15d                                  ; $6297: $21 $5d $b1
    and a                                         ; $629a: $a7
    inc a                                         ; $629b: $3c
    ld a, [hl+]                                   ; $629c: $2a
    ld l, b                                       ; $629d: $68
    jr c, jr_06d_62f6                             ; $629e: $38 $56

    ld de, $63fe                                  ; $62a0: $11 $fe $63
    dec c                                         ; $62a3: $0d
    dec c                                         ; $62a4: $0d
    ld [hl], c                                    ; $62a5: $71
    dec b                                         ; $62a6: $05
    ld [de], a                                    ; $62a7: $12
    ld e, l                                       ; $62a8: $5d
    ld b, a                                       ; $62a9: $47
    db $eb                                        ; $62aa: $eb
    and $bf                                       ; $62ab: $e6 $bf
    inc e                                         ; $62ad: $1c
    ld [hl], e                                    ; $62ae: $73
    inc e                                         ; $62af: $1c
    xor l                                         ; $62b0: $ad
    ld h, a                                       ; $62b1: $67
    rst $38                                       ; $62b2: $ff
    or b                                          ; $62b3: $b0
    sub l                                         ; $62b4: $95
    push bc                                       ; $62b5: $c5
    ld l, b                                       ; $62b6: $68
    jr nz, jr_06d_626a                            ; $62b7: $20 $b1

    ld c, h                                       ; $62b9: $4c
    ld h, l                                       ; $62ba: $65
    xor a                                         ; $62bb: $af
    jp nz, $a7ec                                  ; $62bc: $c2 $ec $a7

    ld a, d                                       ; $62bf: $7a
    cp d                                          ; $62c0: $ba
    ret                                           ; $62c1: $c9


    ld a, [de]                                    ; $62c2: $1a
    dec c                                         ; $62c3: $0d
    ld l, [hl]                                    ; $62c4: $6e
    or h                                          ; $62c5: $b4
    inc l                                         ; $62c6: $2c
    dec [hl]                                      ; $62c7: $35
    ld a, [c]                                     ; $62c8: $f2
    ld a, e                                       ; $62c9: $7b
    cp b                                          ; $62ca: $b8
    add [hl]                                      ; $62cb: $86
    add $10                                       ; $62cc: $c6 $10
    ld b, $3f                                     ; $62ce: $06 $3f
    jp c, $8610                                   ; $62d0: $da $10 $86

    adc d                                         ; $62d3: $8a
    ld [hl], b                                    ; $62d4: $70
    sbc e                                         ; $62d5: $9b
    sub $e4                                       ; $62d6: $d6 $e4
    ret nc                                        ; $62d8: $d0

    sub b                                         ; $62d9: $90
    add hl, de                                    ; $62da: $19
    dec d                                         ; $62db: $15
    db $ed                                        ; $62dc: $ed
    add hl, hl                                    ; $62dd: $29
    ld h, $58                                     ; $62de: $26 $58
    inc sp                                        ; $62e0: $33
    ld a, [de]                                    ; $62e1: $1a
    jp c, $b73d                                   ; $62e2: $da $3d $b7

    sub [hl]                                      ; $62e5: $96
    ld b, e                                       ; $62e6: $43
    sub c                                         ; $62e7: $91
    halt                                          ; $62e8: $76
    ld l, h                                       ; $62e9: $6c
    cp l                                          ; $62ea: $bd
    or d                                          ; $62eb: $b2
    ld b, e                                       ; $62ec: $43
    sub l                                         ; $62ed: $95
    push af                                       ; $62ee: $f5
    ld c, e                                       ; $62ef: $4b
    ld b, e                                       ; $62f0: $43
    ld h, [hl]                                    ; $62f1: $66
    add l                                         ; $62f2: $85
    rst $00                                       ; $62f3: $c7
    halt                                          ; $62f4: $76
    nop                                           ; $62f5: $00

jr_06d_62f6:
    sub a                                         ; $62f6: $97
    ld b, e                                       ; $62f7: $43
    and e                                         ; $62f8: $a3
    ld a, [hl+]                                   ; $62f9: $2a
    sbc a                                         ; $62fa: $9f
    ld d, b                                       ; $62fb: $50
    ld a, [bc]                                    ; $62fc: $0a
    ld a, d                                       ; $62fd: $7a
    dec d                                         ; $62fe: $15
    ld h, [hl]                                    ; $62ff: $66
    ccf                                           ; $6300: $3f
    ld l, l                                       ; $6301: $6d
    cp l                                          ; $6302: $bd
    pop bc                                        ; $6303: $c1
    cp $47                                        ; $6304: $fe $47
    sbc [hl]                                      ; $6306: $9e
    ld d, l                                       ; $6307: $55
    ld e, c                                       ; $6308: $59
    ld b, h                                       ; $6309: $44
    add e                                         ; $630a: $83
    jp nz, Jump_000_0d04                          ; $630b: $c2 $04 $0d

    rst $00                                       ; $630e: $c7
    or e                                          ; $630f: $b3
    sub b                                         ; $6310: $90
    db $10                                        ; $6311: $10
    jp nz, $d21a                                  ; $6312: $c2 $1a $d2

    inc a                                         ; $6315: $3c
    or e                                          ; $6316: $b3
    sbc a                                         ; $6317: $9f
    adc [hl]                                      ; $6318: $8e
    ld [hl], $9c                                  ; $6319: $36 $9c
    inc e                                         ; $631b: $1c
    ld b, a                                       ; $631c: $47
    dec de                                        ; $631d: $1b
    ld c, b                                       ; $631e: $48
    inc l                                         ; $631f: $2c
    inc h                                         ; $6320: $24
    add h                                         ; $6321: $84
    sub e                                         ; $6322: $93
    ld [$13d9], a                                 ; $6323: $ea $d9 $13
    or d                                          ; $6326: $b2
    jr @-$48                                      ; $6327: $18 $b6

    dec e                                         ; $6329: $1d
    scf                                           ; $632a: $37
    add e                                         ; $632b: $83
    dec de                                        ; $632c: $1b
    jp nz, Jump_06d_4d50                          ; $632d: $c2 $50 $4d

    ld l, b                                       ; $6330: $68
    ld l, b                                       ; $6331: $68
    rst $30                                       ; $6332: $f7
    call c, $0e5a                                 ; $6333: $dc $5a $0e
    ld b, l                                       ; $6336: $45
    jp c, $e821                                   ; $6337: $da $21 $e8

    ld d, l                                       ; $633a: $55
    sbc b                                         ; $633b: $98
    db $fd                                        ; $633c: $fd
    or h                                          ; $633d: $b4
    dec e                                         ; $633e: $1d
    rra                                           ; $633f: $1f
    db $fd                                        ; $6340: $fd
    ld c, [hl]                                    ; $6341: $4e
    push bc                                       ; $6342: $c5
    pop bc                                        ; $6343: $c1
    dec [hl]                                      ; $6344: $35
    call c, $9dfe                                 ; $6345: $dc $fe $9d
    add [hl]                                      ; $6348: $86
    jr nc, @+$56                                  ; $6349: $30 $54

    or h                                          ; $634b: $b4
    inc h                                         ; $634c: $24
    xor h                                         ; $634d: $ac
    sbc [hl]                                      ; $634e: $9e
    pop hl                                        ; $634f: $e1
    inc l                                         ; $6350: $2c
    ld l, l                                       ; $6351: $6d

Call_06d_6352:
Jump_06d_6352:
    jr nz, @-$4d                                  ; $6352: $20 $b1

    jr z, @-$2c                                   ; $6354: $28 $d2

    adc [hl]                                      ; $6356: $8e
    ld b, d                                       ; $6357: $42
    ld b, d                                       ; $6358: $42
    jr c, jr_06d_63c4                             ; $6359: $38 $69

    db $eb                                        ; $635b: $eb
    push de                                       ; $635c: $d5
    ldh [$3a], a                                  ; $635d: $e0 $3a
    inc l                                         ; $635f: $2c
    xor l                                         ; $6360: $ad
    sbc h                                         ; $6361: $9c
    and l                                         ; $6362: $a5
    ret nc                                        ; $6363: $d0

    add [hl]                                      ; $6364: $86
    jr nc, jr_06d_637b                            ; $6365: $30 $14

    and c                                         ; $6367: $a1
    ld sp, $5a7b                                  ; $6368: $31 $7b $5a
    jp hl                                         ; $636b: $e9


    ld a, [hl-]                                   ; $636c: $3a
    add hl, hl                                    ; $636d: $29
    jp c, Jump_06d_4f74                           ; $636e: $da $74 $4f

    daa                                           ; $6371: $27
    ret c                                         ; $6372: $d8

    halt                                          ; $6373: $76
    nop                                           ; $6374: $00
    rst $10                                       ; $6375: $d7
    rst $00                                       ; $6376: $c7
    ld [bc], a                                    ; $6377: $02
    adc c                                         ; $6378: $89
    sbc l                                         ; $6379: $9d
    add [hl]                                      ; $637a: $86

jr_06d_637b:
    ld [hl], $22                                  ; $637b: $36 $22
    xor d                                         ; $637d: $aa
    adc [hl]                                      ; $637e: $8e
    push af                                       ; $637f: $f5
    sub e                                         ; $6380: $93
    or h                                          ; $6381: $b4
    call z, $97b8                                 ; $6382: $cc $b8 $97
    ld a, [de]                                    ; $6385: $1a
    add e                                         ; $6386: $83
    xor e                                         ; $6387: $ab
    ld [hl], h                                    ; $6388: $74
    and c                                         ; $6389: $a1
    or c                                          ; $638a: $b1
    pop af                                        ; $638b: $f1
    ld [hl], a                                    ; $638c: $77
    sbc d                                         ; $638d: $9a
    ld l, c                                       ; $638e: $69
    rst $38                                       ; $638f: $ff
    pop de                                        ; $6390: $d1
    ld a, c                                       ; $6391: $79
    db $e3                                        ; $6392: $e3
    nop                                           ; $6393: $00
    rra                                           ; $6394: $1f
    scf                                           ; $6395: $37
    or h                                          ; $6396: $b4
    ld de, $7551                                  ; $6397: $11 $51 $75
    xor h                                         ; $639a: $ac
    sbc a                                         ; $639b: $9f
    and h                                         ; $639c: $a4
    ld h, l                                       ; $639d: $65
    add $bd                                       ; $639e: $c6 $bd
    ld c, d                                       ; $63a0: $4a
    rla                                           ; $63a1: $17
    ld a, [de]                                    ; $63a2: $1a
    xor e                                         ; $63a3: $ab
    db $10                                        ; $63a4: $10
    or d                                          ; $63a5: $b2
    db $d3                                        ; $63a6: $d3

jr_06d_63a7:
    ld b, b                                       ; $63a7: $40
    ld h, d                                       ; $63a8: $62
    rst $38                                       ; $63a9: $ff
    inc hl                                        ; $63aa: $23
    rst $08                                       ; $63ab: $cf
    ld c, d                                       ; $63ac: $4a
    adc l                                         ; $63ad: $8d
    pop bc                                        ; $63ae: $c1
    dec d                                         ; $63af: $15
    pop hl                                        ; $63b0: $e1
    ld [hl], $b3                                  ; $63b1: $36 $b3
    sbc a                                         ; $63b3: $9f
    xor l                                         ; $63b4: $ad
    xor a                                         ; $63b5: $af
    ld d, a                                       ; $63b6: $57
    adc [hl]                                      ; $63b7: $8e
    sbc e                                         ; $63b8: $9b
    ld a, [hl+]                                   ; $63b9: $2a
    res 3, l                                      ; $63ba: $cb $9d
    adc l                                         ; $63bc: $8d
    db $eb                                        ; $63bd: $eb
    ld c, a                                       ; $63be: $4f
    ld d, l                                       ; $63bf: $55
    halt                                          ; $63c0: $76
    halt                                          ; $63c1: $76
    pop af                                        ; $63c2: $f1
    ld l, b                                       ; $63c3: $68

jr_06d_63c4:
    inc sp                                        ; $63c4: $33
    sbc d                                         ; $63c5: $9a
    sub e                                         ; $63c6: $93
    call nz, Call_000_0076                        ; $63c7: $c4 $76 $00
    ld d, a                                       ; $63ca: $57
    add $4d                                       ; $63cb: $c6 $4d
    sub l                                         ; $63cd: $95
    ld d, $dc                                     ; $63ce: $16 $dc
    ld b, b                                       ; $63d0: $40
    ld h, d                                       ; $63d1: $62
    sbc c                                         ; $63d2: $99
    ld a, [hl+]                                   ; $63d3: $2a
    ld e, d                                       ; $63d4: $5a
    ld [de], a                                    ; $63d5: $12
    or [hl]                                       ; $63d6: $b6
    ld d, b                                       ; $63d7: $50
    rst $08                                       ; $63d8: $cf
    add $64                                       ; $63d9: $c6 $64
    ld b, d                                       ; $63db: $42
    db $e4                                        ; $63dc: $e4
    ret z                                         ; $63dd: $c8

    scf                                           ; $63de: $37
    ld c, $e7                                     ; $63df: $0e $e7
    ld a, [de]                                    ; $63e1: $1a
    ld d, c                                       ; $63e2: $51
    push bc                                       ; $63e3: $c5
    adc [hl]                                      ; $63e4: $8e
    ld a, d                                       ; $63e5: $7a
    ld d, $69                                     ; $63e6: $16 $69
    ld b, a                                       ; $63e8: $47
    cpl                                           ; $63e9: $2f
    inc d                                         ; $63ea: $14
    xor d                                         ; $63eb: $aa
    ld c, c                                       ; $63ec: $49
    inc hl                                        ; $63ed: $23
    db $fc                                        ; $63ee: $fc
    jr jr_06d_63a7                                ; $63ef: $18 $b6

    inc bc                                        ; $63f1: $03
    ld d, a                                       ; $63f2: $57
    ld h, c                                       ; $63f3: $61
    or $53                                        ; $63f4: $f6 $53
    xor a                                         ; $63f6: $af
    ld c, a                                       ; $63f7: $4f
    adc h                                         ; $63f8: $8c
    or h                                          ; $63f9: $b4
    ld c, e                                       ; $63fa: $4b
    cp l                                          ; $63fb: $bd
    cp h                                          ; $63fc: $bc
    or d                                          ; $63fd: $b2
    ld b, a                                       ; $63fe: $47
    add l                                         ; $63ff: $85
    ld [hl], h                                    ; $6400: $74
    dec c                                         ; $6401: $0d
    inc h                                         ; $6402: $24
    or $3f                                        ; $6403: $f6 $3f
    ld a, [c]                                     ; $6405: $f2
    xor h                                         ; $6406: $ac
    call nc, Call_06d_5c18                        ; $6407: $d4 $18 $5c
    inc b                                         ; $640a: $04
    jp nc, Jump_06d_74ba                          ; $640b: $d2 $ba $74

    nop                                           ; $640e: $00
    sub a                                         ; $640f: $97
    push hl                                       ; $6410: $e5
    db $e4                                        ; $6411: $e4
    ld c, b                                       ; $6412: $48
    ret                                           ; $6413: $c9


    call nc, Call_000_0ae4                        ; $6414: $d4 $e4 $0a
    cp c                                          ; $6417: $b9
    inc a                                         ; $6418: $3c
    ld [hl], e                                    ; $6419: $73
    db $e4                                        ; $641a: $e4
    xor e                                         ; $641b: $ab
    ld c, l                                       ; $641c: $4d

jr_06d_641d:
    ld c, $fd                                     ; $641d: $0e $fd
    ld [hl], e                                    ; $641f: $73
    ld b, a                                       ; $6420: $47
    ld b, l                                       ; $6421: $45
    or e                                          ; $6422: $b3
    ld a, [de]                                    ; $6423: $1a
    dec c                                         ; $6424: $0d
    ld e, c                                       ; $6425: $59
    ld b, l                                       ; $6426: $45
    ld h, e                                       ; $6427: $63
    ld c, $1e                                     ; $6428: $0e $1e
    and l                                         ; $642a: $a5
    ld l, e                                       ; $642b: $6b
    ld [hl], d                                    ; $642c: $72
    sub l                                         ; $642d: $95
    jp Jump_000_3c5d                              ; $642e: $c3 $5d $3c


    db $db                                        ; $6431: $db
    ld bc, $a9ef                                  ; $6432: $01 $ef $a9
    ld c, [hl]                                    ; $6435: $4e
    adc l                                         ; $6436: $8d
    ret c                                         ; $6437: $d8

    dec e                                         ; $6438: $1d
    ld [hl], e                                    ; $6439: $73
    ld h, h                                       ; $643a: $64
    dec e                                         ; $643b: $1d
    dec de                                        ; $643c: $1b
    jp nz, $d928                                  ; $643d: $c2 $28 $d9

    db $e4                                        ; $6440: $e4
    ld a, [bc]                                    ; $6441: $0a
    cp c                                          ; $6442: $b9
    inc a                                         ; $6443: $3c
    ld [hl], e                                    ; $6444: $73
    db $e4                                        ; $6445: $e4
    halt                                          ; $6446: $76
    nop                                           ; $6447: $00
    sub a                                         ; $6448: $97
    ei                                            ; $6449: $fb
    rst $20                                       ; $644a: $e7
    adc [hl]                                      ; $644b: $8e
    ld d, d                                       ; $644c: $52
    inc hl                                        ; $644d: $23
    cp $28                                        ; $644e: $fe $28
    inc h                                         ; $6450: $24
    dec d                                         ; $6451: $15
    db $dd                                        ; $6452: $dd
    or [hl]                                       ; $6453: $b6
    xor l                                         ; $6454: $ad
    inc l                                         ; $6455: $2c
    ld [hl], a                                    ; $6456: $77
    sub [hl]                                      ; $6457: $96
    ld a, [hl+]                                   ; $6458: $2a
    ld de, $ba4e                                  ; $6459: $11 $4e $ba
    call nc, $8d73                                ; $645c: $d4 $73 $8d
    sub e                                         ; $645f: $93
    ld a, [hl+]                                   ; $6460: $2a
    rst $00                                       ; $6461: $c7
    push de                                       ; $6462: $d5
    pop de                                        ; $6463: $d1
    ld c, a                                       ; $6464: $4f
    inc bc                                        ; $6465: $03
    adc c                                         ; $6466: $89
    push hl                                       ; $6467: $e5
    adc $86                                       ; $6468: $ce $86
    and e                                         ; $646a: $a3
    adc d                                         ; $646b: $8a
    ld c, d                                       ; $646c: $4a
    inc h                                         ; $646d: $24
    add l                                         ; $646e: $85
    dec d                                         ; $646f: $15
    ei                                            ; $6470: $fb
    add hl, hl                                    ; $6471: $29
    cp c                                          ; $6472: $b9
    xor [hl]                                      ; $6473: $ae
    inc l                                         ; $6474: $2c
    rst $08                                       ; $6475: $cf
    or d                                          ; $6476: $b2
    ld e, a                                       ; $6477: $5f
    or e                                          ; $6478: $b3
    push af                                       ; $6479: $f5
    cp d                                          ; $647a: $ba
    ld d, c                                       ; $647b: $51
    ld l, $9d                                     ; $647c: $2e $9d
    ld a, d                                       ; $647e: $7a
    ld d, $fb                                     ; $647f: $16 $fb
    add hl, hl                                    ; $6481: $29
    ld e, l                                       ; $6482: $5d
    ld [hl], b                                    ; $6483: $70
    dec c                                         ; $6484: $0d
    ld h, c                                       ; $6485: $61
    xor b                                         ; $6486: $a8
    ld b, h                                       ; $6487: $44
    jr jr_06d_641d                                ; $6488: $18 $93

    dec b                                         ; $648a: $05
    ccf                                           ; $648b: $3f
    or c                                          ; $648c: $b1
    rst $08                                       ; $648d: $cf
    sub $f3                                       ; $648e: $d6 $f3
    ld d, d                                       ; $6490: $52
    db $e3                                        ; $6491: $e3
    and h                                         ; $6492: $a4
    jp z, $a2c9                                   ; $6493: $ca $c9 $a2

    add l                                         ; $6496: $85
    db $ec                                        ; $6497: $ec
    and a                                         ; $6498: $a7
    ld [hl], h                                    ; $6499: $74
    db $fd                                        ; $649a: $fd
    adc a                                         ; $649b: $8f
    inc a                                         ; $649c: $3c
    db $db                                        ; $649d: $db
    ld c, $57                                     ; $649e: $0e $57
    add $4d                                       ; $64a0: $c6 $4d
    sbc c                                         ; $64a2: $99
    ld a, [$549f]                                 ; $64a3: $fa $9f $54
    add l                                         ; $64a6: $85
    sub b                                         ; $64a7: $90
    sub $40                                       ; $64a8: $d6 $40
    ld h, d                                       ; $64aa: $62
    cpl                                           ; $64ab: $2f
    ld [hl], h                                    ; $64ac: $74
    ld a, [hl+]                                   ; $64ad: $2a
    add a                                         ; $64ae: $87
    cp e                                          ; $64af: $bb
    ld a, b                                       ; $64b0: $78
    ld a, [hl+]                                   ; $64b1: $2a
    ld l, c                                       ; $64b2: $69
    ld [hl], c                                    ; $64b3: $71
    ld a, [de]                                    ; $64b4: $1a
    ld c, b                                       ; $64b5: $48
    ret z                                         ; $64b6: $c8

    ld a, [hl]                                    ; $64b7: $7e
    ld a, [hl-]                                   ; $64b8: $3a
    ld h, l                                       ; $64b9: $65
    sub [hl]                                      ; $64ba: $96
    sub e                                         ; $64bb: $93
    and e                                         ; $64bc: $a3
    pop bc                                        ; $64bd: $c1
    sbc $38                                       ; $64be: $de $38
    nop                                           ; $64c0: $00
    rst $20                                       ; $64c1: $e7
    dec sp                                        ; $64c2: $3b
    ld a, e                                       ; $64c3: $7b
    and c                                         ; $64c4: $a1
    ld [hl], $b7                                  ; $64c5: $36 $b7
    ld h, [hl]                                    ; $64c7: $66

Jump_06d_64c8:
    db $eb                                        ; $64c8: $eb
    ld a, c                                       ; $64c9: $79
    sub a                                         ; $64ca: $97
    ld [$42f4], a                                 ; $64cb: $ea $f4 $42
    ld d, a                                       ; $64ce: $57
    sub [hl]                                      ; $64cf: $96
    db $e3                                        ; $64d0: $e3
    sub d                                         ; $64d1: $92
    inc de                                        ; $64d2: $13
    inc d                                         ; $64d3: $14
    pop af                                        ; $64d4: $f1
    ld b, d                                       ; $64d5: $42
    dec e                                         ; $64d6: $1d
    push de                                       ; $64d7: $d5
    ld c, l                                       ; $64d8: $4d
    jp hl                                         ; $64d9: $e9


    ld a, d                                       ; $64da: $7a
    ld [hl], l                                    ; $64db: $75
    ld c, [hl]                                    ; $64dc: $4e
    ccf                                           ; $64dd: $3f
    jp nz, Jump_06d_6ea2                          ; $64de: $c2 $a2 $6e

    cp l                                          ; $64e1: $bd
    pop bc                                        ; $64e2: $c1
    cp $47                                        ; $64e3: $fe $47
    sbc [hl]                                      ; $64e5: $9e
    ld [hl], l                                    ; $64e6: $75
    ld a, [hl+]                                   ; $64e7: $2a
    ld de, $64c6                                  ; $64e8: $11 $c6 $64
    or b                                          ; $64eb: $b0
    or d                                          ; $64ec: $b2
    db $d3                                        ; $64ed: $d3
    ld l, b                                       ; $64ee: $68
    sub e                                         ; $64ef: $93
    ld l, [hl]                                    ; $64f0: $6e
    pop de                                        ; $64f1: $d1
    ld [$ffd9], a                                 ; $64f2: $ea $d9 $ff
    db $ec                                        ; $64f5: $ec
    ld de, $3282                                  ; $64f6: $11 $82 $32
    ld [hl], l                                    ; $64f9: $75
    rla                                           ; $64fa: $17
    or e                                          ; $64fb: $b3
    db $cc, $ba, $32                              ; $64fc: $cc $ba $32
    adc h                                         ; $64ff: $8c
    xor e                                         ; $6500: $ab
    ret                                           ; $6501: $c9


    dec [hl]                                      ; $6502: $35
    rst $08                                       ; $6503: $cf
    ld a, a                                       ; $6504: $7f
    ld a, [hl+]                                   ; $6505: $2a
    ld [c], a                                     ; $6506: $e2
    adc d                                         ; $6507: $8a
    db $eb                                        ; $6508: $eb
    ld [c], a                                     ; $6509: $e2
    ld l, h                                       ; $650a: $6c
    rlca                                          ; $650b: $07
    rst $20                                       ; $650c: $e7
    xor c                                         ; $650d: $a9
    ld [$e347], sp                                ; $650e: $08 $47 $e3
    inc [hl]                                      ; $6511: $34
    sub b                                         ; $6512: $90
    ld e, b                                       ; $6513: $58
    xor $ec                                       ; $6514: $ee $ec
    rra                                           ; $6516: $1f
    xor e                                         ; $6517: $ab
    sub c                                         ; $6518: $91
    add hl, sp                                    ; $6519: $39
    jp nz, $acba                                  ; $651a: $c2 $ba $ac

    ld a, e                                       ; $651d: $7b
    ld [hl], b                                    ; $651e: $70
    ld b, e                                       ; $651f: $43
    jr jr_06d_654c                                ; $6520: $18 $2a

    ld a, [de]                                    ; $6522: $1a
    jp Jump_000_0076                              ; $6523: $c3 $76 $00


    ld l, a                                       ; $6526: $6f
    dec c                                         ; $6527: $0d
    xor d                                         ; $6528: $aa
    ld h, e                                       ; $6529: $63
    sub c                                         ; $652a: $91
    add d                                         ; $652b: $82
    ld e, [hl]                                    ; $652c: $5e
    add l                                         ; $652d: $85
    reti                                          ; $652e: $d9


    ld c, a                                       ; $652f: $4f
    ld e, e                                       ; $6530: $5b
    ccf                                           ; $6531: $3f
    ld h, e                                       ; $6532: $63
    ld d, $a3                                     ; $6533: $16 $a3
    ld [hl-], a                                   ; $6535: $32
    dec l                                         ; $6536: $2d
    rrca                                          ; $6537: $0f
    ccf                                           ; $6538: $3f
    dec c                                         ; $6539: $0d
    ld h, c                                       ; $653a: $61
    ld l, b                                       ; $653b: $68
    cp $9d                                        ; $653c: $fe $9d
    ld b, d                                       ; $653e: $42
    ld b, d                                       ; $653f: $42
    ld [$206b], sp                                ; $6540: $08 $6b $20
    ld [hl], c                                    ; $6543: $71
    add hl, sp                                    ; $6544: $39
    ld hl, sp-$27                                 ; $6545: $f8 $d9
    ld c, $1f                                     ; $6547: $0e $1f
    ld d, a                                       ; $6549: $57
    ld c, $77                                     ; $654a: $0e $77

jr_06d_654c:
    pop af                                        ; $654c: $f1
    inc [hl]                                      ; $654d: $34
    rst $38                                       ; $654e: $ff
    ld c, [hl]                                    ; $654f: $4e

Jump_06d_6550:
    xor c                                         ; $6550: $a9
    ld sp, $08b8                                  ; $6551: $31 $b8 $08
    and h                                         ; $6554: $a4
    dec h                                         ; $6555: $25
    add sp, $55                                   ; $6556: $e8 $55
    sbc b                                         ; $6558: $98
    db $fd                                        ; $6559: $fd
    ld [hl], h                                    ; $655a: $74
    xor c                                         ; $655b: $a9
    rst $10                                       ; $655c: $d7
    rst $00                                       ; $655d: $c7
    ld a, [hl+]                                   ; $655e: $2a
    jp nz, Jump_06d_4c7f                          ; $655f: $c2 $7f $4c

    ret nc                                        ; $6562: $d0

    ld a, a                                       ; $6563: $7f
    ld [hl], b                                    ; $6564: $70
    sbc c                                         ; $6565: $99
    push hl                                       ; $6566: $e5
    db $e4                                        ; $6567: $e4
    ld l, b                                       ; $6568: $68
    pop bc                                        ; $6569: $c1
    ld c, a                                       ; $656a: $4f
    db $ec                                        ; $656b: $ec
    ld [hl], e                                    ; $656c: $73
    jp hl                                         ; $656d: $e9


    nop                                           ; $656e: $00
    scf                                           ; $656f: $37
    ld b, a                                       ; $6570: $47
    sbc [hl]                                      ; $6571: $9e
    push af                                       ; $6572: $f5
    cp a                                          ; $6573: $bf
    ld d, d                                       ; $6574: $52
    sub e                                         ; $6575: $93
    xor e                                         ; $6576: $ab
    inc e                                         ; $6577: $1c
    xor $e2                                       ; $6578: $ee $e2
    xor c                                         ; $657a: $a9
    call Call_06d_69ad                            ; $657b: $cd $ad $69
    ld [$5855], sp                                ; $657e: $08 $55 $58
    jp Jump_000_22b1                              ; $6581: $c3 $b1 $22


    sub b                                         ; $6584: $90
    sub $1b                                       ; $6585: $d6 $1b
    rlca                                          ; $6587: $07
    scf                                           ; $6588: $37
    sub [hl]                                      ; $6589: $96
    inc de                                        ; $658a: $13
    sub h                                         ; $658b: $94

jr_06d_658c:
    dec sp                                        ; $658c: $3b
    dec hl                                        ; $658d: $2b
    rst $00                                       ; $658e: $c7
    adc h                                         ; $658f: $8c
    xor c                                         ; $6590: $a9
    ld [hl], h                                    ; $6591: $74
    push af                                       ; $6592: $f5
    bit 7, b                                      ; $6593: $cb $78
    pop af                                        ; $6595: $f1
    ld [hl], a                                    ; $6596: $77
    ld a, d                                       ; $6597: $7a
    and a                                         ; $6598: $a7
    sub [hl]                                      ; $6599: $96
    ld a, [hl+]                                   ; $659a: $2a
    pop hl                                        ; $659b: $e1
    and c                                         ; $659c: $a1
    db $db                                        ; $659d: $db
    ld bc, $a9e7                                  ; $659e: $01 $e7 $a9
    rst $38                                       ; $65a1: $ff
    push de                                       ; $65a2: $d5
    db $e4                                        ; $65a3: $e4
    ld a, [hl+]                                   ; $65a4: $2a
    add a                                         ; $65a5: $87
    cp e                                          ; $65a6: $bb
    ld a, b                                       ; $65a7: $78
    ld [$92a9], a                                 ; $65a8: $ea $a9 $92
    reti                                          ; $65ab: $d9


    ld c, a                                       ; $65ac: $4f
    and c                                         ; $65ad: $a1
    and l                                         ; $65ae: $a5
    ld c, d                                       ; $65af: $4a
    ld a, b                                       ; $65b0: $78
    ld l, b                                       ; $65b1: $68
    jp hl                                         ; $65b2: $e9


    ld [$f197], a                                 ; $65b3: $ea $97 $f1
    ld [c], a                                     ; $65b6: $e2
    rst $28                                       ; $65b7: $ef
    inc d                                         ; $65b8: $14
    db $d3                                        ; $65b9: $d3
    ld a, b                                       ; $65ba: $78
    pop bc                                        ; $65bb: $c1
    adc h                                         ; $65bc: $8c
    or e                                          ; $65bd: $b3
    push af                                       ; $65be: $f5
    ld a, [de]                                    ; $65bf: $1a
    or h                                          ; $65c0: $b4
    ld c, h                                       ; $65c1: $4c
    call Call_06d_53bf                            ; $65c2: $cd $bf $53
    rst $00                                       ; $65c5: $c7
    xor $74                                       ; $65c6: $ee $74
    ld b, d                                       ; $65c8: $42
    sbc e                                         ; $65c9: $9b
    ld a, d                                       ; $65ca: $7a
    ld [hl], $90                                  ; $65cb: $36 $90
    ld e, b                                       ; $65cd: $58
    add hl, sp                                    ; $65ce: $39
    ld d, [hl]                                    ; $65cf: $56
    xor $2c                                       ; $65d0: $ee $2c
    dec c                                         ; $65d2: $0d
    db $db                                        ; $65d3: $db
    ld bc, $61d7                                  ; $65d4: $01 $d7 $61
    sub h                                         ; $65d7: $94
    ld l, h                                       ; $65d8: $6c
    jr nz, jr_06d_658c                            ; $65d9: $20 $b1

    rst $38                                       ; $65db: $ff
    sub c                                         ; $65dc: $91
    ld h, a                                       ; $65dd: $67
    call Call_06d_53bf                            ; $65de: $cd $bf $53
    ld l, d                                       ; $65e1: $6a
    inc c                                         ; $65e2: $0c
    ld l, [hl]                                    ; $65e3: $6e
    ld [$6455], sp                                ; $65e4: $08 $55 $64
    ccf                                           ; $65e7: $3f
    ld [hl], l                                    ; $65e8: $75
    ld l, c                                       ; $65e9: $69
    push bc                                       ; $65ea: $c5
    ld l, c                                       ; $65eb: $69
    and h                                         ; $65ec: $a4
    dec bc                                        ; $65ed: $0b
    and a                                         ; $65ee: $a7
    add hl, de                                    ; $65ef: $19
    ld e, d                                       ; $65f0: $5a
    and h                                         ; $65f1: $a4
    dec e                                         ; $65f2: $1d
    ld a, [hl+]                                   ; $65f3: $2a
    ld l, b                                       ; $65f4: $68
    cp $9d                                        ; $65f5: $fe $9d
    ld e, [hl]                                    ; $65f7: $5e
    add sp, $55                                   ; $65f8: $e8 $55
    sbc b                                         ; $65fa: $98
    db $fd                                        ; $65fb: $fd
    or h                                          ; $65fc: $b4
    dec e                                         ; $65fd: $1d
    rst $10                                       ; $65fe: $d7
    ld l, c                                       ; $65ff: $69
    ld a, [c]                                     ; $6600: $f2
    daa                                           ; $6601: $27
    ld b, c                                       ; $6602: $41
    rst $38                                       ; $6603: $ff

jr_06d_6604:
    inc hl                                        ; $6604: $23
    rst $08                                       ; $6605: $cf
    ld a, [$a95f]                                 ; $6606: $fa $5f $a9
    ret                                           ; $6609: $c9


    ld d, l                                       ; $660a: $55
    ld c, $77                                     ; $660b: $0e $77
    pop af                                        ; $660d: $f1
    call nc, $d6e6                                ; $660e: $d4 $e6 $d6
    inc [hl]                                      ; $6611: $34
    inc e                                         ; $6612: $1c
    dec hl                                        ; $6613: $2b
    ld [bc], a                                    ; $6614: $02
    ld l, c                                       ; $6615: $69
    cp l                                          ; $6616: $bd
    ld [hl], c                                    ; $6617: $71
    nop                                           ; $6618: $00
    scf                                           ; $6619: $37
    sub [hl]                                      ; $661a: $96
    inc de                                        ; $661b: $13
    sub h                                         ; $661c: $94
    dec sp                                        ; $661d: $3b
    dec de                                        ; $661e: $1b
    ld b, d                                       ; $661f: $42
    ld [hl], l                                    ; $6620: $75
    ld d, d                                       ; $6621: $52
    ld b, e                                       ; $6622: $43
    xor $68                                       ; $6623: $ee $68
    jr c, jr_06d_663d                             ; $6625: $38 $16

    ld d, c                                       ; $6627: $51
    ld d, [hl]                                    ; $6628: $56
    or c                                          ; $6629: $b1
    jp nc, $f3d6                                  ; $662a: $d2 $d6 $f3

    ld a, [hl]                                    ; $662d: $7e
    rra                                           ; $662e: $1f
    call c, Call_06d_6240                         ; $662f: $dc $40 $62
    db $e3                                        ; $6632: $e3
    ret z                                         ; $6633: $c8

    ld c, c                                       ; $6634: $49
    call $a853                                    ; $6635: $cd $53 $a8
    and [hl]                                      ; $6638: $a6
    inc e                                         ; $6639: $1c
    ld b, a                                       ; $663a: $47
    ret nc                                        ; $663b: $d0

    ld [hl], b                                    ; $663c: $70

jr_06d_663d:
    inc l                                         ; $663d: $2c
    sub b                                         ; $663e: $90
    ld e, b                                       ; $663f: $58
    xor $ec                                       ; $6640: $ee $ec
    add l                                         ; $6642: $85
    jp c, $9adc                                   ; $6643: $da $dc $9a

    scf                                           ; $6646: $37
    ld c, $e7                                     ; $6647: $0e $e7
    dec sp                                        ; $6649: $3b
    ld a, e                                       ; $664a: $7b
    and c                                         ; $664b: $a1
    ret                                           ; $664c: $c9


    and c                                         ; $664d: $a1
    ld a, a                                       ; $664e: $7f
    xor $68                                       ; $664f: $ee $68
    jr nz, jr_06d_6604                            ; $6651: $20 $b1

    and d                                         ; $6653: $a2
    ld e, c                                       ; $6654: $59
    add l                                         ; $6655: $85
    ld e, h                                       ; $6656: $5c
    sbc [hl]                                      ; $6657: $9e
    add hl, sp                                    ; $6658: $39
    ld h, d                                       ; $6659: $62
    ld [hl], a                                    ; $665a: $77
    call z, $8d91                                 ; $665b: $cc $91 $8d
    add [hl]                                      ; $665e: $86
    xor h                                         ; $665f: $ac
    and d                                         ; $6660: $a2
    ld sp, $8f07                                  ; $6661: $31 $07 $8f
    jp nc, $b935                                  ; $6664: $d2 $35 $b9

    jp z, $2ee1                                   ; $6667: $ca $e1 $2e

    sbc [hl]                                      ; $666a: $9e
    db $ed                                        ; $666b: $ed
    nop                                           ; $666c: $00
    ld l, a                                       ; $666d: $6f
    adc l                                         ; $666e: $8d
    inc de                                        ; $666f: $13
    ld [hl], h                                    ; $6670: $74
    xor c                                         ; $6671: $a9
    ld c, [hl]                                    ; $6672: $4e
    ld a, c                                       ; $6673: $79
    dec hl                                        ; $6674: $2b
    call c, Call_06d_4497                         ; $6675: $dc $97 $44
    ld d, c                                       ; $6678: $51
    ld c, c                                       ; $6679: $49
    ld b, e                                       ; $667a: $43
    di                                            ; $667b: $f3
    ld d, h                                       ; $667c: $54
    adc d                                         ; $667d: $8a
    ld a, a                                       ; $667e: $7f
    ld h, a                                       ; $667f: $67
    dec sp                                        ; $6680: $3b
    nop                                           ; $6681: $00
    rst $10                                       ; $6682: $d7
    db $e4                                        ; $6683: $e4
    cp e                                          ; $6684: $bb
    sub e                                         ; $6685: $93
    ld [hl], c                                    ; $6686: $71
    jp nz, Jump_000_37be                          ; $6687: $c2 $be $37

Call_06d_668a:
    sub b                                         ; $668a: $90
    ld l, b                                       ; $668b: $68
    dec c                                         ; $668c: $0d
    inc h                                         ; $668d: $24
    sub [hl]                                      ; $668e: $96
    xor c                                         ; $668f: $a9
    ld d, e                                       ; $6690: $53

Jump_06d_6691:
    adc c                                         ; $6691: $89
    jr nc, jr_06d_66ba                            ; $6692: $30 $26

    db $e3                                        ; $6694: $e3
    halt                                          ; $6695: $76
    nop                                           ; $6696: $00
    rst $20                                       ; $6697: $e7
    xor c                                         ; $6698: $a9
    sub b                                         ; $6699: $90
    db $10                                        ; $669a: $10
    ld [hl], d                                    ; $669b: $72
    push de                                       ; $669c: $d5
    or e                                          ; $669d: $b3
    ld a, a                                       ; $669e: $7f
    ld e, d                                       ; $669f: $5a
    sub e                                         ; $66a0: $93
    db $eb                                        ; $66a1: $eb
    ld e, $dc                                     ; $66a2: $1e $dc
    inc a                                         ; $66a4: $3c
    adc l                                         ; $66a5: $8d
    rla                                           ; $66a6: $17
    call z, $db38                                 ; $66a7: $cc $38 $db
    ld bc, $a9e7                                  ; $66aa: $01 $e7 $a9
    ld sp, hl                                     ; $66ad: $f9
    ld [hl], a                                    ; $66ae: $77
    or [hl]                                       ; $66af: $b6
    sbc [hl]                                      ; $66b0: $9e
    rst $30                                       ; $66b1: $f7
    ccf                                           ; $66b2: $3f
    ld a, [c]                                     ; $66b3: $f2
    db $ec                                        ; $66b4: $ec
    adc l                                         ; $66b5: $8d
    inc bc                                        ; $66b6: $03
    rst $20                                       ; $66b7: $e7
    xor c                                         ; $66b8: $a9
    ld sp, hl                                     ; $66b9: $f9

jr_06d_66ba:
    ld [hl], a                                    ; $66ba: $77
    xor d                                         ; $66bb: $aa
    ld e, h                                       ; $66bc: $5c
    call $a8f0                                    ; $66bd: $cd $f0 $a8
    adc [hl]                                      ; $66c0: $8e
    ret nc                                        ; $66c1: $d0

    ld e, b                                       ; $66c2: $58
    add hl, sp                                    ; $66c3: $39
    call c, $a3c5                                 ; $66c4: $dc $c5 $a3
    or l                                          ; $66c7: $b5
    cp c                                          ; $66c8: $b9
    dec [hl]                                      ; $66c9: $35
    cp d                                          ; $66ca: $ba
    dec e                                         ; $66cb: $1d
    rra                                           ; $66cc: $1f
    db $fd                                        ; $66cd: $fd
    adc $d6                                       ; $66ce: $ce $d6
    or a                                          ; $66d0: $b7
    ld sp, hl                                     ; $66d1: $f9
    and a                                         ; $66d2: $a7
    dec l                                         ; $66d3: $2d
    inc [hl]                                      ; $66d4: $34
    jp nc, Jump_06d_5ffa                          ; $66d5: $d2 $fa $5f

    ld a, [de]                                    ; $66d8: $1a
    rst $20                                       ; $66d9: $e7
    adc l                                         ; $66da: $8d
    inc bc                                        ; $66db: $03
    rst $20                                       ; $66dc: $e7
    xor c                                         ; $66dd: $a9
    ld sp, hl                                     ; $66de: $f9
    ld [hl], a                                    ; $66df: $77
    ld a, [$cd5f]                                 ; $66e0: $fa $5f $cd
    call z, $e4e2                                 ; $66e3: $cc $e2 $e4
    ld a, [hl+]                                   ; $66e6: $2a
    add a                                         ; $66e7: $87
    cp e                                          ; $66e8: $bb
    ld a, b                                       ; $66e9: $78
    or [hl]                                       ; $66ea: $b6
    inc bc                                        ; $66eb: $03
    rst $20                                       ; $66ec: $e7
    ld a, [de]                                    ; $66ed: $1a
    add e                                         ; $66ee: $83
    dec de                                        ; $66ef: $1b
    sub e                                         ; $66f0: $93
    sbc a                                         ; $66f1: $9f
    ld a, [bc]                                    ; $66f2: $0a
    jp hl                                         ; $66f3: $e9


    ld a, [hl+]                                   ; $66f4: $2a
    rst $00                                       ; $66f5: $c7
    push af                                       ; $66f6: $f5
    ccf                                           ; $66f7: $3f
    ld a, [c]                                     ; $66f8: $f2

jr_06d_66f9:
    ld c, h                                       ; $66f9: $4c
    ret nc                                        ; $66fa: $d0

    xor e                                         ; $66fb: $ab
    jr nc, jr_06d_66f9                            ; $66fc: $30 $fb

    jp hl                                         ; $66fe: $e9


    adc l                                         ; $66ff: $8d
    inc bc                                        ; $6700: $03
    scf                                           ; $6701: $37
    add e                                         ; $6702: $83
    dec hl                                        ; $6703: $2b
    rst $00                                       ; $6704: $c7
    ld d, l                                       ; $6705: $55
    inc de                                        ; $6706: $13
    or h                                          ; $6707: $b4
    ld hl, $94ed                                  ; $6708: $21 $ed $94
    ld [hl], d                                    ; $670b: $72
    add h                                         ; $670c: $84
    halt                                          ; $670d: $76
    ld sp, hl                                     ; $670e: $f9
    dec [hl]                                      ; $670f: $35
    ld de, $10da                                  ; $6710: $11 $da $10
    add [hl]                                      ; $6713: $86
    ld c, [hl]                                    ; $6714: $4e
    adc d                                         ; $6715: $8a
    ld [hl], $dd                                  ; $6716: $36 $dd
    db $d3                                        ; $6718: $d3
    add hl, bc                                    ; $6719: $09
    halt                                          ; $671a: $76
    jp hl                                         ; $671b: $e9


    nop                                           ; $671c: $00
    rst $28                                       ; $671d: $ef
    xor b                                         ; $671e: $a8
    ld l, d                                       ; $671f: $6a
    call c, Call_000_1f0e                         ; $6720: $dc $0e $1f
    db $fd                                        ; $6723: $fd
    adc [hl]                                      ; $6724: $8e
    and b                                         ; $6725: $a0
    ld c, $5a                                     ; $6726: $0e $5a
    and [hl]                                      ; $6728: $a6
    ld c, d                                       ; $6729: $4a
    ld e, d                                       ; $672a: $5a
    add h                                         ; $672b: $84
    ld h, e                                       ; $672c: $63
    adc [hl]                                      ; $672d: $8e
    db $ec                                        ; $672e: $ec
    ld l, c                                       ; $672f: $69
    inc [hl]                                      ; $6730: $34
    jp nz, $ea16                                  ; $6731: $c2 $16 $ea

    reti                                          ; $6734: $d9


    ccf                                           ; $6735: $3f
    xor l                                         ; $6736: $ad
    ret                                           ; $6737: $c9


    ld l, l                                       ; $6738: $6d
    rlca                                          ; $6739: $07
    rst $20                                       ; $673a: $e7
    xor c                                         ; $673b: $a9
    ld sp, hl                                     ; $673c: $f9
    ld [hl], a                                    ; $673d: $77
    ld a, [de]                                    ; $673e: $1a
    sbc c                                         ; $673f: $99
    push bc                                       ; $6740: $c5
    db $d3                                        ; $6741: $d3
    ld c, b                                       ; $6742: $48
    rla                                           ; $6743: $17
    ld c, [hl]                                    ; $6744: $4e
    ld b, e                                       ; $6745: $43
    jr jr_06d_6772                                ; $6746: $18 $2a

    push bc                                       ; $6748: $c5
    jr nc, jr_06d_67c3                            ; $6749: $30 $78

    xor b                                         ; $674b: $a8
    and b                                         ; $674c: $a0
    rst $10                                       ; $674d: $d7
    daa                                           ; $674e: $27
    ld b, [hl]                                    ; $674f: $46
    jp c, Jump_000_0076                           ; $6750: $da $76 $00

    rst $10                                       ; $6753: $d7
    ld l, c                                       ; $6754: $69
    and a                                         ; $6755: $a7
    sub h                                         ; $6756: $94
    inc hl                                        ; $6757: $23
    adc e                                         ; $6758: $8b
    jp hl                                         ; $6759: $e9


    ld d, l                                       ; $675a: $55
    sbc h                                         ; $675b: $9c
    ld l, h                                       ; $675c: $6c
    ld sp, hl                                     ; $675d: $f9
    xor l                                         ; $675e: $ad
    rst $20                                       ; $675f: $e7
    dec sp                                        ; $6760: $3b
    xor e                                         ; $6761: $ab
    db $10                                        ; $6762: $10
    or d                                          ; $6763: $b2
    sbc [hl]                                      ; $6764: $9e
    adc l                                         ; $6765: $8d
    db $e3                                        ; $6766: $e3
    ld b, a                                       ; $6767: $47
    dec sp                                        ; $6768: $3b
    ld e, d                                       ; $6769: $5a
    db $e4                                        ; $676a: $e4
    push hl                                       ; $676b: $e5
    or b                                          ; $676c: $b0
    or h                                          ; $676d: $b4
    add c                                         ; $676e: $81
    call nz, Call_06d_4732                        ; $676f: $c4 $32 $47

Call_06d_6772:
Jump_06d_6772:
jr_06d_6772:
    add e                                         ; $6772: $83
    dec hl                                        ; $6773: $2b
    xor e                                         ; $6774: $ab
    and b                                         ; $6775: $a0
    xor e                                         ; $6776: $ab
    ld b, a                                       ; $6777: $47
    ld b, e                                       ; $6778: $43
    sbc e                                         ; $6779: $9b

Jump_06d_677a:
    ret nc                                        ; $677a: $d0

    ld d, $3d                                     ; $677b: $16 $3d
    inc a                                         ; $677d: $3c
    db $eb                                        ; $677e: $eb
    ld d, c                                       ; $677f: $51
    xor d                                         ; $6780: $aa
    sbc h                                         ; $6781: $9c
    dec e                                         ; $6782: $1d
    db $db                                        ; $6783: $db
    ld bc, $f9e7                                  ; $6784: $01 $e7 $f9
    ld h, h                                       ; $6787: $64
    cp b                                          ; $6788: $b8
    ld [$fd3f], sp                                ; $6789: $08 $3f $fd
    adc a                                         ; $678c: $8f
    inc a                                         ; $678d: $3c
    ld l, e                                       ; $678e: $6b
    and h                                         ; $678f: $a4
    dec [hl]                                      ; $6790: $35

Call_06d_6791:
    and h                                         ; $6791: $a4
    sbc l                                         ; $6792: $9d
    ld d, d                                       ; $6793: $52
    adc [hl]                                      ; $6794: $8e
    ldh a, [$b3]                                  ; $6795: $f0 $b3
    push af                                       ; $6797: $f5
    or d                                          ; $6798: $b2
    add h                                         ; $6799: $84
    ld [hl], b                                    ; $679a: $70
    ld d, d                                       ; $679b: $52
    dec a                                         ; $679c: $3d
    dec de                                        ; $679d: $1b
    ld b, d                                       ; $679e: $42
    dec d                                         ; $679f: $15
    sub $e4                                       ; $67a0: $d6 $e4
    ld a, [de]                                    ; $67a2: $1a
    adc [hl]                                      ; $67a3: $8e
    dec d                                         ; $67a4: $15
    add c                                         ; $67a5: $81
    or h                                          ; $67a6: $b4
    or [hl]                                       ; $67a7: $b6
    cp [hl]                                       ; $67a8: $be
    ld c, e                                       ; $67a9: $4b
    jp $98ee                                      ; $67aa: $c3 $ee $98


    inc hl                                        ; $67ad: $23
    dec sp                                        ; $67ae: $3b
    cp l                                          ; $67af: $bd
    add d                                         ; $67b0: $82
    cp h                                          ; $67b1: $bc
    ld a, [c]                                     ; $67b2: $f2
    inc [hl]                                      ; $67b3: $34
    jp nc, $1a16                                  ; $67b4: $d2 $16 $1a

    jp nc, $a794                                  ; $67b7: $d2 $94 $a7

    or h                                          ; $67ba: $b4
    db $fc                                        ; $67bb: $fc
    inc [hl]                                      ; $67bc: $34
    cp c                                          ; $67bd: $b9
    jp z, $2ee1                                   ; $67be: $ca $e1 $2e

    ld e, $41                                     ; $67c1: $1e $41

jr_06d_67c3:
    dec e                                         ; $67c3: $1d
    or h                                          ; $67c4: $b4
    call c, $d159                                 ; $67c5: $dc $59 $d1
    sub d                                         ; $67c8: $92
    sub e                                         ; $67c9: $93
    ld a, [hl+]                                   ; $67ca: $2a
    and h                                         ; $67cb: $a4
    db $eb                                        ; $67cc: $eb
    ld a, $f9                                     ; $67cd: $3e $f9
    call nz, $aa7a                                ; $67cf: $c4 $7a $aa
    ld [hl], d                                    ; $67d2: $72
    dec sp                                        ; $67d3: $3b
    nop                                           ; $67d4: $00
    rst $20                                       ; $67d5: $e7
    dec sp                                        ; $67d6: $3b
    sbc e                                         ; $67d7: $9b
    ld a, a                                       ; $67d8: $7f
    and a                                         ; $67d9: $a7
    inc [hl]                                      ; $67da: $34
    inc [hl]                                      ; $67db: $34
    cp c                                          ; $67dc: $b9
    jp z, $2ee1                                   ; $67dd: $ca $e1 $2e

    sbc [hl]                                      ; $67e0: $9e
    ld a, d                                       ; $67e1: $7a
    or $4f                                        ; $67e2: $f6 $4f
    di                                            ; $67e4: $f3
    ldh a, [rNR14]                                ; $67e5: $f0 $14
    sub h                                         ; $67e7: $94
    add [hl]                                      ; $67e8: $86
    ld h, $87                                     ; $67e9: $26 $87
    cp $b9                                        ; $67eb: $fe $b9
    and e                                         ; $67ed: $a3
    add c                                         ; $67ee: $81
    call nz, Call_06d_668a                        ; $67ef: $c4 $8a $66
    dec [hl]                                      ; $67f2: $35
    ld a, [de]                                    ; $67f3: $1a
    or d                                          ; $67f4: $b2
    adc d                                         ; $67f5: $8a
    sub $29                                       ; $67f6: $d6 $29
    add hl, de                                    ; $67f8: $19
    inc a                                         ; $67f9: $3c
    ld l, $1d                                     ; $67fa: $2e $1d
    ld l, a                                       ; $67fc: $6f
    adc l                                         ; $67fd: $8d
    inc de                                        ; $67fe: $13
    ld [hl], h                                    ; $67ff: $74
    xor c                                         ; $6800: $a9
    ld c, [hl]                                    ; $6801: $4e
    ld a, c                                       ; $6802: $79
    dec hl                                        ; $6803: $2b
    call c, Call_06d_4497                         ; $6804: $dc $97 $44
    and a                                         ; $6807: $a7
    ld d, d                                       ; $6808: $52
    call z, Call_06d_5365                         ; $6809: $cc $65 $53
    rst $08                                       ; $680c: $cf
    add [hl]                                      ; $680d: $86
    ld h, a                                       ; $680e: $67
    ei                                            ; $680f: $fb
    inc [hl]                                      ; $6810: $34
    sub b                                         ; $6811: $90
    cp b                                          ; $6812: $b8
    inc e                                         ; $6813: $1c
    db $fc                                        ; $6814: $fc
    ld l, h                                       ; $6815: $6c
    rlca                                          ; $6816: $07
    rst $20                                       ; $6817: $e7
    dec c                                         ; $6818: $0d
    ld h, c                                       ; $6819: $61
    add sp, $64                                   ; $681a: $e8 $64
    rst $08                                       ; $681c: $cf
    ld [hl], d                                    ; $681d: $72
    ld h, a                                       ; $681e: $67
    ld b, l                                       ; $681f: $45
    or e                                          ; $6820: $b3
    sbc $38                                       ; $6821: $de $38
    nop                                           ; $6823: $00
    rst $20                                       ; $6824: $e7
    xor [hl]                                      ; $6825: $ae
    ld a, [hl]                                    ; $6826: $7e
    add hl, de                                    ; $6827: $19
    cpl                                           ; $6828: $2f
    cp $4e                                        ; $6829: $fe $4e
    rst $28                                       ; $682b: $ef
    call nc, Call_06d_6352                        ; $682c: $d4 $52 $63

jr_06d_682f:
    ld [de], a                                    ; $682f: $12
    ld b, c                                       ; $6830: $41
    or a                                          ; $6831: $b7
    ld e, [hl]                                    ; $6832: $5e
    or a                                          ; $6833: $b7
    ld sp, hl                                     ; $6834: $f9
    db $e3                                        ; $6835: $e3
    rst $08                                       ; $6836: $cf
    db $dd                                        ; $6837: $dd
    ld sp, $1647                                  ; $6838: $31 $47 $16
    pop de                                        ; $683b: $d1
    add d                                         ; $683c: $82
    or l                                          ; $683d: $b5
    sbc [hl]                                      ; $683e: $9e
    db $dd                                        ; $683f: $dd
    ld a, c                                       ; $6840: $79
    ld c, d                                       ; $6841: $4a
    adc [hl]                                      ; $6842: $8e
    ld e, d                                       ; $6843: $5a
    rst $08                                       ; $6844: $cf
    ld c, d                                       ; $6845: $4a
    ld a, [de]                                    ; $6846: $1a
    or [hl]                                       ; $6847: $b6
    inc bc                                        ; $6848: $03
    xor a                                         ; $6849: $af
    rst $10                                       ; $684a: $d7
    ld [hl], c                                    ; $684b: $71
    rla                                           ; $684c: $17
    adc a                                         ; $684d: $8f
    push af                                       ; $684e: $f5
    ccf                                           ; $684f: $3f
    ld a, [c]                                     ; $6850: $f2
    xor h                                         ; $6851: $ac
    jp z, $3422                                   ; $6852: $ca $22 $34

Jump_06d_6855:
    xor d                                         ; $6855: $aa
    jp nz, Jump_06d_4aca                          ; $6856: $c2 $ca $4a

    add h                                         ; $6859: $84
    ld sp, $f059                                  ; $685a: $31 $59 $f0
    inc de                                        ; $685d: $13
    ei                                            ; $685e: $fb
    ld [$157a], sp                                ; $685f: $08 $7a $15
    ld h, [hl]                                    ; $6862: $66
    ccf                                           ; $6863: $3f
    ld l, l                                       ; $6864: $6d
    dec a                                         ; $6865: $3d
    ld c, a                                       ; $6866: $4f
    call $d3bf                                    ; $6867: $cd $bf $d3
    db $d3                                        ; $686a: $d3
    ld l, b                                       ; $686b: $68
    add h                                         ; $686c: $84
    dec l                                         ; $686d: $2d
    call nc, Call_06d_7fb3                        ; $686e: $d4 $b3 $7f
    ld e, d                                       ; $6871: $5a
    inc sp                                        ; $6872: $33
    or e                                          ; $6873: $b3
    jr c, jr_06d_682f                             ; $6874: $38 $b9

    xor [hl]                                      ; $6876: $ae
    inc l                                         ; $6877: $2c
    rst $08                                       ; $6878: $cf
    or d                                          ; $6879: $b2
    ld e, a                                       ; $687a: $5f
    db $d3                                        ; $687b: $d3
    adc h                                         ; $687c: $8c
    adc d                                         ; $687d: $8a
    or $31                                        ; $687e: $f6 $31
    ld l, d                                       ; $6880: $6a
    call nz, Call_000_0076                        ; $6881: $c4 $76 $00
    ld d, a                                       ; $6884: $57
    sbc l                                         ; $6885: $9d
    inc de                                        ; $6886: $13
    inc [hl]                                      ; $6887: $34
    ld h, d                                       ; $6888: $62
    rst $38                                       ; $6889: $ff

Jump_06d_688a:
    di                                            ; $688a: $f3
    halt                                          ; $688b: $76
    sub l                                         ; $688c: $95

jr_06d_688d:
    rst $18                                       ; $688d: $df
    and e                                         ; $688e: $a3
    ld c, e                                       ; $688f: $4b
    ld [hl], l                                    ; $6890: $75
    adc d                                         ; $6891: $8a
    jp z, $8a59                                   ; $6892: $ca $59 $8a

    jp c, Jump_06d_42dc                           ; $6895: $da $dc $42

    inc bc                                        ; $6898: $03
    adc c                                         ; $6899: $89
    ld h, l                                       ; $689a: $65
    ld [$557f], a                                 ; $689b: $ea $7f $55
    adc [hl]                                      ; $689e: $8e
    add hl, de                                    ; $689f: $19
    or e                                          ; $68a0: $b3
    sbc a                                         ; $68a1: $9f
    add [hl]                                      ; $68a2: $86
    jr nc, jr_06d_68f9                            ; $68a3: $30 $54

    inc [hl]                                      ; $68a5: $34
    add [hl]                                      ; $68a6: $86
    ld a, d                                       ; $68a7: $7a
    inc b                                         ; $68a8: $04
    jp nc, Jump_06d_7ada                          ; $68a9: $d2 $da $7a

    cp [hl]                                       ; $68ac: $be
    or e                                          ; $68ad: $b3
    rla                                           ; $68ae: $17
    xor d                                         ; $68af: $aa
    ld c, h                                       ; $68b0: $4c
    ld l, a                                       ; $68b1: $6f
    inc e                                         ; $68b2: $1c
    rra                                           ; $68b3: $1f
    db $fd                                        ; $68b4: $fd
    adc [hl]                                      ; $68b5: $8e
    and b                                         ; $68b6: $a0
    call c, Call_000_0bd9                         ; $68b7: $dc $d9 $0b
    ld c, l                                       ; $68ba: $4d
    xor [hl]                                      ; $68bb: $ae
    inc [hl]                                      ; $68bc: $34
    sbc e                                         ; $68bd: $9b
    cp d                                          ; $68be: $ba
    ldh [$d3], a                                  ; $68bf: $e0 $d3
    sub d                                         ; $68c1: $92
    db $d3                                        ; $68c2: $d3
    ld b, b                                       ; $68c3: $40
    ld h, d                                       ; $68c4: $62
    pop de                                        ; $68c5: $d1
    ret nc                                        ; $68c6: $d0

    ld b, [hl]                                    ; $68c7: $46
    ld b, h                                       ; $68c8: $44
    push de                                       ; $68c9: $d5
    ld sp, $9af4                                  ; $68ca: $31 $f4 $9a
    ld a, h                                       ; $68cd: $7c
    ld [hl], a                                    ; $68ce: $77
    ld [hl-], a                                   ; $68cf: $32
    ld c, [hl]                                    ; $68d0: $4e
    ret c                                         ; $68d1: $d8

    rst $30                                       ; $68d2: $f7
    ld a, [hl-]                                   ; $68d3: $3a
    sub $21                                       ; $68d4: $d6 $21
    ei                                            ; $68d6: $fb
    ld c, c                                       ; $68d7: $49
    sub l                                         ; $68d8: $95
    ld [$3263], sp                                ; $68d9: $08 $63 $32
    ret c                                         ; $68dc: $d8

    halt                                          ; $68dd: $76
    nop                                           ; $68de: $00
    ld l, a                                       ; $68df: $6f
    adc l                                         ; $68e0: $8d
    inc de                                        ; $68e1: $13
    ld d, h                                       ; $68e2: $54
    jr c, jr_06d_688d                             ; $68e3: $38 $a8

    adc [hl]                                      ; $68e5: $8e
    ld b, l                                       ; $68e6: $45
    ld l, [hl]                                    ; $68e7: $6e
    dec a                                         ; $68e8: $3d
    ld c, a                                       ; $68e9: $4f
    dec a                                         ; $68ea: $3d
    adc l                                         ; $68eb: $8d
    ld b, [hl]                                    ; $68ec: $46
    ret c                                         ; $68ed: $d8

    ld b, d                                       ; $68ee: $42
    dec a                                         ; $68ef: $3d
    adc e                                         ; $68f0: $8b
    rst $28                                       ; $68f1: $ef
    sub e                                         ; $68f2: $93
    rrca                                          ; $68f3: $0f
    ld a, [hl]                                    ; $68f4: $7e
    ld h, d                                       ; $68f5: $62
    rra                                           ; $68f6: $1f

Call_06d_68f7:
    ld b, c                                       ; $68f7: $41
    dec e                                         ; $68f8: $1d

jr_06d_68f9:
    or h                                          ; $68f9: $b4
    call nc, $a938                                ; $68fa: $d4 $38 $a9
    inc hl                                        ; $68fd: $23
    ld d, e                                       ; $68fe: $53
    ld [$468f], sp                                ; $68ff: $08 $8f $46
    and $88                                       ; $6902: $e6 $88
    db $ec                                        ; $6904: $ec
    and a                                         ; $6905: $a7
    ld a, [hl]                                    ; $6906: $7e
    inc e                                         ; $6907: $1c
    xor h                                         ; $6908: $ac
    ret                                           ; $6909: $c9


    dec [hl]                                      ; $690a: $35
    sbc h                                         ; $690b: $9c
    inc h                                         ; $690c: $24
    and a                                         ; $690d: $a7
    sbc [hl]                                      ; $690e: $9e
    add l                                         ; $690f: $85
    reti                                          ; $6910: $d9


    call c, $72ae                                 ; $6911: $dc $ae $72
    rst $38                                       ; $6914: $ff
    db $e3                                        ; $6915: $e3
    ld b, h                                       ; $6916: $44
    or a                                          ; $6917: $b7
    dec e                                         ; $6918: $1d
    ld l, a                                       ; $6919: $6f
    di                                            ; $691a: $f3
    rst $08                                       ; $691b: $cf
    ld a, [hl+]                                   ; $691c: $2a
    xor l                                         ; $691d: $ad
    call c, $e979                                 ; $691e: $dc $79 $e9
    nop                                           ; $6921: $00
    rst $10                                       ; $6922: $d7
    ld l, l                                       ; $6923: $6d
    ld [hl], d                                    ; $6924: $72
    ld e, h                                       ; $6925: $5c
    ld e, c                                       ; $6926: $59
    inc a                                         ; $6927: $3c
    add d                                         ; $6928: $82
    ld e, [hl]                                    ; $6929: $5e

Jump_06d_692a:
    add l                                         ; $692a: $85
    reti                                          ; $692b: $d9


    ld c, a                                       ; $692c: $4f
    add d                                         ; $692d: $82
    cp $47                                        ; $692e: $fe $47
    sbc [hl]                                      ; $6930: $9e
    sub l                                         ; $6931: $95
    ld a, [de]                                    ; $6932: $1a
    add e                                         ; $6933: $83
    sbc e                                         ; $6934: $9b
    rst $20                                       ; $6935: $e7
    cp a                                          ; $6936: $bf
    or d                                          ; $6937: $b2
    ld a, b                                       ; $6938: $78
    ld c, d                                       ; $6939: $4a
    ld d, a                                       ; $693a: $57
    pop de                                        ; $693b: $d1
    db $ec                                        ; $693c: $ec
    ld h, d                                       ; $693d: $62
    ld l, h                                       ; $693e: $6c
    rlca                                          ; $693f: $07
    rst $20                                       ; $6940: $e7
    ld a, [de]                                    ; $6941: $1a
    reti                                          ; $6942: $d9


    dec bc                                        ; $6943: $0b
    sbc l                                         ; $6944: $9d
    sbc $9f                                       ; $6945: $de $9f
    sub a                                         ; $6947: $97
    sbc h                                         ; $6948: $9c
    jp z, $2ee1                                   ; $6949: $ca $e1 $2e

    sbc [hl]                                      ; $694c: $9e
    jp c, $9adc                                   ; $694d: $da $dc $9a

    ld b, $12                                     ; $6950: $06 $12
    dec hl                                        ; $6952: $2b
    daa                                           ; $6953: $27
    dec hl                                        ; $6954: $2b
    ld c, a                                       ; $6955: $4f
    ld l, c                                       ; $6956: $69
    sub l                                         ; $6957: $95
    ld e, c                                       ; $6958: $59

Call_06d_6959:
    ld c, [hl]                                    ; $6959: $4e
    adc [hl]                                      ; $695a: $8e
    ld b, $db                                     ; $695b: $06 $db
    ld c, $6f                                     ; $695d: $0e $6f
    adc l                                         ; $695f: $8d
    ld l, e                                       ; $6960: $6b

Call_06d_6961:
    inc [hl]                                      ; $6961: $34
    ld [$8bb1], sp                                ; $6962: $08 $b1 $8b

jr_06d_6965:
    ld b, a                                       ; $6965: $47
    ret nc                                        ; $6966: $d0

    xor e                                         ; $6967: $ab
    jr nc, jr_06d_6965                            ; $6968: $30 $fb

    jp hl                                         ; $696a: $e9


    ld d, d                                       ; $696b: $52
    rst $08                                       ; $696c: $cf
    ld d, e                                       ; $696d: $53
    xor c                                         ; $696e: $a9
    ld [hl], c                                    ; $696f: $71
    ld d, d                                       ; $6970: $52
    push hl                                       ; $6971: $e5
    ld h, h                                       ; $6972: $64
    ld c, c                                       ; $6973: $49
    rst $08                                       ; $6974: $cf
    db $ec                                        ; $6975: $ec
    and a                                         ; $6976: $a7
    rst $08                                       ; $6977: $cf
    inc a                                         ; $6978: $3c
    rst $18                                       ; $6979: $df
    ld [hl], b                                    ; $697a: $70
    ld [hl], d                                    ; $697b: $72
    inc e                                         ; $697c: $1c
    ld l, l                                       ; $697d: $6d
    ld [$d143], sp                                ; $697e: $08 $43 $d1
    ld [hl], a                                    ; $6981: $77
    ld l, l                                       ; $6982: $6d
    adc c                                         ; $6983: $89
    ld d, [hl]                                    ; $6984: $56
    cp [hl]                                       ; $6985: $be
    rst $00                                       ; $6986: $c7
    ld d, $04                                     ; $6987: $16 $04
    ld h, l                                       ; $6989: $65
    rst $38                                       ; $698a: $ff
    inc hl                                        ; $698b: $23
    rst $08                                       ; $698c: $cf
    ld a, [$2ac7]                                 ; $698d: $fa $c7 $2a
    or e                                          ; $6990: $b3
    sbc h                                         ; $6991: $9c
    inc e                                         ; $6992: $1c
    dec c                                         ; $6993: $0d
    sub $e4                                       ; $6994: $d6 $e4
    sbc d                                         ; $6996: $9a
    rst $20                                       ; $6997: $e7
    ccf                                           ; $6998: $3f
    dec d                                         ; $6999: $15
    ld [hl], c                                    ; $699a: $71
    push bc                                       ; $699b: $c5
    ld [hl], l                                    ; $699c: $75
    ld [hl], c                                    ; $699d: $71
    ld c, d                                       ; $699e: $4a
    ld d, a                                       ; $699f: $57
    ld h, l                                       ; $69a0: $65
    ld [$febe], a                                 ; $69a1: $ea $be $fe
    ld [hl], $f5                                  ; $69a4: $36 $f5
    xor h                                         ; $69a6: $ac
    adc b                                         ; $69a7: $88
    dec hl                                        ; $69a8: $2b
    xor [hl]                                      ; $69a9: $ae
    adc e                                         ; $69aa: $8b
    and e                                         ; $69ab: $a3
    db $db                                        ; $69ac: $db

Call_06d_69ad:
    ld bc, $4737                                  ; $69ad: $01 $37 $47
    sbc [hl]                                      ; $69b0: $9e
    sub l                                         ; $69b1: $95
    ld a, [de]                                    ; $69b2: $1a
    add e                                         ; $69b3: $83
    dec hl                                        ; $69b4: $2b
    rst $00                                       ; $69b5: $c7
    ld [hl], l                                    ; $69b6: $75
    ld a, [hl+]                                   ; $69b7: $2a
    add a                                         ; $69b8: $87
    cp e                                          ; $69b9: $bb
    ld a, b                                       ; $69ba: $78
    inc b                                         ; $69bb: $04
    cp l                                          ; $69bc: $bd
    ld a, [bc]                                    ; $69bd: $0a
    or e                                          ; $69be: $b3
    sbc a                                         ; $69bf: $9f
    sbc $38                                       ; $69c0: $de $38
    nop                                           ; $69c2: $00
    rra                                           ; $69c3: $1f
    db $fd                                        ; $69c4: $fd
    adc [hl]                                      ; $69c5: $8e
    and b                                         ; $69c6: $a0
    ld c, h                                       ; $69c7: $4c
    call Call_06d_53bf                            ; $69c8: $cd $bf $53
    add hl, sp                                    ; $69cb: $39
    ld e, c                                       ; $69cc: $59
    ld a, c                                       ; $69cd: $79
    ld c, d                                       ; $69ce: $4a
    xor e                                         ; $69cf: $ab
    call z, $7272                                 ; $69d0: $cc $72 $72
    or h                                          ; $69d3: $b4
    ldh [$27], a                                  ; $69d4: $e0 $27
    or $d9                                        ; $69d6: $f6 $d9
    ld c, $6f                                     ; $69d8: $0e $6f
    pop de                                        ; $69da: $d1
    add hl, bc                                    ; $69db: $09
    ld a, [hl+]                                   ; $69dc: $2a
    daa                                           ; $69dd: $27
    rst $00                                       ; $69de: $c7
    sub l                                         ; $69df: $95
    inc de                                        ; $69e0: $13
    dec de                                        ; $69e1: $1b
    sbc c                                         ; $69e2: $99
    inc hl                                        ; $69e3: $23
    or d                                          ; $69e4: $b2
    sbc a                                         ; $69e5: $9f
    xor l                                         ; $69e6: $ad
    rst $20                                       ; $69e7: $e7
    xor c                                         ; $69e8: $a9
    ld sp, hl                                     ; $69e9: $f9
    ld [hl], a                                    ; $69ea: $77
    ld a, [de]                                    ; $69eb: $1a
    ld c, b                                       ; $69ec: $48
    or h                                          ; $69ed: $b4
    ld l, c                                       ; $69ee: $69
    jr nz, @-$4d                                  ; $69ef: $20 $b1

    call c, Call_06d_6959                         ; $69f1: $dc $59 $69
    adc e                                         ; $69f4: $8b
    ld c, l                                       ; $69f5: $4d
    xor [hl]                                      ; $69f6: $ae
    dec hl                                        ; $69f7: $2b
    res 6, e                                      ; $69f8: $cb $b3
    db $ec                                        ; $69fa: $ec
    rst $10                                       ; $69fb: $d7
    inc [hl]                                      ; $69fc: $34
    and e                                         ; $69fd: $a3
    ld d, h                                       ; $69fe: $54
    add hl, sp                                    ; $69ff: $39
    dec sp                                        ; $6a00: $3b
    ld l, $1d                                     ; $6a01: $2e $1d
    ld d, a                                       ; $6a03: $57
    ld h, $2b                                     ; $6a04: $26 $2b
    ld c, a                                       ; $6a06: $4f
    ld l, c                                       ; $6a07: $69
    and l                                         ; $6a08: $a5
    ld [hl-], a                                   ; $6a09: $32
    set 1, c                                      ; $6a0a: $cb $c9
    pop de                                        ; $6a0c: $d1
    ld h, b                                       ; $6a0d: $60
    sbc l                                         ; $6a0e: $9d
    jp z, $2ee1                                   ; $6a0f: $ca $e1 $2e

    ld e, $41                                     ; $6a12: $1e $41
    xor a                                         ; $6a14: $af
    jp nz, $a7ec                                  ; $6a15: $c2 $ec $a7

    scf                                           ; $6a18: $37
    ld c, $1f                                     ; $6a19: $0e $1f
    db $fd                                        ; $6a1b: $fd
    adc [hl]                                      ; $6a1c: $8e
    and b                                         ; $6a1d: $a0
    call c, $3959                                 ; $6a1e: $dc $59 $39
    add hl, sp                                    ; $6a21: $39
    xor [hl]                                      ; $6a22: $ae
    sbc h                                         ; $6a23: $9c
    ret nc                                        ; $6a24: $d0

    sub b                                         ; $6a25: $90
    and $97                                       ; $6a26: $e6 $97
    sbc a                                         ; $6a28: $9f
    jp nc, $fb15                                  ; $6a29: $d2 $15 $fb

    add hl, hl                                    ; $6a2c: $29
    cp c                                          ; $6a2d: $b9
    xor $e9                                       ; $6a2e: $ee $e9
    inc b                                         ; $6a30: $04
    db $db                                        ; $6a31: $db
    ld c, $37                                     ; $6a32: $0e $37
    ld b, a                                       ; $6a34: $47
    sbc [hl]                                      ; $6a35: $9e
    dec [hl]                                      ; $6a36: $35
    inc [hl]                                      ; $6a37: $34
    jp z, $28a5                                   ; $6a38: $ca $a5 $28

    or e                                          ; $6a3b: $b3
    sbc h                                         ; $6a3c: $9c
    inc e                                         ; $6a3d: $1c
    dec l                                         ; $6a3e: $2d
    ld hl, sp-$77                                 ; $6a3f: $f8 $89
    ld a, l                                       ; $6a41: $7d
    or [hl]                                       ; $6a42: $b6
    ld e, [hl]                                    ; $6a43: $5e
    rra                                           ; $6a44: $1f
    xor e                                         ; $6a45: $ab
    ld [$31ff], sp                                ; $6a46: $08 $ff $31
    ld b, c                                       ; $6a49: $41
    di                                            ; $6a4a: $f3
    rst $28                                       ; $6a4b: $ef
    call nc, $9eb1                                ; $6a4c: $d4 $b1 $9e
    adc d                                         ; $6a4f: $8a
    ld [hl], b                                    ; $6a50: $70
    ld [hl], d                                    ; $6a51: $72
    ld h, h                                       ; $6a52: $64
    di                                            ; $6a53: $f3

Jump_06d_6a54:
    db $fc                                        ; $6a54: $fc
    pop hl                                        ; $6a55: $e1
    sbc b                                         ; $6a56: $98
    inc hl                                        ; $6a57: $23
    cpl                                           ; $6a58: $2f
    dec e                                         ; $6a59: $1d

Call_06d_6a5a:
    scf                                           ; $6a5a: $37
    ld b, a                                       ; $6a5b: $47
    sbc [hl]                                      ; $6a5c: $9e
    dec [hl]                                      ; $6a5d: $35
    rst $38                                       ; $6a5e: $ff
    ld c, [hl]                                    ; $6a5f: $4e
    push hl                                       ; $6a60: $e5
    ld h, h                                       ; $6a61: $64
    push hl                                       ; $6a62: $e5
    add hl, hl                                    ; $6a63: $29
    xor l                                         ; $6a64: $ad
    ld d, h                                       ; $6a65: $54
    add hl, sp                                    ; $6a66: $39
    ld l, $dc                                     ; $6a67: $2e $dc
    add hl, de                                    ; $6a69: $19
    ld h, c                                       ; $6a6a: $61
    push de                                       ; $6a6b: $d5
    add h                                         ; $6a6c: $84
    cp d                                          ; $6a6d: $ba
    and l                                         ; $6a6e: $a5
    ld a, [$5b3b]                                 ; $6a6f: $fa $3b $5b
    rst $08                                       ; $6a72: $cf
    ld d, e                                       ; $6a73: $53
    rst $38                                       ; $6a74: $ff
    sub e                                         ; $6a75: $93

jr_06d_6a76:
    ld [$d3e9], a                                 ; $6a76: $ea $e9 $d3
    db $ed                                        ; $6a79: $ed
    ld h, l                                       ; $6a7a: $65
    ld a, l                                       ; $6a7b: $7d
    cp d                                          ; $6a7c: $ba

jr_06d_6a7d:
    pop hl                                        ; $6a7d: $e1
    db $e4                                        ; $6a7e: $e4
    jr c, jr_06d_6a76                             ; $6a7f: $38 $f5

    add sp, -$45                                  ; $6a81: $e8 $bb
    or [hl]                                       ; $6a83: $b6
    ld b, h                                       ; $6a84: $44
    dec hl                                        ; $6a85: $2b
    rst $18                                       ; $6a86: $df
    ld h, e                                       ; $6a87: $63
    dec bc                                        ; $6a88: $0b
    dec c                                         ; $6a89: $0d
    rst $00                                       ; $6a8a: $c7
    cp d                                          ; $6a8b: $ba
    ld d, h                                       ; $6a8c: $54
    ld h, a                                       ; $6a8d: $67
    dec sp                                        ; $6a8e: $3b
    nop                                           ; $6a8f: $00
    db $db                                        ; $6a90: $db
    or [hl]                                       ; $6a91: $b6
    dec d                                         ; $6a92: $15
    push hl                                       ; $6a93: $e5
    xor l                                         ; $6a94: $ad
    ld [hl], b                                    ; $6a95: $70
    rra                                           ; $6a96: $1f
    db $fd                                        ; $6a97: $fd
    sbc l                                         ; $6a98: $9d
    ld d, d                                       ; $6a99: $52
    ld c, [hl]                                    ; $6a9a: $4e
    cp [hl]                                       ; $6a9b: $be
    rst $08                                       ; $6a9c: $cf
    dec l                                         ; $6a9d: $2d
    adc c                                         ; $6a9e: $89
    ld a, d                                       ; $6a9f: $7a
    ld l, b                                       ; $6aa0: $68
    add l                                         ; $6aa1: $85
    or e                                          ; $6aa2: $b3
    adc e                                         ; $6aa3: $8b
    and c                                         ; $6aa4: $a1
    push af                                       ; $6aa5: $f5
    ld d, e                                       ; $6aa6: $53
    cp l                                          ; $6aa7: $bd
    jr nz, jr_06d_6a7d                            ; $6aa8: $20 $d3

    ld a, $7d                                     ; $6aaa: $3e $7d
    ld a, [$42b9]                                 ; $6aac: $fa $b9 $42
    ld c, [hl]                                    ; $6aaf: $4e
    adc [hl]                                      ; $6ab0: $8e
    sub h                                         ; $6ab1: $94
    ld c, h                                       ; $6ab2: $4c
    db $dd                                        ; $6ab3: $dd
    rst $20                                       ; $6ab4: $e7
    inc [hl]                                      ; $6ab5: $34
    push af                                       ; $6ab6: $f5
    inc c                                         ; $6ab7: $0c
    ld h, a                                       ; $6ab8: $67
    ld l, c                                       ; $6ab9: $69
    dec a                                         ; $6aba: $3d
    ld a, [$ff11]                                 ; $6abb: $fa $11 $ff
    ld d, b                                       ; $6abe: $50
    adc c                                         ; $6abf: $89
    ld a, d                                       ; $6ac0: $7a
    or $06                                        ; $6ac1: $f6 $06
    add h                                         ; $6ac3: $84
    cp a                                          ; $6ac4: $bf
    ld d, e                                       ; $6ac5: $53
    rst $08                                       ; $6ac6: $cf
    ld a, $fd                                     ; $6ac7: $3e $fd
    db $ec                                        ; $6ac9: $ec
    adc e                                         ; $6aca: $8b
    cpl                                           ; $6acb: $2f
    ld [hl], l                                    ; $6acc: $75
    db $db                                        ; $6acd: $db
    or [hl]                                       ; $6ace: $b6
    inc bc                                        ; $6acf: $03
    ld d, a                                       ; $6ad0: $57
    ld h, c                                       ; $6ad1: $61
    or $93                                        ; $6ad2: $f6 $93
    and b                                         ; $6ad4: $a0
    rst $38                                       ; $6ad5: $ff
    sub c                                         ; $6ad6: $91
    ld h, a                                       ; $6ad7: $67
    ld [hl], l                                    ; $6ad8: $75
    db $ec                                        ; $6ad9: $ec
    jp z, Jump_06d_6691                           ; $6ada: $ca $91 $66

    db $e3                                        ; $6add: $e3
    ld b, d                                       ; $6ade: $42
    and [hl]                                      ; $6adf: $a6
    ld c, e                                       ; $6ae0: $4b
    cp l                                          ; $6ae1: $bd
    ld b, $2d                                     ; $6ae2: $06 $2d
    ld d, e                                       ; $6ae4: $53
    di                                            ; $6ae5: $f3
    rst $28                                       ; $6ae6: $ef
    ld [hl], h                                    ; $6ae7: $74
    add hl, de                                    ; $6ae8: $19
    ld d, a                                       ; $6ae9: $57
    dec a                                         ; $6aea: $3d
    ld a, l                                       ; $6aeb: $7d
    cp d                                          ; $6aec: $ba
    cp l                                          ; $6aed: $bd

jr_06d_6aee:
    xor h                                         ; $6aee: $ac
    sbc c                                         ; $6aef: $99
    ld e, c                                       ; $6af0: $59
    sbc h                                         ; $6af1: $9c
    ld e, h                                       ; $6af2: $5c
    jp Jump_06d_71c9                              ; $6af3: $c3 $c9 $71


    jp z, $d15b                                   ; $6af6: $ca $5b $d1

    ld d, b                                       ; $6af9: $50
    rst $08                                       ; $6afa: $cf
    ld l, d                                       ; $6afb: $6a
    ld b, d                                       ; $6afc: $42
    dec h                                         ; $6afd: $25
    inc d                                         ; $6afe: $14
    add d                                         ; $6aff: $82
    ld [hl+], a                                   ; $6b00: $22
    ld h, h                                       ; $6b01: $64
    add [hl]                                      ; $6b02: $86
    halt                                          ; $6b03: $76
    or h                                          ; $6b04: $b4
    rst $08                                       ; $6b05: $cf
    rst $10                                       ; $6b06: $d7
    or e                                          ; $6b07: $b3
    ld c, d                                       ; $6b08: $4a
    rla                                           ; $6b09: $17
    ld a, [de]                                    ; $6b0a: $1a
    dec de                                        ; $6b0b: $1b
    ld [hl], d                                    ; $6b0c: $72
    ld b, a                                       ; $6b0d: $47
    ld d, a                                       ; $6b0e: $57
    adc [hl]                                      ; $6b0f: $8e

Call_06d_6b10:
    inc [hl]                                      ; $6b10: $34
    ld c, e                                       ; $6b11: $4b
    pop hl                                        ; $6b12: $e1
    push bc                                       ; $6b13: $c5
    rst $18                                       ; $6b14: $df
    reti                                          ; $6b15: $d9


    ld c, $af                                     ; $6b16: $0e $af
    ld d, a                                       ; $6b18: $57
    jp hl                                         ; $6b19: $e9


    ld b, d                                       ; $6b1a: $42
    ld h, e                                       ; $6b1b: $63
    sub e                                         ; $6b1c: $93
    ld b, e                                       ; $6b1d: $43
    push bc                                       ; $6b1e: $c5
    sub e                                         ; $6b1f: $93
    dec c                                         ; $6b20: $0d
    adc l                                         ; $6b21: $8d
    ld h, a                                       ; $6b22: $67
    ld c, a                                       ; $6b23: $4f
    db $ec                                        ; $6b24: $ec
    ld d, e                                       ; $6b25: $53
    cp d                                          ; $6b26: $ba
    cp d                                          ; $6b27: $ba
    sub l                                         ; $6b28: $95
    push bc                                       ; $6b29: $c5
    xor b                                         ; $6b2a: $a8
    call c, $caa1                                 ; $6b2b: $dc $a1 $ca
    xor l                                         ; $6b2e: $ad
    ld l, a                                       ; $6b2f: $6f
    ld d, e                                       ; $6b30: $53
    ld h, l                                       ; $6b31: $65
    jp c, Jump_000_3643                           ; $6b32: $da $43 $36

    db $e4                                        ; $6b35: $e4
    ld a, $da                                     ; $6b36: $3e $da
    rst $20                                       ; $6b38: $e7
    dec de                                        ; $6b39: $1b
    ld c, [hl]                                    ; $6b3a: $4e
    adc [hl]                                      ; $6b3b: $8e
    and e                                         ; $6b3c: $a3
    ld b, l                                       ; $6b3d: $45
    dec e                                         ; $6b3e: $1d
    di                                            ; $6b3f: $f3
    ld l, b                                       ; $6b40: $68
    ld b, e                                       ; $6b41: $43
    jr jr_06d_6aee                                ; $6b42: $18 $aa

    add hl, bc                                    ; $6b44: $09
    sub l                                         ; $6b45: $95
    ld d, b                                       ; $6b46: $50
    inc [hl]                                      ; $6b47: $34
    inc e                                         ; $6b48: $1c
    db $eb                                        ; $6b49: $eb
    jp z, Jump_06d_6691                           ; $6b4a: $ca $91 $66

    db $e3                                        ; $6b4d: $e3
    ld b, d                                       ; $6b4e: $42
    ld e, d                                       ; $6b4f: $5a
    db $dd                                        ; $6b50: $dd
    jp z, Jump_000_1462                           ; $6b51: $ca $62 $14

    ld l, c                                       ; $6b54: $69
    rst $00                                       ; $6b55: $c7
    halt                                          ; $6b56: $76
    nop                                           ; $6b57: $00
    rst $20                                       ; $6b58: $e7
    xor c                                         ; $6b59: $a9
    rst $38                                       ; $6b5a: $ff
    push de                                       ; $6b5b: $d5
    db $e4                                        ; $6b5c: $e4
    ld a, [hl+]                                   ; $6b5d: $2a
    add a                                         ; $6b5e: $87
    cp e                                          ; $6b5f: $bb
    ld a, b                                       ; $6b60: $78
    xor d                                         ; $6b61: $aa
    ld e, b                                       ; $6b62: $58
    reti                                          ; $6b63: $d9


    ld c, a                                       ; $6b64: $4f
    ld b, e                                       ; $6b65: $43
    xor $68                                       ; $6b66: $ee $68
    jr c, @+$18                                   ; $6b68: $38 $16

    ld d, c                                       ; $6b6a: $51
    adc a                                         ; $6b6b: $8f
    adc d                                         ; $6b6c: $8a
    adc h                                         ; $6b6d: $8c
    add hl, sp                                    ; $6b6e: $39
    ld d, d                                       ; $6b6f: $52
    ld d, b                                       ; $6b70: $50
    rlca                                          ; $6b71: $07
    dec l                                         ; $6b72: $2d
    and h                                         ; $6b73: $a4
    ld a, b                                       ; $6b74: $78
    ld a, [de]                                    ; $6b75: $1a
    ld c, b                                       ; $6b76: $48
    inc l                                         ; $6b77: $2c
    ld [hl], a                                    ; $6b78: $77
    sub [hl]                                      ; $6b79: $96
    ld a, [de]                                    ; $6b7a: $1a
    pop af                                        ; $6b7b: $f1
    ld b, a                                       ; $6b7c: $47
    dec e                                         ; $6b7d: $1d
    sub [hl]                                      ; $6b7e: $96
    ld [hl], $84                                  ; $6b7f: $36 $84
    and c                                         ; $6b81: $a1
    ld [hl], $8a                                  ; $6b82: $36 $8a
    ld a, [$2069]                                 ; $6b84: $fa $69 $20
    or c                                          ; $6b87: $b1
    ld hl, $b50c                                  ; $6b88: $21 $0c $b5
    cp c                                          ; $6b8b: $b9

Jump_06d_6b8c:
    dec [hl]                                      ; $6b8c: $35
    db $db                                        ; $6b8d: $db
    ld bc, $fd1f                                  ; $6b8e: $01 $1f $fd
    adc [hl]                                      ; $6b91: $8e
    and b                                         ; $6b92: $a0
    ld c, $5a                                     ; $6b93: $0e $5a
    and [hl]                                      ; $6b95: $a6
    ld a, [de]                                    ; $6b96: $1a
    or c                                          ; $6b97: $b1
    dec sp                                        ; $6b98: $3b
    and $c8                                       ; $6b99: $e6 $c8
    and $df                                       ; $6b9b: $e6 $df
    add hl, hl                                    ; $6b9d: $29
    dec [hl]                                      ; $6b9e: $35
    ld [c], a                                     ; $6b9f: $e2
    adc a                                         ; $6ba0: $8f
    add [hl]                                      ; $6ba1: $86
    ld b, [hl]                                    ; $6ba2: $46
    adc l                                         ; $6ba3: $8d
    ret z                                         ; $6ba4: $c8

    ld a, [hl]                                    ; $6ba5: $7e
    adc d                                         ; $6ba6: $8a
    ret z                                         ; $6ba7: $c8

    ld a, h                                       ; $6ba8: $7c
    pop af                                        ; $6ba9: $f1
    ld [hl], a                                    ; $6baa: $77
    or [hl]                                       ; $6bab: $b6
    inc bc                                        ; $6bac: $03
    rra                                           ; $6bad: $1f
    db $fd                                        ; $6bae: $fd
    adc $d6                                       ; $6baf: $ce $d6
    ld l, e                                       ; $6bb1: $6b
    ret nc                                        ; $6bb2: $d0

    ld a, [hl+]                                   ; $6bb3: $2a
    bit 3, e                                      ; $6bb4: $cb $5b
    ld c, e                                       ; $6bb6: $4b
    inc hl                                        ; $6bb7: $23
    sbc e                                         ; $6bb8: $9b
    ld e, h                                       ; $6bb9: $5c
    push hl                                       ; $6bba: $e5
    ld [hl], b                                    ; $6bbb: $70
    rla                                           ; $6bbc: $17
    ld c, a                                       ; $6bbd: $4f
    inc sp                                        ; $6bbe: $33
    ld c, d                                       ; $6bbf: $4a
    sub l                                         ; $6bc0: $95
    or e                                          ; $6bc1: $b3
    ld b, e                                       ; $6bc2: $43
    ld d, b                                       ; $6bc3: $50
    and [hl]                                      ; $6bc4: $a6
    ld [hl+], a                                   ; $6bc5: $22
    inc e                                         ; $6bc6: $1c
    adc l                                         ; $6bc7: $8d
    db $d3                                        ; $6bc8: $d3
    ld b, b                                       ; $6bc9: $40
    ld h, d                                       ; $6bca: $62
    cp c                                          ; $6bcb: $b9
    or e                                          ; $6bcc: $b3
    call nc, $dc18                                ; $6bcd: $d4 $18 $dc
    ret z                                         ; $6bd0: $c8

    inc e                                         ; $6bd1: $1c
    sub c                                         ; $6bd2: $91
    db $fd                                        ; $6bd3: $fd
    call nc, $e553                                ; $6bd4: $d4 $53 $e5
    ld [$596d], sp                                ; $6bd7: $08 $6d $59
    push hl                                       ; $6bda: $e5
    cp b                                          ; $6bdb: $b8
    xor c                                         ; $6bdc: $a9
    ld h, d                                       ; $6bdd: $62
    reti                                          ; $6bde: $d9


    halt                                          ; $6bdf: $76
    nop                                           ; $6be0: $00
    rst $20                                       ; $6be1: $e7
    xor c                                         ; $6be2: $a9
    add hl, sp                                    ; $6be3: $39
    ld h, l                                       ; $6be4: $65
    adc c                                         ; $6be5: $89
    cp $57                                        ; $6be6: $fe $57
    sub e                                         ; $6be8: $93
    xor e                                         ; $6be9: $ab
    inc e                                         ; $6bea: $1c
    xor $e2                                       ; $6beb: $ee $e2
    xor c                                         ; $6bed: $a9
    call $d9ad                                    ; $6bee: $cd $ad $d9
    ld a, d                                       ; $6bf1: $7a
    ld e, [hl]                                    ; $6bf2: $5e
    ld l, d                                       ; $6bf3: $6a
    ld c, b                                       ; $6bf4: $48
    sbc e                                         ; $6bf5: $9b
    and $94                                       ; $6bf6: $e6 $94
    dec h                                         ; $6bf8: $25
    ld a, [$35a7]                                 ; $6bf9: $fa $a7 $35
    cp c                                          ; $6bfc: $b9
    db $ed                                        ; $6bfd: $ed
    nop                                           ; $6bfe: $00
    rst $20                                       ; $6bff: $e7
    xor c                                         ; $6c00: $a9
    rst $38                                       ; $6c01: $ff
    push de                                       ; $6c02: $d5
    db $e4                                        ; $6c03: $e4
    ld c, d                                       ; $6c04: $4a
    rst $10                                       ; $6c05: $d7
    db $e4                                        ; $6c06: $e4
    xor d                                         ; $6c07: $aa
    sub e                                         ; $6c08: $93
    push bc                                       ; $6c09: $c5
    db $d3                                        ; $6c0a: $d3
    ld b, b                                       ; $6c0b: $40
    ld h, d                                       ; $6c0c: $62
    db $e3                                        ; $6c0d: $e3
    ld a, [$9eb3]                                 ; $6c0e: $fa $b3 $9e
    pop hl                                        ; $6c11: $e1
    inc l                                         ; $6c12: $2c
    xor l                                         ; $6c13: $ad
    ld h, a                                       ; $6c14: $67
    push hl                                       ; $6c15: $e5
    jr c, jr_06d_6c72                             ; $6c16: $38 $5a

    ld e, l                                       ; $6c18: $5d
    ld e, d                                       ; $6c19: $5a
    ld de, $38da                                  ; $6c1a: $11 $da $38
    ld d, $57                                     ; $6c1d: $16 $57
    ld d, $43                                     ; $6c1f: $16 $43
    db $eb                                        ; $6c21: $eb
    ld e, c                                       ; $6c22: $59
    ld [$11ef], sp                                ; $6c23: $08 $ef $11
    adc [hl]                                      ; $6c26: $8e
    ld h, c                                       ; $6c27: $61
    dec sp                                        ; $6c28: $3b
    nop                                           ; $6c29: $00
    rra                                           ; $6c2a: $1f
    db $fd                                        ; $6c2b: $fd
    adc [hl]                                      ; $6c2c: $8e

Call_06d_6c2d:
    and b                                         ; $6c2d: $a0
    ld c, $5a                                     ; $6c2e: $0e $5a
    and [hl]                                      ; $6c30: $a6
    cp $57                                        ; $6c31: $fe $57
    or c                                          ; $6c33: $b1
    sbc a                                         ; $6c34: $9f
    ld d, d                                       ; $6c35: $52
    sub $2a                                       ; $6c36: $d6 $2a
    jp nz, $dad1                                  ; $6c38: $c2 $d1 $da

    call c, $dd1a                                 ; $6c3b: $dc $1a $dd
    ld c, $1f                                     ; $6c3e: $0e $1f
    db $fd                                        ; $6c40: $fd
    adc $d6                                       ; $6c41: $ce $d6
    ld l, e                                       ; $6c43: $6b
    ret nc                                        ; $6c44: $d0

    ld h, $87                                     ; $6c45: $26 $87
    cp $79                                        ; $6c47: $fe $79
    cp e                                          ; $6c49: $bb
    ld c, h                                       ; $6c4a: $4c
    db $fd                                        ; $6c4b: $fd
    xor a                                         ; $6c4c: $af
    ld h, $87                                     ; $6c4d: $26 $87
    ld a, [bc]                                    ; $6c4f: $0a
    ld l, c                                       ; $6c50: $69
    dec hl                                        ; $6c51: $2b
    ld a, a                                       ; $6c52: $7f
    rst $08                                       ; $6c53: $cf
    dec e                                         ; $6c54: $1d
    and l                                         ; $6c55: $a5
    xor e                                         ; $6c56: $ab
    ld l, b                                       ; $6c57: $68
    call z, $9ea1                                 ; $6c58: $cc $a1 $9e
    sub l                                         ; $6c5b: $95
    jp Jump_000_3c5d                              ; $6c5c: $c3 $5d $3c


    db $db                                        ; $6c5f: $db
    ld bc, $a9e7                                  ; $6c60: $01 $e7 $a9
    ld sp, hl                                     ; $6c63: $f9
    ld [hl], a                                    ; $6c64: $77
    ld a, [hl+]                                   ; $6c65: $2a
    jp nz, $e9c5                                  ; $6c66: $c2 $c5 $e9

    ld a, [c]                                     ; $6c69: $f2
    rla                                           ; $6c6a: $17
    ld d, $ea                                     ; $6c6b: $16 $ea
    and a                                         ; $6c6d: $a7
    add c                                         ; $6c6e: $81
    call nz, Call_06d_47fe                        ; $6c6f: $c4 $fe $47

jr_06d_6c72:
    sbc [hl]                                      ; $6c72: $9e
    sub l                                         ; $6c73: $95
    ld a, [de]                                    ; $6c74: $1a
    add e                                         ; $6c75: $83
    dec hl                                        ; $6c76: $2b
    jp nz, $ec8e                                  ; $6c77: $c2 $8e $ec

    ld h, a                                       ; $6c7a: $67
    dec sp                                        ; $6c7b: $3b
    nop                                           ; $6c7c: $00
    scf                                           ; $6c7d: $37
    ld b, a                                       ; $6c7e: $47

Jump_06d_6c7f:
    sbc [hl]                                      ; $6c7f: $9e
    push af                                       ; $6c80: $f5
    cp a                                          ; $6c81: $bf
    ld d, d                                       ; $6c82: $52
    sub e                                         ; $6c83: $93
    xor e                                         ; $6c84: $ab
    inc e                                         ; $6c85: $1c
    xor $e2                                       ; $6c86: $ee $e2
    xor c                                         ; $6c88: $a9
    call Call_06d_79ad                            ; $6c89: $cd $ad $79
    db $e3                                        ; $6c8c: $e3
    nop                                           ; $6c8d: $00
    rra                                           ; $6c8e: $1f
    db $fd                                        ; $6c8f: $fd
    adc $d6                                       ; $6c90: $ce $d6
    ld l, e                                       ; $6c92: $6b
    ret nc                                        ; $6c93: $d0

    ld b, [hl]                                    ; $6c94: $46
    db $ec                                        ; $6c95: $ec
    ld a, a                                       ; $6c96: $7f
    sbc $ee                                       ; $6c97: $de $ee
    ld a, a                                       ; $6c99: $7f
    db $e4                                        ; $6c9a: $e4
    ld e, c                                       ; $6c9b: $59
    push hl                                       ; $6c9c: $e5
    ld h, h                                       ; $6c9d: $64
    ld e, l                                       ; $6c9e: $5d
    daa                                           ; $6c9f: $27
    inc d                                         ; $6ca0: $14
    pop de                                        ; $6ca1: $d1
    or b                                          ; $6ca2: $b0
    xor h                                         ; $6ca3: $ac
    ret                                           ; $6ca4: $c9


    ld d, l                                       ; $6ca5: $55
    adc [hl]                                      ; $6ca6: $8e
    ld l, e                                       ; $6ca7: $6b
    ld [hl], d                                    ; $6ca8: $72
    xor b                                         ; $6ca9: $a8
    ld h, h                                       ; $6caa: $64
    sbc [hl]                                      ; $6cab: $9e
    ld h, h                                       ; $6cac: $64
    xor b                                         ; $6cad: $a8
    call Call_06d_6c2d                            ; $6cae: $cd $2d $6c
    rlca                                          ; $6cb1: $07
    sbc a                                         ; $6cb2: $9f

jr_06d_6cb3:
    dec sp                                        ; $6cb3: $3b
    db $f4                                        ; $6cb4: $f4
    rst $08                                       ; $6cb5: $cf
    db $db                                        ; $6cb6: $db
    ld h, l                                       ; $6cb7: $65
    ld [$357f], a                                 ; $6cb8: $ea $7f $35
    cp c                                          ; $6cbb: $b9
    ld b, $12                                     ; $6cbc: $06 $12
    ld c, e                                       ; $6cbe: $4b
    adc l                                         ; $6cbf: $8d
    ld hl, sp-$5d                                 ; $6cc0: $f8 $a3

Jump_06d_6cc2:
    ld b, [hl]                                    ; $6cc2: $46
    db $ec                                        ; $6cc3: $ec
    adc [hl]                                      ; $6cc4: $8e
    add hl, sp                                    ; $6cc5: $39
    or d                                          ; $6cc6: $b2
    sbc c                                         ; $6cc7: $99
    or $1f                                        ; $6cc8: $f6 $1f
    dec e                                         ; $6cca: $1d
    ld b, c                                       ; $6ccb: $41
    dec e                                         ; $6ccc: $1d
    or h                                          ; $6ccd: $b4
    call c, $fcd9                                 ; $6cce: $dc $d9 $fc
    dec sp                                        ; $6cd1: $3b
    sub l                                         ; $6cd2: $95
    ld h, d                                       ; $6cd3: $62
    sbc [hl]                                      ; $6cd4: $9e
    ldh a, [rBGP]                                 ; $6cd5: $f0 $47
    ld d, c                                       ; $6cd7: $51
    ld l, d                                       ; $6cd8: $6a
    add h                                         ; $6cd9: $84
    push de                                       ; $6cda: $d5
    and $d6                                       ; $6cdb: $e6 $d6
    ld l, h                                       ; $6cdd: $6c
    rlca                                          ; $6cde: $07
    rra                                           ; $6cdf: $1f
    db $fd                                        ; $6ce0: $fd
    adc $d6                                       ; $6ce1: $ce $d6
    rst $08                                       ; $6ce3: $cf
    or b                                          ; $6ce4: $b0
    rst $38                                       ; $6ce5: $ff
    ld a, c                                       ; $6ce6: $79
    cp e                                          ; $6ce7: $bb
    rst $38                                       ; $6ce8: $ff
    sub c                                         ; $6ce9: $91
    ld h, a                                       ; $6cea: $67
    push af                                       ; $6ceb: $f5
    db $fc                                        ; $6cec: $fc
    ld d, e                                       ; $6ced: $53
    sub l                                         ; $6cee: $95
    push af                                       ; $6cef: $f5
    or b                                          ; $6cf0: $b0
    ld h, $87                                     ; $6cf1: $26 $87
    adc $2e                                       ; $6cf3: $ce $2e
    add [hl]                                      ; $6cf5: $86
    ld b, a                                       ; $6cf6: $47
    rst $30                                       ; $6cf7: $f7
    ldh [$8a], a                                  ; $6cf8: $e0 $8a
    add $b0                                       ; $6cfa: $c6 $b0
    push af                                       ; $6cfc: $f5
    jp z, Jump_000_1770                           ; $6cfd: $ca $70 $17

    adc a                                         ; $6d00: $8f
    halt                                          ; $6d01: $76
    inc a                                         ; $6d02: $3c
    rla                                           ; $6d03: $17
    ld e, h                                       ; $6d04: $5c
    dec [hl]                                      ; $6d05: $35
    add hl, bc                                    ; $6d06: $09
    sub a                                         ; $6d07: $97
    sub l                                         ; $6d08: $95
    ld a, [hl+]                                   ; $6d09: $2a
    pop hl                                        ; $6d0a: $e1
    and c                                         ; $6d0b: $a1
    db $db                                        ; $6d0c: $db
    ld bc, $fd1f                                  ; $6d0d: $01 $1f $fd
    adc [hl]                                      ; $6d10: $8e
    and b                                         ; $6d11: $a0
    pop hl                                        ; $6d12: $e1
    ld e, b                                       ; $6d13: $58
    jr nz, jr_06d_6cb3                            ; $6d14: $20 $9d

    cp l                                          ; $6d16: $bd
    pop de                                        ; $6d17: $d1
    di                                            ; $6d18: $f3
    ld d, h                                       ; $6d19: $54
    rst $08                                       ; $6d1a: $cf
    rst $38                                       ; $6d1b: $ff
    ld b, d                                       ; $6d1c: $42
    inc hl                                        ; $6d1d: $23
    xor l                                         ; $6d1e: $ad
    rst $38                                       ; $6d1f: $ff
    and l                                         ; $6d20: $a5
    ld [hl], c                                    ; $6d21: $71
    sbc $38                                       ; $6d22: $de $38
    nop                                           ; $6d24: $00
    rra                                           ; $6d25: $1f
    db $fd                                        ; $6d26: $fd
    adc [hl]                                      ; $6d27: $8e
    and b                                         ; $6d28: $a0
    ld c, $5a                                     ; $6d29: $0e $5a
    ld h, l                                       ; $6d2b: $65
    sbc c                                         ; $6d2c: $99
    ld a, [hl-]                                   ; $6d2d: $3a
    ld h, l                                       ; $6d2e: $65
    sub [hl]                                      ; $6d2f: $96
    sub e                                         ; $6d30: $93
    and e                                         ; $6d31: $a3
    pop bc                                        ; $6d32: $c1
    inc b                                         ; $6d33: $04
    push af                                       ; $6d34: $f5
    res 7, b                                      ; $6d35: $cb $b8
    ld a, [de]                                    ; $6d37: $1a
    ld c, b                                       ; $6d38: $48
    db $ec                                        ; $6d39: $ec
    ld a, a                                       ; $6d3a: $7f
    db $e4                                        ; $6d3b: $e4
    ld e, c                                       ; $6d3c: $59
    xor c                                         ; $6d3d: $a9
    ld sp, $a1b8                                  ; $6d3e: $31 $b8 $a1
    adc l                                         ; $6d41: $8d
    ld c, h                                       ; $6d42: $4c
    add [hl]                                      ; $6d43: $86
    db $ec                                        ; $6d44: $ec
    and a                                         ; $6d45: $a7
    pop hl                                        ; $6d46: $e1
    ld e, b                                       ; $6d47: $58
    cp c                                          ; $6d48: $b9
    ld [hl], e                                    ; $6d49: $73
    dec sp                                        ; $6d4a: $3b
    nop                                           ; $6d4b: $00
    rra                                           ; $6d4c: $1f
    db $fd                                        ; $6d4d: $fd
    adc [hl]                                      ; $6d4e: $8e
    and b                                         ; $6d4f: $a0
    ld c, h                                       ; $6d50: $4c
    add l                                         ; $6d51: $85
    inc d                                         ; $6d52: $14
    ld c, a                                       ; $6d53: $4f
    inc bc                                        ; $6d54: $03
    adc c                                         ; $6d55: $89
    call Call_06d_73bf                            ; $6d56: $cd $bf $73
    jp hl                                         ; $6d59: $e9


    nop                                           ; $6d5a: $00
    rra                                           ; $6d5b: $1f
    scf                                           ; $6d5c: $37
    sub b                                         ; $6d5d: $90
    ret c                                         ; $6d5e: $d8

    db $e4                                        ; $6d5f: $e4
    ld a, [hl+]                                   ; $6d60: $2a
    add a                                         ; $6d61: $87
    cp e                                          ; $6d62: $bb
    ld a, b                                       ; $6d63: $78
    ld c, d                                       ; $6d64: $4a
    adc l                                         ; $6d65: $8d
    or b                                          ; $6d66: $b0
    add l                                         ; $6d67: $85
    adc d                                         ; $6d68: $8a
    ld [hl], b                                    ; $6d69: $70
    sbc e                                         ; $6d6a: $9b
    reti                                          ; $6d6b: $d9


    ld c, a                                       ; $6d6c: $4f
    ld de, $ab48                                  ; $6d6d: $11 $48 $ab
    ld [hl], h                                    ; $6d70: $74
    sub l                                         ; $6d71: $95
    set 4, c                                      ; $6d72: $cb $e1
    adc l                                         ; $6d74: $8d
    inc bc                                        ; $6d75: $03
    rra                                           ; $6d76: $1f
    db $fd                                        ; $6d77: $fd
    adc [hl]                                      ; $6d78: $8e
    and b                                         ; $6d79: $a0
    ld sp, hl                                     ; $6d7a: $f9
    ld [hl], a                                    ; $6d7b: $77
    ld a, [$cd5f]                                 ; $6d7c: $fa $5f $cd
    call z, $e4e2                                 ; $6d7f: $cc $e2 $e4
    ld a, [hl+]                                   ; $6d82: $2a
    add a                                         ; $6d83: $87
    cp e                                          ; $6d84: $bb
    ld a, b                                       ; $6d85: $78
    or [hl]                                       ; $6d86: $b6
    inc bc                                        ; $6d87: $03
    rra                                           ; $6d88: $1f
    db $fd                                        ; $6d89: $fd
    adc $d6                                       ; $6d8a: $ce $d6
    ld l, e                                       ; $6d8c: $6b
    ret nc                                        ; $6d8d: $d0

    ld a, [hl]                                    ; $6d8e: $7e
    ld a, [hl-]                                   ; $6d8f: $3a
    ld sp, hl                                     ; $6d90: $f9

jr_06d_6d91:
    and a                                         ; $6d91: $a7
    ld a, [hl]                                    ; $6d92: $7e
    ld b, c                                       ; $6d93: $41
    add sp, -$32                                  ; $6d94: $e8 $ce
    sbc a                                         ; $6d96: $9f
    ld a, [de]                                    ; $6d97: $1a
    jp hl                                         ; $6d98: $e9


    sbc d                                         ; $6d99: $9a
    ld e, h                                       ; $6d9a: $5c
    dec c                                         ; $6d9b: $0d
    ld [hl], c                                    ; $6d9c: $71
    ld [$a6b8], a                                 ; $6d9d: $ea $b8 $a6
    ld [hl], b                                    ; $6da0: $70
    jr nc, jr_06d_6d91                            ; $6da1: $30 $ee

    ldh a, [$b3]                                  ; $6da3: $f0 $b3
    push af                                       ; $6da5: $f5
    dec a                                         ; $6da6: $3d
    push de                                       ; $6da7: $d5
    xor c                                         ; $6da8: $a9
    ld d, c                                       ; $6da9: $51
    ld h, a                                       ; $6daa: $67
    rst $38                                       ; $6dab: $ff
    or e                                          ; $6dac: $b3
    jp z, $d0d4                                   ; $6dad: $ca $d4 $d0

    ld b, [hl]                                    ; $6db0: $46
    cp b                                          ; $6db1: $b8
    db $d3                                        ; $6db2: $d3
    pop hl                                        ; $6db3: $e1
    adc l                                         ; $6db4: $8d
    inc bc                                        ; $6db5: $03
    scf                                           ; $6db6: $37
    ld b, a                                       ; $6db7: $47
    sbc [hl]                                      ; $6db8: $9e
    push de                                       ; $6db9: $d5
    di                                            ; $6dba: $f3
    ld c, a                                       ; $6dbb: $4f
    ld e, e                                       ; $6dbc: $5b
    add sp, -$4e                                  ; $6dbd: $e8 $b2
    xor $c1                                       ; $6dbf: $ee $c1
    dec d                                         ; $6dc1: $15
    adc l                                         ; $6dc2: $8d
    ld h, c                                       ; $6dc3: $61
    db $eb                                        ; $6dc4: $eb
    ld h, l                                       ; $6dc5: $65
    add hl, hl                                    ; $6dc6: $29
    sbc [hl]                                      ; $6dc7: $9e
    ld b, $12                                     ; $6dc8: $06 $12
    ei                                            ; $6dca: $fb
    rra                                           ; $6dcb: $1f
    ld a, c                                       ; $6dcc: $79
    ld d, [hl]                                    ; $6dcd: $56
    ld l, d                                       ; $6dce: $6a
    inc c                                         ; $6dcf: $0c
    ld l, [hl]                                    ; $6dd0: $6e
    ld l, b                                       ; $6dd1: $68
    sub h                                         ; $6dd2: $94
    ld c, e                                       ; $6dd3: $4b
    sub c                                         ; $6dd4: $91
    db $fd                                        ; $6dd5: $fd
    call nc, $c9b3                                ; $6dd6: $d4 $b3 $c9
    dec [hl]                                      ; $6dd9: $35
    sbc h                                         ; $6dda: $9c
    inc h                                         ; $6ddb: $24
    and a                                         ; $6ddc: $a7
    sbc [hl]                                      ; $6ddd: $9e
    add l                                         ; $6dde: $85
    ld d, l                                       ; $6ddf: $55
    ld h, h                                       ; $6de0: $64
    ld d, h                                       ; $6de1: $54
    add hl, sp                                    ; $6de2: $39
    db $db                                        ; $6de3: $db
    ld bc, $4737                                  ; $6de4: $01 $37 $47
    sbc [hl]                                      ; $6de7: $9e
    sub l                                         ; $6de8: $95
    ld a, [de]                                    ; $6de9: $1a
    add e                                         ; $6dea: $83
    xor e                                         ; $6deb: $ab
    xor h                                         ; $6dec: $ac
    ld [hl-], a                                   ; $6ded: $32
    rst $00                                       ; $6dee: $c7
    sub l                                         ; $6def: $95
    db $fd                                        ; $6df0: $fd
    ld d, h                                       ; $6df1: $54
    ld c, b                                       ; $6df2: $48
    daa                                           ; $6df3: $27
    add sp, $55                                   ; $6df4: $e8 $55
    sbc b                                         ; $6df6: $98
    db $fd                                        ; $6df7: $fd
    db $f4                                        ; $6df8: $f4
    add $01                                       ; $6df9: $c6 $01
    rst $20                                       ; $6dfb: $e7
    xor c                                         ; $6dfc: $a9
    sub b                                         ; $6dfd: $90
    db $10                                        ; $6dfe: $10
    ld [hl], d                                    ; $6dff: $72
    push de                                       ; $6e00: $d5
    or e                                          ; $6e01: $b3
    or e                                          ; $6e02: $b3
    adc e                                         ; $6e03: $8b
    ld h, c                                       ; $6e04: $61
    dec c                                         ; $6e05: $0d
    cp c                                          ; $6e06: $b9
    and e                                         ; $6e07: $a3
    rst $18                                       ; $6e08: $df
    inc hl                                        ; $6e09: $23
    ld [hl], e                                    ; $6e0a: $73
    ld b, a                                       ; $6e0b: $47
    reti                                          ; $6e0c: $d9


    rst $38                                       ; $6e0d: $ff
    ld a, [hl+]                                   ; $6e0e: $2a
    or $53                                        ; $6e0f: $f6 $53
    ld [hl], d                                    ; $6e11: $72
    xor b                                         ; $6e12: $a8
    sbc h                                         ; $6e13: $9c
    and l                                         ; $6e14: $a5
    xor b                                         ; $6e15: $a8
    call Call_06d_542d                            ; $6e16: $cd $2d $54
    adc [hl]                                      ; $6e19: $8e
    add hl, de                                    ; $6e1a: $19
    or e                                          ; $6e1b: $b3
    sbc a                                         ; $6e1c: $9f
    ld a, [$0ee9]                                 ; $6e1d: $fa $e9 $0e
    ccf                                           ; $6e20: $3f
    push af                                       ; $6e21: $f5
    xor h                                         ; $6e22: $ac
    ld l, b                                       ; $6e23: $68
    inc c                                         ; $6e24: $0c
    db $db                                        ; $6e25: $db
    ld bc, $fd1f                                  ; $6e26: $01 $1f $fd
    adc [hl]                                      ; $6e29: $8e
    and b                                         ; $6e2a: $a0
    ld sp, hl                                     ; $6e2b: $f9
    ld [hl], a                                    ; $6e2c: $77
    ld a, [$975f]                                 ; $6e2d: $fa $5f $97
    ld c, $37                                     ; $6e30: $0e $37
    call nz, Call_06d_4be2                        ; $6e32: $c4 $e2 $4b
    dec a                                         ; $6e35: $3d
    ld c, a                                       ; $6e36: $4f
    and l                                         ; $6e37: $a5
    add $49                                       ; $6e38: $c6 $49
    adc l                                         ; $6e3a: $8d
    call z, $d911                                 ; $6e3b: $cc $11 $d9
    ld c, a                                       ; $6e3e: $4f
    ld b, e                                       ; $6e3f: $43
    and e                                         ; $6e40: $a3
    ld b, [hl]                                    ; $6e41: $46
    ld e, b                                       ; $6e42: $58
    ld de, $2f99                                  ; $6e43: $11 $99 $2f
    cp $4e                                        ; $6e46: $fe $4e
    inc sp                                        ; $6e48: $33
    adc d                                         ; $6e49: $8a
    or h                                          ; $6e4a: $b4
    db $e3                                        ; $6e4b: $e3
    jp nc, $3701                                  ; $6e4c: $d2 $01 $37

    ret c                                         ; $6e4f: $d8

    rst $38                                       ; $6e50: $ff
    ret z                                         ; $6e51: $c8

    or e                                          ; $6e52: $b3
    ld b, $d2                                     ; $6e53: $06 $d2
    ld d, d                                       ; $6e55: $52
    sbc d                                         ; $6e56: $9a
    and b                                         ; $6e57: $a0
    ld c, h                                       ; $6e58: $4c
    dec c                                         ; $6e59: $0d
    ld b, a                                       ; $6e5a: $47
    ld [hl], l                                    ; $6e5b: $75
    adc d                                         ; $6e5c: $8a
    inc a                                         ; $6e5d: $3c
    ld de, $98d6                                  ; $6e5e: $11 $d6 $98
    db $fc                                        ; $6e61: $fc
    sub h                                         ; $6e62: $94
    adc l                                         ; $6e63: $8d
    inc l                                         ; $6e64: $2c

Jump_06d_6e65:
    ld l, a                                       ; $6e65: $6f
    add l                                         ; $6e66: $85
    ei                                            ; $6e67: $fb
    sub d                                         ; $6e68: $92
    or b                                          ; $6e69: $b0
    ld a, d                                       ; $6e6a: $7a
    add [hl]                                      ; $6e6b: $86
    or e                                          ; $6e6c: $b3
    ld [hl], h                                    ; $6e6d: $74
    dec sp                                        ; $6e6e: $3b
    nop                                           ; $6e6f: $00
    scf                                           ; $6e70: $37
    ret c                                         ; $6e71: $d8

    rst $38                                       ; $6e72: $ff
    ret z                                         ; $6e73: $c8

    or e                                          ; $6e74: $b3
    add [hl]                                      ; $6e75: $86
    ld b, [hl]                                    ; $6e76: $46
    cp c                                          ; $6e77: $b9
    inc d                                         ; $6e78: $14
    dec c                                         ; $6e79: $0d
    inc h                                         ; $6e7a: $24
    sub [hl]                                      ; $6e7b: $96
    xor c                                         ; $6e7c: $a9
    sub c                                         ; $6e7d: $91
    push hl                                       ; $6e7e: $e5
    xor l                                         ; $6e7f: $ad
    ld [hl], b                                    ; $6e80: $70
    ld e, a                                       ; $6e81: $5f
    add c                                         ; $6e82: $81
    call nz, Call_000_3f62                        ; $6e83: $c4 $62 $3f
    dec h                                         ; $6e86: $25
    add a                                         ; $6e87: $87
    jp z, $0a59                                   ; $6e88: $ca $59 $0a

    ld b, c                                       ; $6e8b: $41
    xor c                                         ; $6e8c: $a9
    ld hl, $458d                                  ; $6e8d: $21 $8d $45
    sub c                                         ; $6e90: $91
    halt                                          ; $6e91: $76
    inc d                                         ; $6e92: $14
    ld [de], a                                    ; $6e93: $12
    ld b, d                                       ; $6e94: $42
    ret c                                         ; $6e95: $d8

    and l                                         ; $6e96: $a5
    inc bc                                        ; $6e97: $03
    scf                                           ; $6e98: $37
    call nz, Call_06d_4be2                        ; $6e99: $c4 $e2 $4b
    dec a                                         ; $6e9c: $3d
    ld c, a                                       ; $6e9d: $4f
    dec c                                         ; $6e9e: $0d
    ld b, a                                       ; $6e9f: $47
    ld [hl], l                                    ; $6ea0: $75
    ld c, d                                       ; $6ea1: $4a

Jump_06d_6ea2:
    adc l                                         ; $6ea2: $8d
    or b                                          ; $6ea3: $b0
    add [hl]                                      ; $6ea4: $86
    inc [hl]                                      ; $6ea5: $34
    rst $08                                       ; $6ea6: $cf
    db $ec                                        ; $6ea7: $ec
    and a                                         ; $6ea8: $a7
    ret c                                         ; $6ea9: $d8

    ld c, a                                       ; $6eaa: $4f
    ret                                           ; $6eab: $c9


    and c                                         ; $6eac: $a1
    dec hl                                        ; $6ead: $2b
    adc e                                         ; $6eae: $8b
    add $1c                                       ; $6eaf: $c6 $1c
    ld l, $fe                                     ; $6eb1: $2e $fe
    ld c, [hl]                                    ; $6eb3: $4e
    sub a                                         ; $6eb4: $97
    dec bc                                        ; $6eb5: $0b
    rst $00                                       ; $6eb6: $c7
    ld [hl+], a                                   ; $6eb7: $22
    ld [hl], d                                    ; $6eb8: $72
    db $e4                                        ; $6eb9: $e4
    halt                                          ; $6eba: $76
    nop                                           ; $6ebb: $00
    scf                                           ; $6ebc: $37
    call nz, Call_06d_4be2                        ; $6ebd: $c4 $e2 $4b
    db $fd                                        ; $6ec0: $fd
    add sp, $77                                   ; $6ec1: $e8 $77
    xor d                                         ; $6ec3: $aa
    inc l                                         ; $6ec4: $2c
    and d                                         ; $6ec5: $a2
    pop af                                        ; $6ec6: $f1
    adc a                                         ; $6ec7: $8f
    and d                                         ; $6ec8: $a2
    adc [hl]                                      ; $6ec9: $8e
    ld [hl], l                                    ; $6eca: $75
    adc h                                         ; $6ecb: $8c

jr_06d_6ecc:
    or h                                          ; $6ecc: $b4
    jp nc, $1355                                  ; $6ecd: $d2 $55 $13

    or h                                          ; $6ed0: $b4
    call z, $98d2                                 ; $6ed1: $cc $d2 $98
    dec h                                         ; $6ed4: $25
    db $f4                                        ; $6ed5: $f4
    jp nc, $e701                                  ; $6ed6: $d2 $01 $e7

    xor c                                         ; $6ed9: $a9
    ld sp, hl                                     ; $6eda: $f9
    ld [hl], a                                    ; $6edb: $77
    ld a, [bc]                                    ; $6edc: $0a
    add hl, hl                                    ; $6edd: $29
    sbc [hl]                                      ; $6ede: $9e
    ld b, $12                                     ; $6edf: $06 $12
    sbc e                                         ; $6ee1: $9b
    rst $28                                       ; $6ee2: $ef
    pop de                                        ; $6ee3: $d1
    ld a, d                                       ; $6ee4: $7a
    cp $69                                        ; $6ee5: $fe $69
    ld [hl], a                                    ; $6ee7: $77
    jp $968d                                      ; $6ee8: $c3 $8d $96


    ld a, [de]                                    ; $6eeb: $1a
    ld h, c                                       ; $6eec: $61
    sub l                                         ; $6eed: $95
    sub e                                         ; $6eee: $93
    rst $38                                       ; $6eef: $ff
    inc [hl]                                      ; $6ef0: $34
    ld b, l                                       ; $6ef1: $45
    or $53                                        ; $6ef2: $f6 $53

Call_06d_6ef4:
    sbc a                                         ; $6ef4: $9f
    inc c                                         ; $6ef5: $0c
    add hl, sp                                    ; $6ef6: $39
    or d                                          ; $6ef7: $b2
    jr z, jr_06d_6ecc                             ; $6ef8: $28 $d2

    adc [hl]                                      ; $6efa: $8e
    db $ed                                        ; $6efb: $ed
    nop                                           ; $6efc: $00
    xor a                                         ; $6efd: $af
    rst $10                                       ; $6efe: $d7
    ld [hl], c                                    ; $6eff: $71
    rla                                           ; $6f00: $17
    adc a                                         ; $6f01: $8f
    push af                                       ; $6f02: $f5
    ccf                                           ; $6f03: $3f
    ld a, [c]                                     ; $6f04: $f2
    xor h                                         ; $6f05: $ac
    res 1, d                                      ; $6f06: $cb $8a
    db $ec                                        ; $6f08: $ec
    sub c                                         ; $6f09: $91
    db $fd                                        ; $6f0a: $fd
    inc d                                         ; $6f0b: $14
    add hl, sp                                    ; $6f0c: $39
    ld d, d                                       ; $6f0d: $52
    db $eb                                        ; $6f0e: $eb
    ld e, c                                       ; $6f0f: $59
    ld h, l                                       ; $6f10: $65
    dec e                                         ; $6f11: $1d
    inc hl                                        ; $6f12: $23
    xor l                                         ; $6f13: $ad
    ld [hl], h                                    ; $6f14: $74
    push bc                                       ; $6f15: $c5
    ld a, [hl]                                    ; $6f16: $7e
    ld c, d                                       ; $6f17: $4a
    ld c, $65                                     ; $6f18: $0e $65
    sub [hl]                                      ; $6f1a: $96
    add $2c                                       ; $6f1b: $c6 $2c
    or c                                          ; $6f1d: $b1
    dec e                                         ; $6f1e: $1d
    scf                                           ; $6f1f: $37
    call nz, Call_06d_4be2                        ; $6f20: $c4 $e2 $4b
    dec a                                         ; $6f23: $3d
    ld c, a                                       ; $6f24: $4f
    add l                                         ; $6f25: $85
    inc d                                         ; $6f26: $14
    ld c, a                                       ; $6f27: $4f
    inc bc                                        ; $6f28: $03
    adc c                                         ; $6f29: $89
    and l                                         ; $6f2a: $a5
    add $df                                       ; $6f2b: $c6 $df
    ld l, c                                       ; $6f2d: $69
    inc e                                         ; $6f2e: $1c
    ccf                                           ; $6f2f: $3f
    jp c, $c5d9                                   ; $6f30: $da $d9 $c5

    ret z                                         ; $6f33: $c8

    ld a, [hl]                                    ; $6f34: $7e
    ld a, [de]                                    ; $6f35: $1a
    jp nz, Jump_06d_7cd0                          ; $6f36: $c2 $d0 $7c

    adc a                                         ; $6f39: $8f
    ld l, [hl]                                    ; $6f3a: $6e
    rlca                                          ; $6f3b: $07
    xor a                                         ; $6f3c: $af
    rst $10                                       ; $6f3d: $d7
    ld [hl], c                                    ; $6f3e: $71
    rla                                           ; $6f3f: $17
    adc a                                         ; $6f40: $8f
    dec [hl]                                      ; $6f41: $35
    rst $18                                       ; $6f42: $df
    and e                                         ; $6f43: $a3
    call Call_06d_53bf                            ; $6f44: $cd $bf $53
    add hl, sp                                    ; $6f47: $39
    ld sp, hl                                     ; $6f48: $f9
    ld c, a                                       ; $6f49: $4f
    ld d, e                                       ; $6f4a: $53
    sbc b                                         ; $6f4b: $98
    dec de                                        ; $6f4c: $1b
    xor l                                         ; $6f4d: $ad
    ld c, a                                       ; $6f4e: $4f
    add [hl]                                      ; $6f4f: $86
    inc e                                         ; $6f50: $1c
    ld e, c                                       ; $6f51: $59
    inc d                                         ; $6f52: $14
    ld l, c                                       ; $6f53: $69
    add a                                         ; $6f54: $87
    and b                                         ; $6f55: $a0
    sub e                                         ; $6f56: $93
    ld a, [de]                                    ; $6f57: $1a
    adc [hl]                                      ; $6f58: $8e
    and a                                         ; $6f59: $a7
    dec de                                        ; $6f5a: $1b
    xor l                                         ; $6f5b: $ad
    ld d, c                                       ; $6f5c: $51
    ld d, d                                       ; $6f5d: $52
    ld c, b                                       ; $6f5e: $48
    ld l, e                                       ; $6f5f: $6b
    ld [hl], d                                    ; $6f60: $72
    xor b                                         ; $6f61: $a8
    ld h, $0d                                     ; $6f62: $26 $0d
    sbc c                                         ; $6f64: $99
    push af                                       ; $6f65: $f5
    ld [hl], a                                    ; $6f66: $77
    or [hl]                                       ; $6f67: $b6
    inc bc                                        ; $6f68: $03
    scf                                           ; $6f69: $37
    add e                                         ; $6f6a: $83
    ld c, e                                       ; $6f6b: $4b
    daa                                           ; $6f6c: $27
    inc e                                         ; $6f6d: $1c
    add e                                         ; $6f6e: $83
    and b                                         ; $6f6f: $a0
    pop hl                                        ; $6f70: $e1
    ld e, b                                       ; $6f71: $58
    ld b, l                                       ; $6f72: $45
    ld hl, sp-$71                                 ; $6f73: $f8 $8f
    ld e, l                                       ; $6f75: $5d
    ld [$6a79], a                                 ; $6f76: $ea $79 $6a
    cp $9d                                        ; $6f79: $fe $9d
    ld b, $12                                     ; $6f7b: $06 $12
    ld l, l                                       ; $6f7d: $6d
    cp d                                          ; $6f7e: $ba
    di                                            ; $6f7f: $f3
    rrca                                          ; $6f80: $0f
    ld l, e                                       ; $6f81: $6b
    ld [hl], d                                    ; $6f82: $72
    xor b                                         ; $6f83: $a8
    ret nc                                        ; $6f84: $d0

    ld h, $4b                                     ; $6f85: $26 $4b
    inc [hl]                                      ; $6f87: $34
    inc e                                         ; $6f88: $1c
    xor e                                         ; $6f89: $ab
    sbc h                                         ; $6f8a: $9c
    db $fc                                        ; $6f8b: $fc
    and a                                         ; $6f8c: $a7
    add hl, hl                                    ; $6f8d: $29
    xor h                                         ; $6f8e: $ac
    ld a, $19                                     ; $6f8f: $3e $19
    ld [hl], d                                    ; $6f91: $72
    ld h, h                                       ; $6f92: $64
    ld d, c                                       ; $6f93: $51
    and h                                         ; $6f94: $a4
    dec e                                         ; $6f95: $1d
    db $db                                        ; $6f96: $db
    ld bc, $a9e7                                  ; $6f97: $01 $e7 $a9
    and a                                         ; $6f9a: $a7
    pop de                                        ; $6f9b: $d1
    ld [$a85b], sp                                ; $6f9c: $08 $5b $a8
    ld h, a                                       ; $6f9f: $67
    sub a                                         ; $6fa0: $97
    ld d, l                                       ; $6fa1: $55
    adc [hl]                                      ; $6fa2: $8e
    db $eb                                        ; $6fa3: $eb
    ld a, a                                       ; $6fa4: $7f
    db $e4                                        ; $6fa5: $e4
    ld e, c                                       ; $6fa6: $59
    ld e, c                                       ; $6fa7: $59
    ld a, h                                       ; $6fa8: $7c
    sbc a                                         ; $6fa9: $9f
    inc a                                         ; $6faa: $3c
    ld c, h                                       ; $6fab: $4c
    ld d, b                                       ; $6fac: $50
    rlca                                          ; $6fad: $07
    dec l                                         ; $6fae: $2d
    ld d, e                                       ; $6faf: $53
    inc hl                                        ; $6fb0: $23
    or e                                          ; $6fb1: $b3
    ld a, b                                       ; $6fb2: $78
    ld a, [de]                                    ; $6fb3: $1a
    ld c, b                                       ; $6fb4: $48
    xor h                                         ; $6fb5: $ac
    ld l, b                                       ; $6fb6: $68
    ld c, c                                       ; $6fb7: $49
    ld e, b                                       ; $6fb8: $58
    jp Jump_000_22b1                              ; $6fb9: $c3 $b1 $22


    sub b                                         ; $6fbc: $90
    sub $76                                       ; $6fbd: $d6 $76
    nop                                           ; $6fbf: $00
    ld l, a                                       ; $6fc0: $6f
    dec c                                         ; $6fc1: $0d
    xor d                                         ; $6fc2: $aa
    ld h, e                                       ; $6fc3: $63
    sub c                                         ; $6fc4: $91
    add d                                         ; $6fc5: $82
    ld e, [hl]                                    ; $6fc6: $5e
    add l                                         ; $6fc7: $85
    reti                                          ; $6fc8: $d9


    ld c, a                                       ; $6fc9: $4f
    ld e, e                                       ; $6fca: $5b
    rst $18                                       ; $6fcb: $df
    ld h, [hl]                                    ; $6fcc: $66
    jr c, jr_06d_701a                             ; $6fcd: $38 $4b

    ei                                            ; $6fcf: $fb
    rra                                           ; $6fd0: $1f
    ld a, c                                       ; $6fd1: $79
    ld d, [hl]                                    ; $6fd2: $56
    rst $00                                       ; $6fd3: $c7
    db $ca, $c9, $11                              ; $6fd4: $ca $c9 $11

    sub l                                         ; $6fd7: $95
    db $e3                                        ; $6fd8: $e3
    and [hl]                                      ; $6fd9: $a6
    and d                                         ; $6fda: $a2
    ld e, c                                       ; $6fdb: $59
    db $db                                        ; $6fdc: $db
    ld bc, $d7af                                  ; $6fdd: $01 $af $d7
    ld [hl], c                                    ; $6fe0: $71
    rla                                           ; $6fe1: $17
    adc a                                         ; $6fe2: $8f
    push af                                       ; $6fe3: $f5
    ccf                                           ; $6fe4: $3f
    ld a, [c]                                     ; $6fe5: $f2
    xor h                                         ; $6fe6: $ac
    res 1, d                                      ; $6fe7: $cb $8a
    db $ec                                        ; $6fe9: $ec
    sub c                                         ; $6fea: $91
    db $fd                                        ; $6feb: $fd
    inc d                                         ; $6fec: $14
    add hl, sp                                    ; $6fed: $39
    ld d, d                                       ; $6fee: $52
    dec de                                        ; $6fef: $1b
    ld c, b                                       ; $6ff0: $48
    db $ec                                        ; $6ff1: $ec
    adc $3f                                       ; $6ff2: $ce $3f
    sbc e                                         ; $6ff4: $9b
    inc e                                         ; $6ff5: $1c
    ld a, [hl+]                                   ; $6ff6: $2a
    or h                                          ; $6ff7: $b4
    ret                                           ; $6ff8: $c9


    ld [de], a                                    ; $6ff9: $12
    db $db                                        ; $6ffa: $db
    ld bc, $0d6f                                  ; $6ffb: $01 $6f $0d
    xor d                                         ; $6ffe: $aa
    ld h, e                                       ; $6fff: $63
    sub c                                         ; $7000: $91
    add d                                         ; $7001: $82
    ld e, [hl]                                    ; $7002: $5e
    add l                                         ; $7003: $85
    reti                                          ; $7004: $d9


    ld c, a                                       ; $7005: $4f
    add d                                         ; $7006: $82
    ld [hl-], a                                   ; $7007: $32
    ld d, l                                       ; $7008: $55
    cp c                                          ; $7009: $b9
    ld a, [de]                                    ; $700a: $1a
    ld c, b                                       ; $700b: $48
    db $ec                                        ; $700c: $ec
    ld a, a                                       ; $700d: $7f
    db $e4                                        ; $700e: $e4
    ld e, c                                       ; $700f: $59
    rst $38                                       ; $7010: $ff
    ld e, b                                       ; $7011: $58
    ld d, l                                       ; $7012: $55
    ld d, [hl]                                    ; $7013: $56
    or c                                          ; $7014: $b1
    xor h                                         ; $7015: $ac
    ld b, d                                       ; $7016: $42
    cp d                                          ; $7017: $ba
    db $ed                                        ; $7018: $ed
    nop                                           ; $7019: $00

jr_06d_701a:
    rst $10                                       ; $701a: $d7
    cp b                                          ; $701b: $b8
    adc e                                         ; $701c: $8b
    rst $00                                       ; $701d: $c7
    cp d                                          ; $701e: $ba
    xor h                                         ; $701f: $ac
    ret z                                         ; $7020: $c8

    ld e, $d9                                     ; $7021: $1e $d9
    adc a                                         ; $7023: $8f
    and b                                         ; $7024: $a0
    sub e                                         ; $7025: $93
    ld a, [$791f]                                 ; $7026: $fa $1f $79
    sub $3f                                       ; $7029: $d6 $3f
    ld d, [hl]                                    ; $702b: $56
    ld hl, $8421                                  ; $702c: $21 $21 $84
    dec [hl]                                      ; $702f: $35
    and h                                         ; $7030: $a4
    ld a, c                                       ; $7031: $79
    ld h, [hl]                                    ; $7032: $66
    ccf                                           ; $7033: $3f
    dec c                                         ; $7034: $0d
    daa                                           ; $7035: $27
    rst $00                                       ; $7036: $c7
    pop de                                        ; $7037: $d1
    add [hl]                                      ; $7038: $86
    jr nc, jr_06d_706f                            ; $7039: $30 $34

    adc a                                         ; $703b: $8f
    ld a, [hl+]                                   ; $703c: $2a
    ld a, [hl+]                                   ; $703d: $2a
    and c                                         ; $703e: $a1
    ret c                                         ; $703f: $d8

    ld c, $e7                                     ; $7040: $0e $e7
    ld a, [de]                                    ; $7042: $1a
    sub e                                         ; $7043: $93
    ld [$4afa], sp                                ; $7044: $08 $fa $4a
    ei                                            ; $7047: $fb
    pop de                                        ; $7048: $d1
    ret c                                         ; $7049: $d8

    ld d, b                                       ; $704a: $50
    inc hl                                        ; $704b: $23
    or a                                          ; $704c: $b7
    or $0a                                        ; $704d: $f6 $0a
    add h                                         ; $704f: $84
    ret z                                         ; $7050: $c8

    xor b                                         ; $7051: $a8
    sbc a                                         ; $7052: $9f
    ld e, [hl]                                    ; $7053: $5e
    push bc                                       ; $7054: $c5
    ret                                           ; $7055: $c9


    sub [hl]                                      ; $7056: $96
    ld a, a                                       ; $7057: $7f
    and l                                         ; $7058: $a5
    cp l                                          ; $7059: $bd
    sub c                                         ; $705a: $91
    db $fc                                        ; $705b: $fc
    ld d, b                                       ; $705c: $50
    inc hl                                        ; $705d: $23
    or a                                          ; $705e: $b7
    inc bc                                        ; $705f: $03
    scf                                           ; $7060: $37
    ld [de], a                                    ; $7061: $12
    or h                                          ; $7062: $b4
    ld c, b                                       ; $7063: $48
    dec sp                                        ; $7064: $3b
    or h                                          ; $7065: $b4
    call nc, Call_000_3bf8                        ; $7066: $d4 $f8 $3b
    add l                                         ; $7069: $85
    add h                                         ; $706a: $84
    db $10                                        ; $706b: $10
    ld e, $da                                     ; $706c: $1e $da
    ld [hl], b                                    ; $706e: $70

jr_06d_706f:
    xor h                                         ; $706f: $ac
    ld [c], a                                     ; $7070: $e2
    ld sp, hl                                     ; $7071: $f9
    sbc [hl]                                      ; $7072: $9e
    ld e, e                                       ; $7073: $5b
    cpl                                           ; $7074: $2f
    sbc a                                         ; $7075: $9f
    add $d0                                       ; $7076: $c6 $d0
    ld a, a                                       ; $7078: $7f
    ld [hl], b                                    ; $7079: $70
    ld b, e                                       ; $707a: $43
    jr jr_06d_70b7                                ; $707b: $18 $3a

    ld a, l                                       ; $707d: $7d
    rst $10                                       ; $707e: $d7
    sub b                                         ; $707f: $90
    dec a                                         ; $7080: $3d
    ld a, e                                       ; $7081: $7b
    inc bc                                        ; $7082: $03
    ei                                            ; $7083: $fb
    rst $28                                       ; $7084: $ef
    ld [$7dfa], sp                                ; $7085: $08 $fa $7d
    ld [hl], b                                    ; $7088: $70
    xor c                                         ; $7089: $a9
    ld sp, $81b8                                  ; $708a: $31 $b8 $81
    inc b                                         ; $708d: $04
    ld h, l                                       ; $708e: $65
    inc sp                                        ; $708f: $33
    ld a, [hl+]                                   ; $7090: $2a
    ld e, $43                                     ; $7091: $1e $43
    db $fd                                        ; $7093: $fd
    db $f4                                        ; $7094: $f4
    ld a, e                                       ; $7095: $7b
    db $e4                                        ; $7096: $e4
    ld [$0edb], sp                                ; $7097: $08 $db $0e
    scf                                           ; $709a: $37
    ld b, a                                       ; $709b: $47
    sbc [hl]                                      ; $709c: $9e
    dec [hl]                                      ; $709d: $35
    rst $38                                       ; $709e: $ff
    ld c, [hl]                                    ; $709f: $4e
    rst $38                                       ; $70a0: $ff
    ld e, b                                       ; $70a1: $58
    ld d, l                                       ; $70a2: $55
    ld d, [hl]                                    ; $70a3: $56
    ld hl, $5582                                  ; $70a4: $21 $82 $55

Call_06d_70a7:
    adc [hl]                                      ; $70a7: $8e
    db $eb                                        ; $70a8: $eb
    inc [hl]                                      ; $70a9: $34
    sub b                                         ; $70aa: $90
    ld e, b                                       ; $70ab: $58
    add h                                         ; $70ac: $84
    ld [hl], $39                                  ; $70ad: $36 $39
    ld c, [hl]                                    ; $70af: $4e
    ld l, d                                       ; $70b0: $6a
    ld b, [hl]                                    ; $70b1: $46
    sub c                                         ; $70b2: $91
    halt                                          ; $70b3: $76
    call nc, Call_000_37b3                        ; $70b4: $d4 $b3 $37

jr_06d_70b7:
    rst $28                                       ; $70b7: $ef
    dec de                                        ; $70b8: $1b
    ld b, c                                       ; $70b9: $41
    xor a                                         ; $70ba: $af
    ld c, a                                       ; $70bb: $4f
    adc h                                         ; $70bc: $8c
    or h                                          ; $70bd: $b4
    db $ed                                        ; $70be: $ed
    nop                                           ; $70bf: $00
    scf                                           ; $70c0: $37
    ld b, a                                       ; $70c1: $47
    sbc [hl]                                      ; $70c2: $9e
    sub l                                         ; $70c3: $95
    ld a, [de]                                    ; $70c4: $1a
    add e                                         ; $70c5: $83
    dec hl                                        ; $70c6: $2b
    and h                                         ; $70c7: $a4
    xor e                                         ; $70c8: $ab
    jp $cad2                                      ; $70c9: $c3 $d2 $ca


    ld sp, $3f7c                                  ; $70cc: $31 $7c $3f
    ld a, [hl-]                                   ; $70cf: $3a
    push bc                                       ; $70d0: $c5
    ld l, c                                       ; $70d1: $69
    inc c                                         ; $70d2: $0c
    dec c                                         ; $70d3: $0d
    inc h                                         ; $70d4: $24
    or $3f                                        ; $70d5: $f6 $3f
    ld a, e                                       ; $70d7: $7b
    sbc h                                         ; $70d8: $9c
    ld d, h                                       ; $70d9: $54
    ld c, h                                       ; $70da: $4c
    and l                                         ; $70db: $a5
    ld hl, sp+$77                                 ; $70dc: $f8 $77
    jp z, Jump_06d_6352                           ; $70de: $ca $52 $63

    ld [hl], b                                    ; $70e1: $70
    ld hl, $85c7                                  ; $70e2: $21 $c7 $85
    ret z                                         ; $70e5: $c8

    ld h, d                                       ; $70e6: $62
    ld hl, sp-$57                                 ; $70e7: $f8 $a9
    ld h, a                                       ; $70e9: $67
    sub l                                         ; $70ea: $95
    ld c, c                                       ; $70eb: $49
    dec bc                                        ; $70ec: $0b
    or a                                          ; $70ed: $b7
    ld c, [hl]                                    ; $70ee: $4e
    ld l, c                                       ; $70ef: $69
    ld h, l                                       ; $70f0: $65
    pop af                                        ; $70f1: $f1
    add sp, $76                                   ; $70f2: $e8 $76
    nop                                           ; $70f4: $00
    rst $20                                       ; $70f5: $e7
    ld e, c                                       ; $70f6: $59
    ld h, h                                       ; $70f7: $64
    call z, $fa71                                 ; $70f8: $cc $71 $fa
    rra                                           ; $70fb: $1f
    ld a, c                                       ; $70fc: $79
    ld d, [hl]                                    ; $70fd: $56
    inc [hl]                                      ; $70fe: $34
    sub b                                         ; $70ff: $90
    or b                                          ; $7100: $b0
    rlca                                          ; $7101: $07
    ld [de], a                                    ; $7102: $12
    xor l                                         ; $7103: $ad
    ld [c], a                                     ; $7104: $e2
    ld sp, $e754                                  ; $7105: $31 $54 $e7
    or $ca                                        ; $7108: $f6 $ca
    ld [c], a                                     ; $710a: $e2
    reti                                          ; $710b: $d9


    ld a, [$6249]                                 ; $710c: $fa $49 $62
    inc hl                                        ; $710f: $23
    or $26                                        ; $7110: $f6 $26
    ld d, a                                       ; $7112: $57
    sbc a                                         ; $7113: $9f
    cp b                                          ; $7114: $b8
    ld c, a                                       ; $7115: $4f
    dec a                                         ; $7116: $3d
    dec hl                                        ; $7117: $2b
    or h                                          ; $7118: $b4
    ld [hl], h                                    ; $7119: $74
    ld l, e                                       ; $711a: $6b
    ld d, h                                       ; $711b: $54
    ret nc                                        ; $711c: $d0

    dec sp                                        ; $711d: $3b
    db $eb                                        ; $711e: $eb
    cp b                                          ; $711f: $b8
    ldh a, [rLY]                                  ; $7120: $f0 $44
    sbc [hl]                                      ; $7122: $9e
    dec d                                         ; $7123: $15
    ld sp, hl                                     ; $7124: $f9
    ld b, [hl]                                    ; $7125: $46
    ld l, a                                       ; $7126: $6f
    call c, Call_000_3fd3                         ; $7127: $dc $d3 $3f
    ld l, h                                       ; $712a: $6c
    ld h, l                                       ; $712b: $65
    ld sp, $3b74                                  ; $712c: $31 $74 $3b
    nop                                           ; $712f: $00
    sbc a                                         ; $7130: $9f
    cp e                                          ; $7131: $bb
    ld c, [hl]                                    ; $7132: $4e
    inc bc                                        ; $7133: $03
    jp hl                                         ; $7134: $e9


    db $ec                                        ; $7135: $ec
    adc l                                         ; $7136: $8d
    scf                                           ; $7137: $37
    ld c, $37                                     ; $7138: $0e $37
    ld b, a                                       ; $713a: $47
    sbc [hl]                                      ; $713b: $9e
    dec d                                         ; $713c: $15
    sub d                                         ; $713d: $92
    dec hl                                        ; $713e: $2b
    ld h, d                                       ; $713f: $62
    db $eb                                        ; $7140: $eb
    ld sp, hl                                     ; $7141: $f9
    ld [$06db], a                                 ; $7142: $ea $db $06
    add hl, sp                                    ; $7145: $39
    add d                                         ; $7146: $82
    ld [hl-], a                                   ; $7147: $32
    ld d, l                                       ; $7148: $55
    ld l, c                                       ; $7149: $69
    ld e, h                                       ; $714a: $5c
    sbc l                                         ; $714b: $9d
    add [hl]                                      ; $714c: $86
    ldh a, [$b6]                                  ; $714d: $f0 $b6
    or d                                          ; $714f: $b2
    ld a, b                                       ; $7150: $78
    ld [$73b9], a                                 ; $7151: $ea $b9 $73
    dec sp                                        ; $7154: $3b
    nop                                           ; $7155: $00
    ld d, a                                       ; $7156: $57
    inc c                                         ; $7157: $0c
    ld b, d                                       ; $7158: $42
    ld hl, $b4ab                                  ; $7159: $21 $ab $b4
    ldh [$3a], a                                  ; $715c: $e0 $3a
    and [hl]                                      ; $715e: $a6
    add [hl]                                      ; $715f: $86
    ldh a, [$b6]                                  ; $7160: $f0 $b6
    or d                                          ; $7162: $b2
    ld a, b                                       ; $7163: $78
    or [hl]                                       ; $7164: $b6
    ld a, [hl]                                    ; $7165: $7e
    add $fe                                       ; $7166: $c6 $fe
    ld sp, hl                                     ; $7168: $f9
    db $fd                                        ; $7169: $fd
    inc [hl]                                      ; $716a: $34
    and e                                         ; $716b: $a3
    adc d                                         ; $716c: $8a
    dec e                                         ; $716d: $1d
    push af                                       ; $716e: $f5
    ld l, h                                       ; $716f: $6c
    or h                                          ; $7170: $b4
    ld de, $485d                                  ; $7171: $11 $5d $48
    ld a, [hl+]                                   ; $7174: $2a
    xor b                                         ; $7175: $a8
    ld a, b                                       ; $7176: $78
    cp [hl]                                       ; $7177: $be
    ld h, a                                       ; $7178: $67
    rst $28                                       ; $7179: $ef
    ld l, h                                       ; $717a: $6c
    sbc [hl]                                      ; $717b: $9e
    dec d                                         ; $717c: $15
    cp c                                          ; $717d: $b9
    dec e                                         ; $717e: $1d
    rra                                           ; $717f: $1f
    scf                                           ; $7180: $37
    sub b                                         ; $7181: $90
    ret c                                         ; $7182: $d8

    ccf                                           ; $7183: $3f
    ld e, l                                       ; $7184: $5d
    ld d, c                                       ; $7185: $51
    and l                                         ; $7186: $a5
    dec [hl]                                      ; $7187: $35
    cp c                                          ; $7188: $b9
    ld a, [$7dc4]                                 ; $7189: $fa $c4 $7d
    ld [$a159], a                                 ; $718c: $ea $59 $a1
    and l                                         ; $718f: $a5
    ld e, e                                       ; $7190: $5b
    and e                                         ; $7191: $a3
    ld l, a                                       ; $7192: $6f
    inc e                                         ; $7193: $1c
    sbc a                                         ; $7194: $9f
    dec sp                                        ; $7195: $3b
    ld [hl], h                                    ; $7196: $74
    ld c, a                                       ; $7197: $4f
    ld de, $8a4d                                  ; $7198: $11 $4d $8a
    db $ec                                        ; $719b: $ec
    and a                                         ; $719c: $a7
    ld [$a199], sp                                ; $719d: $08 $99 $a1
    dec d                                         ; $71a0: $15
    ld [hl], c                                    ; $71a1: $71
    push bc                                       ; $71a2: $c5
    ld [hl], l                                    ; $71a3: $75
    ld [hl], c                                    ; $71a4: $71
    ld [hl], h                                    ; $71a5: $74
    db $eb                                        ; $71a6: $eb
    ld b, a                                       ; $71a7: $47
    call z, $e4e2                                 ; $71a8: $cc $e2 $e4
    ld [$ffd9], a                                 ; $71ab: $ea $d9 $ff
    ret z                                         ; $71ae: $c8

    inc sp                                        ; $71af: $33
    xor l                                         ; $71b0: $ad
    sbc h                                         ; $71b1: $9c
    inc l                                         ; $71b2: $2c
    and [hl]                                      ; $71b3: $a6
    ld h, h                                       ; $71b4: $64
    ld e, l                                       ; $71b5: $5d
    ldh a, [rBCPD]                                ; $71b6: $f0 $69
    ld c, c                                       ; $71b8: $49
    ld d, h                                       ; $71b9: $54
    sub e                                         ; $71ba: $93
    ld l, b                                       ; $71bb: $68
    ret                                           ; $71bc: $c9


    push bc                                       ; $71bd: $c5
    inc e                                         ; $71be: $1c
    reti                                          ; $71bf: $d9


    db $10                                        ; $71c0: $10
    add [hl]                                      ; $71c1: $86
    ld c, d                                       ; $71c2: $4a
    inc h                                         ; $71c3: $24
    add l                                         ; $71c4: $85
    dec d                                         ; $71c5: $15
    ei                                            ; $71c6: $fb
    add hl, hl                                    ; $71c7: $29
    cp c                                          ; $71c8: $b9

Jump_06d_71c9:
    ld d, d                                       ; $71c9: $52

Call_06d_71ca:
    and e                                         ; $71ca: $a3
    pop hl                                        ; $71cb: $e1
    inc [hl]                                      ; $71cc: $34
    ld e, e                                       ; $71cd: $5b
    xor a                                         ; $71ce: $af
    adc h                                         ; $71cf: $8c
    sbc e                                         ; $71d0: $9b
    ld a, [hl+]                                   ; $71d1: $2a
    ld d, e                                       ; $71d2: $53
    ld b, e                                       ; $71d3: $43
    ld a, b                                       ; $71d4: $78

Jump_06d_71d5:
    ld e, e                                       ; $71d5: $5b
    ld e, c                                       ; $71d6: $59
    inc a                                         ; $71d7: $3c
    add d                                         ; $71d8: $82
    ld [hl-], a                                   ; $71d9: $32
    push af                                       ; $71da: $f5
    ccf                                           ; $71db: $3f
    xor c                                         ; $71dc: $a9
    call nc, $eb08                                ; $71dd: $d4 $08 $eb
    ld e, $dc                                     ; $71e0: $1e $dc
    db $10                                        ; $71e2: $10
    add [hl]                                      ; $71e3: $86
    ld [c], a                                     ; $71e4: $e2
    ei                                            ; $71e5: $fb
    db $e4                                        ; $71e6: $e4
    add e                                         ; $71e7: $83
    sbc a                                         ; $71e8: $9f
    ret c                                         ; $71e9: $d8

    ld h, a                                       ; $71ea: $67
    dec sp                                        ; $71eb: $3b
    nop                                           ; $71ec: $00
    rst $20                                       ; $71ed: $e7
    xor c                                         ; $71ee: $a9
    sub e                                         ; $71ef: $93
    cp $ab                                        ; $71f0: $fe $ab
    rst $38                                       ; $71f2: $ff
    sub c                                         ; $71f3: $91
    ld h, a                                       ; $71f4: $67
    cp d                                          ; $71f5: $ba
    push af                                       ; $71f6: $f5
    dec a                                         ; $71f7: $3d
    adc l                                         ; $71f8: $8d
    db $d3                                        ; $71f9: $d3
    ccf                                           ; $71fa: $3f
    ld d, [hl]                                    ; $71fb: $56
    and l                                         ; $71fc: $a5
    dec l                                         ; $71fd: $2d
    ld e, b                                       ; $71fe: $58
    ld b, e                                       ; $71ff: $43
    dec de                                        ; $7200: $1b
    pop hl                                        ; $7201: $e1
    ld c, [hl]                                    ; $7202: $4e
    rlca                                          ; $7203: $07
    ld l, l                                       ; $7204: $6d
    ld [$f343], sp                                ; $7205: $08 $43 $f3
    xor b                                         ; $7208: $a8
    and d                                         ; $7209: $a2
    ld [de], a                                    ; $720a: $12
    adc d                                         ; $720b: $8a
    db $ed                                        ; $720c: $ed
    nop                                           ; $720d: $00
    rst $28                                       ; $720e: $ef
    xor c                                         ; $720f: $a9
    ld c, [hl]                                    ; $7210: $4e
    di                                            ; $7211: $f3
    rst $28                                       ; $7212: $ef
    db $f4                                        ; $7213: $f4
    ld b, d                                       ; $7214: $42
    dec a                                         ; $7215: $3d
    xor d                                         ; $7216: $aa
    add hl, bc                                    ; $7217: $09
    sub l                                         ; $7218: $95
    sub e                                         ; $7219: $93
    inc hl                                        ; $721a: $23
    or [hl]                                       ; $721b: $b6
    cp [hl]                                       ; $721c: $be
    ld e, [hl]                                    ; $721d: $5e
    rst $00                                       ; $721e: $c7
    ld e, l                                       ; $721f: $5d
    inc a                                         ; $7220: $3c
    ld d, [hl]                                    ; $7221: $56
    ld c, l                                       ; $7222: $4d
    jp nz, Jump_06d_6e65                          ; $7223: $c2 $65 $6e

    or h                                          ; $7226: $b4
    ld l, h                                       ; $7227: $6c
    ld e, $6d                                     ; $7228: $1e $6d
    ld l, b                                       ; $722a: $68
    inc c                                         ; $722b: $0c
    ld h, c                                       ; $722c: $61
    jr nc, jr_06d_7266                            ; $722d: $30 $37

    cp d                                          ; $722f: $ba
    dec e                                         ; $7230: $1d
    rra                                           ; $7231: $1f
    rst $20                                       ; $7232: $e7
    db $db                                        ; $7233: $db
    inc l                                         ; $7234: $2c
    dec de                                        ; $7235: $1b
    ld l, l                                       ; $7236: $6d
    push hl                                       ; $7237: $e5
    adc b                                         ; $7238: $88
    xor l                                         ; $7239: $ad

jr_06d_723a:
    xor a                                         ; $723a: $af
    rst $10                                       ; $723b: $d7
    ld [hl], c                                    ; $723c: $71
    rla                                           ; $723d: $17
    adc a                                         ; $723e: $8f
    ld [hl], l                                    ; $723f: $75
    sbc c                                         ; $7240: $99
    dec de                                        ; $7241: $1b
    db $dd                                        ; $7242: $dd
    ld c, $1f                                     ; $7243: $0e $1f
    db $fd                                        ; $7245: $fd
    ld c, [hl]                                    ; $7246: $4e
    jp $9d51                                      ; $7247: $c3 $51 $9d


    ld b, d                                       ; $724a: $42
    ld a, [de]                                    ; $724b: $1a
    db $fd                                        ; $724c: $fd
    adc d                                         ; $724d: $8a
    or b                                          ; $724e: $b0
    ld b, $12                                     ; $724f: $06 $12
    ei                                            ; $7251: $fb
    rra                                           ; $7252: $1f
    ld a, c                                       ; $7253: $79
    sub $3f                                       ; $7254: $d6 $3f
    ld d, [hl]                                    ; $7256: $56
    ld b, l                                       ; $7257: $45
    cp b                                          ; $7258: $b8
    ld c, l                                       ; $7259: $4d
    db $eb                                        ; $725a: $eb
    ld d, d                                       ; $725b: $52
    dec e                                         ; $725c: $1d
    ld b, c                                       ; $725d: $41
    xor a                                         ; $725e: $af
    jp nz, $a7ec                                  ; $725f: $c2 $ec $a7

    db $ed                                        ; $7262: $ed
    nop                                           ; $7263: $00
    scf                                           ; $7264: $37
    ld b, a                                       ; $7265: $47

jr_06d_7266:
    sbc [hl]                                      ; $7266: $9e
    ld e, l                                       ; $7267: $5d
    ld [$d9cd], a                                 ; $7268: $ea $cd $d9
    inc hl                                        ; $726b: $23
    dec de                                        ; $726c: $1b
    jp nz, Jump_06d_5450                          ; $726d: $c2 $50 $54

Jump_06d_7270:
    jp nz, $d2e1                                  ; $7270: $c2 $e1 $d2

    ld bc, $4737                                  ; $7273: $01 $37 $47
    sbc [hl]                                      ; $7276: $9e
    ld l, c                                       ; $7277: $69
    rst $38                                       ; $7278: $ff
    cp a                                          ; $7279: $bf
    db $d3                                        ; $727a: $d3
    sub b                                         ; $727b: $90
    and $69                                       ; $727c: $e6 $69
    adc l                                         ; $727e: $8d
    db $e3                                        ; $727f: $e3
    ld b, a                                       ; $7280: $47
    dec sp                                        ; $7281: $3b
    jp c, Jump_06d_7270                           ; $7282: $da $70 $72

    inc e                                         ; $7285: $1c
    ld l, l                                       ; $7286: $6d
    jr nz, jr_06d_723a                            ; $7287: $20 $b1

    sub c                                         ; $7289: $91
    ld l, [hl]                                    ; $728a: $6e
    or h                                          ; $728b: $b4
    add c                                         ; $728c: $81
    add h                                         ; $728d: $84
    db $ec                                        ; $728e: $ec
    and a                                         ; $728f: $a7
    and d                                         ; $7290: $a2
    ld sp, $86ba                                  ; $7291: $31 $ba $86
    inc a                                         ; $7294: $3c
    adc l                                         ; $7295: $8d
    ld l, [hl]                                    ; $7296: $6e
    rlca                                          ; $7297: $07
    scf                                           ; $7298: $37
    or c                                          ; $7299: $b1
    ld c, d                                       ; $729a: $4a
    daa                                           ; $729b: $27
    inc e                                         ; $729c: $1c
    jp $03a5                                      ; $729d: $c3 $a5 $03


    sbc a                                         ; $72a0: $9f
    dec h                                         ; $72a1: $25
    ccf                                           ; $72a2: $3f
    dec d                                         ; $72a3: $15
    jp nc, $ea09                                  ; $72a4: $d2 $09 $ea

    and b                                         ; $72a7: $a0
    ld h, l                                       ; $72a8: $65
    ld a, [hl+]                                   ; $72a9: $2a
    cp $4b                                        ; $72aa: $fe $4b
    cp c                                          ; $72ac: $b9
    ld a, [$791f]                                 ; $72ad: $fa $1f $79
    and [hl]                                      ; $72b0: $a6
    db $db                                        ; $72b1: $db
    ld bc, $7b97                                  ; $72b2: $01 $97 $7b
    dec l                                         ; $72b5: $2d
    db $ed                                        ; $72b6: $ed
    ld h, d                                       ; $72b7: $62
    ld e, d                                       ; $72b8: $5a
    rst $18                                       ; $72b9: $df
    dec e                                         ; $72ba: $1d
    di                                            ; $72bb: $f3
    add sp, -$4a                                  ; $72bc: $e8 $b6
    ld l, l                                       ; $72be: $6d
    push hl                                       ; $72bf: $e5
    adc [hl]                                      ; $72c0: $8e
    and $df                                       ; $72c1: $e6 $df
    add hl, hl                                    ; $72c3: $29
    dec [hl]                                      ; $72c4: $35
    ld b, $17                                     ; $72c5: $06 $17
    add c                                         ; $72c7: $81
    or h                                          ; $72c8: $b4
    ld l, $f5                                     ; $72c9: $2e $f5
    ld a, [de]                                    ; $72cb: $1a
    db $eb                                        ; $72cc: $eb
    sub a                                         ; $72cd: $97
    ld a, [hl+]                                   ; $72ce: $2a
    dec c                                         ; $72cf: $0d
    xor [hl]                                      ; $72d0: $ae
    add c                                         ; $72d1: $81
    call nz, $a9de                                ; $72d2: $c4 $de $a9
    db $fd                                        ; $72d5: $fd
    di                                            ; $72d6: $f3
    ld [hl], $b5                                  ; $72d7: $36 $b5
    call c, $c551                                 ; $72d9: $dc $51 $c5
    xor d                                         ; $72dc: $aa
    ld c, a                                       ; $72dd: $4f
    add [hl]                                      ; $72de: $86
    inc e                                         ; $72df: $1c
    ld e, c                                       ; $72e0: $59
    inc [hl]                                      ; $72e1: $34
    rst $08                                       ; $72e2: $cf
    adc d                                         ; $72e3: $8a
    call c, $9e7a                                 ; $72e4: $dc $7a $9e
    sbc d                                         ; $72e7: $9a
    ld a, a                                       ; $72e8: $7f
    and a                                         ; $72e9: $a7

Call_06d_72ea:
    pop hl                                        ; $72ea: $e1
    xor b                                         ; $72eb: $a8
    ld c, [hl]                                    ; $72ec: $4e
    sbc c                                         ; $72ed: $99
    and e                                         ; $72ee: $a3
    pop bc                                        ; $72ef: $c1
    ld l, $1d                                     ; $72f0: $2e $1d
    rra                                           ; $72f2: $1f
    scf                                           ; $72f3: $37
    or h                                          ; $72f4: $b4
    ld de, $74ee                                  ; $72f5: $11 $ee $74
    add sp, -$7b                                  ; $72f8: $e8 $85
    sbc $38                                       ; $72fa: $de $38
    rst $38                                       ; $72fc: $ff
    ld a, h                                       ; $72fd: $7c
    dec sp                                        ; $72fe: $3b
    nop                                           ; $72ff: $00
    sbc a                                         ; $7300: $9f
    and h                                         ; $7301: $a4
    push bc                                       ; $7302: $c5
    jr c, jr_06d_737f                             ; $7303: $38 $7a

    xor c                                         ; $7305: $a9
    rst $20                                       ; $7306: $e7
    xor c                                         ; $7307: $a9
    sub e                                         ; $7308: $93
    cp $ab                                        ; $7309: $fe $ab
    ret c                                         ; $730b: $d8

    ld c, a                                       ; $730c: $4f
    ret                                           ; $730d: $c9


    and c                                         ; $730e: $a1
    ld [hl], d                                    ; $730f: $72
    sub [hl]                                      ; $7310: $96
    ld h, d                                       ; $7311: $62
    dec sp                                        ; $7312: $3b
    nop                                           ; $7313: $00
    rst $20                                       ; $7314: $e7
    ld a, [de]                                    ; $7315: $1a
    daa                                           ; $7316: $27
    dec d                                         ; $7317: $15
    add c                                         ; $7318: $81
    or h                                          ; $7319: $b4
    ld a, [hl+]                                   ; $731a: $2a
    ld c, $ae                                     ; $731b: $0e $ae
    ld a, b                                       ; $731d: $78
    inc c                                         ; $731e: $0c
    cp d                                          ; $731f: $ba
    push af                                       ; $7320: $f5
    and e                                         ; $7321: $a3
    rst $18                                       ; $7322: $df
    xor c                                         ; $7323: $a9
    sbc h                                         ; $7324: $9c
    xor h                                         ; $7325: $ac
    inc a                                         ; $7326: $3c
    and l                                         ; $7327: $a5
    ld d, l                                       ; $7328: $55
    rst $00                                       ; $7329: $c7
    xor $74                                       ; $732a: $ee $74
    ld b, d                                       ; $732c: $42
    add e                                         ; $732d: $83
    push de                                       ; $732e: $d5
    and e                                         ; $732f: $a3
    ld a, c                                       ; $7330: $79
    cp $a8                                        ; $7331: $fe $a8
    ld [hl-], a                                   ; $7333: $32
    adc e                                         ; $7334: $8b
    pop de                                        ; $7335: $d1
    db $10                                        ; $7336: $10
    add [hl]                                      ; $7337: $86
    ld [hl-], a                                   ; $7338: $32
    ld b, a                                       ; $7339: $47
    add e                                         ; $733a: $83
    dec [hl]                                      ; $733b: $35
    ld c, a                                       ; $733c: $4f
    inc bc                                        ; $733d: $03
    add hl, bc                                    ; $733e: $09
    ld d, $67                                     ; $733f: $16 $67
    dec sp                                        ; $7341: $3b
    nop                                           ; $7342: $00
    sub a                                         ; $7343: $97
    xor e                                         ; $7344: $ab
    call z, $f462                                 ; $7345: $cc $62 $f4
    ld b, d                                       ; $7348: $42
    rra                                           ; $7349: $1f
    ld de, $5c8d                                  ; $734a: $11 $8d $5c
    ld e, c                                       ; $734d: $59
    inc a                                         ; $734e: $3c
    push af                                       ; $734f: $f5
    ld l, h                                       ; $7350: $6c
    jr c, jr_06d_7379                             ; $7351: $38 $26

    rst $20                                       ; $7353: $e7
    sub c                                         ; $7354: $91
    xor l                                         ; $7355: $ad
    sbc a                                         ; $7356: $9f
    pop de                                        ; $7357: $d1
    adc l                                         ; $7358: $8d
    sub $b3                                       ; $7359: $d6 $b3
    res 1, d                                      ; $735b: $cb $8a
    ld h, $d7                                     ; $735d: $26 $d7
    dec a                                         ; $735f: $3d
    sbc l                                         ; $7360: $9d
    ld h, b                                       ; $7361: $60
    add d                                         ; $7362: $82
    ld a, [hl]                                    ; $7363: $7e
    call nz, $daff                                ; $7364: $c4 $ff $da
    ld [hl], a                                    ; $7367: $77
    ld a, [bc]                                    ; $7368: $0a
    ld a, [$1ba7]                                 ; $7369: $fa $a7 $1b
    db $ed                                        ; $736c: $ed
    ld a, a                                       ; $736d: $7f
    db $e4                                        ; $736e: $e4
    ld e, c                                       ; $736f: $59
    dec a                                         ; $7370: $3d
    jp $ba59                                      ; $7371: $c3 $59 $ba


    dec e                                         ; $7374: $1d
    rra                                           ; $7375: $1f
    db $fd                                        ; $7376: $fd
    ld c, [hl]                                    ; $7377: $4e
    dec e                                         ; $7378: $1d

jr_06d_7379:
    db $eb                                        ; $7379: $eb
    cp c                                          ; $737a: $b9
    ld l, [hl]                                    ; $737b: $6e
    pop de                                        ; $737c: $d1
    dec d                                         ; $737d: $15
    add c                                         ; $737e: $81

jr_06d_737f:
    or h                                          ; $737f: $b4
    ld l, $1d                                     ; $7380: $2e $1d
    rra                                           ; $7382: $1f
    pop de                                        ; $7383: $d1
    sub l                                         ; $7384: $95
    jp hl                                         ; $7385: $e9


    jp nc, $9f01                                  ; $7386: $d2 $01 $9f

    dec h                                         ; $7389: $25
    ccf                                           ; $738a: $3f
    dec d                                         ; $738b: $15
    jp nc, $fa09                                  ; $738c: $d2 $09 $fa

    rra                                           ; $738f: $1f
    ld a, c                                       ; $7390: $79
    and [hl]                                      ; $7391: $a6
    dec c                                         ; $7392: $0d
    rst $00                                       ; $7393: $c7
    db $d3                                        ; $7394: $d3
    push af                                       ; $7395: $f5
    cp a                                          ; $7396: $bf
    ld c, h                                       ; $7397: $4c
    ld d, b                                       ; $7398: $50
    rlca                                          ; $7399: $07
    xor l                                         ; $739a: $ad
    ld l, b                                       ; $739b: $68
    dec b                                         ; $739c: $05
    ld [de], a                                    ; $739d: $12
    ld e, l                                       ; $739e: $5d

jr_06d_739f:
    inc bc                                        ; $739f: $03
    ld l, c                                       ; $73a0: $69
    ld sp, $6e8e                                  ; $73a1: $31 $8e $6e
    rlca                                          ; $73a4: $07
    xor a                                         ; $73a5: $af

jr_06d_73a6:
    rla                                           ; $73a6: $17
    add c                                         ; $73a7: $81
    or h                                          ; $73a8: $b4
    or [hl]                                       ; $73a9: $b6
    cp [hl]                                       ; $73aa: $be
    or e                                          ; $73ab: $b3
    ld [bc], a                                    ; $73ac: $02
    adc c                                         ; $73ad: $89
    xor [hl]                                      ; $73ae: $ae
    sbc [hl]                                      ; $73af: $9e
    sbc l                                         ; $73b0: $9d
    ld e, l                                       ; $73b1: $5d
    inc a                                         ; $73b2: $3c
    ld e, d                                       ; $73b3: $5a
    ld [$7169], sp                                ; $73b4: $08 $69 $71
    or h                                          ; $73b7: $b4
    ld hl, $bd0c                                  ; $73b8: $21 $0c $bd
    add [hl]                                      ; $73bb: $86
    ld e, l                                       ; $73bc: $5d
    inc [hl]                                      ; $73bd: $34
    ccf                                           ; $73be: $3f

Call_06d_73bf:
    sub l                                         ; $73bf: $95
    cp l                                          ; $73c0: $bd
    ld h, d                                       ; $73c1: $62
    db $10                                        ; $73c2: $10
    ld a, [bc]                                    ; $73c3: $0a
    cp c                                          ; $73c4: $b9
    dec e                                         ; $73c5: $1d
    scf                                           ; $73c6: $37
    add e                                         ; $73c7: $83
    dec hl                                        ; $73c8: $2b
    add d                                         ; $73c9: $82
    pop af                                        ; $73ca: $f1
    ld a, e                                       ; $73cb: $7b
    ld h, h                                       ; $73cc: $64
    ccf                                           ; $73cd: $3f
    add d                                         ; $73ce: $82
    cp d                                          ; $73cf: $ba
    sub l                                         ; $73d0: $95
    push bc                                       ; $73d1: $c5
    ld l, b                                       ; $73d2: $68
    jr nz, jr_06d_73a6                            ; $73d3: $20 $d1

    sub [hl]                                      ; $73d5: $96
    add a                                         ; $73d6: $87
    and b                                         ; $73d7: $a0
    rla                                           ; $73d8: $17
    adc d                                         ; $73d9: $8a
    ld b, b                                       ; $73da: $40
    ld e, d                                       ; $73db: $5a
    dec c                                         ; $73dc: $0d
    inc h                                         ; $73dd: $24
    halt                                          ; $73de: $76
    ld a, [$fcfd]                                 ; $73df: $fa $fd $fc
    jp hl                                         ; $73e2: $e9


    ld a, d                                       ; $73e3: $7a
    dec c                                         ; $73e4: $0d
    cp e                                          ; $73e5: $bb
    ld l, b                                       ; $73e6: $68
    ld a, [hl]                                    ; $73e7: $7e
    xor d                                         ; $73e8: $aa
    ld e, a                                       ; $73e9: $5f
    xor d                                         ; $73ea: $aa
    ld l, h                                       ; $73eb: $6c
    jr nz, jr_06d_739f                            ; $73ec: $20 $b1

    call c, $a5a9                                 ; $73ee: $dc $a9 $a5
    ld b, [hl]                                    ; $73f1: $46
    ret c                                         ; $73f2: $d8

    add d                                         ; $73f3: $82
    db $db                                        ; $73f4: $db
    ld c, $9f                                     ; $73f5: $0e $9f
    sbc d                                         ; $73f7: $9a
    sbc c                                         ; $73f8: $99
    ld [hl], l                                    ; $73f9: $75
    db $db                                        ; $73fa: $db
    or [hl]                                       ; $73fb: $b6
    inc bc                                        ; $73fc: $03
    sub a                                         ; $73fd: $97
    push bc                                       ; $73fe: $c5
    add d                                         ; $73ff: $82
    ld [hl-], a                                   ; $7400: $32
    set 1, c                                      ; $7401: $cb $c9
    pop de                                        ; $7403: $d1
    cp b                                          ; $7404: $b8
    ld l, $f5                                     ; $7405: $2e $f5
    ld a, [c]                                     ; $7407: $f2
    ld l, c                                       ; $7408: $69
    inc c                                         ; $7409: $0c
    db $fd                                        ; $740a: $fd
    adc a                                         ; $740b: $8f
    inc a                                         ; $740c: $3c
    dec hl                                        ; $740d: $2b
    dec [hl]                                      ; $740e: $35
    ld b, $97                                     ; $740f: $06 $97
    ld e, c                                       ; $7411: $59
    ld a, [de]                                    ; $7412: $1a
    or e                                          ; $7413: $b3
    add h                                         ; $7414: $84
    sbc a                                         ; $7415: $9f
    ld c, e                                       ; $7416: $4b
    rlca                                          ; $7417: $07
    rra                                           ; $7418: $1f
    scf                                           ; $7419: $37
    sub b                                         ; $741a: $90
    ret c                                         ; $741b: $d8

    rst $38                                       ; $741c: $ff
    ret z                                         ; $741d: $c8

    inc sp                                        ; $741e: $33
    dec l                                         ; $741f: $2d
    dec [hl]                                      ; $7420: $35
    ld [c], a                                     ; $7421: $e2
    rrca                                          ; $7422: $0f
    ld d, a                                       ; $7423: $57
    ld de, $336e                                  ; $7424: $11 $6e $33
    ei                                            ; $7427: $fb
    xor c                                         ; $7428: $a9
    ld l, b                                       ; $7429: $68
    inc c                                         ; $742a: $0c
    push af                                       ; $742b: $f5
    xor b                                         ; $742c: $a8
    add h                                         ; $742d: $84
    ld b, e                                       ; $742e: $43
    ld d, c                                       ; $742f: $51
    xor d                                         ; $7430: $aa
    and d                                         ; $7431: $a2
    ld [c], a                                     ; $7432: $e2
    ld sp, $71bc                                  ; $7433: $31 $bc $71
    nop                                           ; $7436: $00
    ld l, a                                       ; $7437: $6f
    pop de                                        ; $7438: $d1
    add hl, bc                                    ; $7439: $09
    jp z, Jump_06d_6a54                           ; $743a: $ca $54 $6a

    jr nz, jr_06d_7490                            ; $743d: $20 $51

    xor [hl]                                      ; $743f: $ae
    and d                                         ; $7440: $a2
    jp z, $462c                                   ; $7441: $ca $2c $46

    or a                                          ; $7444: $b7
    ld l, l                                       ; $7445: $6d
    dec sp                                        ; $7446: $3b
    nop                                           ; $7447: $00
    scf                                           ; $7448: $37
    sub $7e                                       ; $7449: $d6 $7e
    sub [hl]                                      ; $744b: $96
    push hl                                       ; $744c: $e5
    sbc d                                         ; $744d: $9a
    ld c, e                                       ; $744e: $4b
    dec a                                         ; $744f: $3d
    rst $10                                       ; $7450: $d7
    adc b                                         ; $7451: $88
    ld e, [hl]                                    ; $7452: $5e
    ld l, b                                       ; $7453: $68
    ld [hl], d                                    ; $7454: $72
    add sp, -$36                                  ; $7455: $e8 $ca
    ld [hl+], a                                   ; $7457: $22
    jp $dfc5                                      ; $7458: $c3 $c5 $df


    xor c                                         ; $745b: $a9
    ld c, e                                       ; $745c: $4b
    dec hl                                        ; $745d: $2b
    ld c, [hl]                                    ; $745e: $4e
    push af                                       ; $745f: $f5
    add d                                         ; $7460: $82
    dec l                                         ; $7461: $2d
    ld l, h                                       ; $7462: $6c
    ld a, l                                       ; $7463: $7d
    ld a, [$86a9]                                 ; $7464: $fa $a9 $86
    sub e                                         ; $7467: $93
    db $e3                                        ; $7468: $e3
    ld l, b                                       ; $7469: $68
    ld d, c                                       ; $746a: $51
    rst $00                                       ; $746b: $c7
    inc a                                         ; $746c: $3c
    jp c, $8610                                   ; $746d: $da $10 $86

    and d                                         ; $7470: $a2
    rst $28                                       ; $7471: $ef
    jp c, $ad12                                   ; $7472: $da $12 $ad

    ld a, h                                       ; $7475: $7c
    adc a                                         ; $7476: $8f
    dec l                                         ; $7477: $2d
    ld [$7aca], sp                                ; $7478: $08 $ca $7a
    ld b, [hl]                                    ; $747b: $46
    and $8b                                       ; $747c: $e6 $8b
    cp a                                          ; $747e: $bf
    or e                                          ; $747f: $b3
    push af                                       ; $7480: $f5
    inc sp                                        ; $7481: $33
    ld h, [hl]                                    ; $7482: $66
    pop af                                        ; $7483: $f1
    ld d, h                                       ; $7484: $54
    jp nc, $6f22                                  ; $7485: $d2 $22 $6f

    and e                                         ; $7488: $a3
    add c                                         ; $7489: $81
    call nz, $835e                                ; $748a: $c4 $5e $83
    add a                                         ; $748d: $87
    ld h, e                                       ; $748e: $63
    xor a                                         ; $748f: $af

jr_06d_7490:
    adc a                                         ; $7490: $8f
    inc de                                        ; $7491: $13
    add hl, de                                    ; $7492: $19
    ld a, a                                       ; $7493: $7f
    ld a, [hl+]                                   ; $7494: $2a
    ld b, d                                       ; $7495: $42
    and e                                         ; $7496: $a3
    ld e, h                                       ; $7497: $5c
    or b                                          ; $7498: $b0
    ldh [rOCPS], a                                ; $7499: $e0 $6a
    ld b, d                                       ; $749b: $42
    pop af                                        ; $749c: $f1
    ld a, l                                       ; $749d: $7d
    ld a, [c]                                     ; $749e: $f2
    jr z, jr_06d_74bd                             ; $749f: $28 $1c

    or d                                          ; $74a1: $b2
    ld hl, sp-$49                                 ; $74a2: $f8 $b7
    db $db                                        ; $74a4: $db
    or [hl]                                       ; $74a5: $b6
    dec [hl]                                      ; $74a6: $35
    add h                                         ; $74a7: $84
    and c                                         ; $74a8: $a1
    ei                                            ; $74a9: $fb
    ld [hl], d                                    ; $74aa: $72
    ld hl, $a8ac                                  ; $74ab: $21 $ac $a8
    ld h, d                                       ; $74ae: $62
    ld b, a                                       ; $74af: $47
    db $fd                                        ; $74b0: $fd
    ld l, b                                       ; $74b1: $68
    ld b, e                                       ; $74b2: $43
    and $25                                       ; $74b3: $e6 $25
    ld b, a                                       ; $74b5: $47
    or a                                          ; $74b6: $b7
    inc bc                                        ; $74b7: $03
    sub a                                         ; $74b8: $97
    xor e                                         ; $74b9: $ab

Jump_06d_74ba:
    ret c                                         ; $74ba: $d8

    ld d, c                                       ; $74bb: $51
    ccf                                           ; $74bc: $3f

jr_06d_74bd:
    jp c, Jump_06d_7990                           ; $74bd: $da $90 $79

    ret                                           ; $74c0: $c9


    pop de                                        ; $74c1: $d1
    ld c, e                                       ; $74c2: $4b
    rlca                                          ; $74c3: $07
    rst $20                                       ; $74c4: $e7
    ld [de], a                                    ; $74c5: $12
    sub a                                         ; $74c6: $97
    ld c, $97                                     ; $74c7: $0e $97
    ld c, a                                       ; $74c9: $4f
    ld h, e                                       ; $74ca: $63
    add sp, $7f                                   ; $74cb: $e8 $7f
    or $48                                        ; $74cd: $f6 $48
    rst $10                                       ; $74cf: $d7
    db $10                                        ; $74d0: $10
    add [hl]                                      ; $74d1: $86
    ld a, [hl+]                                   ; $74d2: $2a
    sub e                                         ; $74d3: $93
    sub $8f                                       ; $74d4: $d6 $8f
    cp c                                          ; $74d6: $b9
    dec d                                         ; $74d7: $15
    rst $28                                       ; $74d8: $ef
    or c                                          ; $74d9: $b1
    dec [hl]                                      ; $74da: $35
    cp d                                          ; $74db: $ba
    dec e                                         ; $74dc: $1d
    rst $20                                       ; $74dd: $e7
    xor c                                         ; $74de: $a9
    ld sp, hl                                     ; $74df: $f9
    ld [hl], a                                    ; $74e0: $77
    ld a, [$549f]                                 ; $74e1: $fa $9f $54
    add a                                         ; $74e4: $87
    and l                                         ; $74e5: $a5
    push bc                                       ; $74e6: $c5
    add hl, hl                                    ; $74e7: $29
    ld sp, $5847                                  ; $74e8: $31 $47 $58
    sub a                                         ; $74eb: $97
    ld [$ea5c], a                                 ; $74ec: $ea $5c $ea
    db $d3                                        ; $74ef: $d3
    ld c, a                                       ; $74f0: $4f

Jump_06d_74f1:
    dec [hl]                                      ; $74f1: $35
    sbc h                                         ; $74f2: $9c
    inc e                                         ; $74f3: $1c
    ld b, a                                       ; $74f4: $47
    adc e                                         ; $74f5: $8b
    ld a, [hl-]                                   ; $74f6: $3a
    and $d1                                       ; $74f7: $e6 $d1
    add [hl]                                      ; $74f9: $86
    jr nc, @+$16                                  ; $74fa: $30 $14

    ld a, l                                       ; $74fc: $7d
    rst $10                                       ; $74fd: $d7
    sub [hl]                                      ; $74fe: $96
    ld l, b                                       ; $74ff: $68
    push hl                                       ; $7500: $e5
    ld a, e                                       ; $7501: $7b
    ld l, h                                       ; $7502: $6c

jr_06d_7503:
    ld h, c                                       ; $7503: $61
    db $eb                                        ; $7504: $eb
    push hl                                       ; $7505: $e5
    db $d3                                        ; $7506: $d3
    jr jr_06d_7503                                ; $7507: $18 $fa

    sbc a                                         ; $7509: $9f
    dec a                                         ; $750a: $3d
    jp nc, $8435                                  ; $750b: $d2 $35 $84

    and c                                         ; $750e: $a1
    jp z, $f5a4                                   ; $750f: $ca $a4 $f5

    ld h, e                                       ; $7512: $63
    ld l, [hl]                                    ; $7513: $6e
    push bc                                       ; $7514: $c5
    ld a, e                                       ; $7515: $7b
    ld l, h                                       ; $7516: $6c
    adc l                                         ; $7517: $8d
    ld l, [hl]                                    ; $7518: $6e
    rlca                                          ; $7519: $07
    scf                                           ; $751a: $37
    ld b, a                                       ; $751b: $47
    sbc [hl]                                      ; $751c: $9e
    dec d                                         ; $751d: $15
    dec hl                                        ; $751e: $2b
    ld a, e                                       ; $751f: $7b
    inc [hl]                                      ; $7520: $34
    rst $38                                       ; $7521: $ff
    ld c, [hl]                                    ; $7522: $4e
    push hl                                       ; $7523: $e5
    ld h, h                                       ; $7524: $64
    push hl                                       ; $7525: $e5
    add hl, hl                                    ; $7526: $29
    xor l                                         ; $7527: $ad
    ld d, h                                       ; $7528: $54
    ld h, [hl]                                    ; $7529: $66
    add hl, sp                                    ; $752a: $39
    add hl, sp                                    ; $752b: $39
    ld a, [de]                                    ; $752c: $1a
    xor h                                         ; $752d: $ac
    ret                                           ; $752e: $c9


    push de                                       ; $752f: $d5
    ld [hl], c                                    ; $7530: $71
    ld c, l                                       ; $7531: $4d
    dec a                                         ; $7532: $3d
    dec de                                        ; $7533: $1b
    ld a, [c]                                     ; $7534: $f2
    inc b                                         ; $7535: $04
    dec hl                                        ; $7536: $2b
    ld a, d                                       ; $7537: $7a
    sbc l                                         ; $7538: $9d
    sbc $d0                                       ; $7539: $de $d0
    ld [hl], a                                    ; $753b: $77
    sub $3e                                       ; $753c: $d6 $3e
    ld a, [hl-]                                   ; $753e: $3a
    ld [hl+], a                                   ; $753f: $22
    db $ec                                        ; $7540: $ec
    ld l, a                                       ; $7541: $6f
    inc e                                         ; $7542: $1c
    rst $20                                       ; $7543: $e7
    xor c                                         ; $7544: $a9
    ld sp, hl                                     ; $7545: $f9
    adc c                                         ; $7546: $89
    db $fc                                        ; $7547: $fc
    ld b, h                                       ; $7548: $44
    cp $9d                                        ; $7549: $fe $9d
    ld l, [hl]                                    ; $754b: $6e
    db $db                                        ; $754c: $db
    ld d, [hl]                                    ; $754d: $56
    and [hl]                                      ; $754e: $a6
    and $27                                       ; $754f: $e6 $27
    ld a, [c]                                     ; $7551: $f2
    inc de                                        ; $7552: $13
    ld sp, hl                                     ; $7553: $f9
    ld [hl], a                                    ; $7554: $77
    ld a, [de]                                    ; $7555: $1a
    adc [hl]                                      ; $7556: $8e
    ld [$db74], a                                 ; $7557: $ea $74 $db
    or [hl]                                       ; $755a: $b6
    inc bc                                        ; $755b: $03
    rst $10                                       ; $755c: $d7
    cp c                                          ; $755d: $b9
    ld c, a                                       ; $755e: $4f
    dec e                                         ; $755f: $1d
    di                                            ; $7560: $f3
    ld l, b                                       ; $7561: $68
    dec e                                         ; $7562: $1d
    db $eb                                        ; $7563: $eb
    rst $10                                       ; $7564: $d7
    add hl, bc                                    ; $7565: $09
    sub l                                         ; $7566: $95
    db $e3                                        ; $7567: $e3
    and [hl]                                      ; $7568: $a6
    ld hl, $6154                                  ; $7569: $21 $54 $61
    dec c                                         ; $756c: $0d
    rst $00                                       ; $756d: $c7
    adc d                                         ; $756e: $8a
    ld b, b                                       ; $756f: $40
    ld [c], a                                     ; $7570: $e2
    adc [hl]                                      ; $7571: $8e
    ld l, d                                       ; $7572: $6a
    ld b, d                                       ; $7573: $42
    dec e                                         ; $7574: $1d
    ld c, [hl]                                    ; $7575: $4e
    dec hl                                        ; $7576: $2b
    sub b                                         ; $7577: $90
    ld d, [hl]                                    ; $7578: $56
    ld d, $63                                     ; $7579: $16 $63
    dec sp                                        ; $757b: $3b
    nop                                           ; $757c: $00
    rst $10                                       ; $757d: $d7
    sbc [hl]                                      ; $757e: $9e
    ld [hl], b                                    ; $757f: $70
    ld c, a                                       ; $7580: $4f
    jr c, @+$6a                                   ; $7581: $38 $68

    sub a                                         ; $7583: $97
    ld [$6954], a                                 ; $7584: $ea $54 $69
    dec bc                                        ; $7587: $0b
    adc l                                         ; $7588: $8d
    ld c, a                                       ; $7589: $4f
    call nz, $a227                                ; $758a: $c4 $27 $a2
    ld h, c                                       ; $758d: $61
    ld e, l                                       ; $758e: $5d
    db $fc                                        ; $758f: $fc
    sbc l                                         ; $7590: $9d
    ld l, [hl]                                    ; $7591: $6e
    db $db                                        ; $7592: $db
    halt                                          ; $7593: $76
    nop                                           ; $7594: $00
    scf                                           ; $7595: $37
    pop hl                                        ; $7596: $e1
    ld b, [hl]                                    ; $7597: $46
    dec de                                        ; $7598: $1b
    ld l, c                                       ; $7599: $69
    sbc l                                         ; $759a: $9d
    inc d                                         ; $759b: $14
    dec c                                         ; $759c: $0d
    sub l                                         ; $759d: $95
    sub e                                         ; $759e: $93
    rst $38                                       ; $759f: $ff
    inc [hl]                                      ; $75a0: $34
    ld e, l                                       ; $75a1: $5d
    ld e, c                                       ; $75a2: $59
    adc h                                         ; $75a3: $8c
    jp nc, Jump_06d_6855                          ; $75a4: $d2 $55 $68

    db $fc                                        ; $75a7: $fc
    ld d, e                                       ; $75a8: $53
    ret nc                                        ; $75a9: $d0

    ld b, b                                       ; $75aa: $40
    ld b, d                                       ; $75ab: $42
    or $d3                                        ; $75ac: $f6 $d3
    rst $38                                       ; $75ae: $ff
    ret z                                         ; $75af: $c8

    or e                                          ; $75b0: $b3
    add $f5                                       ; $75b1: $c6 $f5
    and a                                         ; $75b3: $a7
    dec [hl]                                      ; $75b4: $35
    ld l, $3f                                     ; $75b5: $2e $3f
    adc l                                         ; $75b7: $8d
    ld [hl], h                                    ; $75b8: $74
    pop hl                                        ; $75b9: $e1
    call nc, $21b3                                ; $75ba: $d4 $b3 $21
    or e                                          ; $75bd: $b3
    jp nz, $a19a                                  ; $75be: $c2 $9a $a1

    sub l                                         ; $75c1: $95
    or e                                          ; $75c2: $b3
    inc d                                         ; $75c3: $14

jr_06d_75c4:
    ld e, d                                       ; $75c4: $5a
    sub $53                                       ; $75c5: $d6 $53
    ld l, $bf                                     ; $75c7: $2e $bf
    xor h                                         ; $75c9: $ac
    ld [hl], d                                    ; $75ca: $72
    ld e, h                                       ; $75cb: $5c
    inc bc                                        ; $75cc: $03
    adc c                                         ; $75cd: $89
    xor [hl]                                      ; $75ce: $ae
    call nc, Call_06d_5c18                        ; $75cf: $d4 $18 $5c
    ld c, l                                       ; $75d2: $4d
    add sp, $4e                                   ; $75d3: $e8 $4e
    db $ec                                        ; $75d5: $ec
    ld e, $9e                                     ; $75d6: $1e $9e
    db $db                                        ; $75d8: $db
    ld bc, $5797                                  ; $75d9: $01 $97 $57
    or $a8                                        ; $75dc: $f6 $a8
    sub b                                         ; $75de: $90
    xor [hl]                                      ; $75df: $ae

jr_06d_75e0:
    add c                                         ; $75e0: $81
    call nz, $a772                                ; $75e1: $c4 $72 $a7
    ld [hl], $ff                                  ; $75e4: $36 $ff
    ld c, [hl]                                    ; $75e6: $4e
    di                                            ; $75e7: $f3
    ld l, b                                       ; $75e8: $68
    rst $38                                       ; $75e9: $ff
    set 4, b                                      ; $75ea: $cb $e0
    or [hl]                                       ; $75ec: $b6
    inc bc                                        ; $75ed: $03
    rra                                           ; $75ee: $1f
    scf                                           ; $75ef: $37
    sub b                                         ; $75f0: $90
    ret c                                         ; $75f1: $d8

    dec bc                                        ; $75f2: $0b
    ld b, l                                       ; $75f3: $45
    xor a                                         ; $75f4: $af
    db $d3                                        ; $75f5: $d3
    dec de                                        ; $75f6: $1b
    ld a, [$dace]                                 ; $75f7: $fa $ce $da

Jump_06d_75fa:
    ld b, a                                       ; $75fa: $47
    ld b, a                                       ; $75fb: $47
    add h                                         ; $75fc: $84
    db $fd                                        ; $75fd: $fd
    adc l                                         ; $75fe: $8d
    inc bc                                        ; $75ff: $03
    rst $20                                       ; $7600: $e7
    xor c                                         ; $7601: $a9
    ld sp, hl                                     ; $7602: $f9
    ld [hl], a                                    ; $7603: $77
    xor d                                         ; $7604: $aa
    ld e, h                                       ; $7605: $5c
    add d                                         ; $7606: $82
    ld a, [hl-]                                   ; $7607: $3a
    ld l, b                                       ; $7608: $68
    ld l, a                                       ; $7609: $6f
    ld h, h                                       ; $760a: $64
    add h                                         ; $760b: $84
    ld l, h                                       ; $760c: $6c
    jr nz, jr_06d_75e0                            ; $760d: $20 $d1

    ld l, d                                       ; $760f: $6a
    sub e                                         ; $7610: $93
    add h                                         ; $7611: $84
    pop bc                                        ; $7612: $c1
    ld c, a                                       ; $7613: $4f
    db $ec                                        ; $7614: $ec
    cp b                                          ; $7615: $b8
    ld [hl], h                                    ; $7616: $74
    nop                                           ; $7617: $00
    rst $28                                       ; $7618: $ef
    xor h                                         ; $7619: $ac
    ld e, l                                       ; $761a: $5d
    adc d                                         ; $761b: $8a
    cpl                                           ; $761c: $2f
    push af                                       ; $761d: $f5
    and e                                         ; $761e: $a3
    ld a, e                                       ; $761f: $7b
    or h                                          ; $7620: $b4
    ld h, d                                       ; $7621: $62
    db $fc                                        ; $7622: $fc
    rst $28                                       ; $7623: $ef
    add [hl]                                      ; $7624: $86
    dec de                                        ; $7625: $1b
    ld l, l                                       ; $7626: $6d
    ld e, $2d                                     ; $7627: $1e $2d
    dec [hl]                                      ; $7629: $35
    sub b                                         ; $762a: $90
    jr z, jr_06d_75c4                             ; $762b: $28 $97

    sbc a                                         ; $762d: $9f
    ld a, d                                       ; $762e: $7a
    xor $dc                                       ; $762f: $ee $dc
    ld c, $9f                                     ; $7631: $0e $9f
    ld b, $87                                     ; $7633: $06 $87
    bit 1, a                                      ; $7635: $cb $4f
    or a                                          ; $7637: $b7
    ld l, l                                       ; $7638: $6d
    dec hl                                        ; $7639: $2b
    ld d, l                                       ; $763a: $55
    ld c, [hl]                                    ; $763b: $4e
    or $70                                        ; $763c: $f6 $70
    ld c, a                                       ; $763e: $4f
    jr z, @-$47                                   ; $763f: $28 $b7

    inc bc                                        ; $7641: $03
    ld d, a                                       ; $7642: $57
    sbc a                                         ; $7643: $9f
    cp b                                          ; $7644: $b8
    ld a, [$55c4]                                 ; $7645: $fa $c4 $55
    sbc b                                         ; $7648: $98
    db $fd                                        ; $7649: $fd
    call nc, $db6d                                ; $764a: $d4 $6d $db
    ld a, [hl-]                                   ; $764d: $3a
    ld c, a                                       ; $764e: $4f
    call z, $b313                                 ; $764f: $cc $13 $b3
    adc e                                         ; $7652: $8b
    ld a, c                                       ; $7653: $79
    jp hl                                         ; $7654: $e9


    nop                                           ; $7655: $00
    scf                                           ; $7656: $37
    ld b, a                                       ; $7657: $47
    sbc [hl]                                      ; $7658: $9e
    push de                                       ; $7659: $d5
    di                                            ; $765a: $f3
    cp a                                          ; $765b: $bf
    ld d, b                                       ; $765c: $50
    ld h, l                                       ; $765d: $65
    sbc c                                         ; $765e: $99
    rst $38                                       ; $765f: $ff
    or h                                          ; $7660: $b4
    db $d3                                        ; $7661: $d3
    ld h, h                                       ; $7662: $64
    ld sp, $9eac                                  ; $7663: $31 $ac $9e
    dec d                                         ; $7666: $15
    dec l                                         ; $7667: $2d
    add hl, bc                                    ; $7668: $09

jr_06d_7669:
    db $eb                                        ; $7669: $eb
    ld [hl], d                                    ; $766a: $72
    dec hl                                        ; $766b: $2b
    ld [hl+], a                                   ; $766c: $22
    ei                                            ; $766d: $fb
    jp hl                                         ; $766e: $e9


    db $f4                                        ; $766f: $f4
    ld a, e                                       ; $7670: $7b
    xor [hl]                                      ; $7671: $ae
    jr c, jr_06d_7669                             ; $7672: $38 $f5

    db $d3                                        ; $7674: $d3
    ret nc                                        ; $7675: $d0

    ld b, [hl]                                    ; $7676: $46
    ld b, h                                       ; $7677: $44
    push de                                       ; $7678: $d5
    or c                                          ; $7679: $b1
    ld a, [hl]                                    ; $767a: $7e
    sub d                                         ; $767b: $92
    sub [hl]                                      ; $767c: $96
    add hl, de                                    ; $767d: $19
    rst $30                                       ; $767e: $f7
    adc d                                         ; $767f: $8a
    or b                                          ; $7680: $b0
    jp $03b6                                      ; $7681: $c3 $b6 $03


    rra                                           ; $7684: $1f
    db $fd                                        ; $7685: $fd
    adc $a5                                       ; $7686: $ce $a5
    ld a, [hl]                                    ; $7688: $7e
    cp h                                          ; $7689: $bc
    adc e                                         ; $768a: $8b
    ld a, c                                       ; $768b: $79
    jp hl                                         ; $768c: $e9


Jump_06d_768d:
    nop                                           ; $768d: $00
    scf                                           ; $768e: $37
    or b                                          ; $768f: $b0
    ldh [$2e], a                                  ; $7690: $e0 $2e
    push af                                       ; $7692: $f5
    inc a                                         ; $7693: $3c
    dec [hl]                                      ; $7694: $35
    inc [hl]                                      ; $7695: $34
    adc d                                         ; $7696: $8a
    sub [hl]                                      ; $7697: $96
    ld c, l                                       ; $7698: $4d
    sbc c                                         ; $7699: $99
    ld b, l                                       ; $769a: $45
    add $1c                                       ; $769b: $c6 $1c
    ld h, c                                       ; $769d: $61
    sbc l                                         ; $769e: $9d
    cp [hl]                                       ; $769f: $be
    or e                                          ; $76a0: $b3
    halt                                          ; $76a1: $76
    add hl, hl                                    ; $76a2: $29
    xor [hl]                                      ; $76a3: $ae
    sbc a                                         ; $76a4: $9f
    ld b, $12                                     ; $76a5: $06 $12
    adc e                                         ; $76a7: $8b
    ld b, b                                       ; $76a8: $40
    ld [c], a                                     ; $76a9: $e2
    adc [hl]                                      ; $76aa: $8e
    jp z, $8a59                                   ; $76ab: $ca $59 $8a

    ld c, e                                       ; $76ae: $4b
    rlca                                          ; $76af: $07
    sbc a                                         ; $76b0: $9f
    inc h                                         ; $76b1: $24
    or $42                                        ; $76b2: $f6 $42
    inc bc                                        ; $76b4: $03
    adc c                                         ; $76b5: $89
    db $fd                                        ; $76b6: $fd
    adc a                                         ; $76b7: $8f
    inc a                                         ; $76b8: $3c
    db $d3                                        ; $76b9: $d3
    ld b, d                                       ; $76ba: $42
    adc d                                         ; $76bb: $8a
    pop hl                                        ; $76bc: $e1
    ld a, [de]                                    ; $76bd: $1a
    ld c, b                                       ; $76be: $48
    inc l                                         ; $76bf: $2c
    ld [hl], a                                    ; $76c0: $77
    ld l, d                                       ; $76c1: $6a
    xor c                                         ; $76c2: $a9
    pop af                                        ; $76c3: $f1
    ld [hl], a                                    ; $76c4: $77
    ld a, [de]                                    ; $76c5: $1a
    ld c, b                                       ; $76c6: $48
    inc [hl]                                      ; $76c7: $34
    ld h, [hl]                                    ; $76c8: $66
    ccf                                           ; $76c9: $3f
    add d                                         ; $76ca: $82
    jp z, Jump_06d_4d71                           ; $76cb: $ca $71 $4d

    ld c, $95                                     ; $76ce: $0e $95
    or e                                          ; $76d0: $b3
    inc d                                         ; $76d1: $14
    push af                                       ; $76d2: $f5
    ld [$ee24], sp                                ; $76d3: $08 $24 $ee
    ret nc                                        ; $76d6: $d0

    ld b, [hl]                                    ; $76d7: $46
    ld b, e                                       ; $76d8: $43
    sub [hl]                                      ; $76d9: $96
    ldh a, [rBCPS]                                ; $76da: $f0 $68
    ld c, [hl]                                    ; $76dc: $4e
    ld c, $a5                                     ; $76dd: $0e $a5
    jp z, $f1d9                                   ; $76df: $ca $d9 $f1

    add $01                                       ; $76e2: $c6 $01
    scf                                           ; $76e4: $37
    ld b, a                                       ; $76e5: $47
    sbc [hl]                                      ; $76e6: $9e
    ld l, c                                       ; $76e7: $69
    di                                            ; $76e8: $f3
    rst $28                                       ; $76e9: $ef
    db $f4                                        ; $76ea: $f4
    cp a                                          ; $76eb: $bf
    inc c                                         ; $76ec: $0c
    xor [hl]                                      ; $76ed: $ae
    add c                                         ; $76ee: $81
    call nz, Call_06d_6772                        ; $76ef: $c4 $72 $67
    xor c                                         ; $76f2: $a9
    ld de, $947f                                  ; $76f3: $11 $7f $94
    xor [hl]                                      ; $76f6: $ae
    ld [hl], d                                    ; $76f7: $72
    add hl, sp                                    ; $76f8: $39
    call nc, $c9b3                                ; $76f9: $d4 $b3 $c9
    dec d                                         ; $76fc: $15
    ei                                            ; $76fd: $fb
    ld b, l                                       ; $76fe: $45
    add h                                         ; $76ff: $84
    cp a                                          ; $7700: $bf
    di                                            ; $7701: $f3
    ld b, [hl]                                    ; $7702: $46
    ld e, a                                       ; $7703: $5f
    xor a                                         ; $7704: $af
    call c, $d361                                 ; $7705: $dc $61 $d3
    ld b, b                                       ; $7708: $40
    ld h, d                                       ; $7709: $62
    xor c                                         ; $770a: $a9
    ld sp, $a7b8                                  ; $770b: $31 $b8 $a7
    inc b                                         ; $770e: $04
    di                                            ; $770f: $f3
    ret z                                         ; $7710: $c8

    ld a, [hl]                                    ; $7711: $7e
    adc d                                         ; $7712: $8a
    db $fd                                        ; $7713: $fd
    sub h                                         ; $7714: $94
    inc e                                         ; $7715: $1c
    ld a, [hl+]                                   ; $7716: $2a
    ld h, a                                       ; $7717: $67
    add hl, hl                                    ; $7718: $29
    or [hl]                                       ; $7719: $b6
    inc bc                                        ; $771a: $03
    rst $20                                       ; $771b: $e7
    xor c                                         ; $771c: $a9
    ld [$e347], sp                                ; $771d: $08 $47 $e3
    inc [hl]                                      ; $7720: $34
    sub b                                         ; $7721: $90
    ld e, b                                       ; $7722: $58
    xor $2c                                       ; $7723: $ee $2c
    dec [hl]                                      ; $7725: $35
    ld b, $f7                                     ; $7726: $06 $f7
    sub h                                         ; $7728: $94
    ld h, b                                       ; $7729: $60
    ld e, $d9                                     ; $772a: $1e $d9
    ld c, a                                       ; $772c: $4f
    pop de                                        ; $772d: $d1
    db $eb                                        ; $772e: $eb
    db $f4                                        ; $772f: $f4
    add [hl]                                      ; $7730: $86
    cp [hl]                                       ; $7731: $be
    or e                                          ; $7732: $b3
    or $d1                                        ; $7733: $f6 $d1
    ld de, $bf61                                  ; $7735: $11 $61 $bf
    ld [hl], h                                    ; $7738: $74
    nop                                           ; $7739: $00
    rst $28                                       ; $773a: $ef
    ld l, c                                       ; $773b: $69
    sbc h                                         ; $773c: $9c
    ld d, d                                       ; $773d: $52
    ld h, e                                       ; $773e: $63
    ld [hl], b                                    ; $773f: $70
    ld b, l                                       ; $7740: $45
    ld c, e                                       ; $7741: $4b
    ld [hl+], a                                   ; $7742: $22
    ei                                            ; $7743: $fb
    ld l, c                                       ; $7744: $69
    ld c, b                                       ; $7745: $48
    ld e, e                                       ; $7746: $5b
    and a                                         ; $7747: $a7
    pop de                                        ; $7748: $d1
    add hl, hl                                    ; $7749: $29
    ei                                            ; $774a: $fb
    ld a, l                                       ; $774b: $7d
    ld [hl], b                                    ; $774c: $70
    xor c                                         ; $774d: $a9
    ld sp, $a2b8                                  ; $774e: $31 $b8 $a2
    dec h                                         ; $7751: $25
    sub c                                         ; $7752: $91
    db $fd                                        ; $7753: $fd
    inc [hl]                                      ; $7754: $34
    jp nz, $b73c                                  ; $7755: $c2 $3c $b7

    sbc $84                                       ; $7758: $de $84
    dec de                                        ; $775a: $1b
    db $ed                                        ; $775b: $ed
    sbc a                                         ; $775c: $9f
    ld d, [hl]                                    ; $775d: $56
    ld h, l                                       ; $775e: $65
    pop de                                        ; $775f: $d1
    ld l, e                                       ; $7760: $6b
    ld l, c                                       ; $7761: $69
    rla                                           ; $7762: $17
    db $d3                                        ; $7763: $d3
    ld a, [$98ee]                                 ; $7764: $fa $ee $98
    ld b, a                                       ; $7767: $47
    cp a                                          ; $7768: $bf
    rrca                                          ; $7769: $0f
    xor $7f                                       ; $776a: $ee $7f
    or $38                                        ; $776c: $f6 $38
    xor c                                         ; $776e: $a9
    ld a, [hl]                                    ; $776f: $7e
    xor d                                         ; $7770: $aa
    ld c, h                                       ; $7771: $4c
    dec c                                         ; $7772: $0d
    and c                                         ; $7773: $a1
    jp z, $db35                                   ; $7774: $ca $35 $db

    ld bc, $671f                                  ; $7777: $01 $1f $67
    rst $08                                       ; $777a: $cf
    adc d                                         ; $777b: $8a
    ld h, [hl]                                    ; $777c: $66
    dec [hl]                                      ; $777d: $35
    sub b                                         ; $777e: $90
    ret c                                         ; $777f: $d8

    rst $38                                       ; $7780: $ff
    ret z                                         ; $7781: $c8

    inc sp                                        ; $7782: $33
    dec l                                         ; $7783: $2d
    or d                                          ; $7784: $b2
    add a                                         ; $7785: $87
    pop bc                                        ; $7786: $c1
    cp l                                          ; $7787: $bd
    ld [hl], c                                    ; $7788: $71
    nop                                           ; $7789: $00
    rra                                           ; $778a: $1f
    db $fd                                        ; $778b: $fd
    ld c, [hl]                                    ; $778c: $4e
    ld d, a                                       ; $778d: $57
    adc [hl]                                      ; $778e: $8e
    inc [hl]                                      ; $778f: $34
    xor d                                         ; $7790: $aa
    ld [c], a                                     ; $7791: $e2
    ld d, d                                       ; $7792: $52
    rst $18                                       ; $7793: $df
    add hl, de                                    ; $7794: $19
    cp c                                          ; $7795: $b9
    or d                                          ; $7796: $b2
    ld a, b                                       ; $7797: $78
    ld [$70d9], a                                 ; $7798: $ea $d9 $70
    ld c, h                                       ; $779b: $4c
    adc $a5                                       ; $779c: $ce $a5
    inc bc                                        ; $779e: $03
    scf                                           ; $779f: $37
    ld b, a                                       ; $77a0: $47
    sbc [hl]                                      ; $77a1: $9e
    push de                                       ; $77a2: $d5
    di                                            ; $77a3: $f3
    ld c, a                                       ; $77a4: $4f
    ld e, e                                       ; $77a5: $5b
    ld l, b                                       ; $77a6: $68
    ld [$d583], sp                                ; $77a7: $08 $83 $d5
    or e                                          ; $77aa: $b3
    jp z, Jump_06d_6cc2                           ; $77ab: $ca $c2 $6c

    xor c                                         ; $77ae: $a9
    add h                                         ; $77af: $84
    dec [hl]                                      ; $77b0: $35
    inc e                                         ; $77b1: $1c
    xor e                                         ; $77b2: $ab
    ld [hl], b                                    ; $77b3: $70
    add h                                         ; $77b4: $84
    jr c, @+$33                                   ; $77b5: $38 $31

    ld l, e                                       ; $77b7: $6b
    push hl                                       ; $77b8: $e5
    cp b                                          ; $77b9: $b8
    add hl, hl                                    ; $77ba: $29
    ld d, l                                       ; $77bb: $55
    or c                                          ; $77bc: $b1
    push af                                       ; $77bd: $f5
    ld a, [c]                                     ; $77be: $f2
    ld l, c                                       ; $77bf: $69
    inc c                                         ; $77c0: $0c
    add d                                         ; $77c1: $82
    ld a, [hl+]                                   ; $77c2: $2a
    ei                                            ; $77c3: $fb
    rra                                           ; $77c4: $1f
    ld a, c                                       ; $77c5: $79
    and [hl]                                      ; $77c6: $a6
    call Call_06d_53bf                            ; $77c7: $cd $bf $53
    ld h, l                                       ; $77ca: $65
    sub a                                         ; $77cb: $97
    dec bc                                        ; $77cc: $0b
    rst $00                                       ; $77cd: $c7
    ld [hl+], a                                   ; $77ce: $22
    sbc h                                         ; $77cf: $9c
    and b                                         ; $77d0: $a0
    ld c, h                                       ; $77d1: $4c
    db $fd                                        ; $77d2: $fd
    ld c, a                                       ; $77d3: $4f
    xor d                                         ; $77d4: $aa
    ld h, e                                       ; $77d5: $63
    dec a                                         ; $77d6: $3d
    ld d, a                                       ; $77d7: $57
    add h                                         ; $77d8: $84
    ld l, l                                       ; $77d9: $6d
    rlca                                          ; $77da: $07
    rst $20                                       ; $77db: $e7
    xor c                                         ; $77dc: $a9
    ld de, $784e                                  ; $77dd: $11 $4e $78
    pop bc                                        ; $77e0: $c1
    ld l, l                                       ; $77e1: $6d
    db $fd                                        ; $77e2: $fd
    call z, $1ff8                                 ; $77e3: $cc $f8 $1f
    ld l, e                                       ; $77e6: $6b
    cp $9d                                        ; $77e7: $fe $9d
    jp z, $cac9                                   ; $77e9: $ca $c9 $ca

    ld d, e                                       ; $77ec: $53
    ld h, d                                       ; $77ed: $62
    db $fd                                        ; $77ee: $fd
    sbc b                                         ; $77ef: $98
    ld e, e                                       ; $77f0: $5b
    ld d, [hl]                                    ; $77f1: $56
    ld h, l                                       ; $77f2: $65
    sbc c                                         ; $77f3: $99
    sbc d                                         ; $77f4: $9a
    ld a, a                                       ; $77f5: $7f
    and a                                         ; $77f6: $a7
    call nc, $feb8                                ; $77f7: $d4 $b8 $fe
    or h                                          ; $77fa: $b4
    jp z, $e571                                   ; $77fb: $ca $71 $e5

    adc $ed                                       ; $77fe: $ce $ed
    nop                                           ; $7800: $00
    rra                                           ; $7801: $1f
    db $dd                                        ; $7802: $dd
    and e                                         ; $7803: $a3
    push af                                       ; $7804: $f5
    db $fc                                        ; $7805: $fc
    rst $18                                       ; $7806: $df
    dec c                                         ; $7807: $0d
    scf                                           ; $7808: $37
    ld e, d                                       ; $7809: $5a
    add hl, sp                                    ; $780a: $39
    add hl, sp                                    ; $780b: $39
    jp nz, Jump_06d_677a                          ; $780c: $c2 $7a $67

    ld b, e                                       ; $780f: $43
    dec de                                        ; $7810: $1b
    ld de, $c755                                  ; $7811: $11 $55 $c7
    ret nc                                        ; $7814: $d0

    ld l, e                                       ; $7815: $6b
    ld a, [c]                                     ; $7816: $f2
    db $dd                                        ; $7817: $dd
    ret                                           ; $7818: $c9


    jr c, jr_06d_787c                             ; $7819: $38 $61

    rst $18                                       ; $781b: $df
    xor e                                         ; $781c: $ab
    inc hl                                        ; $781d: $23
    inc [hl]                                      ; $781e: $34
    or $46                                        ; $781f: $f6 $46
    ld b, [hl]                                    ; $7821: $46
    ret z                                         ; $7822: $c8

    db $ed                                        ; $7823: $ed
    nop                                           ; $7824: $00
    rst $20                                       ; $7825: $e7
    xor c                                         ; $7826: $a9
    ld sp, hl                                     ; $7827: $f9
    ld [hl], a                                    ; $7828: $77
    ld a, [bc]                                    ; $7829: $0a
    add hl, hl                                    ; $782a: $29
    sbc [hl]                                      ; $782b: $9e
    ld b, $12                                     ; $782c: $06 $12
    rr l                                          ; $782e: $cb $1d
    add l                                         ; $7830: $85
    inc [hl]                                      ; $7831: $34
    ld a, [$6115]                                 ; $7832: $fa $15 $61
    dec bc                                        ; $7835: $0b
    and l                                         ; $7836: $a5
    ld l, e                                       ; $7837: $6b
    cp [hl]                                       ; $7838: $be
    ld b, a                                       ; $7839: $47
    or a                                          ; $783a: $b7
    sbc [hl]                                      ; $783b: $9e
    dec bc                                        ; $783c: $0b
    ld [$6ea8], a                                 ; $783d: $ea $a8 $6e
    ld a, [de]                                    ; $7840: $1a
    ld c, b                                       ; $7841: $48
    inc l                                         ; $7842: $2c
    and h                                         ; $7843: $a4
    pop de                                        ; $7844: $d1
    xor a                                         ; $7845: $af
    ld [$0a55], sp                                ; $7846: $08 $55 $0a
    cp d                                          ; $7849: $ba
    ld d, h                                       ; $784a: $54
    and a                                         ; $784b: $a7
    and c                                         ; $784c: $a1
    call $b61f                                    ; $784d: $cd $1f $b6
    ret nc                                        ; $7850: $d0

    ld b, b                                       ; $7851: $40
    ld h, d                                       ; $7852: $62
    di                                            ; $7853: $f3
    dec a                                         ; $7854: $3d
    ld e, d                                       ; $7855: $5a
    ld l, d                                       ; $7856: $6a
    inc c                                         ; $7857: $0c
    cp $c3                                        ; $7858: $fe $c3
    adc l                                         ; $785a: $8d
    ld d, $d9                                     ; $785b: $16 $d9
    inc hl                                        ; $785d: $23
    ei                                            ; $785e: $fb
    ld l, c                                       ; $785f: $69
    ret z                                         ; $7860: $c8

    ld a, l                                       ; $7861: $7d
    or h                                          ; $7862: $b4
    ld [hl], d                                    ; $7863: $72
    call z, $c7e8                                 ; $7864: $cc $e8 $c7
    xor b                                         ; $7867: $a8
    push af                                       ; $7868: $f5
    ret                                           ; $7869: $c9


    sub b                                         ; $786a: $90
    inc hl                                        ; $786b: $23
    adc e                                         ; $786c: $8b
    and $59                                       ; $786d: $e6 $59
    sub c                                         ; $786f: $91
    db $db                                        ; $7870: $db
    ld bc, $619f                                  ; $7871: $01 $9f $61
    rst $38                                       ; $7874: $ff

jr_06d_7875:
    di                                            ; $7875: $f3
    or $d6                                        ; $7876: $f6 $d6
    ld l, e                                       ; $7878: $6b
    ret nc                                        ; $7879: $d0

    and $7b                                       ; $787a: $e6 $7b

jr_06d_787c:
    or h                                          ; $787c: $b4
    and c                                         ; $787d: $a1
    ld d, c                                       ; $787e: $51
    ld l, $85                                     ; $787f: $2e $85
    dec de                                        ; $7881: $1b
    xor l                                         ; $7882: $ad
    ld [$69b7], sp                                ; $7883: $08 $b7 $69
    push bc                                       ; $7886: $c5
    ld a, [hl]                                    ; $7887: $7e
    ld c, d                                       ; $7888: $4a
    ld c, $95                                     ; $7889: $0e $95
    or e                                          ; $788b: $b3
    inc d                                         ; $788c: $14
    sub a                                         ; $788d: $97
    ld c, $1f                                     ; $788e: $0e $1f
    db $dd                                        ; $7890: $dd
    and e                                         ; $7891: $a3
    db $fd                                        ; $7892: $fd
    jp $368d                                      ; $7893: $c3 $8d $36


    inc [hl]                                      ; $7896: $34
    jp z, $b0a5                                   ; $7897: $ca $a5 $b0

    ld a, d                                       ; $789a: $7a
    sub $61                                       ; $789b: $d6 $61
    ld l, c                                       ; $789d: $69
    ld b, e                                       ; $789e: $43
    sbc e                                         ; $789f: $9b
    ccf                                           ; $78a0: $3f
    or h                                          ; $78a1: $b4
    ld hl, $950c                                  ; $78a2: $21 $0c $95
    sub e                                         ; $78a5: $93
    rst $38                                       ; $78a6: $ff
    call z, $d692                                 ; $78a7: $cc $92 $d6
    ld l, e                                       ; $78aa: $6b
    ld a, [c]                                     ; $78ab: $f2
    db $dd                                        ; $78ac: $dd
    ret                                           ; $78ad: $c9


    jr c, jr_06d_7911                             ; $78ae: $38 $61

    rst $18                                       ; $78b0: $df
    or a                                          ; $78b1: $b7
    ld a, [hl]                                    ; $78b2: $7e
    ld [hl], h                                    ; $78b3: $74
    adc a                                         ; $78b4: $8f
    ld [hl], $34                                  ; $78b5: $36 $34
    jp z, $70a5                                   ; $78b7: $ca $a5 $70

    and e                                         ; $78ba: $a3
    push af                                       ; $78bb: $f5
    ld d, h                                       ; $78bc: $54
    add hl, sp                                    ; $78bd: $39
    ld b, d                                       ; $78be: $42
    ld e, e                                       ; $78bf: $5b
    sub $69                                       ; $78c0: $d6 $69
    jr nz, jr_06d_7875                            ; $78c2: $20 $b1

    rla                                           ; $78c4: $17
    adc d                                         ; $78c5: $8a
    ld e, [hl]                                    ; $78c6: $5e
    and a                                         ; $78c7: $a7
    scf                                           ; $78c8: $37
    db $f4                                        ; $78c9: $f4
    sbc l                                         ; $78ca: $9d
    or l                                          ; $78cb: $b5
    adc a                                         ; $78cc: $8f
    adc [hl]                                      ; $78cd: $8e
    ld [$76fb], sp                                ; $78ce: $08 $fb $76
    nop                                           ; $78d1: $00
    ld l, a                                       ; $78d2: $6f
    dec c                                         ; $78d3: $0d
    cp d                                          ; $78d4: $ba
    db $fc                                        ; $78d5: $fc
    add l                                         ; $78d6: $85
    add l                                         ; $78d7: $85
    xor l                                         ; $78d8: $ad
    scf                                           ; $78d9: $37
    pop hl                                        ; $78da: $e1
    ld b, [hl]                                    ; $78db: $46
    dec hl                                        ; $78dc: $2b
    rst $00                                       ; $78dd: $c7
    pop af                                        ; $78de: $f1
    ld [hl+], a                                   ; $78df: $22
    xor h                                         ; $78e0: $ac
    ld [hl], b                                    ; $78e1: $70
    ret z                                         ; $78e2: $c8

    ld [c], a                                     ; $78e3: $e2
    rst $18                                       ; $78e4: $df
    xor l                                         ; $78e5: $ad
    rst $20                                       ; $78e6: $e7
    xor c                                         ; $78e7: $a9
    rst $18                                       ; $78e8: $df
    rlca                                          ; $78e9: $07
    scf                                           ; $78ea: $37
    xor [hl]                                      ; $78eb: $ae
    ccf                                           ; $78ec: $3f
    adc e                                         ; $78ed: $8b
    ccf                                           ; $78ee: $3f
    ld [hl], e                                    ; $78ef: $73
    ld c, h                                       ; $78f0: $4c
    ld b, $ad                                     ; $78f1: $06 $ad
    ld h, $d1                                     ; $78f3: $26 $d1
    sub d                                         ; $78f5: $92
    adc e                                         ; $78f6: $8b
    add hl, sp                                    ; $78f7: $39
    ld d, d                                       ; $78f8: $52
    dec de                                        ; $78f9: $1b
    jp nz, $e4d0                                  ; $78fa: $c2 $d0 $e4

    ret nc                                        ; $78fd: $d0

    inc a                                         ; $78fe: $3c
    dec hl                                        ; $78ff: $2b
    ld [hl], d                                    ; $7900: $72
    db $eb                                        ; $7901: $eb
    ld e, e                                       ; $7902: $5b
    add e                                         ; $7903: $83
    and $59                                       ; $7904: $e6 $59
    sub c                                         ; $7906: $91
    add d                                         ; $7907: $82
    ld e, [hl]                                    ; $7908: $5e
    add l                                         ; $7909: $85
    reti                                          ; $790a: $d9


    ld c, a                                       ; $790b: $4f
    db $db                                        ; $790c: $db
    ld bc, $0d6f                                  ; $790d: $01 $6f $0d
    sbc d                                         ; $7910: $9a

jr_06d_7911:
    ld h, a                                       ; $7911: $67
    ld b, l                                       ; $7912: $45
    ld a, [bc]                                    ; $7913: $0a
    ld a, [$e4e9]                                 ; $7914: $fa $e9 $e4
    sbc a                                         ; $7917: $9f
    or [hl]                                       ; $7918: $b6
    inc bc                                        ; $7919: $03
    scf                                           ; $791a: $37
    pop hl                                        ; $791b: $e1
    ld b, [hl]                                    ; $791c: $46
    cp e                                          ; $791d: $bb
    rlca                                          ; $791e: $07
    ld l, a                                       ; $791f: $6f
    db $fd                                        ; $7920: $fd
    adc h                                         ; $7921: $8c
    ld l, [hl]                                    ; $7922: $6e
    or h                                          ; $7923: $b4
    add c                                         ; $7924: $81
    call nz, $e646                                ; $7925: $c4 $46 $e6
    ld [$b32b], sp                                ; $7928: $08 $2b $b3
    sbc h                                         ; $792b: $9c
    inc e                                         ; $792c: $1c
    dec c                                         ; $792d: $0d
    sub $6b                                       ; $792e: $d6 $6b

Call_06d_7930:
    ret c                                         ; $7930: $d8

    ld b, l                                       ; $7931: $45
    di                                            ; $7932: $f3
    ld d, e                                       ; $7933: $53
    ld e, c                                       ; $7934: $59
    ld d, h                                       ; $7935: $54
    or c                                          ; $7936: $b1
    and e                                         ; $7937: $a3
    sbc [hl]                                      ; $7938: $9e
    adc l                                         ; $7939: $8d
    ld [hl], $a2                                  ; $793a: $36 $a2
    dec bc                                        ; $793c: $0b
    ld c, c                                       ; $793d: $49
    db $eb                                        ; $793e: $eb
    or b                                          ; $793f: $b0
    or h                                          ; $7940: $b4
    ret                                           ; $7941: $c9


    and c                                         ; $7942: $a1
    ld a, a                                       ; $7943: $7f
    sbc $de                                       ; $7944: $de $de
    ld c, $97                                     ; $7946: $0e $97
    and l                                         ; $7948: $a5
    ld a, b                                       ; $7949: $78
    ld a, [de]                                    ; $794a: $1a
    ld c, b                                       ; $794b: $48
    ld l, h                                       ; $794c: $6c
    cp [hl]                                       ; $794d: $be
    ld b, a                                       ; $794e: $47
    db $eb                                        ; $794f: $eb
    ld sp, hl                                     ; $7950: $f9
    and a                                         ; $7951: $a7
    db $dd                                        ; $7952: $dd
    dec c                                         ; $7953: $0d
    scf                                           ; $7954: $37
    ld e, d                                       ; $7955: $5a
    pop de                                        ; $7956: $d1
    sub d                                         ; $7957: $92
    or b                                          ; $7958: $b0
    ld [hl+], a                                   ; $7959: $22
    sub b                                         ; $795a: $90
    ld d, [hl]                                    ; $795b: $56
    jp hl                                         ; $795c: $e9


    ld a, [hl+]                                   ; $795d: $2a
    sub a                                         ; $795e: $97
    add e                                         ; $795f: $83
    and b                                         ; $7960: $a0
    ld d, a                                       ; $7961: $57
    ld h, c                                       ; $7962: $61
    or $d3                                        ; $7963: $f6 $d3
    sub $cb                                       ; $7965: $d6 $cb
    ld d, l                                       ; $7967: $55
    db $ec                                        ; $7968: $ec
    xor b                                         ; $7969: $a8
    ld h, a                                       ; $796a: $67
    and e                                         ; $796b: $a3
    adc l                                         ; $796c: $8d
    add sp, $42                                   ; $796d: $e8 $42
    jp nc, $968a                                  ; $796f: $d2 $8a $96

    ld b, h                                       ; $7972: $44
    di                                            ; $7973: $f3
    inc [hl]                                      ; $7974: $34
    jp nc, $9724                                  ; $7975: $d2 $24 $97

    ld c, l                                       ; $7978: $4d
    sub c                                         ; $7979: $91
    dec a                                         ; $797a: $3d
    ld l, h                                       ; $797b: $6c
    dec sp                                        ; $797c: $3b
    nop                                           ; $797d: $00
    sub a                                         ; $797e: $97
    rst $28                                       ; $797f: $ef
    ld l, $35                                     ; $7980: $2e $35
    ld b, $f7                                     ; $7982: $06 $f7
    ccf                                           ; $7984: $3f
    ld a, [c]                                     ; $7985: $f2
    xor h                                         ; $7986: $ac
    ld d, a                                       ; $7987: $57
    ld h, c                                       ; $7988: $61
    or $d3                                        ; $7989: $f6 $d3
    sub $9b                                       ; $798b: $d6 $9b
    call z, Call_000_0862                         ; $798d: $cc $62 $08

Jump_06d_7990:
    ld a, [$1b87]                                 ; $7990: $fa $87 $1b
    ld l, l                                       ; $7993: $6d
    ld [$f343], sp                                ; $7994: $08 $43 $f3
    xor b                                         ; $7997: $a8
    and d                                         ; $7998: $a2
    adc [hl]                                      ; $7999: $8e
    adc d                                         ; $799a: $8a
    db $ed                                        ; $799b: $ed
    nop                                           ; $799c: $00
    rst $28                                       ; $799d: $ef
    adc h                                         ; $799e: $8c
    ld e, h                                       ; $799f: $5c
    ld e, c                                       ; $79a0: $59
    inc a                                         ; $79a1: $3c
    push af                                       ; $79a2: $f5
    ld l, h                                       ; $79a3: $6c
    jr c, @+$28                                   ; $79a4: $38 $26

    ld h, a                                       ; $79a6: $67
    dec sp                                        ; $79a7: $3b
    nop                                           ; $79a8: $00
    xor a                                         ; $79a9: $af
    rst $10                                       ; $79aa: $d7
    ld [hl], c                                    ; $79ab: $71
    rla                                           ; $79ac: $17

Call_06d_79ad:
    adc a                                         ; $79ad: $8f
    dec [hl]                                      ; $79ae: $35
    rst $38                                       ; $79af: $ff
    ld c, [hl]                                    ; $79b0: $4e
    sbc c                                         ; $79b1: $99
    and e                                         ; $79b2: $a3
    pop bc                                        ; $79b3: $c1
    adc d                                         ; $79b4: $8a
    ld a, l                                       ; $79b5: $7d
    ld l, l                                       ; $79b6: $6d
    ld a, l                                       ; $79b7: $7d
    cp l                                          ; $79b8: $bd
    and c                                         ; $79b9: $a1
    call Call_000_2e12                            ; $79ba: $cd $12 $2e
    ccf                                           ; $79bd: $3f
    db $db                                        ; $79be: $db
    ld bc, $70ef                                  ; $79bf: $01 $ef $70
    ld e, a                                       ; $79c2: $5f
    or a                                          ; $79c3: $b7
    ei                                            ; $79c4: $fb
    ld de, $7622                                  ; $79c5: $11 $22 $76
    ld b, c                                       ; $79c8: $41
    xor a                                         ; $79c9: $af
    jp nz, $a7ec                                  ; $79ca: $c2 $ec $a7

    ld c, e                                       ; $79cd: $4b
    rlca                                          ; $79ce: $07
    rst $28                                       ; $79cf: $ef
    ld [hl], b                                    ; $79d0: $70
    ld e, a                                       ; $79d1: $5f
    or a                                          ; $79d2: $b7
    ei                                            ; $79d3: $fb
    ld de, $7622                                  ; $79d4: $11 $22 $76
    ld b, c                                       ; $79d7: $41
    ccf                                           ; $79d8: $3f
    sbc l                                         ; $79d9: $9d
    db $fc                                        ; $79da: $fc
    db $d3                                        ; $79db: $d3
    and l                                         ; $79dc: $a5
    sbc $e4                                       ; $79dd: $de $e4
    rst $30                                       ; $79df: $f7
    db $10                                        ; $79e0: $10
    inc [hl]                                      ; $79e1: $34
    rst $18                                       ; $79e2: $df
    and e                                         ; $79e3: $a3
    dec [hl]                                      ; $79e4: $35
    ld c, d                                       ; $79e5: $4a
    ld a, [bc]                                    ; $79e6: $0a
    jp hl                                         ; $79e7: $e9


    ld b, [hl]                                    ; $79e8: $46
    dec de                                        ; $79e9: $1b
    ld a, [de]                                    ; $79ea: $1a
    sub l                                         ; $79eb: $95
    add hl, sp                                    ; $79ec: $39
    ld d, d                                       ; $79ed: $52
    or a                                          ; $79ee: $b7
    inc bc                                        ; $79ef: $03
    rst $10                                       ; $79f0: $d7
    xor b                                         ; $79f1: $a8
    ld l, [hl]                                    ; $79f2: $6e
    ld a, [de]                                    ; $79f3: $1a
    ld c, b                                       ; $79f4: $48
    inc l                                         ; $79f5: $2c
    ld [$c6b0], a                                 ; $79f6: $ea $b0 $c6
    ld d, $ea                                     ; $79f9: $16 $ea
    ld b, a                                       ; $79fb: $47
    dec sp                                        ; $79fc: $3b
    add hl, hl                                    ; $79fd: $29
    jp c, $b168                                   ; $79fe: $da $68 $b1

    and a                                         ; $7a01: $a7
    inc a                                         ; $7a02: $3c
    jp c, Jump_000_3bfc                           ; $7a03: $da $fc $3b

    and l                                         ; $7a06: $a5
    ld b, [hl]                                    ; $7a07: $46
    ld a, [hl]                                    ; $7a08: $7e
    adc a                                         ; $7a09: $8f
    add [hl]                                      ; $7a0a: $86
    ld h, e                                       ; $7a0b: $63
    ld b, l                                       ; $7a0c: $45
    jr nz, jr_06d_7a3c                            ; $7a0d: $20 $2d

    ld b, c                                       ; $7a0f: $41
    di                                            ; $7a10: $f3
    dec a                                         ; $7a11: $3d
    ld e, d                                       ; $7a12: $5a
    xor h                                         ; $7a13: $ac
    db $ec                                        ; $7a14: $ec
    pop de                                        ; $7a15: $d1
    ld [hl], b                                    ; $7a16: $70
    inc a                                         ; $7a17: $3c
    db $dd                                        ; $7a18: $dd
    ld l, b                                       ; $7a19: $68
    di                                            ; $7a1a: $f3
    ld l, b                                       ; $7a1b: $68
    db $fd                                        ; $7a1c: $fd
    ld a, [$e2d3]                                 ; $7a1d: $fa $d3 $e2
    or d                                          ; $7a20: $b2
    ld c, e                                       ; $7a21: $4b
    rlca                                          ; $7a22: $07
    rst $28                                       ; $7a23: $ef
    ld [hl], b                                    ; $7a24: $70
    ld e, a                                       ; $7a25: $5f
    or a                                          ; $7a26: $b7
    ei                                            ; $7a27: $fb
    ld de, $7622                                  ; $7a28: $11 $22 $76
    ld b, c                                       ; $7a2b: $41
    dec e                                         ; $7a2c: $1d
    sub e                                         ; $7a2d: $93
    ld d, $7e                                     ; $7a2e: $16 $7e
    inc l                                         ; $7a30: $2c
    ld hl, sp-$31                                 ; $7a31: $f8 $cf
    and l                                         ; $7a33: $a5
    sub l                                         ; $7a34: $95
    ret c                                         ; $7a35: $d8

    daa                                           ; $7a36: $27
    reti                                          ; $7a37: $d9


    jp z, $d1e2                                   ; $7a38: $ca $e2 $d1

    db $ed                                        ; $7a3b: $ed

jr_06d_7a3c:
    nop                                           ; $7a3c: $00
    rra                                           ; $7a3d: $1f
    scf                                           ; $7a3e: $37
    sub b                                         ; $7a3f: $90
    ret c                                         ; $7a40: $d8

    rst $38                                       ; $7a41: $ff
    ret z                                         ; $7a42: $c8

    or e                                          ; $7a43: $b3
    ld b, $12                                     ; $7a44: $06 $12
    ld c, l                                       ; $7a46: $4d
    ret nc                                        ; $7a47: $d0

    db $eb                                        ; $7a48: $eb
    rrc h                                         ; $7a49: $cb $0c
    rla                                           ; $7a4b: $17
    pop af                                        ; $7a4c: $f1
    add $01                                       ; $7a4d: $c6 $01
    rst $10                                       ; $7a4f: $d7
    adc l                                         ; $7a50: $8d
    jp z, $a91c                                   ; $7a51: $ca $1c $a9

    add d                                         ; $7a54: $82
    add [hl]                                      ; $7a55: $86
    ld b, [hl]                                    ; $7a56: $46
    ld h, l                                       ; $7a57: $65
    adc [hl]                                      ; $7a58: $8e
    ld d, h                                       ; $7a59: $54
    ld b, c                                       ; $7a5a: $41
    ld b, e                                       ; $7a5b: $43
    and e                                         ; $7a5c: $a3
    ld [hl-], a                                   ; $7a5d: $32
    ld b, a                                       ; $7a5e: $47
    ld [$9ea5], a                                 ; $7a5f: $ea $a5 $9e
    sub a                                         ; $7a62: $97
    ld a, [de]                                    ; $7a63: $1a
    xor c                                         ; $7a64: $a9
    dec c                                         ; $7a65: $0d
    ld h, c                                       ; $7a66: $61
    sub h                                         ; $7a67: $94
    ld [hl], h                                    ; $7a68: $74
    dec d                                         ; $7a69: $15
    ld c, [hl]                                    ; $7a6a: $4e
    sub $ed                                       ; $7a6b: $d6 $ed
    nop                                           ; $7a6d: $00
    ld l, a                                       ; $7a6e: $6f
    di                                            ; $7a6f: $f3
    ccf                                           ; $7a70: $3f
    ei                                            ; $7a71: $fb
    rra                                           ; $7a72: $1f
    call Call_000_3aa3                            ; $7a73: $cd $a3 $3a
    jp c, $a8d0                                   ; $7a76: $da $d0 $a8

    call z, $2a91                                 ; $7a79: $cc $91 $2a
    add sp, -$0b                                  ; $7a7c: $e8 $f5
    ld h, l                                       ; $7a7e: $65
    add [hl]                                      ; $7a7f: $86
    adc e                                         ; $7a80: $8b
    cp b                                          ; $7a81: $b8
    ld [hl], h                                    ; $7a82: $74
    nop                                           ; $7a83: $00
    xor a                                         ; $7a84: $af
    rst $10                                       ; $7a85: $d7
    ld [hl], c                                    ; $7a86: $71
    rla                                           ; $7a87: $17

Jump_06d_7a88:
    adc a                                         ; $7a88: $8f
    push af                                       ; $7a89: $f5
    db $ed                                        ; $7a8a: $ed
    res 3, a                                      ; $7a8b: $cb $9f
    sub $4f                                       ; $7a8d: $d6 $4f
    inc bc                                        ; $7a8f: $03
    adc c                                         ; $7a90: $89
    dec [hl]                                      ; $7a91: $35
    ld c, d                                       ; $7a92: $4a
    ld a, [bc]                                    ; $7a93: $0a
    ld l, c                                       ; $7a94: $69
    ld e, e                                       ; $7a95: $5b
    xor a                                         ; $7a96: $af
    ld b, c                                       ; $7a97: $41
    sbc e                                         ; $7a98: $9b
    pop de                                        ; $7a99: $d1
    ccf                                           ; $7a9a: $3f
    call Call_06d_53c3                            ; $7a9b: $cd $c3 $53
    ret nc                                        ; $7a9e: $d0

    xor c                                         ; $7a9f: $a9
    db $e3                                        ; $7aa0: $e3
    ld l, $1e                                     ; $7aa1: $2e $1e
    xor e                                         ; $7aa3: $ab
    and e                                         ; $7aa4: $a3
    cp d                                          ; $7aa5: $ba
    jp hl                                         ; $7aa6: $e9


    add l                                         ; $7aa7: $85
    ld d, d                                       ; $7aa8: $52
    push hl                                       ; $7aa9: $e5
    ld h, h                                       ; $7aaa: $64
    ld c, a                                       ; $7aab: $4f
    xor e                                         ; $7aac: $ab
    sbc h                                         ; $7aad: $9c
    and l                                         ; $7aae: $a5
    ret nc                                        ; $7aaf: $d0

    ld c, e                                       ; $7ab0: $4b
    cp l                                          ; $7ab1: $bd
    add hl, sp                                    ; $7ab2: $39
    ld a, [c]                                     ; $7ab3: $f2
    ld c, h                                       ; $7ab4: $4c
    dec de                                        ; $7ab5: $1b
    adc [hl]                                      ; $7ab6: $8e
    and a                                         ; $7ab7: $a7
    xor e                                         ; $7ab8: $ab
    ld l, b                                       ; $7ab9: $68
    ld c, c                                       ; $7aba: $49
    ld e, b                                       ; $7abb: $58
    push hl                                       ; $7abc: $e5
    cp b                                          ; $7abd: $b8
    ld [hl], d                                    ; $7abe: $72
    and a                                         ; $7abf: $a7
    halt                                          ; $7ac0: $76
    db $db                                        ; $7ac1: $db
    or [hl]                                       ; $7ac2: $b6
    ld a, [hl+]                                   ; $7ac3: $2a
    dec hl                                        ; $7ac4: $2b
    daa                                           ; $7ac5: $27
    dec hl                                        ; $7ac6: $2b
    ld c, a                                       ; $7ac7: $4f
    ld l, c                                       ; $7ac8: $69
    add hl, de                                    ; $7ac9: $19
    ld e, l                                       ; $7aca: $5d
    sbc c                                         ; $7acb: $99
    push hl                                       ; $7acc: $e5
    db $e4                                        ; $7acd: $e4
    ld l, b                                       ; $7ace: $68
    pop bc                                        ; $7acf: $c1
    ld c, a                                       ; $7ad0: $4f
    db $ec                                        ; $7ad1: $ec
    and e                                         ; $7ad2: $a3
    db $db                                        ; $7ad3: $db
    ld bc, $97d7                                  ; $7ad4: $01 $d7 $97
    add hl, de                                    ; $7ad7: $19
    ld l, $a2                                     ; $7ad8: $2e $a2

Call_06d_7ada:
Jump_06d_7ada:
jr_06d_7ada:
    ld sp, hl                                     ; $7ada: $f9
    ld [hl], a                                    ; $7adb: $77
    ld a, [$aac7]                                 ; $7adc: $fa $c7 $aa
    sbc h                                         ; $7adf: $9c
    xor h                                         ; $7ae0: $ac
    inc a                                         ; $7ae1: $3c
    and l                                         ; $7ae2: $a5
    ld h, l                                       ; $7ae3: $65
    and l                                         ; $7ae4: $a5
    ld b, [hl]                                    ; $7ae5: $46
    jp $d609                                      ; $7ae6: $c3 $09 $d6


    xor c                                         ; $7ae9: $a9
    ld h, e                                       ; $7aea: $63
    ld [$8847], a                                 ; $7aeb: $ea $47 $88
    ret c                                         ; $7aee: $d8

    or a                                          ; $7aef: $b7
    sbc [hl]                                      ; $7af0: $9e

jr_06d_7af1:
    and a                                         ; $7af1: $a7
    cp $27                                        ; $7af2: $fe $27
    sub l                                         ; $7af4: $95
    ld e, c                                       ; $7af5: $59
    ld c, [hl]                                    ; $7af6: $4e
    adc [hl]                                      ; $7af7: $8e
    ld b, $eb                                     ; $7af8: $06 $eb
    call nc, Call_000_3531                        ; $7afa: $d4 $31 $35
    inc [hl]                                      ; $7afd: $34
    ld a, [hl+]                                   ; $7afe: $2a
    ld [hl], e                                    ; $7aff: $73
    db $e4                                        ; $7b00: $e4
    and l                                         ; $7b01: $a5
    inc bc                                        ; $7b02: $03
    scf                                           ; $7b03: $37
    ld b, a                                       ; $7b04: $47
    sbc [hl]                                      ; $7b05: $9e
    dec [hl]                                      ; $7b06: $35
    jp nc, $3935                                  ; $7b07: $d2 $35 $39

    sub h                                         ; $7b0a: $94
    ld a, [hl+]                                   ; $7b0b: $2a
    ld h, a                                       ; $7b0c: $67
    ld b, a                                       ; $7b0d: $47
    sbc c                                         ; $7b0e: $99
    rst $00                                       ; $7b0f: $c7
    inc e                                         ; $7b10: $1c
    set 7, [hl]                                   ; $7b11: $cb $fe
    ld [hl], c                                    ; $7b13: $71
    ld a, e                                       ; $7b14: $7b
    and c                                         ; $7b15: $a1
    ld hl, $0d0c                                  ; $7b16: $21 $0c $0d
    ld l, l                                       ; $7b19: $6d
    ld h, h                                       ; $7b1a: $64
    or d                                          ; $7b1b: $b2
    ldh [$27], a                                  ; $7b1c: $e0 $27
    or $d9                                        ; $7b1e: $f6 $d9
    ld a, d                                       ; $7b20: $7a
    sbc [hl]                                      ; $7b21: $9e
    ld a, [$549f]                                 ; $7b22: $fa $9f $54
    pop de                                        ; $7b25: $d1
    sub d                                         ; $7b26: $92
    or b                                          ; $7b27: $b0
    add [hl]                                      ; $7b28: $86
    ld h, e                                       ; $7b29: $63
    ld b, l                                       ; $7b2a: $45
    jr nz, jr_06d_7ada                            ; $7b2b: $20 $ad

    or d                                          ; $7b2d: $b2
    adc [hl]                                      ; $7b2e: $8e
    sub l                                         ; $7b2f: $95
    or h                                          ; $7b30: $b4
    cp b                                          ; $7b31: $b8
    ld b, h                                       ; $7b32: $44
    ld c, e                                       ; $7b33: $4b
    jp nz, Jump_06d_481a                          ; $7b34: $c2 $1a $48

    inc l                                         ; $7b37: $2c
    ld [hl], a                                    ; $7b38: $77
    ld [hl], $ff                                  ; $7b39: $36 $ff
    ld c, [hl]                                    ; $7b3b: $4e
    rst $38                                       ; $7b3c: $ff
    ld e, b                                       ; $7b3d: $58
    dec c                                         ; $7b3e: $0d
    ld a, c                                       ; $7b3f: $79
    add d                                         ; $7b40: $82
    push de                                       ; $7b41: $d5
    ld h, c                                       ; $7b42: $61
    ld l, c                                       ; $7b43: $69
    inc sp                                        ; $7b44: $33
    inc a                                         ; $7b45: $3c
    or [hl]                                       ; $7b46: $b6
    inc bc                                        ; $7b47: $03
    ld d, a                                       ; $7b48: $57
    sbc l                                         ; $7b49: $9d
    inc de                                        ; $7b4a: $13
    inc [hl]                                      ; $7b4b: $34
    jp nc, $b935                                  ; $7b4c: $d2 $35 $b9

    ld a, [de]                                    ; $7b4f: $1a
    dec h                                         ; $7b50: $25
    db $fc                                        ; $7b51: $fc
    inc d                                         ; $7b52: $14
    add c                                         ; $7b53: $81
    or h                                          ; $7b54: $b4
    or [hl]                                       ; $7b55: $b6
    inc bc                                        ; $7b56: $03
    sbc a                                         ; $7b57: $9f
    pop de                                        ; $7b58: $d1
    call c, $acca                                 ; $7b59: $dc $ca $ac
    ld h, $74                                     ; $7b5c: $26 $74
    rst $20                                       ; $7b5e: $e7
    adc d                                         ; $7b5f: $8a
    ret                                           ; $7b60: $c9


    ld d, b                                       ; $7b61: $50
    db $e4                                        ; $7b62: $e4
    ld c, b                                       ; $7b63: $48
    xor l                                         ; $7b64: $ad
    ld h, a                                       ; $7b65: $67
    sub a                                         ; $7b66: $97
    sub l                                         ; $7b67: $95
    ld c, [hl]                                    ; $7b68: $4e
    jr c, jr_06d_7af1                             ; $7b69: $38 $86

    db $ed                                        ; $7b6b: $ed
    nop                                           ; $7b6c: $00
    rst $10                                       ; $7b6d: $d7
    ld h, a                                       ; $7b6e: $67
    adc a                                         ; $7b6f: $8f
    or h                                          ; $7b70: $b4
    inc de                                        ; $7b71: $13
    sub a                                         ; $7b72: $97
    add $5e                                       ; $7b73: $c6 $5e
    ld de, $dcc3                                  ; $7b75: $11 $c3 $dc
    add sp, -$11                                  ; $7b78: $e8 $ef
    db $f4                                        ; $7b7a: $f4
    db $ed                                        ; $7b7b: $ed
    ld [hl], l                                    ; $7b7c: $75
    cp e                                          ; $7b7d: $bb
    sbc a                                         ; $7b7e: $9f
    inc h                                         ; $7b7f: $24
    or $85                                        ; $7b80: $f6 $85
    cp [hl]                                       ; $7b82: $be
    sbc $cf                                       ; $7b83: $de $cf
    ld e, l                                       ; $7b85: $5d
    ccf                                           ; $7b86: $3f
    cp d                                          ; $7b87: $ba
    rst $18                                       ; $7b88: $df
    pop de                                        ; $7b89: $d1
    and [hl]                                      ; $7b8a: $a6
    ld l, a                                       ; $7b8b: $6f
    or e                                          ; $7b8c: $b3
    scf                                           ; $7b8d: $37
    add $22                                       ; $7b8e: $c6 $22
    or a                                          ; $7b90: $b7
    inc bc                                        ; $7b91: $03
    rst $10                                       ; $7b92: $d7
    adc l                                         ; $7b93: $8d
    jp z, $a91c                                   ; $7b94: $ca $1c $a9

    push af                                       ; $7b97: $f5
    db $ec                                        ; $7b98: $ec
    ld b, a                                       ; $7b99: $47
    adc b                                         ; $7b9a: $88
    ret c                                         ; $7b9b: $d8

    ei                                            ; $7b9c: $fb
    xor [hl]                                      ; $7b9d: $ae
    dec b                                         ; $7b9e: $05
    rst $00                                       ; $7b9f: $c7
    and l                                         ; $7ba0: $a5
    ld e, e                                       ; $7ba1: $5b
    cpl                                           ; $7ba2: $2f
    xor a                                         ; $7ba3: $af
    db $ec                                        ; $7ba4: $ec
    pop de                                        ; $7ba5: $d1
    ld [hl], e                                    ; $7ba6: $73
    daa                                           ; $7ba7: $27
    call nz, Call_000_3f0e                        ; $7ba8: $c4 $0e $3f
    cp d                                          ; $7bab: $ba
    push af                                       ; $7bac: $f5
    cp d                                          ; $7bad: $ba
    adc l                                         ; $7bae: $8d
    ld c, h                                       ; $7baf: $4c
    ld b, $eb                                     ; $7bb0: $06 $eb
    push af                                       ; $7bb2: $f5
    ld h, l                                       ; $7bb3: $65
    add [hl]                                      ; $7bb4: $86
    adc e                                         ; $7bb5: $8b
    add sp, $75                                   ; $7bb6: $e8 $75
    jr jr_06d_7c34                                ; $7bb8: $18 $7a

    dec c                                         ; $7bba: $0d
    ld l, e                                       ; $7bbb: $6b
    adc h                                         ; $7bbc: $8c
    jp c, Jump_000_19b7                           ; $7bbd: $da $b7 $19

    or c                                          ; $7bc0: $b1
    adc e                                         ; $7bc1: $8b
    xor c                                         ; $7bc2: $a9
    db $db                                        ; $7bc3: $db
    ld bc, $4737                                  ; $7bc4: $01 $37 $47
    sbc [hl]                                      ; $7bc7: $9e
    push af                                       ; $7bc8: $f5
    cp a                                          ; $7bc9: $bf
    ld d, d                                       ; $7bca: $52
    and a                                         ; $7bcb: $a7
    rst $10                                       ; $7bcc: $d7
    sub a                                         ; $7bcd: $97
    add hl, de                                    ; $7bce: $19
    ld l, $e2                                     ; $7bcf: $2e $e2
    adc l                                         ; $7bd1: $8d
    sbc [hl]                                      ; $7bd2: $9e
    rst $28                                       ; $7bd3: $ef
    xor h                                         ; $7bd4: $ac
    ld c, l                                       ; $7bd5: $4d
    ld [de], a                                    ; $7bd6: $12
    ld c, [hl]                                    ; $7bd7: $4e
    xor d                                         ; $7bd8: $aa
    ld h, e                                       ; $7bd9: $63
    ld l, d                                       ; $7bda: $6a
    ld l, b                                       ; $7bdb: $68
    ld d, h                                       ; $7bdc: $54
    and $c8                                       ; $7bdd: $e6 $c8
    ld a, d                                       ; $7bdf: $7a
    or $23                                        ; $7be0: $f6 $23
    ld b, h                                       ; $7be2: $44
    db $ec                                        ; $7be3: $ec
    db $db                                        ; $7be4: $db
    ld bc, $fd1f                                  ; $7be5: $01 $1f $fd
    adc [hl]                                      ; $7be8: $8e
    and b                                         ; $7be9: $a0
    ld c, h                                       ; $7bea: $4c
    call $d3bf                                    ; $7beb: $cd $bf $d3
    jp hl                                         ; $7bee: $e9


    ld a, a                                       ; $7bef: $7f
    ld l, l                                       ; $7bf0: $6d
    cp l                                          ; $7bf1: $bd
    ld b, $2d                                     ; $7bf2: $06 $2d
    ld d, e                                       ; $7bf4: $53
    sub l                                         ; $7bf5: $95
    xor e                                         ; $7bf6: $ab
    add c                                         ; $7bf7: $81
    call nz, Call_06d_6772                        ; $7bf8: $c4 $72 $67
    ld c, a                                       ; $7bfb: $4f
    and e                                         ; $7bfc: $a3
    ld de, $2cf5                                  ; $7bfd: $11 $f5 $2c
    ld d, l                                       ; $7c00: $55
    ld c, [hl]                                    ; $7c01: $4e
    or $b4                                        ; $7c02: $f6 $b4
    jp z, $0a59                                   ; $7c04: $ca $59 $0a

    dec l                                         ; $7c07: $2d
    and d                                         ; $7c08: $a2
    dec b                                         ; $7c09: $05
    ld l, e                                       ; $7c0a: $6b
    dec a                                         ; $7c0b: $3d
    dec de                                        ; $7c0c: $1b
    adc [hl]                                      ; $7c0d: $8e
    ld b, l                                       ; $7c0e: $45
    ld l, b                                       ; $7c0f: $68
    and e                                         ; $7c10: $a3
    ld hl, $784b                                  ; $7c11: $21 $4b $78
    add sp, $76                                   ; $7c14: $e8 $76
    nop                                           ; $7c16: $00
    rra                                           ; $7c17: $1f
    db $fd                                        ; $7c18: $fd
    adc [hl]                                      ; $7c19: $8e
    and b                                         ; $7c1a: $a0
    ld c, h                                       ; $7c1b: $4c
    call $d3bf                                    ; $7c1c: $cd $bf $d3
    jp hl                                         ; $7c1f: $e9


    ld a, a                                       ; $7c20: $7f
    ld l, l                                       ; $7c21: $6d
    rlca                                          ; $7c22: $07
    rst $10                                       ; $7c23: $d7
    sub a                                         ; $7c24: $97
    add hl, de                                    ; $7c25: $19
    ld l, $e2                                     ; $7c26: $2e $e2
    ld d, d                                       ; $7c28: $52
    ld l, a                                       ; $7c29: $6f
    db $fc                                        ; $7c2a: $fc
    ld c, [hl]                                    ; $7c2b: $4e
    ld b, l                                       ; $7c2c: $45
    ret z                                         ; $7c2d: $c8

    ld de, $a0ea                                  ; $7c2e: $11 $ea $a0

Jump_06d_7c31:
    sub l                                         ; $7c31: $95
    db $e3                                        ; $7c32: $e3
    and [hl]                                      ; $7c33: $a6

jr_06d_7c34:
    call c, $40d9                                 ; $7c34: $dc $d9 $40
    ld h, d                                       ; $7c37: $62
    di                                            ; $7c38: $f3
    ld l, b                                       ; $7c39: $68
    dec a                                         ; $7c3a: $3d
    rst $10                                       ; $7c3b: $d7
    dec l                                         ; $7c3c: $2d
    cp b                                          ; $7c3d: $b8
    jp z, Jump_06d_4d71                           ; $7c3e: $ca $71 $4d

    ld c, $75                                     ; $7c41: $0e $75
    pop bc                                        ; $7c43: $c1
    dec d                                         ; $7c44: $15
    pop bc                                        ; $7c45: $c1
    ld h, c                                       ; $7c46: $61
    db $eb                                        ; $7c47: $eb
    dec [hl]                                      ; $7c48: $35
    ld l, b                                       ; $7c49: $68
    sbc c                                         ; $7c4a: $99
    sbc d                                         ; $7c4b: $9a
    ld a, a                                       ; $7c4c: $7f
    and a                                         ; $7c4d: $a7
    db $d3                                        ; $7c4e: $d3
    ret z                                         ; $7c4f: $c8

    inc l                                         ; $7c50: $2c
    sbc [hl]                                      ; $7c51: $9e
    cp $97                                        ; $7c52: $fe $97
    add $a9                                       ; $7c54: $c6 $a9
    ld d, c                                       ; $7c56: $51
    ld [hl-], a                                   ; $7c57: $32
    ld b, a                                       ; $7c58: $47
    ld a, [hl-]                                   ; $7c59: $3a
    and $c8                                       ; $7c5a: $e6 $c8
    db $ed                                        ; $7c5c: $ed
    nop                                           ; $7c5d: $00
    rst $20                                       ; $7c5e: $e7
    xor c                                         ; $7c5f: $a9
    ld sp, hl                                     ; $7c60: $f9
    ld [hl], a                                    ; $7c61: $77
    ld a, [hl-]                                   ; $7c62: $3a
    db $fd                                        ; $7c63: $fd
    cpl                                           ; $7c64: $2f
    ld b, c                                       ; $7c65: $41
    inc sp                                        ; $7c66: $33
    ld e, l                                       ; $7c67: $5d
    and a                                         ; $7c68: $a7
    jp z, $d0d4                                   ; $7c69: $ca $d4 $d0

    xor b                                         ; $7c6c: $a8
    call z, Call_06d_5b91                         ; $7c6d: $cc $91 $5b
    rst $08                                       ; $7c70: $cf
    dec [hl]                                      ; $7c71: $35
    and h                                         ; $7c72: $a4
    ld c, l                                       ; $7c73: $4d
    inc bc                                        ; $7c74: $03
    adc c                                         ; $7c75: $89
    call $d3bf                                    ; $7c76: $cd $bf $d3
    ret z                                         ; $7c79: $c8

    inc l                                         ; $7c7a: $2c
    ld b, [hl]                                    ; $7c7b: $46
    inc sp                                        ; $7c7c: $33
    inc a                                         ; $7c7d: $3c
    ld a, d                                       ; $7c7e: $7a
    ld a, [de]                                    ; $7c7f: $1a
    adc l                                         ; $7c80: $8d
    and e                                         ; $7c81: $a3
    db $d3                                        ; $7c82: $d3
    db $10                                        ; $7c83: $10
    add [hl]                                      ; $7c84: $86
    jp z, $b471                                   ; $7c85: $ca $71 $b4

    ld a, d                                       ; $7c88: $7a
    and $68                                       ; $7c89: $e6 $68
    ld d, e                                       ; $7c8b: $53
    rst $08                                       ; $7c8c: $cf
    sbc l                                         ; $7c8d: $9d
    db $db                                        ; $7c8e: $db
    ld bc, $a9e7                                  ; $7c8f: $01 $e7 $a9
    ld b, [hl]                                    ; $7c92: $46
    db $ec                                        ; $7c93: $ec
    adc [hl]                                      ; $7c94: $8e
    add hl, sp                                    ; $7c95: $39
    or d                                          ; $7c96: $b2
    and a                                         ; $7c97: $a7
    pop de                                        ; $7c98: $d1
    ld [$a85b], sp                                ; $7c99: $08 $5b $a8
    ld h, a                                       ; $7c9c: $67
    dec d                                         ; $7c9d: $15
    ld b, d                                       ; $7c9e: $42
    ld e, d                                       ; $7c9f: $5a
    and a                                         ; $7ca0: $a7
    add c                                         ; $7ca1: $81
    call nz, $f18a                                ; $7ca2: $c4 $8a $f1
    ld e, a                                       ; $7ca5: $5f
    ld l, b                                       ; $7ca6: $68
    ld b, [hl]                                    ; $7ca7: $46
    jr nz, jr_06d_7d1b                            ; $7ca8: $20 $71

    ld h, a                                       ; $7caa: $67
    ld b, e                                       ; $7cab: $43
    and e                                         ; $7cac: $a3
    ld [hl-], a                                   ; $7cad: $32
    ld b, a                                       ; $7cae: $47
    ld [hl], $90                                  ; $7caf: $36 $90
    ld e, b                                       ; $7cb1: $58
    xor $ec                                       ; $7cb2: $ee $ec
    adc $ff                                       ; $7cb4: $ce $ff
    and h                                         ; $7cb6: $a4
    db $ed                                        ; $7cb7: $ed
    nop                                           ; $7cb8: $00
    rra                                           ; $7cb9: $1f
    db $dd                                        ; $7cba: $dd
    and e                                         ; $7cbb: $a3
    sbc l                                         ; $7cbc: $9d
    cp $97                                        ; $7cbd: $fe $97
    dec de                                        ; $7cbf: $1b
    xor l                                         ; $7cc0: $ad
    ld l, b                                       ; $7cc1: $68
    ld c, a                                       ; $7cc2: $4f
    ld sp, $fb21                                  ; $7cc3: $31 $21 $fb
    add hl, hl                                    ; $7cc6: $29
    and d                                         ; $7cc7: $a2
    pop hl                                        ; $7cc8: $e1
    ld a, a                                       ; $7cc9: $7f
    ld b, c                                       ; $7cca: $41
    db $eb                                        ; $7ccb: $eb
    pop de                                        ; $7ccc: $d1
    ld [hl], b                                    ; $7ccd: $70
    inc l                                         ; $7cce: $2c
    and d                                         ; $7ccf: $a2

Jump_06d_7cd0:
    pop de                                        ; $7cd0: $d1
    sub b                                         ; $7cd1: $90
    dec h                                         ; $7cd2: $25
    inc a                                         ; $7cd3: $3c
    ld [$b951], a                                 ; $7cd4: $ea $51 $b9
    ld b, e                                       ; $7cd7: $43
    sub l                                         ; $7cd8: $95
    push af                                       ; $7cd9: $f5
    db $ec                                        ; $7cda: $ec
    and a                                         ; $7cdb: $a7
    add hl, hl                                    ; $7cdc: $29
    ld b, e                                       ; $7cdd: $43
    ld a, e                                       ; $7cde: $7b
    add hl, sp                                    ; $7cdf: $39
    rst $00                                       ; $7ce0: $c7
    ld [hl], l                                    ; $7ce1: $75
    add d                                         ; $7ce2: $82
    ld l, [hl]                                    ; $7ce3: $6e
    rlca                                          ; $7ce4: $07
    rst $20                                       ; $7ce5: $e7
    xor c                                         ; $7ce6: $a9
    db $d3                                        ; $7ce7: $d3
    rst $38                                       ; $7ce8: $ff
    xor d                                         ; $7ce9: $aa
    and a                                         ; $7cea: $a7
    ld c, d                                       ; $7ceb: $4a
    ld h, [hl]                                    ; $7cec: $66
    ccf                                           ; $7ced: $3f
    push af                                       ; $7cee: $f5
    ld d, e                                       ; $7cef: $53
    push hl                                       ; $7cf0: $e5
    xor l                                         ; $7cf1: $ad
    jr c, jr_06d_7d39                             ; $7cf2: $38 $45

    or $30                                        ; $7cf4: $f6 $30
    ld b, c                                       ; $7cf6: $41
    dec e                                         ; $7cf7: $1d
    or h                                          ; $7cf8: $b4
    call c, $fcd9                                 ; $7cf9: $dc $d9 $fc
    dec sp                                        ; $7cfc: $3b
    and l                                         ; $7cfd: $a5
    ld b, [hl]                                    ; $7cfe: $46
    db $fc                                        ; $7cff: $fc
    ld d, c                                       ; $7d00: $51
    add hl, bc                                    ; $7d01: $09
    inc sp                                        ; $7d02: $33
    sbc [hl]                                      ; $7d03: $9e
    sub b                                         ; $7d04: $90
    db $fd                                        ; $7d05: $fd
    inc [hl]                                      ; $7d06: $34
    jp $3b63                                      ; $7d07: $c3 $63 $3b


    nop                                           ; $7d0a: $00
    sbc a                                         ; $7d0b: $9f
    or c                                          ; $7d0c: $b1
    ld hl, $894f                                  ; $7d0d: $21 $4f $89
    db $eb                                        ; $7d10: $eb
    ld d, d                                       ; $7d11: $52
    ld l, a                                       ; $7d12: $6f
    adc [hl]                                      ; $7d13: $8e
    inc a                                         ; $7d14: $3c
    db $eb                                        ; $7d15: $eb
    add l                                         ; $7d16: $85
    ld a, d                                       ; $7d17: $7a
    db $f4                                        ; $7d18: $f4
    ld e, l                                       ; $7d19: $5d
    ld e, e                                       ; $7d1a: $5b

jr_06d_7d1b:
    and d                                         ; $7d1b: $a2
    sub l                                         ; $7d1c: $95
    rst $28                                       ; $7d1d: $ef
    or c                                          ; $7d1e: $b1
    add l                                         ; $7d1f: $85
    ld l, [hl]                                    ; $7d20: $6e
    db $db                                        ; $7d21: $db
    sub $70                                       ; $7d22: $d6 $70
    inc l                                         ; $7d24: $2c
    ld [hl+], a                                   ; $7d25: $22
    rst $00                                       ; $7d26: $c7
    ld de, $5214                                  ; $7d27: $11 $14 $52
    inc a                                         ; $7d2a: $3c
    dec c                                         ; $7d2b: $0d
    inc h                                         ; $7d2c: $24
    sub $f3                                       ; $7d2d: $d6 $f3
    ld c, a                                       ; $7d2f: $4f
    scf                                           ; $7d30: $37
    jp c, $fd65                                   ; $7d31: $da $65 $fd

    db $d3                                        ; $7d34: $d3
    adc d                                         ; $7d35: $8a
    add [hl]                                      ; $7d36: $86
    ld [hl], $22                                  ; $7d37: $36 $22

jr_06d_7d39:
    xor d                                         ; $7d39: $aa
    adc [hl]                                      ; $7d3a: $8e

jr_06d_7d3b:
    and c                                         ; $7d3b: $a1
    rst $10                                       ; $7d3c: $d7
    db $e4                                        ; $7d3d: $e4
    cp e                                          ; $7d3e: $bb
    sub e                                         ; $7d3f: $93
    ld [hl], c                                    ; $7d40: $71
    jp nz, $6fbe                                  ; $7d41: $c2 $be $6f

    rlca                                          ; $7d44: $07
    rst $20                                       ; $7d45: $e7
    add hl, sp                                    ; $7d46: $39
    ld a, [de]                                    ; $7d47: $1a
    xor h                                         ; $7d48: $ac
    ld a, c                                       ; $7d49: $79
    ld [$de19], a                                 ; $7d4a: $ea $19 $de
    and e                                         ; $7d4d: $a3
    dec hl                                        ; $7d4e: $2b
    ld c, [hl]                                    ; $7d4f: $4e
    db $fd                                        ; $7d50: $fd
    db $f4                                        ; $7d51: $f4
    add [hl]                                      ; $7d52: $86
    ld l, l                                       ; $7d53: $6d
    ld a, l                                       ; $7d54: $7d
    ld h, a                                       ; $7d55: $67
    db $ed                                        ; $7d56: $ed
    ld d, d                                       ; $7d57: $52
    call c, Call_06d_4d0b                         ; $7d58: $dc $0b $4d
    xor [hl]                                      ; $7d5b: $ae
    ld [de], a                                    ; $7d5c: $12
    ld a, [hl-]                                   ; $7d5d: $3a
    push de                                       ; $7d5e: $d5
    dec bc                                        ; $7d5f: $0b
    or [hl]                                       ; $7d60: $b6

jr_06d_7d61:
    ld b, [hl]                                    ; $7d61: $46
    ret nc                                        ; $7d62: $d0

    xor e                                         ; $7d63: $ab
    jr nc, jr_06d_7d61                            ; $7d64: $30 $fb

    ld l, c                                       ; $7d66: $69
    dec sp                                        ; $7d67: $3b
    nop                                           ; $7d68: $00
    rst $10                                       ; $7d69: $d7
    and b                                         ; $7d6a: $a0
    dec c                                         ; $7d6b: $0d
    ld l, l                                       ; $7d6c: $6d
    ld b, h                                       ; $7d6d: $44
    ld d, h                                       ; $7d6e: $54
    dec e                                         ; $7d6f: $1d
    ld b, e                                       ; $7d70: $43
    xor a                                         ; $7d71: $af
    ret                                           ; $7d72: $c9


    ld [hl], a                                    ; $7d73: $77
    daa                                           ; $7d74: $27
    db $e3                                        ; $7d75: $e3
    add h                                         ; $7d76: $84
    ld a, l                                       ; $7d77: $7d
    rst $28                                       ; $7d78: $ef
    or [hl]                                       ; $7d79: $b6
    ld l, l                                       ; $7d7a: $6d
    rlca                                          ; $7d7b: $07
    scf                                           ; $7d7c: $37
    add sp, -$16                                  ; $7d7d: $e8 $ea
    xor c                                         ; $7d7f: $a9
    ld [hl-], a                                   ; $7d80: $32
    db $ed                                        ; $7d81: $ed
    ld hl, $52f4                                  ; $7d82: $21 $f4 $52

Call_06d_7d85:
    rst $18                                       ; $7d85: $df
    rrca                                          ; $7d86: $0f
    ld l, [hl]                                    ; $7d87: $6e
    jr nz, jr_06d_7d3b                            ; $7d88: $20 $b1

    rla                                           ; $7d8a: $17
    ld a, [$2211]                                 ; $7d8b: $fa $11 $22
    halt                                          ; $7d8e: $76
    ld b, c                                       ; $7d8f: $41
    sbc c                                         ; $7d90: $99
    cp d                                          ; $7d91: $ba
    adc h                                         ; $7d92: $8c
    xor e                                         ; $7d93: $ab
    sbc [hl]                                      ; $7d94: $9e
    ld a, $dd                                     ; $7d95: $3e $dd
    ld e, [hl]                                    ; $7d97: $5e
    ld d, [hl]                                    ; $7d98: $56
    add h                                         ; $7d99: $84
    call z, $3ed0                                 ; $7d9a: $cc $d0 $3e
    db $dd                                        ; $7d9d: $dd
    ld [hl], b                                    ; $7d9e: $70
    ld [hl], d                                    ; $7d9f: $72
    sbc h                                         ; $7da0: $9c
    ld a, d                                       ; $7da1: $7a
    db $f4                                        ; $7da2: $f4
    ld e, l                                       ; $7da3: $5d
    ld e, e                                       ; $7da4: $5b
    and d                                         ; $7da5: $a2
    sub l                                         ; $7da6: $95
    rst $28                                       ; $7da7: $ef
    or c                                          ; $7da8: $b1
    add l                                         ; $7da9: $85
    xor l                                         ; $7daa: $ad
    sub a                                         ; $7dab: $97
    ld c, a                                       ; $7dac: $4f
    ld h, e                                       ; $7dad: $63
    add sp, $3f                                   ; $7dae: $e8 $3f
    cp b                                          ; $7db0: $b8
    ret z                                         ; $7db1: $c8

    ld e, $d9                                     ; $7db2: $1e $d9
    rst $08                                       ; $7db4: $cf
    and l                                         ; $7db5: $a5
    inc bc                                        ; $7db6: $03
    rst $20                                       ; $7db7: $e7
    dec d                                         ; $7db8: $15
    xor l                                         ; $7db9: $ad
    ld b, b                                       ; $7dba: $40
    ld h, d                                       ; $7dbb: $62
    rst $30                                       ; $7dbc: $f7
    ret                                           ; $7dbd: $c9


    daa                                           ; $7dbe: $27
    sub $b3                                       ; $7dbf: $d6 $b3
    ld a, e                                       ; $7dc1: $7b
    ld a, [hl-]                                   ; $7dc2: $3a
    pop bc                                        ; $7dc3: $c1
    xor b                                         ; $7dc4: $a8
    dec c                                         ; $7dc5: $0d
    inc h                                         ; $7dc6: $24
    ld [hl], $ff                                  ; $7dc7: $36 $ff
    ld c, [hl]                                    ; $7dc9: $4e
    ld [hl], a                                    ; $7dca: $77
    ld sp, $d7eb                                  ; $7dcb: $31 $eb $d7
    ld l, l                                       ; $7dce: $6d
    cp d                                          ; $7dcf: $ba
    ld a, [de]                                    ; $7dd0: $1a
    dec [hl]                                      ; $7dd1: $35
    db $e4                                        ; $7dd2: $e4
    adc d                                         ; $7dd3: $8a
    ld [hl], e                                    ; $7dd4: $73
    jp hl                                         ; $7dd5: $e9


    nop                                           ; $7dd6: $00
    scf                                           ; $7dd7: $37
    ld b, a                                       ; $7dd8: $47
    sbc [hl]                                      ; $7dd9: $9e
    sub l                                         ; $7dda: $95
    ld e, c                                       ; $7ddb: $59
    ld c, [hl]                                    ; $7ddc: $4e
    adc [hl]                                      ; $7ddd: $8e
    ld [hl], $a9                                  ; $7dde: $36 $a9
    jp z, $d0d4                                   ; $7de0: $ca $d4 $d0

    xor b                                         ; $7de3: $a8
    call z, $8291                                 ; $7de4: $cc $91 $82
    ld e, [hl]                                    ; $7de7: $5e
    add l                                         ; $7de8: $85
    reti                                          ; $7de9: $d9


    ld c, a                                       ; $7dea: $4f
    ld l, a                                       ; $7deb: $6f
    inc e                                         ; $7dec: $1c
    rra                                           ; $7ded: $1f
    db $fd                                        ; $7dee: $fd
    adc $76                                       ; $7def: $ce $76
    nop                                           ; $7df1: $00
    ld l, a                                       ; $7df2: $6f
    pop de                                        ; $7df3: $d1
    add hl, bc                                    ; $7df4: $09
    ld a, [hl+]                                   ; $7df5: $2a
    daa                                           ; $7df6: $27
    rst $00                                       ; $7df7: $c7
    sub l                                         ; $7df8: $95
    inc de                                        ; $7df9: $13
    dec de                                        ; $7dfa: $1b
    sbc c                                         ; $7dfb: $99
    inc hl                                        ; $7dfc: $23
    or d                                          ; $7dfd: $b2
    sbc a                                         ; $7dfe: $9f
    xor l                                         ; $7dff: $ad
    rst $20                                       ; $7e00: $e7
    xor c                                         ; $7e01: $a9
    ld sp, hl                                     ; $7e02: $f9
    ld [hl], a                                    ; $7e03: $77
    ld a, [$549f]                                 ; $7e04: $fa $9f $54
    ld [$596d], sp                                ; $7e07: $08 $6d $59
    and a                                         ; $7e0a: $a7

Jump_06d_7e0b:
    adc [hl]                                      ; $7e0b: $8e
    xor c                                         ; $7e0c: $a9
    adc b                                         ; $7e0d: $88
    rla                                           ; $7e0e: $17
    ld a, [de]                                    ; $7e0f: $1a
    ld c, b                                       ; $7e10: $48
    db $ec                                        ; $7e11: $ec
    ld a, a                                       ; $7e12: $7f
    db $e4                                        ; $7e13: $e4
    ld e, c                                       ; $7e14: $59
    jp $4551                                      ; $7e15: $c3 $51 $45


    ld hl, $65b4                                  ; $7e18: $21 $b4 $65
    sbc l                                         ; $7e1b: $9d
    ld a, [hl+]                                   ; $7e1c: $2a
    db $d3                                        ; $7e1d: $d3
    halt                                          ; $7e1e: $76
    nop                                           ; $7e1f: $00

jr_06d_7e20:
    sbc a                                         ; $7e20: $9f
    ld c, [hl]                                    ; $7e21: $4e
    cp $e9                                        ; $7e22: $fe $e9
    ld d, d                                       ; $7e24: $52
    rst $08                                       ; $7e25: $cf
    ld d, e                                       ; $7e26: $53
    push hl                                       ; $7e27: $e5
    ld h, h                                       ; $7e28: $64
    push hl                                       ; $7e29: $e5
    add hl, hl                                    ; $7e2a: $29
    xor l                                         ; $7e2b: $ad
    ld a, [hl-]                                   ; $7e2c: $3a
    and [hl]                                      ; $7e2d: $a6
    add [hl]                                      ; $7e2e: $86
    ld b, [hl]                                    ; $7e2f: $46
    ld h, l                                       ; $7e30: $65
    adc [hl]                                      ; $7e31: $8e
    xor h                                         ; $7e32: $ac
    ld h, a                                       ; $7e33: $67
    rst $38                                       ; $7e34: $ff
    or e                                          ; $7e35: $b3
    ld b, a                                       ; $7e36: $47
    ld e, h                                       ; $7e37: $5c
    ld a, [hl-]                                   ; $7e38: $3a
    nop                                           ; $7e39: $00
    rra                                           ; $7e3a: $1f
    ld a, [c]                                     ; $7e3b: $f2
    add h                                         ; $7e3c: $84
    db $fd                                        ; $7e3d: $fd
    ld d, d                                       ; $7e3e: $52
    ld l, a                                       ; $7e3f: $6f
    jp nz, Jump_000_168d                          ; $7e40: $c2 $8d $16

    ld b, d                                       ; $7e43: $42
    cp e                                          ; $7e44: $bb
    ei                                            ; $7e45: $fb
    adc c                                         ; $7e46: $89
    ld a, l                                       ; $7e47: $7d
    ld [hl], h                                    ; $7e48: $74
    dec sp                                        ; $7e49: $3b
    nop                                           ; $7e4a: $00
    rst $10                                       ; $7e4b: $d7
    ld h, c                                       ; $7e4c: $61
    add sp, -$0c                                  ; $7e4d: $e8 $f4
    ld a, [hl+]                                   ; $7e4f: $2a
    call z, $127e                                 ; $7e50: $cc $7e $12
    call nc, Call_06d_57b3                        ; $7e53: $d4 $b3 $57
    ld [hl], c                                    ; $7e56: $71
    or d                                          ; $7e57: $b2
    push hl                                       ; $7e58: $e5
    or a                                          ; $7e59: $b7
    inc bc                                        ; $7e5a: $03
    sbc a                                         ; $7e5b: $9f
    dec sp                                        ; $7e5c: $3b
    ld d, h                                       ; $7e5d: $54
    or h                                          ; $7e5e: $b4
    inc hl                                        ; $7e5f: $23
    ld b, l                                       ; $7e60: $45
    call nc, Call_000_0eb3                        ; $7e61: $d4 $b3 $0e
    sbc [hl]                                      ; $7e64: $9e
    bit 6, b                                      ; $7e65: $cb $70
    xor c                                         ; $7e67: $a9
    rst $20                                       ; $7e68: $e7
    dec c                                         ; $7e69: $0d
    ld h, c                                       ; $7e6a: $61
    sub h                                         ; $7e6b: $94
    ld l, h                                       ; $7e6c: $6c
    jr nz, jr_06d_7e20                            ; $7e6d: $20 $b1

    and d                                         ; $7e6f: $a2
    ld e, c                                       ; $7e70: $59
    push hl                                       ; $7e71: $e5
    adc $3a                                       ; $7e72: $ce $3a
    xor d                                         ; $7e74: $aa
    sbc e                                         ; $7e75: $9b
    ld b, $12                                     ; $7e76: $06 $12
    ld e, l                                       ; $7e78: $5d
    ld b, l                                       ; $7e79: $45
    cp h                                          ; $7e7a: $bc
    cp l                                          ; $7e7b: $bd
    dec e                                         ; $7e7c: $1d
    rra                                           ; $7e7d: $1f
    ld d, a                                       ; $7e7e: $57
    rst $00                                       ; $7e7f: $c7
    push de                                       ; $7e80: $d5
    ld [hl], e                                    ; $7e81: $73
    ld b, a                                       ; $7e82: $47
    ld b, e                                       ; $7e83: $43
    jr jr_06d_7eab                                ; $7e84: $18 $25

    sbc e                                         ; $7e86: $9b
    ld e, h                                       ; $7e87: $5c
    jp $7249                                      ; $7e88: $c3 $49 $72


    ld a, [hl+]                                   ; $7e8b: $2a
    rst $00                                       ; $7e8c: $c7
    dec [hl]                                      ; $7e8d: $35
    add hl, sp                                    ; $7e8e: $39
    ld d, h                                       ; $7e8f: $54
    adc [hl]                                      ; $7e90: $8e
    and l                                         ; $7e91: $a5
    rst $28                                       ; $7e92: $ef
    or c                                          ; $7e93: $b1
    dec e                                         ; $7e94: $1d
    rra                                           ; $7e95: $1f
    adc e                                         ; $7e96: $8b
    dec sp                                        ; $7e97: $3b
    ld h, d                                       ; $7e98: $62
    ld b, c                                       ; $7e99: $41
    daa                                           ; $7e9a: $27
    ld b, l                                       ; $7e9b: $45
    sbc e                                         ; $7e9c: $9b
    ld l, d                                       ; $7e9d: $6a
    cp d                                          ; $7e9e: $ba
    db $10                                        ; $7e9f: $10
    ld l, c                                       ; $7ea0: $69
    sub l                                         ; $7ea1: $95
    ld h, e                                       ; $7ea2: $63
    push af                                       ; $7ea3: $f5
    ld l, h                                       ; $7ea4: $6c
    ld e, h                                       ; $7ea5: $5c
    rst $18                                       ; $7ea6: $df
    rst $08                                       ; $7ea7: $cf
    ld a, $5b                                     ; $7ea8: $3e $5b
    rst $08                                       ; $7eaa: $cf

jr_06d_7eab:
    ld d, e                                       ; $7eab: $53
    rst $00                                       ; $7eac: $c7
    ld [hl], e                                    ; $7ead: $73
    ld c, l                                       ; $7eae: $4d
    push hl                                       ; $7eaf: $e5
    ld e, b                                       ; $7eb0: $58
    dec a                                         ; $7eb1: $3d
    dec de                                        ; $7eb2: $1b
    rst $10                                       ; $7eb3: $d7
    rst $30                                       ; $7eb4: $f7
    or e                                          ; $7eb5: $b3
    rst $08                                       ; $7eb6: $cf
    halt                                          ; $7eb7: $76
    nop                                           ; $7eb8: $00
    sbc a                                         ; $7eb9: $9f
    pop de                                        ; $7eba: $d1
    dec [hl]                                      ; $7ebb: $35
    cp c                                          ; $7ebc: $b9
    ld a, [bc]                                    ; $7ebd: $0a
    rst $10                                       ; $7ebe: $d7
    ld l, $66                                     ; $7ebf: $2e $66
    ld h, h                                       ; $7ec1: $64
    ld de, $6b48                                  ; $7ec2: $11 $48 $6b
    dec sp                                        ; $7ec5: $3b
    nop                                           ; $7ec6: $00
    ld l, a                                       ; $7ec7: $6f
    ld c, a                                       ; $7ec8: $4f
    ccf                                           ; $7ec9: $3f
    ld e, e                                       ; $7eca: $5b
    db $d3                                        ; $7ecb: $d3
    sbc e                                         ; $7ecc: $9b
    pop bc                                        ; $7ecd: $c1
    ld a, e                                       ; $7ece: $7b
    and h                                         ; $7ecf: $a4
    sub l                                         ; $7ed0: $95
    push af                                       ; $7ed1: $f5
    ld l, b                                       ; $7ed2: $68
    ld e, h                                       ; $7ed3: $5c
    add sp, $75                                   ; $7ed4: $e8 $75
    add $fb                                       ; $7ed6: $c6 $fb
    di                                            ; $7ed8: $f3
    jp nz, Jump_000_0076                          ; $7ed9: $c2 $76 $00

    sbc a                                         ; $7edc: $9f
    dec sp                                        ; $7edd: $3b
    call nc, Call_000_3d0d                        ; $7ede: $d4 $0d $3d
    ld [$e7d9], a                                 ; $7ee1: $ea $d9 $e7
    sbc a                                         ; $7ee4: $9f
    ld l, d                                       ; $7ee5: $6a
    ret z                                         ; $7ee6: $c8

    inc l                                         ; $7ee7: $2c
    cp c                                          ; $7ee8: $b9
    push af                                       ; $7ee9: $f5
    sub e                                         ; $7eea: $93
    call nz, Call_06d_72ea                        ; $7eeb: $c4 $ea $72
    ld h, c                                       ; $7eee: $61
    ld [hl], b                                    ; $7eef: $70
    ld e, h                                       ; $7ef0: $5c
    ld [hl], d                                    ; $7ef1: $72
    inc b                                         ; $7ef2: $04
    push af                                       ; $7ef3: $f5
    ld l, b                                       ; $7ef4: $68
    ld [$ac8b], sp                                ; $7ef5: $08 $8b $ac
    rst $20                                       ; $7ef8: $e7
    ld c, [hl]                                    ; $7ef9: $4e
    db $dd                                        ; $7efa: $dd
    ld c, $37                                     ; $7efb: $0e $37
    ld sp, hl                                     ; $7efd: $f9
    dec a                                         ; $7efe: $3d
    inc b                                         ; $7eff: $04
    ld c, l                                       ; $7f00: $4d
    ld c, $95                                     ; $7f01: $0e $95
    ld e, b                                       ; $7f03: $58
    or a                                          ; $7f04: $b7
    ret nc                                        ; $7f05: $d0

    sub e                                         ; $7f06: $93
    ld hl, $d67b                                  ; $7f07: $21 $7b $d6
    or e                                          ; $7f0a: $b3
    adc d                                         ; $7f0b: $8a
    ld [hl], b                                    ; $7f0c: $70
    or h                                          ; $7f0d: $b4
    sbc [hl]                                      ; $7f0e: $9e
    sub l                                         ; $7f0f: $95
    ld [c], a                                     ; $7f10: $e2
    sub c                                         ; $7f11: $91
    or e                                          ; $7f12: $b3
    inc hl                                        ; $7f13: $23
    ld [hl], d                                    ; $7f14: $72
    db $eb                                        ; $7f15: $eb
    rst $00                                       ; $7f16: $c7

Call_06d_7f17:
    dec d                                         ; $7f17: $15
    xor [hl]                                      ; $7f18: $ae
    ld e, l                                       ; $7f19: $5d
    call z, $fac8                                 ; $7f1a: $cc $c8 $fa
    ld [hl], l                                    ; $7f1d: $75
    cp e                                          ; $7f1e: $bb
    add c                                         ; $7f1f: $81
    call nz, Call_000_1206                        ; $7f20: $c4 $06 $12
    ld e, l                                       ; $7f23: $5d
    dec e                                         ; $7f24: $1d
    or d                                          ; $7f25: $b2
    sbc a                                         ; $7f26: $9f
    ld d, h                                       ; $7f27: $54
    pop de                                        ; $7f28: $d1
    xor h                                         ; $7f29: $ac
    and d                                         ; $7f2a: $a2
    ld d, a                                       ; $7f2b: $57
    ld l, c                                       ; $7f2c: $69
    ld l, [hl]                                    ; $7f2d: $6e
    ld c, l                                       ; $7f2e: $4d
    and $d6                                       ; $7f2f: $e6 $d6
    di                                            ; $7f31: $f3
    ld b, [hl]                                    ; $7f32: $46
    cp d                                          ; $7f33: $ba
    ld h, $87                                     ; $7f34: $26 $87
    ld c, d                                       ; $7f36: $4a
    ld e, b                                       ; $7f37: $58
    ld b, h                                       ; $7f38: $44
    dec a                                         ; $7f39: $3d
    dec hl                                        ; $7f3a: $2b
    or h                                          ; $7f3b: $b4
    ld [hl], h                                    ; $7f3c: $74
    dec bc                                        ; $7f3d: $0b
    ld e, d                                       ; $7f3e: $5a
    ld d, [hl]                                    ; $7f3f: $56
    ld l, b                                       ; $7f40: $68
    jp hl                                         ; $7f41: $e9


    sub $68                                       ; $7f42: $d6 $68
    ld b, l                                       ; $7f44: $45
    ld [hl], b                                    ; $7f45: $70
    and e                                         ; $7f46: $a3
    and e                                         ; $7f47: $a3
    sub l                                         ; $7f48: $95
    db $e3                                        ; $7f49: $e3
    ld a, [hl-]                                   ; $7f4a: $3a
    ld a, l                                       ; $7f4b: $7d
    dec sp                                        ; $7f4c: $3b
    add hl, sp                                    ; $7f4d: $39
    pop hl                                        ; $7f4e: $e1
    ld c, [hl]                                    ; $7f4f: $4e
    ccf                                           ; $7f50: $3f
    add $22                                       ; $7f51: $c6 $22
    sub b                                         ; $7f53: $90
    sub $a5                                       ; $7f54: $d6 $a5
    inc bc                                        ; $7f56: $03
    rst $20                                       ; $7f57: $e7
    ld a, [de]                                    ; $7f58: $1a
    ld d, c                                       ; $7f59: $51
    rst $08                                       ; $7f5a: $cf
    ccf                                           ; $7f5b: $3f
    ld l, l                                       ; $7f5c: $6d
    and c                                         ; $7f5d: $a1
    ld c, d                                       ; $7f5e: $4a
    ld l, e                                       ; $7f5f: $6b
    ld [hl], d                                    ; $7f60: $72
    xor b                                         ; $7f61: $a8
    add h                                         ; $7f62: $84
    ld b, l                                       ; $7f63: $45
    ld d, h                                       ; $7f64: $54
    jr c, jr_06d_7fcf                             ; $7f65: $38 $68

    ld [$9543], sp                                ; $7f67: $08 $43 $95
    adc l                                         ; $7f6a: $8d
    or h                                          ; $7f6b: $b4
    db $ed                                        ; $7f6c: $ed
    nop                                           ; $7f6d: $00
    sbc a                                         ; $7f6e: $9f
    ld c, [hl]                                    ; $7f6f: $4e
    cp $49                                        ; $7f70: $fe $49
    ret nc                                        ; $7f72: $d0

    ld c, c                                       ; $7f73: $49
    rla                                           ; $7f74: $17
    ld d, c                                       ; $7f75: $51
    cp l                                          ; $7f76: $bd
    and a                                         ; $7f77: $a7
    ld c, e                                       ; $7f78: $4b
    ld [hl], l                                    ; $7f79: $75
    ld e, [hl]                                    ; $7f7a: $5e
    jp hl                                         ; $7f7b: $e9


    inc hl                                        ; $7f7c: $23
    ld l, a                                       ; $7f7d: $6f
    cpl                                           ; $7f7e: $2f
    ld h, e                                       ; $7f7f: $63
    inc e                                         ; $7f80: $1c
    xor e                                         ; $7f81: $ab
    ld h, a                                       ; $7f82: $67
    xor a                                         ; $7f83: $af
    adc $e9                                       ; $7f84: $ce $e9
    ld b, a                                       ; $7f86: $47
    ld e, b                                       ; $7f87: $58
    call nc, $97ad                                ; $7f88: $d4 $ad $97
    db $dd                                        ; $7f8b: $dd
    ld a, [hl-]                                   ; $7f8c: $3a
    ld c, l                                       ; $7f8d: $4d
    dec a                                         ; $7f8e: $3d
    ei                                            ; $7f8f: $fb
    pop de                                        ; $7f90: $d1
    sub d                                         ; $7f91: $92
    or e                                          ; $7f92: $b3
    inc hl                                        ; $7f93: $23
    push af                                       ; $7f94: $f5
    sbc l                                         ; $7f95: $9d
    dec e                                         ; $7f96: $1d
    adc [hl]                                      ; $7f97: $8e
    ld a, e                                       ; $7f98: $7b
    sbc a                                         ; $7f99: $9f
    add sp, $15                                   ; $7f9a: $e8 $15
    ld e, e                                       ; $7f9c: $5b
    ldh a, [$63]                                  ; $7f9d: $f0 $63
    push af                                       ; $7f9f: $f5
    add sp, $75                                   ; $7fa0: $e8 $75
    ld a, d                                       ; $7fa2: $7a
    ld b, e                                       ; $7fa3: $43
    rst $18                                       ; $7fa4: $df
    ld e, c                                       ; $7fa5: $59
    ei                                            ; $7fa6: $fb
    add sp, -$78                                  ; $7fa7: $e8 $88
    or b                                          ; $7fa9: $b0
    ld l, a                                       ; $7faa: $6f
    adc a                                         ; $7fab: $8f
    db $f4                                        ; $7fac: $f4
    inc a                                         ; $7fad: $3c
    rst $00                                       ; $7fae: $c7
    rst $18                                       ; $7faf: $df
    add hl, hl                                    ; $7fb0: $29
    dec [hl]                                      ; $7fb1: $35
    or d                                          ; $7fb2: $b2

Call_06d_7fb3:
    rla                                           ; $7fb3: $17
    ld a, [$92d1]                                 ; $7fb4: $fa $d1 $92
    or e                                          ; $7fb7: $b3
    inc hl                                        ; $7fb8: $23
    push af                                       ; $7fb9: $f5
    sbc l                                         ; $7fba: $9d
    dec e                                         ; $7fbb: $1d
    adc [hl]                                      ; $7fbc: $8e
    ei                                            ; $7fbd: $fb
    and l                                         ; $7fbe: $a5
    inc bc                                        ; $7fbf: $03
    rst $20                                       ; $7fc0: $e7
    ld b, l                                       ; $7fc1: $45
    xor a                                         ; $7fc2: $af
    db $d3                                        ; $7fc3: $d3
    dec de                                        ; $7fc4: $1b
    ld a, [$dace]                                 ; $7fc5: $fa $ce $da
    ld b, a                                       ; $7fc8: $47

Jump_06d_7fc9:
    ld b, a                                       ; $7fc9: $47
    add h                                         ; $7fca: $84
    cp l                                          ; $7fcb: $bd
    db $db                                        ; $7fcc: $db
    or [hl]                                       ; $7fcd: $b6
    dec [hl]                                      ; $7fce: $35

jr_06d_7fcf:
    ld h, d                                       ; $7fcf: $62
    rst $38                                       ; $7fd0: $ff
    di                                            ; $7fd1: $f3
    halt                                          ; $7fd2: $76
    sub l                                         ; $7fd3: $95
    rst $18                                       ; $7fd4: $df
    and e                                         ; $7fd5: $a3
    ld c, e                                       ; $7fd6: $4b
    ld [hl], l                                    ; $7fd7: $75
    ld a, [de]                                    ; $7fd8: $1a
    ld c, b                                       ; $7fd9: $48
    inc l                                         ; $7fda: $2c
    ld [bc], a                                    ; $7fdb: $02
    adc c                                         ; $7fdc: $89
    dec sp                                        ; $7fdd: $3b
    dec hl                                        ; $7fde: $2b
    ld hl, $63c5                                  ; $7fdf: $21 $c5 $63
    ld [hl], $a5                                  ; $7fe2: $36 $a5
    add $e0                                       ; $7fe4: $c6 $e0
    sbc [hl]                                      ; $7fe6: $9e
    ld [de], a                                    ; $7fe7: $12
    call z, $fb23                                 ; $7fe8: $cc $23 $fb
    reti                                          ; $7feb: $d9


    ld c, $ff                                     ; $7fec: $0e $ff
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
