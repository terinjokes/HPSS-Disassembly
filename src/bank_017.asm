; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld d, l                                       ; $4000: $55
    add [hl]                                      ; $4001: $86
    ld h, $98                                     ; $4002: $26 $98
    ld a, d                                       ; $4004: $7a
    ld a, d                                       ; $4005: $7a
    db $dd                                        ; $4006: $dd
    cp d                                          ; $4007: $ba
    sbc b                                         ; $4008: $98
    add l                                         ; $4009: $85
    sub e                                         ; $400a: $93
    ld c, c                                       ; $400b: $49
    inc hl                                        ; $400c: $23
    ld [hl], a                                    ; $400d: $77
    sub a                                         ; $400e: $97
    res 2, [hl]                                   ; $400f: $cb $96
    ld a, c                                       ; $4011: $79
    ret                                           ; $4012: $c9


    ld b, a                                       ; $4013: $47
    cp b                                          ; $4014: $b8
    ld e, d                                       ; $4015: $5a
    adc b                                         ; $4016: $88
    cp e                                          ; $4017: $bb
    and l                                         ; $4018: $a5
    dec [hl]                                      ; $4019: $35
    ld l, b                                       ; $401a: $68
    ld b, d                                       ; $401b: $42
    add a                                         ; $401c: $87
    halt                                          ; $401d: $76
    sbc d                                         ; $401e: $9a
    cp h                                          ; $401f: $bc
    jp c, $75a7                                   ; $4020: $da $a7 $75

    ld d, [hl]                                    ; $4023: $56
    rla                                           ; $4024: $17
    inc h                                         ; $4025: $24
    add hl, sp                                    ; $4026: $39
    add a                                         ; $4027: $87
    cp l                                          ; $4028: $bd
    or [hl]                                       ; $4029: $b6
    adc c                                         ; $402a: $89
    sbc c                                         ; $402b: $99
    add h                                         ; $402c: $84
    sbc b                                         ; $402d: $98
    sub h                                         ; $402e: $94
    and [hl]                                      ; $402f: $a6
    sbc h                                         ; $4030: $9c
    call nc, Call_017_5835                        ; $4031: $d4 $35 $58
    ld d, h                                       ; $4034: $54
    inc [hl]                                      ; $4035: $34
    ld l, c                                       ; $4036: $69
    ld a, l                                       ; $4037: $7d
    xor b                                         ; $4038: $a8
    xor $b9                                       ; $4039: $ee $b9
    ld a, b                                       ; $403b: $78
    add [hl]                                      ; $403c: $86
    ld [hl], e                                    ; $403d: $73
    inc de                                        ; $403e: $13
    ld b, l                                       ; $403f: $45
    sub l                                         ; $4040: $95
    adc l                                         ; $4041: $8d
    xor d                                         ; $4042: $aa
    sbc c                                         ; $4043: $99
    db $ec                                        ; $4044: $ec
    sub [hl]                                      ; $4045: $96
    scf                                           ; $4046: $37
    ld [hl], h                                    ; $4047: $74
    ld e, b                                       ; $4048: $58
    ld e, h                                       ; $4049: $5c
    and [hl]                                      ; $404a: $a6
    add a                                         ; $404b: $87
    ld l, b                                       ; $404c: $68
    ld b, a                                       ; $404d: $47
    ld d, c                                       ; $404e: $51
    halt                                          ; $404f: $76
    ld l, l                                       ; $4050: $6d
    cp e                                          ; $4051: $bb
    call c, $77cc                                 ; $4052: $dc $cc $77
    add a                                         ; $4055: $87
    add h                                         ; $4056: $84
    inc d                                         ; $4057: $14
    ld h, [hl]                                    ; $4058: $66
    ld l, b                                       ; $4059: $68
    adc b                                         ; $405a: $88
    cp e                                          ; $405b: $bb
    xor h                                         ; $405c: $ac
    res 5, d                                      ; $405d: $cb $aa
    ld [hl], e                                    ; $405f: $73
    ld d, [hl]                                    ; $4060: $56
    ld d, [hl]                                    ; $4061: $56
    and h                                         ; $4062: $a4
    dec hl                                        ; $4063: $2b
    ld l, b                                       ; $4064: $68
    ld a, b                                       ; $4065: $78
    adc d                                         ; $4066: $8a
    add l                                         ; $4067: $85
    inc [hl]                                      ; $4068: $34
    cp e                                          ; $4069: $bb
    ld a, [hl]                                    ; $406a: $7e
    jp z, $98dc                                   ; $406b: $ca $dc $98

    sbc e                                         ; $406e: $9b
    ld d, e                                       ; $406f: $53
    ld b, e                                       ; $4070: $43
    ld b, h                                       ; $4071: $44
    ld b, a                                       ; $4072: $47
    and a                                         ; $4073: $a7
    adc h                                         ; $4074: $8c
    db $dd                                        ; $4075: $dd
    call z, $a8ab                                 ; $4076: $cc $ab $a8
    ld h, $85                                     ; $4079: $26 $85
    ld d, e                                       ; $407b: $53
    ld [hl], a                                    ; $407c: $77
    or [hl]                                       ; $407d: $b6
    add a                                         ; $407e: $87
    ld a, c                                       ; $407f: $79
    sbc d                                         ; $4080: $9a
    halt                                          ; $4081: $76
    cp b                                          ; $4082: $b8
    ld a, d                                       ; $4083: $7a
    adc b                                         ; $4084: $88
    xor h                                         ; $4085: $ac
    sbc b                                         ; $4086: $98
    and h                                         ; $4087: $a4
    ld b, l                                       ; $4088: $45
    sub [hl]                                      ; $4089: $96
    dec d                                         ; $408a: $15
    add a                                         ; $408b: $87
    ld l, c                                       ; $408c: $69
    adc e                                         ; $408d: $8b
    db $fd                                        ; $408e: $fd
    xor e                                         ; $408f: $ab
    adc c                                         ; $4090: $89
    xor c                                         ; $4091: $a9
    ld h, d                                       ; $4092: $62
    add [hl]                                      ; $4093: $86
    inc de                                        ; $4094: $13
    ld [hl], a                                    ; $4095: $77
    ld a, e                                       ; $4096: $7b
    sbc h                                         ; $4097: $9c
    adc b                                         ; $4098: $88
    adc d                                         ; $4099: $8a
    rst $10                                       ; $409a: $d7
    dec sp                                        ; $409b: $3b
    ld [hl], e                                    ; $409c: $73
    sbc d                                         ; $409d: $9a
    ld a, d                                       ; $409e: $7a
    reti                                          ; $409f: $d9


    ld d, h                                       ; $40a0: $54
    add [hl]                                      ; $40a1: $86
    ld [hl], a                                    ; $40a2: $77
    dec h                                         ; $40a3: $25
    add [hl]                                      ; $40a4: $86
    ld e, h                                       ; $40a5: $5c
    cp d                                          ; $40a6: $ba
    cp l                                          ; $40a7: $bd
    cp c                                          ; $40a8: $b9
    sbc c                                         ; $40a9: $99
    ld a, c                                       ; $40aa: $79
    ld [hl], h                                    ; $40ab: $74
    inc d                                         ; $40ac: $14
    add [hl]                                      ; $40ad: $86
    add l                                         ; $40ae: $85
    ld c, e                                       ; $40af: $4b
    cp b                                          ; $40b0: $b8
    xor c                                         ; $40b1: $a9
    call c, $3489                                 ; $40b2: $dc $89 $34
    and [hl]                                      ; $40b5: $a6
    ld e, e                                       ; $40b6: $5b
    or h                                          ; $40b7: $b4
    ld [hl], a                                    ; $40b8: $77
    sbc h                                         ; $40b9: $9c
    ld [hl], l                                    ; $40ba: $75
    ld a, d                                       ; $40bb: $7a
    ld h, d                                       ; $40bc: $62
    ld l, b                                       ; $40bd: $68
    jp c, $8d9d                                   ; $40be: $da $9d $8d

    ret                                           ; $40c1: $c9


    sbc b                                         ; $40c2: $98
    xor c                                         ; $40c3: $a9
    dec b                                         ; $40c4: $05
    daa                                           ; $40c5: $27
    ld h, [hl]                                    ; $40c6: $66
    dec sp                                        ; $40c7: $3b
    ld e, c                                       ; $40c8: $59
    call z, $9abe                                 ; $40c9: $cc $be $9a
    and l                                         ; $40cc: $a5
    add e                                         ; $40cd: $83
    ld c, c                                       ; $40ce: $49
    sub [hl]                                      ; $40cf: $96
    ld [hl-], a                                   ; $40d0: $32
    adc e                                         ; $40d1: $8b
    push bc                                       ; $40d2: $c5
    ld a, d                                       ; $40d3: $7a
    adc c                                         ; $40d4: $89
    sbc b                                         ; $40d5: $98
    ld a, d                                       ; $40d6: $7a
    sbc c                                         ; $40d7: $99
    adc b                                         ; $40d8: $88
    sub [hl]                                      ; $40d9: $96
    sbc d                                         ; $40da: $9a
    xor b                                         ; $40db: $a8
    inc h                                         ; $40dc: $24
    sub [hl]                                      ; $40dd: $96
    add d                                         ; $40de: $82
    ld c, c                                       ; $40df: $49
    ld l, b                                       ; $40e0: $68
    sub a                                         ; $40e1: $97
    rst $08                                       ; $40e2: $cf
    cp l                                          ; $40e3: $bd
    sub [hl]                                      ; $40e4: $96
    adc b                                         ; $40e5: $88
    ld e, b                                       ; $40e6: $58
    ld d, a                                       ; $40e7: $57
    inc de                                        ; $40e8: $13
    ld [hl], a                                    ; $40e9: $77
    ld h, [hl]                                    ; $40ea: $66
    sbc h                                         ; $40eb: $9c
    adc b                                         ; $40ec: $88
    adc d                                         ; $40ed: $8a
    res 0, l                                      ; $40ee: $cb $85
    add l                                         ; $40f0: $85
    sub [hl]                                      ; $40f1: $96
    add l                                         ; $40f2: $85
    adc e                                         ; $40f3: $8b
    ld b, h                                       ; $40f4: $44
    add [hl]                                      ; $40f5: $86
    sub l                                         ; $40f6: $95
    ld l, b                                       ; $40f7: $68
    ld d, $88                                     ; $40f8: $16 $88
    cp a                                          ; $40fa: $bf
    sbc d                                         ; $40fb: $9a
    jp c, $67c7                                   ; $40fc: $da $c7 $67

    add a                                         ; $40ff: $87
    ld de, $6665                                  ; $4100: $11 $65 $66
    ld e, c                                       ; $4103: $59
    adc h                                         ; $4104: $8c
    cp h                                          ; $4105: $bc
    db $dd                                        ; $4106: $dd
    sbc h                                         ; $4107: $9c
    add h                                         ; $4108: $84
    ld c, b                                       ; $4109: $48
    ld h, [hl]                                    ; $410a: $66
    sub a                                         ; $410b: $97
    dec d                                         ; $410c: $15
    cp b                                          ; $410d: $b8
    and a                                         ; $410e: $a7
    ld e, c                                       ; $410f: $59
    adc b                                         ; $4110: $88
    ld b, [hl]                                    ; $4111: $46
    xor e                                         ; $4112: $ab
    adc d                                         ; $4113: $8a
    and h                                         ; $4114: $a4
    cp [hl]                                       ; $4115: $be
    cp d                                          ; $4116: $ba
    sub a                                         ; $4117: $97
    ld hl, $4274                                  ; $4118: $21 $74 $42
    ld b, a                                       ; $411b: $47
    ld [hl], a                                    ; $411c: $77
    adc e                                         ; $411d: $8b
    cp $cb                                        ; $411e: $fe $cb
    and a                                         ; $4120: $a7
    adc d                                         ; $4121: $8a
    ld b, h                                       ; $4122: $44
    halt                                          ; $4123: $76
    dec b                                         ; $4124: $05
    halt                                          ; $4125: $76
    adc c                                         ; $4126: $89
    adc h                                         ; $4127: $8c
    adc b                                         ; $4128: $88
    adc d                                         ; $4129: $8a
    ret                                           ; $412a: $c9


    ld a, c                                       ; $412b: $79
    halt                                          ; $412c: $76
    sub a                                         ; $412d: $97
    ld a, b                                       ; $412e: $78
    cp d                                          ; $412f: $ba
    ld b, h                                       ; $4130: $44
    ld h, a                                       ; $4131: $67
    ld [hl], a                                    ; $4132: $77
    scf                                           ; $4133: $37
    ld [hl], a                                    ; $4134: $77
    ld e, d                                       ; $4135: $5a
    jp z, $c8bf                                   ; $4136: $ca $bf $c8

    xor b                                         ; $4139: $a8
    ld a, b                                       ; $413a: $78
    add h                                         ; $413b: $84
    inc b                                         ; $413c: $04
    ld d, l                                       ; $413d: $55
    halt                                          ; $413e: $76
    ld c, e                                       ; $413f: $4b
    ret z                                         ; $4140: $c8

    xor d                                         ; $4141: $aa
    db $db                                        ; $4142: $db
    adc e                                         ; $4143: $8b
    ld h, e                                       ; $4144: $63
    sub a                                         ; $4145: $97
    ld d, a                                       ; $4146: $57
    add [hl]                                      ; $4147: $86
    ld e, b                                       ; $4148: $58
    ld l, c                                       ; $4149: $69
    ld l, b                                       ; $414a: $68
    ld d, [hl]                                    ; $414b: $56
    and d                                         ; $414c: $a2
    ld a, [hl+]                                   ; $414d: $2a
    xor b                                         ; $414e: $a8
    jp c, $db9a                                   ; $414f: $da $9a $db

    xor b                                         ; $4152: $a8
    adc b                                         ; $4153: $88
    ld [hl], $12                                  ; $4154: $36 $12
    add [hl]                                      ; $4156: $86
    ld a, [hl-]                                   ; $4157: $3a
    ld [hl], a                                    ; $4158: $77
    xor h                                         ; $4159: $ac
    cp l                                          ; $415a: $bd
    xor d                                         ; $415b: $aa
    sbc b                                         ; $415c: $98
    sub h                                         ; $415d: $94
    ld c, b                                       ; $415e: $48
    add [hl]                                      ; $415f: $86
    dec [hl]                                      ; $4160: $35
    ld e, e                                       ; $4161: $5b
    and [hl]                                      ; $4162: $a6
    adc b                                         ; $4163: $88
    sbc c                                         ; $4164: $99
    ld l, d                                       ; $4165: $6a
    ld a, h                                       ; $4166: $7c
    ld a, c                                       ; $4167: $79
    adc b                                         ; $4168: $88
    adc c                                         ; $4169: $89
    xor e                                         ; $416a: $ab
    sub a                                         ; $416b: $97
    ld b, [hl]                                    ; $416c: $46
    ld [hl], h                                    ; $416d: $74
    add d                                         ; $416e: $82
    ld l, b                                       ; $416f: $68
    add h                                         ; $4170: $84
    ld [hl], a                                    ; $4171: $77
    rst $28                                       ; $4172: $ef
    ret                                           ; $4173: $c9


    or a                                          ; $4174: $b7
    adc d                                         ; $4175: $8a
    ld [hl], a                                    ; $4176: $77
    ld b, l                                       ; $4177: $45
    ld d, l                                       ; $4178: $55
    scf                                           ; $4179: $37
    ld [hl], a                                    ; $417a: $77
    sbc e                                         ; $417b: $9b
    xor b                                         ; $417c: $a8
    ld l, c                                       ; $417d: $69
    cp e                                          ; $417e: $bb
    add l                                         ; $417f: $85
    sub a                                         ; $4180: $97
    adc c                                         ; $4181: $89
    ld h, a                                       ; $4182: $67
    sbc c                                         ; $4183: $99
    ld d, l                                       ; $4184: $55
    ld h, a                                       ; $4185: $67
    ld h, [hl]                                    ; $4186: $66
    ld l, c                                       ; $4187: $69
    scf                                           ; $4188: $37
    ld [hl], l                                    ; $4189: $75
    call $ea7b                                    ; $418a: $cd $7b $ea
    xor c                                         ; $418d: $a9
    add [hl]                                      ; $418e: $86
    or a                                          ; $418f: $b7
    ld sp, $5778                                  ; $4190: $31 $78 $57
    ld h, a                                       ; $4193: $67
    adc e                                         ; $4194: $8b
    sbc e                                         ; $4195: $9b
    jp z, $a5aa                                   ; $4196: $ca $aa $a5

    ld c, d                                       ; $4199: $4a
    ld h, l                                       ; $419a: $65
    sbc b                                         ; $419b: $98
    inc b                                         ; $419c: $04
    cp d                                          ; $419d: $ba
    ld [hl], a                                    ; $419e: $77
    ld e, d                                       ; $419f: $5a
    ld l, c                                       ; $41a0: $69
    ld [hl], $aa                                  ; $41a1: $36 $aa
    adc c                                         ; $41a3: $89
    sub a                                         ; $41a4: $97
    sbc h                                         ; $41a5: $9c
    ret                                           ; $41a6: $c9


    and [hl]                                      ; $41a7: $a6
    inc hl                                        ; $41a8: $23
    halt                                          ; $41a9: $76
    ld d, l                                       ; $41aa: $55
    ld l, b                                       ; $41ab: $68
    ld h, a                                       ; $41ac: $67
    ld l, h                                       ; $41ad: $6c
    db $fd                                        ; $41ae: $fd
    sbc d                                         ; $41af: $9a
    sub a                                         ; $41b0: $97
    adc c                                         ; $41b1: $89
    ld h, c                                       ; $41b2: $61
    add l                                         ; $41b3: $85
    inc hl                                        ; $41b4: $23
    adc b                                         ; $41b5: $88
    sbc e                                         ; $41b6: $9b
    sbc e                                         ; $41b7: $9b
    ld [hl], a                                    ; $41b8: $77
    ld a, e                                       ; $41b9: $7b
    push bc                                       ; $41ba: $c5
    ld c, e                                       ; $41bb: $4b
    and h                                         ; $41bc: $a4
    sbc c                                         ; $41bd: $99
    ld l, c                                       ; $41be: $69
    sub $55                                       ; $41bf: $d6 $55
    add [hl]                                      ; $41c1: $86
    ld h, l                                       ; $41c2: $65
    inc h                                         ; $41c3: $24
    adc b                                         ; $41c4: $88
    ld c, e                                       ; $41c5: $4b
    cp b                                          ; $41c6: $b8
    call $898b                                    ; $41c7: $cd $8b $89
    add [hl]                                      ; $41ca: $86
    and d                                         ; $41cb: $a2
    dec b                                         ; $41cc: $05
    add l                                         ; $41cd: $85
    and d                                         ; $41ce: $a2
    ld a, d                                       ; $41cf: $7a
    xor b                                         ; $41d0: $a8
    xor d                                         ; $41d1: $aa
    rst $20                                       ; $41d2: $e7
    adc d                                         ; $41d3: $8a
    dec [hl]                                      ; $41d4: $35
    adc c                                         ; $41d5: $89
    ld l, b                                       ; $41d6: $68
    ld [hl], h                                    ; $41d7: $74
    ld h, l                                       ; $41d8: $65
    sbc d                                         ; $41d9: $9a
    add a                                         ; $41da: $87
    ld a, b                                       ; $41db: $78
    ld h, c                                       ; $41dc: $61
    ld l, h                                       ; $41dd: $6c
    or a                                          ; $41de: $b7
    sbc c                                         ; $41df: $99
    adc c                                         ; $41e0: $89
    res 3, b                                      ; $41e1: $cb $98
    sub e                                         ; $41e3: $93
    ld h, l                                       ; $41e4: $65
    inc h                                         ; $41e5: $24
    ld [hl], l                                    ; $41e6: $75
    ld a, d                                       ; $41e7: $7a
    ld h, [hl]                                    ; $41e8: $66
    call $9acc                                    ; $41e9: $cd $cc $9a
    and [hl]                                      ; $41ec: $a6
    ld [hl], e                                    ; $41ed: $73
    ld h, [hl]                                    ; $41ee: $66
    or h                                          ; $41ef: $b4
    ld d, l                                       ; $41f0: $55
    ld a, e                                       ; $41f1: $7b
    sub l                                         ; $41f2: $95
    cp d                                          ; $41f3: $ba
    ld d, l                                       ; $41f4: $55
    adc l                                         ; $41f5: $8d
    ld h, [hl]                                    ; $41f6: $66
    sbc b                                         ; $41f7: $98
    ld l, e                                       ; $41f8: $6b
    ld [hl], a                                    ; $41f9: $77
    reti                                          ; $41fa: $d9


    sub a                                         ; $41fb: $97
    ld b, [hl]                                    ; $41fc: $46
    halt                                          ; $41fd: $76
    add b                                         ; $41fe: $80
    ld a, c                                       ; $41ff: $79
    ld d, [hl]                                    ; $4200: $56
    sbc d                                         ; $4201: $9a
    call z, $9799                                 ; $4202: $cc $99 $97
    sbc c                                         ; $4205: $99
    add h                                         ; $4206: $84
    ld b, e                                       ; $4207: $43
    dec h                                         ; $4208: $25
    sub [hl]                                      ; $4209: $96
    add [hl]                                      ; $420a: $86
    call z, $8c67                                 ; $420b: $cc $67 $8c
    jp hl                                         ; $420e: $e9


    ld [hl], h                                    ; $420f: $74
    add a                                         ; $4210: $87
    ld a, b                                       ; $4211: $78
    ld a, b                                       ; $4212: $78
    add l                                         ; $4213: $85
    ld h, [hl]                                    ; $4214: $66
    sbc b                                         ; $4215: $98
    add e                                         ; $4216: $83
    ld a, c                                       ; $4217: $79
    dec h                                         ; $4218: $25
    ld a, e                                       ; $4219: $7b
    jp c, $da9a                                   ; $421a: $da $9a $da

    xor d                                         ; $421d: $aa
    add a                                         ; $421e: $87
    sub e                                         ; $421f: $93
    ld d, d                                       ; $4220: $52
    ld h, [hl]                                    ; $4221: $66
    ld d, [hl]                                    ; $4222: $56
    adc c                                         ; $4223: $89
    ld a, d                                       ; $4224: $7a
    sbc h                                         ; $4225: $9c
    reti                                          ; $4226: $d9


    sbc d                                         ; $4227: $9a
    ld [hl], a                                    ; $4228: $77
    ld b, l                                       ; $4229: $45
    and [hl]                                      ; $422a: $a6
    sub h                                         ; $422b: $94
    inc h                                         ; $422c: $24
    add sp, -$6b                                  ; $422d: $e8 $95
    sbc c                                         ; $422f: $99
    add a                                         ; $4230: $87
    add a                                         ; $4231: $87
    ret c                                         ; $4232: $d8

    adc c                                         ; $4233: $89
    ld [hl], a                                    ; $4234: $77
    ld a, l                                       ; $4235: $7d
    xor d                                         ; $4236: $aa
    add e                                         ; $4237: $83
    ld d, h                                       ; $4238: $54
    ld [hl], a                                    ; $4239: $77
    inc hl                                        ; $423a: $23
    add l                                         ; $423b: $85
    add a                                         ; $423c: $87
    sbc h                                         ; $423d: $9c
    ld a, [$8aa9]                                 ; $423e: $fa $a9 $8a
    add a                                         ; $4241: $87
    ld [hl], e                                    ; $4242: $73
    ld [hl], b                                    ; $4243: $70
    ld [hl], $77                                  ; $4244: $36 $77
    ld a, c                                       ; $4246: $79
    cp e                                          ; $4247: $bb
    ld a, c                                       ; $4248: $79
    sbc e                                         ; $4249: $9b
    cp b                                          ; $424a: $b8
    ld c, d                                       ; $424b: $4a
    ld h, l                                       ; $424c: $65
    adc b                                         ; $424d: $88
    ld a, d                                       ; $424e: $7a
    and h                                         ; $424f: $a4
    ld l, b                                       ; $4250: $68
    halt                                          ; $4251: $76
    ld d, [hl]                                    ; $4252: $56
    sub d                                         ; $4253: $92
    ld [hl], a                                    ; $4254: $77
    ld a, e                                       ; $4255: $7b
    rst $10                                       ; $4256: $d7
    call $879b                                    ; $4257: $cd $9b $87
    adc c                                         ; $425a: $89
    add d                                         ; $425b: $82
    ld h, $76                                     ; $425c: $26 $76
    halt                                          ; $425e: $76
    sbc b                                         ; $425f: $98
    cp b                                          ; $4260: $b8
    xor h                                         ; $4261: $ac
    sbc d                                         ; $4262: $9a
    sbc e                                         ; $4263: $9b
    ld b, h                                       ; $4264: $44
    add a                                         ; $4265: $87
    ld e, b                                       ; $4266: $58
    sub c                                         ; $4267: $91
    ld c, e                                       ; $4268: $4b
    sbc d                                         ; $4269: $9a
    add l                                         ; $426a: $85
    sbc b                                         ; $426b: $98
    add h                                         ; $426c: $84
    ld l, e                                       ; $426d: $6b
    sub $8a                                       ; $426e: $d6 $8a
    sbc c                                         ; $4270: $99
    cp b                                          ; $4271: $b8
    xor [hl]                                      ; $4272: $ae
    add d                                         ; $4273: $82
    ld d, a                                       ; $4274: $57
    inc [hl]                                      ; $4275: $34
    ld h, [hl]                                    ; $4276: $66
    ld [hl], l                                    ; $4277: $75
    halt                                          ; $4278: $76
    rst $08                                       ; $4279: $cf
    cp c                                          ; $427a: $b9
    cp d                                          ; $427b: $ba
    ld a, b                                       ; $427c: $78
    sub l                                         ; $427d: $95
    ld a, [hl-]                                   ; $427e: $3a
    ld [hl], b                                    ; $427f: $70
    ld d, [hl]                                    ; $4280: $56
    ld a, b                                       ; $4281: $78
    sbc b                                         ; $4282: $98
    and a                                         ; $4283: $a7
    adc b                                         ; $4284: $88
    sbc l                                         ; $4285: $9d

Jump_017_4286:
    ld [hl], h                                    ; $4286: $74
    and a                                         ; $4287: $a7
    ld h, a                                       ; $4288: $67
    halt                                          ; $4289: $76
    adc [hl]                                      ; $428a: $8e
    add e                                         ; $428b: $83
    halt                                          ; $428c: $76
    halt                                          ; $428d: $76
    ld [hl], h                                    ; $428e: $74
    ld l, b                                       ; $428f: $68
    add h                                         ; $4290: $84
    cp e                                          ; $4291: $bb
    xor e                                         ; $4292: $ab
    ld [$688a], a                                 ; $4293: $ea $8a $68
    ld a, c                                       ; $4296: $79
    ld h, b                                       ; $4297: $60
    ld d, [hl]                                    ; $4298: $56
    ld l, c                                       ; $4299: $69
    ld d, [hl]                                    ; $429a: $56
    xor e                                         ; $429b: $ab
    adc d                                         ; $429c: $8a
    res 2, a                                      ; $429d: $cb $97
    or [hl]                                       ; $429f: $b6
    scf                                           ; $42a0: $37
    add [hl]                                      ; $42a1: $86
    ld a, d                                       ; $42a2: $7a
    ld d, e                                       ; $42a3: $53
    ld l, b                                       ; $42a4: $68
    xor c                                         ; $42a5: $a9
    ld e, b                                       ; $42a6: $58

Call_017_42a7:
    add a                                         ; $42a7: $87
    ld b, h                                       ; $42a8: $44
    cp h                                          ; $42a9: $bc
    ld l, d                                       ; $42aa: $6a
    sub a                                         ; $42ab: $97
    xor e                                         ; $42ac: $ab
    xor b                                         ; $42ad: $a8
    sbc c                                         ; $42ae: $99
    ld [hl], d                                    ; $42af: $72
    ld d, e                                       ; $42b0: $53
    ld [hl], $55                                  ; $42b1: $36 $55
    sbc b                                         ; $42b3: $98
    adc b                                         ; $42b4: $88
    rst $28                                       ; $42b5: $ef
    db $db                                        ; $42b6: $db
    xor c                                         ; $42b7: $a9
    ld a, h                                       ; $42b8: $7c
    ld sp, $3298                                  ; $42b9: $31 $98 $32
    ld d, l                                       ; $42bc: $55
    xor d                                         ; $42bd: $aa
    ld l, e                                       ; $42be: $6b
    sub a                                         ; $42bf: $97
    xor b                                         ; $42c0: $a8
    ret z                                         ; $42c1: $c8

    ld l, e                                       ; $42c2: $6b
    and l                                         ; $42c3: $a5
    or a                                          ; $42c4: $b7
    sbc d                                         ; $42c5: $9a
    ret                                           ; $42c6: $c9


    jp Jump_017_7656                              ; $42c7: $c3 $56 $76


    inc de                                        ; $42ca: $13
    sub a                                         ; $42cb: $97
    ld l, b                                       ; $42cc: $68
    sbc h                                         ; $42cd: $9c
    call z, $98dd                                 ; $42ce: $cc $dd $98
    ld l, e                                       ; $42d1: $6b
    sub l                                         ; $42d2: $95
    ld [de], a                                    ; $42d3: $12
    inc sp                                        ; $42d4: $33
    and [hl]                                      ; $42d5: $a6
    ld l, c                                       ; $42d6: $69
    ret                                           ; $42d7: $c9


    and a                                         ; $42d8: $a7
    cp [hl]                                       ; $42d9: $be
    sbc d                                         ; $42da: $9a
    ld h, h                                       ; $42db: $64
    sub [hl]                                      ; $42dc: $96
    ld c, d                                       ; $42dd: $4a
    ld a, d                                       ; $42de: $7a
    add a                                         ; $42df: $87
    ld c, e                                       ; $42e0: $4b
    adc b                                         ; $42e1: $88
    ld b, [hl]                                    ; $42e2: $46
    jp nz, $9719                                  ; $42e3: $c2 $19 $97

    ret c                                         ; $42e6: $d8

    set 1, e                                      ; $42e7: $cb $cb
    cp b                                          ; $42e9: $b8
    sbc b                                         ; $42ea: $98
    ld [hl], h                                    ; $42eb: $74
    inc sp                                        ; $42ec: $33
    ld [hl], h                                    ; $42ed: $74
    ld c, b                                       ; $42ee: $48
    sub a                                         ; $42ef: $97
    xor d                                         ; $42f0: $aa
    call z, $999a                                 ; $42f1: $cc $9a $99
    add [hl]                                      ; $42f4: $86
    jr z, jr_017_436d                             ; $42f5: $28 $76

    add d                                         ; $42f7: $82
    ld c, e                                       ; $42f8: $4b
    xor b                                         ; $42f9: $a8
    adc c                                         ; $42fa: $89
    and l                                         ; $42fb: $a5
    ld a, d                                       ; $42fc: $7a
    ld [hl], a                                    ; $42fd: $77
    sbc b                                         ; $42fe: $98
    sub a                                         ; $42ff: $97
    adc c                                         ; $4300: $89
    sbc l                                         ; $4301: $9d
    sbc e                                         ; $4302: $9b
    sub c                                         ; $4303: $91
    ld c, b                                       ; $4304: $48
    add e                                         ; $4305: $83
    ld b, $93                                     ; $4306: $06 $93
    ld a, b                                       ; $4308: $78
    cp h                                          ; $4309: $bc
    call c, Call_017_79c9                         ; $430a: $dc $c9 $79
    ld a, b                                       ; $430d: $78
    ld b, l                                       ; $430e: $45
    add c                                         ; $430f: $81
    daa                                           ; $4310: $27
    ld h, a                                       ; $4311: $67
    ld a, d                                       ; $4312: $7a
    cp c                                          ; $4313: $b9
    adc b                                         ; $4314: $88
    res 6, e                                      ; $4315: $cb $b3
    ld l, c                                       ; $4317: $69
    ld h, [hl]                                    ; $4318: $66
    add [hl]                                      ; $4319: $86
    sbc e                                         ; $431a: $9b
    and e                                         ; $431b: $a3
    ld h, [hl]                                    ; $431c: $66
    sbc c                                         ; $431d: $99
    ld d, [hl]                                    ; $431e: $56
    ld [hl-], a                                   ; $431f: $32
    add [hl]                                      ; $4320: $86
    sbc l                                         ; $4321: $9d
    adc c                                         ; $4322: $89
    cp h                                          ; $4323: $bc
    sbc d                                         ; $4324: $9a
    sbc c                                         ; $4325: $99
    ld a, d                                       ; $4326: $7a
    ld h, b                                       ; $4327: $60
    daa                                           ; $4328: $27
    ld h, l                                       ; $4329: $65
    ld h, l                                       ; $432a: $65
    sbc d                                         ; $432b: $9a
    sbc b                                         ; $432c: $98
    call z, $b9b7                                 ; $432d: $cc $b7 $b9
    ld b, [hl]                                    ; $4330: $46
    and l                                         ; $4331: $a5
    adc c                                         ; $4332: $89
    ld d, e                                       ; $4333: $53
    adc b                                         ; $4334: $88
    sbc d                                         ; $4335: $9a
    ld d, a                                       ; $4336: $57
    adc c                                         ; $4337: $89
    ld h, c                                       ; $4338: $61
    sbc l                                         ; $4339: $9d
    ld [hl], a                                    ; $433a: $77
    cp d                                          ; $433b: $ba
    xor e                                         ; $433c: $ab
    cp d                                          ; $433d: $ba
    sbc e                                         ; $433e: $9b
    add c                                         ; $433f: $81
    add [hl]                                      ; $4340: $86
    ld [hl], $54                                  ; $4341: $36 $54
    ld [hl], a                                    ; $4343: $77
    ld h, a                                       ; $4344: $67
    sbc $cb                                       ; $4345: $de $cb
    sbc d                                         ; $4347: $9a
    ld a, d                                       ; $4348: $7a
    add e                                         ; $4349: $83
    adc c                                         ; $434a: $89
    ld b, e                                       ; $434b: $43
    ld b, a                                       ; $434c: $47
    ld a, d                                       ; $434d: $7a
    sub [hl]                                      ; $434e: $96
    cp b                                          ; $434f: $b8
    add a                                         ; $4350: $87
    cp e                                          ; $4351: $bb
    ld d, a                                       ; $4352: $57
    sbc b                                         ; $4353: $98
    ld h, a                                       ; $4354: $67
    adc c                                         ; $4355: $89
    cp e                                          ; $4356: $bb
    add h                                         ; $4357: $84
    ld c, b                                       ; $4358: $48
    ld a, b                                       ; $4359: $78
    ld h, e                                       ; $435a: $63
    add [hl]                                      ; $435b: $86
    ld h, [hl]                                    ; $435c: $66
    adc e                                         ; $435d: $8b
    cp e                                          ; $435e: $bb
    cp h                                          ; $435f: $bc
    adc c                                         ; $4360: $89
    add a                                         ; $4361: $87
    sub a                                         ; $4362: $97
    ld [hl-], a                                   ; $4363: $32
    inc hl                                        ; $4364: $23
    add [hl]                                      ; $4365: $86
    ld b, a                                       ; $4366: $47
    jp hl                                         ; $4367: $e9


    cp b                                          ; $4368: $b8
    cp [hl]                                       ; $4369: $be
    xor d                                         ; $436a: $aa
    ld [hl], h                                    ; $436b: $74
    add [hl]                                      ; $436c: $86

jr_017_436d:
    ld l, b                                       ; $436d: $68
    add [hl]                                      ; $436e: $86
    and [hl]                                      ; $436f: $a6
    ld l, c                                       ; $4370: $69
    sbc b                                         ; $4371: $98
    ld d, [hl]                                    ; $4372: $56
    sub [hl]                                      ; $4373: $96
    rlca                                          ; $4374: $07
    ld a, c                                       ; $4375: $79
    ret                                           ; $4376: $c9


    ld a, l                                       ; $4377: $7d
    jp z, Jump_017_79b9                           ; $4378: $ca $b9 $79

    ld [hl], h                                    ; $437b: $74
    ld hl, $3587                                  ; $437c: $21 $87 $35
    adc b                                         ; $437f: $88
    adc l                                         ; $4380: $8d
    adc $b9                                       ; $4381: $ce $b9
    sbc d                                         ; $4383: $9a
    sub [hl]                                      ; $4384: $96
    daa                                           ; $4385: $27

Jump_017_4386:
    ld h, h                                       ; $4386: $64
    ld [hl], d                                    ; $4387: $72
    ld [hl], $ca                                  ; $4388: $36 $ca
    sub [hl]                                      ; $438a: $96
    xor b                                         ; $438b: $a8
    ld l, c                                       ; $438c: $69
    ld [hl], l                                    ; $438d: $75
    or a                                          ; $438e: $b7
    ld e, d                                       ; $438f: $5a
    and [hl]                                      ; $4390: $a6
    cp e                                          ; $4391: $bb
    cp e                                          ; $4392: $bb
    sub e                                         ; $4393: $93
    ld b, [hl]                                    ; $4394: $46
    sub [hl]                                      ; $4395: $96

Call_017_4396:
    dec h                                         ; $4396: $25
    sub l                                         ; $4397: $95
    add [hl]                                      ; $4398: $86
    adc [hl]                                      ; $4399: $8e
    db $ec                                        ; $439a: $ec
    xor h                                         ; $439b: $ac
    sbc b                                         ; $439c: $98
    add a                                         ; $439d: $87
    ld h, h                                       ; $439e: $64
    ld h, c                                       ; $439f: $61
    ld d, $96                                     ; $43a0: $16 $96
    ld e, h                                       ; $43a2: $5c
    ret                                           ; $43a3: $c9


    sbc b                                         ; $43a4: $98
    call z, Call_017_4ac6                         ; $43a5: $cc $c6 $4a
    ld h, l                                       ; $43a8: $65
    sbc b                                         ; $43a9: $98
    ld l, c                                       ; $43aa: $69
    push de                                       ; $43ab: $d5
    ld e, b                                       ; $43ac: $58
    sbc b                                         ; $43ad: $98
    dec [hl]                                      ; $43ae: $35
    add c                                         ; $43af: $81
    add a                                         ; $43b0: $87
    ld l, h                                       ; $43b1: $6c
    xor c                                         ; $43b2: $a9
    cp [hl]                                       ; $43b3: $be
    xor d                                         ; $43b4: $aa
    cp b                                          ; $43b5: $b8
    adc b                                         ; $43b6: $88
    add d                                         ; $43b7: $82
    ld d, $75                                     ; $43b8: $16 $75
    ld [hl], l                                    ; $43ba: $75
    sbc b                                         ; $43bb: $98
    xor c                                         ; $43bc: $a9
    cp e                                          ; $43bd: $bb
    xor e                                         ; $43be: $ab
    sbc e                                         ; $43bf: $9b
    dec [hl]                                      ; $43c0: $35
    sub l                                         ; $43c1: $95
    ld a, b                                       ; $43c2: $78
    ld [hl], l                                    ; $43c3: $75
    ld b, [hl]                                    ; $43c4: $46
    cp c                                          ; $43c5: $b9
    ld h, [hl]                                    ; $43c6: $66
    xor b                                         ; $43c7: $a8
    ld h, d                                       ; $43c8: $62
    ld e, l                                       ; $43c9: $5d
    sbc b                                         ; $43ca: $98
    cp c                                          ; $43cb: $b9
    sbc c                                         ; $43cc: $99
    cp d                                          ; $43cd: $ba
    xor c                                         ; $43ce: $a9
    or h                                          ; $43cf: $b4
    ld [hl+], a                                   ; $43d0: $22
    ld [hl+], a                                   ; $43d1: $22
    ld [hl], d                                    ; $43d2: $72
    ld l, c                                       ; $43d3: $69
    ld l, b                                       ; $43d4: $68
    xor [hl]                                      ; $43d5: $ae
    call c, $89aa                                 ; $43d6: $dc $aa $89
    and c                                         ; $43d9: $a1
    ld l, b                                       ; $43da: $68
    ld h, e                                       ; $43db: $63
    inc [hl]                                      ; $43dc: $34
    sbc c                                         ; $43dd: $99
    add l                                         ; $43de: $85
    cp c                                          ; $43df: $b9
    add a                                         ; $43e0: $87
    xor l                                         ; $43e1: $ad
    ld h, [hl]                                    ; $43e2: $66
    sbc e                                         ; $43e3: $9b
    ld l, b                                       ; $43e4: $68
    add a                                         ; $43e5: $87
    xor d                                         ; $43e6: $aa
    or a                                          ; $43e7: $b7
    rla                                           ; $43e8: $17
    sub l                                         ; $43e9: $95
    ld [hl], c                                    ; $43ea: $71
    ld l, b                                       ; $43eb: $68
    ld d, [hl]                                    ; $43ec: $56
    xor d                                         ; $43ed: $aa
    xor h                                         ; $43ee: $ac
    call z, $98b8                                 ; $43ef: $cc $b8 $98
    ld a, b                                       ; $43f2: $78
    inc [hl]                                      ; $43f3: $34
    jr nz, jr_017_445e                            ; $43f4: $20 $68

    ld d, h                                       ; $43f6: $54
    cp d                                          ; $43f7: $ba
    ld a, c                                       ; $43f8: $79
    adc l                                         ; $43f9: $8d
    jp z, $86a7                                   ; $43fa: $ca $a7 $86

    ld h, a                                       ; $43fd: $67
    ld l, b                                       ; $43fe: $68
    adc c                                         ; $43ff: $89
    ld d, [hl]                                    ; $4400: $56
    adc b                                         ; $4401: $88
    add e                                         ; $4402: $83
    sub a                                         ; $4403: $97
    rla                                           ; $4404: $17
    ld l, d                                       ; $4405: $6a
    jp z, $db9b                                   ; $4406: $ca $9b $db

    cp b                                          ; $4409: $b8
    adc c                                         ; $440a: $89
    sub [hl]                                      ; $440b: $96
    ld sp, $6476                                  ; $440c: $31 $76 $64
    adc b                                         ; $440f: $88
    adc c                                         ; $4410: $89
    xor h                                         ; $4411: $ac
    cp c                                          ; $4412: $b9
    xor d                                         ; $4413: $aa
    xor b                                         ; $4414: $a8
    ld b, [hl]                                    ; $4415: $46
    ld h, l                                       ; $4416: $65
    add [hl]                                      ; $4417: $86
    inc d                                         ; $4418: $14
    cp d                                          ; $4419: $ba
    ld h, [hl]                                    ; $441a: $66
    adc e                                         ; $441b: $8b
    ld a, b                                       ; $441c: $78
    add [hl]                                      ; $441d: $86
    cp d                                          ; $441e: $ba
    ld l, d                                       ; $441f: $6a
    or [hl]                                       ; $4420: $b6
    sbc l                                         ; $4421: $9d
    cp d                                          ; $4422: $ba
    sub h                                         ; $4423: $94
    ld b, h                                       ; $4424: $44
    sub l                                         ; $4425: $95
    dec d                                         ; $4426: $15
    add l                                         ; $4427: $85
    ld e, c                                       ; $4428: $59
    adc h                                         ; $4429: $8c
    db $fc                                        ; $442a: $fc
    cp d                                          ; $442b: $ba
    xor b                                         ; $442c: $a8
    adc d                                         ; $442d: $8a
    ld h, l                                       ; $442e: $65
    add h                                         ; $442f: $84
    ld [hl], $75                                  ; $4430: $36 $75
    adc c                                         ; $4432: $89
    ret z                                         ; $4433: $c8

    ld a, c                                       ; $4434: $79
    adc e                                         ; $4435: $8b
    rst $00                                       ; $4436: $c7
    ld l, d                                       ; $4437: $6a
    ld [hl], a                                    ; $4438: $77
    or a                                          ; $4439: $b7
    ld a, e                                       ; $443a: $7b
    sub [hl]                                      ; $443b: $96
    ld d, l                                       ; $443c: $55
    and [hl]                                      ; $443d: $a6
    ld c, b                                       ; $443e: $48
    ld h, c                                       ; $443f: $61
    add a                                         ; $4440: $87
    ld l, e                                       ; $4441: $6b
    sbc d                                         ; $4442: $9a
    db $dd                                        ; $4443: $dd
    cp c                                          ; $4444: $b9
    sbc b                                         ; $4445: $98
    ld l, e                                       ; $4446: $6b
    ld [hl], b                                    ; $4447: $70
    ld h, $85                                     ; $4448: $26 $85
    ld [hl], l                                    ; $444a: $75
    adc d                                         ; $444b: $8a
    sbc c                                         ; $444c: $99
    sbc d                                         ; $444d: $9a
    cp d                                          ; $444e: $ba
    xor c                                         ; $444f: $a9
    dec [hl]                                      ; $4450: $35
    or a                                          ; $4451: $b7
    ld c, h                                       ; $4452: $4c
    ld d, d                                       ; $4453: $52
    ld l, d                                       ; $4454: $6a
    and a                                         ; $4455: $a7
    ld c, b                                       ; $4456: $48
    adc b                                         ; $4457: $88
    ld [hl], d                                    ; $4458: $72
    ld a, [hl]                                    ; $4459: $7e
    xor b                                         ; $445a: $a8
    ret                                           ; $445b: $c9


    adc [hl]                                      ; $445c: $8e
    cp c                                          ; $445d: $b9

jr_017_445e:
    adc d                                         ; $445e: $8a
    add c                                         ; $445f: $81
    ld d, [hl]                                    ; $4460: $56
    dec h                                         ; $4461: $25
    ld h, a                                       ; $4462: $67

jr_017_4463:
    ld a, b                                       ; $4463: $78
    ld h, a                                       ; $4464: $67
    adc $db                                       ; $4465: $ce $db
    adc e                                         ; $4467: $8b
    ld c, h                                       ; $4468: $4c
    sub d                                         ; $4469: $92
    ld l, c                                       ; $446a: $69
    ld [hl], c                                    ; $446b: $71
    ld d, [hl]                                    ; $446c: $56
    ld a, b                                       ; $446d: $78
    ld a, c                                       ; $446e: $79
    sub l                                         ; $446f: $95
    sub a                                         ; $4470: $97
    xor d                                         ; $4471: $aa
    ld a, b                                       ; $4472: $78
    sbc d                                         ; $4473: $9a
    ld c, d                                       ; $4474: $4a
    sub a                                         ; $4475: $97
    xor [hl]                                      ; $4476: $ae
    add e                                         ; $4477: $83
    ld c, b                                       ; $4478: $48
    adc b                                         ; $4479: $88
    ld b, c                                       ; $447a: $41
    ld [hl], l                                    ; $447b: $75
    halt                                          ; $447c: $76
    cp d                                          ; $447d: $ba
    sbc [hl]                                      ; $447e: $9e
    cp d                                          ; $447f: $ba
    sbc c                                         ; $4480: $99
    and [hl]                                      ; $4481: $a6
    adc c                                         ; $4482: $89
    ld b, d                                       ; $4483: $42
    ld d, a                                       ; $4484: $57

Jump_017_4485:
    ld d, a                                       ; $4485: $57
    ld b, a                                       ; $4486: $47
    and a                                         ; $4487: $a7
    sbc c                                         ; $4488: $99
    adc e                                         ; $4489: $8b
    cp l                                          ; $448a: $bd
    ld [hl], h                                    ; $448b: $74
    ld l, c                                       ; $448c: $69
    ld [hl], a                                    ; $448d: $77
    xor d                                         ; $448e: $aa
    ld [hl], l                                    ; $448f: $75
    ld c, e                                       ; $4490: $4b
    add h                                         ; $4491: $84
    ld h, [hl]                                    ; $4492: $66
    sub h                                         ; $4493: $94
    ld b, [hl]                                    ; $4494: $46

Call_017_4495:
    sbc e                                         ; $4495: $9b
    sbc d                                         ; $4496: $9a
    xor d                                         ; $4497: $aa
    sbc e                                         ; $4498: $9b
    xor b                                         ; $4499: $a8
    adc c                                         ; $449a: $89
    ld [hl], h                                    ; $449b: $74
    ld b, l                                       ; $449c: $45
    ld h, a                                       ; $449d: $67
    ld h, [hl]                                    ; $449e: $66
    sub [hl]                                      ; $449f: $96
    xor c                                         ; $44a0: $a9
    cp e                                          ; $44a1: $bb
    xor e                                         ; $44a2: $ab
    xor b                                         ; $44a3: $a8
    ld l, c                                       ; $44a4: $69
    ld b, l                                       ; $44a5: $45
    adc b                                         ; $44a6: $88
    ld [hl], d                                    ; $44a7: $72
    jr z, jr_017_4463                             ; $44a8: $28 $b9

    ld [hl], a                                    ; $44aa: $77
    and a                                         ; $44ab: $a7
    ld c, c                                       ; $44ac: $49
    sub l                                         ; $44ad: $95
    cp d                                          ; $44ae: $ba
    sbc c                                         ; $44af: $99
    adc b                                         ; $44b0: $88
    jp c, $83a9                                   ; $44b1: $da $a9 $83

    scf                                           ; $44b4: $37
    sub h                                         ; $44b5: $94
    ld b, $97                                     ; $44b6: $06 $97
    add [hl]                                      ; $44b8: $86
    xor [hl]                                      ; $44b9: $ae
    jp z, Jump_017_79ba                           ; $44ba: $ca $ba $79

    ld a, c                                       ; $44bd: $79
    add h                                         ; $44be: $84
    ld d, d                                       ; $44bf: $52
    add hl, sp                                    ; $44c0: $39
    halt                                          ; $44c1: $76
    ld l, c                                       ; $44c2: $69
    cp b                                          ; $44c3: $b8
    sbc b                                         ; $44c4: $98
    cp c                                          ; $44c5: $b9
    xor c                                         ; $44c6: $a9
    jr z, jr_017_4541                             ; $44c7: $28 $78

    ld a, b                                       ; $44c9: $78
    sbc l                                         ; $44ca: $9d
    and h                                         ; $44cb: $a4
    ld e, d                                       ; $44cc: $5a
    add l                                         ; $44cd: $85
    ld e, b                                       ; $44ce: $58
    ld [hl], c                                    ; $44cf: $71
    ld l, b                                       ; $44d0: $68
    xor d                                         ; $44d1: $aa
    xor d                                         ; $44d2: $aa
    cp h                                          ; $44d3: $bc
    sbc d                                         ; $44d4: $9a
    sbc b                                         ; $44d5: $98
    ld a, d                                       ; $44d6: $7a
    add c                                         ; $44d7: $81
    add hl, hl                                    ; $44d8: $29
    ld h, [hl]                                    ; $44d9: $66
    ld l, b                                       ; $44da: $68
    adc c                                         ; $44db: $89
    xor d                                         ; $44dc: $aa
    jp c, $989a                                   ; $44dd: $da $9a $98

    ld d, l                                       ; $44e0: $55
    ld a, b                                       ; $44e1: $78
    ld l, e                                       ; $44e2: $6b
    ld [hl], c                                    ; $44e3: $71
    ld l, [hl]                                    ; $44e4: $6e
    sbc b                                         ; $44e5: $98
    ld d, a                                       ; $44e6: $57
    sub [hl]                                      ; $44e7: $96
    ld h, a                                       ; $44e8: $67
    adc d                                         ; $44e9: $8a
    xor c                                         ; $44ea: $a9
    adc c                                         ; $44eb: $89
    sbc h                                         ; $44ec: $9c
    cp d                                          ; $44ed: $ba
    cp e                                          ; $44ee: $bb
    ld [hl], d                                    ; $44ef: $72
    ld c, b                                       ; $44f0: $48
    inc sp                                        ; $44f1: $33
    ld e, b                                       ; $44f2: $58
    add l                                         ; $44f3: $85
    adc c                                         ; $44f4: $89
    xor $cb                                       ; $44f5: $ee $cb
    adc c                                         ; $44f7: $89
    sbc c                                         ; $44f8: $99
    ld [hl], h                                    ; $44f9: $74
    ld [hl], a                                    ; $44fa: $77
    ld b, c                                       ; $44fb: $41
    ld e, d                                       ; $44fc: $5a
    adc c                                         ; $44fd: $89
    adc e                                         ; $44fe: $8b
    and h                                         ; $44ff: $a4
    adc c                                         ; $4500: $89
    cp d                                          ; $4501: $ba
    ld h, [hl]                                    ; $4502: $66
    adc b                                         ; $4503: $88
    ld a, c                                       ; $4504: $79
    adc b                                         ; $4505: $88
    jp c, Jump_017_7966                           ; $4506: $da $66 $79

    ld [hl], l                                    ; $4509: $75
    ld [hl], l                                    ; $450a: $75
    ld [hl], $69                                  ; $450b: $36 $69
    ld [$ba9e], a                                 ; $450d: $ea $9e $ba
    sbc b                                         ; $4510: $98
    ld a, c                                       ; $4511: $79
    ld a, b                                       ; $4512: $78
    ld [hl-], a                                   ; $4513: $32
    ld [hl], a                                    ; $4514: $77
    ld e, c                                       ; $4515: $59
    ld a, b                                       ; $4516: $78
    xor c                                         ; $4517: $a9
    xor d                                         ; $4518: $aa
    cp d                                          ; $4519: $ba
    cp c                                          ; $451a: $b9
    add h                                         ; $451b: $84
    ld c, c                                       ; $451c: $49
    ld d, a                                       ; $451d: $57
    xor b                                         ; $451e: $a8
    daa                                           ; $451f: $27
    cp c                                          ; $4520: $b9
    adc b                                         ; $4521: $88
    ld l, c                                       ; $4522: $69
    add h                                         ; $4523: $84
    ld h, l                                       ; $4524: $65
    cp c                                          ; $4525: $b9
    ld a, c                                       ; $4526: $79
    sbc b                                         ; $4527: $98
    cp l                                          ; $4528: $bd
    adc c                                         ; $4529: $89
    and a                                         ; $452a: $a7
    inc sp                                        ; $452b: $33
    ld d, h                                       ; $452c: $54
    ld b, a                                       ; $452d: $47
    ld [hl], $a7                                  ; $452e: $36 $a7
    adc h                                         ; $4530: $8c
    db $ed                                        ; $4531: $ed
    or a                                          ; $4532: $b7
    rst $00                                       ; $4533: $c7
    sub a                                         ; $4534: $97
    ld d, [hl]                                    ; $4535: $56
    add a                                         ; $4536: $87
    ld h, $57                                     ; $4537: $26 $57
    xor h                                         ; $4539: $ac
    adc c                                         ; $453a: $89
    sub [hl]                                      ; $453b: $96
    ld a, b                                       ; $453c: $78
    or [hl]                                       ; $453d: $b6
    ld h, a                                       ; $453e: $67
    add a                                         ; $453f: $87
    adc b                                         ; $4540: $88

jr_017_4541:
    ld a, e                                       ; $4541: $7b
    jp z, Jump_017_6745                           ; $4542: $ca $45 $67

    ld [hl], a                                    ; $4545: $77
    inc [hl]                                      ; $4546: $34
    sub l                                         ; $4547: $95
    ld l, c                                       ; $4548: $69
    set 3, e                                      ; $4549: $cb $db
    jp c, Jump_017_677a                           ; $454b: $da $7a $67

    sub d                                         ; $454e: $92
    dec b                                         ; $454f: $05
    ld h, [hl]                                    ; $4550: $66
    add [hl]                                      ; $4551: $86
    ld a, l                                       ; $4552: $7d
    xor d                                         ; $4553: $aa
    sbc d                                         ; $4554: $9a
    ret c                                         ; $4555: $d8

    xor b                                         ; $4556: $a8
    ld b, h                                       ; $4557: $44
    sub [hl]                                      ; $4558: $96
    ld e, c                                       ; $4559: $59
    ld a, b                                       ; $455a: $78
    ld h, a                                       ; $455b: $67
    adc d                                         ; $455c: $8a
    adc c                                         ; $455d: $89
    scf                                           ; $455e: $37
    and d                                         ; $455f: $a2
    dec sp                                        ; $4560: $3b
    and a                                         ; $4561: $a7
    xor c                                         ; $4562: $a9
    adc h                                         ; $4563: $8c

Jump_017_4564:
    res 1, b                                      ; $4564: $cb $88
    sub a                                         ; $4566: $97
    inc d                                         ; $4567: $14
    inc sp                                        ; $4568: $33
    sub [hl]                                      ; $4569: $96
    ld c, c                                       ; $456a: $49
    ld a, b                                       ; $456b: $78
    cp a                                          ; $456c: $bf
    cp e                                          ; $456d: $bb
    xor b                                         ; $456e: $a8
    add a                                         ; $456f: $87
    add d                                         ; $4570: $82
    jr c, jr_017_45ca                             ; $4571: $38 $57

    ld b, d                                       ; $4573: $42
    sbc d                                         ; $4574: $9a

Jump_017_4575:
    cp c                                          ; $4575: $b9
    ld a, d                                       ; $4576: $7a
    ld [hl], a                                    ; $4577: $77
    ld e, d                                       ; $4578: $5a
    ld d, l                                       ; $4579: $55
    rst $10                                       ; $457a: $d7
    ld h, [hl]                                    ; $457b: $66
    adc c                                         ; $457c: $89
    cp d                                          ; $457d: $ba
    cp d                                          ; $457e: $ba
    inc h                                         ; $457f: $24
    add l                                         ; $4580: $85
    add b                                         ; $4581: $80
    jr jr_017_45e9                                ; $4582: $18 $65

    sbc d                                         ; $4584: $9a
    db $dd                                        ; $4585: $dd
    add sp, -$39                                  ; $4586: $e8 $c7
    sbc b                                         ; $4588: $98
    ld d, a                                       ; $4589: $57
    ld [hl], $01                                  ; $458a: $36 $01
    ld e, d                                       ; $458c: $5a
    ld l, c                                       ; $458d: $69
    sbc [hl]                                      ; $458e: $9e
    adc c                                         ; $458f: $89
    xor e                                         ; $4590: $ab
    xor b                                         ; $4591: $a8
    add d                                         ; $4592: $82

Jump_017_4593:
    add l                                         ; $4593: $85
    ld l, b                                       ; $4594: $68
    ld h, l                                       ; $4595: $65
    cp l                                          ; $4596: $bd
    ld b, a                                       ; $4597: $47
    ld a, b                                       ; $4598: $78
    sub a                                         ; $4599: $97
    ld l, c                                       ; $459a: $69
    ld h, $76                                     ; $459b: $26 $76
    xor d                                         ; $459d: $aa
    sbc h                                         ; $459e: $9c
    jp c, $67aa                                   ; $459f: $da $aa $67

    add a                                         ; $45a2: $87
    ld h, c                                       ; $45a3: $61
    ld h, a                                       ; $45a4: $67
    ld d, a                                       ; $45a5: $57
    ld [hl], a                                    ; $45a6: $77
    xor d                                         ; $45a7: $aa
    xor d                                         ; $45a8: $aa
    ret z                                         ; $45a9: $c8

    xor c                                         ; $45aa: $a9
    sub [hl]                                      ; $45ab: $96
    daa                                           ; $45ac: $27
    ld d, l                                       ; $45ad: $55
    sub a                                         ; $45ae: $97
    dec h                                         ; $45af: $25
    xor c                                         ; $45b0: $a9
    sbc c                                         ; $45b1: $99
    ld d, a                                       ; $45b2: $57
    adc c                                         ; $45b3: $89
    ld h, l                                       ; $45b4: $65
    reti                                          ; $45b5: $d9


    ld a, b                                       ; $45b6: $78
    sub a                                         ; $45b7: $97
    call c, $a78b                                 ; $45b8: $dc $8b $a7
    inc h                                         ; $45bb: $24
    ld d, h                                       ; $45bc: $54
    daa                                           ; $45bd: $27
    ld d, l                                       ; $45be: $55
    add [hl]                                      ; $45bf: $86
    adc [hl]                                      ; $45c0: $8e
    db $fc                                        ; $45c1: $fc
    cp e                                          ; $45c2: $bb
    adc c                                         ; $45c3: $89
    add [hl]                                      ; $45c4: $86
    ld d, l                                       ; $45c5: $55
    ld h, [hl]                                    ; $45c6: $66
    inc h                                         ; $45c7: $24
    ld l, b                                       ; $45c8: $68
    xor d                                         ; $45c9: $aa

jr_017_45ca:
    adc d                                         ; $45ca: $8a
    and [hl]                                      ; $45cb: $a6
    adc d                                         ; $45cc: $8a
    or a                                          ; $45cd: $b7
    ld e, c                                       ; $45ce: $59
    add [hl]                                      ; $45cf: $86
    adc c                                         ; $45d0: $89
    ld l, d                                       ; $45d1: $6a
    xor e                                         ; $45d2: $ab
    ld h, h                                       ; $45d3: $64
    ld h, a                                       ; $45d4: $67
    sub [hl]                                      ; $45d5: $96
    ld b, l                                       ; $45d6: $45
    add a                                         ; $45d7: $87
    ld l, d                                       ; $45d8: $6a
    xor c                                         ; $45d9: $a9
    cp l                                          ; $45da: $bd
    xor d                                         ; $45db: $aa
    sub [hl]                                      ; $45dc: $96
    ld a, b                                       ; $45dd: $78
    ld [hl], h                                    ; $45de: $74
    inc b                                         ; $45df: $04
    ld d, [hl]                                    ; $45e0: $56
    ld h, a                                       ; $45e1: $67
    ld e, e                                       ; $45e2: $5b
    cp d                                          ; $45e3: $ba
    xor h                                         ; $45e4: $ac
    res 3, c                                      ; $45e5: $cb $99
    ld h, e                                       ; $45e7: $63
    add l                                         ; $45e8: $85

jr_017_45e9:
    ld d, a                                       ; $45e9: $57
    add [hl]                                      ; $45ea: $86
    ld l, c                                       ; $45eb: $69
    sbc c                                         ; $45ec: $99
    sbc b                                         ; $45ed: $98
    ld c, b                                       ; $45ee: $48
    add d                                         ; $45ef: $82
    ld e, e                                       ; $45f0: $5b
    cp b                                          ; $45f1: $b8
    xor c                                         ; $45f2: $a9
    sbc e                                         ; $45f3: $9b
    res 3, b                                      ; $45f4: $cb $98
    halt                                          ; $45f6: $76
    ld [hl], $14                                  ; $45f7: $36 $14
    sub a                                         ; $45f9: $97
    ld c, b                                       ; $45fa: $48
    halt                                          ; $45fb: $76
    rst $08                                       ; $45fc: $cf
    db $eb                                        ; $45fd: $eb
    ret                                           ; $45fe: $c9


    and a                                         ; $45ff: $a7
    add h                                         ; $4600: $84
    jr z, jr_017_4677                             ; $4601: $28 $74

    inc [hl]                                      ; $4603: $34
    ld c, d                                       ; $4604: $4a
    xor e                                         ; $4605: $ab
    adc e                                         ; $4606: $8b
    add l                                         ; $4607: $85
    ld l, l                                       ; $4608: $6d
    sub d                                         ; $4609: $92
    cp b                                          ; $460a: $b8
    add a                                         ; $460b: $87
    ld l, d                                       ; $460c: $6a
    sbc e                                         ; $460d: $9b
    adc d                                         ; $460e: $8a
    ld h, h                                       ; $460f: $64
    jr c, jr_017_4684                             ; $4610: $38 $72

    add hl, hl                                    ; $4612: $29
    ld [hl], l                                    ; $4613: $75
    sbc b                                         ; $4614: $98
    ei                                            ; $4615: $fb
    cp h                                          ; $4616: $bc
    ret                                           ; $4617: $c9


    ld a, c                                       ; $4618: $79
    ld e, b                                       ; $4619: $58
    inc de                                        ; $461a: $13
    ld b, c                                       ; $461b: $41
    add hl, hl                                    ; $461c: $29
    ld a, c                                       ; $461d: $79
    ld a, d                                       ; $461e: $7a
    cp b                                          ; $461f: $b8
    sbc e                                         ; $4620: $9b

Jump_017_4621:
    jp z, $6793                                   ; $4621: $ca $93 $67

    ld d, a                                       ; $4624: $57
    add a                                         ; $4625: $87
    ld l, h                                       ; $4626: $6c
    or e                                          ; $4627: $b3
    ld l, b                                       ; $4628: $68
    add [hl]                                      ; $4629: $86
    jr c, jr_017_4670                             ; $462a: $38 $44

    ld c, c                                       ; $462c: $49
    bit 7, h                                      ; $462d: $cb $7c
    call z, $878c                                 ; $462f: $cc $8c $87
    ld l, b                                       ; $4632: $68
    ld h, b                                       ; $4633: $60
    ld b, [hl]                                    ; $4634: $46
    ld d, [hl]                                    ; $4635: $56
    ld [hl], a                                    ; $4636: $77
    xor c                                         ; $4637: $a9
    xor e                                         ; $4638: $ab
    jp z, $98b9                                   ; $4639: $ca $b9 $98

    scf                                           ; $463c: $37
    ld h, [hl]                                    ; $463d: $66
    ld e, d                                       ; $463e: $5a
    ld d, l                                       ; $463f: $55
    adc d                                         ; $4640: $8a
    cp b                                          ; $4641: $b8
    ld c, c                                       ; $4642: $49
    add l                                         ; $4643: $85
    ld [hl], l                                    ; $4644: $75
    xor l                                         ; $4645: $ad
    ld h, a                                       ; $4646: $67
    xor b                                         ; $4647: $a8
    ld a, h                                       ; $4648: $7c
    sbc d                                         ; $4649: $9a
    sub a                                         ; $464a: $97
    ld d, d                                       ; $464b: $52
    scf                                           ; $464c: $37
    inc sp                                        ; $464d: $33
    ld d, e                                       ; $464e: $53
    sub [hl]                                      ; $464f: $96
    adc c                                         ; $4650: $89
    db $ec                                        ; $4651: $ec
    jp z, Jump_017_799a                           ; $4652: $ca $9a $79

    ld d, e                                       ; $4655: $53
    add l                                         ; $4656: $85
    ld b, d                                       ; $4657: $42
    ld c, b                                       ; $4658: $48
    adc b                                         ; $4659: $88
    sbc d                                         ; $465a: $9a
    sbc c                                         ; $465b: $99
    adc c                                         ; $465c: $89
    cp d                                          ; $465d: $ba
    ld [hl], a                                    ; $465e: $77
    add l                                         ; $465f: $85
    sub a                                         ; $4660: $97
    ld a, c                                       ; $4661: $79
    xor e                                         ; $4662: $ab
    ld h, h                                       ; $4663: $64
    ld a, c                                       ; $4664: $79
    ld [hl], a                                    ; $4665: $77
    ld h, h                                       ; $4666: $64
    ld h, l                                       ; $4667: $65
    ld e, e                                       ; $4668: $5b
    xor d                                         ; $4669: $aa
    cp l                                          ; $466a: $bd
    cp d                                          ; $466b: $ba
    xor d                                         ; $466c: $aa
    ld [hl], a                                    ; $466d: $77
    ld a, b                                       ; $466e: $78
    inc de                                        ; $466f: $13

jr_017_4670:
    ld d, [hl]                                    ; $4670: $56
    halt                                          ; $4671: $76
    ld e, d                                       ; $4672: $5a
    and a                                         ; $4673: $a7
    xor h                                         ; $4674: $ac
    res 7, d                                      ; $4675: $cb $ba

jr_017_4677:
    ld [hl], h                                    ; $4677: $74
    ld [hl], a                                    ; $4678: $77
    ld c, b                                       ; $4679: $48
    ld e, c                                       ; $467a: $59
    ld [hl], h                                    ; $467b: $74
    ld e, e                                       ; $467c: $5b
    add a                                         ; $467d: $87
    ld l, b                                       ; $467e: $68
    sub [hl]                                      ; $467f: $96
    ld e, d                                       ; $4680: $5a
    or a                                          ; $4681: $b7
    cp b                                          ; $4682: $b8
    adc h                                         ; $4683: $8c

jr_017_4684:
    sbc d                                         ; $4684: $9a
    adc c                                         ; $4685: $89
    adc c                                         ; $4686: $89
    ld d, h                                       ; $4687: $54
    rlca                                          ; $4688: $07
    ld h, l                                       ; $4689: $65
    add hl, sp                                    ; $468a: $39
    ld h, l                                       ; $468b: $65
    cp e                                          ; $468c: $bb
    db $dd                                        ; $468d: $dd
    cp d                                          ; $468e: $ba
    cp b                                          ; $468f: $b8
    and h                                         ; $4690: $a4
    ld a, [hl-]                                   ; $4691: $3a
    ld d, h                                       ; $4692: $54
    ld [hl+], a                                   ; $4693: $22
    ld e, d                                       ; $4694: $5a
    and [hl]                                      ; $4695: $a6
    adc h                                         ; $4696: $8c
    ld h, a                                       ; $4697: $67
    cp l                                          ; $4698: $bd
    ld l, b                                       ; $4699: $68
    xor b                                         ; $469a: $a8
    ld [hl], a                                    ; $469b: $77
    sub a                                         ; $469c: $97
    cp c                                          ; $469d: $b9
    adc c                                         ; $469e: $89
    ld b, [hl]                                    ; $469f: $46
    ld e, b                                       ; $46a0: $58
    sub b                                         ; $46a1: $90
    ld e, c                                       ; $46a2: $59
    ld d, l                                       ; $46a3: $55
    sbc c                                         ; $46a4: $99
    db $dd                                        ; $46a5: $dd
    xor h                                         ; $46a6: $ac
    cp c                                          ; $46a7: $b9
    adc c                                         ; $46a8: $89
    ld [hl], a                                    ; $46a9: $77
    ld b, [hl]                                    ; $46aa: $46
    ld b, d                                       ; $46ab: $42
    ld b, [hl]                                    ; $46ac: $46
    ld e, b                                       ; $46ad: $58
    adc d                                         ; $46ae: $8a
    sbc b                                         ; $46af: $98
    sbc h                                         ; $46b0: $9c
    call z, $a9a4                                 ; $46b1: $cc $a4 $a9
    ld c, b                                       ; $46b4: $48
    add l                                         ; $46b5: $85
    cp c                                          ; $46b6: $b9
    ld b, h                                       ; $46b7: $44
    add l                                         ; $46b8: $85
    xor b                                         ; $46b9: $a8
    ld e, b                                       ; $46ba: $58
    ld [hl], $78                                  ; $46bb: $36 $78
    sbc d                                         ; $46bd: $9a
    xor d                                         ; $46be: $aa
    reti                                          ; $46bf: $d9


    adc d                                         ; $46c0: $8a
    sbc c                                         ; $46c1: $99
    adc b                                         ; $46c2: $88
    ld b, d                                       ; $46c3: $42
    ld h, [hl]                                    ; $46c4: $66
    ld d, [hl]                                    ; $46c5: $56
    ld d, a                                       ; $46c6: $57
    adc b                                         ; $46c7: $88
    xor d                                         ; $46c8: $aa
    jp c, $a7ac                                   ; $46c9: $da $ac $a7

    ld e, b                                       ; $46cc: $58
    halt                                          ; $46cd: $76
    ld h, a                                       ; $46ce: $67
    ld b, $98                                     ; $46cf: $06 $98
    ld [hl], a                                    ; $46d1: $77
    ld a, c                                       ; $46d2: $79
    sub [hl]                                      ; $46d3: $96
    adc b                                         ; $46d4: $88
    cp b                                          ; $46d5: $b8
    adc b                                         ; $46d6: $88
    sub [hl]                                      ; $46d7: $96
    xor d                                         ; $46d8: $aa
    xor e                                         ; $46d9: $ab
    ld a, c                                       ; $46da: $79
    dec [hl]                                      ; $46db: $35
    ld [hl], a                                    ; $46dc: $77
    dec h                                         ; $46dd: $25
    ld b, a                                       ; $46de: $47
    ld d, h                                       ; $46df: $54
    adc [hl]                                      ; $46e0: $8e
    ld [$cacb], a                                 ; $46e1: $ea $cb $ca
    sbc e                                         ; $46e4: $9b
    ld d, l                                       ; $46e5: $55
    add a                                         ; $46e6: $87
    ld de, $7766                                  ; $46e7: $11 $66 $77
    ld a, c                                       ; $46ea: $79
    add [hl]                                      ; $46eb: $86
    adc l                                         ; $46ec: $8d
    xor c                                         ; $46ed: $a9
    adc e                                         ; $46ee: $8b
    adc b                                         ; $46ef: $88
    add a                                         ; $46f0: $87
    ld l, d                                       ; $46f1: $6a
    and a                                         ; $46f2: $a7
    inc [hl]                                      ; $46f3: $34
    or [hl]                                       ; $46f4: $b6
    ld h, a                                       ; $46f5: $67
    ld b, [hl]                                    ; $46f6: $46
    ld [hl], l                                    ; $46f7: $75
    ld a, h                                       ; $46f8: $7c
    adc d                                         ; $46f9: $8a
    jp c, $a89b                                   ; $46fa: $da $9b $a8

    adc c                                         ; $46fd: $89
    sub h                                         ; $46fe: $94
    ld b, $86                                     ; $46ff: $06 $86
    inc sp                                        ; $4701: $33
    adc e                                         ; $4702: $8b
    ld l, b                                       ; $4703: $68
    cp e                                          ; $4704: $bb
    xor c                                         ; $4705: $a9
    cp l                                          ; $4706: $bd
    ld h, l                                       ; $4707: $65
    or [hl]                                       ; $4708: $b6
    ld [hl], a                                    ; $4709: $77
    add a                                         ; $470a: $87
    ld h, $a9                                     ; $470b: $26 $a9
    dec h                                         ; $470d: $25
    ld l, e                                       ; $470e: $6b
    ld b, d                                       ; $470f: $42
    ld l, h                                       ; $4710: $6c
    xor e                                         ; $4711: $ab
    sbc d                                         ; $4712: $9a
    cp d                                          ; $4713: $ba
    cp h                                          ; $4714: $bc
    sbc c                                         ; $4715: $99
    and a                                         ; $4716: $a7
    dec h                                         ; $4717: $25
    ld d, [hl]                                    ; $4718: $56
    ld d, h                                       ; $4719: $54
    ld e, d                                       ; $471a: $5a
    ld [hl], $bc                                  ; $471b: $36 $bc
    xor h                                         ; $471d: $ac
    sbc d                                         ; $471e: $9a
    cp b                                          ; $471f: $b8
    or [hl]                                       ; $4720: $b6
    ld e, c                                       ; $4721: $59
    add a                                         ; $4722: $87
    inc hl                                        ; $4723: $23
    ld a, e                                       ; $4724: $7b
    ld d, [hl]                                    ; $4725: $56
    sbc d                                         ; $4726: $9a
    scf                                           ; $4727: $37
    xor e                                         ; $4728: $ab
    ld [hl], a                                    ; $4729: $77
    adc d                                         ; $472a: $8a
    xor b                                         ; $472b: $a8
    and a                                         ; $472c: $a7
    xor e                                         ; $472d: $ab
    xor b                                         ; $472e: $a8
    ld [hl], $98                                  ; $472f: $36 $98
    ld h, c                                       ; $4731: $61
    ld c, d                                       ; $4732: $4a
    ld d, [hl]                                    ; $4733: $56
    sbc c                                         ; $4734: $99
    cp d                                          ; $4735: $ba
    sbc h                                         ; $4736: $9c
    ret                                           ; $4737: $c9


    adc c                                         ; $4738: $89
    sbc b                                         ; $4739: $98
    ld h, e                                       ; $473a: $63
    inc [hl]                                      ; $473b: $34
    ld a, c                                       ; $473c: $79
    dec h                                         ; $473d: $25
    ret z                                         ; $473e: $c8

    ld e, d                                       ; $473f: $5a
    xor e                                         ; $4740: $ab
    res 6, h                                      ; $4741: $cb $b4

Jump_017_4743:
    sbc b                                         ; $4743: $98
    xor b                                         ; $4744: $a8
    add [hl]                                      ; $4745: $86
    or [hl]                                       ; $4746: $b6
    inc [hl]                                      ; $4747: $34
    xor c                                         ; $4748: $a9
    scf                                           ; $4749: $37
    adc d                                         ; $474a: $8a
    inc h                                         ; $474b: $24
    ret z                                         ; $474c: $c8

    cp e                                          ; $474d: $bb
    ld a, e                                       ; $474e: $7b
    ld [$89ba], a                                 ; $474f: $ea $ba $89
    add h                                         ; $4752: $84
    ld d, c                                       ; $4753: $51

jr_017_4754:
    add hl, sp                                    ; $4754: $39
    ld b, e                                       ; $4755: $43
    add h                                         ; $4756: $84
    adc c                                         ; $4757: $89
    call $a9cc                                    ; $4758: $cd $cc $a9
    cp d                                          ; $475b: $ba
    ld b, h                                       ; $475c: $44
    add [hl]                                      ; $475d: $86
    add h                                         ; $475e: $84
    daa                                           ; $475f: $27
    cp c                                          ; $4760: $b9
    ld l, b                                       ; $4761: $68
    add [hl]                                      ; $4762: $86
    ld c, d                                       ; $4763: $4a
    rst $00                                       ; $4764: $c7
    ld a, e                                       ; $4765: $7b
    ld a, b                                       ; $4766: $78
    and [hl]                                      ; $4767: $a6
    xor h                                         ; $4768: $ac
    ret c                                         ; $4769: $d8

    add d                                         ; $476a: $82
    ld h, l                                       ; $476b: $65
    add a                                         ; $476c: $87
    dec d                                         ; $476d: $15
    ld h, a                                       ; $476e: $67
    ld c, d                                       ; $476f: $4a
    sbc e                                         ; $4770: $9b
    cp h                                          ; $4771: $bc
    xor d                                         ; $4772: $aa
    sbc b                                         ; $4773: $98
    sbc d                                         ; $4774: $9a
    ld [hl], h                                    ; $4775: $74
    add c                                         ; $4776: $81
    ld b, a                                       ; $4777: $47
    halt                                          ; $4778: $76
    ld l, b                                       ; $4779: $68
    sub a                                         ; $477a: $97
    ld l, c                                       ; $477b: $69
    xor c                                         ; $477c: $a9
    sbc b                                         ; $477d: $98
    ld l, d                                       ; $477e: $6a
    adc c                                         ; $477f: $89
    xor e                                         ; $4780: $ab
    ld a, e                                       ; $4781: $7b
    or h                                          ; $4782: $b4
    daa                                           ; $4783: $27
    ld [hl], l                                    ; $4784: $75
    ld b, l                                       ; $4785: $45
    ld d, c                                       ; $4786: $51
    adc d                                         ; $4787: $8a
    adc l                                         ; $4788: $8d
    sbc b                                         ; $4789: $98
    call c, $a9ba                                 ; $478a: $dc $ba $a9
    adc c                                         ; $478d: $89
    ld [hl], d                                    ; $478e: $72
    daa                                           ; $478f: $27
    add l                                         ; $4790: $85
    ld h, a                                       ; $4791: $67
    ld [hl], a                                    ; $4792: $77
    ld a, e                                       ; $4793: $7b
    ret                                           ; $4794: $c9


    xor c                                         ; $4795: $a9
    adc c                                         ; $4796: $89
    add [hl]                                      ; $4797: $86
    sbc d                                         ; $4798: $9a
    ld a, d                                       ; $4799: $7a
    add e                                         ; $479a: $83
    adc c                                         ; $479b: $89
    sub a                                         ; $479c: $97
    ld [hl], h                                    ; $479d: $74
    halt                                          ; $479e: $76
    ld e, b                                       ; $479f: $58
    adc d                                         ; $47a0: $8a
    xor b                                         ; $47a1: $a8
    cp e                                          ; $47a2: $bb
    adc h                                         ; $47a3: $8c
    res 3, d                                      ; $47a4: $cb $9a
    ld h, e                                       ; $47a6: $63

jr_017_47a7:
    ld l, b                                       ; $47a7: $68
    ld d, b                                       ; $47a8: $50
    ld b, l                                       ; $47a9: $45
    ld h, [hl]                                    ; $47aa: $66
    ld c, d                                       ; $47ab: $4a
    ei                                            ; $47ac: $fb
    res 7, c                                      ; $47ad: $cb $b9
    sbc b                                         ; $47af: $98
    and [hl]                                      ; $47b0: $a6
    ld a, b                                       ; $47b1: $78
    ld h, c                                       ; $47b2: $61
    ld a, c                                       ; $47b3: $79
    sbc c                                         ; $47b4: $99
    ld l, c                                       ; $47b5: $69
    sub l                                         ; $47b6: $95
    ld [hl], a                                    ; $47b7: $77
    xor h                                         ; $47b8: $ac
    ld d, l                                       ; $47b9: $55
    ret                                           ; $47ba: $c9


    ld a, c                                       ; $47bb: $79
    sbc d                                         ; $47bc: $9a
    cp h                                          ; $47bd: $bc
    sub l                                         ; $47be: $95
    halt                                          ; $47bf: $76
    adc b                                         ; $47c0: $88
    ld h, c                                       ; $47c1: $61
    scf                                           ; $47c2: $37
    ld a, [hl-]                                   ; $47c3: $3a
    cp c                                          ; $47c4: $b9
    reti                                          ; $47c5: $d9


    res 7, b                                      ; $47c6: $cb $b8
    add a                                         ; $47c8: $87
    add a                                         ; $47c9: $87
    jr nc, jr_017_4754                            ; $47ca: $30 $88

    ld d, [hl]                                    ; $47cc: $56
    adc b                                         ; $47cd: $88
    adc b                                         ; $47ce: $88
    ld l, e                                       ; $47cf: $6b
    adc b                                         ; $47d0: $88
    sbc c                                         ; $47d1: $99
    ld [hl], d                                    ; $47d2: $72
    ld e, e                                       ; $47d3: $5b
    ld l, b                                       ; $47d4: $68
    sbc c                                         ; $47d5: $99
    sub l                                         ; $47d6: $95
    sbc e                                         ; $47d7: $9b
    sub e                                         ; $47d8: $93
    ld d, a                                       ; $47d9: $57
    ld h, h                                       ; $47da: $64
    scf                                           ; $47db: $37
    or l                                          ; $47dc: $b5
    ld a, l                                       ; $47dd: $7d
    adc d                                         ; $47de: $8a
    res 7, c                                      ; $47df: $cb $b9
    adc c                                         ; $47e1: $89
    ld [hl], b                                    ; $47e2: $70
    ld b, h                                       ; $47e3: $44
    ld d, [hl]                                    ; $47e4: $56
    ld c, b                                       ; $47e5: $48
    add l                                         ; $47e6: $85
    xor c                                         ; $47e7: $a9
    ld [$87b7], a                                 ; $47e8: $ea $b7 $87
    halt                                          ; $47eb: $76
    ld b, [hl]                                    ; $47ec: $46
    ld a, c                                       ; $47ed: $79
    add d                                         ; $47ee: $82
    ld e, h                                       ; $47ef: $5c
    ld l, c                                       ; $47f0: $69
    or [hl]                                       ; $47f1: $b6
    add e                                         ; $47f2: $83
    ld [hl], a                                    ; $47f3: $77
    add h                                         ; $47f4: $84
    adc b                                         ; $47f5: $88
    add a                                         ; $47f6: $87
    sbc c                                         ; $47f7: $99
    xor h                                         ; $47f8: $ac
    jp z, Jump_017_4982                           ; $47f9: $ca $82 $49

    ld d, h                                       ; $47fc: $54
    scf                                           ; $47fd: $37
    ld [hl], h                                    ; $47fe: $74
    ld a, b                                       ; $47ff: $78
    cp d                                          ; $4800: $ba
    db $dd                                        ; $4801: $dd
    ret c                                         ; $4802: $d8

    ld a, b                                       ; $4803: $78
    sbc b                                         ; $4804: $98
    ld [hl], h                                    ; $4805: $74
    ld d, c                                       ; $4806: $51
    ld c, c                                       ; $4807: $49
    add [hl]                                      ; $4808: $86
    xor e                                         ; $4809: $ab
    or [hl]                                       ; $480a: $b6
    adc e                                         ; $480b: $8b
    cp d                                          ; $480c: $ba
    and [hl]                                      ; $480d: $a6
    ld h, [hl]                                    ; $480e: $66
    ld d, [hl]                                    ; $480f: $56
    sub a                                         ; $4810: $97
    adc l                                         ; $4811: $8d
    sub l                                         ; $4812: $95
    adc b                                         ; $4813: $88
    ld [hl], a                                    ; $4814: $77
    sub a                                         ; $4815: $97
    ld d, h                                       ; $4816: $54
    ld d, a                                       ; $4817: $57
    xor b                                         ; $4818: $a8
    sbc b                                         ; $4819: $98
    cp e                                          ; $481a: $bb
    sbc c                                         ; $481b: $99
    sbc b                                         ; $481c: $98
    adc e                                         ; $481d: $8b
    ld [hl], b                                    ; $481e: $70
    jr c, jr_017_47a7                             ; $481f: $38 $86

    halt                                          ; $4821: $76
    adc d                                         ; $4822: $8a
    ld a, d                                       ; $4823: $7a
    jp c, $9aa8                                   ; $4824: $da $a8 $9a

    ld [hl], $79                                  ; $4827: $36 $79
    ld l, d                                       ; $4829: $6a
    ld h, e                                       ; $482a: $63
    ld l, b                                       ; $482b: $68
    xor b                                         ; $482c: $a8
    ld h, [hl]                                    ; $482d: $66
    sub a                                         ; $482e: $97
    ld h, h                                       ; $482f: $64
    sbc c                                         ; $4830: $99
    sbc b                                         ; $4831: $98
    adc d                                         ; $4832: $8a
    adc c                                         ; $4833: $89
    xor h                                         ; $4834: $ac
    adc c                                         ; $4835: $89
    ld h, b                                       ; $4836: $60
    ld c, b                                       ; $4837: $48
    inc d                                         ; $4838: $14
    add l                                         ; $4839: $85
    sbc b                                         ; $483a: $98
    ld c, l                                       ; $483b: $4d
    db $db                                        ; $483c: $db
    xor e                                         ; $483d: $ab
    adc e                                         ; $483e: $8b
    ld d, a                                       ; $483f: $57
    sub e                                         ; $4840: $93
    ld a, d                                       ; $4841: $7a
    ld d, d                                       ; $4842: $52
    ld b, [hl]                                    ; $4843: $46
    sbc d                                         ; $4844: $9a
    sbc b                                         ; $4845: $98
    and l                                         ; $4846: $a5
    ld l, c                                       ; $4847: $69
    sbc c                                         ; $4848: $99
    ld d, [hl]                                    ; $4849: $56
    xor c                                         ; $484a: $a9
    adc c                                         ; $484b: $89
    ld e, e                                       ; $484c: $5b
    cp d                                          ; $484d: $ba
    sub h                                         ; $484e: $94
    ld d, [hl]                                    ; $484f: $56
    add l                                         ; $4850: $85
    ld [hl], d                                    ; $4851: $72
    ld a, b                                       ; $4852: $78
    add hl, sp                                    ; $4853: $39
    rst $10                                       ; $4854: $d7
    sbc $9b                                       ; $4855: $de $9b
    ld a, c                                       ; $4857: $79
    adc b                                         ; $4858: $88
    ld l, b                                       ; $4859: $68
    ld sp, $b976                                  ; $485a: $31 $76 $b9
    add hl, sp                                    ; $485d: $39
    rst $00                                       ; $485e: $c7
    ld l, h                                       ; $485f: $6c
    sbc e                                         ; $4860: $9b
    adc c                                         ; $4861: $89
    sub [hl]                                      ; $4862: $96
    ld a, b                                       ; $4863: $78
    ld e, c                                       ; $4864: $59
    xor b                                         ; $4865: $a8
    or e                                          ; $4866: $b3
    adc b                                         ; $4867: $88
    and [hl]                                      ; $4868: $a6
    ld h, a                                       ; $4869: $67
    sub l                                         ; $486a: $95
    ld a, [hl-]                                   ; $486b: $3a
    sbc d                                         ; $486c: $9a
    sbc d                                         ; $486d: $9a
    adc e                                         ; $486e: $8b
    xor e                                         ; $486f: $ab
    sub a                                         ; $4870: $97
    sub a                                         ; $4871: $97
    ld h, d                                       ; $4872: $62
    ld d, e                                       ; $4873: $53
    sub [hl]                                      ; $4874: $96
    ld l, b                                       ; $4875: $68
    add a                                         ; $4876: $87
    sbc d                                         ; $4877: $9a
    call c, $98b9                                 ; $4878: $dc $b9 $98
    ld h, a                                       ; $487b: $67
    jr jr_017_48f8                                ; $487c: $18 $7a

    ld [hl], b                                    ; $487e: $70
    ld a, d                                       ; $487f: $7a
    cp d                                          ; $4880: $ba
    adc b                                         ; $4881: $88
    halt                                          ; $4882: $76
    ld c, c                                       ; $4883: $49
    ld [hl], l                                    ; $4884: $75
    cp c                                          ; $4885: $b9
    ld l, c                                       ; $4886: $69
    adc b                                         ; $4887: $88
    xor h                                         ; $4888: $ac
    call z, Call_017_7b61                         ; $4889: $cc $61 $7b
    ld d, e                                       ; $488c: $53
    ld d, a                                       ; $488d: $57
    ld d, [hl]                                    ; $488e: $56
    xor c                                         ; $488f: $a9
    jp c, $a7cb                                   ; $4890: $da $cb $a7

    add a                                         ; $4893: $87
    ld e, b                                       ; $4894: $58
    ld b, a                                       ; $4895: $47
    ld d, e                                       ; $4896: $53
    ld c, l                                       ; $4897: $4d
    ld d, a                                       ; $4898: $57
    cp d                                          ; $4899: $ba
    and [hl]                                      ; $489a: $a6
    sbc c                                         ; $489b: $99
    xor b                                         ; $489c: $a8
    sub h                                         ; $489d: $94
    ld [hl], a                                    ; $489e: $77
    ld a, [hl-]                                   ; $489f: $3a
    add a                                         ; $48a0: $87
    cp h                                          ; $48a1: $bc
    sub h                                         ; $48a2: $94
    adc c                                         ; $48a3: $89
    add e                                         ; $48a4: $83
    ld [hl], a                                    ; $48a5: $77
    inc h                                         ; $48a6: $24
    ld l, d                                       ; $48a7: $6a
    cp e                                          ; $48a8: $bb
    sbc l                                         ; $48a9: $9d
    cp e                                          ; $48aa: $bb
    sub a                                         ; $48ab: $97
    ld l, b                                       ; $48ac: $68
    ld e, b                                       ; $48ad: $58
    ld d, b                                       ; $48ae: $50
    add hl, sp                                    ; $48af: $39
    add l                                         ; $48b0: $85
    sub a                                         ; $48b1: $97
    ret z                                         ; $48b2: $c8

    call c, $9a98                                 ; $48b3: $dc $98 $9a
    ld h, [hl]                                    ; $48b6: $66
    ld b, l                                       ; $48b7: $45
    ld [hl], l                                    ; $48b8: $75
    ld e, e                                       ; $48b9: $5b
    ld b, [hl]                                    ; $48ba: $46
    adc h                                         ; $48bb: $8c
    push bc                                       ; $48bc: $c5
    ld e, c                                       ; $48bd: $59
    and c                                         ; $48be: $a1
    ld [hl], l                                    ; $48bf: $75
    adc c                                         ; $48c0: $89
    adc b                                         ; $48c1: $88
    or a                                          ; $48c2: $b7
    xor h                                         ; $48c3: $ac
    xor d                                         ; $48c4: $aa
    ld e, d                                       ; $48c5: $5a
    ld h, l                                       ; $48c6: $65
    scf                                           ; $48c7: $37
    ld [hl], c                                    ; $48c8: $71
    ld d, [hl]                                    ; $48c9: $56
    sub a                                         ; $48ca: $97
    adc h                                         ; $48cb: $8c
    call $a9ca                                    ; $48cc: $cd $ca $a9
    ld h, [hl]                                    ; $48cf: $66
    sub d                                         ; $48d0: $92
    scf                                           ; $48d1: $37
    inc sp                                        ; $48d2: $33
    ld d, [hl]                                    ; $48d3: $56
    cp d                                          ; $48d4: $ba
    cp h                                          ; $48d5: $bc
    sub a                                         ; $48d6: $97
    xor [hl]                                      ; $48d7: $ae
    adc b                                         ; $48d8: $88
    ld e, b                                       ; $48d9: $58
    and [hl]                                      ; $48da: $a6
    adc b                                         ; $48db: $88
    ld l, e                                       ; $48dc: $6b
    sbc c                                         ; $48dd: $99
    ld [hl], a                                    ; $48de: $77
    ld d, a                                       ; $48df: $57
    ld l, b                                       ; $48e0: $68
    ld b, e                                       ; $48e1: $43
    ld [hl], l                                    ; $48e2: $75
    xor h                                         ; $48e3: $ac
    sbc c                                         ; $48e4: $99
    db $fc                                        ; $48e5: $fc
    jp z, $7997                                   ; $48e6: $ca $97 $79

    ld d, l                                       ; $48e9: $55
    inc h                                         ; $48ea: $24
    ld d, a                                       ; $48eb: $57
    ld d, [hl]                                    ; $48ec: $56
    adc h                                         ; $48ed: $8c
    cp c                                          ; $48ee: $b9
    res 3, d                                      ; $48ef: $cb $9a
    cp b                                          ; $48f1: $b8
    ld d, l                                       ; $48f2: $55
    add [hl]                                      ; $48f3: $86
    ld e, c                                       ; $48f4: $59
    ld e, b                                       ; $48f5: $58
    add l                                         ; $48f6: $85
    xor e                                         ; $48f7: $ab

jr_017_48f8:
    halt                                          ; $48f8: $76
    sbc b                                         ; $48f9: $98
    add e                                         ; $48fa: $83
    ld a, d                                       ; $48fb: $7a
    xor b                                         ; $48fc: $a8
    sbc d                                         ; $48fd: $9a
    cp e                                          ; $48fe: $bb
    xor e                                         ; $48ff: $ab
    xor b                                         ; $4900: $a8
    ld [hl], l                                    ; $4901: $75
    inc h                                         ; $4902: $24
    ld d, $71                                     ; $4903: $16 $71
    ld e, d                                       ; $4905: $5a
    ld a, d                                       ; $4906: $7a
    rst $28                                       ; $4907: $ef
    res 7, e                                      ; $4908: $cb $bb
    ld e, b                                       ; $490a: $58
    ld [hl], d                                    ; $490b: $72
    ld c, c                                       ; $490c: $49
    ld h, d                                       ; $490d: $62
    ld h, $a8                                     ; $490e: $26 $a8
    or a                                          ; $4910: $b7
    jp z, $c968                                   ; $4911: $ca $68 $c9

    ld d, a                                       ; $4914: $57
    sub a                                         ; $4915: $97
    ld e, b                                       ; $4916: $58
    ld e, d                                       ; $4917: $5a
    cp c                                          ; $4918: $b9
    ld a, d                                       ; $4919: $7a
    ld b, l                                       ; $491a: $45
    ld e, b                                       ; $491b: $58
    ld [hl], c                                    ; $491c: $71
    ld c, c                                       ; $491d: $49
    ld b, [hl]                                    ; $491e: $46
    xor e                                         ; $491f: $ab
    set 1, d                                      ; $4920: $cb $ca
    sbc b                                         ; $4922: $98
    ld h, [hl]                                    ; $4923: $66
    add l                                         ; $4924: $85
    inc d                                         ; $4925: $14
    ld b, e                                       ; $4926: $43
    ld a, b                                       ; $4927: $78
    ld c, d                                       ; $4928: $4a
    sbc d                                         ; $4929: $9a
    adc d                                         ; $492a: $8a
    reti                                          ; $492b: $d9


    sbc h                                         ; $492c: $9c
    ld [hl], e                                    ; $492d: $73
    ld [hl], l                                    ; $492e: $75
    ld d, l                                       ; $492f: $55
    ld l, b                                       ; $4930: $68
    and a                                         ; $4931: $a7
    ld l, b                                       ; $4932: $68
    and [hl]                                      ; $4933: $a6
    ld e, b                                       ; $4934: $58
    ld a, b                                       ; $4935: $78
    inc h                                         ; $4936: $24
    xor c                                         ; $4937: $a9
    adc c                                         ; $4938: $89
    adc h                                         ; $4939: $8c
    sbc d                                         ; $493a: $9a
    sub a                                         ; $493b: $97
    or a                                          ; $493c: $b7
    ld [hl], l                                    ; $493d: $75
    inc hl                                        ; $493e: $23
    ld d, l                                       ; $493f: $55
    ld [hl], $99                                  ; $4940: $36 $99
    ld a, c                                       ; $4942: $79
    db $fc                                        ; $4943: $fc
    call c, Call_017_659a                         ; $4944: $dc $9a $65
    dec [hl]                                      ; $4947: $35
    add h                                         ; $4948: $84
    ld [hl], a                                    ; $4949: $77
    ld h, $ba                                     ; $494a: $26 $ba
    ld a, b                                       ; $494c: $78
    sbc b                                         ; $494d: $98
    halt                                          ; $494e: $76
    or l                                          ; $494f: $b5

jr_017_4950:
    sbc e                                         ; $4950: $9b
    ld l, c                                       ; $4951: $69
    halt                                          ; $4952: $76
    xor d                                         ; $4953: $aa
    ret z                                         ; $4954: $c8

    and [hl]                                      ; $4955: $a6
    inc de                                        ; $4956: $13
    add l                                         ; $4957: $85
    dec h                                         ; $4958: $25
    ld h, a                                       ; $4959: $67
    ld l, b                                       ; $495a: $68
    xor [hl]                                      ; $495b: $ae
    db $dd                                        ; $495c: $dd
    res 6, a                                      ; $495d: $cb $b7
    ld [hl], a                                    ; $495f: $77
    add d                                         ; $4960: $82
    ld h, l                                       ; $4961: $65
    inc hl                                        ; $4962: $23
    ld d, a                                       ; $4963: $57
    adc b                                         ; $4964: $88
    sbc d                                         ; $4965: $9a
    sbc d                                         ; $4966: $9a
    xor h                                         ; $4967: $ac
    cp e                                          ; $4968: $bb
    ld d, a                                       ; $4969: $57
    ld [hl], a                                    ; $496a: $77
    ld h, a                                       ; $496b: $67
    add a                                         ; $496c: $87
    cp d                                          ; $496d: $ba
    ld h, $95                                     ; $496e: $26 $95
    ld h, [hl]                                    ; $4970: $66
    ld b, e                                       ; $4971: $43
    ld h, [hl]                                    ; $4972: $66
    sbc e                                         ; $4973: $9b
    call z, $bcdc                                 ; $4974: $cc $dc $bc
    sbc b                                         ; $4977: $98
    sub a                                         ; $4978: $97
    add h                                         ; $4979: $84
    inc h                                         ; $497a: $24
    ld [hl], a                                    ; $497b: $77
    ld d, [hl]                                    ; $497c: $56
    sbc d                                         ; $497d: $9a
    sbc d                                         ; $497e: $9a
    call z, $ccca                                 ; $497f: $cc $ca $cc

Jump_017_4982:
    ld d, l                                       ; $4982: $55
    ld h, a                                       ; $4983: $67
    ld h, [hl]                                    ; $4984: $66
    ld [hl], a                                    ; $4985: $77
    ld b, a                                       ; $4986: $47
    jp z, $8b78                                   ; $4987: $ca $78 $8b

    ld [hl], h                                    ; $498a: $74
    ld a, e                                       ; $498b: $7b
    sbc e                                         ; $498c: $9b
    xor c                                         ; $498d: $a9
    jp z, $a7ab                                   ; $498e: $ca $ab $a7

    and h                                         ; $4991: $a4
    dec [hl]                                      ; $4992: $35
    ld b, h                                       ; $4993: $44
    ld b, h                                       ; $4994: $44
    ld a, b                                       ; $4995: $78
    ld c, l                                       ; $4996: $4d
    adc $fd                                       ; $4997: $ce $fd
    cp d                                          ; $4999: $ba
    ld a, d                                       ; $499a: $7a
    ld h, h                                       ; $499b: $64
    ld [hl], a                                    ; $499c: $77
    ld [hl-], a                                   ; $499d: $32
    ld d, e                                       ; $499e: $53
    sbc b                                         ; $499f: $98
    sbc c                                         ; $49a0: $99
    cp c                                          ; $49a1: $b9
    ld l, e                                       ; $49a2: $6b
    jp z, $a899                                   ; $49a3: $ca $99 $a8

    ld l, c                                       ; $49a6: $69
    ld c, c                                       ; $49a7: $49
    xor e                                         ; $49a8: $ab
    add [hl]                                      ; $49a9: $86
    ld d, h                                       ; $49aa: $54
    sub [hl]                                      ; $49ab: $96
    ld d, d                                       ; $49ac: $52
    ld h, [hl]                                    ; $49ad: $66
    ld l, c                                       ; $49ae: $69
    cp c                                          ; $49af: $b9
    db $dd                                        ; $49b0: $dd
    db $ec                                        ; $49b1: $ec
    xor c                                         ; $49b2: $a9
    ld a, b                                       ; $49b3: $78
    add [hl]                                      ; $49b4: $86
    ld b, e                                       ; $49b5: $43
    ld b, h                                       ; $49b6: $44
    halt                                          ; $49b7: $76
    ld e, b                                       ; $49b8: $58
    sbc d                                         ; $49b9: $9a
    sbc h                                         ; $49ba: $9c
    xor d                                         ; $49bb: $aa
    jp z, Jump_017_6bb2                           ; $49bc: $ca $b2 $6b

    ld b, h                                       ; $49bf: $44
    and h                                         ; $49c0: $a4
    ld [hl], h                                    ; $49c1: $74
    sub a                                         ; $49c2: $97
    adc b                                         ; $49c3: $88
    ld d, a                                       ; $49c4: $57
    ld a, c                                       ; $49c5: $79
    jr jr_017_4950                                ; $49c6: $18 $88

    res 1, h                                      ; $49c8: $cb $8c
    cp l                                          ; $49ca: $bd
    ld a, c                                       ; $49cb: $79
    and h                                         ; $49cc: $a4
    ld [hl], e                                    ; $49cd: $73
    ld d, b                                       ; $49ce: $50
    ld h, a                                       ; $49cf: $67
    ld h, h                                       ; $49d0: $64
    sub [hl]                                      ; $49d1: $96
    adc d                                         ; $49d2: $8a
    db $ec                                        ; $49d3: $ec
    cp d                                          ; $49d4: $ba
    xor l                                         ; $49d5: $ad
    adc b                                         ; $49d6: $88
    dec h                                         ; $49d7: $25
    halt                                          ; $49d8: $76
    ld b, b                                       ; $49d9: $40
    daa                                           ; $49da: $27
    sub [hl]                                      ; $49db: $96
    adc c                                         ; $49dc: $89
    sub a                                         ; $49dd: $97
    sbc c                                         ; $49de: $99
    and l                                         ; $49df: $a5
    adc c                                         ; $49e0: $89
    sbc d                                         ; $49e1: $9a
    add a                                         ; $49e2: $87
    add a                                         ; $49e3: $87
    cp b                                          ; $49e4: $b8
    ld h, d                                       ; $49e5: $62
    ld c, b                                       ; $49e6: $48
    add l                                         ; $49e7: $85
    dec b                                         ; $49e8: $05
    add [hl]                                      ; $49e9: $86
    ld a, d                                       ; $49ea: $7a
    adc e                                         ; $49eb: $8b
    cp l                                          ; $49ec: $bd
    cp e                                          ; $49ed: $bb
    adc b                                         ; $49ee: $88
    adc b                                         ; $49ef: $88
    add e                                         ; $49f0: $83
    ld sp, $6237                                  ; $49f1: $31 $37 $62
    add a                                         ; $49f4: $87
    xor c                                         ; $49f5: $a9
    sbc c                                         ; $49f6: $99
    xor h                                         ; $49f7: $ac
    jp z, $a777                                   ; $49f8: $ca $77 $a7

    ld c, c                                       ; $49fb: $49
    ld [hl], a                                    ; $49fc: $77
    ld [hl], e                                    ; $49fd: $73
    ld h, [hl]                                    ; $49fe: $66
    add a                                         ; $49ff: $87
    ld h, [hl]                                    ; $4a00: $66
    ld [hl], h                                    ; $4a01: $74
    ld l, c                                       ; $4a02: $69
    adc e                                         ; $4a03: $8b
    xor c                                         ; $4a04: $a9
    cp e                                          ; $4a05: $bb
    reti                                          ; $4a06: $d9


    adc b                                         ; $4a07: $88
    ld a, c                                       ; $4a08: $79
    ld [hl], b                                    ; $4a09: $70
    dec b                                         ; $4a0a: $05
    ld [hl], c                                    ; $4a0b: $71
    ld l, c                                       ; $4a0c: $69
    ld [hl], a                                    ; $4a0d: $77
    sbc l                                         ; $4a0e: $9d
    cp e                                          ; $4a0f: $bb
    jp hl                                         ; $4a10: $e9


    cp d                                          ; $4a11: $ba
    sub [hl]                                      ; $4a12: $96
    ld d, a                                       ; $4a13: $57
    ld e, b                                       ; $4a14: $58
    ld h, c                                       ; $4a15: $61
    ld d, [hl]                                    ; $4a16: $56
    or [hl]                                       ; $4a17: $b6
    ld c, b                                       ; $4a18: $48
    sub a                                         ; $4a19: $97
    ld a, d                                       ; $4a1a: $7a
    ld e, d                                       ; $4a1b: $5a
    sbc c                                         ; $4a1c: $99
    jp z, $9a99                                   ; $4a1d: $ca $99 $9a

    xor d                                         ; $4a20: $aa
    ld h, b                                       ; $4a21: $60
    ld h, [hl]                                    ; $4a22: $66
    ld h, c                                       ; $4a23: $61
    dec d                                         ; $4a24: $15
    add a                                         ; $4a25: $87
    adc d                                         ; $4a26: $8a
    xor h                                         ; $4a27: $ac
    db $db                                        ; $4a28: $db
    cp d                                          ; $4a29: $ba
    sbc b                                         ; $4a2a: $98
    halt                                          ; $4a2b: $76
    ld b, [hl]                                    ; $4a2c: $46
    ld h, c                                       ; $4a2d: $61
    ld d, a                                       ; $4a2e: $57
    ld h, l                                       ; $4a2f: $65
    adc d                                         ; $4a30: $8a
    sub a                                         ; $4a31: $97
    adc c                                         ; $4a32: $89
    sbc e                                         ; $4a33: $9b
    and h                                         ; $4a34: $a4
    xor b                                         ; $4a35: $a8
    sbc c                                         ; $4a36: $99
    ld a, b                                       ; $4a37: $78
    sbc c                                         ; $4a38: $99
    sub e                                         ; $4a39: $93
    jr c, @-$7c                                   ; $4a3a: $38 $82

    ld l, b                                       ; $4a3c: $68
    ld d, l                                       ; $4a3d: $55
    ld e, d                                       ; $4a3e: $5a
    xor d                                         ; $4a3f: $aa
    xor h                                         ; $4a40: $ac
    call z, $88b7                                 ; $4a41: $cc $b7 $88
    ld a, b                                       ; $4a44: $78
    add c                                         ; $4a45: $81
    ld d, [hl]                                    ; $4a46: $56
    ld [hl], l                                    ; $4a47: $75
    halt                                          ; $4a48: $76
    sub a                                         ; $4a49: $97
    xor e                                         ; $4a4a: $ab
    sbc e                                         ; $4a4b: $9b
    sbc d                                         ; $4a4c: $9a
    xor c                                         ; $4a4d: $a9
    ld d, [hl]                                    ; $4a4e: $56
    ld a, b                                       ; $4a4f: $78
    ld l, d                                       ; $4a50: $6a
    ld d, e                                       ; $4a51: $53
    ld c, d                                       ; $4a52: $4a
    sbc b                                         ; $4a53: $98
    ld [hl], l                                    ; $4a54: $75
    and l                                         ; $4a55: $a5
    sub [hl]                                      ; $4a56: $96
    ld l, e                                       ; $4a57: $6b
    jp z, $f8a9                                   ; $4a58: $ca $a9 $f8

    jp c, Jump_017_5289                           ; $4a5b: $da $89 $52

    ld c, b                                       ; $4a5e: $48
    ld b, h                                       ; $4a5f: $44
    add [hl]                                      ; $4a60: $86
    ld [hl], a                                    ; $4a61: $77
    adc h                                         ; $4a62: $8c
    sbc a                                         ; $4a63: $9f
    res 5, d                                      ; $4a64: $cb $aa
    or [hl]                                       ; $4a66: $b6
    add l                                         ; $4a67: $85
    ld e, d                                       ; $4a68: $5a
    ld b, d                                       ; $4a69: $42
    ld d, a                                       ; $4a6a: $57
    sub l                                         ; $4a6b: $95
    xor c                                         ; $4a6c: $a9
    sub a                                         ; $4a6d: $97
    sbc l                                         ; $4a6e: $9d
    xor h                                         ; $4a6f: $ac
    adc d                                         ; $4a70: $8a
    xor c                                         ; $4a71: $a9
    and h                                         ; $4a72: $a4
    adc l                                         ; $4a73: $8d
    sbc h                                         ; $4a74: $9c
    ld [hl], d                                    ; $4a75: $72
    ld d, a                                       ; $4a76: $57
    add l                                         ; $4a77: $85
    ld h, d                                       ; $4a78: $62
    ld [hl], l                                    ; $4a79: $75
    sbc e                                         ; $4a7a: $9b
    adc h                                         ; $4a7b: $8c
    db $ed                                        ; $4a7c: $ed
    call c, Call_017_7ab8                         ; $4a7d: $dc $b8 $7a
    and a                                         ; $4a80: $a7
    ld b, c                                       ; $4a81: $41
    ld h, a                                       ; $4a82: $67

Call_017_4a83:
    ld [hl], h                                    ; $4a83: $74
    adc c                                         ; $4a84: $89
    or [hl]                                       ; $4a85: $b6
    db $db                                        ; $4a86: $db
    sbc h                                         ; $4a87: $9c
    cp h                                          ; $4a88: $bc
    add [hl]                                      ; $4a89: $86
    and l                                         ; $4a8a: $a5
    ld a, e                                       ; $4a8b: $7b
    ld l, d                                       ; $4a8c: $6a
    ld [hl], h                                    ; $4a8d: $74
    sbc d                                         ; $4a8e: $9a
    ld [hl], l                                    ; $4a8f: $75
    sbc c                                         ; $4a90: $99
    and e                                         ; $4a91: $a3
    ld d, a                                       ; $4a92: $57
    adc e                                         ; $4a93: $8b
    ret c                                         ; $4a94: $d8

    call z, $aaaa                                 ; $4a95: $cc $aa $aa
    adc c                                         ; $4a98: $89
    add e                                         ; $4a99: $83
    inc sp                                        ; $4a9a: $33
    ld d, l                                       ; $4a9b: $55
    ld l, b                                       ; $4a9c: $68
    sub h                                         ; $4a9d: $94
    xor l                                         ; $4a9e: $ad
    cp [hl]                                       ; $4a9f: $be
    ret                                           ; $4aa0: $c9


    ret                                           ; $4aa1: $c9


    or d                                          ; $4aa2: $b2
    ld l, c                                       ; $4aa3: $69
    ld d, a                                       ; $4aa4: $57
    ld [hl], e                                    ; $4aa5: $73
    ld h, [hl]                                    ; $4aa6: $66
    sbc c                                         ; $4aa7: $99
    sbc b                                         ; $4aa8: $98
    ld [hl], h                                    ; $4aa9: $74
    xor d                                         ; $4aaa: $aa
    ld a, [hl-]                                   ; $4aab: $3a
    or h                                          ; $4aac: $b4
    xor e                                         ; $4aad: $ab
    ld a, b                                       ; $4aae: $78
    cp e                                          ; $4aaf: $bb
    xor h                                         ; $4ab0: $ac
    add c                                         ; $4ab1: $81
    halt                                          ; $4ab2: $76
    ld [hl], c                                    ; $4ab3: $71
    ld d, [hl]                                    ; $4ab4: $56
    ld h, d                                       ; $4ab5: $62
    adc e                                         ; $4ab6: $8b
    sbc h                                         ; $4ab7: $9c
    jp c, $86cb                                   ; $4ab8: $da $cb $86

    sbc e                                         ; $4abb: $9b
    jr z, jr_017_4af0                             ; $4abc: $28 $32

    ld d, [hl]                                    ; $4abe: $56
    ld d, l                                       ; $4abf: $55
    adc d                                         ; $4ac0: $8a
    and a                                         ; $4ac1: $a7
    adc d                                         ; $4ac2: $8a
    ld a, h                                       ; $4ac3: $7c
    or h                                          ; $4ac4: $b4
    adc b                                         ; $4ac5: $88

Call_017_4ac6:
    sub [hl]                                      ; $4ac6: $96
    xor c                                         ; $4ac7: $a9
    ld a, c                                       ; $4ac8: $79
    ld [hl], l                                    ; $4ac9: $75
    adc b                                         ; $4aca: $88
    ld d, a                                       ; $4acb: $57
    ld l, c                                       ; $4acc: $69
    ld [hl-], a                                   ; $4acd: $32
    ld a, d                                       ; $4ace: $7a
    ld a, h                                       ; $4acf: $7c
    cp c                                          ; $4ad0: $b9
    xor c                                         ; $4ad1: $a9
    sbc c                                         ; $4ad2: $99
    xor b                                         ; $4ad3: $a8
    ld d, a                                       ; $4ad4: $57
    ld d, b                                       ; $4ad5: $50
    inc [hl]                                      ; $4ad6: $34
    ld h, [hl]                                    ; $4ad7: $66
    ld d, [hl]                                    ; $4ad8: $56
    and a                                         ; $4ad9: $a7
    xor l                                         ; $4ada: $ad
    xor l                                         ; $4adb: $ad
    adc d                                         ; $4adc: $8a
    adc d                                         ; $4add: $8a
    ld b, l                                       ; $4ade: $45
    adc b                                         ; $4adf: $88
    ld l, b                                       ; $4ae0: $68
    daa                                           ; $4ae1: $27
    ld h, a                                       ; $4ae2: $67
    cp b                                          ; $4ae3: $b8
    add a                                         ; $4ae4: $87
    ld h, [hl]                                    ; $4ae5: $66
    sub [hl]                                      ; $4ae6: $96
    ld a, e                                       ; $4ae7: $7b
    ld l, d                                       ; $4ae8: $6a
    cp b                                          ; $4ae9: $b8
    adc c                                         ; $4aea: $89
    sbc d                                         ; $4aeb: $9a
    xor b                                         ; $4aec: $a8
    ld d, l                                       ; $4aed: $55
    ld c, c                                       ; $4aee: $49
    ld b, h                                       ; $4aef: $44

jr_017_4af0:
    add a                                         ; $4af0: $87
    ld l, b                                       ; $4af1: $68
    adc c                                         ; $4af2: $89
    sbc h                                         ; $4af3: $9c
    db $db                                        ; $4af4: $db
    sbc c                                         ; $4af5: $99
    ld [hl], a                                    ; $4af6: $77
    and [hl]                                      ; $4af7: $a6
    add hl, sp                                    ; $4af8: $39
    ld b, e                                       ; $4af9: $43
    ld b, [hl]                                    ; $4afa: $46
    add a                                         ; $4afb: $87
    sbc h                                         ; $4afc: $9c
    sub l                                         ; $4afd: $95
    and a                                         ; $4afe: $a7
    xor e                                         ; $4aff: $ab
    add l                                         ; $4b00: $85
    adc b                                         ; $4b01: $88
    ld l, b                                       ; $4b02: $68
    ld a, e                                       ; $4b03: $7b
    sbc d                                         ; $4b04: $9a
    ld h, h                                       ; $4b05: $64
    ld d, [hl]                                    ; $4b06: $56
    ld h, h                                       ; $4b07: $64
    and [hl]                                      ; $4b08: $a6
    ld b, e                                       ; $4b09: $43
    sbc b                                         ; $4b0a: $98
    sbc l                                         ; $4b0b: $9d
    cp e                                          ; $4b0c: $bb
    xor h                                         ; $4b0d: $ac
    adc c                                         ; $4b0e: $89
    adc b                                         ; $4b0f: $88
    adc c                                         ; $4b10: $89
    inc h                                         ; $4b11: $24
    ld d, a                                       ; $4b12: $57
    ld h, a                                       ; $4b13: $67
    ld a, c                                       ; $4b14: $79
    sbc b                                         ; $4b15: $98
    xor c                                         ; $4b16: $a9
    xor h                                         ; $4b17: $ac
    sbc e                                         ; $4b18: $9b
    or h                                          ; $4b19: $b4
    ld d, [hl]                                    ; $4b1a: $56
    ld l, b                                       ; $4b1b: $68
    sub l                                         ; $4b1c: $95
    scf                                           ; $4b1d: $37
    or a                                          ; $4b1e: $b7
    add a                                         ; $4b1f: $87
    adc b                                         ; $4b20: $88
    ld d, [hl]                                    ; $4b21: $56
    dec [hl]                                      ; $4b22: $35
    adc d                                         ; $4b23: $8a
    cp e                                          ; $4b24: $bb
    xor e                                         ; $4b25: $ab
    adc d                                         ; $4b26: $8a
    sbc e                                         ; $4b27: $9b
    and a                                         ; $4b28: $a7
    dec d                                         ; $4b29: $15
    ld h, d                                       ; $4b2a: $62
    dec h                                         ; $4b2b: $25
    ld h, [hl]                                    ; $4b2c: $66
    add [hl]                                      ; $4b2d: $86
    sbc h                                         ; $4b2e: $9c
    call z, $88dc                                 ; $4b2f: $cc $dc $88
    sub a                                         ; $4b32: $97
    inc d                                         ; $4b33: $14
    ld d, [hl]                                    ; $4b34: $56
    dec d                                         ; $4b35: $15
    ld c, b                                       ; $4b36: $48
    adc b                                         ; $4b37: $88
    sbc c                                         ; $4b38: $99
    sub [hl]                                      ; $4b39: $96
    ld e, c                                       ; $4b3a: $59
    ld [hl], h                                    ; $4b3b: $74
    sbc d                                         ; $4b3c: $9a
    ld a, c                                       ; $4b3d: $79
    ld [hl], h                                    ; $4b3e: $74
    sbc d                                         ; $4b3f: $9a
    xor d                                         ; $4b40: $aa
    ld d, h                                       ; $4b41: $54
    ld d, l                                       ; $4b42: $55
    add l                                         ; $4b43: $85
    rla                                           ; $4b44: $17
    ld h, h                                       ; $4b45: $64
    xor b                                         ; $4b46: $a8
    ld a, h                                       ; $4b47: $7c
    call z, Call_017_76aa                         ; $4b48: $cc $aa $76
    add a                                         ; $4b4b: $87
    ld [hl], l                                    ; $4b4c: $75
    inc d                                         ; $4b4d: $14
    ld h, [hl]                                    ; $4b4e: $66
    halt                                          ; $4b4f: $76
    adc d                                         ; $4b50: $8a
    and a                                         ; $4b51: $a7
    xor e                                         ; $4b52: $ab
    adc d                                         ; $4b53: $8a
    sbc e                                         ; $4b54: $9b
    ld d, h                                       ; $4b55: $54
    ld h, h                                       ; $4b56: $64
    ld [hl], a                                    ; $4b57: $77
    adc h                                         ; $4b58: $8c
    ld b, [hl]                                    ; $4b59: $46
    ld b, [hl]                                    ; $4b5a: $46
    sub l                                         ; $4b5b: $95
    ld h, a                                       ; $4b5c: $67
    and c                                         ; $4b5d: $a1
    ld a, b                                       ; $4b5e: $78
    ld a, d                                       ; $4b5f: $7a
    xor e                                         ; $4b60: $ab
    xor e                                         ; $4b61: $ab
    cp b                                          ; $4b62: $b8
    adc d                                         ; $4b63: $8a
    ld l, c                                       ; $4b64: $69
    ld d, h                                       ; $4b65: $54
    inc d                                         ; $4b66: $14
    ld d, l                                       ; $4b67: $55
    ld a, b                                       ; $4b68: $78
    ld [hl], a                                    ; $4b69: $77
    cp l                                          ; $4b6a: $bd
    xor d                                         ; $4b6b: $aa
    reti                                          ; $4b6c: $d9


    sbc c                                         ; $4b6d: $99
    sub d                                         ; $4b6e: $92
    ld d, l                                       ; $4b6f: $55
    ld l, d                                       ; $4b70: $6a
    ld h, h                                       ; $4b71: $64
    ld e, d                                       ; $4b72: $5a
    sbc c                                         ; $4b73: $99
    sbc c                                         ; $4b74: $99
    add l                                         ; $4b75: $85
    sbc e                                         ; $4b76: $9b
    ld h, $aa                                     ; $4b77: $26 $aa
    rst $00                                       ; $4b79: $c7
    adc b                                         ; $4b7a: $88
    call z, $828c                                 ; $4b7b: $cc $8c $82
    ld h, a                                       ; $4b7e: $67
    ld h, b                                       ; $4b7f: $60
    ld h, a                                       ; $4b80: $67
    halt                                          ; $4b81: $76
    adc b                                         ; $4b82: $88
    xor e                                         ; $4b83: $ab
    ei                                            ; $4b84: $fb
    cp c                                          ; $4b85: $b9
    and a                                         ; $4b86: $a7
    ld a, d                                       ; $4b87: $7a
    daa                                           ; $4b88: $27
    ld h, b                                       ; $4b89: $60
    ld l, b                                       ; $4b8a: $68
    ld [hl], a                                    ; $4b8b: $77
    sbc e                                         ; $4b8c: $9b
    cp c                                          ; $4b8d: $b9
    sbc d                                         ; $4b8e: $9a
    ld a, e                                       ; $4b8f: $7b
    pop hl                                        ; $4b90: $e1
    sub a                                         ; $4b91: $97
    sbc c                                         ; $4b92: $99
    ld e, e                                       ; $4b93: $5b
    sbc l                                         ; $4b94: $9d
    pop de                                        ; $4b95: $d1
    add l                                         ; $4b96: $85
    adc b                                         ; $4b97: $88
    ld a, c                                       ; $4b98: $79
    inc h                                         ; $4b99: $24
    adc e                                         ; $4b9a: $8b
    sbc d                                         ; $4b9b: $9a
    db $eb                                        ; $4b9c: $eb
    sbc $99                                       ; $4b9d: $de $99
    adc c                                         ; $4b9f: $89
    adc d                                         ; $4ba0: $8a
    add c                                         ; $4ba1: $81
    ld d, [hl]                                    ; $4ba2: $56
    add a                                         ; $4ba3: $87
    ld [hl], a                                    ; $4ba4: $77
    sbc c                                         ; $4ba5: $99
    cp d                                          ; $4ba6: $ba
    sbc c                                         ; $4ba7: $99
    cp c                                          ; $4ba8: $b9
    xor d                                         ; $4ba9: $aa
    daa                                           ; $4baa: $27
    ld l, b                                       ; $4bab: $68
    adc c                                         ; $4bac: $89
    ld h, e                                       ; $4bad: $63
    adc e                                         ; $4bae: $8b
    ret                                           ; $4baf: $c9


    add a                                         ; $4bb0: $87
    sub a                                         ; $4bb1: $97
    or d                                          ; $4bb2: $b2
    adc c                                         ; $4bb3: $89
    xor c                                         ; $4bb4: $a9
    and a                                         ; $4bb5: $a7
    call $abab                                    ; $4bb6: $cd $ab $ab
    ld [hl], d                                    ; $4bb9: $72
    ld e, b                                       ; $4bba: $58
    dec d                                         ; $4bbb: $15
    ld [hl], a                                    ; $4bbc: $77
    ld h, [hl]                                    ; $4bbd: $66
    adc e                                         ; $4bbe: $8b
    cp [hl]                                       ; $4bbf: $be
    reti                                          ; $4bc0: $d9


    ret                                           ; $4bc1: $c9


    sub a                                         ; $4bc2: $97
    add d                                         ; $4bc3: $82
    ld e, b                                       ; $4bc4: $58
    ld h, b                                       ; $4bc5: $60
    ld d, a                                       ; $4bc6: $57
    sbc b                                         ; $4bc7: $98
    call z, $89a9                                 ; $4bc8: $cc $a9 $89
    adc h                                         ; $4bcb: $8c
    ld d, l                                       ; $4bcc: $55
    sbc c                                         ; $4bcd: $99
    add a                                         ; $4bce: $87
    ld l, d                                       ; $4bcf: $6a
    xor e                                         ; $4bd0: $ab
    and c                                         ; $4bd1: $a1
    ld d, [hl]                                    ; $4bd2: $56
    sub l                                         ; $4bd3: $95
    ld h, c                                       ; $4bd4: $61
    ld b, l                                       ; $4bd5: $45

jr_017_4bd6:
    ld l, e                                       ; $4bd6: $6b
    xor d                                         ; $4bd7: $aa
    jp z, $c8ea                                   ; $4bd8: $ca $ea $c8

    ld [hl], a                                    ; $4bdb: $77
    ld a, c                                       ; $4bdc: $79
    ld hl, $7746                                  ; $4bdd: $21 $46 $77
    ld l, b                                       ; $4be0: $68
    adc b                                         ; $4be1: $88
    cp d                                          ; $4be2: $ba
    xor d                                         ; $4be3: $aa
    xor b                                         ; $4be4: $a8
    and d                                         ; $4be5: $a2
    ld d, l                                       ; $4be6: $55
    ld [hl], a                                    ; $4be7: $77
    ld e, c                                       ; $4be8: $59
    ld d, h                                       ; $4be9: $54
    adc h                                         ; $4bea: $8c
    sub [hl]                                      ; $4beb: $96
    ld h, [hl]                                    ; $4bec: $66
    ld h, l                                       ; $4bed: $65
    jr c, @+$7b                                   ; $4bee: $38 $79

    cp b                                          ; $4bf0: $b8
    db $db                                        ; $4bf1: $db
    cp h                                          ; $4bf2: $bc
    adc c                                         ; $4bf3: $89
    sbc b                                         ; $4bf4: $98
    ld b, d                                       ; $4bf5: $42
    ld h, c                                       ; $4bf6: $61
    ld b, l                                       ; $4bf7: $45
    ld [hl], l                                    ; $4bf8: $75
    halt                                          ; $4bf9: $76
    cp d                                          ; $4bfa: $ba
    call z, $a8b9                                 ; $4bfb: $cc $b9 $a8
    ld h, a                                       ; $4bfe: $67
    dec d                                         ; $4bff: $15
    ld h, a                                       ; $4c00: $67
    ld b, h                                       ; $4c01: $44
    ld d, h                                       ; $4c02: $54
    xor e                                         ; $4c03: $ab
    sbc e                                         ; $4c04: $9b
    ld d, [hl]                                    ; $4c05: $56
    adc c                                         ; $4c06: $89
    or d                                          ; $4c07: $b2
    ld [hl], l                                    ; $4c08: $75
    adc c                                         ; $4c09: $89
    ld a, b                                       ; $4c0a: $78
    sbc h                                         ; $4c0b: $9c
    cp d                                          ; $4c0c: $ba
    ld [hl], e                                    ; $4c0d: $73
    ld hl, $1375                                  ; $4c0e: $21 $75 $13
    ld e, b                                       ; $4c11: $58
    sbc c                                         ; $4c12: $99
    cp h                                          ; $4c13: $bc
    sbc $cc                                       ; $4c14: $de $cc
    sub l                                         ; $4c16: $95
    ld l, c                                       ; $4c17: $69
    ld h, c                                       ; $4c18: $61
    db $10                                        ; $4c19: $10
    dec h                                         ; $4c1a: $25
    ld d, a                                       ; $4c1b: $57
    xor e                                         ; $4c1c: $ab
    xor e                                         ; $4c1d: $ab
    sbc e                                         ; $4c1e: $9b
    cp c                                          ; $4c1f: $b9
    xor d                                         ; $4c20: $aa
    ld h, $96                                     ; $4c21: $26 $96
    add a                                         ; $4c23: $87
    adc h                                         ; $4c24: $8c
    ld [hl], l                                    ; $4c25: $75
    ld c, b                                       ; $4c26: $48
    add l                                         ; $4c27: $85
    ld l, b                                       ; $4c28: $68
    ld b, c                                       ; $4c29: $41
    jr c, jr_017_4bd6                             ; $4c2a: $38 $aa

    jp z, $e9ca                                   ; $4c2c: $ca $ca $e9

    adc c                                         ; $4c2f: $89
    adc c                                         ; $4c30: $89
    ld h, h                                       ; $4c31: $64
    inc d                                         ; $4c32: $14
    ld h, l                                       ; $4c33: $65
    ld l, c                                       ; $4c34: $69
    ld a, d                                       ; $4c35: $7a
    xor l                                         ; $4c36: $ad
    cp h                                          ; $4c37: $bc
    cp c                                          ; $4c38: $b9
    sbc c                                         ; $4c39: $99
    and e                                         ; $4c3a: $a3
    ld d, [hl]                                    ; $4c3b: $56
    ld l, d                                       ; $4c3c: $6a
    ld b, d                                       ; $4c3d: $42
    ld h, a                                       ; $4c3e: $67
    cp c                                          ; $4c3f: $b9
    sbc c                                         ; $4c40: $99
    ld [hl], a                                    ; $4c41: $77
    xor b                                         ; $4c42: $a8
    ld e, c                                       ; $4c43: $59
    sub a                                         ; $4c44: $97
    xor b                                         ; $4c45: $a8
    adc e                                         ; $4c46: $8b
    xor h                                         ; $4c47: $ac
    sbc h                                         ; $4c48: $9c
    ld d, b                                       ; $4c49: $50
    ld d, l                                       ; $4c4a: $55
    ld [hl], d                                    ; $4c4b: $72
    ld l, c                                       ; $4c4c: $69
    ld b, a                                       ; $4c4d: $47
    adc d                                         ; $4c4e: $8a
    sbc $fb                                       ; $4c4f: $de $fb
    sbc d                                         ; $4c51: $9a
    adc c                                         ; $4c52: $89
    ld [hl], a                                    ; $4c53: $77
    add hl, hl                                    ; $4c54: $29
    ld d, b                                       ; $4c55: $50
    ld h, h                                       ; $4c56: $64
    adc c                                         ; $4c57: $89
    xor h                                         ; $4c58: $ac
    sub a                                         ; $4c59: $97
    cp c                                          ; $4c5a: $b9
    res 4, e                                      ; $4c5b: $cb $a3
    adc c                                         ; $4c5d: $89
    add a                                         ; $4c5e: $87
    adc b                                         ; $4c5f: $88

jr_017_4c60:
    adc $91                                       ; $4c60: $ce $91
    ld h, [hl]                                    ; $4c62: $66
    ld e, d                                       ; $4c63: $5a
    ld [hl], h                                    ; $4c64: $74
    inc [hl]                                      ; $4c65: $34
    add a                                         ; $4c66: $87
    xor l                                         ; $4c67: $ad
    call z, $99ce                                 ; $4c68: $cc $ce $99
    sub a                                         ; $4c6b: $97
    adc d                                         ; $4c6c: $8a
    ld d, d                                       ; $4c6d: $52
    ld d, [hl]                                    ; $4c6e: $56
    ld [hl], a                                    ; $4c6f: $77
    ld l, c                                       ; $4c70: $69
    sbc c                                         ; $4c71: $99
    cp e                                          ; $4c72: $bb
    jp z, $98ca                                   ; $4c73: $ca $ca $98

    ld h, l                                       ; $4c76: $65
    sub [hl]                                      ; $4c77: $96
    adc d                                         ; $4c78: $8a
    sub d                                         ; $4c79: $92
    sbc e                                         ; $4c7a: $9b
    ld a, d                                       ; $4c7b: $7a
    and a                                         ; $4c7c: $a7
    or a                                          ; $4c7d: $b7
    dec [hl]                                      ; $4c7e: $35
    xor e                                         ; $4c7f: $ab
    add sp, -$45                                  ; $4c80: $e8 $bb
    cp l                                          ; $4c82: $bd
    res 3, e                                      ; $4c83: $cb $9b
    add b                                         ; $4c85: $80
    ld h, d                                       ; $4c86: $62
    inc [hl]                                      ; $4c87: $34
    sbc b                                         ; $4c88: $98
    halt                                          ; $4c89: $76
    xor h                                         ; $4c8a: $ac
    rst $28                                       ; $4c8b: $ef
    db $fc                                        ; $4c8c: $fc
    cp d                                          ; $4c8d: $ba
    sbc c                                         ; $4c8e: $99
    ld d, [hl]                                    ; $4c8f: $56
    adc b                                         ; $4c90: $88
    and c                                         ; $4c91: $a1
    ld h, a                                       ; $4c92: $67
    xor d                                         ; $4c93: $aa
    xor c                                         ; $4c94: $a9
    or [hl]                                       ; $4c95: $b6
    sbc c                                         ; $4c96: $99
    add $7b                                       ; $4c97: $c6 $7b
    sbc d                                         ; $4c99: $9a
    adc b                                         ; $4c9a: $88
    xor c                                         ; $4c9b: $a9
    ret                                           ; $4c9c: $c9


    and h                                         ; $4c9d: $a4
    jr c, jr_017_4d18                             ; $4c9e: $38 $78

    inc h                                         ; $4ca0: $24
    ld h, a                                       ; $4ca1: $67
    ld a, b                                       ; $4ca2: $78
    set 1, a                                      ; $4ca3: $cb $cf
    cp d                                          ; $4ca5: $ba
    or a                                          ; $4ca6: $b7
    add a                                         ; $4ca7: $87
    and c                                         ; $4ca8: $a1
    ld [hl], h                                    ; $4ca9: $74
    scf                                           ; $4caa: $37
    ld [hl], l                                    ; $4cab: $75
    ld a, c                                       ; $4cac: $79
    xor b                                         ; $4cad: $a8
    sbc d                                         ; $4cae: $9a
    adc e                                         ; $4caf: $8b
    xor h                                         ; $4cb0: $ac
    scf                                           ; $4cb1: $37
    ld [hl], a                                    ; $4cb2: $77
    ld [hl], a                                    ; $4cb3: $77
    add a                                         ; $4cb4: $87
    or a                                          ; $4cb5: $b7
    rla                                           ; $4cb6: $17
    add [hl]                                      ; $4cb7: $86
    ld l, b                                       ; $4cb8: $68
    add b                                         ; $4cb9: $80
    ld d, [hl]                                    ; $4cba: $56
    adc e                                         ; $4cbb: $8b
    sbc e                                         ; $4cbc: $9b
    cp d                                          ; $4cbd: $ba
    cp c                                          ; $4cbe: $b9
    adc c                                         ; $4cbf: $89
    add a                                         ; $4cc0: $87
    add [hl]                                      ; $4cc1: $86
    dec h                                         ; $4cc2: $25
    halt                                          ; $4cc3: $76
    ld l, b                                       ; $4cc4: $68
    ld [hl], a                                    ; $4cc5: $77
    adc e                                         ; $4cc6: $8b
    xor d                                         ; $4cc7: $aa
    cp c                                          ; $4cc8: $b9
    xor c                                         ; $4cc9: $a9
    sub d                                         ; $4cca: $92
    ld h, h                                       ; $4ccb: $64
    ld h, a                                       ; $4ccc: $67
    halt                                          ; $4ccd: $76
    add hl, de                                    ; $4cce: $19
    and [hl]                                      ; $4ccf: $a6
    sbc b                                         ; $4cd0: $98
    ld d, a                                       ; $4cd1: $57
    ld a, b                                       ; $4cd2: $78
    jr c, jr_017_4c60                             ; $4cd3: $38 $8b

    sub a                                         ; $4cd5: $97
    sbc d                                         ; $4cd6: $9a
    sbc c                                         ; $4cd7: $99
    and [hl]                                      ; $4cd8: $a6
    sub h                                         ; $4cd9: $94
    ld h, $42                                     ; $4cda: $26 $42
    halt                                          ; $4cdc: $76
    ld d, [hl]                                    ; $4cdd: $56
    ld a, b                                       ; $4cde: $78
    cp h                                          ; $4cdf: $bc
    db $dd                                        ; $4ce0: $dd
    sbc d                                         ; $4ce1: $9a
    adc b                                         ; $4ce2: $88
    ld [hl], d                                    ; $4ce3: $72
    ld d, e                                       ; $4ce4: $53
    halt                                          ; $4ce5: $76
    dec h                                         ; $4ce6: $25
    halt                                          ; $4ce7: $76
    xor c                                         ; $4ce8: $a9
    adc b                                         ; $4ce9: $88
    and a                                         ; $4cea: $a7
    sbc d                                         ; $4ceb: $9a
    ld a, c                                       ; $4cec: $79
    ld [hl], a                                    ; $4ced: $77
    ld e, d                                       ; $4cee: $5a
    ld h, l                                       ; $4cef: $65
    ret                                           ; $4cf0: $c9


    cp b                                          ; $4cf1: $b8
    ld d, $75                                     ; $4cf2: $16 $75
    add e                                         ; $4cf4: $83
    dec [hl]                                      ; $4cf5: $35
    ld h, a                                       ; $4cf6: $67
    sbc d                                         ; $4cf7: $9a
    cp l                                          ; $4cf8: $bd
    res 1, e                                      ; $4cf9: $cb $8b
    add [hl]                                      ; $4cfb: $86
    sub a                                         ; $4cfc: $97
    ld h, e                                       ; $4cfd: $63
    inc b                                         ; $4cfe: $04
    ld l, b                                       ; $4cff: $68
    ld h, a                                       ; $4d00: $67
    sbc d                                         ; $4d01: $9a
    cp b                                          ; $4d02: $b8
    xor d                                         ; $4d03: $aa
    sbc e                                         ; $4d04: $9b
    sub [hl]                                      ; $4d05: $96
    ld c, b                                       ; $4d06: $48
    ld h, e                                       ; $4d07: $63
    and l                                         ; $4d08: $a5
    xor b                                         ; $4d09: $a8
    ld c, c                                       ; $4d0a: $49
    ld h, [hl]                                    ; $4d0b: $66
    halt                                          ; $4d0c: $76
    add [hl]                                      ; $4d0d: $86
    ld d, l                                       ; $4d0e: $55
    adc d                                         ; $4d0f: $8a
    sbc l                                         ; $4d10: $9d
    adc d                                         ; $4d11: $8a
    cp e                                          ; $4d12: $bb
    sub [hl]                                      ; $4d13: $96
    sub a                                         ; $4d14: $97
    ld h, [hl]                                    ; $4d15: $66
    inc sp                                        ; $4d16: $33
    ld b, [hl]                                    ; $4d17: $46

jr_017_4d18:
    ld [hl], a                                    ; $4d18: $77
    add l                                         ; $4d19: $85
    adc d                                         ; $4d1a: $8a
    jp z, $a9db                                   ; $4d1b: $ca $db $a9

    adc b                                         ; $4d1e: $88
    ld [hl-], a                                   ; $4d1f: $32
    add [hl]                                      ; $4d20: $86
    add h                                         ; $4d21: $84
    ld h, $8a                                     ; $4d22: $26 $8a
    adc c                                         ; $4d24: $89
    sub a                                         ; $4d25: $97
    ld a, b                                       ; $4d26: $78
    or h                                          ; $4d27: $b4
    sbc d                                         ; $4d28: $9a
    sbc d                                         ; $4d29: $9a
    ld a, c                                       ; $4d2a: $79
    sbc c                                         ; $4d2b: $99
    jp z, Jump_017_4593                           ; $4d2c: $ca $93 $45

    ld e, b                                       ; $4d2f: $58
    daa                                           ; $4d30: $27
    halt                                          ; $4d31: $76
    ld [hl], a                                    ; $4d32: $77
    xor d                                         ; $4d33: $aa
    sbc $ba                                       ; $4d34: $de $ba
    or a                                          ; $4d36: $b7
    sub a                                         ; $4d37: $97
    ld [hl], h                                    ; $4d38: $74
    ld h, h                                       ; $4d39: $64
    dec h                                         ; $4d3a: $25
    add hl, sp                                    ; $4d3b: $39
    adc d                                         ; $4d3c: $8a
    ret                                           ; $4d3d: $c9


    adc d                                         ; $4d3e: $8a
    cp d                                          ; $4d3f: $ba
    cp e                                          ; $4d40: $bb
    ld e, c                                       ; $4d41: $59
    adc c                                         ; $4d42: $89
    halt                                          ; $4d43: $76
    sbc c                                         ; $4d44: $99
    ret z                                         ; $4d45: $c8

    ld e, b                                       ; $4d46: $58
    ld h, a                                       ; $4d47: $67
    ld [hl], a                                    ; $4d48: $77
    add e                                         ; $4d49: $83
    add a                                         ; $4d4a: $87
    cp c                                          ; $4d4b: $b9
    cp e                                          ; $4d4c: $bb
    xor l                                         ; $4d4d: $ad
    cp d                                          ; $4d4e: $ba
    sbc c                                         ; $4d4f: $99
    adc b                                         ; $4d50: $88
    add [hl]                                      ; $4d51: $86
    dec h                                         ; $4d52: $25
    ld h, [hl]                                    ; $4d53: $66
    halt                                          ; $4d54: $76
    sbc b                                         ; $4d55: $98
    sbc e                                         ; $4d56: $9b
    cp e                                          ; $4d57: $bb
    jp z, $9499                                   ; $4d58: $ca $99 $94

    ld h, a                                       ; $4d5b: $67
    add a                                         ; $4d5c: $87
    add l                                         ; $4d5d: $85
    ld e, b                                       ; $4d5e: $58
    xor b                                         ; $4d5f: $a8
    adc b                                         ; $4d60: $88
    adc c                                         ; $4d61: $89
    ld l, c                                       ; $4d62: $69
    ld c, b                                       ; $4d63: $48
    cp d                                          ; $4d64: $ba
    sbc d                                         ; $4d65: $9a
    sbc d                                         ; $4d66: $9a
    sbc e                                         ; $4d67: $9b
    and a                                         ; $4d68: $a7
    and h                                         ; $4d69: $a4
    ld d, [hl]                                    ; $4d6a: $56
    ld h, h                                       ; $4d6b: $64
    ld b, l                                       ; $4d6c: $45
    add a                                         ; $4d6d: $87
    ld a, b                                       ; $4d6e: $78
    cp e                                          ; $4d6f: $bb
    db $db                                        ; $4d70: $db
    xor d                                         ; $4d71: $aa
    ld a, c                                       ; $4d72: $79
    add h                                         ; $4d73: $84
    ld d, h                                       ; $4d74: $54
    add h                                         ; $4d75: $84
    jr c, jr_017_4df1                             ; $4d76: $38 $79

    adc c                                         ; $4d78: $89
    sub a                                         ; $4d79: $97
    sub a                                         ; $4d7a: $97
    xor e                                         ; $4d7b: $ab
    sub l                                         ; $4d7c: $95
    ld l, c                                       ; $4d7d: $69
    ld a, e                                       ; $4d7e: $7b
    halt                                          ; $4d7f: $76
    cp b                                          ; $4d80: $b8
    and h                                         ; $4d81: $a4
    ld b, [hl]                                    ; $4d82: $46
    ld h, [hl]                                    ; $4d83: $66
    add l                                         ; $4d84: $85
    ld b, h                                       ; $4d85: $44
    ld h, a                                       ; $4d86: $67
    cp c                                          ; $4d87: $b9
    cp e                                          ; $4d88: $bb
    xor h                                         ; $4d89: $ac
    sbc c                                         ; $4d8a: $99
    add [hl]                                      ; $4d8b: $86
    adc b                                         ; $4d8c: $88
    ld h, c                                       ; $4d8d: $61
    ld b, l                                       ; $4d8e: $45
    ld l, b                                       ; $4d8f: $68
    ld d, a                                       ; $4d90: $57
    adc c                                         ; $4d91: $89
    xor b                                         ; $4d92: $a8
    cp c                                          ; $4d93: $b9
    xor d                                         ; $4d94: $aa
    add [hl]                                      ; $4d95: $86
    ld e, b                                       ; $4d96: $58
    ld d, [hl]                                    ; $4d97: $56
    and a                                         ; $4d98: $a7
    add h                                         ; $4d99: $84
    ld l, c                                       ; $4d9a: $69
    ld h, a                                       ; $4d9b: $67
    ld [hl], a                                    ; $4d9c: $77
    ld h, [hl]                                    ; $4d9d: $66
    ld d, h                                       ; $4d9e: $54
    adc d                                         ; $4d9f: $8a
    cp d                                          ; $4da0: $ba
    adc b                                         ; $4da1: $88
    cp e                                          ; $4da2: $bb
    adc d                                         ; $4da3: $8a
    sub [hl]                                      ; $4da4: $96
    ld [hl], l                                    ; $4da5: $75
    ld d, e                                       ; $4da6: $53
    ld b, a                                       ; $4da7: $47
    ld d, a                                       ; $4da8: $57
    ld [hl], a                                    ; $4da9: $77
    sbc d                                         ; $4daa: $9a
    set 3, e                                      ; $4dab: $cb $db
    sbc b                                         ; $4dad: $98
    sbc c                                         ; $4dae: $99
    ld [hl], $87                                  ; $4daf: $36 $87
    ld [hl], e                                    ; $4db1: $73
    ld e, b                                       ; $4db2: $58
    ld a, d                                       ; $4db3: $7a
    sbc b                                         ; $4db4: $98
    ld a, b                                       ; $4db5: $78
    sbc b                                         ; $4db6: $98
    sub [hl]                                      ; $4db7: $96
    cp b                                          ; $4db8: $b8
    adc e                                         ; $4db9: $8b
    ld a, c                                       ; $4dba: $79
    adc c                                         ; $4dbb: $89
    jp z, $6793                                   ; $4dbc: $ca $93 $67

    ld e, b                                       ; $4dbf: $58
    jr c, jr_017_4e19                             ; $4dc0: $38 $57

    sub a                                         ; $4dc2: $97
    xor d                                         ; $4dc3: $aa
    res 7, d                                      ; $4dc4: $cb $ba
    sub a                                         ; $4dc6: $97
    ld a, c                                       ; $4dc7: $79
    ld [hl], h                                    ; $4dc8: $74
    add e                                         ; $4dc9: $83
    ld b, a                                       ; $4dca: $47
    ld [hl], a                                    ; $4dcb: $77
    ld a, d                                       ; $4dcc: $7a
    sbc d                                         ; $4dcd: $9a
    sbc b                                         ; $4dce: $98
    xor c                                         ; $4dcf: $a9
    xor d                                         ; $4dd0: $aa
    ld e, b                                       ; $4dd1: $58
    sbc b                                         ; $4dd2: $98
    adc b                                         ; $4dd3: $88
    sbc d                                         ; $4dd4: $9a
    and l                                         ; $4dd5: $a5
    ld h, a                                       ; $4dd6: $67
    ld a, b                                       ; $4dd7: $78
    halt                                          ; $4dd8: $76
    add e                                         ; $4dd9: $83
    ld a, b                                       ; $4dda: $78
    adc b                                         ; $4ddb: $88
    ret                                           ; $4ddc: $c9


    sbc d                                         ; $4ddd: $9a
    cp c                                          ; $4dde: $b9
    adc c                                         ; $4ddf: $89
    adc b                                         ; $4de0: $88
    add h                                         ; $4de1: $84
    ld [hl], $67                                  ; $4de2: $36 $67
    ld a, b                                       ; $4de4: $78
    adc c                                         ; $4de5: $89
    sbc d                                         ; $4de6: $9a
    xor d                                         ; $4de7: $aa
    cp b                                          ; $4de8: $b8
    add a                                         ; $4de9: $87
    sub h                                         ; $4dea: $94
    ld e, b                                       ; $4deb: $58
    ld a, b                                       ; $4dec: $78
    sub e                                         ; $4ded: $93
    ld a, b                                       ; $4dee: $78
    sbc b                                         ; $4def: $98
    sbc c                                         ; $4df0: $99

jr_017_4df1:
    ld l, b                                       ; $4df1: $68
    ld a, b                                       ; $4df2: $78
    ld d, a                                       ; $4df3: $57
    or a                                          ; $4df4: $b7
    adc d                                         ; $4df5: $8a
    adc b                                         ; $4df6: $88
    sbc e                                         ; $4df7: $9b
    adc d                                         ; $4df8: $8a
    ld [hl], e                                    ; $4df9: $73
    ld d, l                                       ; $4dfa: $55
    ld [hl], e                                    ; $4dfb: $73
    ld [hl], a                                    ; $4dfc: $77
    ld l, b                                       ; $4dfd: $68
    ld a, c                                       ; $4dfe: $79
    xor e                                         ; $4dff: $ab
    cp c                                          ; $4e00: $b9
    sbc c                                         ; $4e01: $99
    ld a, b                                       ; $4e02: $78
    ld l, b                                       ; $4e03: $68
    ld b, a                                       ; $4e04: $47
    ld [hl], h                                    ; $4e05: $74
    ld h, [hl]                                    ; $4e06: $66
    ld a, b                                       ; $4e07: $78
    sbc d                                         ; $4e08: $9a
    sbc c                                         ; $4e09: $99
    adc c                                         ; $4e0a: $89
    adc b                                         ; $4e0b: $88
    sub h                                         ; $4e0c: $94
    ld a, b                                       ; $4e0d: $78
    add a                                         ; $4e0e: $87
    ld a, b                                       ; $4e0f: $78
    adc h                                         ; $4e10: $8c
    add l                                         ; $4e11: $85
    halt                                          ; $4e12: $76
    halt                                          ; $4e13: $76
    ld l, b                                       ; $4e14: $68
    ld b, a                                       ; $4e15: $47
    ld a, b                                       ; $4e16: $78
    adc c                                         ; $4e17: $89
    cp d                                          ; $4e18: $ba

jr_017_4e19:
    cp d                                          ; $4e19: $ba
    sbc b                                         ; $4e1a: $98
    ld a, b                                       ; $4e1b: $78
    ld a, b                                       ; $4e1c: $78
    add h                                         ; $4e1d: $84
    ld [hl], a                                    ; $4e1e: $77
    ld h, a                                       ; $4e1f: $67
    adc b                                         ; $4e20: $88
    adc c                                         ; $4e21: $89
    sbc c                                         ; $4e22: $99
    sbc c                                         ; $4e23: $99
    adc c                                         ; $4e24: $89
    ld a, b                                       ; $4e25: $78
    ld b, [hl]                                    ; $4e26: $46
    ld a, b                                       ; $4e27: $78
    ld l, c                                       ; $4e28: $69
    ld [hl], l                                    ; $4e29: $75
    adc b                                         ; $4e2a: $88
    add a                                         ; $4e2b: $87
    add a                                         ; $4e2c: $87
    add a                                         ; $4e2d: $87
    add l                                         ; $4e2e: $85
    ld a, c                                       ; $4e2f: $79
    sbc b                                         ; $4e30: $98
    adc b                                         ; $4e31: $88
    xor c                                         ; $4e32: $a9
    adc b                                         ; $4e33: $88
    adc c                                         ; $4e34: $89
    ld h, [hl]                                    ; $4e35: $66
    ld h, [hl]                                    ; $4e36: $66
    ld [hl], $77                                  ; $4e37: $36 $77
    add a                                         ; $4e39: $87
    ld a, d                                       ; $4e3a: $7a
    xor e                                         ; $4e3b: $ab
    sbc c                                         ; $4e3c: $99
    add a                                         ; $4e3d: $87
    add a                                         ; $4e3e: $87
    ld h, l                                       ; $4e3f: $65
    ld h, a                                       ; $4e40: $67
    ld h, l                                       ; $4e41: $65
    ld [hl], a                                    ; $4e42: $77
    adc b                                         ; $4e43: $88
    xor b                                         ; $4e44: $a8
    sbc b                                         ; $4e45: $98
    ld l, b                                       ; $4e46: $68
    xor b                                         ; $4e47: $a8
    ld d, a                                       ; $4e48: $57
    sbc b                                         ; $4e49: $98
    ld [hl], a                                    ; $4e4a: $77
    ld l, d                                       ; $4e4b: $6a
    sbc d                                         ; $4e4c: $9a
    ld h, [hl]                                    ; $4e4d: $66
    ld h, l                                       ; $4e4e: $65
    ld [hl], a                                    ; $4e4f: $77
    ld h, l                                       ; $4e50: $65
    ld e, b                                       ; $4e51: $58
    ld [hl], a                                    ; $4e52: $77
    adc c                                         ; $4e53: $89
    cp d                                          ; $4e54: $ba
    xor c                                         ; $4e55: $a9
    adc b                                         ; $4e56: $88
    ld h, a                                       ; $4e57: $67
    add [hl]                                      ; $4e58: $86
    dec [hl]                                      ; $4e59: $35
    add [hl]                                      ; $4e5a: $86
    ld a, b                                       ; $4e5b: $78
    ld a, b                                       ; $4e5c: $78
    sbc d                                         ; $4e5d: $9a
    adc c                                         ; $4e5e: $89
    adc c                                         ; $4e5f: $89
    sbc c                                         ; $4e60: $99
    ld [hl], l                                    ; $4e61: $75
    ld [hl], a                                    ; $4e62: $77
    ld h, a                                       ; $4e63: $67
    ld a, b                                       ; $4e64: $78
    ld d, [hl]                                    ; $4e65: $56
    halt                                          ; $4e66: $76
    ld [hl], a                                    ; $4e67: $77
    ld [hl], a                                    ; $4e68: $77
    ld a, b                                       ; $4e69: $78
    adc b                                         ; $4e6a: $88
    sbc d                                         ; $4e6b: $9a
    sbc c                                         ; $4e6c: $99
    sbc b                                         ; $4e6d: $98
    add a                                         ; $4e6e: $87
    ld l, c                                       ; $4e6f: $69
    ld l, b                                       ; $4e70: $68
    ld h, l                                       ; $4e71: $65
    ld [hl], a                                    ; $4e72: $77
    ld [hl], a                                    ; $4e73: $77
    ld a, c                                       ; $4e74: $79
    ld l, b                                       ; $4e75: $68
    adc b                                         ; $4e76: $88
    sbc c                                         ; $4e77: $99
    xor b                                         ; $4e78: $a8
    adc b                                         ; $4e79: $88
    add a                                         ; $4e7a: $87
    ld a, b                                       ; $4e7b: $78
    ld [hl], a                                    ; $4e7c: $77
    ld h, [hl]                                    ; $4e7d: $66
    halt                                          ; $4e7e: $76
    add a                                         ; $4e7f: $87
    adc b                                         ; $4e80: $88
    ld a, b                                       ; $4e81: $78
    adc c                                         ; $4e82: $89
    adc c                                         ; $4e83: $89
    sbc b                                         ; $4e84: $98
    sbc c                                         ; $4e85: $99
    ld a, b                                       ; $4e86: $78
    ld [hl], a                                    ; $4e87: $77
    ld a, b                                       ; $4e88: $78
    ld [hl], l                                    ; $4e89: $75
    halt                                          ; $4e8a: $76
    add a                                         ; $4e8b: $87
    ld a, b                                       ; $4e8c: $78
    adc b                                         ; $4e8d: $88
    adc c                                         ; $4e8e: $89
    adc c                                         ; $4e8f: $89
    xor b                                         ; $4e90: $a8
    sbc b                                         ; $4e91: $98
    adc b                                         ; $4e92: $88
    ld a, b                                       ; $4e93: $78
    ld a, b                                       ; $4e94: $78
    ld h, [hl]                                    ; $4e95: $66
    halt                                          ; $4e96: $76
    ld [hl], a                                    ; $4e97: $77
    ld a, b                                       ; $4e98: $78
    adc b                                         ; $4e99: $88
    adc c                                         ; $4e9a: $89
    sbc d                                         ; $4e9b: $9a
    sbc c                                         ; $4e9c: $99
    sbc b                                         ; $4e9d: $98
    adc b                                         ; $4e9e: $88
    add a                                         ; $4e9f: $87
    adc b                                         ; $4ea0: $88
    ld h, [hl]                                    ; $4ea1: $66
    halt                                          ; $4ea2: $76
    add a                                         ; $4ea3: $87
    ld [hl], a                                    ; $4ea4: $77
    adc b                                         ; $4ea5: $88
    ld a, c                                       ; $4ea6: $79
    sbc c                                         ; $4ea7: $99
    sbc c                                         ; $4ea8: $99
    sbc b                                         ; $4ea9: $98
    adc b                                         ; $4eaa: $88
    ld a, b                                       ; $4eab: $78
    ld a, b                                       ; $4eac: $78
    ld d, l                                       ; $4ead: $55
    ld h, a                                       ; $4eae: $67
    add a                                         ; $4eaf: $87
    adc b                                         ; $4eb0: $88
    add a                                         ; $4eb1: $87
    ld a, c                                       ; $4eb2: $79
    sbc d                                         ; $4eb3: $9a
    sbc b                                         ; $4eb4: $98
    sbc b                                         ; $4eb5: $98
    add a                                         ; $4eb6: $87
    ld a, b                                       ; $4eb7: $78
    ld a, b                                       ; $4eb8: $78
    ld h, l                                       ; $4eb9: $65
    ld [hl], a                                    ; $4eba: $77
    ld [hl], a                                    ; $4ebb: $77
    adc b                                         ; $4ebc: $88
    adc b                                         ; $4ebd: $88
    ld a, b                                       ; $4ebe: $78
    sbc c                                         ; $4ebf: $99
    sbc b                                         ; $4ec0: $98
    adc b                                         ; $4ec1: $88
    add a                                         ; $4ec2: $87
    ld a, b                                       ; $4ec3: $78
    ld a, b                                       ; $4ec4: $78
    ld [hl], l                                    ; $4ec5: $75
    ld a, b                                       ; $4ec6: $78
    add a                                         ; $4ec7: $87
    ld [hl], a                                    ; $4ec8: $77
    ld a, b                                       ; $4ec9: $78
    adc b                                         ; $4eca: $88
    sbc b                                         ; $4ecb: $98
    adc b                                         ; $4ecc: $88
    sbc b                                         ; $4ecd: $98
    adc b                                         ; $4ece: $88
    ld a, b                                       ; $4ecf: $78
    adc b                                         ; $4ed0: $88
    halt                                          ; $4ed1: $76
    ld a, b                                       ; $4ed2: $78
    add a                                         ; $4ed3: $87
    ld [hl], a                                    ; $4ed4: $77
    ld a, b                                       ; $4ed5: $78
    adc b                                         ; $4ed6: $88
    sbc c                                         ; $4ed7: $99
    adc b                                         ; $4ed8: $88
    sbc b                                         ; $4ed9: $98
    add a                                         ; $4eda: $87
    ld a, b                                       ; $4edb: $78
    ld a, b                                       ; $4edc: $78
    halt                                          ; $4edd: $76
    ld [hl], a                                    ; $4ede: $77
    add a                                         ; $4edf: $87
    add a                                         ; $4ee0: $87
    adc b                                         ; $4ee1: $88
    adc b                                         ; $4ee2: $88
    sbc c                                         ; $4ee3: $99
    sbc b                                         ; $4ee4: $98
    adc b                                         ; $4ee5: $88
    add a                                         ; $4ee6: $87
    ld a, b                                       ; $4ee7: $78
    ld a, b                                       ; $4ee8: $78
    halt                                          ; $4ee9: $76
    ld a, b                                       ; $4eea: $78
    ld [hl], a                                    ; $4eeb: $77
    ld a, b                                       ; $4eec: $78
    ld a, b                                       ; $4eed: $78
    adc b                                         ; $4eee: $88
    sbc b                                         ; $4eef: $98
    sbc c                                         ; $4ef0: $99
    adc b                                         ; $4ef1: $88
    add a                                         ; $4ef2: $87
    ld a, b                                       ; $4ef3: $78
    ld a, b                                       ; $4ef4: $78
    halt                                          ; $4ef5: $76
    ld [hl], a                                    ; $4ef6: $77
    adc b                                         ; $4ef7: $88
    ld a, b                                       ; $4ef8: $78
    adc b                                         ; $4ef9: $88
    adc b                                         ; $4efa: $88
    adc b                                         ; $4efb: $88
    adc b                                         ; $4efc: $88
    adc b                                         ; $4efd: $88
    add a                                         ; $4efe: $87
    ld a, b                                       ; $4eff: $78
    adc b                                         ; $4f00: $88
    ld [hl], a                                    ; $4f01: $77
    ld [hl], a                                    ; $4f02: $77
    adc b                                         ; $4f03: $88
    ld [hl], a                                    ; $4f04: $77
    ld a, b                                       ; $4f05: $78
    ld a, b                                       ; $4f06: $78
    adc b                                         ; $4f07: $88
    adc b                                         ; $4f08: $88
    adc b                                         ; $4f09: $88
    add a                                         ; $4f0a: $87
    ld a, b                                       ; $4f0b: $78
    ld a, b                                       ; $4f0c: $78
    halt                                          ; $4f0d: $76
    ld [hl], a                                    ; $4f0e: $77
    add a                                         ; $4f0f: $87
    add a                                         ; $4f10: $87
    adc b                                         ; $4f11: $88
    ld a, b                                       ; $4f12: $78
    adc b                                         ; $4f13: $88
    adc b                                         ; $4f14: $88
    adc b                                         ; $4f15: $88
    add a                                         ; $4f16: $87
    adc b                                         ; $4f17: $88
    ld a, b                                       ; $4f18: $78
    ld [hl], a                                    ; $4f19: $77
    ld [hl], a                                    ; $4f1a: $77
    adc b                                         ; $4f1b: $88
    ld [hl], a                                    ; $4f1c: $77
    adc b                                         ; $4f1d: $88
    ld a, b                                       ; $4f1e: $78
    adc b                                         ; $4f1f: $88
    add a                                         ; $4f20: $87
    adc b                                         ; $4f21: $88
    add a                                         ; $4f22: $87
    ld a, b                                       ; $4f23: $78
    ld a, b                                       ; $4f24: $78
    ld [hl], a                                    ; $4f25: $77
    ld [hl], a                                    ; $4f26: $77
    adc b                                         ; $4f27: $88
    ld [hl], a                                    ; $4f28: $77
    adc b                                         ; $4f29: $88
    ld a, b                                       ; $4f2a: $78
    adc b                                         ; $4f2b: $88
    adc b                                         ; $4f2c: $88
    adc b                                         ; $4f2d: $88
    add a                                         ; $4f2e: $87
    ld a, b                                       ; $4f2f: $78
    adc b                                         ; $4f30: $88
    ld [hl], a                                    ; $4f31: $77
    ld [hl], a                                    ; $4f32: $77
    add a                                         ; $4f33: $87
    ld [hl], a                                    ; $4f34: $77
    ld a, b                                       ; $4f35: $78
    ld a, b                                       ; $4f36: $78
    adc b                                         ; $4f37: $88
    adc b                                         ; $4f38: $88
    adc b                                         ; $4f39: $88
    adc b                                         ; $4f3a: $88
    ld a, b                                       ; $4f3b: $78
    ld a, b                                       ; $4f3c: $78
    ld [hl], a                                    ; $4f3d: $77
    ld [hl], a                                    ; $4f3e: $77
    add a                                         ; $4f3f: $87
    add a                                         ; $4f40: $87
    ld a, b                                       ; $4f41: $78
    ld a, b                                       ; $4f42: $78
    adc b                                         ; $4f43: $88
    adc b                                         ; $4f44: $88
    adc b                                         ; $4f45: $88
    adc b                                         ; $4f46: $88
    ld a, b                                       ; $4f47: $78
    adc b                                         ; $4f48: $88
    ld [hl], a                                    ; $4f49: $77
    ld [hl], a                                    ; $4f4a: $77
    ld [hl], a                                    ; $4f4b: $77
    ld a, b                                       ; $4f4c: $78
    adc b                                         ; $4f4d: $88
    adc b                                         ; $4f4e: $88
    adc b                                         ; $4f4f: $88
    adc b                                         ; $4f50: $88
    adc b                                         ; $4f51: $88
    adc b                                         ; $4f52: $88
    ld [hl], a                                    ; $4f53: $77
    halt                                          ; $4f54: $76
    ld h, a                                       ; $4f55: $67
    ld [hl], a                                    ; $4f56: $77
    sbc c                                         ; $4f57: $99
    sbc c                                         ; $4f58: $99
    sbc b                                         ; $4f59: $98
    halt                                          ; $4f5a: $76
    ld h, l                                       ; $4f5b: $65
    ld h, a                                       ; $4f5c: $67
    ld a, c                                       ; $4f5d: $79
    xor c                                         ; $4f5e: $a9
    sbc c                                         ; $4f5f: $99
    add a                                         ; $4f60: $87
    ld h, [hl]                                    ; $4f61: $66
    ld d, [hl]                                    ; $4f62: $56
    ld a, b                                       ; $4f63: $78
    adc d                                         ; $4f64: $8a
    xor c                                         ; $4f65: $a9
    sbc b                                         ; $4f66: $98
    halt                                          ; $4f67: $76
    ld h, [hl]                                    ; $4f68: $66
    ld h, a                                       ; $4f69: $67
    adc c                                         ; $4f6a: $89
    sbc d                                         ; $4f6b: $9a
    sbc b                                         ; $4f6c: $98
    add a                                         ; $4f6d: $87
    ld h, [hl]                                    ; $4f6e: $66
    ld h, [hl]                                    ; $4f6f: $66
    adc b                                         ; $4f70: $88
    sbc c                                         ; $4f71: $99
    xor c                                         ; $4f72: $a9
    adc b                                         ; $4f73: $88
    halt                                          ; $4f74: $76
    ld d, [hl]                                    ; $4f75: $56
    ld h, a                                       ; $4f76: $67
    adc c                                         ; $4f77: $89
    sbc c                                         ; $4f78: $99
    sbc c                                         ; $4f79: $99
    ld [hl], a                                    ; $4f7a: $77
    ld h, l                                       ; $4f7b: $65
    ld h, [hl]                                    ; $4f7c: $66
    ld a, b                                       ; $4f7d: $78
    sbc d                                         ; $4f7e: $9a
    sbc c                                         ; $4f7f: $99
    sub a                                         ; $4f80: $97
    ld h, [hl]                                    ; $4f81: $66
    ld h, l                                       ; $4f82: $65
    ld h, a                                       ; $4f83: $67
    adc c                                         ; $4f84: $89
    xor c                                         ; $4f85: $a9
    sbc c                                         ; $4f86: $99
    halt                                          ; $4f87: $76
    ld h, [hl]                                    ; $4f88: $66
    ld d, [hl]                                    ; $4f89: $56
    ld a, b                                       ; $4f8a: $78
    sbc d                                         ; $4f8b: $9a
    xor c                                         ; $4f8c: $a9
    adc b                                         ; $4f8d: $88
    ld h, l                                       ; $4f8e: $65
    ld h, [hl]                                    ; $4f8f: $66
    ld h, a                                       ; $4f90: $67
    sbc c                                         ; $4f91: $99
    sbc d                                         ; $4f92: $9a
    sbc b                                         ; $4f93: $98
    add a                                         ; $4f94: $87
    ld d, l                                       ; $4f95: $55
    ld h, [hl]                                    ; $4f96: $66
    ld a, c                                       ; $4f97: $79
    sbc c                                         ; $4f98: $99
    xor c                                         ; $4f99: $a9
    add a                                         ; $4f9a: $87
    halt                                          ; $4f9b: $76
    ld d, [hl]                                    ; $4f9c: $56
    ld [hl], a                                    ; $4f9d: $77
    adc d                                         ; $4f9e: $8a
    sbc c                                         ; $4f9f: $99
    sbc b                                         ; $4fa0: $98
    halt                                          ; $4fa1: $76
    ld h, l                                       ; $4fa2: $65
    ld h, a                                       ; $4fa3: $67
    ld a, b                                       ; $4fa4: $78
    xor d                                         ; $4fa5: $aa
    sbc c                                         ; $4fa6: $99
    add a                                         ; $4fa7: $87
    ld h, [hl]                                    ; $4fa8: $66
    ld d, l                                       ; $4fa9: $55
    ld a, b                                       ; $4faa: $78
    adc d                                         ; $4fab: $8a
    xor c                                         ; $4fac: $a9
    sbc b                                         ; $4fad: $98
    ld [hl], l                                    ; $4fae: $75
    ld d, [hl]                                    ; $4faf: $56
    ld d, a                                       ; $4fb0: $57
    adc c                                         ; $4fb1: $89
    sbc d                                         ; $4fb2: $9a
    xor b                                         ; $4fb3: $a8
    add a                                         ; $4fb4: $87
    ld d, l                                       ; $4fb5: $55
    ld h, [hl]                                    ; $4fb6: $66
    ld l, b                                       ; $4fb7: $68
    sbc c                                         ; $4fb8: $99
    xor d                                         ; $4fb9: $aa
    add a                                         ; $4fba: $87
    ld [hl], l                                    ; $4fbb: $75
    ld d, l                                       ; $4fbc: $55
    ld h, a                                       ; $4fbd: $67
    adc d                                         ; $4fbe: $8a
    xor d                                         ; $4fbf: $aa
    xor b                                         ; $4fc0: $a8
    halt                                          ; $4fc1: $76
    ld h, l                                       ; $4fc2: $65
    ld d, a                                       ; $4fc3: $57
    ld a, b                                       ; $4fc4: $78
    xor d                                         ; $4fc5: $aa
    sbc c                                         ; $4fc6: $99
    add [hl]                                      ; $4fc7: $86
    ld h, [hl]                                    ; $4fc8: $66
    ld d, l                                       ; $4fc9: $55
    ld a, b                                       ; $4fca: $78
    sbc d                                         ; $4fcb: $9a
    cp c                                          ; $4fcc: $b9
    sbc b                                         ; $4fcd: $98
    ld [hl], l                                    ; $4fce: $75
    ld d, l                                       ; $4fcf: $55
    ld d, a                                       ; $4fd0: $57
    adc c                                         ; $4fd1: $89
    xor d                                         ; $4fd2: $aa
    xor b                                         ; $4fd3: $a8
    add a                                         ; $4fd4: $87
    ld d, l                                       ; $4fd5: $55
    ld h, [hl]                                    ; $4fd6: $66
    ld a, c                                       ; $4fd7: $79
    xor d                                         ; $4fd8: $aa
    xor d                                         ; $4fd9: $aa
    add a                                         ; $4fda: $87
    ld [hl], l                                    ; $4fdb: $75
    ld b, l                                       ; $4fdc: $45
    ld h, a                                       ; $4fdd: $67
    sbc d                                         ; $4fde: $9a
    xor d                                         ; $4fdf: $aa
    xor b                                         ; $4fe0: $a8
    halt                                          ; $4fe1: $76
    ld d, h                                       ; $4fe2: $54
    ld d, a                                       ; $4fe3: $57
    ld a, c                                       ; $4fe4: $79
    xor d                                         ; $4fe5: $aa
    sbc c                                         ; $4fe6: $99
    add [hl]                                      ; $4fe7: $86
    ld h, l                                       ; $4fe8: $65
    ld d, l                                       ; $4fe9: $55
    ld a, b                                       ; $4fea: $78
    sbc d                                         ; $4feb: $9a
    cp c                                          ; $4fec: $b9
    sbc b                                         ; $4fed: $98
    ld h, l                                       ; $4fee: $65
    ld d, l                                       ; $4fef: $55
    ld d, a                                       ; $4ff0: $57
    sbc c                                         ; $4ff1: $99
    xor e                                         ; $4ff2: $ab
    sbc b                                         ; $4ff3: $98
    add [hl]                                      ; $4ff4: $86
    ld d, l                                       ; $4ff5: $55
    ld d, l                                       ; $4ff6: $55
    ld a, c                                       ; $4ff7: $79
    xor d                                         ; $4ff8: $aa
    cp d                                          ; $4ff9: $ba
    add a                                         ; $4ffa: $87
    ld h, h                                       ; $4ffb: $64
    ld b, l                                       ; $4ffc: $45
    ld h, a                                       ; $4ffd: $67
    sbc d                                         ; $4ffe: $9a
    xor d                                         ; $4fff: $aa
    xor b                                         ; $5000: $a8
    halt                                          ; $5001: $76
    ld b, h                                       ; $5002: $44
    ld d, [hl]                                    ; $5003: $56
    adc d                                         ; $5004: $8a
    cp e                                          ; $5005: $bb
    xor c                                         ; $5006: $a9
    halt                                          ; $5007: $76
    ld d, h                                       ; $5008: $54
    ld b, l                                       ; $5009: $45
    ld a, b                                       ; $500a: $78
    xor e                                         ; $500b: $ab
    cp d                                          ; $500c: $ba
    sub a                                         ; $500d: $97
    ld d, h                                       ; $500e: $54
    ld b, h                                       ; $500f: $44
    ld l, b                                       ; $5010: $68
    sbc d                                         ; $5011: $9a
    res 3, b                                      ; $5012: $cb $98
    ld h, h                                       ; $5014: $64
    ld b, h                                       ; $5015: $44
    ld d, [hl]                                    ; $5016: $56
    sbc d                                         ; $5017: $9a
    cp e                                          ; $5018: $bb
    cp b                                          ; $5019: $b8
    halt                                          ; $501a: $76
    ld b, e                                       ; $501b: $43
    ld d, [hl]                                    ; $501c: $56
    ld a, c                                       ; $501d: $79
    cp e                                          ; $501e: $bb
    cp d                                          ; $501f: $ba
    add [hl]                                      ; $5020: $86
    ld d, h                                       ; $5021: $54
    dec [hl]                                      ; $5022: $35
    ld l, b                                       ; $5023: $68
    xor h                                         ; $5024: $ac
    cp d                                          ; $5025: $ba
    sub a                                         ; $5026: $97
    ld d, l                                       ; $5027: $55
    ld b, h                                       ; $5028: $44
    ld l, b                                       ; $5029: $68
    sbc e                                         ; $502a: $9b
    res 5, c                                      ; $502b: $cb $a9
    ld h, h                                       ; $502d: $64
    ld b, h                                       ; $502e: $44
    ld b, [hl]                                    ; $502f: $46
    sbc d                                         ; $5030: $9a
    cp h                                          ; $5031: $bc
    xor c                                         ; $5032: $a9
    add l                                         ; $5033: $85
    ld b, h                                       ; $5034: $44
    ld b, l                                       ; $5035: $45
    ld a, d                                       ; $5036: $7a
    cp e                                          ; $5037: $bb
    jp z, Jump_017_5386                           ; $5038: $ca $86 $53

    ld b, l                                       ; $503b: $45
    ld l, b                                       ; $503c: $68
    cp e                                          ; $503d: $bb
    cp e                                          ; $503e: $bb
    sub a                                         ; $503f: $97
    ld h, h                                       ; $5040: $64
    inc [hl]                                      ; $5041: $34
    ld h, a                                       ; $5042: $67
    sbc h                                         ; $5043: $9c
    res 5, b                                      ; $5044: $cb $a8
    ld h, l                                       ; $5046: $65
    ld b, e                                       ; $5047: $43
    ld b, a                                       ; $5048: $47
    adc d                                         ; $5049: $8a
    call z, Call_017_75a9                         ; $504a: $cc $a9 $75
    ld b, h                                       ; $504d: $44
    dec [hl]                                      ; $504e: $35
    adc d                                         ; $504f: $8a
    cp h                                          ; $5050: $bc
    cp c                                          ; $5051: $b9
    add [hl]                                      ; $5052: $86
    ld b, h                                       ; $5053: $44
    ld b, h                                       ; $5054: $44
    ld l, c                                       ; $5055: $69
    xor e                                         ; $5056: $ab
    res 2, a                                      ; $5057: $cb $97
    ld d, e                                       ; $5059: $53
    inc [hl]                                      ; $505a: $34
    ld d, a                                       ; $505b: $57
    xor e                                         ; $505c: $ab
    cp h                                          ; $505d: $bc
    and a                                         ; $505e: $a7
    ld h, l                                       ; $505f: $65
    inc sp                                        ; $5060: $33
    ld d, [hl]                                    ; $5061: $56
    adc e                                         ; $5062: $8b
    res 7, c                                      ; $5063: $cb $b9
    ld [hl], l                                    ; $5065: $75
    ld b, e                                       ; $5066: $43
    ld b, [hl]                                    ; $5067: $46
    ld a, c                                       ; $5068: $79
    call z, $86ba                                 ; $5069: $cc $ba $86
    ld b, h                                       ; $506c: $44
    inc [hl]                                      ; $506d: $34
    ld l, b                                       ; $506e: $68
    xor h                                         ; $506f: $ac
    res 2, a                                      ; $5070: $cb $97
    ld d, h                                       ; $5072: $54
    inc sp                                        ; $5073: $33
    ld e, b                                       ; $5074: $58
    xor e                                         ; $5075: $ab
    call z, $64a8                                 ; $5076: $cc $a8 $64
    inc sp                                        ; $5079: $33
    ld b, [hl]                                    ; $507a: $46
    sbc e                                         ; $507b: $9b
    call z, Call_017_74b9                         ; $507c: $cc $b9 $74
    inc sp                                        ; $507f: $33
    dec [hl]                                      ; $5080: $35
    adc d                                         ; $5081: $8a
    call $85ca                                    ; $5082: $cd $ca $85
    inc sp                                        ; $5085: $33
    inc [hl]                                      ; $5086: $34
    ld a, d                                       ; $5087: $7a
    cp h                                          ; $5088: $bc
    jp c, Jump_017_4286                           ; $5089: $da $86 $42

    inc [hl]                                      ; $508c: $34
    ld l, c                                       ; $508d: $69
    cp h                                          ; $508e: $bc
    call z, Call_017_5396                         ; $508f: $cc $96 $53
    inc hl                                        ; $5092: $23
    ld d, a                                       ; $5093: $57
    xor h                                         ; $5094: $ac
    call z, $54b7                                 ; $5095: $cc $b7 $54
    inc sp                                        ; $5098: $33
    ld d, a                                       ; $5099: $57
    sbc e                                         ; $509a: $9b
    call c, Call_017_64b9                         ; $509b: $dc $b9 $64
    ld [hl-], a                                   ; $509e: $32
    ld [hl], $9a                                  ; $509f: $36 $9a
    db $dd                                        ; $50a1: $dd
    cp c                                          ; $50a2: $b9
    ld [hl], h                                    ; $50a3: $74
    inc sp                                        ; $50a4: $33
    inc [hl]                                      ; $50a5: $34
    adc d                                         ; $50a6: $8a
    call $86ca                                    ; $50a7: $cd $ca $86
    ld [hl-], a                                   ; $50aa: $32
    inc [hl]                                      ; $50ab: $34
    ld l, d                                       ; $50ac: $6a
    call z, $86cb                                 ; $50ad: $cc $cb $86
    ld b, d                                       ; $50b0: $42
    inc [hl]                                      ; $50b1: $34
    ld l, b                                       ; $50b2: $68
    cp h                                          ; $50b3: $bc
    call z, Call_017_4396                         ; $50b4: $cc $96 $43
    inc hl                                        ; $50b7: $23
    ld l, b                                       ; $50b8: $68
    xor l                                         ; $50b9: $ad
    res 4, a                                      ; $50ba: $cb $a7
    ld d, e                                       ; $50bc: $53
    inc sp                                        ; $50bd: $33
    ld d, a                                       ; $50be: $57
    sbc h                                         ; $50bf: $9c
    call c, Call_017_53a8                         ; $50c0: $dc $a8 $53
    inc sp                                        ; $50c3: $33
    ld b, a                                       ; $50c4: $47
    xor e                                         ; $50c5: $ab
    db $dd                                        ; $50c6: $dd
    cp c                                          ; $50c7: $b9
    ld [hl], h                                    ; $50c8: $74
    inc hl                                        ; $50c9: $23
    ld b, l                                       ; $50ca: $45
    sbc e                                         ; $50cb: $9b
    call Call_017_75c9                            ; $50cc: $cd $c9 $75
    ld [hl-], a                                   ; $50cf: $32
    ld b, l                                       ; $50d0: $45
    ld a, e                                       ; $50d1: $7b
    call z, Call_017_75ca                         ; $50d2: $cc $ca $75
    ld b, d                                       ; $50d5: $42
    dec [hl]                                      ; $50d6: $35
    ld a, d                                       ; $50d7: $7a
    call $85cb                                    ; $50d8: $cd $cb $85
    ld b, e                                       ; $50db: $43
    inc h                                         ; $50dc: $24
    ld a, c                                       ; $50dd: $79
    cp l                                          ; $50de: $bd
    res 2, [hl]                                   ; $50df: $cb $96
    inc sp                                        ; $50e1: $33
    inc sp                                        ; $50e2: $33
    ld l, c                                       ; $50e3: $69
    cp h                                          ; $50e4: $bc
    db $db                                        ; $50e5: $db
    sub a                                         ; $50e6: $97
    ld b, d                                       ; $50e7: $42
    inc hl                                        ; $50e8: $23
    ld e, b                                       ; $50e9: $58
    cp h                                          ; $50ea: $bc
    call c, Call_017_53a7                         ; $50eb: $dc $a7 $53
    inc hl                                        ; $50ee: $23
    ld b, a                                       ; $50ef: $47
    xor h                                         ; $50f0: $ac
    db $dd                                        ; $50f1: $dd
    cp b                                          ; $50f2: $b8
    ld d, h                                       ; $50f3: $54
    ld [hl+], a                                   ; $50f4: $22
    ld b, [hl]                                    ; $50f5: $46
    sbc h                                         ; $50f6: $9c
    call c, Call_017_54b9                         ; $50f7: $dc $b9 $54
    ld [hl-], a                                   ; $50fa: $32
    ld [hl], $9b                                  ; $50fb: $36 $9b
    db $dd                                        ; $50fd: $dd
    cp d                                          ; $50fe: $ba
    ld [hl], h                                    ; $50ff: $74
    ld [hl-], a                                   ; $5100: $32
    dec [hl]                                      ; $5101: $35
    sbc e                                         ; $5102: $9b
    sbc $c9                                       ; $5103: $de $c9
    ld [hl], l                                    ; $5105: $75
    ld [hl+], a                                   ; $5106: $22
    inc [hl]                                      ; $5107: $34
    ld a, e                                       ; $5108: $7b
    call $85da                                    ; $5109: $cd $da $85
    ld [hl-], a                                   ; $510c: $32
    inc h                                         ; $510d: $24
    ld l, d                                       ; $510e: $6a
    call $96dc                                    ; $510f: $cd $dc $96
    ld b, d                                       ; $5112: $42
    inc hl                                        ; $5113: $23
    ld l, b                                       ; $5114: $68
    cp l                                          ; $5115: $bd
    call c, Call_017_54b8                         ; $5116: $dc $b8 $54
    ld [hl+], a                                   ; $5119: $22
    dec [hl]                                      ; $511a: $35
    ld a, d                                       ; $511b: $7a
    call z, $97cb                                 ; $511c: $cc $cb $97
    ld h, h                                       ; $511f: $64
    inc sp                                        ; $5120: $33
    ld d, [hl]                                    ; $5121: $56
    adc d                                         ; $5122: $8a
    xor e                                         ; $5123: $ab
    cp c                                          ; $5124: $b9
    add a                                         ; $5125: $87
    ld h, l                                       ; $5126: $65
    ld d, [hl]                                    ; $5127: $56
    ld l, b                                       ; $5128: $68
    sbc c                                         ; $5129: $99
    sbc c                                         ; $512a: $99
    add a                                         ; $512b: $87
    ld [hl], a                                    ; $512c: $77
    ld a, c                                       ; $512d: $79
    sbc b                                         ; $512e: $98
    add a                                         ; $512f: $87
    ld h, [hl]                                    ; $5130: $66
    ld h, l                                       ; $5131: $65
    ld a, c                                       ; $5132: $79
    xor e                                         ; $5133: $ab
    res 3, b                                      ; $5134: $cb $98
    ld h, h                                       ; $5136: $64
    inc sp                                        ; $5137: $33
    ld b, a                                       ; $5138: $47
    sbc d                                         ; $5139: $9a
    call z, $86ba                                 ; $513a: $cc $ba $86
    ld b, e                                       ; $513d: $43
    inc [hl]                                      ; $513e: $34
    ld l, b                                       ; $513f: $68
    sbc e                                         ; $5140: $9b
    cp d                                          ; $5141: $ba
    xor c                                         ; $5142: $a9
    ld [hl], l                                    ; $5143: $75
    ld d, h                                       ; $5144: $54
    ld d, [hl]                                    ; $5145: $56
    ld a, b                                       ; $5146: $78
    sbc d                                         ; $5147: $9a
    sbc c                                         ; $5148: $99
    sub a                                         ; $5149: $97
    ld [hl], a                                    ; $514a: $77
    ld h, [hl]                                    ; $514b: $66
    ld h, [hl]                                    ; $514c: $66
    ld a, b                                       ; $514d: $78
    adc b                                         ; $514e: $88
    adc b                                         ; $514f: $88
    adc b                                         ; $5150: $88
    adc b                                         ; $5151: $88
    sbc c                                         ; $5152: $99
    adc b                                         ; $5153: $88
    halt                                          ; $5154: $76
    ld d, [hl]                                    ; $5155: $56
    ld h, a                                       ; $5156: $67
    sbc d                                         ; $5157: $9a
    xor h                                         ; $5158: $ac
    cp c                                          ; $5159: $b9
    add [hl]                                      ; $515a: $86
    ld b, e                                       ; $515b: $43
    ld b, l                                       ; $515c: $45
    ld a, c                                       ; $515d: $79
    xor e                                         ; $515e: $ab
    res 3, b                                      ; $515f: $cb $98
    ld h, h                                       ; $5161: $64
    ld b, h                                       ; $5162: $44
    ld b, a                                       ; $5163: $47
    adc c                                         ; $5164: $89
    xor e                                         ; $5165: $ab
    xor c                                         ; $5166: $a9
    add [hl]                                      ; $5167: $86
    ld d, [hl]                                    ; $5168: $56
    ld d, [hl]                                    ; $5169: $56
    adc b                                         ; $516a: $88
    adc c                                         ; $516b: $89
    add a                                         ; $516c: $87
    ld [hl], a                                    ; $516d: $77
    ld a, b                                       ; $516e: $78
    sbc c                                         ; $516f: $99
    adc b                                         ; $5170: $88
    halt                                          ; $5171: $76
    ld d, l                                       ; $5172: $55
    ld d, a                                       ; $5173: $57
    adc c                                         ; $5174: $89
    cp h                                          ; $5175: $bc
    cp d                                          ; $5176: $ba
    sub [hl]                                      ; $5177: $96
    ld b, h                                       ; $5178: $44
    inc [hl]                                      ; $5179: $34
    ld l, b                                       ; $517a: $68
    sbc e                                         ; $517b: $9b
    res 5, c                                      ; $517c: $cb $a9
    ld h, l                                       ; $517e: $65
    ld b, e                                       ; $517f: $43
    ld b, [hl]                                    ; $5180: $46
    ld a, c                                       ; $5181: $79
    xor d                                         ; $5182: $aa
    sbc c                                         ; $5183: $99
    add a                                         ; $5184: $87
    ld h, [hl]                                    ; $5185: $66
    ld h, a                                       ; $5186: $67
    adc b                                         ; $5187: $88
    adc b                                         ; $5188: $88
    ld [hl], a                                    ; $5189: $77
    ld [hl], a                                    ; $518a: $77
    ld a, c                                       ; $518b: $79
    sbc c                                         ; $518c: $99
    xor c                                         ; $518d: $a9
    halt                                          ; $518e: $76
    ld d, h                                       ; $518f: $54
    ld b, [hl]                                    ; $5190: $46
    adc c                                         ; $5191: $89
    cp h                                          ; $5192: $bc
    cp e                                          ; $5193: $bb
    sub [hl]                                      ; $5194: $96
    ld d, e                                       ; $5195: $53
    inc [hl]                                      ; $5196: $34
    ld h, a                                       ; $5197: $67
    xor e                                         ; $5198: $ab
    cp e                                          ; $5199: $bb
    xor c                                         ; $519a: $a9
    halt                                          ; $519b: $76
    ld b, h                                       ; $519c: $44
    ld d, [hl]                                    ; $519d: $56
    ld a, c                                       ; $519e: $79
    xor c                                         ; $519f: $a9
    sbc c                                         ; $51a0: $99
    ld [hl], a                                    ; $51a1: $77
    halt                                          ; $51a2: $76
    ld [hl], a                                    ; $51a3: $77
    adc b                                         ; $51a4: $88
    add a                                         ; $51a5: $87
    ld h, [hl]                                    ; $51a6: $66
    ld h, a                                       ; $51a7: $67
    adc c                                         ; $51a8: $89
    xor e                                         ; $51a9: $ab
    xor b                                         ; $51aa: $a8
    ld [hl], l                                    ; $51ab: $75
    ld b, e                                       ; $51ac: $43
    ld b, [hl]                                    ; $51ad: $46
    adc d                                         ; $51ae: $8a
    cp e                                          ; $51af: $bb
    res 2, a                                      ; $51b0: $cb $97
    ld d, e                                       ; $51b2: $53
    inc [hl]                                      ; $51b3: $34
    ld e, b                                       ; $51b4: $58
    xor d                                         ; $51b5: $aa
    cp e                                          ; $51b6: $bb
    xor b                                         ; $51b7: $a8
    ld [hl], l                                    ; $51b8: $75
    ld b, l                                       ; $51b9: $45
    ld d, [hl]                                    ; $51ba: $56
    adc c                                         ; $51bb: $89
    sbc c                                         ; $51bc: $99
    sbc b                                         ; $51bd: $98
    ld [hl], a                                    ; $51be: $77
    ld [hl], a                                    ; $51bf: $77
    adc b                                         ; $51c0: $88
    adc b                                         ; $51c1: $88
    halt                                          ; $51c2: $76
    ld h, l                                       ; $51c3: $65
    ld l, b                                       ; $51c4: $68
    sbc d                                         ; $51c5: $9a
    cp e                                          ; $51c6: $bb
    xor b                                         ; $51c7: $a8
    ld h, h                                       ; $51c8: $64
    inc sp                                        ; $51c9: $33
    ld b, [hl]                                    ; $51ca: $46
    adc d                                         ; $51cb: $8a
    cp h                                          ; $51cc: $bc
    cp d                                          ; $51cd: $ba
    add [hl]                                      ; $51ce: $86
    ld b, e                                       ; $51cf: $43
    inc [hl]                                      ; $51d0: $34
    ld l, b                                       ; $51d1: $68
    xor e                                         ; $51d2: $ab
    cp d                                          ; $51d3: $ba
    sbc b                                         ; $51d4: $98
    ld h, l                                       ; $51d5: $65
    ld d, l                                       ; $51d6: $55
    ld h, a                                       ; $51d7: $67
    adc c                                         ; $51d8: $89
    sbc b                                         ; $51d9: $98
    add a                                         ; $51da: $87
    ld [hl], a                                    ; $51db: $77
    adc c                                         ; $51dc: $89
    sbc b                                         ; $51dd: $98
    add a                                         ; $51de: $87
    ld d, l                                       ; $51df: $55
    ld d, l                                       ; $51e0: $55
    ld a, c                                       ; $51e1: $79
    cp h                                          ; $51e2: $bc
    res 2, a                                      ; $51e3: $cb $97
    ld b, d                                       ; $51e5: $42
    inc hl                                        ; $51e6: $23
    ld e, b                                       ; $51e7: $58
    xor h                                         ; $51e8: $ac
    call c, Call_017_74a9                         ; $51e9: $dc $a9 $74
    inc sp                                        ; $51ec: $33
    ld b, [hl]                                    ; $51ed: $46
    adc c                                         ; $51ee: $89
    cp e                                          ; $51ef: $bb
    xor c                                         ; $51f0: $a9
    add [hl]                                      ; $51f1: $86
    ld h, [hl]                                    ; $51f2: $66
    ld h, a                                       ; $51f3: $67
    adc b                                         ; $51f4: $88
    adc b                                         ; $51f5: $88
    halt                                          ; $51f6: $76
    ld [hl], a                                    ; $51f7: $77
    adc d                                         ; $51f8: $8a
    xor d                                         ; $51f9: $aa
    xor b                                         ; $51fa: $a8
    ld d, h                                       ; $51fb: $54
    inc sp                                        ; $51fc: $33
    ld d, a                                       ; $51fd: $57
    sbc e                                         ; $51fe: $9b
    call c, Call_017_74ca                         ; $51ff: $dc $ca $74
    ld [hl-], a                                   ; $5202: $32
    dec h                                         ; $5203: $25
    ld a, c                                       ; $5204: $79
    call z, $97bb                                 ; $5205: $cc $bb $97
    ld d, h                                       ; $5208: $54
    inc [hl]                                      ; $5209: $34
    ld h, a                                       ; $520a: $67
    sbc d                                         ; $520b: $9a
    xor c                                         ; $520c: $a9
    sub a                                         ; $520d: $97
    ld h, a                                       ; $520e: $67
    ld [hl], a                                    ; $520f: $77
    adc b                                         ; $5210: $88
    adc b                                         ; $5211: $88
    ld h, l                                       ; $5212: $65
    ld h, [hl]                                    ; $5213: $66
    ld a, c                                       ; $5214: $79
    cp e                                          ; $5215: $bb
    cp d                                          ; $5216: $ba
    add [hl]                                      ; $5217: $86
    ld b, d                                       ; $5218: $42
    inc h                                         ; $5219: $24
    ld l, c                                       ; $521a: $69
    call z, $a7dc                                 ; $521b: $cc $dc $a7
    ld h, h                                       ; $521e: $64
    inc sp                                        ; $521f: $33
    ld b, l                                       ; $5220: $45
    adc d                                         ; $5221: $8a
    cp h                                          ; $5222: $bc
    cp c                                          ; $5223: $b9
    ld [hl], l                                    ; $5224: $75
    inc sp                                        ; $5225: $33
    ld b, l                                       ; $5226: $45
    adc e                                         ; $5227: $8b
    call $85db                                    ; $5228: $cd $db $85
    ld [hl-], a                                   ; $522b: $32
    inc h                                         ; $522c: $24
    ld l, d                                       ; $522d: $6a
    sbc $ec                                       ; $522e: $de $ec
    sub [hl]                                      ; $5230: $96
    ld sp, $5913                                  ; $5231: $31 $13 $59
    adc $ed                                       ; $5234: $ce $ed
    and a                                         ; $5236: $a7
    ld b, c                                       ; $5237: $41
    ld [bc], a                                    ; $5238: $02
    ld c, b                                       ; $5239: $48
    adc $ee                                       ; $523a: $ce $ee
    and a                                         ; $523c: $a7
    ld b, c                                       ; $523d: $41
    ld [bc], a                                    ; $523e: $02
    ld b, a                                       ; $523f: $47
    cp [hl]                                       ; $5240: $be
    db $ed                                        ; $5241: $ed
    or a                                          ; $5242: $b7
    ld b, d                                       ; $5243: $42
    ld bc, $be47                                  ; $5244: $01 $47 $be
    db $ed                                        ; $5247: $ed
    or a                                          ; $5248: $b7
    ld [hl-], a                                   ; $5249: $32
    ld bc, $be48                                  ; $524a: $01 $48 $be
    db $fd                                        ; $524d: $fd
    and a                                         ; $524e: $a7
    ld sp, $5912                                  ; $524f: $31 $12 $59
    adc $fc                                       ; $5252: $ce $fc
    and [hl]                                      ; $5254: $a6
    ld sp, $6a12                                  ; $5255: $31 $12 $6a
    sbc $ec                                       ; $5258: $de $ec
    sub l                                         ; $525a: $95
    ld hl, $7b13                                  ; $525b: $21 $13 $7b
    rst $28                                       ; $525e: $ef
    db $eb                                        ; $525f: $eb
    add h                                         ; $5260: $84
    ld hl, $8c14                                  ; $5261: $21 $14 $8c
    rst $28                                       ; $5264: $ef
    jp c, Jump_000_1163                           ; $5265: $da $63 $11

    ld h, $ad                                     ; $5268: $26 $ad
    cp $c8                                        ; $526a: $fe $c8
    ld d, d                                       ; $526c: $52
    ld bc, $be37                                  ; $526d: $01 $37 $be
    xor $b6                                       ; $5270: $ee $b6
    ld b, c                                       ; $5272: $41
    ld [bc], a                                    ; $5273: $02
    ld e, c                                       ; $5274: $59
    rst $18                                       ; $5275: $df
    db $ed                                        ; $5276: $ed
    sub l                                         ; $5277: $95
    ld hl, $7a03                                  ; $5278: $21 $03 $7a
    rst $28                                       ; $527b: $ef
    db $eb                                        ; $527c: $eb
    add h                                         ; $527d: $84
    ld de, $8c14                                  ; $527e: $11 $14 $8c
    rst $28                                       ; $5281: $ef
    jp c, Jump_000_1163                           ; $5282: $da $63 $11

    dec h                                         ; $5285: $25
    xor l                                         ; $5286: $ad
    rst $28                                       ; $5287: $ef
    ret z                                         ; $5288: $c8

Jump_017_5289:
    ld d, d                                       ; $5289: $52
    ld bc, $be37                                  ; $528a: $01 $37 $be
    xor $b7                                       ; $528d: $ee $b7
    ld b, c                                       ; $528f: $41
    ld [bc], a                                    ; $5290: $02
    ld e, b                                       ; $5291: $58
    rst $18                                       ; $5292: $df
    db $ed                                        ; $5293: $ed
    sub l                                         ; $5294: $95
    ld hl, $6a03                                  ; $5295: $21 $03 $6a
    rst $18                                       ; $5298: $df
    db $eb                                        ; $5299: $eb
    add h                                         ; $529a: $84
    ld de, $8b14                                  ; $529b: $11 $14 $8b
    rst $28                                       ; $529e: $ef
    jp c, Jump_000_1183                           ; $529f: $da $83 $11

    dec h                                         ; $52a2: $25
    xor l                                         ; $52a3: $ad
    rst $28                                       ; $52a4: $ef
    ret z                                         ; $52a5: $c8

    ld d, d                                       ; $52a6: $52
    ld bc, $be37                                  ; $52a7: $01 $37 $be
    xor $b7                                       ; $52aa: $ee $b7
    ld b, c                                       ; $52ac: $41
    ld [bc], a                                    ; $52ad: $02
    ld e, b                                       ; $52ae: $58
    rst $18                                       ; $52af: $df
    db $ed                                        ; $52b0: $ed
    and l                                         ; $52b1: $a5
    ld sp, $6a03                                  ; $52b2: $31 $03 $6a
    rst $28                                       ; $52b5: $ef
    db $ec                                        ; $52b6: $ec

Call_017_52b7:
    add h                                         ; $52b7: $84
    ld hl, $8b14                                  ; $52b8: $21 $14 $8b
    rst $28                                       ; $52bb: $ef
    jp c, Jump_000_1163                           ; $52bc: $da $63 $11

    ld h, $ad                                     ; $52bf: $26 $ad
    rst $38                                       ; $52c1: $ff
    ret z                                         ; $52c2: $c8

    ld d, d                                       ; $52c3: $52
    ld bc, $ce37                                  ; $52c4: $01 $37 $ce
    cp $b7                                        ; $52c7: $fe $b7

Call_017_52c9:
    ld b, c                                       ; $52c9: $41
    ld [bc], a                                    ; $52ca: $02
    ld e, c                                       ; $52cb: $59
    rst $18                                       ; $52cc: $df
    db $ed                                        ; $52cd: $ed
    sub l                                         ; $52ce: $95
    ld hl, $6a03                                  ; $52cf: $21 $03 $6a
    rst $28                                       ; $52d2: $ef
    db $eb                                        ; $52d3: $eb
    add e                                         ; $52d4: $83
    db $10                                        ; $52d5: $10
    inc d                                         ; $52d6: $14
    adc h                                         ; $52d7: $8c
    rst $38                                       ; $52d8: $ff
    jp z, Jump_000_1162                           ; $52d9: $ca $62 $11

    ld h, $ad                                     ; $52dc: $26 $ad
    cp $b8                                        ; $52de: $fe $b8
    ld b, c                                       ; $52e0: $41
    ld bc, $ce48                                  ; $52e1: $01 $48 $ce
    db $fd                                        ; $52e4: $fd
    and [hl]                                      ; $52e5: $a6
    jr nc, jr_017_52fb                            ; $52e6: $30 $13

    ld e, d                                       ; $52e8: $5a
    sbc $ec                                       ; $52e9: $de $ec
    add h                                         ; $52eb: $84
    jr nz, jr_017_5302                            ; $52ec: $20 $14

    ld a, e                                       ; $52ee: $7b
    rst $38                                       ; $52ef: $ff
    db $db                                        ; $52f0: $db
    ld h, e                                       ; $52f1: $63
    db $10                                        ; $52f2: $10
    dec h                                         ; $52f3: $25
    sbc h                                         ; $52f4: $9c
    xor $ca                                       ; $52f5: $ee $ca
    ld h, e                                       ; $52f7: $63
    ld hl, $8b36                                  ; $52f8: $21 $36 $8b

jr_017_52fb:
    db $ed                                        ; $52fb: $ed
    cp c                                          ; $52fc: $b9
    ld d, e                                       ; $52fd: $53
    inc sp                                        ; $52fe: $33
    ld c, b                                       ; $52ff: $48
    cp h                                          ; $5300: $bc
    db $db                                        ; $5301: $db

jr_017_5302:
    add a                                         ; $5302: $87
    ld b, d                                       ; $5303: $42
    dec h                                         ; $5304: $25
    ld a, c                                       ; $5305: $79
    cp h                                          ; $5306: $bc
    db $db                                        ; $5307: $db
    ld [hl], h                                    ; $5308: $74
    inc [hl]                                      ; $5309: $34
    ld d, [hl]                                    ; $530a: $56
    adc e                                         ; $530b: $8b
    bit 6, h                                      ; $530c: $cb $74
    inc [hl]                                      ; $530e: $34
    ld d, a                                       ; $530f: $57
    xor l                                         ; $5310: $ad
    db $fd                                        ; $5311: $fd
    sub l                                         ; $5312: $95
    ld [hl-], a                                   ; $5313: $32
    ld de, $cd59                                  ; $5314: $11 $59 $cd
    res 4, a                                      ; $5317: $cb $a7
    ld b, e                                       ; $5319: $43
    ld b, a                                       ; $531a: $47
    sbc d                                         ; $531b: $9a
    xor d                                         ; $531c: $aa
    sub [hl]                                      ; $531d: $96
    ld sp, $9b36                                  ; $531e: $31 $36 $9b
    rst $28                                       ; $5321: $ef
    jp c, Jump_000_2152                           ; $5322: $da $52 $21

    dec h                                         ; $5325: $25
    sbc h                                         ; $5326: $9c
    db $db                                        ; $5327: $db
    sub a                                         ; $5328: $97
    ld h, h                                       ; $5329: $64
    ld b, [hl]                                    ; $532a: $46
    xor l                                         ; $532b: $ad
    jp c, Jump_000_3185                           ; $532c: $da $85 $31

    inc bc                                        ; $532f: $03
    adc e                                         ; $5330: $8b
    sbc $ed                                       ; $5331: $de $ed
    sub l                                         ; $5333: $95
    ld [hl+], a                                   ; $5334: $22
    dec [hl]                                      ; $5335: $35
    ld a, d                                       ; $5336: $7a
    call z, Call_017_4495                         ; $5337: $cc $95 $44
    ld b, [hl]                                    ; $533a: $46
    sbc h                                         ; $533b: $9c
    cp $a7                                        ; $533c: $fe $a7
    ld b, d                                       ; $533e: $42
    ld de, $bd38                                  ; $533f: $11 $38 $bd
    call c, Call_017_53b8                         ; $5342: $dc $b8 $53
    ld b, [hl]                                    ; $5345: $46
    ld a, c                                       ; $5346: $79
    xor e                                         ; $5347: $ab
    and a                                         ; $5348: $a7
    ld b, d                                       ; $5349: $42
    dec [hl]                                      ; $534a: $35
    adc d                                         ; $534b: $8a
    rst $18                                       ; $534c: $df
    ld [$2163], a                                 ; $534d: $ea $63 $21
    inc d                                         ; $5350: $14
    adc e                                         ; $5351: $8b
    call c, Call_017_74b9                         ; $5352: $dc $b9 $74
    dec [hl]                                      ; $5355: $35
    adc d                                         ; $5356: $8a
    cp e                                          ; $5357: $bb
    sbc b                                         ; $5358: $98
    ld b, d                                       ; $5359: $42
    inc de                                        ; $535a: $13
    ld l, d                                       ; $535b: $6a
    adc $fd                                       ; $535c: $ce $fd
    sub l                                         ; $535e: $95
    ld [hl+], a                                   ; $535f: $22
    inc hl                                        ; $5360: $23
    ld e, d                                       ; $5361: $5a
    call Call_017_65b8                            ; $5362: $cd $b8 $65
    inc [hl]                                      ; $5365: $34
    adc h                                         ; $5366: $8c
    db $ed                                        ; $5367: $ed
    and a                                         ; $5368: $a7
    ld d, d                                       ; $5369: $52
    ld bc, $bd48                                  ; $536a: $01 $48 $bd
    xor $c8                                       ; $536d: $ee $c8
    ld b, d                                       ; $536f: $42
    inc [hl]                                      ; $5370: $34
    ld e, b                                       ; $5371: $58
    cp h                                          ; $5372: $bc
    cp b                                          ; $5373: $b8
    ld d, e                                       ; $5374: $53
    ld b, h                                       ; $5375: $44
    ld a, d                                       ; $5376: $7a
    rst $28                                       ; $5377: $ef
    reti                                          ; $5378: $d9


    ld d, e                                       ; $5379: $53
    db $10                                        ; $537a: $10
    dec d                                         ; $537b: $15
    sbc h                                         ; $537c: $9c
    db $dd                                        ; $537d: $dd
    jp z, $3463                                   ; $537e: $ca $63 $34

    ld l, b                                       ; $5381: $68
    xor e                                         ; $5382: $ab
    cp c                                          ; $5383: $b9
    ld d, e                                       ; $5384: $53
    inc [hl]                                      ; $5385: $34

Jump_017_5386:
    ld l, c                                       ; $5386: $69
    rst $08                                       ; $5387: $cf
    db $eb                                        ; $5388: $eb
    ld [hl], h                                    ; $5389: $74
    db $10                                        ; $538a: $10
    inc d                                         ; $538b: $14
    adc e                                         ; $538c: $8b
    db $dd                                        ; $538d: $dd
    jp z, Jump_000_3474                           ; $538e: $ca $74 $34

    ld l, c                                       ; $5391: $69
    cp h                                          ; $5392: $bc
    cp c                                          ; $5393: $b9
    ld d, e                                       ; $5394: $53
    inc hl                                        ; $5395: $23

Call_017_5396:
    ld l, c                                       ; $5396: $69
    rst $08                                       ; $5397: $cf

Jump_017_5398:
    db $fc                                        ; $5398: $fc
    add h                                         ; $5399: $84
    db $10                                        ; $539a: $10
    inc de                                        ; $539b: $13
    ld a, e                                       ; $539c: $7b
    sbc $ca                                       ; $539d: $de $ca
    ld [hl], h                                    ; $539f: $74
    inc [hl]                                      ; $53a0: $34
    ld l, c                                       ; $53a1: $69
    cp e                                          ; $53a2: $bb
    xor b                                         ; $53a3: $a8
    ld d, d                                       ; $53a4: $52
    inc hl                                        ; $53a5: $23
    ld l, d                                       ; $53a6: $6a

Call_017_53a7:
    rst $18                                       ; $53a7: $df

Call_017_53a8:
    db $fc                                        ; $53a8: $fc
    sub l                                         ; $53a9: $95
    jr nz, @+$15                                  ; $53aa: $20 $13

    ld a, d                                       ; $53ac: $7a
    call Call_017_64c9                            ; $53ad: $cd $c9 $64
    dec [hl]                                      ; $53b0: $35
    adc e                                         ; $53b1: $8b
    call c, Call_000_31a6                         ; $53b2: $dc $a6 $31
    ld [de], a                                    ; $53b5: $12
    ld l, d                                       ; $53b6: $6a
    rst $18                                       ; $53b7: $df

Call_017_53b8:
    db $fd                                        ; $53b8: $fd
    sub l                                         ; $53b9: $95
    ld hl, $7a24                                  ; $53ba: $21 $24 $7a
    call z, $43a7                                 ; $53bd: $cc $a7 $43
    ld b, [hl]                                    ; $53c0: $46
    sbc h                                         ; $53c1: $9c
    xor $a6                                       ; $53c2: $ee $a6
    jr nc, @+$04                                  ; $53c4: $30 $02

    ld c, b                                       ; $53c6: $48
    adc $fd                                       ; $53c7: $ce $fd
    and [hl]                                      ; $53c9: $a6
    ld b, d                                       ; $53ca: $42
    dec [hl]                                      ; $53cb: $35
    ld a, d                                       ; $53cc: $7a
    res 2, [hl]                                   ; $53cd: $cb $96
    ld [hl-], a                                   ; $53cf: $32
    ld [hl], $ad                                  ; $53d0: $36 $ad
    cp $b7                                        ; $53d2: $fe $b7
    ld b, c                                       ; $53d4: $41
    ld bc, $bd47                                  ; $53d5: $01 $47 $bd
    db $ec                                        ; $53d8: $ec
    and a                                         ; $53d9: $a7
    ld b, e                                       ; $53da: $43
    ld b, a                                       ; $53db: $47
    sbc e                                         ; $53dc: $9b
    cp d                                          ; $53dd: $ba
    add l                                         ; $53de: $85
    ld [hl+], a                                   ; $53df: $22
    ld [hl], $ad                                  ; $53e0: $36 $ad
    rst $38                                       ; $53e2: $ff
    ret z                                         ; $53e3: $c8

    ld b, c                                       ; $53e4: $41
    ld bc, $bd47                                  ; $53e5: $01 $47 $bd
    db $db                                        ; $53e8: $db
    add [hl]                                      ; $53e9: $86
    ld b, h                                       ; $53ea: $44
    ld l, c                                       ; $53eb: $69
    call Call_017_63c9                            ; $53ec: $cd $c9 $63
    ld de, $ae36                                  ; $53ef: $11 $36 $ae
    cp $c8                                        ; $53f2: $fe $c8
    ld d, d                                       ; $53f4: $52
    ld [de], a                                    ; $53f5: $12
    ld e, b                                       ; $53f6: $58
    cp l                                          ; $53f7: $bd
    ret                                           ; $53f8: $c9


    ld h, e                                       ; $53f9: $63
    inc [hl]                                      ; $53fa: $34
    ld a, e                                       ; $53fb: $7b
    xor $d9                                       ; $53fc: $ee $d9
    ld d, c                                       ; $53fe: $51
    nop                                           ; $53ff: $00
    ld [hl], $ad                                  ; $5400: $36 $ad
    xor $c8                                       ; $5402: $ee $c8
    ld d, e                                       ; $5404: $53
    inc [hl]                                      ; $5405: $34
    ld l, c                                       ; $5406: $69
    cp h                                          ; $5407: $bc
    and a                                         ; $5408: $a7
    ld b, d                                       ; $5409: $42
    dec h                                         ; $540a: $25
    adc h                                         ; $540b: $8c
    rst $28                                       ; $540c: $ef
    reti                                          ; $540d: $d9


    ld d, d                                       ; $540e: $52
    nop                                           ; $540f: $00
    ld [hl], $9c                                  ; $5410: $36 $9c
    db $dd                                        ; $5412: $dd
    or a                                          ; $5413: $b7
    ld d, e                                       ; $5414: $53
    ld b, [hl]                                    ; $5415: $46
    sbc e                                         ; $5416: $9b
    jp z, Jump_000_3185                           ; $5417: $ca $85 $31

    dec [hl]                                      ; $541a: $35
    sbc l                                         ; $541b: $9d
    rst $38                                       ; $541c: $ff
    reti                                          ; $541d: $d9


    ld d, d                                       ; $541e: $52
    ld bc, $ad37                                  ; $541f: $01 $37 $ad
    db $db                                        ; $5422: $db
    sub l                                         ; $5423: $95
    inc [hl]                                      ; $5424: $34
    ld e, c                                       ; $5425: $59
    call Call_017_63c9                            ; $5426: $cd $c9 $63
    ld de, $be37                                  ; $5429: $11 $37 $be
    cp $b7                                        ; $542c: $fe $b7
    ld b, d                                       ; $542e: $42
    ld [de], a                                    ; $542f: $12
    ld l, c                                       ; $5430: $69
    call Call_017_63b8                            ; $5431: $cd $b8 $63
    dec [hl]                                      ; $5434: $35
    adc h                                         ; $5435: $8c
    db $ed                                        ; $5436: $ed
    or a                                          ; $5437: $b7
    ld sp, $5902                                  ; $5438: $31 $02 $59
    rst $08                                       ; $543b: $cf
    db $ec                                        ; $543c: $ec
    sub l                                         ; $543d: $95
    ld [hl-], a                                   ; $543e: $32
    dec [hl]                                      ; $543f: $35
    adc e                                         ; $5440: $8b
    res 0, l                                      ; $5441: $cb $85
    inc sp                                        ; $5443: $33
    ld e, b                                       ; $5444: $58
    cp [hl]                                       ; $5445: $be
    db $ec                                        ; $5446: $ec
    add h                                         ; $5447: $84
    db $10                                        ; $5448: $10
    inc de                                        ; $5449: $13
    ld a, e                                       ; $544a: $7b
    sbc $da                                       ; $544b: $de $da
    ld [hl], h                                    ; $544d: $74
    inc [hl]                                      ; $544e: $34
    ld e, b                                       ; $544f: $58
    cp e                                          ; $5450: $bb
    cp b                                          ; $5451: $b8
    ld d, e                                       ; $5452: $53
    inc hl                                        ; $5453: $23
    ld a, e                                       ; $5454: $7b
    rst $28                                       ; $5455: $ef
    db $eb                                        ; $5456: $eb
    ld [hl], e                                    ; $5457: $73
    db $10                                        ; $5458: $10
    dec h                                         ; $5459: $25
    sbc e                                         ; $545a: $9b
    call c, $43a7                                 ; $545b: $dc $a7 $43
    ld b, a                                       ; $545e: $47
    xor l                                         ; $545f: $ad
    db $db                                        ; $5460: $db
    add h                                         ; $5461: $84
    ld hl, $9c25                                  ; $5462: $21 $25 $9c
    xor $d9                                       ; $5465: $ee $d9
    ld h, e                                       ; $5467: $63
    inc hl                                        ; $5468: $23
    ld e, b                                       ; $5469: $58
    cp h                                          ; $546a: $bc
    cp c                                          ; $546b: $b9
    ld d, e                                       ; $546c: $53
    inc h                                         ; $546d: $24
    ld a, e                                       ; $546e: $7b
    rst $28                                       ; $546f: $ef
    jp c, Jump_000_0062                           ; $5470: $da $62 $00

    ld h, $9c                                     ; $5473: $26 $9c
    db $dd                                        ; $5475: $dd
    cp b                                          ; $5476: $b8
    ld d, e                                       ; $5477: $53
    ld b, [hl]                                    ; $5478: $46
    sbc h                                         ; $5479: $9c
    jp z, Jump_000_2184                           ; $547a: $ca $84 $21

    ld h, $ad                                     ; $547d: $26 $ad
    rst $38                                       ; $547f: $ff
    ret                                           ; $5480: $c9


    ld d, d                                       ; $5481: $52
    ld [de], a                                    ; $5482: $12
    ld c, b                                       ; $5483: $48
    cp h                                          ; $5484: $bc
    jp z, Jump_000_3474                           ; $5485: $ca $74 $34

    adc e                                         ; $5488: $8b
    xor $b7                                       ; $5489: $ee $b7
    ld sp, $4801                                  ; $548b: $31 $01 $48
    adc $fd                                       ; $548e: $ce $fd
    and [hl]                                      ; $5490: $a6
    ld [hl-], a                                   ; $5491: $32
    inc h                                         ; $5492: $24
    ld a, e                                       ; $5493: $7b
    call z, Call_000_3396                         ; $5494: $cc $96 $33

Call_017_5497:
    ld b, a                                       ; $5497: $47
    cp [hl]                                       ; $5498: $be
    db $fd                                        ; $5499: $fd
    sub l                                         ; $549a: $95
    db $10                                        ; $549b: $10
    inc de                                        ; $549c: $13
    ld l, d                                       ; $549d: $6a
    sbc $da                                       ; $549e: $de $da
    add l                                         ; $54a0: $85
    inc [hl]                                      ; $54a1: $34
    ld l, b                                       ; $54a2: $68
    cp e                                          ; $54a3: $bb
    xor b                                         ; $54a4: $a8
    ld d, e                                       ; $54a5: $53
    inc hl                                        ; $54a6: $23

Call_017_54a7:
    ld a, e                                       ; $54a7: $7b
    rst $28                                       ; $54a8: $ef
    db $eb                                        ; $54a9: $eb
    ld [hl], e                                    ; $54aa: $73
    nop                                           ; $54ab: $00
    dec h                                         ; $54ac: $25
    sbc h                                         ; $54ad: $9c
    db $dd                                        ; $54ae: $dd
    and a                                         ; $54af: $a7
    ld d, e                                       ; $54b0: $53
    ld b, a                                       ; $54b1: $47
    xor h                                         ; $54b2: $ac
    jp z, Jump_000_1174                           ; $54b3: $ca $74 $11

    ld [hl], $ae                                  ; $54b6: $36 $ae

Call_017_54b8:
    rst $38                                       ; $54b8: $ff

Call_017_54b9:
    ret z                                         ; $54b9: $c8

    ld b, c                                       ; $54ba: $41
    ld [de], a                                    ; $54bb: $12
    ld e, b                                       ; $54bc: $58
    call Call_017_64c9                            ; $54bd: $cd $c9 $64
    dec [hl]                                      ; $54c0: $35
    adc h                                         ; $54c1: $8c
    xor $b7                                       ; $54c2: $ee $b7
    jr nc, @+$04                                  ; $54c4: $30 $02

    ld c, c                                       ; $54c6: $49
    adc $fd                                       ; $54c7: $ce $fd
    sub [hl]                                      ; $54c9: $96
    ld [hl-], a                                   ; $54ca: $32
    dec [hl]                                      ; $54cb: $35
    adc e                                         ; $54cc: $8b
    res 0, l                                      ; $54cd: $cb $85
    inc sp                                        ; $54cf: $33
    ld e, b                                       ; $54d0: $58
    cp [hl]                                       ; $54d1: $be
    db $fc                                        ; $54d2: $fc
    add l                                         ; $54d3: $85
    db $10                                        ; $54d4: $10
    inc de                                        ; $54d5: $13
    ld a, e                                       ; $54d6: $7b
    sbc $da                                       ; $54d7: $de $da
    ld [hl], h                                    ; $54d9: $74
    inc [hl]                                      ; $54da: $34
    ld l, b                                       ; $54db: $68
    cp e                                          ; $54dc: $bb
    xor b                                         ; $54dd: $a8
    ld d, d                                       ; $54de: $52
    inc h                                         ; $54df: $24
    adc e                                         ; $54e0: $8b
    rst $28                                       ; $54e1: $ef
    jp c, $0152                                   ; $54e2: $da $52 $01

    ld [hl], $ad                                  ; $54e5: $36 $ad
    db $ed                                        ; $54e7: $ed
    and [hl]                                      ; $54e8: $a6
    ld b, e                                       ; $54e9: $43
    ld b, a                                       ; $54ea: $47
    sbc e                                         ; $54eb: $9b
    jp z, Jump_000_2274                           ; $54ec: $ca $74 $22

    ld b, a                                       ; $54ef: $47
    cp [hl]                                       ; $54f0: $be
    cp $a6                                        ; $54f1: $fe $a6
    jr nz, @+$05                                  ; $54f3: $20 $03

    ld l, d                                       ; $54f5: $6a
    call Call_017_64ca                            ; $54f6: $cd $ca $64
    inc [hl]                                      ; $54f9: $34
    ld a, d                                       ; $54fa: $7a
    call z, Call_017_42a7                         ; $54fb: $cc $a7 $42
    inc de                                        ; $54fe: $13
    ld a, e                                       ; $54ff: $7b
    rst $28                                       ; $5500: $ef
    db $eb                                        ; $5501: $eb
    ld [hl], e                                    ; $5502: $73
    ld de, $ac36                                  ; $5503: $11 $36 $ac
    db $db                                        ; $5506: $db
    add l                                         ; $5507: $85
    inc [hl]                                      ; $5508: $34
    ld l, c                                       ; $5509: $69
    sbc $d9                                       ; $550a: $de $d9
    ld d, d                                       ; $550c: $52
    ld bc, $be37                                  ; $550d: $01 $37 $be
    cp $b7                                        ; $5510: $fe $b7
    ld b, d                                       ; $5512: $42
    dec h                                         ; $5513: $25
    ld a, d                                       ; $5514: $7a
    res 2, [hl]                                   ; $5515: $cb $96
    ld [hl-], a                                   ; $5517: $32
    ld b, a                                       ; $5518: $47
    cp [hl]                                       ; $5519: $be
    db $fd                                        ; $551a: $fd
    and l                                         ; $551b: $a5
    jr nz, @+$05                                  ; $551c: $20 $03

    ld l, d                                       ; $551e: $6a
    db $dd                                        ; $551f: $dd
    jp z, Jump_017_4564                           ; $5520: $ca $64 $45

    ld a, d                                       ; $5523: $7a
    cp e                                          ; $5524: $bb
    sub [hl]                                      ; $5525: $96
    ld [hl-], a                                   ; $5526: $32
    dec h                                         ; $5527: $25
    adc h                                         ; $5528: $8c
    rst $38                                       ; $5529: $ff
    reti                                          ; $552a: $d9


    ld d, d                                       ; $552b: $52
    ld bc, $bd47                                  ; $552c: $01 $47 $bd
    jp z, Jump_017_4485                           ; $552f: $ca $85 $44

    ld a, e                                       ; $5532: $7b
    db $dd                                        ; $5533: $dd
    and a                                         ; $5534: $a7
    ld sp, $6a12                                  ; $5535: $31 $12 $6a
    rst $18                                       ; $5538: $df
    db $ec                                        ; $5539: $ec
    add l                                         ; $553a: $85
    ld hl, $9c36                                  ; $553b: $21 $36 $9c
    jp z, Jump_000_3474                           ; $553e: $ca $74 $34

    ld l, d                                       ; $5541: $6a
    rst $18                                       ; $5542: $df
    jp c, Jump_000_0051                           ; $5543: $da $51 $00

    scf                                           ; $5546: $37
    xor l                                         ; $5547: $ad
    db $ed                                        ; $5548: $ed
    and a                                         ; $5549: $a7
    ld b, e                                       ; $554a: $43
    dec [hl]                                      ; $554b: $35
    adc e                                         ; $554c: $8b
    cp d                                          ; $554d: $ba
    add l                                         ; $554e: $85
    ld [hl+], a                                   ; $554f: $22
    ld c, b                                       ; $5550: $48
    adc $fd                                       ; $5551: $ce $fd
    sub l                                         ; $5553: $95
    db $10                                        ; $5554: $10
    inc de                                        ; $5555: $13
    ld a, e                                       ; $5556: $7b
    db $dd                                        ; $5557: $dd
    ret                                           ; $5558: $c9


    ld d, e                                       ; $5559: $53
    ld b, l                                       ; $555a: $45
    adc e                                         ; $555b: $8b
    res 0, l                                      ; $555c: $cb $85
    ld sp, $9d25                                  ; $555e: $31 $25 $9d
    rst $38                                       ; $5561: $ff
    ret z                                         ; $5562: $c8

    ld b, c                                       ; $5563: $41
    ld bc, $bd58                                  ; $5564: $01 $58 $bd
    ret                                           ; $5567: $c9


    ld h, h                                       ; $5568: $64
    dec [hl]                                      ; $5569: $35
    adc e                                         ; $556a: $8b
    db $ed                                        ; $556b: $ed
    and [hl]                                      ; $556c: $a6
    ld sp, $6a02                                  ; $556d: $31 $02 $6a
    rst $18                                       ; $5570: $df
    db $ec                                        ; $5571: $ec
    add h                                         ; $5572: $84
    ld [hl+], a                                   ; $5573: $22
    ld [hl], $ac                                  ; $5574: $36 $ac
    jp z, Jump_000_3474                           ; $5576: $ca $74 $34

    ld a, d                                       ; $5579: $7a
    rst $28                                       ; $557a: $ef
    reti                                          ; $557b: $d9


    ld d, c                                       ; $557c: $51
    ld bc, $bd37                                  ; $557d: $01 $37 $bd
    db $ed                                        ; $5580: $ed
    and [hl]                                      ; $5581: $a6
    ld b, e                                       ; $5582: $43
    ld b, [hl]                                    ; $5583: $46
    sbc e                                         ; $5584: $9b
    cp d                                          ; $5585: $ba

Jump_017_5586:
    ld [hl], h                                    ; $5586: $74
    ld [hl+], a                                   ; $5587: $22
    ld e, c                                       ; $5588: $59
    rst $18                                       ; $5589: $df
    db $fc                                        ; $558a: $fc
    add h                                         ; $558b: $84
    nop                                           ; $558c: $00
    dec d                                         ; $558d: $15
    sbc h                                         ; $558e: $9c
    db $dd                                        ; $558f: $dd
    and a                                         ; $5590: $a7
    ld b, e                                       ; $5591: $43
    ld e, b                                       ; $5592: $58
    cp l                                          ; $5593: $bd
    jp z, Jump_000_1163                           ; $5594: $ca $63 $11

    scf                                           ; $5597: $37
    cp [hl]                                       ; $5598: $be
    db $fd                                        ; $5599: $fd
    and [hl]                                      ; $559a: $a6
    ld sp, $8c25                                  ; $559b: $31 $25 $8c
    res 0, l                                      ; $559e: $cb $85
    ld [hl-], a                                   ; $55a0: $32
    ld c, b                                       ; $55a1: $48
    cp [hl]                                       ; $55a2: $be
    db $ec                                        ; $55a3: $ec
    add l                                         ; $55a4: $85
    ld hl, $8c24                                  ; $55a5: $21 $24 $8c
    db $ed                                        ; $55a8: $ed
    and a                                         ; $55a9: $a7
    ld b, e                                       ; $55aa: $43
    ld [hl], $ad                                  ; $55ab: $36 $ad
    db $db                                        ; $55ad: $db
    add h                                         ; $55ae: $84
    ld de, $ad26                                  ; $55af: $11 $26 $ad
    cp $b8                                        ; $55b2: $fe $b8
    ld b, d                                       ; $55b4: $42
    inc hl                                        ; $55b5: $23
    ld l, d                                       ; $55b6: $6a
    call z, Call_000_32a6                         ; $55b7: $cc $a6 $32
    ld b, a                                       ; $55ba: $47
    cp [hl]                                       ; $55bb: $be
    db $fd                                        ; $55bc: $fd
    sub h                                         ; $55bd: $94
    db $10                                        ; $55be: $10
    inc de                                        ; $55bf: $13
    adc e                                         ; $55c0: $8b
    sbc $c9                                       ; $55c1: $de $c9
    ld h, h                                       ; $55c3: $64
    ld b, l                                       ; $55c4: $45
    ld a, d                                       ; $55c5: $7a
    cp d                                          ; $55c6: $ba
    add l                                         ; $55c7: $85
    ld [hl+], a                                   ; $55c8: $22
    ld b, a                                       ; $55c9: $47
    cp [hl]                                       ; $55ca: $be
    cp $a6                                        ; $55cb: $fe $a6
    jr nz, jr_017_55e2                            ; $55cd: $20 $13

    ld a, e                                       ; $55cf: $7b
    call Call_017_54b8                            ; $55d0: $cd $b8 $54
    ld e, b                                       ; $55d3: $58
    cp h                                          ; $55d4: $bc
    ret                                           ; $55d5: $c9


    ld d, e                                       ; $55d6: $53
    ld de, $cf48                                  ; $55d7: $11 $48 $cf
    db $fd                                        ; $55da: $fd
    and [hl]                                      ; $55db: $a6
    ld sp, $8b24                                  ; $55dc: $31 $24 $8b
    res 2, l                                      ; $55df: $cb $95
    inc [hl]                                      ; $55e1: $34

jr_017_55e2:
    ld l, c                                       ; $55e2: $69
    sbc $da                                       ; $55e3: $de $da
    ld d, d                                       ; $55e5: $52
    ld bc, $be37                                  ; $55e6: $01 $37 $be
    db $ed                                        ; $55e9: $ed
    and [hl]                                      ; $55ea: $a6
    ld b, d                                       ; $55eb: $42
    ld [hl], $9b                                  ; $55ec: $36 $9b
    jp z, Jump_000_2374                           ; $55ee: $ca $74 $23

    ld e, c                                       ; $55f1: $59
    rst $18                                       ; $55f2: $df
    db $eb                                        ; $55f3: $eb
    ld [hl], e                                    ; $55f4: $73
    nop                                           ; $55f5: $00
    ld h, $9d                                     ; $55f6: $26 $9d
    db $dd                                        ; $55f8: $dd
    and [hl]                                      ; $55f9: $a6
    ld b, e                                       ; $55fa: $43
    ld b, a                                       ; $55fb: $47
    xor h                                         ; $55fc: $ac
    jp z, $1263                                   ; $55fd: $ca $63 $12

    ld e, c                                       ; $5600: $59
    rst $18                                       ; $5601: $df
    db $fc                                        ; $5602: $fc
    add h                                         ; $5603: $84
    db $10                                        ; $5604: $10
    dec h                                         ; $5605: $25
    sbc h                                         ; $5606: $9c
    call c, Call_000_33a6                         ; $5607: $dc $a6 $33
    ld e, b                                       ; $560a: $58
    call Call_017_52c9                            ; $560b: $cd $c9 $52
    ld de, $cf48                                  ; $560e: $11 $48 $cf
    db $fd                                        ; $5611: $fd
    sub l                                         ; $5612: $95
    ld hl, $9c25                                  ; $5613: $21 $25 $9c
    db $db                                        ; $5616: $db
    add l                                         ; $5617: $85
    inc [hl]                                      ; $5618: $34
    ld l, d                                       ; $5619: $6a
    sbc $c8                                       ; $561a: $de $c8
    ld b, c                                       ; $561c: $41
    ld bc, $cf59                                  ; $561d: $01 $59 $cf
    db $ec                                        ; $5620: $ec
    add l                                         ; $5621: $85
    ld [hl-], a                                   ; $5622: $32
    ld b, a                                       ; $5623: $47
    xor h                                         ; $5624: $ac
    cp c                                          ; $5625: $b9
    ld d, e                                       ; $5626: $53
    dec [hl]                                      ; $5627: $35
    adc h                                         ; $5628: $8c
    xor $b7                                       ; $5629: $ee $b7
    jr nc, @+$04                                  ; $562b: $30 $02

    ld l, d                                       ; $562d: $6a
    sbc $da                                       ; $562e: $de $da
    add h                                         ; $5630: $84
    inc [hl]                                      ; $5631: $34
    ld a, d                                       ; $5632: $7a
    call z, Call_000_32a7                         ; $5633: $cc $a7 $32
    dec h                                         ; $5636: $25
    sbc h                                         ; $5637: $9c
    xor $b7                                       ; $5638: $ee $b7
    ld sp, $7b13                                  ; $563a: $31 $13 $7b
    db $dd                                        ; $563d: $dd
    or a                                          ; $563e: $b7
    ld b, d                                       ; $563f: $42
    ld [hl], $9c                                  ; $5640: $36 $9c
    db $ec                                        ; $5642: $ec
    sub [hl]                                      ; $5643: $96
    ld hl, $9c24                                  ; $5644: $21 $24 $9c
    db $ed                                        ; $5647: $ed
    or a                                          ; $5648: $b7
    ld b, d                                       ; $5649: $42
    ld [hl], $ac                                  ; $564a: $36 $ac
    db $db                                        ; $564c: $db
    ld [hl], h                                    ; $564d: $74
    ld hl, $be37                                  ; $564e: $21 $37 $be
    db $fd                                        ; $5651: $fd
    and [hl]                                      ; $5652: $a6
    ld [hl-], a                                   ; $5653: $32
    dec h                                         ; $5654: $25
    adc e                                         ; $5655: $8b
    res 0, l                                      ; $5656: $cb $85
    inc [hl]                                      ; $5658: $34
    ld l, d                                       ; $5659: $6a
    sbc $d9                                       ; $565a: $de $d9
    ld b, c                                       ; $565c: $41
    ld bc, $be48                                  ; $565d: $01 $48 $be
    db $ec                                        ; $5660: $ec
    sub [hl]                                      ; $5661: $96
    ld b, h                                       ; $5662: $44
    ld d, a                                       ; $5663: $57
    xor e                                         ; $5664: $ab
    and a                                         ; $5665: $a7
    ld b, d                                       ; $5666: $42
    ld [hl], $ad                                  ; $5667: $36 $ad
    cp $b7                                        ; $5669: $fe $b7
    jr nc, @+$05                                  ; $566b: $30 $03

    ld l, d                                       ; $566d: $6a
    call Call_017_64b9                            ; $566e: $cd $b9 $64
    ld d, a                                       ; $5671: $57
    xor h                                         ; $5672: $ac
    cp c                                          ; $5673: $b9
    ld d, e                                       ; $5674: $53
    ld [de], a                                    ; $5675: $12
    ld e, c                                       ; $5676: $59
    rst $18                                       ; $5677: $df
    db $fc                                        ; $5678: $fc
    add h                                         ; $5679: $84
    ld hl, $9c26                                  ; $567a: $21 $26 $9c
    jp z, Jump_000_3474                           ; $567d: $ca $74 $34

    adc e                                         ; $5680: $8b
    xor $b7                                       ; $5681: $ee $b7
    jr nc, jr_017_5687                            ; $5683: $30 $02

    ld l, d                                       ; $5685: $6a
    rst $28                                       ; $5686: $ef

jr_017_5687:
    ld [$2363], a                                 ; $5687: $ea $63 $23
    ld e, c                                       ; $568a: $59
    cp h                                          ; $568b: $bc
    or a                                          ; $568c: $b7
    ld b, d                                       ; $568d: $42
    ld [hl], $9d                                  ; $568e: $36 $9d
    cp $b6                                        ; $5690: $fe $b6
    jr nz, jr_017_5697                            ; $5692: $20 $03

    ld a, e                                       ; $5694: $7b
    sbc $c9                                       ; $5695: $de $c9

jr_017_5697:
    ld d, e                                       ; $5697: $53
    dec [hl]                                      ; $5698: $35
    adc e                                         ; $5699: $8b
    res 2, l                                      ; $569a: $cb $95
    ld sp, $be37                                  ; $569c: $31 $37 $be
    db $fd                                        ; $569f: $fd
    and l                                         ; $56a0: $a5
    db $10                                        ; $56a1: $10
    inc d                                         ; $56a2: $14
    adc h                                         ; $56a3: $8c
    db $dd                                        ; $56a4: $dd
    and a                                         ; $56a5: $a7
    ld b, e                                       ; $56a6: $43
    ld b, a                                       ; $56a7: $47
    cp l                                          ; $56a8: $bd
    ret                                           ; $56a9: $c9


    ld h, e                                       ; $56aa: $63
    ld [de], a                                    ; $56ab: $12
    ld e, c                                       ; $56ac: $59
    rst $18                                       ; $56ad: $df
    db $fc                                        ; $56ae: $fc
    add h                                         ; $56af: $84
    ld de, $ac26                                  ; $56b0: $11 $26 $ac
    db $db                                        ; $56b3: $db
    add l                                         ; $56b4: $85
    inc [hl]                                      ; $56b5: $34
    ld a, e                                       ; $56b6: $7b
    db $dd                                        ; $56b7: $dd
    and [hl]                                      ; $56b8: $a6
    ld sp, $7b13                                  ; $56b9: $31 $13 $7b
    rst $28                                       ; $56bc: $ef
    jp c, Jump_000_2363                           ; $56bd: $da $63 $23

    ld e, b                                       ; $56c0: $58
    cp h                                          ; $56c1: $bc
    and a                                         ; $56c2: $a7
    ld b, e                                       ; $56c3: $43
    ld b, a                                       ; $56c4: $47
    xor l                                         ; $56c5: $ad
    db $ec                                        ; $56c6: $ec
    add h                                         ; $56c7: $84
    db $10                                        ; $56c8: $10
    dec h                                         ; $56c9: $25
    sbc h                                         ; $56ca: $9c
    xor $b7                                       ; $56cb: $ee $b7
    ld b, e                                       ; $56cd: $43
    dec [hl]                                      ; $56ce: $35
    adc e                                         ; $56cf: $8b
    res 0, h                                      ; $56d0: $cb $84
    ld [hl+], a                                   ; $56d2: $22
    ld e, c                                       ; $56d3: $59
    rst $08                                       ; $56d4: $cf
    db $eb                                        ; $56d5: $eb
    ld [hl], e                                    ; $56d6: $73
    nop                                           ; $56d7: $00
    ld [hl], $ad                                  ; $56d8: $36 $ad
    db $ec                                        ; $56da: $ec
    sub [hl]                                      ; $56db: $96
    inc sp                                        ; $56dc: $33
    ld e, b                                       ; $56dd: $58
    cp h                                          ; $56de: $bc
    cp b                                          ; $56df: $b8
    ld d, d                                       ; $56e0: $52
    inc de                                        ; $56e1: $13
    ld a, e                                       ; $56e2: $7b
    rst $28                                       ; $56e3: $ef
    reti                                          ; $56e4: $d9


    ld d, c                                       ; $56e5: $51
    ld bc, $cd49                                  ; $56e6: $01 $49 $cd
    ret                                           ; $56e9: $c9


    ld h, h                                       ; $56ea: $64
    ld [hl], $9c                                  ; $56eb: $36 $9c
    db $db                                        ; $56ed: $db
    add h                                         ; $56ee: $84
    ld hl, $ad36                                  ; $56ef: $21 $36 $ad
    cp $a7                                        ; $56f2: $fe $a7
    ld [hl-], a                                   ; $56f4: $32
    inc h                                         ; $56f5: $24
    adc e                                         ; $56f6: $8b
    res 0, l                                      ; $56f7: $cb $85
    ld b, h                                       ; $56f9: $44
    ld a, e                                       ; $56fa: $7b
    db $dd                                        ; $56fb: $dd
    or a                                          ; $56fc: $b7
    ld sp, $6913                                  ; $56fd: $31 $13 $69
    sbc $da                                       ; $5700: $de $da
    ld [hl], l                                    ; $5702: $75
    ld b, h                                       ; $5703: $44
    ld l, b                                       ; $5704: $68
    xor d                                         ; $5705: $aa
    add l                                         ; $5706: $85
    inc sp                                        ; $5707: $33
    ld l, c                                       ; $5708: $69
    sbc $eb                                       ; $5709: $de $eb
    ld h, d                                       ; $570b: $62
    nop                                           ; $570c: $00
    scf                                           ; $570d: $37
    xor h                                         ; $570e: $ac
    db $db                                        ; $570f: $db
    add l                                         ; $5710: $85
    ld b, l                                       ; $5711: $45
    adc e                                         ; $5712: $8b
    res 0, l                                      ; $5713: $cb $85
    ld hl, $be36                                  ; $5715: $21 $36 $be
    cp $a6                                        ; $5718: $fe $a6
    ld hl, $8c14                                  ; $571a: $21 $14 $8c
    db $db                                        ; $571d: $db
    add l                                         ; $571e: $85
    inc [hl]                                      ; $571f: $34
    ld l, d                                       ; $5720: $6a
    sbc $c7                                       ; $5721: $de $c7
    ld sp, $6a02                                  ; $5723: $31 $02 $6a
    rst $28                                       ; $5726: $ef
    jp c, Jump_000_2263                           ; $5727: $da $63 $22

    ld e, c                                       ; $572a: $59
    call Call_017_42a7                            ; $572b: $cd $a7 $42
    ld [hl], $ae                                  ; $572e: $36 $ae
    db $fd                                        ; $5730: $fd
    add h                                         ; $5731: $84
    db $10                                        ; $5732: $10
    dec h                                         ; $5733: $25
    sbc l                                         ; $5734: $9d
    db $ed                                        ; $5735: $ed
    and [hl]                                      ; $5736: $a6
    ld [hl-], a                                   ; $5737: $32
    ld b, a                                       ; $5738: $47
    xor h                                         ; $5739: $ac
    jp z, Jump_000_1363                           ; $573a: $ca $63 $13

    ld a, e                                       ; $573d: $7b
    rst $28                                       ; $573e: $ef
    reti                                          ; $573f: $d9


    ld d, c                                       ; $5740: $51
    ld bc, $ce59                                  ; $5741: $01 $59 $ce
    jp c, $3563                                   ; $5744: $da $63 $35

    adc e                                         ; $5747: $8b
    res 0, l                                      ; $5748: $cb $85
    ld hl, $be37                                  ; $574a: $21 $37 $be
    db $ed                                        ; $574d: $ed
    sub l                                         ; $574e: $95
    ld hl, $8a25                                  ; $574f: $21 $25 $8a
    xor c                                         ; $5752: $a9
    ld h, h                                       ; $5753: $64
    ld b, l                                       ; $5754: $45
    ld a, d                                       ; $5755: $7a
    res 0, h                                      ; $5756: $cb $84
    ld de, $9e25                                  ; $5758: $11 $25 $9e
    cp $ca                                        ; $575b: $fe $ca
    halt                                          ; $575d: $76
    ld a, d                                       ; $575e: $7a
    call $96ec                                    ; $575f: $cd $ec $96
    ld d, [hl]                                    ; $5762: $56
    xor [hl]                                      ; $5763: $ae
    rst $38                                       ; $5764: $ff
    db $ec                                        ; $5765: $ec
    sub [hl]                                      ; $5766: $96
    ld b, l                                       ; $5767: $45
    adc h                                         ; $5768: $8c
    rst $28                                       ; $5769: $ef
    db $ec                                        ; $576a: $ec
    add [hl]                                      ; $576b: $86
    ld a, c                                       ; $576c: $79
    sbc $c9                                       ; $576d: $de $c9
    ld h, c                                       ; $576f: $61
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    ld [hl], $76                                  ; $5772: $36 $76
    jr nz, jr_017_5776                            ; $5774: $20 $00

jr_017_5776:
    ld bc, $4245                                  ; $5776: $01 $45 $42
    nop                                           ; $5779: $00
    ld bc, $a948                                  ; $577a: $01 $48 $a9
    ld d, c                                       ; $577d: $51
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    scf                                           ; $5780: $37
    sbc c                                         ; $5781: $99
    ld [hl], e                                    ; $5782: $73
    nop                                           ; $5783: $00
    inc de                                        ; $5784: $13
    ld l, b                                       ; $5785: $68
    ld [hl], l                                    ; $5786: $75
    jr nz, jr_017_578b                            ; $5787: $20 $02

    ld a, [hl]                                    ; $5789: $7e
    rst $38                                       ; $578a: $ff

jr_017_578b:
    cp $b8                                        ; $578b: $fe $b8
    adc d                                         ; $578d: $8a
    rst $18                                       ; $578e: $df
    rst $38                                       ; $578f: $ff
    db $fd                                        ; $5790: $fd
    xor c                                         ; $5791: $a9
    cp [hl]                                       ; $5792: $be
    rst $38                                       ; $5793: $ff
    cp $a7                                        ; $5794: $fe $a7

Call_017_5796:
    ld h, l                                       ; $5796: $65
    ld a, l                                       ; $5797: $7d
    rst $38                                       ; $5798: $ff
    rst $38                                       ; $5799: $ff
    and l                                         ; $579a: $a5
    inc [hl]                                      ; $579b: $34
    ld l, d                                       ; $579c: $6a
    db $dd                                        ; $579d: $dd
    cp c                                          ; $579e: $b9
    xor c                                         ; $579f: $a9
    cp [hl]                                       ; $57a0: $be
    rst $38                                       ; $57a1: $ff
    rst $38                                       ; $57a2: $ff
    cp c                                          ; $57a3: $b9
    ld a, b                                       ; $57a4: $78
    cp [hl]                                       ; $57a5: $be
    rst $38                                       ; $57a6: $ff
    rst $38                                       ; $57a7: $ff
    jp c, $ad88                                   ; $57a8: $da $88 $ad

    rst $38                                       ; $57ab: $ff
    db $eb                                        ; $57ac: $eb
    ld [hl], h                                    ; $57ad: $74
    ld sp, $8857                                  ; $57ae: $31 $57 $88
    ld b, b                                       ; $57b1: $40
    nop                                           ; $57b2: $00
    inc de                                        ; $57b3: $13
    adc h                                         ; $57b4: $8c
    xor $a4                                       ; $57b5: $ee $a4

Call_017_57b7:
    ld b, h                                       ; $57b7: $44
    ld a, d                                       ; $57b8: $7a
    and a                                         ; $57b9: $a7
    jr nc, jr_017_57bc                            ; $57ba: $30 $00

jr_017_57bc:
    ld bc, $8846                                  ; $57bc: $01 $46 $88
    ld [hl], h                                    ; $57bf: $74
    nop                                           ; $57c0: $00
    ld [bc], a                                    ; $57c1: $02
    ld a, e                                       ; $57c2: $7b
    call c, $2195                                 ; $57c3: $dc $95 $21
    dec h                                         ; $57c6: $25
    ld [hl], a                                    ; $57c7: $77
    ld d, c                                       ; $57c8: $51
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    ld c, c                                       ; $57cb: $49
    xor h                                         ; $57cc: $ac
    sub h                                         ; $57cd: $94
    ld b, h                                       ; $57ce: $44
    inc [hl]                                      ; $57cf: $34
    adc d                                         ; $57d0: $8a
    xor b                                         ; $57d1: $a8
    ld d, d                                       ; $57d2: $52
    ld [de], a                                    ; $57d3: $12
    ld l, d                                       ; $57d4: $6a
    xor $b7                                       ; $57d5: $ee $b7
    db $10                                        ; $57d7: $10
    ld bc, $dd6b                                  ; $57d8: $01 $6b $dd
    db $db                                        ; $57db: $db
    ld [hl], h                                    ; $57dc: $74
    ld e, b                                       ; $57dd: $58
    xor h                                         ; $57de: $ac
    db $db                                        ; $57df: $db
    add h                                         ; $57e0: $84
    inc hl                                        ; $57e1: $23
    ld e, c                                       ; $57e2: $59
    call z, $20a6                                 ; $57e3: $cc $a6 $20
    ld bc, $a947                                  ; $57e6: $01 $47 $a9
    ld h, d                                       ; $57e9: $62
    nop                                           ; $57ea: $00
    inc bc                                        ; $57eb: $03
    ld a, d                                       ; $57ec: $7a
    cp c                                          ; $57ed: $b9
    ld b, c                                       ; $57ee: $41
    nop                                           ; $57ef: $00
    inc d                                         ; $57f0: $14
    xor e                                         ; $57f1: $ab
    cp c                                          ; $57f2: $b9
    ld h, e                                       ; $57f3: $63
    ld [de], a                                    ; $57f4: $12
    ld e, d                                       ; $57f5: $5a
    db $dd                                        ; $57f6: $dd
    cp b                                          ; $57f7: $b8
    ld b, e                                       ; $57f8: $43
    ld e, b                                       ; $57f9: $58
    cp l                                          ; $57fa: $bd
    jp z, $2264                                   ; $57fb: $ca $64 $22

    ld c, b                                       ; $57fe: $48
    adc $da                                       ; $57ff: $ce $da
    add l                                         ; $5801: $85
    inc [hl]                                      ; $5802: $34
    ld a, d                                       ; $5803: $7a
    call c, Call_000_21b7                         ; $5804: $dc $b7 $21
    dec h                                         ; $5807: $25
    cp a                                          ; $5808: $bf
    rst $38                                       ; $5809: $ff
    ret c                                         ; $580a: $d8

    ld de, $9a25                                  ; $580b: $11 $25 $9a
    cp e                                          ; $580e: $bb
    and a                                         ; $580f: $a7
    ld d, [hl]                                    ; $5810: $56
    adc d                                         ; $5811: $8a
    cp d                                          ; $5812: $ba
    ld [hl], e                                    ; $5813: $73
    nop                                           ; $5814: $00
    dec d                                         ; $5815: $15
    sbc l                                         ; $5816: $9d
    jp z, Jump_000_1184                           ; $5817: $ca $84 $11

    ld [hl], $bc                                  ; $581a: $36 $bc
    cp b                                          ; $581c: $b8
    ld d, l                                       ; $581d: $55
    ld b, [hl]                                    ; $581e: $46
    xor l                                         ; $581f: $ad
    call c, $5596                                 ; $5820: $dc $96 $55
    adc h                                         ; $5823: $8c
    rst $28                                       ; $5824: $ef
    rst $38                                       ; $5825: $ff
    or [hl]                                       ; $5826: $b6
    ld d, [hl]                                    ; $5827: $56
    sbc l                                         ; $5828: $9d
    xor $eb                                       ; $5829: $ee $eb
    add [hl]                                      ; $582b: $86
    ld a, d                                       ; $582c: $7a
    rst $28                                       ; $582d: $ef
    cp $b7                                        ; $582e: $fe $b7
    inc sp                                        ; $5830: $33
    ld b, a                                       ; $5831: $47
    sbc e                                         ; $5832: $9b
    ret                                           ; $5833: $c9


    ld d, e                                       ; $5834: $53

Call_017_5835:
    inc de                                        ; $5835: $13
    adc h                                         ; $5836: $8c
    rst $38                                       ; $5837: $ff
    ret c                                         ; $5838: $d8

    ld sp, $8b03                                  ; $5839: $31 $03 $8b
    db $dd                                        ; $583c: $dd
    or [hl]                                       ; $583d: $b6
    ld sp, $9b14                                  ; $583e: $31 $14 $9b
    db $db                                        ; $5841: $db
    ld [hl], h                                    ; $5842: $74
    ld [hl], $8b                                  ; $5843: $36 $8b
    call $52a8                                    ; $5845: $cd $a8 $52
    inc h                                         ; $5848: $24
    adc h                                         ; $5849: $8c
    xor $b6                                       ; $584a: $ee $b6
    ld hl, $7914                                  ; $584c: $21 $14 $79
    sub a                                         ; $584f: $97
    ld d, e                                       ; $5850: $53
    scf                                           ; $5851: $37
    xor [hl]                                      ; $5852: $ae
    rst $38                                       ; $5853: $ff
    db $eb                                        ; $5854: $eb
    add a                                         ; $5855: $87
    ld d, a                                       ; $5856: $57
    cp l                                          ; $5857: $bd
    rst $38                                       ; $5858: $ff
    db $eb                                        ; $5859: $eb
    adc c                                         ; $585a: $89
    cp h                                          ; $585b: $bc
    jp z, $3374                                   ; $585c: $ca $74 $33

    ld a, l                                       ; $585f: $7d
    rst $38                                       ; $5860: $ff
    rst $38                                       ; $5861: $ff
    reti                                          ; $5862: $d9


    ld d, l                                       ; $5863: $55
    adc e                                         ; $5864: $8b
    rst $38                                       ; $5865: $ff
    jp c, $cfaa                                   ; $5866: $da $aa $cf

    rst $38                                       ; $5869: $ff
    cp $95                                        ; $586a: $fe $95
    ld b, a                                       ; $586c: $47
    cp a                                          ; $586d: $bf
    rst $38                                       ; $586e: $ff
    ei                                            ; $586f: $fb
    sub [hl]                                      ; $5870: $96
    ld a, b                                       ; $5871: $78
    rst $08                                       ; $5872: $cf
    db $ec                                        ; $5873: $ec
    sub l                                         ; $5874: $95
    inc sp                                        ; $5875: $33
    ld l, c                                       ; $5876: $69
    adc $d8                                       ; $5877: $ce $d8
    ld sp, $3610                                  ; $5879: $31 $10 $36
    sbc c                                         ; $587c: $99
    ld [hl], h                                    ; $587d: $74
    db $10                                        ; $587e: $10
    ld [bc], a                                    ; $587f: $02
    ld e, b                                       ; $5880: $58
    ld [hl], h                                    ; $5881: $74
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    ld d, $ad                                     ; $5884: $16 $ad
    ret                                           ; $5886: $c9


    ld b, d                                       ; $5887: $42
    inc hl                                        ; $5888: $23
    ld a, e                                       ; $5889: $7b
    res 0, l                                      ; $588a: $cb $85
    inc sp                                        ; $588c: $33
    ld l, d                                       ; $588d: $6a
    db $dd                                        ; $588e: $dd
    ret                                           ; $588f: $c9


    ld d, d                                       ; $5890: $52
    inc h                                         ; $5891: $24
    ld a, e                                       ; $5892: $7b
    rst $28                                       ; $5893: $ef
    ld [$6765], a                                 ; $5894: $ea $65 $67
    xor h                                         ; $5897: $ac
    and [hl]                                      ; $5898: $a6
    jr nz, @+$04                                  ; $5899: $20 $02

    ld l, e                                       ; $589b: $6b
    bit 6, d                                      ; $589c: $cb $72
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    ld b, a                                       ; $58a0: $47
    ld [hl], l                                    ; $58a1: $75
    stop                                          ; $58a2: $10 $00
    inc d                                         ; $58a4: $14
    ld [hl], a                                    ; $58a5: $77
    ld d, c                                       ; $58a6: $51
    nop                                           ; $58a7: $00
    ld bc, $9869                                  ; $58a8: $01 $69 $98
    ld b, d                                       ; $58ab: $42
    ld [bc], a                                    ; $58ac: $02
    ld a, e                                       ; $58ad: $7b
    rst $38                                       ; $58ae: $ff
    jp hl                                         ; $58af: $e9


    ld h, l                                       ; $58b0: $65
    ld a, h                                       ; $58b1: $7c
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    db $eb                                        ; $58b4: $eb
    sbc d                                         ; $58b5: $9a
    rst $28                                       ; $58b6: $ef
    rst $38                                       ; $58b7: $ff
    jp hl                                         ; $58b8: $e9


    ld b, d                                       ; $58b9: $42
    ld [hl], $8a                                  ; $58ba: $36 $8a
    xor b                                         ; $58bc: $a8
    jr nc, jr_017_58bf                            ; $58bd: $30 $00

jr_017_58bf:
    ld b, a                                       ; $58bf: $47
    adc b                                         ; $58c0: $88
    ld b, c                                       ; $58c1: $41
    nop                                           ; $58c2: $00
    inc bc                                        ; $58c3: $03
    ld a, c                                       ; $58c4: $79
    sub a                                         ; $58c5: $97
    jr nc, jr_017_58c9                            ; $58c6: $30 $01

    ld b, [hl]                                    ; $58c8: $46

jr_017_58c9:
    add a                                         ; $58c9: $87
    jr nc, jr_017_58cc                            ; $58ca: $30 $00

jr_017_58cc:
    inc bc                                        ; $58cc: $03
    ld a, c                                       ; $58cd: $79
    ld [hl], h                                    ; $58ce: $74
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    ld b, a                                       ; $58d1: $47
    sbc b                                         ; $58d2: $98
    ld b, c                                       ; $58d3: $41
    ld bc, $cc48                                  ; $58d4: $01 $48 $cc
    and a                                         ; $58d7: $a7
    ld sp, $be38                                  ; $58d8: $31 $38 $be
    db $fc                                        ; $58db: $fc
    ld [hl], l                                    ; $58dc: $75
    ld d, a                                       ; $58dd: $57
    xor [hl]                                      ; $58de: $ae
    rst $38                                       ; $58df: $ff
    db $fd                                        ; $58e0: $fd
    sub a                                         ; $58e1: $97
    adc d                                         ; $58e2: $8a
    cp d                                          ; $58e3: $ba
    sub [hl]                                      ; $58e4: $96
    jr nz, jr_017_58e7                            ; $58e5: $20 $00

jr_017_58e7:
    scf                                           ; $58e7: $37
    sbc d                                         ; $58e8: $9a
    add l                                         ; $58e9: $85
    jr nz, jr_017_58ed                            ; $58ea: $20 $01

    inc de                                        ; $58ec: $13

jr_017_58ed:
    ld hl, $0000                                  ; $58ed: $21 $00 $00
    ld [hl], $99                                  ; $58f0: $36 $99
    add [hl]                                      ; $58f2: $86
    ld b, d                                       ; $58f3: $42
    inc d                                         ; $58f4: $14
    ld l, b                                       ; $58f5: $68
    ld [hl], a                                    ; $58f6: $77
    ld [hl], l                                    ; $58f7: $75
    ld [hl], $ae                                  ; $58f8: $36 $ae
    rst $38                                       ; $58fa: $ff
    db $fc                                        ; $58fb: $fc
    add [hl]                                      ; $58fc: $86
    ld l, b                                       ; $58fd: $68
    rst $18                                       ; $58fe: $df
    rst $38                                       ; $58ff: $ff
    rst $00                                       ; $5900: $c7
    ld d, [hl]                                    ; $5901: $56
    sbc [hl]                                      ; $5902: $9e
    rst $38                                       ; $5903: $ff
    db $eb                                        ; $5904: $eb
    ld h, c                                       ; $5905: $61
    inc de                                        ; $5906: $13
    adc h                                         ; $5907: $8c
    ret                                           ; $5908: $c9


    ld d, d                                       ; $5909: $52
    ld [de], a                                    ; $590a: $12
    ld l, e                                       ; $590b: $6b
    xor $b6                                       ; $590c: $ee $b6
    jr nz, jr_017_5911                            ; $590e: $20 $01

    ld b, a                                       ; $5910: $47

jr_017_5911:
    sub [hl]                                      ; $5911: $96
    jr nz, jr_017_5914                            ; $5912: $20 $00

jr_017_5914:
    inc [hl]                                      ; $5914: $34
    ld [hl], a                                    ; $5915: $77
    ld d, e                                       ; $5916: $53
    nop                                           ; $5917: $00
    ld bc, $cc6b                                  ; $5918: $01 $6b $cc
    cp b                                          ; $591b: $b8
    ld d, [hl]                                    ; $591c: $56
    sbc h                                         ; $591d: $9c
    xor $da                                       ; $591e: $ee $da
    add h                                         ; $5920: $84
    ld b, a                                       ; $5921: $47
    cp l                                          ; $5922: $bd
    xor $c8                                       ; $5923: $ee $c8
    inc sp                                        ; $5925: $33
    ld d, a                                       ; $5926: $57
    xor d                                         ; $5927: $aa
    add h                                         ; $5928: $84
    ld de, $7a24                                  ; $5929: $11 $24 $7a
    cp c                                          ; $592c: $b9
    ld h, h                                       ; $592d: $64
    inc h                                         ; $592e: $24
    ld a, d                                       ; $592f: $7a
    res 2, a                                      ; $5930: $cb $97
    ld l, b                                       ; $5932: $68
    cp l                                          ; $5933: $bd
    rst $28                                       ; $5934: $ef
    cp $b9                                        ; $5935: $fe $b9
    sbc h                                         ; $5937: $9c
    rst $38                                       ; $5938: $ff
    db $fd                                        ; $5939: $fd
    xor b                                         ; $593a: $a8
    sbc d                                         ; $593b: $9a
    adc $ff                                       ; $593c: $ce $ff
    db $ec                                        ; $593e: $ec
    xor d                                         ; $593f: $aa
    call z, Call_017_52b7                         ; $5940: $cc $b7 $52
    ld bc, $7735                                  ; $5943: $01 $35 $77
    ld [hl], a                                    ; $5946: $77
    ld d, e                                       ; $5947: $53
    inc [hl]                                      ; $5948: $34
    ld b, h                                       ; $5949: $44
    jr nz, jr_017_594c                            ; $594a: $20 $00

jr_017_594c:
    nop                                           ; $594c: $00
    ld c, b                                       ; $594d: $48
    sbc c                                         ; $594e: $99
    ld h, h                                       ; $594f: $64
    ld [hl+], a                                   ; $5950: $22
    ld b, [hl]                                    ; $5951: $46
    ld h, l                                       ; $5952: $65
    ld b, d                                       ; $5953: $42
    inc de                                        ; $5954: $13
    ld a, d                                       ; $5955: $7a
    adc $ed                                       ; $5956: $ce $ed
    sub [hl]                                      ; $5958: $96
    ld h, a                                       ; $5959: $67
    xor e                                         ; $595a: $ab
    cp e                                          ; $595b: $bb
    sub a                                         ; $595c: $97
    ld a, c                                       ; $595d: $79
    adc $ff                                       ; $595e: $ce $ff
    db $fd                                        ; $5960: $fd
    add a                                         ; $5961: $87
    ld a, c                                       ; $5962: $79

Jump_017_5963:
    sbc d                                         ; $5963: $9a

Jump_017_5964:
    sub a                                         ; $5964: $97
    ld h, [hl]                                    ; $5965: $66
    inc sp                                        ; $5966: $33
    ld c, b                                       ; $5967: $48
    adc $fd                                       ; $5968: $ce $fd
    xor c                                         ; $596a: $a9
    add [hl]                                      ; $596b: $86
    ld d, [hl]                                    ; $596c: $56
    adc c                                         ; $596d: $89
    xor c                                         ; $596e: $a9
    halt                                          ; $596f: $76
    adc c                                         ; $5970: $89
    rst $28                                       ; $5971: $ef
    rst $38                                       ; $5972: $ff
    reti                                          ; $5973: $d9


    ld d, d                                       ; $5974: $52
    dec [hl]                                      ; $5975: $35
    adc e                                         ; $5976: $8b
    xor c                                         ; $5977: $a9
    ld d, c                                       ; $5978: $51
    inc d                                         ; $5979: $14
    adc e                                         ; $597a: $8b
    res 2, h                                      ; $597b: $cb $94
    nop                                           ; $597d: $00
    inc bc                                        ; $597e: $03
    adc h                                         ; $597f: $8c
    or [hl]                                       ; $5980: $b6
    jr nc, jr_017_5985                            ; $5981: $30 $02

    ld e, b                                       ; $5983: $58
    xor c                                         ; $5984: $a9

jr_017_5985:
    ld h, d                                       ; $5985: $62
    nop                                           ; $5986: $00
    ld d, $ad                                     ; $5987: $16 $ad
    ret                                           ; $5989: $c9


    ld h, h                                       ; $598a: $64
    ld e, c                                       ; $598b: $59
    rst $28                                       ; $598c: $ef
    rst $38                                       ; $598d: $ff
    ret c                                         ; $598e: $d8

    ld d, [hl]                                    ; $598f: $56
    adc l                                         ; $5990: $8d
    rst $38                                       ; $5991: $ff
    cp $ba                                        ; $5992: $fe $ba
    xor [hl]                                      ; $5994: $ae
    rst $38                                       ; $5995: $ff
    ret c                                         ; $5996: $d8

    jr nc, jr_017_599c                            ; $5997: $30 $03

    ld a, e                                       ; $5999: $7b
    db $dd                                        ; $599a: $dd
    ret                                           ; $599b: $c9


jr_017_599c:
    ld d, h                                       ; $599c: $54
    inc [hl]                                      ; $599d: $34
    ld a, b                                       ; $599e: $78
    add l                                         ; $599f: $85
    ld hl, $be37                                  ; $59a0: $21 $37 $be
    db $eb                                        ; $59a3: $eb
    ld [hl], e                                    ; $59a4: $73
    nop                                           ; $59a5: $00
    dec h                                         ; $59a6: $25
    adc d                                         ; $59a7: $8a
    cp c                                          ; $59a8: $b9
    ld [hl], h                                    ; $59a9: $74
    dec [hl]                                      ; $59aa: $35
    ld a, b                                       ; $59ab: $78
    add [hl]                                      ; $59ac: $86
    ld b, d                                       ; $59ad: $42
    inc b                                         ; $59ae: $04
    xor a                                         ; $59af: $af
    rst $38                                       ; $59b0: $ff
    db $fc                                        ; $59b1: $fc
    ld [hl], l                                    ; $59b2: $75
    ld l, c                                       ; $59b3: $69
    rst $08                                       ; $59b4: $cf
    rst $38                                       ; $59b5: $ff
    call c, $ffbd                                 ; $59b6: $dc $bd $ff
    rst $38                                       ; $59b9: $ff
    ret c                                         ; $59ba: $d8

    ld h, [hl]                                    ; $59bb: $66
    sbc [hl]                                      ; $59bc: $9e
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    ret z                                         ; $59bf: $c8

    add [hl]                                      ; $59c0: $86
    adc d                                         ; $59c1: $8a
    cp c                                          ; $59c2: $b9
    ld d, e                                       ; $59c3: $53
    ld [de], a                                    ; $59c4: $12
    ld e, d                                       ; $59c5: $5a
    db $dd                                        ; $59c6: $dd
    and l                                         ; $59c7: $a5
    jr nz, jr_017_59cc                            ; $59c8: $20 $02

    ld l, b                                       ; $59ca: $68
    sbc c                                         ; $59cb: $99

jr_017_59cc:
    ld [hl], h                                    ; $59cc: $74
    inc [hl]                                      ; $59cd: $34
    ld a, e                                       ; $59ce: $7b
    cp b                                          ; $59cf: $b8
    ld b, c                                       ; $59d0: $41
    ld de, $df39                                  ; $59d1: $11 $39 $df
    cp $a7                                        ; $59d4: $fe $a7
    ld d, [hl]                                    ; $59d6: $56
    adc d                                         ; $59d7: $8a
    cp d                                          ; $59d8: $ba
    ld [hl], e                                    ; $59d9: $73
    inc hl                                        ; $59da: $23
    ld e, b                                       ; $59db: $58
    cp e                                          ; $59dc: $bb
    add d                                         ; $59dd: $82
    nop                                           ; $59de: $00
    ld [bc], a                                    ; $59df: $02
    adc d                                         ; $59e0: $8a
    cp e                                          ; $59e1: $bb
    sub [hl]                                      ; $59e2: $96
    ld d, [hl]                                    ; $59e3: $56
    adc d                                         ; $59e4: $8a
    cp d                                          ; $59e5: $ba
    add [hl]                                      ; $59e6: $86
    ld d, [hl]                                    ; $59e7: $56
    sbc l                                         ; $59e8: $9d
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    ret z                                         ; $59eb: $c8

    ld a, d                                       ; $59ec: $7a
    rst $18                                       ; $59ed: $df
    rst $38                                       ; $59ee: $ff
    db $ec                                        ; $59ef: $ec
    cp e                                          ; $59f0: $bb
    adc $ff                                       ; $59f1: $ce $ff
    reti                                          ; $59f3: $d9


    halt                                          ; $59f4: $76
    adc l                                         ; $59f5: $8d
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    or a                                          ; $59f8: $b7
    ld b, e                                       ; $59f9: $43
    ld l, b                                       ; $59fa: $68
    cp e                                          ; $59fb: $bb
    add l                                         ; $59fc: $85
    ld [hl-], a                                   ; $59fd: $32
    ld c, b                                       ; $59fe: $48
    cp e                                          ; $59ff: $bb
    sub e                                         ; $5a00: $93
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    dec d                                         ; $5a03: $15
    halt                                          ; $5a04: $76
    ld b, c                                       ; $5a05: $41
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    inc hl                                        ; $5a08: $23
    jr nz, jr_017_5a0b                            ; $5a09: $20 $00

jr_017_5a0b:
    dec d                                         ; $5a0b: $15
    sbc h                                         ; $5a0c: $9c
    cp b                                          ; $5a0d: $b8
    ld b, c                                       ; $5a0e: $41
    ld [bc], a                                    ; $5a0f: $02
    ld l, d                                       ; $5a10: $6a
    rst $28                                       ; $5a11: $ef
    db $fc                                        ; $5a12: $fc
    xor c                                         ; $5a13: $a9
    sbc e                                         ; $5a14: $9b
    rst $28                                       ; $5a15: $ef
    db $ec                                        ; $5a16: $ec
    sub a                                         ; $5a17: $97
    adc e                                         ; $5a18: $8b
    rst $38                                       ; $5a19: $ff
    rst $38                                       ; $5a1a: $ff
    db $fc                                        ; $5a1b: $fc
    add a                                         ; $5a1c: $87
    adc e                                         ; $5a1d: $8b
    rst $28                                       ; $5a1e: $ef
    rst $38                                       ; $5a1f: $ff
    db $db                                        ; $5a20: $db
    cp h                                          ; $5a21: $bc
    rst $28                                       ; $5a22: $ef
    db $fc                                        ; $5a23: $fc
    ld [hl], h                                    ; $5a24: $74
    dec [hl]                                      ; $5a25: $35
    sbc l                                         ; $5a26: $9d
    rst $38                                       ; $5a27: $ff
    rst $00                                       ; $5a28: $c7
    ld b, c                                       ; $5a29: $41
    ld [bc], a                                    ; $5a2a: $02
    ld d, a                                       ; $5a2b: $57
    halt                                          ; $5a2c: $76
    jr nz, jr_017_5a42                            ; $5a2d: $20 $13

    ld l, c                                       ; $5a2f: $69
    sub [hl]                                      ; $5a30: $96
    stop                                          ; $5a31: $10 $00
    inc bc                                        ; $5a33: $03
    ld a, b                                       ; $5a34: $78
    add l                                         ; $5a35: $85
    jr nz, jr_017_5a38                            ; $5a36: $20 $00

jr_017_5a38:
    dec [hl]                                      ; $5a38: $35
    ld h, [hl]                                    ; $5a39: $66
    ld b, c                                       ; $5a3a: $41
    inc d                                         ; $5a3b: $14
    adc l                                         ; $5a3c: $8d
    rst $38                                       ; $5a3d: $ff
    and l                                         ; $5a3e: $a5
    ld [hl+], a                                   ; $5a3f: $22
    ld e, b                                       ; $5a40: $58
    cp l                                          ; $5a41: $bd

jr_017_5a42:
    db $ed                                        ; $5a42: $ed
    db $db                                        ; $5a43: $db
    xor e                                         ; $5a44: $ab
    adc $ec                                       ; $5a45: $ce $ec
    sub [hl]                                      ; $5a47: $96
    ld d, a                                       ; $5a48: $57
    cp a                                          ; $5a49: $bf
    rst $38                                       ; $5a4a: $ff
    ei                                            ; $5a4b: $fb
    add [hl]                                      ; $5a4c: $86
    ld l, b                                       ; $5a4d: $68
    xor e                                         ; $5a4e: $ab
    cp e                                          ; $5a4f: $bb
    sbc c                                         ; $5a50: $99
    sbc d                                         ; $5a51: $9a
    adc $db                                       ; $5a52: $ce $db
    ld [hl], h                                    ; $5a54: $74
    dec [hl]                                      ; $5a55: $35
    adc h                                         ; $5a56: $8c
    xor $ca                                       ; $5a57: $ee $ca
    halt                                          ; $5a59: $76
    ld h, [hl]                                    ; $5a5a: $66
    ld a, b                                       ; $5a5b: $78
    ld [hl], h                                    ; $5a5c: $74
    ld hl, $8b25                                  ; $5a5d: $21 $25 $8b
    xor b                                         ; $5a60: $a8
    ld b, b                                       ; $5a61: $40
    ld bc, $6635                                  ; $5a62: $01 $35 $66
    ld b, e                                       ; $5a65: $43
    inc sp                                        ; $5a66: $33
    ld [hl], $77                                  ; $5a67: $36 $77
    ld d, d                                       ; $5a69: $52
    db $10                                        ; $5a6a: $10
    ld [de], a                                    ; $5a6b: $12
    ld e, c                                       ; $5a6c: $59
    xor c                                         ; $5a6d: $a9
    ld h, e                                       ; $5a6e: $63
    ld [de], a                                    ; $5a6f: $12
    ld l, c                                       ; $5a70: $69
    cp h                                          ; $5a71: $bc
    sub [hl]                                      ; $5a72: $96
    ld d, a                                       ; $5a73: $57
    rst $08                                       ; $5a74: $cf
    rst $38                                       ; $5a75: $ff
    cp $a8                                        ; $5a76: $fe $a8
    adc h                                         ; $5a78: $8c
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff

jr_017_5a7b:
    ld [$cf8a], a                                 ; $5a7b: $ea $8a $cf
    cp $a6                                        ; $5a7e: $fe $a6
    ld b, l                                       ; $5a80: $45
    ld a, h                                       ; $5a81: $7c
    rst $28                                       ; $5a82: $ef
    reti                                          ; $5a83: $d9


    ld d, e                                       ; $5a84: $53
    inc [hl]                                      ; $5a85: $34
    ld a, d                                       ; $5a86: $7a
    xor b                                         ; $5a87: $a8
    ld b, d                                       ; $5a88: $42
    inc de                                        ; $5a89: $13
    ld l, b                                       ; $5a8a: $68
    add [hl]                                      ; $5a8b: $86
    jr nz, jr_017_5a8e                            ; $5a8c: $20 $00

jr_017_5a8e:
    ld [bc], a                                    ; $5a8e: $02
    ld l, b                                       ; $5a8f: $68
    add l                                         ; $5a90: $85
    stop                                          ; $5a91: $10 $00
    ld b, a                                       ; $5a93: $47
    ld [hl], l                                    ; $5a94: $75
    db $10                                        ; $5a95: $10
    inc bc                                        ; $5a96: $03
    adc e                                         ; $5a97: $8b
    res 0, e                                      ; $5a98: $cb $83
    ld de, $ad37                                  ; $5a9a: $11 $37 $ad
    ret                                           ; $5a9d: $c9


    ld h, h                                       ; $5a9e: $64
    ld b, a                                       ; $5a9f: $47
    xor l                                         ; $5aa0: $ad
    reti                                          ; $5aa1: $d9


    ld d, d                                       ; $5aa2: $52
    dec [hl]                                      ; $5aa3: $35
    sbc h                                         ; $5aa4: $9c
    db $dd                                        ; $5aa5: $dd
    cp b                                          ; $5aa6: $b8
    ld b, e                                       ; $5aa7: $43
    scf                                           ; $5aa8: $37
    cp l                                          ; $5aa9: $bd
    db $fc                                        ; $5aaa: $fc
    xor c                                         ; $5aab: $a9
    adc e                                         ; $5aac: $8b
    rst $28                                       ; $5aad: $ef
    cp $a7                                        ; $5aae: $fe $a7
    ld l, b                                       ; $5ab0: $68
    rst $08                                       ; $5ab1: $cf
    rst $38                                       ; $5ab2: $ff
    ld a, [$5964]                                 ; $5ab3: $fa $64 $59
    rst $18                                       ; $5ab6: $df
    ld [$5864], a                                 ; $5ab7: $ea $64 $58
    cp l                                          ; $5aba: $bd
    ret                                           ; $5abb: $c9


    ld b, b                                       ; $5abc: $40
    nop                                           ; $5abd: $00
    jr c, jr_017_5a7b                             ; $5abe: $38 $bb

    sub h                                         ; $5ac0: $94
    nop                                           ; $5ac1: $00
    inc b                                         ; $5ac2: $04
    ld [hl], a                                    ; $5ac3: $77
    ld b, b                                       ; $5ac4: $40
    nop                                           ; $5ac5: $00
    inc b                                         ; $5ac6: $04
    adc c                                         ; $5ac7: $89
    sub l                                         ; $5ac8: $95
    stop                                          ; $5ac9: $10 $00
    daa                                           ; $5acb: $27
    sbc d                                         ; $5acc: $9a
    add h                                         ; $5acd: $84
    ld [hl+], a                                   ; $5ace: $22
    ld c, b                                       ; $5acf: $48
    cp h                                          ; $5ad0: $bc
    and a                                         ; $5ad1: $a7
    ld [hl-], a                                   ; $5ad2: $32
    ld e, d                                       ; $5ad3: $5a
    rst $28                                       ; $5ad4: $ef
    cp $a7                                        ; $5ad5: $fe $a7
    ld d, a                                       ; $5ad7: $57
    xor [hl]                                      ; $5ad8: $ae
    rst $38                                       ; $5ad9: $ff
    db $eb                                        ; $5ada: $eb
    add [hl]                                      ; $5adb: $86
    sbc h                                         ; $5adc: $9c
    xor $b6                                       ; $5add: $ee $b6
    jr nz, jr_017_5b07                            ; $5adf: $20 $26

    xor h                                         ; $5ae1: $ac
    ret                                           ; $5ae2: $c9


    ld b, b                                       ; $5ae3: $40
    nop                                           ; $5ae4: $00
    inc de                                        ; $5ae5: $13
    ld b, e                                       ; $5ae6: $43
    db $10                                        ; $5ae7: $10
    ld bc, $ee6b                                  ; $5ae8: $01 $6b $ee
    cp b                                          ; $5aeb: $b8
    inc sp                                        ; $5aec: $33
    ld l, d                                       ; $5aed: $6a
    rst $28                                       ; $5aee: $ef
    db $fc                                        ; $5aef: $fc
    add e                                         ; $5af0: $83
    ld [hl], $ac                                  ; $5af1: $36 $ac
    res 0, [hl]                                   ; $5af3: $cb $86
    ld a, d                                       ; $5af5: $7a
    rst $28                                       ; $5af6: $ef
    rst $38                                       ; $5af7: $ff
    ld [$8c66], a                                 ; $5af8: $ea $66 $8c
    rst $28                                       ; $5afb: $ef
    jp c, Jump_017_5964                           ; $5afc: $da $64 $59

    call Call_017_63da                            ; $5aff: $cd $da $63
    inc h                                         ; $5b02: $24
    adc h                                         ; $5b03: $8c
    call c, $3395                                 ; $5b04: $dc $95 $33

jr_017_5b07:
    ld b, a                                       ; $5b07: $47
    xor d                                         ; $5b08: $aa
    add e                                         ; $5b09: $83
    nop                                           ; $5b0a: $00
    inc bc                                        ; $5b0b: $03
    ld a, c                                       ; $5b0c: $79
    add l                                         ; $5b0d: $85
    stop                                          ; $5b0e: $10 $00
    dec d                                         ; $5b10: $15
    ld h, h                                       ; $5b11: $64
    stop                                          ; $5b12: $10 $00
    scf                                           ; $5b14: $37
    add a                                         ; $5b15: $87
    jr nc, jr_017_5b18                            ; $5b16: $30 $00

jr_017_5b18:
    inc bc                                        ; $5b18: $03
    adc d                                         ; $5b19: $8a
    and a                                         ; $5b1a: $a7
    jr nc, jr_017_5b32                            ; $5b1b: $30 $15

    adc e                                         ; $5b1d: $8b
    or a                                          ; $5b1e: $b7
    ld hl, $cf37                                  ; $5b1f: $21 $37 $cf
    cp $a5                                        ; $5b22: $fe $a5
    ld [hl+], a                                   ; $5b24: $22
    ld e, d                                       ; $5b25: $5a
    rst $28                                       ; $5b26: $ef
    db $db                                        ; $5b27: $db
    add [hl]                                      ; $5b28: $86
    adc h                                         ; $5b29: $8c
    rst $38                                       ; $5b2a: $ff
    db $eb                                        ; $5b2b: $eb
    ld h, h                                       ; $5b2c: $64
    ld l, d                                       ; $5b2d: $6a
    rst $28                                       ; $5b2e: $ef
    rst $38                                       ; $5b2f: $ff
    ret z                                         ; $5b30: $c8

    ld d, h                                       ; $5b31: $54

jr_017_5b32:
    ld l, c                                       ; $5b32: $69
    res 2, [hl]                                   ; $5b33: $cb $96

Jump_017_5b35:
    ld b, e                                       ; $5b35: $43
    ld a, d                                       ; $5b36: $7a
    call z, Call_000_1094                         ; $5b37: $cc $94 $10
    dec h                                         ; $5b3a: $25
    xor l                                         ; $5b3b: $ad
    db $eb                                        ; $5b3c: $eb
    ld h, d                                       ; $5b3d: $62
    ld bc, $a848                                  ; $5b3e: $01 $48 $a8
    ld b, c                                       ; $5b41: $41
    inc bc                                        ; $5b42: $03
    ld a, e                                       ; $5b43: $7b
    db $db                                        ; $5b44: $db
    add e                                         ; $5b45: $83
    nop                                           ; $5b46: $00
    daa                                           ; $5b47: $27
    cp [hl]                                       ; $5b48: $be
    db $ec                                        ; $5b49: $ec
    ld [hl], e                                    ; $5b4a: $73
    inc [hl]                                      ; $5b4b: $34
    ld a, c                                       ; $5b4c: $79
    add h                                         ; $5b4d: $84
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    ld e, c                                       ; $5b50: $59
    xor b                                         ; $5b51: $a8
    ld b, b                                       ; $5b52: $40
    nop                                           ; $5b53: $00
    inc d                                         ; $5b54: $14
    ld a, c                                       ; $5b55: $79
    sub a                                         ; $5b56: $97
    ld b, d                                       ; $5b57: $42
    ld c, b                                       ; $5b58: $48
    xor e                                         ; $5b59: $ab
    and a                                         ; $5b5a: $a7
    ld sp, $ae25                                  ; $5b5b: $31 $25 $ae
    cp $a6                                        ; $5b5e: $fe $a6
    ld b, h                                       ; $5b60: $44
    ld a, e                                       ; $5b61: $7b
    db $ed                                        ; $5b62: $ed
    cp c                                          ; $5b63: $b9
    adc c                                         ; $5b64: $89
    rst $08                                       ; $5b65: $cf
    rst $38                                       ; $5b66: $ff
    ld a, [$8c66]                                 ; $5b67: $fa $66 $8c
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    or a                                          ; $5b6c: $b7
    ld d, [hl]                                    ; $5b6d: $56
    xor l                                         ; $5b6e: $ad

jr_017_5b6f:
    db $ec                                        ; $5b6f: $ec
    add e                                         ; $5b70: $83
    inc h                                         ; $5b71: $24
    adc l                                         ; $5b72: $8d
    db $db                                        ; $5b73: $db
    ld [hl], d                                    ; $5b74: $72
    nop                                           ; $5b75: $00
    ld h, $9b                                     ; $5b76: $26 $9b
    or a                                          ; $5b78: $b7
    ld b, d                                       ; $5b79: $42
    ld [hl], $8b                                  ; $5b7a: $36 $8b
    sub h                                         ; $5b7c: $94
    nop                                           ; $5b7d: $00
    ld bc, $a86a                                  ; $5b7e: $01 $6a $a8
    ld b, c                                       ; $5b81: $41
    nop                                           ; $5b82: $00
    dec d                                         ; $5b83: $15
    adc d                                         ; $5b84: $8a
    sub [hl]                                      ; $5b85: $96
    ld b, e                                       ; $5b86: $43
    ld l, d                                       ; $5b87: $6a
    sbc $b7                                       ; $5b88: $de $b7
    ld hl, $cf38                                  ; $5b8a: $21 $38 $cf
    db $fc                                        ; $5b8d: $fc
    add h                                         ; $5b8e: $84
    inc hl                                        ; $5b8f: $23
    ld e, b                                       ; $5b90: $58
    sbc b                                         ; $5b91: $98
    ld d, d                                       ; $5b92: $52
    ld [de], a                                    ; $5b93: $12
    ld l, c                                       ; $5b94: $69
    xor c                                         ; $5b95: $a9
    ld d, c                                       ; $5b96: $51
    nop                                           ; $5b97: $00
    ld [bc], a                                    ; $5b98: $02
    ld a, d                                       ; $5b99: $7a
    sub a                                         ; $5b9a: $97
    jr nz, jr_017_5b9e                            ; $5b9b: $20 $01

    ld e, b                                       ; $5b9d: $58

jr_017_5b9e:
    add l                                         ; $5b9e: $85
    db $10                                        ; $5b9f: $10
    inc b                                         ; $5ba0: $04
    xor l                                         ; $5ba1: $ad
    db $ec                                        ; $5ba2: $ec
    add h                                         ; $5ba3: $84
    inc hl                                        ; $5ba4: $23
    ld a, h                                       ; $5ba5: $7c
    rst $38                                       ; $5ba6: $ff
    db $fd                                        ; $5ba7: $fd
    xor c                                         ; $5ba8: $a9
    cp [hl]                                       ; $5ba9: $be
    rst $38                                       ; $5baa: $ff
    db $fc                                        ; $5bab: $fc
    xor c                                         ; $5bac: $a9
    xor h                                         ; $5bad: $ac
    rst $38                                       ; $5bae: $ff
    rst $38                                       ; $5baf: $ff
    add l                                         ; $5bb0: $85
    jr c, jr_017_5b6f                             ; $5bb1: $38 $bc

    and h                                         ; $5bb3: $a4
    ld d, l                                       ; $5bb4: $55
    ld a, b                                       ; $5bb5: $78
    ld h, l                                       ; $5bb6: $65
    ld d, l                                       ; $5bb7: $55
    and l                                         ; $5bb8: $a5
    db $10                                        ; $5bb9: $10
    ld [bc], a                                    ; $5bba: $02
    ld l, c                                       ; $5bbb: $69
    ld [hl], d                                    ; $5bbc: $72
    nop                                           ; $5bbd: $00
    dec h                                         ; $5bbe: $25
    ld [hl], l                                    ; $5bbf: $75
    db $10                                        ; $5bc0: $10
    inc hl                                        ; $5bc1: $23
    ld h, [hl]                                    ; $5bc2: $66
    inc hl                                        ; $5bc3: $23
    ld b, h                                       ; $5bc4: $44
    ld [hl], e                                    ; $5bc5: $73
    nop                                           ; $5bc6: $00
    rlca                                          ; $5bc7: $07
    call c, $1683                                 ; $5bc8: $dc $83 $16
    xor [hl]                                      ; $5bcb: $ae
    reti                                          ; $5bcc: $d9


    ld [hl], a                                    ; $5bcd: $77
    sbc [hl]                                      ; $5bce: $9e
    cp $dd                                        ; $5bcf: $fe $dd
    rst $28                                       ; $5bd1: $ef
    ld [$df66], a                                 ; $5bd2: $ea $66 $df
    rst $38                                       ; $5bd5: $ff
    add h                                         ; $5bd6: $84
    adc e                                         ; $5bd7: $8b
    rst $38                                       ; $5bd8: $ff
    cp b                                          ; $5bd9: $b8
    ld h, [hl]                                    ; $5bda: $66
    db $dd                                        ; $5bdb: $dd
    cp e                                          ; $5bdc: $bb
    sbc e                                         ; $5bdd: $9b
    db $fd                                        ; $5bde: $fd
    and a                                         ; $5bdf: $a7
    ld c, c                                       ; $5be0: $49
    sbc $d7                                       ; $5be1: $de $d7
    dec h                                         ; $5be3: $25
    adc h                                         ; $5be4: $8c
    jp hl                                         ; $5be5: $e9


    ld d, d                                       ; $5be6: $52
    ld d, $85                                     ; $5be7: $16 $85
    ld d, e                                       ; $5be9: $53
    ld l, d                                       ; $5bea: $6a
    add d                                         ; $5beb: $82
    nop                                           ; $5bec: $00
    dec b                                         ; $5bed: $05
    add [hl]                                      ; $5bee: $86
    nop                                           ; $5bef: $00
    inc bc                                        ; $5bf0: $03
    sbc e                                         ; $5bf1: $9b
    add e                                         ; $5bf2: $83
    ld bc, $6557                                  ; $5bf3: $01 $57 $65
    ld [hl], $cb                                  ; $5bf6: $36 $cb
    add h                                         ; $5bf8: $84
    ld h, $ac                                     ; $5bf9: $26 $ac
    add $24                                       ; $5bfb: $c6 $24
    ld a, l                                       ; $5bfd: $7d
    db $fd                                        ; $5bfe: $fd
    sub l                                         ; $5bff: $95
    add hl, sp                                    ; $5c00: $39
    xor c                                         ; $5c01: $a9
    add l                                         ; $5c02: $85
    ld a, l                                       ; $5c03: $7d
    jp z, Jump_017_7c73                           ; $5c04: $ca $73 $7c

    sbc $81                                       ; $5c07: $de $81
    dec h                                         ; $5c09: $25
    cp a                                          ; $5c0a: $bf
    reti                                          ; $5c0b: $d9


    ld d, e                                       ; $5c0c: $53
    ld a, c                                       ; $5c0d: $79
    add a                                         ; $5c0e: $87
    ld d, a                                       ; $5c0f: $57
    cp d                                          ; $5c10: $ba
    and a                                         ; $5c11: $a7
    ld b, a                                       ; $5c12: $47
    xor l                                         ; $5c13: $ad
    sub $10                                       ; $5c14: $d6 $10
    inc a                                         ; $5c16: $3c
    rst $38                                       ; $5c17: $ff
    or [hl]                                       ; $5c18: $b6
    ld c, c                                       ; $5c19: $49
    cp h                                          ; $5c1a: $bc
    and [hl]                                      ; $5c1b: $a6
    ld a, l                                       ; $5c1c: $7d
    res 2, [hl]                                   ; $5c1d: $cb $96
    xor [hl]                                      ; $5c1f: $ae
    rst $38                                       ; $5c20: $ff
    or h                                          ; $5c21: $b4
    ld [hl+], a                                   ; $5c22: $22
    xor a                                         ; $5c23: $af
    reti                                          ; $5c24: $d9


    ld b, c                                       ; $5c25: $41
    ld l, b                                       ; $5c26: $68
    add [hl]                                      ; $5c27: $86
    ld de, $3143                                  ; $5c28: $11 $43 $31
    ld bc, $a548                                  ; $5c2b: $01 $48 $a5
    nop                                           ; $5c2e: $00
    ld b, $ca                                     ; $5c2f: $06 $ca
    ld h, d                                       ; $5c31: $62
    rla                                           ; $5c32: $17
    xor c                                         ; $5c33: $a9
    add l                                         ; $5c34: $85
    ld a, d                                       ; $5c35: $7a
    xor e                                         ; $5c36: $ab
    sub [hl]                                      ; $5c37: $96
    adc h                                         ; $5c38: $8c
    rst $28                                       ; $5c39: $ef
    db $ec                                        ; $5c3a: $ec
    add a                                         ; $5c3b: $87
    rst $18                                       ; $5c3c: $df
    rst $38                                       ; $5c3d: $ff
    xor c                                         ; $5c3e: $a9
    sbc $dd                                       ; $5c3f: $de $dd
    adc c                                         ; $5c41: $89
    cp h                                          ; $5c42: $bc
    jp c, Jump_017_4743                           ; $5c43: $da $43 $47

    jp z, Jump_000_0251                           ; $5c46: $ca $51 $02

    adc c                                         ; $5c49: $89
    add h                                         ; $5c4a: $84
    dec [hl]                                      ; $5c4b: $35
    ld l, b                                       ; $5c4c: $68
    ld [hl], e                                    ; $5c4d: $73
    ld b, a                                       ; $5c4e: $47
    cp [hl]                                       ; $5c4f: $be
    rst $00                                       ; $5c50: $c7
    ld b, h                                       ; $5c51: $44
    xor a                                         ; $5c52: $af
    db $eb                                        ; $5c53: $eb
    ld d, d                                       ; $5c54: $52
    ld e, b                                       ; $5c55: $58
    call z, Call_017_6476                         ; $5c56: $cc $76 $64
    ld [hl], l                                    ; $5c59: $75
    inc de                                        ; $5c5a: $13
    ld b, a                                       ; $5c5b: $47
    or a                                          ; $5c5c: $b7
    jr nz, jr_017_5c64                            ; $5c5d: $20 $05

    xor c                                         ; $5c5f: $a9
    add d                                         ; $5c60: $82
    ld [bc], a                                    ; $5c61: $02
    ld b, [hl]                                    ; $5c62: $46
    ld [hl], e                                    ; $5c63: $73

jr_017_5c64:
    ld [hl+], a                                   ; $5c64: $22
    inc h                                         ; $5c65: $24
    jr nz, jr_017_5c6a                            ; $5c66: $20 $02

    adc e                                         ; $5c68: $8b
    add d                                         ; $5c69: $82

jr_017_5c6a:
    nop                                           ; $5c6a: $00
    adc l                                         ; $5c6b: $8d
    db $eb                                        ; $5c6c: $eb
    ld b, d                                       ; $5c6d: $42
    ld l, c                                       ; $5c6e: $69
    rst $18                                       ; $5c6f: $df
    res 7, h                                      ; $5c70: $cb $bc
    jp c, $ad78                                   ; $5c72: $da $78 $ad

    db $fd                                        ; $5c75: $fd
    or a                                          ; $5c76: $b7
    adc [hl]                                      ; $5c77: $8e
    rst $38                                       ; $5c78: $ff
    add sp, $68                                   ; $5c79: $e8 $68
    sbc [hl]                                      ; $5c7b: $9e
    db $eb                                        ; $5c7c: $eb
    call $fbff                                    ; $5c7d: $cd $ff $fb
    xor e                                         ; $5c80: $ab
    rst $38                                       ; $5c81: $ff
    db $eb                                        ; $5c82: $eb
    adc c                                         ; $5c83: $89
    rst $38                                       ; $5c84: $ff
    cp $96                                        ; $5c85: $fe $96
    ld h, a                                       ; $5c87: $67
    cp e                                          ; $5c88: $bb
    adc b                                         ; $5c89: $88
    ld a, c                                       ; $5c8a: $79
    or a                                          ; $5c8b: $b7
    ld b, d                                       ; $5c8c: $42
    daa                                           ; $5c8d: $27
    ld [hl], e                                    ; $5c8e: $73
    nop                                           ; $5c8f: $00
    inc bc                                        ; $5c90: $03
    ld d, a                                       ; $5c91: $57
    ld d, b                                       ; $5c92: $50
    nop                                           ; $5c93: $00
    ld d, $63                                     ; $5c94: $16 $63
    ld sp, $5447                                  ; $5c96: $31 $47 $54
    ld d, [hl]                                    ; $5c99: $56
    call z, Call_000_2584                         ; $5c9a: $cc $84 $25
    cp [hl]                                       ; $5c9d: $be
    db $fc                                        ; $5c9e: $fc
    ld [hl], a                                    ; $5c9f: $77
    adc h                                         ; $5ca0: $8c
    cp $b9                                        ; $5ca1: $fe $b9
    ld a, d                                       ; $5ca3: $7a
    and a                                         ; $5ca4: $a7
    add [hl]                                      ; $5ca5: $86
    adc h                                         ; $5ca6: $8c
    or a                                          ; $5ca7: $b7
    jr nc, jr_017_5d05                            ; $5ca8: $30 $5b

    rst $28                                       ; $5caa: $ef
    and l                                         ; $5cab: $a5
    halt                                          ; $5cac: $76
    adc $b8                                       ; $5cad: $ce $b8
    ld d, h                                       ; $5caf: $54
    xor c                                         ; $5cb0: $a9
    add [hl]                                      ; $5cb1: $86
    ld l, d                                       ; $5cb2: $6a
    ret z                                         ; $5cb3: $c8

    ld d, c                                       ; $5cb4: $51
    inc bc                                        ; $5cb5: $03
    ld a, e                                       ; $5cb6: $7b
    rst $00                                       ; $5cb7: $c7
    ld h, [hl]                                    ; $5cb8: $66
    sbc a                                         ; $5cb9: $9f
    ei                                            ; $5cba: $fb
    and l                                         ; $5cbb: $a5
    adc d                                         ; $5cbc: $8a
    sub [hl]                                      ; $5cbd: $96
    ld h, l                                       ; $5cbe: $65
    call z, $23b7                                 ; $5cbf: $cc $b7 $23
    ld a, d                                       ; $5cc2: $7a
    ld [$1641], a                                 ; $5cc3: $ea $41 $16
    res 0, h                                      ; $5cc6: $cb $84
    ld h, $84                                     ; $5cc8: $26 $84
    ld b, c                                       ; $5cca: $41
    add hl, hl                                    ; $5ccb: $29
    and a                                         ; $5ccc: $a7
    jr nc, jr_017_5cf5                            ; $5ccd: $30 $26

    res 0, b                                      ; $5ccf: $cb $80
    ld bc, $b79c                                  ; $5cd1: $01 $9c $b7
    ld b, d                                       ; $5cd4: $42
    halt                                          ; $5cd5: $76
    ld h, l                                       ; $5cd6: $65
    scf                                           ; $5cd7: $37
    call z, Call_017_6ac8                         ; $5cd8: $cc $c8 $6a
    rst $18                                       ; $5cdb: $df
    ei                                            ; $5cdc: $fb
    halt                                          ; $5cdd: $76
    sbc a                                         ; $5cde: $9f
    rst $38                                       ; $5cdf: $ff
    reti                                          ; $5ce0: $d9


    sbc l                                         ; $5ce1: $9d
    db $ed                                        ; $5ce2: $ed
    and [hl]                                      ; $5ce3: $a6
    adc c                                         ; $5ce4: $89
    adc d                                         ; $5ce5: $8a
    add a                                         ; $5ce6: $87
    xor e                                         ; $5ce7: $ab
    bit 4, e                                      ; $5ce8: $cb $63
    dec h                                         ; $5cea: $25
    cp l                                          ; $5ceb: $bd
    sub h                                         ; $5cec: $94
    inc hl                                        ; $5ced: $23
    ld a, c                                       ; $5cee: $79
    ld [hl], e                                    ; $5cef: $73
    ld de, $3213                                  ; $5cf0: $11 $13 $32
    dec [hl]                                      ; $5cf3: $35
    ld l, e                                       ; $5cf4: $6b

jr_017_5cf5:
    ld h, b                                       ; $5cf5: $60
    ld bc, $d97e                                  ; $5cf6: $01 $7e $d9
    ld b, d                                       ; $5cf9: $42
    sbc a                                         ; $5cfa: $9f
    rst $38                                       ; $5cfb: $ff
    ret z                                         ; $5cfc: $c8

    sbc d                                         ; $5cfd: $9a
    sbc $cd                                       ; $5cfe: $de $cd
    rst $28                                       ; $5d00: $ef
    db $fd                                        ; $5d01: $fd
    sbc b                                         ; $5d02: $98
    adc [hl]                                      ; $5d03: $8e
    db $fd                                        ; $5d04: $fd

jr_017_5d05:
    sub h                                         ; $5d05: $94
    ld c, d                                       ; $5d06: $4a
    rst $08                                       ; $5d07: $cf
    rst $10                                       ; $5d08: $d7
    ld [hl], a                                    ; $5d09: $77
    ld a, d                                       ; $5d0a: $7a
    sub a                                         ; $5d0b: $97
    sbc d                                         ; $5d0c: $9a
    xor $a6                                       ; $5d0d: $ee $a6
    ld d, a                                       ; $5d0f: $57
    sbc $b6                                       ; $5d10: $de $b6
    dec h                                         ; $5d12: $25
    xor [hl]                                      ; $5d13: $ae
    db $fd                                        ; $5d14: $fd
    adc b                                         ; $5d15: $88
    ld a, c                                       ; $5d16: $79
    cp b                                          ; $5d17: $b8
    adc b                                         ; $5d18: $88
    xor a                                         ; $5d19: $af
    rst $00                                       ; $5d1a: $c7
    ld h, h                                       ; $5d1b: $64
    sbc [hl]                                      ; $5d1c: $9e
    db $eb                                        ; $5d1d: $eb
    ld h, e                                       ; $5d1e: $63
    adc c                                         ; $5d1f: $89
    db $dd                                        ; $5d20: $dd
    xor b                                         ; $5d21: $a8
    halt                                          ; $5d22: $76
    xor b                                         ; $5d23: $a8
    ld d, e                                       ; $5d24: $53
    dec h                                         ; $5d25: $25
    add h                                         ; $5d26: $84
    nop                                           ; $5d27: $00
    dec b                                         ; $5d28: $05
    ld [hl], h                                    ; $5d29: $74
    stop                                          ; $5d2a: $10 $00
    dec h                                         ; $5d2c: $25
    ld d, b                                       ; $5d2d: $50
    db $10                                        ; $5d2e: $10
    ld b, [hl]                                    ; $5d2f: $46
    ld h, h                                       ; $5d30: $64
    ld b, e                                       ; $5d31: $43
    add [hl]                                      ; $5d32: $86
    ld b, d                                       ; $5d33: $42
    dec h                                         ; $5d34: $25
    cp e                                          ; $5d35: $bb
    sub h                                         ; $5d36: $94
    ld bc, $d959                                  ; $5d37: $01 $59 $d9
    ld d, l                                       ; $5d3a: $55
    ld e, d                                       ; $5d3b: $5a
    jp c, $9ca7                                   ; $5d3c: $da $a7 $9c

    cp b                                          ; $5d3f: $b8
    ld h, [hl]                                    ; $5d40: $66
    rst $18                                       ; $5d41: $df
    cp $84                                        ; $5d42: $fe $84
    adc e                                         ; $5d44: $8b
    rst $38                                       ; $5d45: $ff
    jp c, $ff8a                                   ; $5d46: $da $8a $ff

    cp $bf                                        ; $5d49: $fe $bf
    cp $a8                                        ; $5d4b: $fe $a8
    xor a                                         ; $5d4d: $af
    rst $38                                       ; $5d4e: $ff

jr_017_5d4f:
    rst $20                                       ; $5d4f: $e7
    ld l, b                                       ; $5d50: $68
    rst $08                                       ; $5d51: $cf
    ld [$9d64], a                                 ; $5d52: $ea $64 $9d
    bit 6, [hl]                                   ; $5d55: $cb $76
    sub a                                         ; $5d57: $97
    ld sp, $ad04                                  ; $5d58: $31 $04 $ad
    add $02                                       ; $5d5b: $c6 $02
    ld e, h                                       ; $5d5d: $5c
    ld [$1641], a                                 ; $5d5e: $ea $41 $16
    sbc c                                         ; $5d61: $99
    ld [hl], h                                    ; $5d62: $74
    ld l, c                                       ; $5d63: $69
    ld h, e                                       ; $5d64: $63
    nop                                           ; $5d65: $00
    ld c, b                                       ; $5d66: $48
    sub [hl]                                      ; $5d67: $96
    db $10                                        ; $5d68: $10
    ld [bc], a                                    ; $5d69: $02
    ld a, b                                       ; $5d6a: $78
    stop                                          ; $5d6b: $10 $00
    scf                                           ; $5d6d: $37
    ld d, h                                       ; $5d6e: $54
    daa                                           ; $5d6f: $27
    ld h, l                                       ; $5d70: $65
    jr nz, jr_017_5d8b                            ; $5d71: $20 $18

    sbc e                                         ; $5d73: $9b
    ld h, c                                       ; $5d74: $61
    inc h                                         ; $5d75: $24
    adc l                                         ; $5d76: $8d
    sub h                                         ; $5d77: $94
    jr nz, jr_017_5dc2                            ; $5d78: $20 $48

    ld a, b                                       ; $5d7a: $78
    ld l, b                                       ; $5d7b: $68
    res 0, l                                      ; $5d7c: $cb $85
    jr c, jr_017_5d4f                             ; $5d7e: $38 $cf

    reti                                          ; $5d80: $d9


    ld e, b                                       ; $5d81: $58
    xor a                                         ; $5d82: $af
    db $fd                                        ; $5d83: $fd
    xor c                                         ; $5d84: $a9
    adc l                                         ; $5d85: $8d
    call c, $dfcc                                 ; $5d86: $dc $cc $df
    db $ec                                        ; $5d89: $ec
    adc b                                         ; $5d8a: $88

jr_017_5d8b:
    rst $18                                       ; $5d8b: $df
    cp $96                                        ; $5d8c: $fe $96
    xor l                                         ; $5d8e: $ad
    rst $38                                       ; $5d8f: $ff
    res 3, c                                      ; $5d90: $cb $99
    xor b                                         ; $5d92: $a8
    ld b, l                                       ; $5d93: $45
    ld c, d                                       ; $5d94: $4a
    and l                                         ; $5d95: $a5
    db $10                                        ; $5d96: $10
    rlca                                          ; $5d97: $07
    sub a                                         ; $5d98: $97
    jr nz, jr_017_5d9b                            ; $5d99: $20 $00

jr_017_5d9b:
    ld h, $40                                     ; $5d9b: $26 $40
    nop                                           ; $5d9d: $00
    ld [hl], $43                                  ; $5d9e: $36 $43
    ld b, [hl]                                    ; $5da0: $46
    cp d                                          ; $5da1: $ba
    ld d, e                                       ; $5da2: $53
    rla                                           ; $5da3: $17
    rst $28                                       ; $5da4: $ef
    rst $10                                       ; $5da5: $d7
    scf                                           ; $5da6: $37
    xor [hl]                                      ; $5da7: $ae
    db $fc                                        ; $5da8: $fc
    adc b                                         ; $5da9: $88
    ld a, l                                       ; $5daa: $7d
    jp c, $afa8                                   ; $5dab: $da $a8 $af

    jp c, $df87                                   ; $5dae: $da $87 $df

    ld [$6a42], a                                 ; $5db1: $ea $42 $6a
    db $ec                                        ; $5db4: $ec
    ld h, e                                       ; $5db5: $63
    ld h, $cb                                     ; $5db6: $26 $cb
    add l                                         ; $5db8: $85
    dec d                                         ; $5db9: $15
    ld [hl], l                                    ; $5dba: $75
    jr nc, jr_017_5dc3                            ; $5dbb: $30 $06

    halt                                          ; $5dbd: $76
    jr nz, jr_017_5dc3                            ; $5dbe: $20 $03

    adc d                                         ; $5dc0: $8a
    ld h, b                                       ; $5dc1: $60

jr_017_5dc2:
    nop                                           ; $5dc2: $00

jr_017_5dc3:
    ld e, d                                       ; $5dc3: $5a
    sub e                                         ; $5dc4: $93
    ld de, $9679                                  ; $5dc5: $11 $79 $96
    dec h                                         ; $5dc8: $25
    sbc b                                         ; $5dc9: $98
    add e                                         ; $5dca: $83
    dec b                                         ; $5dcb: $05
    adc l                                         ; $5dcc: $8d
    and $44                                       ; $5dcd: $e6 $44
    ld a, [hl]                                    ; $5dcf: $7e
    ei                                            ; $5dd0: $fb
    ld [hl], c                                    ; $5dd1: $71
    ld e, d                                       ; $5dd2: $5a
    jp z, $9a73                                   ; $5dd3: $ca $73 $9a

    db $db                                        ; $5dd6: $db
    ld h, h                                       ; $5dd7: $64
    adc c                                         ; $5dd8: $89
    db $eb                                        ; $5dd9: $eb
    ld d, c                                       ; $5dda: $51
    ld b, $fd                                     ; $5ddb: $06 $fd
    sub l                                         ; $5ddd: $95
    jr z, @-$32                                   ; $5dde: $28 $cc

    or [hl]                                       ; $5de0: $b6
    ld l, d                                       ; $5de1: $6a
    cp h                                          ; $5de2: $bc
    and l                                         ; $5de3: $a5
    ld a, c                                       ; $5de4: $79
    rst $28                                       ; $5de5: $ef
    ld a, [$ff86]                                 ; $5de6: $fa $86 $ff
    rst $38                                       ; $5de9: $ff
    xor b                                         ; $5dea: $a8
    xor $ff                                       ; $5deb: $ee $ff
    adc $ff                                       ; $5ded: $ce $ff
    db $fc                                        ; $5def: $fc
    sbc h                                         ; $5df0: $9c
    rst $28                                       ; $5df1: $ef
    db $fd                                        ; $5df2: $fd
    ld [hl], h                                    ; $5df3: $74
    ld l, h                                       ; $5df4: $6c
    cp $c5                                        ; $5df5: $fe $c5
    ld d, [hl]                                    ; $5df7: $56
    ld [hl], a                                    ; $5df8: $77
    ld b, d                                       ; $5df9: $42
    ld h, l                                       ; $5dfa: $65
    ld d, e                                       ; $5dfb: $53
    nop                                           ; $5dfc: $00
    inc bc                                        ; $5dfd: $03
    add a                                         ; $5dfe: $87
    stop                                          ; $5dff: $10 $00
    ld b, l                                       ; $5e01: $45
    ld sp, $0200                                  ; $5e02: $31 $00 $02
    ld sp, $3514                                  ; $5e05: $31 $14 $35
    jr nz, jr_017_5e0b                            ; $5e08: $20 $01

    ld a, e                                       ; $5e0a: $7b

jr_017_5e0b:
    sub h                                         ; $5e0b: $94
    nop                                           ; $5e0c: $00
    ld a, l                                       ; $5e0d: $7d
    db $ec                                        ; $5e0e: $ec
    ld h, e                                       ; $5e0f: $63
    adc b                                         ; $5e10: $88
    cp h                                          ; $5e11: $bc
    adc d                                         ; $5e12: $8a

jr_017_5e13:
    xor e                                         ; $5e13: $ab
    call c, $bd9b                                 ; $5e14: $dc $9b $bd
    db $ed                                        ; $5e17: $ed
    sub [hl]                                      ; $5e18: $96
    ld l, l                                       ; $5e19: $6d
    rst $38                                       ; $5e1a: $ff
    ret c                                         ; $5e1b: $d8

    ld l, d                                       ; $5e1c: $6a
    rst $08                                       ; $5e1d: $cf
    db $eb                                        ; $5e1e: $eb
    sbc b                                         ; $5e1f: $98
    sbc l                                         ; $5e20: $9d
    cp e                                          ; $5e21: $bb
    xor c                                         ; $5e22: $a9
    sbc $ca                                       ; $5e23: $de $ca
    ld a, b                                       ; $5e25: $78
    rst $28                                       ; $5e26: $ef
    ld [$6b44], a                                 ; $5e27: $ea $44 $6b
    db $ed                                        ; $5e2a: $ed
    add h                                         ; $5e2b: $84
    ld h, $aa                                     ; $5e2c: $26 $aa
    add h                                         ; $5e2e: $84
    inc d                                         ; $5e2f: $14
    ld b, e                                       ; $5e30: $43
    jr nz, jr_017_5e49                            ; $5e31: $20 $16

    ld h, [hl]                                    ; $5e33: $66
    jr nz, jr_017_5e36                            ; $5e34: $20 $00

jr_017_5e36:
    scf                                           ; $5e36: $37
    ld d, b                                       ; $5e37: $50
    nop                                           ; $5e38: $00
    inc bc                                        ; $5e39: $03
    ld d, h                                       ; $5e3a: $54
    jr nz, jr_017_5e6f                            ; $5e3b: $20 $32

    db $10                                        ; $5e3d: $10
    ld [bc], a                                    ; $5e3e: $02
    ld h, [hl]                                    ; $5e3f: $66
    ld h, d                                       ; $5e40: $62
    ld bc, $eb3b                                  ; $5e41: $01 $3b $eb
    ld [hl], d                                    ; $5e44: $72
    jr z, jr_017_5e13                             ; $5e45: $28 $cc

    rst $00                                       ; $5e47: $c7
    sbc e                                         ; $5e48: $9b

jr_017_5e49:
    cp h                                          ; $5e49: $bc
    cp d                                          ; $5e4a: $ba
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    cp b                                          ; $5e4d: $b8
    cp l                                          ; $5e4e: $bd
    rst $38                                       ; $5e4f: $ff
    ei                                            ; $5e50: $fb
    adc d                                         ; $5e51: $8a
    rst $38                                       ; $5e52: $ff
    cp $ab                                        ; $5e53: $fe $ab
    cp d                                          ; $5e55: $ba
    cp b                                          ; $5e56: $b8
    sbc h                                         ; $5e57: $9c
    db $dd                                        ; $5e58: $dd
    and e                                         ; $5e59: $a3
    inc sp                                        ; $5e5a: $33
    adc e                                         ; $5e5b: $8b
    sub e                                         ; $5e5c: $93
    nop                                           ; $5e5d: $00
    ld h, $98                                     ; $5e5e: $26 $98
    ld b, c                                       ; $5e60: $41
    ld sp, $0221                                  ; $5e61: $31 $21 $02
    ld b, l                                       ; $5e64: $45
    ld [hl], e                                    ; $5e65: $73
    nop                                           ; $5e66: $00
    rla                                           ; $5e67: $17
    sub [hl]                                      ; $5e68: $96
    db $10                                        ; $5e69: $10
    inc bc                                        ; $5e6a: $03
    adc d                                         ; $5e6b: $8a
    sub l                                         ; $5e6c: $95
    ld h, l                                       ; $5e6d: $65
    ld h, [hl]                                    ; $5e6e: $66

jr_017_5e6f:
    ld d, h                                       ; $5e6f: $54
    adc b                                         ; $5e70: $88
    jp z, Jump_017_6a65                           ; $5e71: $ca $65 $6a

    rst $38                                       ; $5e74: $ff
    ret c                                         ; $5e75: $d8

    ld b, [hl]                                    ; $5e76: $46
    adc $fe                                       ; $5e77: $ce $fe
    cp h                                          ; $5e79: $bc
    cp l                                          ; $5e7a: $bd
    db $db                                        ; $5e7b: $db
    cp h                                          ; $5e7c: $bc
    rst $18                                       ; $5e7d: $df
    ret                                           ; $5e7e: $c9


    adc e                                         ; $5e7f: $8b
    rst $28                                       ; $5e80: $ef
    db $fd                                        ; $5e81: $fd
    ld [hl], h                                    ; $5e82: $74
    ld a, e                                       ; $5e83: $7b
    db $dd                                        ; $5e84: $dd

jr_017_5e85:
    sbc b                                         ; $5e85: $98
    adc b                                         ; $5e86: $88
    sbc c                                         ; $5e87: $99
    ld h, a                                       ; $5e88: $67
    ld d, a                                       ; $5e89: $57
    ld [hl], e                                    ; $5e8a: $73
    nop                                           ; $5e8b: $00
    add hl, de                                    ; $5e8c: $19
    xor b                                         ; $5e8d: $a8
    jr nc, jr_017_5e92                            ; $5e8e: $30 $02

    ld b, a                                       ; $5e90: $47
    ld d, c                                       ; $5e91: $51

jr_017_5e92:
    nop                                           ; $5e92: $00
    scf                                           ; $5e93: $37
    ld d, l                                       ; $5e94: $55
    ld d, [hl]                                    ; $5e95: $56
    sub a                                         ; $5e96: $97
    ld [hl-], a                                   ; $5e97: $32
    ld a, [hl-]                                   ; $5e98: $3a
    rst $38                                       ; $5e99: $ff
    add sp, $37                                   ; $5e9a: $e8 $37
    xor [hl]                                      ; $5e9c: $ae
    ei                                            ; $5e9d: $fb
    add a                                         ; $5e9e: $87
    ld l, e                                       ; $5e9f: $6b
    jp z, $9aa8                                   ; $5ea0: $ca $a8 $9a

    ld h, d                                       ; $5ea3: $62
    ld bc, $b67c                                  ; $5ea4: $01 $7c $b6
    db $10                                        ; $5ea7: $10
    inc b                                         ; $5ea8: $04
    add a                                         ; $5ea9: $87
    jr nz, jr_017_5ead                            ; $5eaa: $20 $01

    inc [hl]                                      ; $5eac: $34

jr_017_5ead:
    ld b, h                                       ; $5ead: $44
    jr c, @+$75                                   ; $5eae: $38 $73

    nop                                           ; $5eb0: $00
    dec hl                                        ; $5eb1: $2b
    call c, Call_000_2670                         ; $5eb2: $dc $70 $26
    cp a                                          ; $5eb5: $bf
    add $52                                       ; $5eb6: $c6 $52
    ld a, d                                       ; $5eb8: $7a
    cp e                                          ; $5eb9: $bb
    call $a7fe                                    ; $5eba: $cd $fe $a7
    ld l, h                                       ; $5ebd: $6c
    rst $38                                       ; $5ebe: $ff
    ld a, [$df69]                                 ; $5ebf: $fa $69 $df
    db $fd                                        ; $5ec2: $fd
    sub l                                         ; $5ec3: $95
    ld l, d                                       ; $5ec4: $6a
    cp c                                          ; $5ec5: $b9
    cp c                                          ; $5ec6: $b9
    sbc $a5                                       ; $5ec7: $de $a5
    inc sp                                        ; $5ec9: $33
    xor h                                         ; $5eca: $ac
    ret c                                         ; $5ecb: $d8

    db $10                                        ; $5ecc: $10
    ld b, a                                       ; $5ecd: $47
    jp c, $0152                                   ; $5ece: $da $52 $01

    ld b, e                                       ; $5ed1: $43
    ld [hl-], a                                   ; $5ed2: $32
    scf                                           ; $5ed3: $37
    ld [hl], e                                    ; $5ed4: $73
    nop                                           ; $5ed5: $00
    ld h, $97                                     ; $5ed6: $26 $97
    jr nz, jr_017_5eda                            ; $5ed8: $20 $00

jr_017_5eda:
    adc e                                         ; $5eda: $8b
    sub l                                         ; $5edb: $95
    jr nz, jr_017_5f22                            ; $5edc: $20 $44

    ld b, e                                       ; $5ede: $43
    dec [hl]                                      ; $5edf: $35
    cp b                                          ; $5ee0: $b8
    ld h, e                                       ; $5ee1: $63
    daa                                           ; $5ee2: $27
    cp h                                          ; $5ee3: $bc
    or l                                          ; $5ee4: $b5
    inc de                                        ; $5ee5: $13
    ld a, l                                       ; $5ee6: $7d
    db $fd                                        ; $5ee7: $fd
    or a                                          ; $5ee8: $b7
    ld a, e                                       ; $5ee9: $7b
    set 1, e                                      ; $5eea: $cb $cb
    rst $28                                       ; $5eec: $ef
    db $fd                                        ; $5eed: $fd
    xor d                                         ; $5eee: $aa
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    and a                                         ; $5ef1: $a7
    sbc h                                         ; $5ef2: $9c
    rst $38                                       ; $5ef3: $ff
    db $fd                                        ; $5ef4: $fd
    adc c                                         ; $5ef5: $89
    res 5, c                                      ; $5ef6: $cb $a9
    ld a, d                                       ; $5ef8: $7a
    sub a                                         ; $5ef9: $97
    ld d, d                                       ; $5efa: $52
    ld e, c                                       ; $5efb: $59
    cp h                                          ; $5efc: $bc
    ld d, b                                       ; $5efd: $50
    nop                                           ; $5efe: $00
    jr c, jr_017_5e85                             ; $5eff: $38 $84

    nop                                           ; $5f01: $00
    ld [de], a                                    ; $5f02: $12
    ld [hl-], a                                   ; $5f03: $32
    nop                                           ; $5f04: $00
    ld sp, $0110                                  ; $5f05: $31 $10 $01
    ld l, c                                       ; $5f08: $69
    sub l                                         ; $5f09: $95
    nop                                           ; $5f0a: $00
    dec b                                         ; $5f0b: $05
    xor d                                         ; $5f0c: $aa
    ld [hl], e                                    ; $5f0d: $73
    daa                                           ; $5f0e: $27
    adc c                                         ; $5f0f: $89
    sub a                                         ; $5f10: $97
    sbc c                                         ; $5f11: $99
    sbc c                                         ; $5f12: $99
    ld h, l                                       ; $5f13: $65
    xor [hl]                                      ; $5f14: $ae
    rst $38                                       ; $5f15: $ff
    or a                                          ; $5f16: $b7
    ld l, b                                       ; $5f17: $68
    rst $38                                       ; $5f18: $ff
    db $fd                                        ; $5f19: $fd
    adc c                                         ; $5f1a: $89
    rst $18                                       ; $5f1b: $df
    rst $38                                       ; $5f1c: $ff
    rst $08                                       ; $5f1d: $cf
    call c, $8ca7                                 ; $5f1e: $dc $a7 $8c
    rst $28                                       ; $5f21: $ef

jr_017_5f22:
    ld [$8e54], a                                 ; $5f22: $ea $54 $8e
    db $fd                                        ; $5f25: $fd
    ld [hl], e                                    ; $5f26: $73
    ld e, b                                       ; $5f27: $58
    xor h                                         ; $5f28: $ac
    sub a                                         ; $5f29: $97
    sbc b                                         ; $5f2a: $98
    ld [hl], h                                    ; $5f2b: $74
    inc bc                                        ; $5f2c: $03
    ld e, c                                       ; $5f2d: $59
    ret                                           ; $5f2e: $c9


    jr nz, jr_017_5f36                            ; $5f2f: $20 $05

    sbc d                                         ; $5f31: $9a
    ld d, b                                       ; $5f32: $50
    nop                                           ; $5f33: $00
    dec h                                         ; $5f34: $25
    ld b, d                                       ; $5f35: $42

jr_017_5f36:
    inc hl                                        ; $5f36: $23
    inc hl                                        ; $5f37: $23
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    ld e, b                                       ; $5f3a: $58
    jr nz, jr_017_5f3d                            ; $5f3b: $20 $00

jr_017_5f3d:
    ld c, b                                       ; $5f3d: $48
    ld [hl], e                                    ; $5f3e: $73
    nop                                           ; $5f3f: $00
    dec d                                         ; $5f40: $15
    ld h, [hl]                                    ; $5f41: $66
    ld c, b                                       ; $5f42: $48
    ld a, e                                       ; $5f43: $7b
    sub l                                         ; $5f44: $95
    ld [hl], $9f                                  ; $5f45: $36 $9f
    db $fc                                        ; $5f47: $fc
    ld [hl], l                                    ; $5f48: $75
    xor a                                         ; $5f49: $af
    rst $38                                       ; $5f4a: $ff
    ret c                                         ; $5f4b: $d8

    cp [hl]                                       ; $5f4c: $be
    rst $38                                       ; $5f4d: $ff
    call c, $ffff                                 ; $5f4e: $dc $ff $ff
    cp d                                          ; $5f51: $ba
    xor l                                         ; $5f52: $ad
    rst $38                                       ; $5f53: $ff
    and [hl]                                      ; $5f54: $a6
    ld c, h                                       ; $5f55: $4c
    rst $38                                       ; $5f56: $ff
    push bc                                       ; $5f57: $c5
    ld [hl], $7b                                  ; $5f58: $36 $7b
    and h                                         ; $5f5a: $a4
    ld b, h                                       ; $5f5b: $44
    ld a, d                                       ; $5f5c: $7a
    ld [hl], c                                    ; $5f5d: $71
    ld de, $8279                                  ; $5f5e: $11 $79 $82
    ld bc, $8347                                  ; $5f61: $01 $47 $83
    ld bc, $8414                                  ; $5f64: $01 $14 $84
    ld bc, $a517                                  ; $5f67: $01 $17 $a5
    jr nz, jr_017_5f95                            ; $5f6a: $20 $29

    xor b                                         ; $5f6c: $a8
    ld b, b                                       ; $5f6d: $40
    ld [hl], $ab                                  ; $5f6e: $36 $ab
    ld h, c                                       ; $5f70: $61
    ld b, h                                       ; $5f71: $44
    call z, Call_000_2483                         ; $5f72: $cc $83 $24
    call c, $28b6                                 ; $5f75: $dc $b6 $28
    xor $e8                                       ; $5f78: $ee $e8
    ld e, c                                       ; $5f7a: $59
    rst $18                                       ; $5f7b: $df
    ld a, [$cf88]                                 ; $5f7c: $fa $88 $cf
    ei                                            ; $5f7f: $fb
    add h                                         ; $5f80: $84
    cp a                                          ; $5f81: $bf
    ld a, [$ab52]                                 ; $5f82: $fa $52 $ab
    jp c, Jump_017_4621                           ; $5f85: $da $21 $46

    ret                                           ; $5f88: $c9


    ld hl, $b805                                  ; $5f89: $21 $05 $b8
    ld sp, $a806                                  ; $5f8c: $31 $06 $a8
    ld b, b                                       ; $5f8f: $40
    ld h, $9a                                     ; $5f90: $26 $9a
    ld [hl], c                                    ; $5f92: $71
    inc sp                                        ; $5f93: $33
    cp [hl]                                       ; $5f94: $be

jr_017_5f95:
    and h                                         ; $5f95: $a4
    inc sp                                        ; $5f96: $33
    rst $18                                       ; $5f97: $df
    reti                                          ; $5f98: $d9


    ld b, a                                       ; $5f99: $47
    cp $e9                                        ; $5f9a: $fe $e9
    jr c, @-$1f                                   ; $5f9c: $38 $df

    ld a, [$bf58]                                 ; $5f9e: $fa $58 $bf
    ei                                            ; $5fa1: $fb
    ld [hl], l                                    ; $5fa2: $75
    sbc a                                         ; $5fa3: $9f
    db $fd                                        ; $5fa4: $fd
    add e                                         ; $5fa5: $83
    adc h                                         ; $5fa6: $8c
    ret                                           ; $5fa7: $c9


    db $10                                        ; $5fa8: $10
    ld b, [hl]                                    ; $5fa9: $46
    xor c                                         ; $5faa: $a9
    db $10                                        ; $5fab: $10
    ld [bc], a                                    ; $5fac: $02
    add a                                         ; $5fad: $87
    nop                                           ; $5fae: $00
    ld [bc], a                                    ; $5faf: $02
    add a                                         ; $5fb0: $87
    db $10                                        ; $5fb1: $10
    ld [bc], a                                    ; $5fb2: $02
    ld a, b                                       ; $5fb3: $78
    jr nc, jr_017_5fb8                            ; $5fb4: $30 $02

    ld e, d                                       ; $5fb6: $5a
    ld h, c                                       ; $5fb7: $61

jr_017_5fb8:
    nop                                           ; $5fb8: $00
    ld l, h                                       ; $5fb9: $6c
    add e                                         ; $5fba: $83
    db $10                                        ; $5fbb: $10
    ld a, e                                       ; $5fbc: $7b
    sub a                                         ; $5fbd: $97
    ld [de], a                                    ; $5fbe: $12
    sbc e                                         ; $5fbf: $9b
    ret                                           ; $5fc0: $c9


    ld h, $9f                                     ; $5fc1: $26 $9f
    db $fd                                        ; $5fc3: $fd
    ld d, a                                       ; $5fc4: $57
    ld l, a                                       ; $5fc5: $6f
    rst $38                                       ; $5fc6: $ff
    cp c                                          ; $5fc7: $b9
    sbc a                                         ; $5fc8: $9f
    rst $38                                       ; $5fc9: $ff
    rst $00                                       ; $5fca: $c7
    xor a                                         ; $5fcb: $af
    rst $38                                       ; $5fcc: $ff
    or a                                          ; $5fcd: $b7
    xor e                                         ; $5fce: $ab
    rst $28                                       ; $5fcf: $ef
    sub [hl]                                      ; $5fd0: $96
    ld b, [hl]                                    ; $5fd1: $46
    xor $85                                       ; $5fd2: $ee $85
    dec b                                         ; $5fd4: $05
    xor e                                         ; $5fd5: $ab
    add h                                         ; $5fd6: $84
    ld b, $8b                                     ; $5fd7: $06 $8b
    sub e                                         ; $5fd9: $93
    dec d                                         ; $5fda: $15
    ld l, l                                       ; $5fdb: $6d
    and h                                         ; $5fdc: $a4
    db $10                                        ; $5fdd: $10
    ld l, l                                       ; $5fde: $6d
    or a                                          ; $5fdf: $b7
    jr nz, jr_017_605d                            ; $5fe0: $20 $7b

    xor b                                         ; $5fe2: $a8
    ld [hl+], a                                   ; $5fe3: $22
    ld l, c                                       ; $5fe4: $69
    jp z, Jump_017_5b35                           ; $5fe5: $ca $35 $5b

    db $db                                        ; $5fe8: $db
    ld d, h                                       ; $5fe9: $54
    ld a, $ff                                     ; $5fea: $3e $ff
    or a                                          ; $5fec: $b7
    ld a, a                                       ; $5fed: $7f
    rst $38                                       ; $5fee: $ff
    add sp, -$41                                  ; $5fef: $e8 $bf
    rst $38                                       ; $5ff1: $ff
    reti                                          ; $5ff2: $d9


    xor h                                         ; $5ff3: $ac
    rst $38                                       ; $5ff4: $ff
    ret z                                         ; $5ff5: $c8

    ld e, b                                       ; $5ff6: $58
    rst $28                                       ; $5ff7: $ef
    add $17                                       ; $5ff8: $c6 $17
    xor h                                         ; $5ffa: $ac
    or h                                          ; $5ffb: $b4
    inc d                                         ; $5ffc: $14
    ld e, d                                       ; $5ffd: $5a
    and e                                         ; $5ffe: $a3
    ld hl, $935b                                  ; $5fff: $21 $5b $93
    db $10                                        ; $6002: $10
    ld e, d                                       ; $6003: $5a
    sub h                                         ; $6004: $94
    ld de, $9557                                  ; $6005: $11 $57 $95
    ld [bc], a                                    ; $6008: $02
    scf                                           ; $6009: $37
    and [hl]                                      ; $600a: $a6
    inc hl                                        ; $600b: $23
    ld a, [hl-]                                   ; $600c: $3a
    ret z                                         ; $600d: $c8

    ld d, d                                       ; $600e: $52
    ld c, h                                       ; $600f: $4c
    jp c, $7d72                                   ; $6010: $da $72 $7d

    cp $93                                        ; $6013: $fe $93
    ld a, b                                       ; $6015: $78
    rst $28                                       ; $6016: $ef
    and a                                         ; $6017: $a7
    ld a, d                                       ; $6018: $7a
    cp $a6                                        ; $6019: $fe $a6
    scf                                           ; $601b: $37
    db $dd                                        ; $601c: $dd
    and [hl]                                      ; $601d: $a6
    dec [hl]                                      ; $601e: $35
    xor e                                         ; $601f: $ab
    sub [hl]                                      ; $6020: $96
    ld [hl+], a                                   ; $6021: $22
    adc c                                         ; $6022: $89
    and a                                         ; $6023: $a7
    ld d, e                                       ; $6024: $53
    ld a, b                                       ; $6025: $78
    sub a                                         ; $6026: $97
    ld [hl], h                                    ; $6027: $74
    ld l, b                                       ; $6028: $68
    add [hl]                                      ; $6029: $86
    ld b, h                                       ; $602a: $44
    ld b, a                                       ; $602b: $47
    sub a                                         ; $602c: $97
    ld d, h                                       ; $602d: $54
    ld b, h                                       ; $602e: $44
    ld d, [hl]                                    ; $602f: $56
    ld h, l                                       ; $6030: $65
    ld d, [hl]                                    ; $6031: $56
    ld h, [hl]                                    ; $6032: $66
    ld d, l                                       ; $6033: $55
    ld d, l                                       ; $6034: $55
    ld d, h                                       ; $6035: $54
    ld [hl-], a                                   ; $6036: $32
    inc hl                                        ; $6037: $23
    inc sp                                        ; $6038: $33
    ld [hl-], a                                   ; $6039: $32
    ld de, $1211                                  ; $603a: $11 $11 $12
    ld [hl+], a                                   ; $603d: $22
    ld [hl+], a                                   ; $603e: $22
    ld [de], a                                    ; $603f: $12
    inc hl                                        ; $6040: $23
    inc sp                                        ; $6041: $33
    inc sp                                        ; $6042: $33
    inc [hl]                                      ; $6043: $34
    ld b, l                                       ; $6044: $45
    ld h, a                                       ; $6045: $67
    ld h, l                                       ; $6046: $65
    ld d, l                                       ; $6047: $55
    ld d, l                                       ; $6048: $55
    ld h, [hl]                                    ; $6049: $66
    ld h, [hl]                                    ; $604a: $66
    ld h, [hl]                                    ; $604b: $66
    ld [hl], a                                    ; $604c: $77
    ld a, b                                       ; $604d: $78
    adc b                                         ; $604e: $88
    add a                                         ; $604f: $87
    adc c                                         ; $6050: $89
    xor e                                         ; $6051: $ab
    cp h                                          ; $6052: $bc
    cp e                                          ; $6053: $bb
    cp e                                          ; $6054: $bb
    call z, $eedd                                 ; $6055: $cc $dd $ee
    db $ed                                        ; $6058: $ed
    db $dd                                        ; $6059: $dd
    rst $28                                       ; $605a: $ef
    cp $dd                                        ; $605b: $fe $dd

jr_017_605d:
    sbc $ff                                       ; $605d: $de $ff
    cp $ec                                        ; $605f: $fe $ec
    call z, $dccd                                 ; $6061: $cc $cd $dc
    cp d                                          ; $6064: $ba
    sbc c                                         ; $6065: $99
    sbc c                                         ; $6066: $99
    xor c                                         ; $6067: $a9
    add [hl]                                      ; $6068: $86
    ld h, l                                       ; $6069: $65
    ld d, [hl]                                    ; $606a: $56
    ld [hl], a                                    ; $606b: $77
    ld h, l                                       ; $606c: $65
    ld b, e                                       ; $606d: $43
    inc [hl]                                      ; $606e: $34
    ld b, h                                       ; $606f: $44
    ld [hl-], a                                   ; $6070: $32
    ld de, $3323                                  ; $6071: $11 $23 $33
    ld hl, $1111                                  ; $6074: $21 $11 $11
    ld [hl+], a                                   ; $6077: $22
    ld [hl-], a                                   ; $6078: $32
    ld hl, $4423                                  ; $6079: $21 $23 $44
    ld d, l                                       ; $607c: $55
    ld b, h                                       ; $607d: $44
    ld d, [hl]                                    ; $607e: $56
    ld a, b                                       ; $607f: $78
    sbc c                                         ; $6080: $99
    adc b                                         ; $6081: $88
    adc c                                         ; $6082: $89
    xor e                                         ; $6083: $ab
    call z, $cccc                                 ; $6084: $cc $cc $cc
    call $ccdd                                    ; $6087: $cd $dd $cc
    cp e                                          ; $608a: $bb
    call z, $cbdd                                 ; $608b: $cc $dd $cb
    xor c                                         ; $608e: $a9
    sbc d                                         ; $608f: $9a
    xor d                                         ; $6090: $aa
    sbc b                                         ; $6091: $98
    ld [hl], a                                    ; $6092: $77
    ld [hl], a                                    ; $6093: $77
    ld [hl], a                                    ; $6094: $77
    ld h, l                                       ; $6095: $65
    ld d, h                                       ; $6096: $54
    ld b, h                                       ; $6097: $44
    ld d, l                                       ; $6098: $55
    ld d, h                                       ; $6099: $54
    ld b, e                                       ; $609a: $43
    inc sp                                        ; $609b: $33
    ld b, h                                       ; $609c: $44
    ld b, h                                       ; $609d: $44
    inc sp                                        ; $609e: $33
    inc sp                                        ; $609f: $33
    ld b, h                                       ; $60a0: $44
    ld b, h                                       ; $60a1: $44
    ld b, h                                       ; $60a2: $44
    ld b, h                                       ; $60a3: $44
    ld b, l                                       ; $60a4: $45
    ld h, [hl]                                    ; $60a5: $66
    ld h, l                                       ; $60a6: $65
    ld d, [hl]                                    ; $60a7: $56
    ld h, a                                       ; $60a8: $67
    adc c                                         ; $60a9: $89
    sbc c                                         ; $60aa: $99
    adc b                                         ; $60ab: $88
    sbc c                                         ; $60ac: $99
    xor e                                         ; $60ad: $ab
    cp h                                          ; $60ae: $bc
    cp e                                          ; $60af: $bb
    cp h                                          ; $60b0: $bc
    db $dd                                        ; $60b1: $dd
    db $dd                                        ; $60b2: $dd
    call z, $ddcd                                 ; $60b3: $cc $cd $dd
    db $dd                                        ; $60b6: $dd
    call z, $bbbb                                 ; $60b7: $cc $bb $bb
    cp e                                          ; $60ba: $bb
    xor c                                         ; $60bb: $a9
    sbc c                                         ; $60bc: $99
    sbc c                                         ; $60bd: $99
    adc b                                         ; $60be: $88
    halt                                          ; $60bf: $76
    ld h, [hl]                                    ; $60c0: $66
    ld h, [hl]                                    ; $60c1: $66
    ld h, [hl]                                    ; $60c2: $66
    ld d, l                                       ; $60c3: $55
    ld b, h                                       ; $60c4: $44
    inc [hl]                                      ; $60c5: $34
    ld b, h                                       ; $60c6: $44
    inc sp                                        ; $60c7: $33
    ld [hl+], a                                   ; $60c8: $22
    inc sp                                        ; $60c9: $33
    inc sp                                        ; $60ca: $33
    inc sp                                        ; $60cb: $33
    ld [hl+], a                                   ; $60cc: $22
    inc hl                                        ; $60cd: $23
    inc [hl]                                      ; $60ce: $34
    ld b, h                                       ; $60cf: $44
    ld b, e                                       ; $60d0: $43
    inc [hl]                                      ; $60d1: $34
    ld d, l                                       ; $60d2: $55
    ld d, h                                       ; $60d3: $54
    ld b, h                                       ; $60d4: $44
    ld d, l                                       ; $60d5: $55
    ld h, a                                       ; $60d6: $67
    halt                                          ; $60d7: $76
    ld h, [hl]                                    ; $60d8: $66
    ld h, [hl]                                    ; $60d9: $66
    ld [hl], a                                    ; $60da: $77
    adc b                                         ; $60db: $88
    adc b                                         ; $60dc: $88
    adc b                                         ; $60dd: $88
    adc c                                         ; $60de: $89
    sbc c                                         ; $60df: $99
    sbc c                                         ; $60e0: $99
    adc c                                         ; $60e1: $89
    sbc d                                         ; $60e2: $9a
    xor d                                         ; $60e3: $aa
    xor d                                         ; $60e4: $aa
    xor d                                         ; $60e5: $aa
    xor e                                         ; $60e6: $ab
    cp e                                          ; $60e7: $bb
    cp e                                          ; $60e8: $bb
    xor d                                         ; $60e9: $aa
    cp e                                          ; $60ea: $bb
    call z, $bbbb                                 ; $60eb: $cc $bb $bb
    cp e                                          ; $60ee: $bb
    cp h                                          ; $60ef: $bc
    res 7, e                                      ; $60f0: $cb $bb
    cp h                                          ; $60f2: $bc
    call z, $bbbb                                 ; $60f3: $cc $bb $bb
    cp e                                          ; $60f6: $bb
    call z, $aabb                                 ; $60f7: $cc $bb $aa
    xor d                                         ; $60fa: $aa
    xor d                                         ; $60fb: $aa
    xor d                                         ; $60fc: $aa
    xor c                                         ; $60fd: $a9
    sbc c                                         ; $60fe: $99
    xor d                                         ; $60ff: $aa
    xor c                                         ; $6100: $a9
    sbc b                                         ; $6101: $98
    adc c                                         ; $6102: $89
    sbc c                                         ; $6103: $99
    adc b                                         ; $6104: $88
    add a                                         ; $6105: $87
    ld [hl], a                                    ; $6106: $77
    ld [hl], a                                    ; $6107: $77
    ld [hl], a                                    ; $6108: $77
    halt                                          ; $6109: $76
    ld d, l                                       ; $610a: $55
    ld d, [hl]                                    ; $610b: $56
    ld h, l                                       ; $610c: $65
    ld d, h                                       ; $610d: $54
    ld b, h                                       ; $610e: $44
    ld b, h                                       ; $610f: $44
    ld b, h                                       ; $6110: $44
    ld b, h                                       ; $6111: $44
    inc sp                                        ; $6112: $33
    inc [hl]                                      ; $6113: $34
    ld b, h                                       ; $6114: $44
    inc sp                                        ; $6115: $33
    inc sp                                        ; $6116: $33
    inc sp                                        ; $6117: $33
    ld b, h                                       ; $6118: $44
    ld b, h                                       ; $6119: $44
    ld b, e                                       ; $611a: $43
    inc [hl]                                      ; $611b: $34
    ld b, l                                       ; $611c: $45
    ld d, l                                       ; $611d: $55
    ld d, l                                       ; $611e: $55
    ld h, [hl]                                    ; $611f: $66
    add a                                         ; $6120: $87
    ld [hl], a                                    ; $6121: $77
    ld [hl], a                                    ; $6122: $77
    ld a, b                                       ; $6123: $78
    adc c                                         ; $6124: $89
    sbc c                                         ; $6125: $99
    sbc c                                         ; $6126: $99
    sbc c                                         ; $6127: $99
    xor d                                         ; $6128: $aa
    xor d                                         ; $6129: $aa
    xor d                                         ; $612a: $aa
    xor d                                         ; $612b: $aa
    cp e                                          ; $612c: $bb
    cp e                                          ; $612d: $bb
    xor d                                         ; $612e: $aa
    xor d                                         ; $612f: $aa
    xor d                                         ; $6130: $aa
    xor d                                         ; $6131: $aa
    xor d                                         ; $6132: $aa
    xor d                                         ; $6133: $aa
    xor d                                         ; $6134: $aa
    xor d                                         ; $6135: $aa
    sbc c                                         ; $6136: $99
    sbc c                                         ; $6137: $99
    sbc c                                         ; $6138: $99
    sbc c                                         ; $6139: $99
    sbc c                                         ; $613a: $99
    adc b                                         ; $613b: $88
    adc b                                         ; $613c: $88
    adc b                                         ; $613d: $88
    adc b                                         ; $613e: $88
    ld [hl], a                                    ; $613f: $77
    add a                                         ; $6140: $87
    ld [hl], a                                    ; $6141: $77
    ld [hl], a                                    ; $6142: $77
    halt                                          ; $6143: $76
    ld h, [hl]                                    ; $6144: $66
    ld h, [hl]                                    ; $6145: $66
    ld h, [hl]                                    ; $6146: $66
    ld h, [hl]                                    ; $6147: $66
    ld h, [hl]                                    ; $6148: $66
    ld h, [hl]                                    ; $6149: $66
    ld h, [hl]                                    ; $614a: $66
    ld h, l                                       ; $614b: $65
    ld h, [hl]                                    ; $614c: $66
    ld h, [hl]                                    ; $614d: $66
    ld h, [hl]                                    ; $614e: $66
    ld h, [hl]                                    ; $614f: $66
    ld h, [hl]                                    ; $6150: $66
    ld h, [hl]                                    ; $6151: $66
    ld h, [hl]                                    ; $6152: $66
    ld h, [hl]                                    ; $6153: $66
    ld [hl], a                                    ; $6154: $77
    ld [hl], a                                    ; $6155: $77
    ld [hl], a                                    ; $6156: $77
    ld [hl], a                                    ; $6157: $77
    adc b                                         ; $6158: $88
    adc b                                         ; $6159: $88
    adc b                                         ; $615a: $88
    adc b                                         ; $615b: $88
    sbc c                                         ; $615c: $99
    sbc c                                         ; $615d: $99
    sbc c                                         ; $615e: $99
    sbc c                                         ; $615f: $99
    sbc c                                         ; $6160: $99
    sbc c                                         ; $6161: $99
    sbc c                                         ; $6162: $99
    adc b                                         ; $6163: $88
    adc b                                         ; $6164: $88
    adc b                                         ; $6165: $88
    add a                                         ; $6166: $87
    ld [hl], a                                    ; $6167: $77
    ld [hl], a                                    ; $6168: $77
    ld [hl], a                                    ; $6169: $77
    halt                                          ; $616a: $76
    ld h, [hl]                                    ; $616b: $66
    ld h, [hl]                                    ; $616c: $66
    ld h, [hl]                                    ; $616d: $66
    ld h, [hl]                                    ; $616e: $66
    ld h, [hl]                                    ; $616f: $66
    ld h, [hl]                                    ; $6170: $66
    ld h, a                                       ; $6171: $67
    ld [hl], a                                    ; $6172: $77
    ld [hl], a                                    ; $6173: $77
    ld [hl], a                                    ; $6174: $77
    adc b                                         ; $6175: $88
    adc b                                         ; $6176: $88
    adc b                                         ; $6177: $88
    adc c                                         ; $6178: $89
    sbc c                                         ; $6179: $99
    sbc c                                         ; $617a: $99
    sbc c                                         ; $617b: $99
    sbc c                                         ; $617c: $99
    sbc c                                         ; $617d: $99
    sbc c                                         ; $617e: $99
    sbc c                                         ; $617f: $99
    sbc c                                         ; $6180: $99
    xor d                                         ; $6181: $aa
    xor d                                         ; $6182: $aa
    xor d                                         ; $6183: $aa
    sbc c                                         ; $6184: $99
    sbc c                                         ; $6185: $99
    sbc c                                         ; $6186: $99
    sbc c                                         ; $6187: $99
    sbc c                                         ; $6188: $99
    sbc c                                         ; $6189: $99
    sbc c                                         ; $618a: $99
    adc b                                         ; $618b: $88
    adc b                                         ; $618c: $88
    adc b                                         ; $618d: $88
    adc b                                         ; $618e: $88
    ld [hl], a                                    ; $618f: $77
    add a                                         ; $6190: $87
    ld [hl], a                                    ; $6191: $77
    ld [hl], a                                    ; $6192: $77
    ld h, [hl]                                    ; $6193: $66
    ld h, [hl]                                    ; $6194: $66
    ld h, [hl]                                    ; $6195: $66
    ld h, [hl]                                    ; $6196: $66
    ld h, [hl]                                    ; $6197: $66
    ld d, l                                       ; $6198: $55
    ld d, [hl]                                    ; $6199: $56
    ld h, [hl]                                    ; $619a: $66
    ld d, l                                       ; $619b: $55
    ld d, l                                       ; $619c: $55
    ld h, [hl]                                    ; $619d: $66
    ld h, [hl]                                    ; $619e: $66
    ld h, [hl]                                    ; $619f: $66
    ld h, [hl]                                    ; $61a0: $66
    ld h, [hl]                                    ; $61a1: $66
    ld h, [hl]                                    ; $61a2: $66
    ld h, [hl]                                    ; $61a3: $66
    ld h, [hl]                                    ; $61a4: $66
    ld h, a                                       ; $61a5: $67
    ld [hl], a                                    ; $61a6: $77
    ld [hl], a                                    ; $61a7: $77
    ld [hl], a                                    ; $61a8: $77
    ld [hl], a                                    ; $61a9: $77
    ld [hl], a                                    ; $61aa: $77
    ld [hl], a                                    ; $61ab: $77
    ld [hl], a                                    ; $61ac: $77
    ld [hl], a                                    ; $61ad: $77
    ld [hl], a                                    ; $61ae: $77
    ld [hl], a                                    ; $61af: $77
    adc b                                         ; $61b0: $88
    adc b                                         ; $61b1: $88
    adc b                                         ; $61b2: $88
    adc b                                         ; $61b3: $88
    adc b                                         ; $61b4: $88
    adc b                                         ; $61b5: $88
    adc b                                         ; $61b6: $88
    adc b                                         ; $61b7: $88
    adc b                                         ; $61b8: $88
    adc b                                         ; $61b9: $88
    adc b                                         ; $61ba: $88
    adc b                                         ; $61bb: $88
    adc b                                         ; $61bc: $88
    adc b                                         ; $61bd: $88
    sbc c                                         ; $61be: $99
    sbc c                                         ; $61bf: $99
    sbc c                                         ; $61c0: $99
    sbc c                                         ; $61c1: $99
    sbc c                                         ; $61c2: $99
    sbc c                                         ; $61c3: $99
    sbc c                                         ; $61c4: $99
    sbc c                                         ; $61c5: $99
    sbc c                                         ; $61c6: $99
    sbc c                                         ; $61c7: $99
    sbc c                                         ; $61c8: $99
    sbc c                                         ; $61c9: $99
    sbc c                                         ; $61ca: $99
    adc b                                         ; $61cb: $88
    adc b                                         ; $61cc: $88
    adc b                                         ; $61cd: $88
    adc b                                         ; $61ce: $88
    adc b                                         ; $61cf: $88
    add a                                         ; $61d0: $87
    ld [hl], a                                    ; $61d1: $77
    ld [hl], a                                    ; $61d2: $77
    ld [hl], a                                    ; $61d3: $77
    ld [hl], a                                    ; $61d4: $77
    halt                                          ; $61d5: $76
    ld h, [hl]                                    ; $61d6: $66
    ld h, a                                       ; $61d7: $67
    halt                                          ; $61d8: $76
    ld h, [hl]                                    ; $61d9: $66
    ld h, [hl]                                    ; $61da: $66
    ld h, [hl]                                    ; $61db: $66
    ld h, [hl]                                    ; $61dc: $66
    ld h, [hl]                                    ; $61dd: $66
    ld h, [hl]                                    ; $61de: $66
    ld h, [hl]                                    ; $61df: $66
    ld h, [hl]                                    ; $61e0: $66
    ld h, [hl]                                    ; $61e1: $66
    ld [hl], a                                    ; $61e2: $77
    ld [hl], a                                    ; $61e3: $77
    ld [hl], a                                    ; $61e4: $77
    ld [hl], a                                    ; $61e5: $77
    ld [hl], a                                    ; $61e6: $77
    ld a, b                                       ; $61e7: $78
    adc b                                         ; $61e8: $88
    adc b                                         ; $61e9: $88
    adc b                                         ; $61ea: $88
    adc b                                         ; $61eb: $88
    sbc c                                         ; $61ec: $99
    sbc c                                         ; $61ed: $99
    sbc c                                         ; $61ee: $99
    sbc c                                         ; $61ef: $99
    sbc c                                         ; $61f0: $99
    sbc c                                         ; $61f1: $99
    sbc c                                         ; $61f2: $99
    sbc b                                         ; $61f3: $98
    adc b                                         ; $61f4: $88
    adc b                                         ; $61f5: $88
    adc b                                         ; $61f6: $88
    adc b                                         ; $61f7: $88
    adc b                                         ; $61f8: $88
    adc b                                         ; $61f9: $88
    adc b                                         ; $61fa: $88
    adc b                                         ; $61fb: $88
    ld [hl], a                                    ; $61fc: $77
    ld [hl], a                                    ; $61fd: $77
    ld [hl], a                                    ; $61fe: $77
    ld [hl], a                                    ; $61ff: $77
    add a                                         ; $6200: $87
    ld [hl], a                                    ; $6201: $77
    ld [hl], a                                    ; $6202: $77
    ld [hl], a                                    ; $6203: $77
    ld [hl], a                                    ; $6204: $77
    ld [hl], a                                    ; $6205: $77
    ld [hl], a                                    ; $6206: $77
    ld [hl], a                                    ; $6207: $77
    ld [hl], a                                    ; $6208: $77
    ld [hl], a                                    ; $6209: $77
    ld [hl], a                                    ; $620a: $77
    ld [hl], a                                    ; $620b: $77
    ld [hl], a                                    ; $620c: $77
    ld [hl], a                                    ; $620d: $77
    ld [hl], a                                    ; $620e: $77
    ld [hl], a                                    ; $620f: $77
    add a                                         ; $6210: $87
    ld [hl], a                                    ; $6211: $77
    ld [hl], a                                    ; $6212: $77
    ld [hl], a                                    ; $6213: $77
    ld [hl], a                                    ; $6214: $77
    ld [hl], a                                    ; $6215: $77
    ld [hl], a                                    ; $6216: $77
    ld [hl], a                                    ; $6217: $77
    ld [hl], a                                    ; $6218: $77
    ld [hl], a                                    ; $6219: $77
    ld [hl], a                                    ; $621a: $77
    ld [hl], a                                    ; $621b: $77
    ld [hl], a                                    ; $621c: $77
    adc b                                         ; $621d: $88
    adc b                                         ; $621e: $88
    adc b                                         ; $621f: $88
    adc b                                         ; $6220: $88
    adc b                                         ; $6221: $88
    adc b                                         ; $6222: $88
    adc b                                         ; $6223: $88
    adc b                                         ; $6224: $88
    adc b                                         ; $6225: $88
    adc b                                         ; $6226: $88
    adc b                                         ; $6227: $88
    adc b                                         ; $6228: $88
    adc b                                         ; $6229: $88
    adc b                                         ; $622a: $88
    adc b                                         ; $622b: $88
    adc b                                         ; $622c: $88
    adc b                                         ; $622d: $88
    adc b                                         ; $622e: $88
    adc b                                         ; $622f: $88
    adc b                                         ; $6230: $88
    ld [hl], a                                    ; $6231: $77
    ld [hl], a                                    ; $6232: $77
    ld [hl], a                                    ; $6233: $77
    ld [hl], a                                    ; $6234: $77
    ld [hl], a                                    ; $6235: $77
    ld [hl], a                                    ; $6236: $77
    ld [hl], a                                    ; $6237: $77
    ld [hl], a                                    ; $6238: $77
    ld [hl], a                                    ; $6239: $77
    ld [hl], a                                    ; $623a: $77
    ld [hl], a                                    ; $623b: $77
    ld [hl], a                                    ; $623c: $77
    ld [hl], a                                    ; $623d: $77
    ld [hl], a                                    ; $623e: $77
    ld [hl], a                                    ; $623f: $77
    add a                                         ; $6240: $87
    ld [hl], a                                    ; $6241: $77
    adc b                                         ; $6242: $88
    adc b                                         ; $6243: $88
    adc b                                         ; $6244: $88
    adc b                                         ; $6245: $88
    adc b                                         ; $6246: $88
    adc b                                         ; $6247: $88
    adc b                                         ; $6248: $88
    adc b                                         ; $6249: $88
    adc b                                         ; $624a: $88
    adc b                                         ; $624b: $88
    adc b                                         ; $624c: $88
    adc b                                         ; $624d: $88
    adc b                                         ; $624e: $88
    adc b                                         ; $624f: $88
    adc b                                         ; $6250: $88
    adc b                                         ; $6251: $88
    adc b                                         ; $6252: $88
    adc b                                         ; $6253: $88
    adc b                                         ; $6254: $88
    adc b                                         ; $6255: $88
    adc b                                         ; $6256: $88
    add a                                         ; $6257: $87
    ld [hl], a                                    ; $6258: $77
    ld [hl], a                                    ; $6259: $77
    ld a, b                                       ; $625a: $78
    ld [hl], a                                    ; $625b: $77
    ld [hl], a                                    ; $625c: $77
    ld [hl], a                                    ; $625d: $77
    ld [hl], a                                    ; $625e: $77
    ld [hl], a                                    ; $625f: $77
    add a                                         ; $6260: $87
    adc b                                         ; $6261: $88
    adc b                                         ; $6262: $88
    ld [hl], a                                    ; $6263: $77
    ld a, b                                       ; $6264: $78
    adc b                                         ; $6265: $88
    adc b                                         ; $6266: $88
    adc b                                         ; $6267: $88
    adc b                                         ; $6268: $88
    adc b                                         ; $6269: $88
    adc b                                         ; $626a: $88
    adc b                                         ; $626b: $88
    adc b                                         ; $626c: $88
    adc b                                         ; $626d: $88
    adc b                                         ; $626e: $88
    adc b                                         ; $626f: $88
    adc b                                         ; $6270: $88
    adc b                                         ; $6271: $88
    adc b                                         ; $6272: $88
    adc b                                         ; $6273: $88
    adc b                                         ; $6274: $88
    adc b                                         ; $6275: $88
    adc b                                         ; $6276: $88
    adc b                                         ; $6277: $88
    adc b                                         ; $6278: $88
    adc b                                         ; $6279: $88
    adc b                                         ; $627a: $88
    adc b                                         ; $627b: $88
    adc b                                         ; $627c: $88
    adc b                                         ; $627d: $88
    adc b                                         ; $627e: $88
    adc b                                         ; $627f: $88
    adc b                                         ; $6280: $88
    adc b                                         ; $6281: $88
    adc b                                         ; $6282: $88
    adc b                                         ; $6283: $88
    adc b                                         ; $6284: $88
    adc b                                         ; $6285: $88
    adc b                                         ; $6286: $88
    adc b                                         ; $6287: $88
    adc b                                         ; $6288: $88
    adc b                                         ; $6289: $88
    adc b                                         ; $628a: $88
    add a                                         ; $628b: $87
    adc b                                         ; $628c: $88
    adc b                                         ; $628d: $88
    add a                                         ; $628e: $87
    ld [hl], a                                    ; $628f: $77
    adc b                                         ; $6290: $88
    adc b                                         ; $6291: $88
    adc b                                         ; $6292: $88
    adc b                                         ; $6293: $88
    adc b                                         ; $6294: $88
    adc b                                         ; $6295: $88
    add a                                         ; $6296: $87
    adc b                                         ; $6297: $88
    ld [hl], l                                    ; $6298: $75
    ld l, b                                       ; $6299: $68
    sbc c                                         ; $629a: $99
    adc b                                         ; $629b: $88
    adc b                                         ; $629c: $88
    adc b                                         ; $629d: $88
    adc b                                         ; $629e: $88
    adc c                                         ; $629f: $89
    add l                                         ; $62a0: $85
    dec [hl]                                      ; $62a1: $35
    xor h                                         ; $62a2: $ac
    xor c                                         ; $62a3: $a9
    adc b                                         ; $62a4: $88
    ld a, b                                       ; $62a5: $78
    adc b                                         ; $62a6: $88
    adc b                                         ; $62a7: $88
    adc b                                         ; $62a8: $88
    adc b                                         ; $62a9: $88
    adc c                                         ; $62aa: $89
    ld l, h                                       ; $62ab: $6c
    or e                                          ; $62ac: $b3
    adc b                                         ; $62ad: $88
    ld d, [hl]                                    ; $62ae: $56
    ld e, d                                       ; $62af: $5a
    sbc b                                         ; $62b0: $98
    sub a                                         ; $62b1: $97
    adc b                                         ; $62b2: $88
    adc b                                         ; $62b3: $88
    add a                                         ; $62b4: $87
    ld l, b                                       ; $62b5: $68
    xor b                                         ; $62b6: $a8
    sbc d                                         ; $62b7: $9a
    sbc d                                         ; $62b8: $9a
    add [hl]                                      ; $62b9: $86
    ld a, b                                       ; $62ba: $78
    ld [hl], a                                    ; $62bb: $77
    ld h, [hl]                                    ; $62bc: $66
    sbc c                                         ; $62bd: $99
    sbc b                                         ; $62be: $98
    ld a, c                                       ; $62bf: $79
    sbc e                                         ; $62c0: $9b
    db $ed                                        ; $62c1: $ed
    or l                                          ; $62c2: $b5
    ld de, $aa48                                  ; $62c3: $11 $48 $aa
    adc b                                         ; $62c6: $88
    adc c                                         ; $62c7: $89
    sbc b                                         ; $62c8: $98

Call_017_62c9:
    adc c                                         ; $62c9: $89
    sbc b                                         ; $62ca: $98
    ld h, [hl]                                    ; $62cb: $66
    sbc c                                         ; $62cc: $99
    ld [hl], a                                    ; $62cd: $77
    sbc b                                         ; $62ce: $98
    ld h, a                                       ; $62cf: $67
    add a                                         ; $62d0: $87
    adc c                                         ; $62d1: $89
    ld [hl], a                                    ; $62d2: $77
    sbc c                                         ; $62d3: $99
    ld [hl], a                                    ; $62d4: $77
    xor c                                         ; $62d5: $a9
    adc b                                         ; $62d6: $88
    ld [hl], l                                    ; $62d7: $75
    ld l, b                                       ; $62d8: $68
    adc b                                         ; $62d9: $88
    xor h                                         ; $62da: $ac
    jp z, Jump_017_5963                           ; $62db: $ca $63 $59

    db $dd                                        ; $62de: $dd
    sub [hl]                                      ; $62df: $96
    ld b, a                                       ; $62e0: $47
    adc $b7                                       ; $62e1: $ce $b7
    ld d, [hl]                                    ; $62e3: $56
    adc c                                         ; $62e4: $89
    sub [hl]                                      ; $62e5: $96
    ld d, a                                       ; $62e6: $57
    sbc d                                         ; $62e7: $9a
    xor b                                         ; $62e8: $a8
    ld a, b                                       ; $62e9: $78
    xor e                                         ; $62ea: $ab
    sub a                                         ; $62eb: $97
    ld l, b                                       ; $62ec: $68
    xor e                                         ; $62ed: $ab
    sub a                                         ; $62ee: $97
    ld l, b                                       ; $62ef: $68
    xor h                                         ; $62f0: $ac
    xor b                                         ; $62f1: $a8
    ld h, a                                       ; $62f2: $67
    sbc e                                         ; $62f3: $9b
    cp c                                          ; $62f4: $b9
    ld [hl], a                                    ; $62f5: $77
    sbc e                                         ; $62f6: $9b
    cp d                                          ; $62f7: $ba
    ld [hl], a                                    ; $62f8: $77
    adc e                                         ; $62f9: $8b
    xor c                                         ; $62fa: $a9
    adc b                                         ; $62fb: $88
    adc d                                         ; $62fc: $8a
    cp d                                          ; $62fd: $ba
    adc b                                         ; $62fe: $88
    sbc c                                         ; $62ff: $99
    xor d                                         ; $6300: $aa
    adc b                                         ; $6301: $88
    adc c                                         ; $6302: $89
    xor d                                         ; $6303: $aa
    xor c                                         ; $6304: $a9
    sbc b                                         ; $6305: $98
    sbc d                                         ; $6306: $9a
    xor d                                         ; $6307: $aa
    sbc c                                         ; $6308: $99
    adc c                                         ; $6309: $89
    xor d                                         ; $630a: $aa
    xor c                                         ; $630b: $a9
    adc c                                         ; $630c: $89
    xor d                                         ; $630d: $aa
    sbc c                                         ; $630e: $99
    adc c                                         ; $630f: $89
    sbc c                                         ; $6310: $99
    sbc c                                         ; $6311: $99
    sbc c                                         ; $6312: $99
    xor b                                         ; $6313: $a8
    adc c                                         ; $6314: $89
    xor d                                         ; $6315: $aa
    xor c                                         ; $6316: $a9
    adc c                                         ; $6317: $89
    sbc d                                         ; $6318: $9a
    sbc c                                         ; $6319: $99
    adc b                                         ; $631a: $88
    adc c                                         ; $631b: $89
    xor c                                         ; $631c: $a9
    sbc d                                         ; $631d: $9a
    xor c                                         ; $631e: $a9
    sbc c                                         ; $631f: $99
    adc c                                         ; $6320: $89
    sbc c                                         ; $6321: $99
    xor e                                         ; $6322: $ab
    sbc b                                         ; $6323: $98
    ld a, b                                       ; $6324: $78
    xor e                                         ; $6325: $ab
    xor c                                         ; $6326: $a9
    sbc c                                         ; $6327: $99
    sbc b                                         ; $6328: $98
    adc c                                         ; $6329: $89
    xor d                                         ; $632a: $aa
    xor d                                         ; $632b: $aa
    add a                                         ; $632c: $87
    adc c                                         ; $632d: $89
    sbc e                                         ; $632e: $9b
    res 3, b                                      ; $632f: $cb $98
    ld h, a                                       ; $6331: $67
    ld a, d                                       ; $6332: $7a
    xor e                                         ; $6333: $ab
    xor c                                         ; $6334: $a9
    adc b                                         ; $6335: $88
    adc c                                         ; $6336: $89
    sbc c                                         ; $6337: $99
    and l                                         ; $6338: $a5
    ld l, d                                       ; $6339: $6a
    db $ec                                        ; $633a: $ec
    add a                                         ; $633b: $87
    sbc c                                         ; $633c: $99
    and l                                         ; $633d: $a5
    adc e                                         ; $633e: $8b
    rst $00                                       ; $633f: $c7
    adc b                                         ; $6340: $88
    xor b                                         ; $6341: $a8
    xor e                                         ; $6342: $ab
    xor b                                         ; $6343: $a8
    adc b                                         ; $6344: $88
    ld a, b                                       ; $6345: $78
    sbc c                                         ; $6346: $99
    sbc c                                         ; $6347: $99
    sbc c                                         ; $6348: $99
    sbc d                                         ; $6349: $9a
    sbc c                                         ; $634a: $99
    sbc c                                         ; $634b: $99
    sbc c                                         ; $634c: $99
    sbc c                                         ; $634d: $99
    sbc c                                         ; $634e: $99
    sbc c                                         ; $634f: $99
    sbc c                                         ; $6350: $99
    sbc c                                         ; $6351: $99
    sbc c                                         ; $6352: $99
    sbc c                                         ; $6353: $99
    sbc c                                         ; $6354: $99
    sbc c                                         ; $6355: $99
    sbc c                                         ; $6356: $99
    sbc c                                         ; $6357: $99
    sbc d                                         ; $6358: $9a
    sbc c                                         ; $6359: $99
    sbc c                                         ; $635a: $99
    sbc c                                         ; $635b: $99
    sbc c                                         ; $635c: $99
    sbc c                                         ; $635d: $99
    sbc c                                         ; $635e: $99
    sbc c                                         ; $635f: $99
    sbc c                                         ; $6360: $99
    sbc c                                         ; $6361: $99
    sbc c                                         ; $6362: $99
    sbc c                                         ; $6363: $99
    sbc c                                         ; $6364: $99
    xor d                                         ; $6365: $aa
    sbc c                                         ; $6366: $99
    sbc c                                         ; $6367: $99
    sbc d                                         ; $6368: $9a
    sbc c                                         ; $6369: $99
    sbc c                                         ; $636a: $99
    xor c                                         ; $636b: $a9
    sbc c                                         ; $636c: $99
    sbc c                                         ; $636d: $99
    sbc c                                         ; $636e: $99
    sbc c                                         ; $636f: $99
    sbc c                                         ; $6370: $99
    sbc c                                         ; $6371: $99
    sbc c                                         ; $6372: $99
    sbc c                                         ; $6373: $99
    sbc c                                         ; $6374: $99
    sbc c                                         ; $6375: $99
    sbc c                                         ; $6376: $99
    sbc d                                         ; $6377: $9a
    sbc c                                         ; $6378: $99
    xor d                                         ; $6379: $aa
    xor d                                         ; $637a: $aa
    sbc b                                         ; $637b: $98
    adc c                                         ; $637c: $89
    xor d                                         ; $637d: $aa
    sbc d                                         ; $637e: $9a
    xor d                                         ; $637f: $aa
    sbc c                                         ; $6380: $99
    sbc b                                         ; $6381: $98
    sbc d                                         ; $6382: $9a
    xor d                                         ; $6383: $aa
    xor d                                         ; $6384: $aa
    xor c                                         ; $6385: $a9
    sbc b                                         ; $6386: $98
    adc c                                         ; $6387: $89
    sbc d                                         ; $6388: $9a
    xor d                                         ; $6389: $aa
    xor d                                         ; $638a: $aa
    sbc c                                         ; $638b: $99
    sbc c                                         ; $638c: $99
    adc b                                         ; $638d: $88
    adc c                                         ; $638e: $89
    xor d                                         ; $638f: $aa
    sbc d                                         ; $6390: $9a
    sbc c                                         ; $6391: $99
    adc b                                         ; $6392: $88
    sbc c                                         ; $6393: $99
    sbc c                                         ; $6394: $99
    xor d                                         ; $6395: $aa
    cp d                                          ; $6396: $ba
    xor c                                         ; $6397: $a9
    sbc c                                         ; $6398: $99
    sbc c                                         ; $6399: $99
    sbc c                                         ; $639a: $99
    sbc d                                         ; $639b: $9a
    xor d                                         ; $639c: $aa
    xor d                                         ; $639d: $aa
    sbc c                                         ; $639e: $99
    adc b                                         ; $639f: $88
    adc c                                         ; $63a0: $89
    sbc c                                         ; $63a1: $99
    sbc c                                         ; $63a2: $99
    xor d                                         ; $63a3: $aa
    sbc c                                         ; $63a4: $99
    sbc c                                         ; $63a5: $99
    sbc b                                         ; $63a6: $98
    adc c                                         ; $63a7: $89
    sbc c                                         ; $63a8: $99
    sbc d                                         ; $63a9: $9a
    xor d                                         ; $63aa: $aa
    cp d                                          ; $63ab: $ba
    add a                                         ; $63ac: $87
    adc c                                         ; $63ad: $89
    xor e                                         ; $63ae: $ab
    res 3, b                                      ; $63af: $cb $98
    sbc d                                         ; $63b1: $9a
    cp d                                          ; $63b2: $ba
    sbc b                                         ; $63b3: $98
    ld a, b                                       ; $63b4: $78
    adc c                                         ; $63b5: $89
    add a                                         ; $63b6: $87
    adc h                                         ; $63b7: $8c

Call_017_63b8:
    db $ed                                        ; $63b8: $ed
    sub a                                         ; $63b9: $97
    ld a, b                                       ; $63ba: $78
    adc b                                         ; $63bb: $88
    adc b                                         ; $63bc: $88
    adc b                                         ; $63bd: $88
    adc b                                         ; $63be: $88
    adc b                                         ; $63bf: $88
    sbc d                                         ; $63c0: $9a
    add c                                         ; $63c1: $81
    add hl, sp                                    ; $63c2: $39
    ld l, e                                       ; $63c3: $6b
    or a                                          ; $63c4: $b7
    sbc d                                         ; $63c5: $9a
    or [hl]                                       ; $63c6: $b6
    ld a, e                                       ; $63c7: $7b
    sbc b                                         ; $63c8: $98

Call_017_63c9:
    add [hl]                                      ; $63c9: $86
    adc b                                         ; $63ca: $88
    sbc b                                         ; $63cb: $98
    ld a, c                                       ; $63cc: $79
    xor c                                         ; $63cd: $a9
    add l                                         ; $63ce: $85
    ld d, [hl]                                    ; $63cf: $56
    adc c                                         ; $63d0: $89
    sbc c                                         ; $63d1: $99
    ld a, c                                       ; $63d2: $79
    xor d                                         ; $63d3: $aa
    adc c                                         ; $63d4: $89
    xor b                                         ; $63d5: $a8
    sbc b                                         ; $63d6: $98
    add a                                         ; $63d7: $87
    ld [hl-], a                                   ; $63d8: $32
    ld b, a                                       ; $63d9: $47

Call_017_63da:
    rst $08                                       ; $63da: $cf
    jp c, $8987                                   ; $63db: $da $87 $89

    adc b                                         ; $63de: $88
    sbc d                                         ; $63df: $9a
    sub a                                         ; $63e0: $97
    adc c                                         ; $63e1: $89
    sbc c                                         ; $63e2: $99
    sub a                                         ; $63e3: $97
    ld a, c                                       ; $63e4: $79
    sub a                                         ; $63e5: $97
    sbc h                                         ; $63e6: $9c
    xor b                                         ; $63e7: $a8
    xor d                                         ; $63e8: $aa
    xor e                                         ; $63e9: $ab
    cp b                                          ; $63ea: $b8
    ld a, c                                       ; $63eb: $79
    sub a                                         ; $63ec: $97
    adc b                                         ; $63ed: $88
    ld [hl], a                                    ; $63ee: $77
    adc b                                         ; $63ef: $88
    sbc d                                         ; $63f0: $9a
    call z, Call_017_77b9                         ; $63f1: $cc $b9 $77
    xor [hl]                                      ; $63f4: $ae
    jp c, $9c87                                   ; $63f5: $da $87 $9c

    db $db                                        ; $63f8: $db
    add [hl]                                      ; $63f9: $86
    ld l, b                                       ; $63fa: $68
    cp e                                          ; $63fb: $bb
    sub a                                         ; $63fc: $97
    ld a, c                                       ; $63fd: $79
    cp e                                          ; $63fe: $bb
    sbc b                                         ; $63ff: $98
    sbc e                                         ; $6400: $9b
    res 1, b                                      ; $6401: $cb $88
    sbc e                                         ; $6403: $9b
    call z, $9aa8                                 ; $6404: $cc $a8 $9a
    call z, $89a8                                 ; $6407: $cc $a8 $89
    call z, $89a8                                 ; $640a: $cc $a8 $89
    call $89b9                                    ; $640d: $cd $b9 $89
    call $99b9                                    ; $6410: $cd $b9 $99
    xor h                                         ; $6413: $ac
    cp c                                          ; $6414: $b9
    sbc d                                         ; $6415: $9a
    xor e                                         ; $6416: $ab
    jp z, $9aa9                                   ; $6417: $ca $a9 $9a

    cp h                                          ; $641a: $bc
    xor d                                         ; $641b: $aa
    xor d                                         ; $641c: $aa
    cp d                                          ; $641d: $ba
    cp d                                          ; $641e: $ba
    xor c                                         ; $641f: $a9
    xor e                                         ; $6420: $ab
    cp e                                          ; $6421: $bb
    xor c                                         ; $6422: $a9
    sbc d                                         ; $6423: $9a
    xor d                                         ; $6424: $aa
    cp d                                          ; $6425: $ba
    xor d                                         ; $6426: $aa
    xor d                                         ; $6427: $aa
    xor d                                         ; $6428: $aa
    cp h                                          ; $6429: $bc
    cp c                                          ; $642a: $b9
    xor e                                         ; $642b: $ab
    cp e                                          ; $642c: $bb
    cp d                                          ; $642d: $ba
    sbc b                                         ; $642e: $98
    xor d                                         ; $642f: $aa
    xor c                                         ; $6430: $a9
    xor c                                         ; $6431: $a9
    sbc d                                         ; $6432: $9a
    xor c                                         ; $6433: $a9
    xor d                                         ; $6434: $aa
    sbc d                                         ; $6435: $9a
    xor d                                         ; $6436: $aa
    cp h                                          ; $6437: $bc
    xor c                                         ; $6438: $a9
    cp d                                          ; $6439: $ba
    sbc c                                         ; $643a: $99
    sbc b                                         ; $643b: $98
    xor h                                         ; $643c: $ac
    call z, $88a8                                 ; $643d: $cc $a8 $88
    sbc e                                         ; $6440: $9b
    call z, $9bba                                 ; $6441: $cc $ba $9b
    cp b                                          ; $6444: $b8
    sbc d                                         ; $6445: $9a
    cp c                                          ; $6446: $b9
    xor c                                         ; $6447: $a9
    sbc d                                         ; $6448: $9a
    xor l                                         ; $6449: $ad
    cp h                                          ; $644a: $bc
    adc b                                         ; $644b: $88
    adc c                                         ; $644c: $89
    xor d                                         ; $644d: $aa
    jp z, $ad94                                   ; $644e: $ca $94 $ad

    db $dd                                        ; $6451: $dd
    db $fd                                        ; $6452: $fd
    ld h, [hl]                                    ; $6453: $66
    cp [hl]                                       ; $6454: $be
    jp z, $89a8                                   ; $6455: $ca $a8 $89

    res 5, d                                      ; $6458: $cb $aa
    sbc b                                         ; $645a: $98
    adc d                                         ; $645b: $8a
    xor d                                         ; $645c: $aa
    xor c                                         ; $645d: $a9
    adc c                                         ; $645e: $89
    xor d                                         ; $645f: $aa
    xor d                                         ; $6460: $aa
    sbc c                                         ; $6461: $99
    sbc d                                         ; $6462: $9a
    cp e                                          ; $6463: $bb
    cp d                                          ; $6464: $ba
    xor d                                         ; $6465: $aa
    xor e                                         ; $6466: $ab
    cp e                                          ; $6467: $bb
    xor d                                         ; $6468: $aa
    xor d                                         ; $6469: $aa
    xor e                                         ; $646a: $ab
    cp d                                          ; $646b: $ba
    xor c                                         ; $646c: $a9
    sbc d                                         ; $646d: $9a
    xor d                                         ; $646e: $aa
    xor d                                         ; $646f: $aa
    xor d                                         ; $6470: $aa
    xor d                                         ; $6471: $aa
    xor d                                         ; $6472: $aa
    xor e                                         ; $6473: $ab
    cp d                                          ; $6474: $ba
    xor d                                         ; $6475: $aa

Call_017_6476:
    xor d                                         ; $6476: $aa
    sbc c                                         ; $6477: $99
    xor e                                         ; $6478: $ab
    cp d                                          ; $6479: $ba
    xor d                                         ; $647a: $aa
    xor d                                         ; $647b: $aa
    cp e                                          ; $647c: $bb
    xor e                                         ; $647d: $ab
    cp e                                          ; $647e: $bb
    xor d                                         ; $647f: $aa
    cp e                                          ; $6480: $bb
    xor d                                         ; $6481: $aa
    xor d                                         ; $6482: $aa
    xor c                                         ; $6483: $a9
    sbc c                                         ; $6484: $99
    ld a, b                                       ; $6485: $78
    sbc e                                         ; $6486: $9b
    xor b                                         ; $6487: $a8
    adc b                                         ; $6488: $88
    adc b                                         ; $6489: $88
    sbc d                                         ; $648a: $9a
    xor d                                         ; $648b: $aa
    sbc e                                         ; $648c: $9b
    db $fd                                        ; $648d: $fd
    sub a                                         ; $648e: $97
    adc c                                         ; $648f: $89
    rst $18                                       ; $6490: $df
    jp hl                                         ; $6491: $e9


    adc e                                         ; $6492: $8b
    call z, $badc                                 ; $6493: $cc $dc $ba
    xor b                                         ; $6496: $a8
    adc b                                         ; $6497: $88
    halt                                          ; $6498: $76
    ld h, [hl]                                    ; $6499: $66
    ld h, l                                       ; $649a: $65
    ld d, l                                       ; $649b: $55
    ld b, e                                       ; $649c: $43
    inc sp                                        ; $649d: $33
    ld b, l                                       ; $649e: $45
    ld h, [hl]                                    ; $649f: $66
    add a                                         ; $64a0: $87
    adc c                                         ; $64a1: $89
    xor d                                         ; $64a2: $aa
    cp e                                          ; $64a3: $bb
    call $efde                                    ; $64a4: $cd $de $ef
    cp $ed                                        ; $64a7: $fe $ed
    db $dd                                        ; $64a9: $dd
    db $dd                                        ; $64aa: $dd
    call z, $a9bb                                 ; $64ab: $cc $bb $a9
    sbc b                                         ; $64ae: $98
    halt                                          ; $64af: $76
    ld d, l                                       ; $64b0: $55
    ld b, h                                       ; $64b1: $44
    ld b, e                                       ; $64b2: $43
    inc sp                                        ; $64b3: $33
    ld [hl-], a                                   ; $64b4: $32
    ld [hl+], a                                   ; $64b5: $22
    inc hl                                        ; $64b6: $23
    inc [hl]                                      ; $64b7: $34
    ld d, l                                       ; $64b8: $55

Call_017_64b9:
    ld [hl], a                                    ; $64b9: $77
    adc c                                         ; $64ba: $89
    sbc d                                         ; $64bb: $9a
    xor e                                         ; $64bc: $ab
    cp h                                          ; $64bd: $bc
    db $dd                                        ; $64be: $dd
    xor $ef                                       ; $64bf: $ee $ef
    rst $38                                       ; $64c1: $ff
    cp $ee                                        ; $64c2: $fe $ee
    db $dd                                        ; $64c4: $dd
    call z, $a9ba                                 ; $64c5: $cc $ba $a9
    add a                                         ; $64c8: $87

Call_017_64c9:
    halt                                          ; $64c9: $76

Call_017_64ca:
    ld d, h                                       ; $64ca: $54
    inc sp                                        ; $64cb: $33
    ld [hl-], a                                   ; $64cc: $32
    ld [hl+], a                                   ; $64cd: $22
    inc hl                                        ; $64ce: $23
    inc [hl]                                      ; $64cf: $34
    ld h, [hl]                                    ; $64d0: $66
    ld h, [hl]                                    ; $64d1: $66
    ld h, a                                       ; $64d2: $67
    ld h, l                                       ; $64d3: $65
    ld l, b                                       ; $64d4: $68
    ld b, d                                       ; $64d5: $42
    ld l, b                                       ; $64d6: $68
    sbc c                                         ; $64d7: $99
    add [hl]                                      ; $64d8: $86
    ld d, l                                       ; $64d9: $55
    ld d, l                                       ; $64da: $55
    ld d, h                                       ; $64db: $54
    ld [hl-], a                                   ; $64dc: $32
    ld hl, $0000                                  ; $64dd: $21 $00 $00
    ld bc, $2312                                  ; $64e0: $01 $12 $23
    inc [hl]                                      ; $64e3: $34
    ld b, l                                       ; $64e4: $45
    ld d, [hl]                                    ; $64e5: $56
    ld [hl], a                                    ; $64e6: $77
    adc c                                         ; $64e7: $89
    xor e                                         ; $64e8: $ab
    call z, $ddcc                                 ; $64e9: $cc $cc $dd
    db $dd                                        ; $64ec: $dd
    xor $ef                                       ; $64ed: $ee $ef
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    cp $ee                                        ; $64f2: $fe $ee
    xor $ee                                       ; $64f4: $ee $ee
    xor $ed                                       ; $64f6: $ee $ed
    call c, $cccc                                 ; $64f8: $dc $cc $cc
    call z, $cbcc                                 ; $64fb: $cc $cc $cb
    cp e                                          ; $64fe: $bb
    cp e                                          ; $64ff: $bb
    cp e                                          ; $6500: $bb
    cp e                                          ; $6501: $bb
    call z, $cccc                                 ; $6502: $cc $cc $cc
    call z, $ddcc                                 ; $6505: $cc $cc $dd
    db $dd                                        ; $6508: $dd
    db $dd                                        ; $6509: $dd
    db $dd                                        ; $650a: $dd
    call c, $bbcc                                 ; $650b: $dc $cc $bb
    cp d                                          ; $650e: $ba
    xor d                                         ; $650f: $aa
    sbc c                                         ; $6510: $99
    add a                                         ; $6511: $87
    halt                                          ; $6512: $76
    ld d, h                                       ; $6513: $54
    ld b, h                                       ; $6514: $44
    ld b, h                                       ; $6515: $44
    ld b, h                                       ; $6516: $44
    ld b, h                                       ; $6517: $44
    ld b, h                                       ; $6518: $44
    ld b, l                                       ; $6519: $45
    ld h, [hl]                                    ; $651a: $66
    ld a, b                                       ; $651b: $78
    sbc d                                         ; $651c: $9a
    cp h                                          ; $651d: $bc
    call $dddd                                    ; $651e: $cd $dd $dd
    db $dd                                        ; $6521: $dd
    db $dd                                        ; $6522: $dd
    call z, $98ba                                 ; $6523: $cc $ba $98
    halt                                          ; $6526: $76
    ld d, h                                       ; $6527: $54
    inc sp                                        ; $6528: $33
    ld hl, $1111                                  ; $6529: $21 $11 $11
    nop                                           ; $652c: $00
    ld de, $4523                                  ; $652d: $11 $23 $45
    ld h, a                                       ; $6530: $67
    adc c                                         ; $6531: $89
    xor e                                         ; $6532: $ab
    cp h                                          ; $6533: $bc
    db $dd                                        ; $6534: $dd
    xor $ff                                       ; $6535: $ee $ff
    rst $38                                       ; $6537: $ff
    cp $dc                                        ; $6538: $fe $dc
    cp d                                          ; $653a: $ba
    xor c                                         ; $653b: $a9
    add a                                         ; $653c: $87
    ld h, h                                       ; $653d: $64
    inc sp                                        ; $653e: $33
    ld [hl-], a                                   ; $653f: $32
    ld de, $1200                                  ; $6540: $11 $00 $12
    ld b, l                                       ; $6543: $45
    ld d, [hl]                                    ; $6544: $56
    ld a, b                                       ; $6545: $78
    xor h                                         ; $6546: $ac
    sbc $dd                                       ; $6547: $de $dd
    sbc $ff                                       ; $6549: $de $ff
    db $fd                                        ; $654b: $fd
    xor b                                         ; $654c: $a8
    ld [hl], a                                    ; $654d: $77
    ld [hl], a                                    ; $654e: $77
    ld b, d                                       ; $654f: $42
    ld de, $5634                                  ; $6550: $11 $34 $56
    ld d, e                                       ; $6553: $53
    inc [hl]                                      ; $6554: $34
    ld a, c                                       ; $6555: $79
    xor d                                         ; $6556: $aa
    sbc b                                         ; $6557: $98
    sbc c                                         ; $6558: $99
    cp h                                          ; $6559: $bc
    call c, $abba                                 ; $655a: $dc $ba $ab
    call $cbdc                                    ; $655d: $cd $dc $cb
    cp e                                          ; $6560: $bb
    res 5, b                                      ; $6561: $cb $a8
    ld h, l                                       ; $6563: $65
    ld b, e                                       ; $6564: $43
    ld [hl-], a                                   ; $6565: $32
    stop                                          ; $6566: $10 $00
    inc hl                                        ; $6568: $23
    ld b, l                                       ; $6569: $45
    ld l, b                                       ; $656a: $68
    sbc d                                         ; $656b: $9a
    cp l                                          ; $656c: $bd
    rst $28                                       ; $656d: $ef
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    db $ed                                        ; $6570: $ed
    res 5, b                                      ; $6571: $cb $a8
    ld [hl], l                                    ; $6573: $75
    ld b, e                                       ; $6574: $43
    inc sp                                        ; $6575: $33
    inc sp                                        ; $6576: $33
    inc sp                                        ; $6577: $33
    ld b, [hl]                                    ; $6578: $46
    ld a, c                                       ; $6579: $79
    xor d                                         ; $657a: $aa
    xor e                                         ; $657b: $ab
    call z, $b9cc                                 ; $657c: $cc $cc $b9
    add a                                         ; $657f: $87
    add [hl]                                      ; $6580: $86
    ld d, h                                       ; $6581: $54
    inc sp                                        ; $6582: $33
    dec [hl]                                      ; $6583: $35
    ld h, a                                       ; $6584: $67
    adc c                                         ; $6585: $89
    xor e                                         ; $6586: $ab

Jump_017_6587:
    sbc $ff                                       ; $6587: $de $ff
    rst $38                                       ; $6589: $ff
    db $ed                                        ; $658a: $ed
    res 3, b                                      ; $658b: $cb $98
    ld h, h                                       ; $658d: $64
    ld [hl-], a                                   ; $658e: $32
    ld de, $1211                                  ; $658f: $11 $11 $12
    ld b, [hl]                                    ; $6592: $46
    ld a, c                                       ; $6593: $79
    xor e                                         ; $6594: $ab
    call $dcee                                    ; $6595: $cd $ee $dc
    res 5, c                                      ; $6598: $cb $a9

Call_017_659a:
    add [hl]                                      ; $659a: $86
    ld b, h                                       ; $659b: $44
    ld b, l                                       ; $659c: $45
    ld h, [hl]                                    ; $659d: $66
    ld a, b                                       ; $659e: $78
    sbc d                                         ; $659f: $9a
    cp l                                          ; $65a0: $bd
    xor $dd                                       ; $65a1: $ee $dd
    res 5, c                                      ; $65a3: $cb $a9
    adc b                                         ; $65a5: $88
    add l                                         ; $65a6: $85

Call_017_65a7:
    db $10                                        ; $65a7: $10
    inc h                                         ; $65a8: $24
    ld d, l                                       ; $65a9: $55
    ld d, [hl]                                    ; $65aa: $56
    adc d                                         ; $65ab: $8a
    xor h                                         ; $65ac: $ac
    rst $18                                       ; $65ad: $df
    xor $db                                       ; $65ae: $ee $db
    sbc b                                         ; $65b0: $98
    ld [hl], a                                    ; $65b1: $77
    ld h, h                                       ; $65b2: $64
    ld hl, $3512                                  ; $65b3: $21 $12 $35
    ld h, a                                       ; $65b6: $67
    adc c                                         ; $65b7: $89

Call_017_65b8:
    xor h                                         ; $65b8: $ac
    sbc $ed                                       ; $65b9: $de $ed
    jp z, $8799                                   ; $65bb: $ca $99 $87

    ld h, l                                       ; $65be: $65
    ld b, h                                       ; $65bf: $44
    ld h, a                                       ; $65c0: $67
    sbc d                                         ; $65c1: $9a
    call $efde                                    ; $65c2: $cd $de $ef
    xor $db                                       ; $65c5: $ee $db
    sub a                                         ; $65c7: $97
    ld d, h                                       ; $65c8: $54
    ld [hl-], a                                   ; $65c9: $32
    ld hl, $2311                                  ; $65ca: $21 $11 $23
    ld d, a                                       ; $65cd: $57
    adc c                                         ; $65ce: $89
    sbc c                                         ; $65cf: $99
    sbc b                                         ; $65d0: $98
    adc b                                         ; $65d1: $88
    halt                                          ; $65d2: $76
    ld h, l                                       ; $65d3: $65
    ld d, [hl]                                    ; $65d4: $56
    ld h, a                                       ; $65d5: $67
    sbc d                                         ; $65d6: $9a
    cp h                                          ; $65d7: $bc
    call $ffef                                    ; $65d8: $cd $ef $ff
    db $ed                                        ; $65db: $ed
    res 5, d                                      ; $65dc: $cb $aa
    sbc b                                         ; $65de: $98
    halt                                          ; $65df: $76
    ld h, [hl]                                    ; $65e0: $66
    ld h, [hl]                                    ; $65e1: $66
    ld h, [hl]                                    ; $65e2: $66
    ld h, l                                       ; $65e3: $65
    ld b, h                                       ; $65e4: $44
    inc sp                                        ; $65e5: $33
    inc [hl]                                      ; $65e6: $34
    ld d, l                                       ; $65e7: $55
    ld d, l                                       ; $65e8: $55
    ld d, l                                       ; $65e9: $55
    ld d, [hl]                                    ; $65ea: $56
    ld e, d                                       ; $65eb: $5a
    sbc b                                         ; $65ec: $98
    db $ed                                        ; $65ed: $ed
    add [hl]                                      ; $65ee: $86
    ld h, [hl]                                    ; $65ef: $66
    ld d, l                                       ; $65f0: $55
    ld d, l                                       ; $65f1: $55
    ld b, e                                       ; $65f2: $43
    inc sp                                        ; $65f3: $33
    ld hl, $0000                                  ; $65f4: $21 $00 $00
    ld bc, $2211                                  ; $65f7: $01 $11 $22
    inc [hl]                                      ; $65fa: $34
    ld b, l                                       ; $65fb: $45
    ld d, [hl]                                    ; $65fc: $56
    ld a, b                                       ; $65fd: $78
    xor e                                         ; $65fe: $ab
    cp h                                          ; $65ff: $bc
    res 7, e                                      ; $6600: $cb $bb
    call z, $decc                                 ; $6602: $cc $cc $de
    rst $28                                       ; $6605: $ef
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    xor $ee                                       ; $6609: $ee $ee
    xor $ee                                       ; $660b: $ee $ee
    xor $dd                                       ; $660d: $ee $dd
    db $dd                                        ; $660f: $dd
    call z, $bbcb                                 ; $6610: $cc $cb $bb
    cp d                                          ; $6613: $ba
    xor d                                         ; $6614: $aa
    xor d                                         ; $6615: $aa
    xor e                                         ; $6616: $ab
    cp h                                          ; $6617: $bc
    call $dcdd                                    ; $6618: $cd $dd $dc
    call z, $bbbb                                 ; $661b: $cc $bb $bb
    call $ffde                                    ; $661e: $cd $de $ff
    xor $dd                                       ; $6621: $ee $dd
    res 5, c                                      ; $6623: $cb $a9
    adc b                                         ; $6625: $88
    adc b                                         ; $6626: $88
    adc b                                         ; $6627: $88
    adc b                                         ; $6628: $88
    halt                                          ; $6629: $76
    ld h, l                                       ; $662a: $65
    ld b, e                                       ; $662b: $43
    ld [hl+], a                                   ; $662c: $22
    ld [hl+], a                                   ; $662d: $22
    inc [hl]                                      ; $662e: $34
    ld d, [hl]                                    ; $662f: $56
    adc b                                         ; $6630: $88
    xor d                                         ; $6631: $aa
    cp e                                          ; $6632: $bb
    cp e                                          ; $6633: $bb
    xor d                                         ; $6634: $aa
    xor d                                         ; $6635: $aa
    xor d                                         ; $6636: $aa
    cp h                                          ; $6637: $bc
    sbc $ee                                       ; $6638: $de $ee
    db $dd                                        ; $663a: $dd
    cp c                                          ; $663b: $b9
    ld [hl], l                                    ; $663c: $75
    ld [hl-], a                                   ; $663d: $32
    ld de, $2311                                  ; $663e: $11 $11 $23
    ld b, h                                       ; $6641: $44
    ld b, h                                       ; $6642: $44
    inc sp                                        ; $6643: $33
    ld [hl+], a                                   ; $6644: $22
    inc hl                                        ; $6645: $23
    dec [hl]                                      ; $6646: $35
    ld l, b                                       ; $6647: $68
    xor h                                         ; $6648: $ac
    sbc $ff                                       ; $6649: $de $ff
    cp $ed                                        ; $664b: $fe $ed
    res 7, e                                      ; $664d: $cb $bb
    xor e                                         ; $664f: $ab
    cp d                                          ; $6650: $ba
    xor e                                         ; $6651: $ab
    cp d                                          ; $6652: $ba
    add a                                         ; $6653: $87
    ld d, e                                       ; $6654: $53
    ld hl, $0000                                  ; $6655: $21 $00 $00
    inc de                                        ; $6658: $13
    ld d, a                                       ; $6659: $57
    adc c                                         ; $665a: $89
    adc b                                         ; $665b: $88
    adc c                                         ; $665c: $89
    sbc d                                         ; $665d: $9a
    xor d                                         ; $665e: $aa
    cp h                                          ; $665f: $bc
    sbc $ff                                       ; $6660: $de $ff
    db $ec                                        ; $6662: $ec
    xor b                                         ; $6663: $a8
    halt                                          ; $6664: $76
    ld d, e                                       ; $6665: $53
    ld hl, $6723                                  ; $6666: $21 $23 $67
    add a                                         ; $6669: $87
    ld h, [hl]                                    ; $666a: $66
    ld d, [hl]                                    ; $666b: $56
    ld [hl], a                                    ; $666c: $77
    halt                                          ; $666d: $76
    ld h, a                                       ; $666e: $67
    sbc e                                         ; $666f: $9b
    sbc $ed                                       ; $6670: $de $ed
    res 5, d                                      ; $6672: $cb $aa
    xor d                                         ; $6674: $aa
    sbc b                                         ; $6675: $98
    sbc d                                         ; $6676: $9a
    call z, $a8cc                                 ; $6677: $cc $cc $a8
    ld h, h                                       ; $667a: $64
    ld hl, $0000                                  ; $667b: $21 $00 $00
    inc h                                         ; $667e: $24
    ld d, a                                       ; $667f: $57
    adc b                                         ; $6680: $88
    adc b                                         ; $6681: $88
    adc c                                         ; $6682: $89
    xor d                                         ; $6683: $aa
    cp l                                          ; $6684: $bd
    rst $28                                       ; $6685: $ef
    rst $38                                       ; $6686: $ff

Jump_017_6687:
    db $ed                                        ; $6687: $ed
    res 2, a                                      ; $6688: $cb $97
    ld d, e                                       ; $668a: $53
    inc sp                                        ; $668b: $33
    inc [hl]                                      ; $668c: $34
    ld d, l                                       ; $668d: $55
    ld d, [hl]                                    ; $668e: $56
    ld h, a                                       ; $668f: $67
    add a                                         ; $6690: $87
    ld [hl], a                                    ; $6691: $77
    ld a, b                                       ; $6692: $78
    xor h                                         ; $6693: $ac
    db $dd                                        ; $6694: $dd
    res 3, b                                      ; $6695: $cb $98
    ld h, l                                       ; $6697: $65
    ld [hl-], a                                   ; $6698: $32
    inc hl                                        ; $6699: $23
    ld d, a                                       ; $669a: $57
    sbc e                                         ; $669b: $9b
    call z, $decd                                 ; $669c: $cc $cd $de
    db $ed                                        ; $669f: $ed
    db $dd                                        ; $66a0: $dd
    call c, $a7cb                                 ; $66a1: $dc $cb $a7
    ld d, e                                       ; $66a4: $53
    stop                                          ; $66a5: $10 $00
    ld bc, $7835                                  ; $66a7: $01 $35 $78
    sbc d                                         ; $66aa: $9a
    cp e                                          ; $66ab: $bb
    call z, $ccdd                                 ; $66ac: $cc $dd $cc
    call z, $86ba                                 ; $66af: $cc $ba $86
    ld d, h                                       ; $66b2: $54
    ld b, h                                       ; $66b3: $44
    ld d, a                                       ; $66b4: $57
    adc c                                         ; $66b5: $89
    cp h                                          ; $66b6: $bc
    sbc $ed                                       ; $66b7: $de $ed
    res 5, c                                      ; $66b9: $cb $a9
    add a                                         ; $66bb: $87
    ld h, l                                       ; $66bc: $65
    ld [hl-], a                                   ; $66bd: $32
    ld de, $2411                                  ; $66be: $11 $11 $24
    ld d, a                                       ; $66c1: $57
    sbc d                                         ; $66c2: $9a
    adc $ff                                       ; $66c3: $ce $ff
    cp $cb                                        ; $66c5: $fe $cb
    xor d                                         ; $66c7: $aa
    sbc b                                         ; $66c8: $98
    halt                                          ; $66c9: $76
    ld d, h                                       ; $66ca: $54
    ld b, l                                       ; $66cb: $45
    ld h, a                                       ; $66cc: $67
    adc c                                         ; $66cd: $89
    xor e                                         ; $66ce: $ab
    adc $ed                                       ; $66cf: $ce $ed
    jp z, Jump_017_5386                           ; $66d1: $ca $86 $53

    ld [hl-], a                                   ; $66d4: $32
    ld de, $3512                                  ; $66d5: $11 $12 $35
    ld l, b                                       ; $66d8: $68
    xor e                                         ; $66d9: $ab
    call $ffef                                    ; $66da: $cd $ef $ff
    db $ec                                        ; $66dd: $ec
    xor b                                         ; $66de: $a8
    halt                                          ; $66df: $76
    ld h, [hl]                                    ; $66e0: $66
    ld h, [hl]                                    ; $66e1: $66
    ld h, a                                       ; $66e2: $67
    adc c                                         ; $66e3: $89
    xor e                                         ; $66e4: $ab
    call z, $a9cb                                 ; $66e5: $cc $cb $a9
    add a                                         ; $66e8: $87
    ld d, e                                       ; $66e9: $53
    jr nz, jr_017_66ec                            ; $66ea: $20 $00

jr_017_66ec:
    inc de                                        ; $66ec: $13
    ld d, [hl]                                    ; $66ed: $56
    ld a, c                                       ; $66ee: $79
    xor e                                         ; $66ef: $ab
    sbc $ee                                       ; $66f0: $de $ee
    call c, $babb                                 ; $66f2: $dc $bb $ba
    xor d                                         ; $66f5: $aa
    sbc b                                         ; $66f6: $98
    adc c                                         ; $66f7: $89
    xor e                                         ; $66f8: $ab
    cp e                                          ; $66f9: $bb
    xor c                                         ; $66fa: $a9
    add a                                         ; $66fb: $87
    ld h, l                                       ; $66fc: $65
    ld b, e                                       ; $66fd: $43
    ld [hl+], a                                   ; $66fe: $22
    inc hl                                        ; $66ff: $23
    ld b, l                                       ; $6700: $45
    ld h, a                                       ; $6701: $67
    ld a, b                                       ; $6702: $78
    sbc d                                         ; $6703: $9a
    xor e                                         ; $6704: $ab
    call z, $aacb                                 ; $6705: $cc $cb $aa
    xor e                                         ; $6708: $ab
    call z, $ccdd                                 ; $6709: $cc $dd $cc
    res 7, d                                      ; $670c: $cb $ba
    add [hl]                                      ; $670e: $86
    ld b, e                                       ; $670f: $43
    inc [hl]                                      ; $6710: $34
    ld d, [hl]                                    ; $6711: $56
    ld [hl], a                                    ; $6712: $77
    ld a, b                                       ; $6713: $78
    xor e                                         ; $6714: $ab
    cp e                                          ; $6715: $bb
    sub a                                         ; $6716: $97
    ld h, l                                       ; $6717: $65
    ld d, h                                       ; $6718: $54
    ld b, h                                       ; $6719: $44
    ld b, l                                       ; $671a: $45
    ld a, c                                       ; $671b: $79
    cp l                                          ; $671c: $bd
    rst $38                                       ; $671d: $ff
    cp $dc                                        ; $671e: $fe $dc
    xor b                                         ; $6720: $a8
    ld h, [hl]                                    ; $6721: $66
    ld h, a                                       ; $6722: $67
    ld a, b                                       ; $6723: $78
    xor h                                         ; $6724: $ac
    db $dd                                        ; $6725: $dd
    db $dd                                        ; $6726: $dd
    jp z, Jump_017_4286                           ; $6727: $ca $86 $42

    stop                                          ; $672a: $10 $00
    inc h                                         ; $672c: $24
    ld a, c                                       ; $672d: $79
    call $dcee                                    ; $672e: $cd $ee $dc
    xor b                                         ; $6731: $a8
    halt                                          ; $6732: $76
    ld d, l                                       ; $6733: $55
    ld h, a                                       ; $6734: $67
    sbc h                                         ; $6735: $9c
    rst $28                                       ; $6736: $ef
    rst $38                                       ; $6737: $ff
    db $ed                                        ; $6738: $ed
    cp c                                          ; $6739: $b9
    ld [hl], h                                    ; $673a: $74
    ld hl, $3512                                  ; $673b: $21 $12 $35
    adc d                                         ; $673e: $8a
    cp e                                          ; $673f: $bb
    res 5, b                                      ; $6740: $cb $a8
    ld h, h                                       ; $6742: $64
    ld [hl-], a                                   ; $6743: $32
    inc h                                         ; $6744: $24

Jump_017_6745:
    ld l, b                                       ; $6745: $68
    xor h                                         ; $6746: $ac
    rst $28                                       ; $6747: $ef
    rst $38                                       ; $6748: $ff
    db $db                                        ; $6749: $db
    sub a                                         ; $674a: $97
    ld d, h                                       ; $674b: $54
    ld b, h                                       ; $674c: $44
    ld d, [hl]                                    ; $674d: $56
    adc e                                         ; $674e: $8b
    sbc $ff                                       ; $674f: $de $ff
    db $ec                                        ; $6751: $ec
    xor b                                         ; $6752: $a8
    ld d, e                                       ; $6753: $53
    ld hl, $3512                                  ; $6754: $21 $12 $35
    ld a, c                                       ; $6757: $79
    cp e                                          ; $6758: $bb
    res 5, c                                      ; $6759: $cb $a9
    halt                                          ; $675b: $76
    ld d, l                                       ; $675c: $55
    ld h, a                                       ; $675d: $67
    sbc e                                         ; $675e: $9b
    adc $ff                                       ; $675f: $ce $ff
    cp $ca                                        ; $6761: $fe $ca
    ld [hl], l                                    ; $6763: $75
    ld sp, $3512                                  ; $6764: $31 $12 $35
    ld a, d                                       ; $6767: $7a
    cp l                                          ; $6768: $bd
    call c, $75b9                                 ; $6769: $dc $b9 $75
    ld [hl-], a                                   ; $676c: $32
    inc h                                         ; $676d: $24
    ld e, b                                       ; $676e: $58
    xor h                                         ; $676f: $ac
    rst $28                                       ; $6770: $ef
    db $fd                                        ; $6771: $fd
    cp c                                          ; $6772: $b9
    ld [hl], l                                    ; $6773: $75
    ld b, h                                       ; $6774: $44
    ld b, l                                       ; $6775: $45
    ld a, d                                       ; $6776: $7a
    adc $ff                                       ; $6777: $ce $ff
    db $fd                                        ; $6779: $fd

Jump_017_677a:
    xor b                                         ; $677a: $a8
    ld d, e                                       ; $677b: $53
    ld de, $5813                                  ; $677c: $11 $13 $58
    xor e                                         ; $677f: $ab
    call z, Call_017_76b9                         ; $6780: $cc $b9 $76
    ld b, h                                       ; $6783: $44
    ld b, l                                       ; $6784: $45
    ld l, c                                       ; $6785: $69
    cp [hl]                                       ; $6786: $be
    rst $38                                       ; $6787: $ff
    cp $c9                                        ; $6788: $fe $c9
    ld [hl], l                                    ; $678a: $75
    inc sp                                        ; $678b: $33
    dec [hl]                                      ; $678c: $35
    ld a, c                                       ; $678d: $79
    cp l                                          ; $678e: $bd
    db $dd                                        ; $678f: $dd
    cp c                                          ; $6790: $b9
    ld [hl], h                                    ; $6791: $74
    ld hl, $5713                                  ; $6792: $21 $13 $57
    xor h                                         ; $6795: $ac
    sbc $db                                       ; $6796: $de $db
    sub [hl]                                      ; $6798: $96
    ld d, h                                       ; $6799: $54
    inc [hl]                                      ; $679a: $34
    ld l, b                                       ; $679b: $68
    cp l                                          ; $679c: $bd
    rst $38                                       ; $679d: $ff
    cp $c9                                        ; $679e: $fe $c9
    add l                                         ; $67a0: $85
    ld b, e                                       ; $67a1: $43
    ld b, [hl]                                    ; $67a2: $46
    adc d                                         ; $67a3: $8a
    cp h                                          ; $67a4: $bc
    cp d                                          ; $67a5: $ba
    add [hl]                                      ; $67a6: $86
    ld b, d                                       ; $67a7: $42
    ld [hl+], a                                   ; $67a8: $22
    ld [hl], $9b                                  ; $67a9: $36 $9b
    sbc $ed                                       ; $67ab: $de $ed
    cp c                                          ; $67ad: $b9
    ld [hl], l                                    ; $67ae: $75
    ld b, h                                       ; $67af: $44
    ld h, a                                       ; $67b0: $67
    xor h                                         ; $67b1: $ac
    sbc $dc                                       ; $67b2: $de $dc
    xor b                                         ; $67b4: $a8
    ld h, h                                       ; $67b5: $64
    ld b, h                                       ; $67b6: $44
    ld h, a                                       ; $67b7: $67
    sbc e                                         ; $67b8: $9b
    call $86ca                                    ; $67b9: $cd $ca $86
    ld b, e                                       ; $67bc: $43
    ld b, h                                       ; $67bd: $44
    ld l, b                                       ; $67be: $68
    xor h                                         ; $67bf: $ac
    call z, $87ba                                 ; $67c0: $cc $ba $87
    ld h, [hl]                                    ; $67c3: $66
    ld l, b                                       ; $67c4: $68
    sbc e                                         ; $67c5: $9b
    call $a9dc                                    ; $67c6: $cd $dc $a9
    halt                                          ; $67c9: $76
    ld d, l                                       ; $67ca: $55
    ld l, b                                       ; $67cb: $68
    sbc d                                         ; $67cc: $9a
    xor d                                         ; $67cd: $aa
    xor c                                         ; $67ce: $a9
    halt                                          ; $67cf: $76
    ld d, l                                       ; $67d0: $55
    ld d, [hl]                                    ; $67d1: $56
    adc d                                         ; $67d2: $8a
    cp e                                          ; $67d3: $bb
    cp d                                          ; $67d4: $ba
    xor c                                         ; $67d5: $a9
    add a                                         ; $67d6: $87
    ld [hl], a                                    ; $67d7: $77
    adc c                                         ; $67d8: $89
    cp e                                          ; $67d9: $bb
    res 5, c                                      ; $67da: $cb $a9
    add [hl]                                      ; $67dc: $86
    ld h, [hl]                                    ; $67dd: $66
    ld h, a                                       ; $67de: $67
    adc b                                         ; $67df: $88
    sbc c                                         ; $67e0: $99
    sbc b                                         ; $67e1: $98
    ld [hl], a                                    ; $67e2: $77
    ld h, [hl]                                    ; $67e3: $66
    ld a, b                                       ; $67e4: $78
    sbc d                                         ; $67e5: $9a
    cp e                                          ; $67e6: $bb
    cp e                                          ; $67e7: $bb
    xor c                                         ; $67e8: $a9
    adc b                                         ; $67e9: $88
    adc b                                         ; $67ea: $88
    sbc c                                         ; $67eb: $99
    xor d                                         ; $67ec: $aa
    xor c                                         ; $67ed: $a9
    add a                                         ; $67ee: $87
    ld h, [hl]                                    ; $67ef: $66
    ld h, [hl]                                    ; $67f0: $66
    ld h, a                                       ; $67f1: $67
    adc b                                         ; $67f2: $88
    sbc c                                         ; $67f3: $99
    adc b                                         ; $67f4: $88
    ld [hl], a                                    ; $67f5: $77
    adc b                                         ; $67f6: $88
    sbc c                                         ; $67f7: $99
    xor d                                         ; $67f8: $aa
    xor d                                         ; $67f9: $aa
    xor c                                         ; $67fa: $a9
    sbc c                                         ; $67fb: $99
    adc c                                         ; $67fc: $89
    sbc c                                         ; $67fd: $99
    xor d                                         ; $67fe: $aa
    sbc c                                         ; $67ff: $99
    add a                                         ; $6800: $87
    ld h, [hl]                                    ; $6801: $66
    ld d, l                                       ; $6802: $55
    ld h, [hl]                                    ; $6803: $66
    ld [hl], a                                    ; $6804: $77
    adc b                                         ; $6805: $88
    adc b                                         ; $6806: $88
    adc b                                         ; $6807: $88
    adc c                                         ; $6808: $89
    sbc d                                         ; $6809: $9a
    cp e                                          ; $680a: $bb
    cp e                                          ; $680b: $bb
    cp d                                          ; $680c: $ba
    xor c                                         ; $680d: $a9
    sbc c                                         ; $680e: $99
    sbc c                                         ; $680f: $99
    adc b                                         ; $6810: $88
    ld [hl], a                                    ; $6811: $77
    ld h, [hl]                                    ; $6812: $66
    ld d, l                                       ; $6813: $55
    ld h, [hl]                                    ; $6814: $66
    ld h, a                                       ; $6815: $67
    adc b                                         ; $6816: $88
    adc b                                         ; $6817: $88
    sbc c                                         ; $6818: $99
    sbc c                                         ; $6819: $99
    sbc d                                         ; $681a: $9a
    xor e                                         ; $681b: $ab
    cp e                                          ; $681c: $bb
    cp e                                          ; $681d: $bb
    xor c                                         ; $681e: $a9
    sbc b                                         ; $681f: $98
    add a                                         ; $6820: $87
    ld [hl], a                                    ; $6821: $77
    ld [hl], a                                    ; $6822: $77
    ld [hl], a                                    ; $6823: $77
    ld h, [hl]                                    ; $6824: $66
    ld h, [hl]                                    ; $6825: $66
    ld [hl], a                                    ; $6826: $77
    adc b                                         ; $6827: $88
    sbc c                                         ; $6828: $99
    sbc d                                         ; $6829: $9a
    xor d                                         ; $682a: $aa
    sbc c                                         ; $682b: $99
    xor d                                         ; $682c: $aa
    xor d                                         ; $682d: $aa
    xor d                                         ; $682e: $aa
    xor c                                         ; $682f: $a9
    sbc b                                         ; $6830: $98
    add a                                         ; $6831: $87
    halt                                          ; $6832: $76
    ld h, [hl]                                    ; $6833: $66
    ld h, [hl]                                    ; $6834: $66
    ld h, [hl]                                    ; $6835: $66
    ld [hl], a                                    ; $6836: $77
    adc c                                         ; $6837: $89
    sbc c                                         ; $6838: $99
    sbc d                                         ; $6839: $9a
    cp e                                          ; $683a: $bb
    cp d                                          ; $683b: $ba
    xor d                                         ; $683c: $aa
    xor d                                         ; $683d: $aa
    sbc c                                         ; $683e: $99
    adc c                                         ; $683f: $89
    add a                                         ; $6840: $87
    ld h, [hl]                                    ; $6841: $66
    ld d, l                                       ; $6842: $55
    ld d, l                                       ; $6843: $55
    ld d, [hl]                                    ; $6844: $56
    ld [hl], a                                    ; $6845: $77
    adc b                                         ; $6846: $88
    adc c                                         ; $6847: $89
    sbc c                                         ; $6848: $99
    xor d                                         ; $6849: $aa
    xor d                                         ; $684a: $aa
    cp e                                          ; $684b: $bb
    cp d                                          ; $684c: $ba
    xor c                                         ; $684d: $a9
    adc b                                         ; $684e: $88
    ld [hl], a                                    ; $684f: $77
    ld h, [hl]                                    ; $6850: $66
    ld d, l                                       ; $6851: $55
    ld h, [hl]                                    ; $6852: $66
    ld h, [hl]                                    ; $6853: $66
    ld [hl], a                                    ; $6854: $77
    adc b                                         ; $6855: $88
    sbc c                                         ; $6856: $99
    xor d                                         ; $6857: $aa
    xor d                                         ; $6858: $aa
    xor d                                         ; $6859: $aa
    xor d                                         ; $685a: $aa
    xor c                                         ; $685b: $a9
    sbc b                                         ; $685c: $98
    add a                                         ; $685d: $87
    halt                                          ; $685e: $76
    ld h, l                                       ; $685f: $65
    ld d, l                                       ; $6860: $55
    ld h, [hl]                                    ; $6861: $66
    ld [hl], a                                    ; $6862: $77
    adc b                                         ; $6863: $88
    sbc c                                         ; $6864: $99
    sbc c                                         ; $6865: $99
    sbc d                                         ; $6866: $9a
    xor d                                         ; $6867: $aa
    xor d                                         ; $6868: $aa
    sbc c                                         ; $6869: $99
    sbc b                                         ; $686a: $98
    add a                                         ; $686b: $87
    halt                                          ; $686c: $76
    ld h, [hl]                                    ; $686d: $66
    ld d, [hl]                                    ; $686e: $56
    ld h, [hl]                                    ; $686f: $66
    add a                                         ; $6870: $87
    adc b                                         ; $6871: $88
    sbc c                                         ; $6872: $99
    sbc d                                         ; $6873: $9a
    xor d                                         ; $6874: $aa
    xor d                                         ; $6875: $aa
    sbc c                                         ; $6876: $99
    sbc b                                         ; $6877: $98
    adc b                                         ; $6878: $88
    ld [hl], a                                    ; $6879: $77
    ld h, [hl]                                    ; $687a: $66
    ld h, [hl]                                    ; $687b: $66
    ld h, [hl]                                    ; $687c: $66
    ld h, a                                       ; $687d: $67
    ld a, b                                       ; $687e: $78
    adc b                                         ; $687f: $88
    adc b                                         ; $6880: $88
    adc b                                         ; $6881: $88
    add a                                         ; $6882: $87
    ld [hl], a                                    ; $6883: $77
    ld a, c                                       ; $6884: $79
    call Call_000_1184                            ; $6885: $cd $84 $11
    ld c, c                                       ; $6888: $49
    rst $28                                       ; $6889: $ef
    ei                                            ; $688a: $fb
    ld h, d                                       ; $688b: $62
    ld bc, $bb48                                  ; $688c: $01 $48 $bb
    xor b                                         ; $688f: $a8
    adc b                                         ; $6890: $88
    sbc d                                         ; $6891: $9a
    sub a                                         ; $6892: $97
    ld d, e                                       ; $6893: $53
    inc [hl]                                      ; $6894: $34
    ld l, b                                       ; $6895: $68
    xor h                                         ; $6896: $ac
    res 2, a                                      ; $6897: $cb $97
    ld d, l                                       ; $6899: $55
    ld b, l                                       ; $689a: $45
    ld h, [hl]                                    ; $689b: $66
    ld h, [hl]                                    ; $689c: $66
    adc d                                         ; $689d: $8a
    call Call_017_64ca                            ; $689e: $cd $ca $64
    inc [hl]                                      ; $68a1: $34
    ld d, [hl]                                    ; $68a2: $56
    ld h, [hl]                                    ; $68a3: $66
    ld a, c                                       ; $68a4: $79
    cp l                                          ; $68a5: $bd
    db $db                                        ; $68a6: $db
    add [hl]                                      ; $68a7: $86
    ld d, h                                       ; $68a8: $54
    ld b, h                                       ; $68a9: $44
    ld b, l                                       ; $68aa: $45
    ld a, d                                       ; $68ab: $7a
    call $97da                                    ; $68ac: $cd $da $97
    halt                                          ; $68af: $76
    ld b, d                                       ; $68b0: $42
    ld [hl+], a                                   ; $68b1: $22
    ld e, c                                       ; $68b2: $59
    sbc $db                                       ; $68b3: $de $db
    xor d                                         ; $68b5: $aa
    sbc b                                         ; $68b6: $98
    ld d, e                                       ; $68b7: $53
    ld de, $ab48                                  ; $68b8: $11 $48 $ab
    cp e                                          ; $68bb: $bb
    call z, $52b9                                 ; $68bc: $cc $b9 $52
    ld de, $7846                                  ; $68bf: $11 $46 $78
    xor h                                         ; $68c2: $ac
    rst $28                                       ; $68c3: $ef
    jp c, Jump_000_3363                           ; $68c4: $da $63 $33

    ld b, h                                       ; $68c7: $44
    ld b, l                                       ; $68c8: $45
    ld a, e                                       ; $68c9: $7b
    rst $28                                       ; $68ca: $ef
    db $eb                                        ; $68cb: $eb
    add a                                         ; $68cc: $87
    ld h, l                                       ; $68cd: $65
    ld b, d                                       ; $68ce: $42
    inc hl                                        ; $68cf: $23
    ld l, d                                       ; $68d0: $6a
    call $aacb                                    ; $68d1: $cd $cb $aa
    sub a                                         ; $68d4: $97
    ld [hl-], a                                   ; $68d5: $32
    ld [hl+], a                                   ; $68d6: $22
    ld h, a                                       ; $68d7: $67
    adc c                                         ; $68d8: $89
    cp e                                          ; $68d9: $bb
    cp d                                          ; $68da: $ba
    cp b                                          ; $68db: $b8
    ld h, d                                       ; $68dc: $62
    dec [hl]                                      ; $68dd: $35
    ld d, [hl]                                    ; $68de: $56
    ld h, a                                       ; $68df: $67
    sbc h                                         ; $68e0: $9c
    xor $c9                                       ; $68e1: $ee $c9
    ld [hl], l                                    ; $68e3: $75
    ld d, l                                       ; $68e4: $55
    ld b, e                                       ; $68e5: $43
    ld b, [hl]                                    ; $68e6: $46
    sbc e                                         ; $68e7: $9b
    call z, $a9ba                                 ; $68e8: $cc $ba $a9
    add [hl]                                      ; $68eb: $86
    ld b, d                                       ; $68ec: $42
    inc h                                         ; $68ed: $24
    ld a, b                                       ; $68ee: $78
    sbc d                                         ; $68ef: $9a
    cp l                                          ; $68f0: $bd
    db $dd                                        ; $68f1: $dd
    and a                                         ; $68f2: $a7
    ld d, h                                       ; $68f3: $54
    ld b, h                                       ; $68f4: $44
    ld d, l                                       ; $68f5: $55
    ld d, a                                       ; $68f6: $57
    cp l                                          ; $68f7: $bd
    db $ec                                        ; $68f8: $ec
    xor c                                         ; $68f9: $a9
    adc b                                         ; $68fa: $88
    ld h, l                                       ; $68fb: $65
    ld [hl-], a                                   ; $68fc: $32
    ld [hl], $9b                                  ; $68fd: $36 $9b
    cp h                                          ; $68ff: $bc
    call Call_017_74ca                            ; $6900: $cd $ca $74
    ld [hl+], a                                   ; $6903: $22
    ld b, l                                       ; $6904: $45
    ld h, a                                       ; $6905: $67
    ld a, d                                       ; $6906: $7a
    rst $08                                       ; $6907: $cf
    db $ec                                        ; $6908: $ec
    and a                                         ; $6909: $a7
    ld h, l                                       ; $690a: $65
    ld d, h                                       ; $690b: $54
    inc [hl]                                      ; $690c: $34
    ld l, c                                       ; $690d: $69
    cp h                                          ; $690e: $bc
    res 5, c                                      ; $690f: $cb $a9
    sub [hl]                                      ; $6911: $96
    add h                                         ; $6912: $84
    dec h                                         ; $6913: $25
    ld b, h                                       ; $6914: $44
    ld l, c                                       ; $6915: $69
    xor l                                         ; $6916: $ad
    db $ed                                        ; $6917: $ed
    db $ec                                        ; $6918: $ec
    cp c                                          ; $6919: $b9
    add h                                         ; $691a: $84
    ld b, e                                       ; $691b: $43
    ld b, l                                       ; $691c: $45
    adc d                                         ; $691d: $8a
    adc $ed                                       ; $691e: $ce $ed
    jp z, Jump_017_5398                           ; $6920: $ca $98 $53

    inc [hl]                                      ; $6923: $34
    ld d, a                                       ; $6924: $57
    adc d                                         ; $6925: $8a
    call z, $cbee                                 ; $6926: $cc $ee $cb
    add [hl]                                      ; $6929: $86
    ld d, h                                       ; $692a: $54
    ld b, l                                       ; $692b: $45
    ld d, a                                       ; $692c: $57
    sbc e                                         ; $692d: $9b
    sbc $dc                                       ; $692e: $de $dc
    cp c                                          ; $6930: $b9
    add [hl]                                      ; $6931: $86
    ld b, e                                       ; $6932: $43
    ld b, l                                       ; $6933: $45
    ld a, c                                       ; $6934: $79
    xor e                                         ; $6935: $ab
    call $b9dd                                    ; $6936: $cd $dd $b9
    ld h, h                                       ; $6939: $64
    ld b, h                                       ; $693a: $44
    ld b, l                                       ; $693b: $45
    ld a, c                                       ; $693c: $79
    cp l                                          ; $693d: $bd
    db $ed                                        ; $693e: $ed
    res 3, b                                      ; $693f: $cb $98
    ld [hl], l                                    ; $6941: $75
    ld b, h                                       ; $6942: $44
    ld d, [hl]                                    ; $6943: $56
    adc d                                         ; $6944: $8a
    call $cbdd                                    ; $6945: $cd $dd $cb
    sub a                                         ; $6948: $97
    ld d, l                                       ; $6949: $55
    ld d, l                                       ; $694a: $55
    ld h, a                                       ; $694b: $67
    sbc d                                         ; $694c: $9a
    call $cadd                                    ; $694d: $cd $dd $ca
    add [hl]                                      ; $6950: $86
    ld d, h                                       ; $6951: $54
    ld b, l                                       ; $6952: $45
    ld l, b                                       ; $6953: $68

Jump_017_6954:
    xor h                                         ; $6954: $ac
    call z, $bacb                                 ; $6955: $cc $cb $ba
    add [hl]                                      ; $6958: $86
    ld d, l                                       ; $6959: $55
    ld d, [hl]                                    ; $695a: $56
    ld a, b                                       ; $695b: $78
    xor h                                         ; $695c: $ac
    db $dd                                        ; $695d: $dd
    res 3, b                                      ; $695e: $cb $98
    add [hl]                                      ; $6960: $86
    ld b, l                                       ; $6961: $45
    ld d, l                                       ; $6962: $55
    adc d                                         ; $6963: $8a
    cp h                                          ; $6964: $bc
    call z, $98cb                                 ; $6965: $cc $cb $98
    ld h, l                                       ; $6968: $65
    ld b, l                                       ; $6969: $45
    ld l, b                                       ; $696a: $68
    sbc d                                         ; $696b: $9a
    cp h                                          ; $696c: $bc
    res 7, c                                      ; $696d: $cb $b9
    adc b                                         ; $696f: $88
    add a                                         ; $6970: $87
    ld [hl], a                                    ; $6971: $77
    halt                                          ; $6972: $76
    ld h, l                                       ; $6973: $65
    sbc l                                         ; $6974: $9d
    cp $a5                                        ; $6975: $fe $a5
    nop                                           ; $6977: $00
    ld c, d                                       ; $6978: $4a
    db $ec                                        ; $6979: $ec
    add h                                         ; $697a: $84
    ld [hl], $cf                                  ; $697b: $36 $cf
    jp hl                                         ; $697d: $e9


    ld b, e                                       ; $697e: $43
    ld b, a                                       ; $697f: $47
    xor d                                         ; $6980: $aa
    ld [hl], h                                    ; $6981: $74
    ld c, b                                       ; $6982: $48
    call $66b8                                    ; $6983: $cd $b8 $66
    adc e                                         ; $6986: $8b
    and a                                         ; $6987: $a7
    ld b, d                                       ; $6988: $42
    ld c, b                                       ; $6989: $48
    call Call_017_57b7                            ; $698a: $cd $b7 $57
    xor l                                         ; $698d: $ad
    ret z                                         ; $698e: $c8

    ld b, c                                       ; $698f: $41
    scf                                           ; $6990: $37
    cp h                                          ; $6991: $bc
    and a                                         ; $6992: $a7
    ld d, a                                       ; $6993: $57
    xor l                                         ; $6994: $ad
    ld [$3663], a                                 ; $6995: $ea $63 $36
    sbc d                                         ; $6998: $9a
    add l                                         ; $6999: $85
    ld d, a                                       ; $699a: $57
    xor [hl]                                      ; $699b: $ae
    db $eb                                        ; $699c: $eb
    ld [hl], h                                    ; $699d: $74
    ld d, a                                       ; $699e: $57
    sbc d                                         ; $699f: $9a
    add h                                         ; $69a0: $84
    dec [hl]                                      ; $69a1: $35
    sbc l                                         ; $69a2: $9d
    db $ec                                        ; $69a3: $ec
    add [hl]                                      ; $69a4: $86
    ld l, b                                       ; $69a5: $68
    cp e                                          ; $69a6: $bb
    add h                                         ; $69a7: $84
    inc [hl]                                      ; $69a8: $34
    ld a, e                                       ; $69a9: $7b
    call c, $7997                                 ; $69aa: $dc $97 $79
    cp h                                          ; $69ad: $bc
    and [hl]                                      ; $69ae: $a6
    inc sp                                        ; $69af: $33
    ld l, h                                       ; $69b0: $6c
    db $dd                                        ; $69b1: $dd
    ret c                                         ; $69b2: $d8

    sbc e                                         ; $69b3: $9b
    rst $18                                       ; $69b4: $df
    cp b                                          ; $69b5: $b8
    ld d, l                                       ; $69b6: $55
    ld a, b                                       ; $69b7: $78
    cp d                                          ; $69b8: $ba
    add a                                         ; $69b9: $87
    ld l, e                                       ; $69ba: $6b
    call $86da                                    ; $69bb: $cd $da $86
    ld a, c                                       ; $69be: $79
    adc b                                         ; $69bf: $88
    cp b                                          ; $69c0: $b8
    ld l, c                                       ; $69c1: $69
    rst $00                                       ; $69c2: $c7
    cp h                                          ; $69c3: $bc
    sub [hl]                                      ; $69c4: $96
    ld a, c                                       ; $69c5: $79
    sub a                                         ; $69c6: $97
    ld a, e                                       ; $69c7: $7b
    halt                                          ; $69c8: $76
    xor l                                         ; $69c9: $ad
    sbc b                                         ; $69ca: $98
    xor e                                         ; $69cb: $ab
    adc b                                         ; $69cc: $88
    sbc b                                         ; $69cd: $98
    ld a, d                                       ; $69ce: $7a
    adc b                                         ; $69cf: $88
    ld h, [hl]                                    ; $69d0: $66
    sbc d                                         ; $69d1: $9a
    ld a, c                                       ; $69d2: $79
    sub [hl]                                      ; $69d3: $96
    cp d                                          ; $69d4: $ba
    and l                                         ; $69d5: $a5
    sbc c                                         ; $69d6: $99
    xor c                                         ; $69d7: $a9
    adc d                                         ; $69d8: $8a
    add [hl]                                      ; $69d9: $86
    ld h, a                                       ; $69da: $67
    xor e                                         ; $69db: $ab
    sub a                                         ; $69dc: $97
    ld h, a                                       ; $69dd: $67
    adc b                                         ; $69de: $88
    adc b                                         ; $69df: $88
    adc b                                         ; $69e0: $88
    adc b                                         ; $69e1: $88
    sbc b                                         ; $69e2: $98
    sbc l                                         ; $69e3: $9d
    cp b                                          ; $69e4: $b8
    ld h, a                                       ; $69e5: $67
    ld a, c                                       ; $69e6: $79
    ld a, b                                       ; $69e7: $78
    ld a, e                                       ; $69e8: $7b
    ld a, b                                       ; $69e9: $78
    adc b                                         ; $69ea: $88
    ld a, b                                       ; $69eb: $78
    add [hl]                                      ; $69ec: $86
    sbc b                                         ; $69ed: $98
    ld a, e                                       ; $69ee: $7b
    and [hl]                                      ; $69ef: $a6
    adc c                                         ; $69f0: $89
    ld a, b                                       ; $69f1: $78
    adc b                                         ; $69f2: $88
    ld a, b                                       ; $69f3: $78
    sbc b                                         ; $69f4: $98
    sbc b                                         ; $69f5: $98
    adc b                                         ; $69f6: $88
    sbc c                                         ; $69f7: $99
    xor b                                         ; $69f8: $a8
    add [hl]                                      ; $69f9: $86
    ld l, e                                       ; $69fa: $6b
    add d                                         ; $69fb: $82
    ld e, c                                       ; $69fc: $59
    sbc d                                         ; $69fd: $9a
    ei                                            ; $69fe: $fb
    sbc c                                         ; $69ff: $99
    sub l                                         ; $6a00: $95
    ld d, [hl]                                    ; $6a01: $56
    ld h, a                                       ; $6a02: $67
    ld l, b                                       ; $6a03: $68
    cp c                                          ; $6a04: $b9
    xor d                                         ; $6a05: $aa
    add a                                         ; $6a06: $87
    sbc d                                         ; $6a07: $9a
    sbc d                                         ; $6a08: $9a
    sbc b                                         ; $6a09: $98
    adc b                                         ; $6a0a: $88
    sbc d                                         ; $6a0b: $9a
    cp e                                          ; $6a0c: $bb
    sub a                                         ; $6a0d: $97
    ld [hl], a                                    ; $6a0e: $77
    sbc e                                         ; $6a0f: $9b
    call z, Call_017_65a7                         ; $6a10: $cc $a7 $65
    ld a, c                                       ; $6a13: $79
    cp h                                          ; $6a14: $bc
    jp z, Jump_017_7987                           ; $6a15: $ca $87 $79

    cp h                                          ; $6a18: $bc
    cp c                                          ; $6a19: $b9
    add [hl]                                      ; $6a1a: $86
    ld a, b                                       ; $6a1b: $78
    adc $ea                                       ; $6a1c: $ce $ea
    halt                                          ; $6a1e: $76
    ld a, d                                       ; $6a1f: $7a
    adc $c9                                       ; $6a20: $ce $c9
    halt                                          ; $6a22: $76
    ld a, c                                       ; $6a23: $79
    adc $c9                                       ; $6a24: $ce $c9
    sbc b                                         ; $6a26: $98
    xor h                                         ; $6a27: $ac
    call z, Call_017_78a9                         ; $6a28: $cc $a9 $78
    xor h                                         ; $6a2b: $ac
    db $db                                        ; $6a2c: $db
    xor b                                         ; $6a2d: $a8
    xor h                                         ; $6a2e: $ac
    res 7, d                                      ; $6a2f: $cb $ba
    sbc c                                         ; $6a31: $99
    xor c                                         ; $6a32: $a9
    sbc e                                         ; $6a33: $9b
    xor d                                         ; $6a34: $aa
    sbc d                                         ; $6a35: $9a
    xor l                                         ; $6a36: $ad
    cp d                                          ; $6a37: $ba
    cp c                                          ; $6a38: $b9
    adc c                                         ; $6a39: $89
    xor d                                         ; $6a3a: $aa
    cp d                                          ; $6a3b: $ba
    xor d                                         ; $6a3c: $aa
    xor e                                         ; $6a3d: $ab
    cp d                                          ; $6a3e: $ba
    sbc d                                         ; $6a3f: $9a
    xor b                                         ; $6a40: $a8
    ld a, h                                       ; $6a41: $7c
    jp hl                                         ; $6a42: $e9


    ret                                           ; $6a43: $c9


    xor d                                         ; $6a44: $aa
    cp e                                          ; $6a45: $bb
    xor c                                         ; $6a46: $a9
    sbc c                                         ; $6a47: $99
    xor d                                         ; $6a48: $aa
    xor b                                         ; $6a49: $a8
    bit 5, c                                      ; $6a4a: $cb $69
    cp d                                          ; $6a4c: $ba
    cp d                                          ; $6a4d: $ba
    sbc c                                         ; $6a4e: $99
    sbc c                                         ; $6a4f: $99
    xor d                                         ; $6a50: $aa
    sbc d                                         ; $6a51: $9a
    cp e                                          ; $6a52: $bb

Jump_017_6a53:
    cp d                                          ; $6a53: $ba
    sbc c                                         ; $6a54: $99
    sbc c                                         ; $6a55: $99
    sbc c                                         ; $6a56: $99
    sbc c                                         ; $6a57: $99
    adc d                                         ; $6a58: $8a
    or a                                          ; $6a59: $b7
    sbc e                                         ; $6a5a: $9b
    adc b                                         ; $6a5b: $88
    adc d                                         ; $6a5c: $8a
    xor d                                         ; $6a5d: $aa
    xor b                                         ; $6a5e: $a8
    adc c                                         ; $6a5f: $89
    sbc c                                         ; $6a60: $99
    xor c                                         ; $6a61: $a9
    adc c                                         ; $6a62: $89
    add hl, hl                                    ; $6a63: $29
    cp d                                          ; $6a64: $ba

Jump_017_6a65:
    sbc b                                         ; $6a65: $98
    sbc c                                         ; $6a66: $99
    xor d                                         ; $6a67: $aa
    sbc c                                         ; $6a68: $99
    sbc c                                         ; $6a69: $99
    xor e                                         ; $6a6a: $ab
    cp d                                          ; $6a6b: $ba
    sbc c                                         ; $6a6c: $99
    xor d                                         ; $6a6d: $aa
    xor c                                         ; $6a6e: $a9
    xor d                                         ; $6a6f: $aa
    sbc c                                         ; $6a70: $99
    xor d                                         ; $6a71: $aa
    xor l                                         ; $6a72: $ad
    reti                                          ; $6a73: $d9


    ld a, d                                       ; $6a74: $7a
    jp z, $97cc                                   ; $6a75: $ca $cc $97

    call $d9ab                                    ; $6a78: $cd $ab $d9
    ld a, d                                       ; $6a7b: $7a
    cp c                                          ; $6a7c: $b9
    cp l                                          ; $6a7d: $bd
    xor d                                         ; $6a7e: $aa
    res 3, h                                      ; $6a7f: $cb $9c
    db $db                                        ; $6a81: $db
    cp h                                          ; $6a82: $bc
    xor b                                         ; $6a83: $a8
    sbc c                                         ; $6a84: $99
    adc c                                         ; $6a85: $89
    sbc b                                         ; $6a86: $98
    adc c                                         ; $6a87: $89
    adc c                                         ; $6a88: $89

jr_017_6a89:
    ld a, [$9879]                                 ; $6a89: $fa $79 $98
    sbc c                                         ; $6a8c: $99
    sbc c                                         ; $6a8d: $99
    sbc b                                         ; $6a8e: $98
    add a                                         ; $6a8f: $87
    sbc c                                         ; $6a90: $99
    adc c                                         ; $6a91: $89
    adc b                                         ; $6a92: $88
    sbc b                                         ; $6a93: $98
    adc c                                         ; $6a94: $89
    xor c                                         ; $6a95: $a9
    adc c                                         ; $6a96: $89
    sbc b                                         ; $6a97: $98
    adc b                                         ; $6a98: $88
    adc b                                         ; $6a99: $88
    adc b                                         ; $6a9a: $88
    add a                                         ; $6a9b: $87
    adc c                                         ; $6a9c: $89
    halt                                          ; $6a9d: $76
    cp [hl]                                       ; $6a9e: $be
    add c                                         ; $6a9f: $81
    ld e, e                                       ; $6aa0: $5b
    call Call_017_4a83                            ; $6aa1: $cd $83 $4a
    or l                                          ; $6aa4: $b5
    scf                                           ; $6aa5: $37
    adc b                                         ; $6aa6: $88
    cp l                                          ; $6aa7: $bd
    xor b                                         ; $6aa8: $a8
    halt                                          ; $6aa9: $76
    ld h, [hl]                                    ; $6aaa: $66
    ld h, h                                       ; $6aab: $64
    jr c, jr_017_6a89                             ; $6aac: $38 $db

    xor d                                         ; $6aae: $aa
    cp d                                          ; $6aaf: $ba
    xor c                                         ; $6ab0: $a9
    adc b                                         ; $6ab1: $88
    ld h, a                                       ; $6ab2: $67
    adc c                                         ; $6ab3: $89
    xor e                                         ; $6ab4: $ab
    xor d                                         ; $6ab5: $aa
    add [hl]                                      ; $6ab6: $86
    ld d, e                                       ; $6ab7: $53
    ld [hl+], a                                   ; $6ab8: $22
    inc [hl]                                      ; $6ab9: $34
    ld a, d                                       ; $6aba: $7a
    adc $ff                                       ; $6abb: $ce $ff
    db $ed                                        ; $6abd: $ed
    xor b                                         ; $6abe: $a8
    ld d, e                                       ; $6abf: $53
    ld [hl+], a                                   ; $6ac0: $22
    inc hl                                        ; $6ac1: $23
    ld d, a                                       ; $6ac2: $57
    sbc d                                         ; $6ac3: $9a
    cp e                                          ; $6ac4: $bb
    xor b                                         ; $6ac5: $a8
    ld [hl], a                                    ; $6ac6: $77
    ld a, b                                       ; $6ac7: $78

Call_017_6ac8:
    xor e                                         ; $6ac8: $ab
    call z, $97cb                                 ; $6ac9: $cc $cb $97
    ld b, e                                       ; $6acc: $43
    ld de, $5812                                  ; $6acd: $11 $12 $58
    xor l                                         ; $6ad0: $ad
    rst $38                                       ; $6ad1: $ff
    cp $b8                                        ; $6ad2: $fe $b8
    ld h, h                                       ; $6ad4: $64
    ld [hl+], a                                   ; $6ad5: $22
    inc h                                         ; $6ad6: $24
    ld l, b                                       ; $6ad7: $68
    xor e                                         ; $6ad8: $ab
    cp e                                          ; $6ad9: $bb
    sub a                                         ; $6ada: $97
    ld d, h                                       ; $6adb: $54
    ld b, h                                       ; $6adc: $44
    ld l, b                                       ; $6add: $68
    cp l                                          ; $6ade: $bd
    rst $38                                       ; $6adf: $ff
    db $ec                                        ; $6ae0: $ec
    sub [hl]                                      ; $6ae1: $96
    jr nc, jr_017_6ae4                            ; $6ae2: $30 $00

jr_017_6ae4:
    inc h                                         ; $6ae4: $24
    ld a, d                                       ; $6ae5: $7a
    call $b9dc                                    ; $6ae6: $cd $dc $b9
    halt                                          ; $6ae9: $76
    ld d, [hl]                                    ; $6aea: $56
    ld a, b                                       ; $6aeb: $78
    xor e                                         ; $6aec: $ab
    cp d                                          ; $6aed: $ba
    sub [hl]                                      ; $6aee: $96
    ld b, d                                       ; $6aef: $42
    ld de, $7a24                                  ; $6af0: $11 $24 $7a
    adc $ff                                       ; $6af3: $ce $ff
    db $ec                                        ; $6af5: $ec
    sub [hl]                                      ; $6af6: $96
    ld b, d                                       ; $6af7: $42
    inc hl                                        ; $6af8: $23
    ld e, b                                       ; $6af9: $58
    xor d                                         ; $6afa: $aa
    xor b                                         ; $6afb: $a8
    ld h, l                                       ; $6afc: $65
    inc sp                                        ; $6afd: $33
    ld d, a                                       ; $6afe: $57
    cp l                                          ; $6aff: $bd
    rst $38                                       ; $6b00: $ff
    db $eb                                        ; $6b01: $eb
    add l                                         ; $6b02: $85
    ld [hl-], a                                   ; $6b03: $32
    inc [hl]                                      ; $6b04: $34
    ld l, c                                       ; $6b05: $69
    xor d                                         ; $6b06: $aa
    sbc b                                         ; $6b07: $98
    ld h, l                                       ; $6b08: $65
    ld d, [hl]                                    ; $6b09: $56
    adc d                                         ; $6b0a: $8a
    rst $18                                       ; $6b0b: $df
    cp $c8                                        ; $6b0c: $fe $c8
    ld d, d                                       ; $6b0e: $52
    ld [de], a                                    ; $6b0f: $12
    ld c, b                                       ; $6b10: $48
    cp h                                          ; $6b11: $bc
    cp b                                          ; $6b12: $b8
    ld d, e                                       ; $6b13: $53
    dec [hl]                                      ; $6b14: $35
    sbc h                                         ; $6b15: $9c
    xor $db                                       ; $6b16: $ee $db
    xor b                                         ; $6b18: $a8
    ld [hl], a                                    ; $6b19: $77
    ld d, h                                       ; $6b1a: $54
    inc [hl]                                      ; $6b1b: $34
    ld l, b                                       ; $6b1c: $68
    sbc d                                         ; $6b1d: $9a
    add [hl]                                      ; $6b1e: $86
    ld b, l                                       ; $6b1f: $45
    adc h                                         ; $6b20: $8c
    rst $38                                       ; $6b21: $ff
    ret z                                         ; $6b22: $c8

    ld d, h                                       ; $6b23: $54
    ld a, d                                       ; $6b24: $7a
    bit 6, d                                      ; $6b25: $cb $72
    ld [bc], a                                    ; $6b27: $02
    ld l, e                                       ; $6b28: $6b
    jp z, Jump_017_5964                           ; $6b29: $ca $64 $59

    rst $28                                       ; $6b2c: $ef
    reti                                          ; $6b2d: $d9


    ld d, l                                       ; $6b2e: $55
    adc e                                         ; $6b2f: $8b
    ret z                                         ; $6b30: $c8

    ld sp, $bc37                                  ; $6b31: $31 $37 $bc
    and l                                         ; $6b34: $a5
    inc hl                                        ; $6b35: $23
    adc l                                         ; $6b36: $8d
    db $fd                                        ; $6b37: $fd
    add h                                         ; $6b38: $84
    ld b, a                                       ; $6b39: $47
    cp l                                          ; $6b3a: $bd
    or a                                          ; $6b3b: $b7
    ld b, h                                       ; $6b3c: $44
    ld l, b                                       ; $6b3d: $68
    add [hl]                                      ; $6b3e: $86
    ld d, [hl]                                    ; $6b3f: $56
    sbc h                                         ; $6b40: $9c
    ret                                           ; $6b41: $c9


    ld d, h                                       ; $6b42: $54
    ld a, h                                       ; $6b43: $7c
    cp $93                                        ; $6b44: $fe $93
    inc d                                         ; $6b46: $14
    xor l                                         ; $6b47: $ad
    rst $00                                       ; $6b48: $c7
    ld hl, $aa47                                  ; $6b49: $21 $47 $aa
    xor d                                         ; $6b4c: $aa
    xor d                                         ; $6b4d: $aa
    add [hl]                                      ; $6b4e: $86
    ld l, c                                       ; $6b4f: $69
    call Call_000_12b5                            ; $6b50: $cd $b5 $12
    ld a, l                                       ; $6b53: $7d

jr_017_6b54:
    ld [$1640], a                                 ; $6b54: $ea $40 $16
    rst $08                                       ; $6b57: $cf
    rst $00                                       ; $6b58: $c7
    ld d, l                                       ; $6b59: $55
    ld a, d                                       ; $6b5a: $7a
    call z, $43a7                                 ; $6b5b: $cc $a7 $43
    ld c, b                                       ; $6b5e: $48
    call Call_000_1393                            ; $6b5f: $cd $93 $13
    sbc l                                         ; $6b62: $9d
    jp hl                                         ; $6b63: $e9


    ld sp, $fd5c                                  ; $6b64: $31 $5c $fd
    add e                                         ; $6b67: $83
    scf                                           ; $6b68: $37
    cp l                                          ; $6b69: $bd
    sub h                                         ; $6b6a: $94
    inc hl                                        ; $6b6b: $23
    ld a, e                                       ; $6b6c: $7b
    cp c                                          ; $6b6d: $b9
    ld h, h                                       ; $6b6e: $64
    ld l, d                                       ; $6b6f: $6a
    call z, Call_017_5796                         ; $6b70: $cc $96 $57
    cp l                                          ; $6b73: $bd
    or [hl]                                       ; $6b74: $b6
    dec [hl]                                      ; $6b75: $35
    sbc e                                         ; $6b76: $9b
    sub h                                         ; $6b77: $94
    inc h                                         ; $6b78: $24
    sbc l                                         ; $6b79: $9d
    or [hl]                                       ; $6b7a: $b6
    ld b, a                                       ; $6b7b: $47
    rst $18                                       ; $6b7c: $df
    or a                                          ; $6b7d: $b7
    ld e, b                                       ; $6b7e: $58
    call z, $3784                                 ; $6b7f: $cc $84 $37
    xor c                                         ; $6b82: $a9
    ld d, e                                       ; $6b83: $53
    ld l, e                                       ; $6b84: $6b
    ret                                           ; $6b85: $c9


    ld h, a                                       ; $6b86: $67
    cp [hl]                                       ; $6b87: $be
    reti                                          ; $6b88: $d9


    ld a, c                                       ; $6b89: $79
    cp d                                          ; $6b8a: $ba
    ld h, [hl]                                    ; $6b8b: $66
    adc d                                         ; $6b8c: $8a
    add h                                         ; $6b8d: $84
    scf                                           ; $6b8e: $37
    cp e                                          ; $6b8f: $bb
    ld h, e                                       ; $6b90: $63
    ld l, l                                       ; $6b91: $6d
    ei                                            ; $6b92: $fb
    ld d, l                                       ; $6b93: $55
    cp a                                          ; $6b94: $bf
    push bc                                       ; $6b95: $c5
    ld h, $cc                                     ; $6b96: $26 $cc
    ld h, c                                       ; $6b98: $61
    jr c, jr_017_6b54                             ; $6b99: $38 $b9

    ld h, [hl]                                    ; $6b9b: $66
    sbc d                                         ; $6b9c: $9a
    xor c                                         ; $6b9d: $a9
    cp h                                          ; $6b9e: $bc
    cp b                                          ; $6b9f: $b8
    adc d                                         ; $6ba0: $8a
    jp c, Jump_017_6a53                           ; $6ba1: $da $53 $6a

    and l                                         ; $6ba4: $a5
    inc h                                         ; $6ba5: $24
    xor h                                         ; $6ba6: $ac
    and a                                         ; $6ba7: $a7
    adc h                                         ; $6ba8: $8c
    db $ec                                        ; $6ba9: $ec
    xor c                                         ; $6baa: $a9
    xor c                                         ; $6bab: $a9
    sbc b                                         ; $6bac: $98
    add a                                         ; $6bad: $87
    ld b, e                                       ; $6bae: $43
    ld l, d                                       ; $6baf: $6a
    or a                                          ; $6bb0: $b7
    ld b, l                                       ; $6bb1: $45

Jump_017_6bb2:
    xor [hl]                                      ; $6bb2: $ae
    jp c, $cc89                                   ; $6bb3: $da $89 $cc

    res 5, b                                      ; $6bb6: $cb $a8
    ld d, l                                       ; $6bb8: $55
    ld h, [hl]                                    ; $6bb9: $66
    ld b, h                                       ; $6bba: $44
    ld l, d                                       ; $6bbb: $6a
    cp c                                          ; $6bbc: $b9
    adc c                                         ; $6bbd: $89
    rst $18                                       ; $6bbe: $df
    jp c, $9a88                                   ; $6bbf: $da $88 $9a

    cp d                                          ; $6bc2: $ba
    ld [hl], e                                    ; $6bc3: $73
    ld [hl], $aa                                  ; $6bc4: $36 $aa
    ld [hl], l                                    ; $6bc6: $75
    ld l, d                                       ; $6bc7: $6a
    call $cbdc                                    ; $6bc8: $cd $dc $cb
    cp h                                          ; $6bcb: $bc
    cp c                                          ; $6bcc: $b9
    halt                                          ; $6bcd: $76
    ld [hl], a                                    ; $6bce: $77
    ld [hl], l                                    ; $6bcf: $75
    ld l, b                                       ; $6bd0: $68
    xor d                                         ; $6bd1: $aa
    xor e                                         ; $6bd2: $ab
    call $dcdd                                    ; $6bd3: $cd $dd $dc
    xor b                                         ; $6bd6: $a8
    adc d                                         ; $6bd7: $8a
    xor c                                         ; $6bd8: $a9
    ld [hl], a                                    ; $6bd9: $77
    adc b                                         ; $6bda: $88
    sbc d                                         ; $6bdb: $9a
    xor c                                         ; $6bdc: $a9
    xor d                                         ; $6bdd: $aa
    call $aaeb                                    ; $6bde: $cd $eb $aa
    cp d                                          ; $6be1: $ba
    xor b                                         ; $6be2: $a8
    halt                                          ; $6be3: $76
    adc c                                         ; $6be4: $89
    xor d                                         ; $6be5: $aa
    sbc b                                         ; $6be6: $98
    sbc e                                         ; $6be7: $9b
    res 7, e                                      ; $6be8: $cb $bb
    res 7, d                                      ; $6bea: $cb $ba
    xor b                                         ; $6bec: $a8
    halt                                          ; $6bed: $76
    ld l, b                                       ; $6bee: $68
    sbc c                                         ; $6bef: $99
    adc c                                         ; $6bf0: $89
    xor h                                         ; $6bf1: $ac
    call z, $ccab                                 ; $6bf2: $cc $ab $cc
    cp e                                          ; $6bf5: $bb
    xor b                                         ; $6bf6: $a8
    adc b                                         ; $6bf7: $88
    sbc b                                         ; $6bf8: $98
    add a                                         ; $6bf9: $87
    ld a, c                                       ; $6bfa: $79
    cp h                                          ; $6bfb: $bc
    cp e                                          ; $6bfc: $bb
    call z, $cadd                                 ; $6bfd: $cc $dd $ca
    xor d                                         ; $6c00: $aa
    cp d                                          ; $6c01: $ba
    xor b                                         ; $6c02: $a8
    adc b                                         ; $6c03: $88
    xor d                                         ; $6c04: $aa
    cp d                                          ; $6c05: $ba
    cp e                                          ; $6c06: $bb
    adc $ed                                       ; $6c07: $ce $ed
    set 1, l                                      ; $6c09: $cb $cd
    res 5, d                                      ; $6c0b: $cb $aa
    sbc c                                         ; $6c0d: $99
    xor e                                         ; $6c0e: $ab
    xor d                                         ; $6c0f: $aa
    cp l                                          ; $6c10: $bd
    db $ed                                        ; $6c11: $ed
    db $dd                                        ; $6c12: $dd
    db $dd                                        ; $6c13: $dd
    call c, $99ba                                 ; $6c14: $dc $ba $99
    sbc d                                         ; $6c17: $9a
    sbc c                                         ; $6c18: $99
    xor e                                         ; $6c19: $ab
    call z, $ddcc                                 ; $6c1a: $cc $cc $dd
    call c, $aacb                                 ; $6c1d: $dc $cb $aa
    xor d                                         ; $6c20: $aa
    sbc b                                         ; $6c21: $98
    adc c                                         ; $6c22: $89
    xor e                                         ; $6c23: $ab
    xor e                                         ; $6c24: $ab
    call $cbdd                                    ; $6c25: $cd $dd $cb
    cp e                                          ; $6c28: $bb
    cp c                                          ; $6c29: $b9
    sbc b                                         ; $6c2a: $98
    adc b                                         ; $6c2b: $88
    adc c                                         ; $6c2c: $89
    sbc d                                         ; $6c2d: $9a
    cp e                                          ; $6c2e: $bb
    call z, $cccc                                 ; $6c2f: $cc $cc $cc
    xor c                                         ; $6c32: $a9
    sbc c                                         ; $6c33: $99
    adc b                                         ; $6c34: $88
    adc b                                         ; $6c35: $88
    sbc c                                         ; $6c36: $99
    xor d                                         ; $6c37: $aa
    cp e                                          ; $6c38: $bb
    res 7, e                                      ; $6c39: $cb $bb
    xor d                                         ; $6c3b: $aa
    xor d                                         ; $6c3c: $aa
    sbc b                                         ; $6c3d: $98
    adc b                                         ; $6c3e: $88
    add a                                         ; $6c3f: $87
    sbc c                                         ; $6c40: $99
    sbc e                                         ; $6c41: $9b
    xor e                                         ; $6c42: $ab
    cp e                                          ; $6c43: $bb
    cp d                                          ; $6c44: $ba
    xor d                                         ; $6c45: $aa
    sbc c                                         ; $6c46: $99
    sbc c                                         ; $6c47: $99
    adc b                                         ; $6c48: $88
    sbc c                                         ; $6c49: $99
    sbc d                                         ; $6c4a: $9a
    cp e                                          ; $6c4b: $bb
    cp e                                          ; $6c4c: $bb
    cp b                                          ; $6c4d: $b8
    ld a, d                                       ; $6c4e: $7a
    xor c                                         ; $6c4f: $a9
    adc b                                         ; $6c50: $88
    adc c                                         ; $6c51: $89
    sbc c                                         ; $6c52: $99
    xor e                                         ; $6c53: $ab
    cp e                                          ; $6c54: $bb
    res 7, e                                      ; $6c55: $cb $bb
    xor c                                         ; $6c57: $a9
    sbc c                                         ; $6c58: $99
    adc b                                         ; $6c59: $88
    adc b                                         ; $6c5a: $88
    sbc c                                         ; $6c5b: $99
    xor d                                         ; $6c5c: $aa
    xor e                                         ; $6c5d: $ab
    cp e                                          ; $6c5e: $bb
    cp e                                          ; $6c5f: $bb
    xor c                                         ; $6c60: $a9
    sbc b                                         ; $6c61: $98
    ld [hl], a                                    ; $6c62: $77
    ld [hl], a                                    ; $6c63: $77
    adc b                                         ; $6c64: $88
    sbc d                                         ; $6c65: $9a
    xor e                                         ; $6c66: $ab
    cp e                                          ; $6c67: $bb
    xor d                                         ; $6c68: $aa
    sbc b                                         ; $6c69: $98
    add a                                         ; $6c6a: $87
    halt                                          ; $6c6b: $76
    ld h, a                                       ; $6c6c: $67
    ld a, b                                       ; $6c6d: $78
    adc c                                         ; $6c6e: $89
    sbc d                                         ; $6c6f: $9a
    xor d                                         ; $6c70: $aa
    xor c                                         ; $6c71: $a9
    sbc b                                         ; $6c72: $98
    add a                                         ; $6c73: $87
    ld [hl], a                                    ; $6c74: $77
    ld [hl], a                                    ; $6c75: $77
    adc b                                         ; $6c76: $88
    adc c                                         ; $6c77: $89
    xor d                                         ; $6c78: $aa
    xor d                                         ; $6c79: $aa
    xor c                                         ; $6c7a: $a9
    adc b                                         ; $6c7b: $88
    ld [hl], a                                    ; $6c7c: $77
    ld h, a                                       ; $6c7d: $67
    ld a, b                                       ; $6c7e: $78
    sbc d                                         ; $6c7f: $9a
    cp e                                          ; $6c80: $bb
    cp e                                          ; $6c81: $bb
    xor d                                         ; $6c82: $aa
    sbc b                                         ; $6c83: $98
    add a                                         ; $6c84: $87
    ld [hl], a                                    ; $6c85: $77
    ld a, b                                       ; $6c86: $78
    sbc c                                         ; $6c87: $99
    xor e                                         ; $6c88: $ab
    call z, $a9bb                                 ; $6c89: $cc $bb $a9
    add a                                         ; $6c8c: $87
    ld [hl], a                                    ; $6c8d: $77
    adc b                                         ; $6c8e: $88
    sbc d                                         ; $6c8f: $9a
    cp h                                          ; $6c90: $bc
    res 7, d                                      ; $6c91: $cb $ba
    xor c                                         ; $6c93: $a9
    adc b                                         ; $6c94: $88
    adc b                                         ; $6c95: $88
    adc c                                         ; $6c96: $89
    xor d                                         ; $6c97: $aa
    cp e                                          ; $6c98: $bb
    cp e                                          ; $6c99: $bb
    xor d                                         ; $6c9a: $aa
    sbc b                                         ; $6c9b: $98
    add a                                         ; $6c9c: $87
    adc b                                         ; $6c9d: $88
    sbc d                                         ; $6c9e: $9a
    cp e                                          ; $6c9f: $bb
    call z, $98ba                                 ; $6ca0: $cc $ba $98
    ld [hl], a                                    ; $6ca3: $77
    adc b                                         ; $6ca4: $88
    sbc d                                         ; $6ca5: $9a
    cp e                                          ; $6ca6: $bb
    cp e                                          ; $6ca7: $bb
    cp d                                          ; $6ca8: $ba
    xor c                                         ; $6ca9: $a9
    adc b                                         ; $6caa: $88
    adc b                                         ; $6cab: $88
    adc c                                         ; $6cac: $89
    xor e                                         ; $6cad: $ab
    cp e                                          ; $6cae: $bb
    cp d                                          ; $6caf: $ba
    xor c                                         ; $6cb0: $a9
    add a                                         ; $6cb1: $87
    ld a, b                                       ; $6cb2: $78
    sbc d                                         ; $6cb3: $9a
    cp e                                          ; $6cb4: $bb
    res 7, e                                      ; $6cb5: $cb $bb
    sbc b                                         ; $6cb7: $98
    adc b                                         ; $6cb8: $88
    adc b                                         ; $6cb9: $88
    xor e                                         ; $6cba: $ab
    cp e                                          ; $6cbb: $bb
    cp e                                          ; $6cbc: $bb
    xor c                                         ; $6cbd: $a9
    sbc c                                         ; $6cbe: $99
    adc b                                         ; $6cbf: $88
    sbc d                                         ; $6cc0: $9a
    xor d                                         ; $6cc1: $aa
    cp h                                          ; $6cc2: $bc
    cp d                                          ; $6cc3: $ba
    sbc d                                         ; $6cc4: $9a
    sub a                                         ; $6cc5: $97
    adc d                                         ; $6cc6: $8a
    xor d                                         ; $6cc7: $aa
    cp h                                          ; $6cc8: $bc
    jp z, $98aa                                   ; $6cc9: $ca $aa $98

    adc d                                         ; $6ccc: $8a
    xor d                                         ; $6ccd: $aa
    cp c                                          ; $6cce: $b9
    ld a, b                                       ; $6ccf: $78
    adc b                                         ; $6cd0: $88
    adc b                                         ; $6cd1: $88
    adc b                                         ; $6cd2: $88
    adc b                                         ; $6cd3: $88
    adc b                                         ; $6cd4: $88
    adc b                                         ; $6cd5: $88
    adc b                                         ; $6cd6: $88
    adc b                                         ; $6cd7: $88
    adc b                                         ; $6cd8: $88
    adc b                                         ; $6cd9: $88
    ld [hl], a                                    ; $6cda: $77
    ld a, b                                       ; $6cdb: $78
    adc b                                         ; $6cdc: $88
    adc b                                         ; $6cdd: $88
    adc b                                         ; $6cde: $88
    adc b                                         ; $6cdf: $88
    ld a, b                                       ; $6ce0: $78
    inc b                                         ; $6ce1: $04
    adc b                                         ; $6ce2: $88
    adc b                                         ; $6ce3: $88
    adc b                                         ; $6ce4: $88
    adc b                                         ; $6ce5: $88
    adc b                                         ; $6ce6: $88
    adc b                                         ; $6ce7: $88
    adc b                                         ; $6ce8: $88
    adc b                                         ; $6ce9: $88
    adc b                                         ; $6cea: $88
    adc b                                         ; $6ceb: $88
    adc b                                         ; $6cec: $88
    adc b                                         ; $6ced: $88
    adc b                                         ; $6cee: $88
    adc b                                         ; $6cef: $88
    adc b                                         ; $6cf0: $88
    adc b                                         ; $6cf1: $88
    adc b                                         ; $6cf2: $88
    adc b                                         ; $6cf3: $88
    adc b                                         ; $6cf4: $88
    adc b                                         ; $6cf5: $88
    adc b                                         ; $6cf6: $88
    adc b                                         ; $6cf7: $88
    adc b                                         ; $6cf8: $88
    adc b                                         ; $6cf9: $88
    adc b                                         ; $6cfa: $88
    adc b                                         ; $6cfb: $88
    add a                                         ; $6cfc: $87
    ld a, b                                       ; $6cfd: $78
    adc b                                         ; $6cfe: $88
    adc b                                         ; $6cff: $88
    add a                                         ; $6d00: $87
    ld [hl], a                                    ; $6d01: $77
    adc b                                         ; $6d02: $88
    adc b                                         ; $6d03: $88
    adc b                                         ; $6d04: $88
    adc b                                         ; $6d05: $88
    adc b                                         ; $6d06: $88
    adc b                                         ; $6d07: $88
    adc b                                         ; $6d08: $88
    adc b                                         ; $6d09: $88
    adc b                                         ; $6d0a: $88
    adc b                                         ; $6d0b: $88
    adc b                                         ; $6d0c: $88
    adc b                                         ; $6d0d: $88
    add a                                         ; $6d0e: $87
    ld [hl], a                                    ; $6d0f: $77
    add a                                         ; $6d10: $87
    adc b                                         ; $6d11: $88
    sbc c                                         ; $6d12: $99
    ld [hl], a                                    ; $6d13: $77
    ld h, [hl]                                    ; $6d14: $66
    ld d, [hl]                                    ; $6d15: $56
    ld [hl], a                                    ; $6d16: $77
    ld a, b                                       ; $6d17: $78
    adc d                                         ; $6d18: $8a
    cp e                                          ; $6d19: $bb
    cp e                                          ; $6d1a: $bb
    cp e                                          ; $6d1b: $bb
    cp h                                          ; $6d1c: $bc
    call c, $98ba                                 ; $6d1d: $dc $ba $98
    add a                                         ; $6d20: $87
    halt                                          ; $6d21: $76
    ld d, h                                       ; $6d22: $54
    ld b, e                                       ; $6d23: $43
    inc [hl]                                      ; $6d24: $34
    ld b, h                                       ; $6d25: $44
    inc [hl]                                      ; $6d26: $34
    ld b, l                                       ; $6d27: $45
    ld h, a                                       ; $6d28: $67
    ld a, b                                       ; $6d29: $78
    sbc c                                         ; $6d2a: $99
    sbc d                                         ; $6d2b: $9a
    cp e                                          ; $6d2c: $bb
    cp d                                          ; $6d2d: $ba
    xor d                                         ; $6d2e: $aa
    xor d                                         ; $6d2f: $aa
    sbc c                                         ; $6d30: $99
    adc b                                         ; $6d31: $88
    ld [hl], a                                    ; $6d32: $77
    ld [hl], a                                    ; $6d33: $77
    ld [hl], a                                    ; $6d34: $77
    ld [hl], a                                    ; $6d35: $77
    ld [hl], a                                    ; $6d36: $77
    ld a, b                                       ; $6d37: $78
    adc b                                         ; $6d38: $88
    adc c                                         ; $6d39: $89
    sbc c                                         ; $6d3a: $99
    sbc c                                         ; $6d3b: $99
    adc b                                         ; $6d3c: $88
    adc b                                         ; $6d3d: $88
    adc b                                         ; $6d3e: $88
    ld [hl], a                                    ; $6d3f: $77
    add [hl]                                      ; $6d40: $86
    ld h, [hl]                                    ; $6d41: $66
    ld h, [hl]                                    ; $6d42: $66
    ld [hl], a                                    ; $6d43: $77
    ld [hl], a                                    ; $6d44: $77
    ld [hl], a                                    ; $6d45: $77
    adc b                                         ; $6d46: $88
    sbc c                                         ; $6d47: $99
    sbc c                                         ; $6d48: $99
    sbc c                                         ; $6d49: $99
    xor c                                         ; $6d4a: $a9
    sbc c                                         ; $6d4b: $99
    adc b                                         ; $6d4c: $88
    adc b                                         ; $6d4d: $88
    add a                                         ; $6d4e: $87
    ld [hl], a                                    ; $6d4f: $77
    add [hl]                                      ; $6d50: $86
    ld h, a                                       ; $6d51: $67
    ld [hl], a                                    ; $6d52: $77
    ld [hl], a                                    ; $6d53: $77
    ld [hl], a                                    ; $6d54: $77
    ld [hl], a                                    ; $6d55: $77
    halt                                          ; $6d56: $76
    ld h, [hl]                                    ; $6d57: $66
    ld [hl], a                                    ; $6d58: $77
    ld a, c                                       ; $6d59: $79
    sbc c                                         ; $6d5a: $99
    add a                                         ; $6d5b: $87
    ld h, [hl]                                    ; $6d5c: $66
    ld h, a                                       ; $6d5d: $67
    adc b                                         ; $6d5e: $88
    adc c                                         ; $6d5f: $89
    cp h                                          ; $6d60: $bc
    db $dd                                        ; $6d61: $dd
    db $dd                                        ; $6d62: $dd
    call $dccd                                    ; $6d63: $cd $cd $dc
    jp z, Jump_017_6587                           ; $6d66: $ca $87 $65

    ld b, h                                       ; $6d69: $44
    ld b, e                                       ; $6d6a: $43
    inc [hl]                                      ; $6d6b: $34
    ld d, [hl]                                    ; $6d6c: $56
    adc b                                         ; $6d6d: $88
    add a                                         ; $6d6e: $87
    adc b                                         ; $6d6f: $88
    xor e                                         ; $6d70: $ab
    call z, $aabb                                 ; $6d71: $cc $bb $aa
    xor c                                         ; $6d74: $a9
    add a                                         ; $6d75: $87
    ld h, l                                       ; $6d76: $65
    ld b, h                                       ; $6d77: $44
    ld b, h                                       ; $6d78: $44
    ld b, h                                       ; $6d79: $44
    inc [hl]                                      ; $6d7a: $34
    ld b, l                                       ; $6d7b: $45
    ld h, [hl]                                    ; $6d7c: $66
    ld a, b                                       ; $6d7d: $78
    adc c                                         ; $6d7e: $89
    xor e                                         ; $6d7f: $ab
    cp h                                          ; $6d80: $bc
    call z, $aabb                                 ; $6d81: $cc $bb $aa
    xor d                                         ; $6d84: $aa
    sbc b                                         ; $6d85: $98
    adc b                                         ; $6d86: $88
    ld [hl], a                                    ; $6d87: $77
    ld [hl], a                                    ; $6d88: $77
    ld h, [hl]                                    ; $6d89: $66
    ld h, [hl]                                    ; $6d8a: $66
    ld [hl], a                                    ; $6d8b: $77
    ld [hl], a                                    ; $6d8c: $77
    adc b                                         ; $6d8d: $88
    adc b                                         ; $6d8e: $88
    adc b                                         ; $6d8f: $88
    adc b                                         ; $6d90: $88
    adc b                                         ; $6d91: $88
    add a                                         ; $6d92: $87
    ld [hl], a                                    ; $6d93: $77
    halt                                          ; $6d94: $76
    ld h, [hl]                                    ; $6d95: $66
    ld h, [hl]                                    ; $6d96: $66
    ld h, [hl]                                    ; $6d97: $66
    ld [hl], a                                    ; $6d98: $77
    ld [hl], a                                    ; $6d99: $77
    adc b                                         ; $6d9a: $88
    adc b                                         ; $6d9b: $88
    adc c                                         ; $6d9c: $89
    sbc c                                         ; $6d9d: $99
    sbc c                                         ; $6d9e: $99
    sbc b                                         ; $6d9f: $98
    adc b                                         ; $6da0: $88
    adc b                                         ; $6da1: $88
    adc b                                         ; $6da2: $88
    adc b                                         ; $6da3: $88
    adc b                                         ; $6da4: $88
    adc b                                         ; $6da5: $88
    adc b                                         ; $6da6: $88
    adc b                                         ; $6da7: $88
    adc b                                         ; $6da8: $88
    adc c                                         ; $6da9: $89
    sbc b                                         ; $6daa: $98
    adc b                                         ; $6dab: $88
    adc b                                         ; $6dac: $88
    adc b                                         ; $6dad: $88
    adc b                                         ; $6dae: $88
    ld [hl], a                                    ; $6daf: $77
    add a                                         ; $6db0: $87
    ld [hl], a                                    ; $6db1: $77
    ld a, b                                       ; $6db2: $78
    adc b                                         ; $6db3: $88
    adc b                                         ; $6db4: $88
    adc b                                         ; $6db5: $88
    sbc c                                         ; $6db6: $99
    sbc c                                         ; $6db7: $99
    sbc c                                         ; $6db8: $99
    sbc c                                         ; $6db9: $99
    sbc c                                         ; $6dba: $99
    adc b                                         ; $6dbb: $88
    add a                                         ; $6dbc: $87
    ld [hl], a                                    ; $6dbd: $77
    halt                                          ; $6dbe: $76
    ld h, [hl]                                    ; $6dbf: $66
    ld h, [hl]                                    ; $6dc0: $66
    ld h, [hl]                                    ; $6dc1: $66
    ld h, a                                       ; $6dc2: $67
    ld [hl], a                                    ; $6dc3: $77
    adc b                                         ; $6dc4: $88
    adc b                                         ; $6dc5: $88
    adc c                                         ; $6dc6: $89
    sbc c                                         ; $6dc7: $99
    xor d                                         ; $6dc8: $aa
    xor d                                         ; $6dc9: $aa
    xor e                                         ; $6dca: $ab
    cp e                                          ; $6dcb: $bb
    cp e                                          ; $6dcc: $bb
    cp d                                          ; $6dcd: $ba
    xor d                                         ; $6dce: $aa
    xor c                                         ; $6dcf: $a9
    xor c                                         ; $6dd0: $a9
    sbc b                                         ; $6dd1: $98
    add a                                         ; $6dd2: $87
    ld [hl], a                                    ; $6dd3: $77
    halt                                          ; $6dd4: $76
    ld h, [hl]                                    ; $6dd5: $66
    ld h, [hl]                                    ; $6dd6: $66
    ld h, [hl]                                    ; $6dd7: $66
    ld h, [hl]                                    ; $6dd8: $66
    ld h, [hl]                                    ; $6dd9: $66
    ld h, a                                       ; $6dda: $67
    ld [hl], a                                    ; $6ddb: $77
    adc b                                         ; $6ddc: $88
    sbc c                                         ; $6ddd: $99
    sbc d                                         ; $6dde: $9a
    xor d                                         ; $6ddf: $aa
    sbc c                                         ; $6de0: $99
    sbc c                                         ; $6de1: $99
    sbc c                                         ; $6de2: $99
    sbc c                                         ; $6de3: $99
    sbc c                                         ; $6de4: $99
    adc b                                         ; $6de5: $88
    add a                                         ; $6de6: $87
    ld [hl], a                                    ; $6de7: $77
    halt                                          ; $6de8: $76
    ld h, [hl]                                    ; $6de9: $66
    ld h, [hl]                                    ; $6dea: $66
    halt                                          ; $6deb: $76
    ld h, [hl]                                    ; $6dec: $66
    halt                                          ; $6ded: $76
    ld h, [hl]                                    ; $6dee: $66
    ld [hl], a                                    ; $6def: $77
    add a                                         ; $6df0: $87
    ld [hl], a                                    ; $6df1: $77
    ld [hl], a                                    ; $6df2: $77
    ld [hl], a                                    ; $6df3: $77
    ld h, [hl]                                    ; $6df4: $66
    ld h, a                                       ; $6df5: $67
    halt                                          ; $6df6: $76
    ld h, a                                       ; $6df7: $67
    adc c                                         ; $6df8: $89
    adc b                                         ; $6df9: $88
    adc b                                         ; $6dfa: $88
    ld [hl], a                                    ; $6dfb: $77
    adc c                                         ; $6dfc: $89
    add a                                         ; $6dfd: $87
    adc c                                         ; $6dfe: $89
    sbc d                                         ; $6dff: $9a
    xor e                                         ; $6e00: $ab
    cp d                                          ; $6e01: $ba
    call z, $ccdd                                 ; $6e02: $cc $dd $cc
    call $dcdd                                    ; $6e05: $cd $dd $dc
    res 7, e                                      ; $6e08: $cb $bb
    xor b                                         ; $6e0a: $a8
    add a                                         ; $6e0b: $87
    halt                                          ; $6e0c: $76
    ld d, l                                       ; $6e0d: $55
    ld b, h                                       ; $6e0e: $44
    ld b, h                                       ; $6e0f: $44
    ld b, h                                       ; $6e10: $44
    ld b, h                                       ; $6e11: $44
    ld d, l                                       ; $6e12: $55
    ld d, h                                       ; $6e13: $54
    ld b, h                                       ; $6e14: $44
    ld h, [hl]                                    ; $6e15: $66
    ld h, [hl]                                    ; $6e16: $66
    adc b                                         ; $6e17: $88
    ld h, [hl]                                    ; $6e18: $66
    sbc c                                         ; $6e19: $99
    halt                                          ; $6e1a: $76
    adc b                                         ; $6e1b: $88
    ld h, l                                       ; $6e1c: $65
    ld h, a                                       ; $6e1d: $67
    ld h, l                                       ; $6e1e: $65
    ld a, c                                       ; $6e1f: $79
    adc b                                         ; $6e20: $88
    sbc d                                         ; $6e21: $9a
    xor c                                         ; $6e22: $a9
    cp e                                          ; $6e23: $bb
    cp e                                          ; $6e24: $bb
    cp e                                          ; $6e25: $bb
    call z, $cdcb                                 ; $6e26: $cc $cb $cd
    res 7, h                                      ; $6e29: $cb $bc
    res 5, d                                      ; $6e2b: $cb $aa
    sbc b                                         ; $6e2d: $98
    add a                                         ; $6e2e: $87
    adc b                                         ; $6e2f: $88
    ld h, [hl]                                    ; $6e30: $66
    adc b                                         ; $6e31: $88
    ld [hl], l                                    ; $6e32: $75
    ld h, a                                       ; $6e33: $67
    ld d, h                                       ; $6e34: $54
    ld d, [hl]                                    ; $6e35: $56
    ld d, h                                       ; $6e36: $54
    ld b, l                                       ; $6e37: $45
    ld b, e                                       ; $6e38: $43
    inc [hl]                                      ; $6e39: $34
    ld b, h                                       ; $6e3a: $44
    ld b, [hl]                                    ; $6e3b: $46
    ld h, [hl]                                    ; $6e3c: $66
    ld d, [hl]                                    ; $6e3d: $56
    ld h, [hl]                                    ; $6e3e: $66
    ld h, [hl]                                    ; $6e3f: $66
    add a                                         ; $6e40: $87
    ld [hl], a                                    ; $6e41: $77
    adc c                                         ; $6e42: $89
    sbc c                                         ; $6e43: $99
    xor d                                         ; $6e44: $aa
    cp d                                          ; $6e45: $ba
    cp e                                          ; $6e46: $bb
    call z, $ccbb                                 ; $6e47: $cc $bb $cc
    cp e                                          ; $6e4a: $bb
    cp e                                          ; $6e4b: $bb
    cp e                                          ; $6e4c: $bb
    cp h                                          ; $6e4d: $bc
    cp d                                          ; $6e4e: $ba
    xor d                                         ; $6e4f: $aa
    xor b                                         ; $6e50: $a8
    adc b                                         ; $6e51: $88
    add a                                         ; $6e52: $87
    ld h, a                                       ; $6e53: $67
    ld h, l                                       ; $6e54: $65
    ld d, l                                       ; $6e55: $55
    ld d, l                                       ; $6e56: $55
    ld b, l                                       ; $6e57: $45
    ld d, l                                       ; $6e58: $55
    ld b, h                                       ; $6e59: $44
    ld d, l                                       ; $6e5a: $55
    ld b, h                                       ; $6e5b: $44
    ld d, l                                       ; $6e5c: $55
    ld d, [hl]                                    ; $6e5d: $56
    ld h, [hl]                                    ; $6e5e: $66
    ld [hl], a                                    ; $6e5f: $77
    adc b                                         ; $6e60: $88
    adc b                                         ; $6e61: $88
    adc c                                         ; $6e62: $89
    xor d                                         ; $6e63: $aa
    xor d                                         ; $6e64: $aa
    cp e                                          ; $6e65: $bb
    cp e                                          ; $6e66: $bb
    call z, $cccc                                 ; $6e67: $cc $cc $cc
    call z, $bbcc                                 ; $6e6a: $cc $cc $bb
    xor d                                         ; $6e6d: $aa
    xor d                                         ; $6e6e: $aa
    sbc c                                         ; $6e6f: $99
    sbc b                                         ; $6e70: $98
    add a                                         ; $6e71: $87
    ld [hl], a                                    ; $6e72: $77
    ld h, [hl]                                    ; $6e73: $66
    ld d, l                                       ; $6e74: $55
    ld d, h                                       ; $6e75: $54
    ld b, h                                       ; $6e76: $44
    ld b, e                                       ; $6e77: $43
    inc sp                                        ; $6e78: $33
    ld b, e                                       ; $6e79: $43
    inc [hl]                                      ; $6e7a: $34
    ld b, h                                       ; $6e7b: $44
    ld b, l                                       ; $6e7c: $45
    ld h, [hl]                                    ; $6e7d: $66
    ld h, a                                       ; $6e7e: $67
    adc b                                         ; $6e7f: $88
    adc c                                         ; $6e80: $89
    sbc d                                         ; $6e81: $9a
    xor e                                         ; $6e82: $ab
    cp h                                          ; $6e83: $bc
    call z, $dccd                                 ; $6e84: $cc $cd $dc
    call $ccdc                                    ; $6e87: $cd $dc $cc
    res 7, e                                      ; $6e8a: $cb $bb
    xor d                                         ; $6e8c: $aa
    sbc b                                         ; $6e8d: $98
    adc b                                         ; $6e8e: $88
    halt                                          ; $6e8f: $76
    ld h, l                                       ; $6e90: $65
    ld d, h                                       ; $6e91: $54
    ld b, h                                       ; $6e92: $44
    inc sp                                        ; $6e93: $33
    inc sp                                        ; $6e94: $33
    ld [hl-], a                                   ; $6e95: $32
    inc sp                                        ; $6e96: $33
    inc sp                                        ; $6e97: $33
    ld b, h                                       ; $6e98: $44
    ld h, [hl]                                    ; $6e99: $66
    ld h, a                                       ; $6e9a: $67
    ld [hl], a                                    ; $6e9b: $77
    sbc c                                         ; $6e9c: $99
    cp e                                          ; $6e9d: $bb
    xor e                                         ; $6e9e: $ab
    call z, $deee                                 ; $6e9f: $cc $ee $de
    db $dd                                        ; $6ea2: $dd
    xor $ee                                       ; $6ea3: $ee $ee
    db $dd                                        ; $6ea5: $dd
    res 7, d                                      ; $6ea6: $cb $ba
    sbc c                                         ; $6ea8: $99
    add a                                         ; $6ea9: $87
    halt                                          ; $6eaa: $76
    ld d, h                                       ; $6eab: $54
    inc sp                                        ; $6eac: $33
    ld [hl-], a                                   ; $6ead: $32
    ld hl, $0111                                  ; $6eae: $21 $11 $01
    ld hl, $3422                                  ; $6eb1: $21 $22 $34
    ld b, l                                       ; $6eb4: $45
    ld [hl], a                                    ; $6eb5: $77
    adc c                                         ; $6eb6: $89
    xor e                                         ; $6eb7: $ab
    cp h                                          ; $6eb8: $bc
    db $dd                                        ; $6eb9: $dd
    rst $28                                       ; $6eba: $ef
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    cp $dd                                        ; $6ebe: $fe $dd
    res 7, d                                      ; $6ec0: $cb $ba
    sbc b                                         ; $6ec2: $98
    ld h, [hl]                                    ; $6ec3: $66
    ld d, h                                       ; $6ec4: $54
    ld [hl-], a                                   ; $6ec5: $32
    ld hl, $0000                                  ; $6ec6: $21 $00 $00
    nop                                           ; $6ec9: $00
    ld bc, $3412                                  ; $6eca: $01 $12 $34
    ld d, [hl]                                    ; $6ecd: $56
    ld a, b                                       ; $6ece: $78
    sbc d                                         ; $6ecf: $9a
    cp e                                          ; $6ed0: $bb
    call $ffee                                    ; $6ed1: $cd $ee $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    cp $ed                                        ; $6ed6: $fe $ed
    res 5, c                                      ; $6ed8: $cb $a9
    add a                                         ; $6eda: $87
    ld h, l                                       ; $6edb: $65
    ld b, e                                       ; $6edc: $43
    ld hl, $0010                                  ; $6edd: $21 $10 $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    ld [de], a                                    ; $6ee2: $12
    inc [hl]                                      ; $6ee3: $34
    ld d, [hl]                                    ; $6ee4: $56
    ld a, b                                       ; $6ee5: $78
    xor e                                         ; $6ee6: $ab
    cp h                                          ; $6ee7: $bc
    sbc $ff                                       ; $6ee8: $de $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    cp $ed                                        ; $6eec: $fe $ed
    res 3, b                                      ; $6eee: $cb $98
    add [hl]                                      ; $6ef0: $86
    ld d, h                                       ; $6ef1: $54
    ld [hl-], a                                   ; $6ef2: $32
    ld de, $0000                                  ; $6ef3: $11 $00 $00
    db $10                                        ; $6ef6: $10
    ld [de], a                                    ; $6ef7: $12
    inc [hl]                                      ; $6ef8: $34
    ld d, a                                       ; $6ef9: $57
    ld a, c                                       ; $6efa: $79
    xor e                                         ; $6efb: $ab
    call $ffef                                    ; $6efc: $cd $ef $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    db $ed                                        ; $6f01: $ed
    res 3, b                                      ; $6f02: $cb $98
    halt                                          ; $6f04: $76
    ld d, h                                       ; $6f05: $54
    ld [hl-], a                                   ; $6f06: $32
    stop                                          ; $6f07: $10 $00
    nop                                           ; $6f09: $00
    ld bc, $4623                                  ; $6f0a: $01 $23 $46
    ld a, b                                       ; $6f0d: $78
    xor e                                         ; $6f0e: $ab
    call $ffef                                    ; $6f0f: $cd $ef $ff
    rst $38                                       ; $6f12: $ff
    cp $dc                                        ; $6f13: $fe $dc
    cp d                                          ; $6f15: $ba
    add a                                         ; $6f16: $87
    ld h, h                                       ; $6f17: $64
    ld [hl-], a                                   ; $6f18: $32
    stop                                          ; $6f19: $10 $00
    nop                                           ; $6f1b: $00
    ld bc, $5624                                  ; $6f1c: $01 $24 $56
    adc c                                         ; $6f1f: $89
    xor h                                         ; $6f20: $ac
    sbc $ff                                       ; $6f21: $de $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    db $ec                                        ; $6f25: $ec
    cp d                                          ; $6f26: $ba
    add a                                         ; $6f27: $87
    ld d, h                                       ; $6f28: $54
    ld [hl-], a                                   ; $6f29: $32
    stop                                          ; $6f2a: $10 $00
    ld bc, $4623                                  ; $6f2c: $01 $23 $46
    ld a, b                                       ; $6f2f: $78
    xor e                                         ; $6f30: $ab
    sbc $ef                                       ; $6f31: $de $ef
    rst $38                                       ; $6f33: $ff
    cp $db                                        ; $6f34: $fe $db
    xor c                                         ; $6f36: $a9
    halt                                          ; $6f37: $76
    ld b, e                                       ; $6f38: $43
    ld hl, $0100                                  ; $6f39: $21 $00 $01
    inc hl                                        ; $6f3c: $23
    ld b, l                                       ; $6f3d: $45
    ld a, b                                       ; $6f3e: $78
    xor e                                         ; $6f3f: $ab
    sbc $ff                                       ; $6f40: $de $ff
    rst $38                                       ; $6f42: $ff
    db $ed                                        ; $6f43: $ed
    cp d                                          ; $6f44: $ba
    sub a                                         ; $6f45: $97
    ld d, h                                       ; $6f46: $54
    ld hl, $0110                                  ; $6f47: $21 $10 $01
    inc hl                                        ; $6f4a: $23
    ld b, [hl]                                    ; $6f4b: $46
    ld a, c                                       ; $6f4c: $79
    cp h                                          ; $6f4d: $bc
    sbc $ff                                       ; $6f4e: $de $ff
    xor $dc                                       ; $6f50: $ee $dc
    xor b                                         ; $6f52: $a8
    ld [hl], l                                    ; $6f53: $75
    ld [hl-], a                                   ; $6f54: $32
    db $10                                        ; $6f55: $10
    ld bc, $4512                                  ; $6f56: $01 $12 $45
    ld a, c                                       ; $6f59: $79
    cp h                                          ; $6f5a: $bc
    sbc $ff                                       ; $6f5b: $de $ff
    db $ed                                        ; $6f5d: $ed
    res 2, a                                      ; $6f5e: $cb $97
    ld d, e                                       ; $6f60: $53
    ld hl, $1200                                  ; $6f61: $21 $00 $12
    inc [hl]                                      ; $6f64: $34
    ld l, b                                       ; $6f65: $68
    xor h                                         ; $6f66: $ac
    sbc $ff                                       ; $6f67: $de $ff
    db $ed                                        ; $6f69: $ed
    jp z, Jump_017_4386                           ; $6f6a: $ca $86 $43

    stop                                          ; $6f6d: $10 $00
    inc de                                        ; $6f6f: $13
    ld b, [hl]                                    ; $6f70: $46
    adc d                                         ; $6f71: $8a
    adc $ff                                       ; $6f72: $ce $ff
    xor $ca                                       ; $6f74: $ee $ca
    add [hl]                                      ; $6f76: $86
    ld b, d                                       ; $6f77: $42
    ld de, $2401                                  ; $6f78: $11 $01 $24
    ld l, b                                       ; $6f7b: $68
    xor h                                         ; $6f7c: $ac
    rst $28                                       ; $6f7d: $ef
    rst $38                                       ; $6f7e: $ff
    db $ec                                        ; $6f7f: $ec
    xor b                                         ; $6f80: $a8
    ld h, e                                       ; $6f81: $63
    ld hl, $1300                                  ; $6f82: $21 $00 $13
    ld d, a                                       ; $6f85: $57
    xor h                                         ; $6f86: $ac
    rst $28                                       ; $6f87: $ef
    rst $38                                       ; $6f88: $ff
    db $ec                                        ; $6f89: $ec
    and a                                         ; $6f8a: $a7
    ld d, e                                       ; $6f8b: $53
    db $10                                        ; $6f8c: $10
    ld bc, $6924                                  ; $6f8d: $01 $24 $69
    call $feff                                    ; $6f90: $cd $ff $fe
    ret                                           ; $6f93: $c9


    ld h, h                                       ; $6f94: $64
    jr nz, jr_017_6f97                            ; $6f95: $20 $00

jr_017_6f97:
    inc d                                         ; $6f97: $14
    ld l, c                                       ; $6f98: $69
    cp l                                          ; $6f99: $bd
    rst $38                                       ; $6f9a: $ff
    db $fd                                        ; $6f9b: $fd
    cp b                                          ; $6f9c: $b8
    ld d, e                                       ; $6f9d: $53
    db $10                                        ; $6f9e: $10
    ld bc, $9c36                                  ; $6f9f: $01 $36 $9c
    rst $28                                       ; $6fa2: $ef
    cp $ca                                        ; $6fa3: $fe $ca
    ld [hl], h                                    ; $6fa5: $74
    jr nz, jr_017_6fa8                            ; $6fa6: $20 $00

jr_017_6fa8:
    dec h                                         ; $6fa8: $25
    adc e                                         ; $6fa9: $8b
    rst $18                                       ; $6faa: $df
    rst $38                                       ; $6fab: $ff
    jp z, Jump_000_1063                           ; $6fac: $ca $63 $10

    ld bc, $ad47                                  ; $6faf: $01 $47 $ad
    rst $38                                       ; $6fb2: $ff
    db $fc                                        ; $6fb3: $fc
    sub [hl]                                      ; $6fb4: $96
    ld sp, $2500                                  ; $6fb5: $31 $00 $25
    sbc h                                         ; $6fb8: $9c
    rst $28                                       ; $6fb9: $ef
    db $fd                                        ; $6fba: $fd
    and [hl]                                      ; $6fbb: $a6
    ld sp, $3601                                  ; $6fbc: $31 $01 $36
    sbc h                                         ; $6fbf: $9c
    rst $28                                       ; $6fc0: $ef
    db $ec                                        ; $6fc1: $ec
    add l                                         ; $6fc2: $85
    jr nz, jr_017_6fc7                            ; $6fc3: $20 $02

    ld e, b                                       ; $6fc5: $58
    cp [hl]                                       ; $6fc6: $be

jr_017_6fc7:
    cp $c9                                        ; $6fc7: $fe $c9
    ld d, e                                       ; $6fc9: $53
    ld de, $8c25                                  ; $6fca: $11 $25 $8c
    rst $28                                       ; $6fcd: $ef
    db $eb                                        ; $6fce: $eb
    add h                                         ; $6fcf: $84
    jr nz, jr_017_6fe5                            ; $6fd0: $20 $13

    ld l, c                                       ; $6fd2: $69
    adc $fd                                       ; $6fd3: $ce $fd
    and a                                         ; $6fd5: $a7
    ld b, c                                       ; $6fd6: $41
    ld [de], a                                    ; $6fd7: $12
    ld b, a                                       ; $6fd8: $47
    cp l                                          ; $6fd9: $bd
    db $ed                                        ; $6fda: $ed
    cp b                                          ; $6fdb: $b8
    ld d, e                                       ; $6fdc: $53
    ld [hl+], a                                   ; $6fdd: $22
    ld b, a                                       ; $6fde: $47
    xor h                                         ; $6fdf: $ac
    call c, Call_017_53b8                         ; $6fe0: $dc $b8 $53
    inc hl                                        ; $6fe3: $23
    ld d, a                                       ; $6fe4: $57

jr_017_6fe5:
    xor h                                         ; $6fe5: $ac
    call c, Call_017_53a7                         ; $6fe6: $dc $a7 $53
    inc [hl]                                      ; $6fe9: $34
    ld l, c                                       ; $6fea: $69
    cp h                                          ; $6feb: $bc
    cp d                                          ; $6fec: $ba
    add [hl]                                      ; $6fed: $86
    ld b, h                                       ; $6fee: $44
    ld b, [hl]                                    ; $6fef: $46
    adc d                                         ; $6ff0: $8a
    cp e                                          ; $6ff1: $bb
    xor b                                         ; $6ff2: $a8
    ld h, l                                       ; $6ff3: $65
    ld d, l                                       ; $6ff4: $55
    ld a, c                                       ; $6ff5: $79
    xor d                                         ; $6ff6: $aa
    xor c                                         ; $6ff7: $a9
    ld [hl], l                                    ; $6ff8: $75
    ld b, l                                       ; $6ff9: $45
    ld l, b                                       ; $6ffa: $68
    xor h                                         ; $6ffb: $ac
    res 0, l                                      ; $6ffc: $cb $85
    inc sp                                        ; $6ffe: $33
    dec [hl]                                      ; $6fff: $35
    adc e                                         ; $7000: $8b
    call z, Call_017_54b8                         ; $7001: $cc $b8 $54
    inc [hl]                                      ; $7004: $34
    ld a, c                                       ; $7005: $79
    cp h                                          ; $7006: $bc
    cp c                                          ; $7007: $b9
    ld h, h                                       ; $7008: $64
    inc sp                                        ; $7009: $33
    ld l, c                                       ; $700a: $69
    cp l                                          ; $700b: $bd
    call c, Call_000_3296                         ; $700c: $dc $96 $32
    dec [hl]                                      ; $700f: $35
    adc d                                         ; $7010: $8a
    cp e                                          ; $7011: $bb
    sub a                                         ; $7012: $97
    ld h, l                                       ; $7013: $65
    ld d, a                                       ; $7014: $57
    sbc d                                         ; $7015: $9a
    cp e                                          ; $7016: $bb
    sub a                                         ; $7017: $97
    ld h, l                                       ; $7018: $65
    ld d, [hl]                                    ; $7019: $56
    ld a, b                                       ; $701a: $78
    adc b                                         ; $701b: $88
    add a                                         ; $701c: $87
    adc b                                         ; $701d: $88
    sbc d                                         ; $701e: $9a
    xor d                                         ; $701f: $aa
    add a                                         ; $7020: $87
    ld d, l                                       ; $7021: $55
    ld d, a                                       ; $7022: $57
    adc d                                         ; $7023: $8a
    xor d                                         ; $7024: $aa
    sbc b                                         ; $7025: $98
    ld h, h                                       ; $7026: $64
    ld b, l                                       ; $7027: $45
    ld a, c                                       ; $7028: $79
    xor e                                         ; $7029: $ab
    cp d                                          ; $702a: $ba
    sbc b                                         ; $702b: $98
    halt                                          ; $702c: $76
    ld h, [hl]                                    ; $702d: $66
    ld d, l                                       ; $702e: $55
    ld d, l                                       ; $702f: $55
    adc b                                         ; $7030: $88
    cp h                                          ; $7031: $bc
    res 5, b                                      ; $7032: $cb $a8
    ld h, l                                       ; $7034: $65
    ld d, l                                       ; $7035: $55
    ld h, a                                       ; $7036: $67
    ld a, b                                       ; $7037: $78
    adc c                                         ; $7038: $89
    sbc b                                         ; $7039: $98
    adc b                                         ; $703a: $88
    adc c                                         ; $703b: $89
    sub [hl]                                      ; $703c: $96
    ld [hl+], a                                   ; $703d: $22
    ld a, l                                       ; $703e: $7d
    ld [$8987], a                                 ; $703f: $ea $87 $89
    ld h, h                                       ; $7042: $64
    ld e, b                                       ; $7043: $58
    cp d                                          ; $7044: $ba
    add [hl]                                      ; $7045: $86
    ld l, b                                       ; $7046: $68
    xor b                                         ; $7047: $a8
    ld h, l                                       ; $7048: $65
    ld l, b                                       ; $7049: $68
    add a                                         ; $704a: $87
    adc d                                         ; $704b: $8a
    call z, $5696                                 ; $704c: $cc $96 $56
    ld a, b                                       ; $704f: $78
    add [hl]                                      ; $7050: $86
    ld l, b                                       ; $7051: $68
    xor d                                         ; $7052: $aa
    add a                                         ; $7053: $87
    ld a, c                                       ; $7054: $79
    sbc b                                         ; $7055: $98
    ld h, l                                       ; $7056: $65
    ld l, b                                       ; $7057: $68
    sbc c                                         ; $7058: $99
    add a                                         ; $7059: $87
    ld [hl], a                                    ; $705a: $77
    ld [hl], a                                    ; $705b: $77
    ld a, b                                       ; $705c: $78
    sbc d                                         ; $705d: $9a
    sub a                                         ; $705e: $97
    ld [hl], a                                    ; $705f: $77
    sbc d                                         ; $7060: $9a
    xor b                                         ; $7061: $a8
    ld h, l                                       ; $7062: $65
    ld a, c                                       ; $7063: $79
    sbc b                                         ; $7064: $98
    halt                                          ; $7065: $76
    ld h, a                                       ; $7066: $67
    adc b                                         ; $7067: $88
    ld [hl], a                                    ; $7068: $77
    ld a, b                                       ; $7069: $78
    adc b                                         ; $706a: $88
    sbc d                                         ; $706b: $9a
    xor d                                         ; $706c: $aa
    sbc b                                         ; $706d: $98
    ld h, [hl]                                    ; $706e: $66
    adc b                                         ; $706f: $88
    ld h, l                                       ; $7070: $65
    ld h, [hl]                                    ; $7071: $66
    ld a, c                                       ; $7072: $79
    xor c                                         ; $7073: $a9
    ld [hl], a                                    ; $7074: $77
    adc c                                         ; $7075: $89
    adc b                                         ; $7076: $88
    ld [hl], a                                    ; $7077: $77
    ld a, c                                       ; $7078: $79
    sbc b                                         ; $7079: $98
    ld [hl], a                                    ; $707a: $77
    adc b                                         ; $707b: $88
    adc b                                         ; $707c: $88
    adc b                                         ; $707d: $88
    adc b                                         ; $707e: $88
    add [hl]                                      ; $707f: $86
    ld d, [hl]                                    ; $7080: $56
    ld a, b                                       ; $7081: $78
    sbc c                                         ; $7082: $99
    sbc b                                         ; $7083: $98
    adc c                                         ; $7084: $89
    add a                                         ; $7085: $87
    ld h, [hl]                                    ; $7086: $66
    ld a, b                                       ; $7087: $78
    sbc b                                         ; $7088: $98
    adc b                                         ; $7089: $88
    adc b                                         ; $708a: $88
    add a                                         ; $708b: $87
    ld h, a                                       ; $708c: $67
    adc b                                         ; $708d: $88
    sbc b                                         ; $708e: $98
    adc b                                         ; $708f: $88
    adc b                                         ; $7090: $88
    halt                                          ; $7091: $76
    ld h, a                                       ; $7092: $67
    ld a, b                                       ; $7093: $78
    adc b                                         ; $7094: $88
    adc b                                         ; $7095: $88
    adc b                                         ; $7096: $88
    add a                                         ; $7097: $87
    ld a, b                                       ; $7098: $78
    sbc b                                         ; $7099: $98
    ld [hl], a                                    ; $709a: $77
    ld a, b                                       ; $709b: $78
    adc b                                         ; $709c: $88
    ld [hl], a                                    ; $709d: $77
    ld [hl], a                                    ; $709e: $77
    adc b                                         ; $709f: $88
    adc b                                         ; $70a0: $88
    adc b                                         ; $70a1: $88
    adc b                                         ; $70a2: $88
    adc c                                         ; $70a3: $89
    sbc c                                         ; $70a4: $99
    add a                                         ; $70a5: $87
    ld a, b                                       ; $70a6: $78
    add a                                         ; $70a7: $87
    ld [hl], a                                    ; $70a8: $77
    ld a, b                                       ; $70a9: $78
    adc b                                         ; $70aa: $88
    adc b                                         ; $70ab: $88
    adc b                                         ; $70ac: $88
    adc b                                         ; $70ad: $88
    adc c                                         ; $70ae: $89
    sbc c                                         ; $70af: $99
    ld h, h                                       ; $70b0: $64
    ld e, c                                       ; $70b1: $59
    jp z, Jump_017_7b64                           ; $70b2: $ca $64 $7b

    jp c, Jump_017_6954                           ; $70b5: $da $54 $69

    sub a                                         ; $70b8: $97
    ld d, [hl]                                    ; $70b9: $56
    adc e                                         ; $70ba: $8b
    xor b                                         ; $70bb: $a8
    halt                                          ; $70bc: $76
    ld l, d                                       ; $70bd: $6a
    add sp, $15                                   ; $70be: $e8 $15
    call c, $ab44                                 ; $70c0: $dc $44 $ab
    ld h, l                                       ; $70c3: $65
    adc b                                         ; $70c4: $88
    ld h, [hl]                                    ; $70c5: $66
    cp e                                          ; $70c6: $bb
    ld h, h                                       ; $70c7: $64
    adc l                                         ; $70c8: $8d
    or l                                          ; $70c9: $b5
    ld c, b                                       ; $70ca: $48
    and a                                         ; $70cb: $a7
    ld b, [hl]                                    ; $70cc: $46
    xor d                                         ; $70cd: $aa
    adc b                                         ; $70ce: $88
    add a                                         ; $70cf: $87
    adc b                                         ; $70d0: $88
    xor b                                         ; $70d1: $a8
    ld b, l                                       ; $70d2: $45
    adc d                                         ; $70d3: $8a
    add l                                         ; $70d4: $85
    ld a, d                                       ; $70d5: $7a
    and a                                         ; $70d6: $a7
    ld a, c                                       ; $70d7: $79
    xor b                                         ; $70d8: $a8
    ld [hl], a                                    ; $70d9: $77
    adc b                                         ; $70da: $88
    ld a, b                                       ; $70db: $78
    sbc b                                         ; $70dc: $98
    ld h, [hl]                                    ; $70dd: $66
    xor e                                         ; $70de: $ab
    add l                                         ; $70df: $85
    ld l, c                                       ; $70e0: $69
    sub a                                         ; $70e1: $97
    ld a, b                                       ; $70e2: $78
    add a                                         ; $70e3: $87
    adc d                                         ; $70e4: $8a
    sub a                                         ; $70e5: $97
    ld a, b                                       ; $70e6: $78
    sub a                                         ; $70e7: $97
    ld h, a                                       ; $70e8: $67
    sbc b                                         ; $70e9: $98
    ld [hl], a                                    ; $70ea: $77
    adc b                                         ; $70eb: $88
    ld a, b                                       ; $70ec: $78
    xor b                                         ; $70ed: $a8
    ld d, l                                       ; $70ee: $55
    sbc e                                         ; $70ef: $9b
    sub a                                         ; $70f0: $97
    ld a, b                                       ; $70f1: $78
    adc b                                         ; $70f2: $88
    sbc b                                         ; $70f3: $98
    ld h, l                                       ; $70f4: $65
    ld l, b                                       ; $70f5: $68
    sbc b                                         ; $70f6: $98
    adc b                                         ; $70f7: $88
    sbc b                                         ; $70f8: $98
    adc b                                         ; $70f9: $88
    add [hl]                                      ; $70fa: $86
    ld a, b                                       ; $70fb: $78
    add [hl]                                      ; $70fc: $86
    ld a, b                                       ; $70fd: $78
    sbc c                                         ; $70fe: $99
    adc c                                         ; $70ff: $89
    add [hl]                                      ; $7100: $86
    ld l, b                                       ; $7101: $68
    sbc b                                         ; $7102: $98
    ld h, a                                       ; $7103: $67
    adc b                                         ; $7104: $88
    adc c                                         ; $7105: $89
    add a                                         ; $7106: $87
    ld a, b                                       ; $7107: $78
    adc b                                         ; $7108: $88
    ld [hl], a                                    ; $7109: $77
    adc b                                         ; $710a: $88
    adc b                                         ; $710b: $88
    ld [hl], a                                    ; $710c: $77
    ld a, b                                       ; $710d: $78
    sbc b                                         ; $710e: $98
    ld [hl], a                                    ; $710f: $77
    adc b                                         ; $7110: $88
    sbc c                                         ; $7111: $99
    add a                                         ; $7112: $87
    ld [hl], a                                    ; $7113: $77
    adc b                                         ; $7114: $88
    adc b                                         ; $7115: $88
    ld [hl], a                                    ; $7116: $77
    adc b                                         ; $7117: $88
    sbc b                                         ; $7118: $98
    adc b                                         ; $7119: $88
    ld [hl], a                                    ; $711a: $77
    sbc b                                         ; $711b: $98
    ld [hl], a                                    ; $711c: $77
    sbc c                                         ; $711d: $99
    add a                                         ; $711e: $87
    ld [hl], a                                    ; $711f: $77
    adc b                                         ; $7120: $88
    ld a, b                                       ; $7121: $78
    adc b                                         ; $7122: $88
    adc b                                         ; $7123: $88
    adc c                                         ; $7124: $89
    add a                                         ; $7125: $87
    ld [hl], a                                    ; $7126: $77
    adc b                                         ; $7127: $88
    add a                                         ; $7128: $87
    ld a, b                                       ; $7129: $78
    adc b                                         ; $712a: $88
    adc b                                         ; $712b: $88
    add a                                         ; $712c: $87
    ld [hl], a                                    ; $712d: $77
    ld a, b                                       ; $712e: $78
    sbc c                                         ; $712f: $99
    sub a                                         ; $7130: $97
    ld h, l                                       ; $7131: $65
    ld a, d                                       ; $7132: $7a
    cp b                                          ; $7133: $b8
    ld h, [hl]                                    ; $7134: $66
    ld a, b                                       ; $7135: $78
    adc c                                         ; $7136: $89
    xor c                                         ; $7137: $a9
    ld h, h                                       ; $7138: $64
    add hl, sp                                    ; $7139: $39
    ret                                           ; $713a: $c9


    sbc b                                         ; $713b: $98
    ld d, [hl]                                    ; $713c: $56
    sbc b                                         ; $713d: $98
    ld a, c                                       ; $713e: $79
    sbc b                                         ; $713f: $98
    xor c                                         ; $7140: $a9
    ld d, l                                       ; $7141: $55
    ld l, b                                       ; $7142: $68
    cp e                                          ; $7143: $bb
    sub a                                         ; $7144: $97
    ld d, h                                       ; $7145: $54
    ld e, b                                       ; $7146: $58
    cp h                                          ; $7147: $bc
    and [hl]                                      ; $7148: $a6
    ld b, l                                       ; $7149: $45
    ld l, c                                       ; $714a: $69
    cp e                                          ; $714b: $bb
    sub a                                         ; $714c: $97
    ld h, [hl]                                    ; $714d: $66
    ld a, b                                       ; $714e: $78
    sbc c                                         ; $714f: $99
    adc c                                         ; $7150: $89
    cp c                                          ; $7151: $b9
    jr nz, jr_017_71bf                            ; $7152: $20 $6b

    res 4, [hl]                                   ; $7154: $cb $a6
    ld b, l                                       ; $7156: $45
    ld h, [hl]                                    ; $7157: $66
    sbc h                                         ; $7158: $9c
    and a                                         ; $7159: $a7
    ld h, [hl]                                    ; $715a: $66
    ld a, b                                       ; $715b: $78
    sbc b                                         ; $715c: $98
    ld a, b                                       ; $715d: $78
    sbc c                                         ; $715e: $99
    add a                                         ; $715f: $87
    add [hl]                                      ; $7160: $86
    ld l, b                                       ; $7161: $68
    sbc c                                         ; $7162: $99
    sbc b                                         ; $7163: $98
    halt                                          ; $7164: $76
    ld h, [hl]                                    ; $7165: $66
    ld a, c                                       ; $7166: $79
    sbc d                                         ; $7167: $9a
    sub a                                         ; $7168: $97
    ld h, [hl]                                    ; $7169: $66
    ld a, b                                       ; $716a: $78
    sbc d                                         ; $716b: $9a
    sbc b                                         ; $716c: $98
    halt                                          ; $716d: $76
    ld [hl], a                                    ; $716e: $77
    adc b                                         ; $716f: $88
    sbc b                                         ; $7170: $98
    adc b                                         ; $7171: $88
    add a                                         ; $7172: $87
    ld a, b                                       ; $7173: $78
    adc b                                         ; $7174: $88
    adc b                                         ; $7175: $88
    ld a, b                                       ; $7176: $78
    sbc c                                         ; $7177: $99
    adc b                                         ; $7178: $88
    adc c                                         ; $7179: $89
    add [hl]                                      ; $717a: $86
    ld d, h                                       ; $717b: $54
    ld l, b                                       ; $717c: $68
    sbc d                                         ; $717d: $9a
    xor d                                         ; $717e: $aa
    xor c                                         ; $717f: $a9
    add [hl]                                      ; $7180: $86
    ld h, l                                       ; $7181: $65
    ld d, [hl]                                    ; $7182: $56
    adc c                                         ; $7183: $89
    xor d                                         ; $7184: $aa
    xor c                                         ; $7185: $a9
    add a                                         ; $7186: $87
    ld d, l                                       ; $7187: $55
    ld d, a                                       ; $7188: $57
    adc c                                         ; $7189: $89
    xor d                                         ; $718a: $aa
    xor d                                         ; $718b: $aa
    add [hl]                                      ; $718c: $86
    ld d, a                                       ; $718d: $57
    adc b                                         ; $718e: $88
    ld a, b                                       ; $718f: $78
    sbc d                                         ; $7190: $9a
    sub a                                         ; $7191: $97
    halt                                          ; $7192: $76
    ld a, b                                       ; $7193: $78
    add a                                         ; $7194: $87
    ld a, b                                       ; $7195: $78
    sbc c                                         ; $7196: $99
    sbc b                                         ; $7197: $98
    adc b                                         ; $7198: $88
    ld [hl], a                                    ; $7199: $77
    ld [hl], a                                    ; $719a: $77
    ld a, b                                       ; $719b: $78
    adc b                                         ; $719c: $88
    sbc b                                         ; $719d: $98
    add a                                         ; $719e: $87
    ld [hl], a                                    ; $719f: $77
    adc b                                         ; $71a0: $88
    adc b                                         ; $71a1: $88
    adc b                                         ; $71a2: $88
    adc b                                         ; $71a3: $88
    ld [hl], a                                    ; $71a4: $77
    ld [hl], a                                    ; $71a5: $77
    adc b                                         ; $71a6: $88
    adc b                                         ; $71a7: $88
    adc b                                         ; $71a8: $88
    adc b                                         ; $71a9: $88
    ld [hl], a                                    ; $71aa: $77
    ld a, b                                       ; $71ab: $78
    adc b                                         ; $71ac: $88
    adc b                                         ; $71ad: $88
    adc b                                         ; $71ae: $88
    adc b                                         ; $71af: $88
    add a                                         ; $71b0: $87
    ld a, b                                       ; $71b1: $78
    adc b                                         ; $71b2: $88
    adc b                                         ; $71b3: $88
    adc b                                         ; $71b4: $88
    ld a, b                                       ; $71b5: $78
    add a                                         ; $71b6: $87
    ld [hl], a                                    ; $71b7: $77
    ld a, b                                       ; $71b8: $78
    adc c                                         ; $71b9: $89
    adc b                                         ; $71ba: $88
    adc b                                         ; $71bb: $88
    ld a, b                                       ; $71bc: $78
    ld a, b                                       ; $71bd: $78
    adc b                                         ; $71be: $88

jr_017_71bf:
    adc b                                         ; $71bf: $88
    add a                                         ; $71c0: $87
    ld [hl], a                                    ; $71c1: $77
    adc b                                         ; $71c2: $88
    adc b                                         ; $71c3: $88
    adc b                                         ; $71c4: $88
    add a                                         ; $71c5: $87
    ld l, b                                       ; $71c6: $68
    xor c                                         ; $71c7: $a9
    and h                                         ; $71c8: $a4
    sub h                                         ; $71c9: $94
    and [hl]                                      ; $71ca: $a6
    adc b                                         ; $71cb: $88
    adc e                                         ; $71cc: $8b
    adc c                                         ; $71cd: $89
    ld h, a                                       ; $71ce: $67
    ld h, a                                       ; $71cf: $67
    adc b                                         ; $71d0: $88
    add a                                         ; $71d1: $87
    xor c                                         ; $71d2: $a9
    adc b                                         ; $71d3: $88
    ld [hl], a                                    ; $71d4: $77
    ld a, b                                       ; $71d5: $78
    adc b                                         ; $71d6: $88
    ld a, e                                       ; $71d7: $7b
    ld c, c                                       ; $71d8: $49
    add [hl]                                      ; $71d9: $86
    halt                                          ; $71da: $76
    adc b                                         ; $71db: $88
    sub a                                         ; $71dc: $97
    ld a, b                                       ; $71dd: $78
    sbc b                                         ; $71de: $98
    halt                                          ; $71df: $76
    adc b                                         ; $71e0: $88
    adc b                                         ; $71e1: $88
    adc b                                         ; $71e2: $88
    adc b                                         ; $71e3: $88
    add a                                         ; $71e4: $87
    ld h, a                                       ; $71e5: $67
    adc c                                         ; $71e6: $89
    adc b                                         ; $71e7: $88
    adc b                                         ; $71e8: $88
    adc b                                         ; $71e9: $88
    halt                                          ; $71ea: $76
    ld a, b                                       ; $71eb: $78
    sbc c                                         ; $71ec: $99
    add a                                         ; $71ed: $87
    ld a, b                                       ; $71ee: $78
    add a                                         ; $71ef: $87
    add a                                         ; $71f0: $87
    ld a, c                                       ; $71f1: $79
    sbc c                                         ; $71f2: $99
    ld [hl], a                                    ; $71f3: $77
    ld a, b                                       ; $71f4: $78
    add a                                         ; $71f5: $87
    ld [hl], a                                    ; $71f6: $77
    adc b                                         ; $71f7: $88
    adc b                                         ; $71f8: $88
    ld [hl], a                                    ; $71f9: $77
    ld a, b                                       ; $71fa: $78
    ld [hl], a                                    ; $71fb: $77
    adc b                                         ; $71fc: $88
    adc b                                         ; $71fd: $88
    adc b                                         ; $71fe: $88
    adc b                                         ; $71ff: $88
    add a                                         ; $7200: $87
    ld a, b                                       ; $7201: $78
    adc b                                         ; $7202: $88
    add a                                         ; $7203: $87
    adc b                                         ; $7204: $88
    add a                                         ; $7205: $87
    ld [hl], a                                    ; $7206: $77
    adc c                                         ; $7207: $89
    adc b                                         ; $7208: $88
    ld [hl], a                                    ; $7209: $77
    adc b                                         ; $720a: $88
    add a                                         ; $720b: $87
    ld [hl], a                                    ; $720c: $77
    adc b                                         ; $720d: $88
    adc b                                         ; $720e: $88
    ld [hl], a                                    ; $720f: $77
    adc b                                         ; $7210: $88
    adc b                                         ; $7211: $88
    adc b                                         ; $7212: $88
    adc b                                         ; $7213: $88
    ld [hl], a                                    ; $7214: $77
    ld a, b                                       ; $7215: $78
    adc b                                         ; $7216: $88
    adc b                                         ; $7217: $88
    add a                                         ; $7218: $87
    adc b                                         ; $7219: $88
    adc b                                         ; $721a: $88
    add a                                         ; $721b: $87
    ld [hl], a                                    ; $721c: $77
    adc b                                         ; $721d: $88
    adc b                                         ; $721e: $88
    adc b                                         ; $721f: $88
    add a                                         ; $7220: $87
    ld a, b                                       ; $7221: $78
    adc b                                         ; $7222: $88
    ld [hl], a                                    ; $7223: $77
    adc b                                         ; $7224: $88
    adc b                                         ; $7225: $88
    sub a                                         ; $7226: $97
    ld h, a                                       ; $7227: $67
    adc b                                         ; $7228: $88
    ld a, b                                       ; $7229: $78
    sbc b                                         ; $722a: $98
    ld [hl], a                                    ; $722b: $77
    ld a, b                                       ; $722c: $78
    adc b                                         ; $722d: $88
    adc b                                         ; $722e: $88
    adc b                                         ; $722f: $88
    add a                                         ; $7230: $87
    ld a, b                                       ; $7231: $78
    adc b                                         ; $7232: $88
    ld [hl], a                                    ; $7233: $77
    adc c                                         ; $7234: $89
    sub a                                         ; $7235: $97
    ld h, [hl]                                    ; $7236: $66
    adc c                                         ; $7237: $89
    add a                                         ; $7238: $87
    ld [hl], a                                    ; $7239: $77
    adc b                                         ; $723a: $88
    ld [hl], a                                    ; $723b: $77
    adc b                                         ; $723c: $88
    sbc b                                         ; $723d: $98
    ld [hl], a                                    ; $723e: $77
    adc c                                         ; $723f: $89
    add a                                         ; $7240: $87
    ld a, b                                       ; $7241: $78
    add a                                         ; $7242: $87
    ld [hl], a                                    ; $7243: $77
    adc c                                         ; $7244: $89
    add e                                         ; $7245: $83
    ret                                           ; $7246: $c9


    sub a                                         ; $7247: $97
    ld h, a                                       ; $7248: $67
    adc b                                         ; $7249: $88
    adc c                                         ; $724a: $89
    sbc b                                         ; $724b: $98
    halt                                          ; $724c: $76
    ld a, b                                       ; $724d: $78
    add a                                         ; $724e: $87
    ld a, b                                       ; $724f: $78
    sbc c                                         ; $7250: $99
    add a                                         ; $7251: $87
    ld [hl], a                                    ; $7252: $77
    ld [hl], a                                    ; $7253: $77
    ld a, b                                       ; $7254: $78
    sbc c                                         ; $7255: $99
    sbc b                                         ; $7256: $98
    ld [hl], a                                    ; $7257: $77
    ld [hl], a                                    ; $7258: $77
    ld a, c                                       ; $7259: $79
    xor c                                         ; $725a: $a9
    add [hl]                                      ; $725b: $86
    ld h, a                                       ; $725c: $67
    ld a, b                                       ; $725d: $78
    adc b                                         ; $725e: $88
    add a                                         ; $725f: $87
    add a                                         ; $7260: $87
    adc c                                         ; $7261: $89
    add a                                         ; $7262: $87
    ld h, [hl]                                    ; $7263: $66
    ld a, c                                       ; $7264: $79
    sbc c                                         ; $7265: $99
    add a                                         ; $7266: $87
    ld h, [hl]                                    ; $7267: $66
    ld a, b                                       ; $7268: $78
    sbc c                                         ; $7269: $99
    add a                                         ; $726a: $87
    ld [hl], a                                    ; $726b: $77
    adc b                                         ; $726c: $88
    add a                                         ; $726d: $87
    ld [hl], a                                    ; $726e: $77
    adc b                                         ; $726f: $88
    sbc b                                         ; $7270: $98
    ld [hl], a                                    ; $7271: $77
    ld a, b                                       ; $7272: $78
    adc b                                         ; $7273: $88
    ld [hl], a                                    ; $7274: $77
    adc c                                         ; $7275: $89
    add a                                         ; $7276: $87
    ld [hl], a                                    ; $7277: $77
    adc b                                         ; $7278: $88
    adc b                                         ; $7279: $88
    adc b                                         ; $727a: $88
    ld [hl], a                                    ; $727b: $77
    ld a, b                                       ; $727c: $78
    adc b                                         ; $727d: $88
    ld [hl], a                                    ; $727e: $77
    adc b                                         ; $727f: $88
    sbc b                                         ; $7280: $98
    ld [hl], a                                    ; $7281: $77
    ld a, b                                       ; $7282: $78
    sbc b                                         ; $7283: $98
    add a                                         ; $7284: $87
    ld a, b                                       ; $7285: $78
    adc b                                         ; $7286: $88
    ld [hl], a                                    ; $7287: $77
    adc b                                         ; $7288: $88
    sbc e                                         ; $7289: $9b
    and l                                         ; $728a: $a5
    inc de                                        ; $728b: $13
    xor [hl]                                      ; $728c: $ae
    add $46                                       ; $728d: $c6 $46
    ld a, b                                       ; $728f: $78
    adc c                                         ; $7290: $89
    sbc b                                         ; $7291: $98
    ld [hl], l                                    ; $7292: $75
    ld h, a                                       ; $7293: $67
    sbc e                                         ; $7294: $9b
    xor b                                         ; $7295: $a8
    ld h, [hl]                                    ; $7296: $66
    ld h, [hl]                                    ; $7297: $66
    adc c                                         ; $7298: $89
    cp d                                          ; $7299: $ba
    add [hl]                                      ; $729a: $86
    ld h, [hl]                                    ; $729b: $66
    ld l, b                                       ; $729c: $68
    xor d                                         ; $729d: $aa
    sub a                                         ; $729e: $97
    ld h, [hl]                                    ; $729f: $66
    adc b                                         ; $72a0: $88
    sbc c                                         ; $72a1: $99
    add a                                         ; $72a2: $87
    ld h, a                                       ; $72a3: $67
    adc c                                         ; $72a4: $89
    sbc c                                         ; $72a5: $99
    add a                                         ; $72a6: $87
    ld h, [hl]                                    ; $72a7: $66
    ld a, b                                       ; $72a8: $78
    sbc c                                         ; $72a9: $99
    sbc b                                         ; $72aa: $98
    halt                                          ; $72ab: $76
    ld a, b                                       ; $72ac: $78
    adc b                                         ; $72ad: $88
    adc b                                         ; $72ae: $88
    add a                                         ; $72af: $87
    adc b                                         ; $72b0: $88
    adc b                                         ; $72b1: $88
    adc b                                         ; $72b2: $88
    halt                                          ; $72b3: $76
    ld a, b                                       ; $72b4: $78
    sbc c                                         ; $72b5: $99
    add a                                         ; $72b6: $87
    ld h, [hl]                                    ; $72b7: $66
    ld a, b                                       ; $72b8: $78
    sbc b                                         ; $72b9: $98
    add a                                         ; $72ba: $87
    ld a, b                                       ; $72bb: $78
    ld [hl], a                                    ; $72bc: $77
    adc b                                         ; $72bd: $88
    adc b                                         ; $72be: $88
    ld [hl], a                                    ; $72bf: $77
    adc b                                         ; $72c0: $88
    sbc b                                         ; $72c1: $98
    ld [hl], a                                    ; $72c2: $77
    ld [hl], a                                    ; $72c3: $77
    adc b                                         ; $72c4: $88
    adc b                                         ; $72c5: $88
    adc b                                         ; $72c6: $88
    ld [hl], a                                    ; $72c7: $77
    ld a, b                                       ; $72c8: $78
    adc b                                         ; $72c9: $88
    adc b                                         ; $72ca: $88
    adc b                                         ; $72cb: $88
    add a                                         ; $72cc: $87
    adc b                                         ; $72cd: $88
    adc b                                         ; $72ce: $88
    ld [hl], a                                    ; $72cf: $77
    ld l, d                                       ; $72d0: $6a
    db $db                                        ; $72d1: $db
    cp e                                          ; $72d2: $bb
    xor c                                         ; $72d3: $a9
    adc c                                         ; $72d4: $89
    xor d                                         ; $72d5: $aa
    cp h                                          ; $72d6: $bc
    res 7, d                                      ; $72d7: $cb $ba
    xor c                                         ; $72d9: $a9
    sbc c                                         ; $72da: $99
    xor d                                         ; $72db: $aa
    cp e                                          ; $72dc: $bb
    res 5, d                                      ; $72dd: $cb $aa
    xor c                                         ; $72df: $a9
    adc c                                         ; $72e0: $89
    xor d                                         ; $72e1: $aa
    xor e                                         ; $72e2: $ab
    cp d                                          ; $72e3: $ba
    sbc c                                         ; $72e4: $99
    sbc c                                         ; $72e5: $99
    adc c                                         ; $72e6: $89
    sbc d                                         ; $72e7: $9a
    xor d                                         ; $72e8: $aa
    xor d                                         ; $72e9: $aa
    sbc c                                         ; $72ea: $99
    sbc b                                         ; $72eb: $98
    adc b                                         ; $72ec: $88
    sbc d                                         ; $72ed: $9a
    sbc d                                         ; $72ee: $9a
    xor c                                         ; $72ef: $a9
    adc b                                         ; $72f0: $88
    adc b                                         ; $72f1: $88
    adc b                                         ; $72f2: $88
    sbc c                                         ; $72f3: $99
    sbc c                                         ; $72f4: $99
    sbc b                                         ; $72f5: $98
    adc b                                         ; $72f6: $88
    adc b                                         ; $72f7: $88
    adc b                                         ; $72f8: $88
    sbc c                                         ; $72f9: $99
    sbc c                                         ; $72fa: $99
    adc b                                         ; $72fb: $88
    adc b                                         ; $72fc: $88
    adc b                                         ; $72fd: $88
    adc c                                         ; $72fe: $89
    sbc c                                         ; $72ff: $99
    adc b                                         ; $7300: $88
    adc b                                         ; $7301: $88
    adc b                                         ; $7302: $88
    adc c                                         ; $7303: $89
    sbc b                                         ; $7304: $98
    adc b                                         ; $7305: $88
    adc b                                         ; $7306: $88
    adc b                                         ; $7307: $88
    adc b                                         ; $7308: $88
    adc b                                         ; $7309: $88
    adc c                                         ; $730a: $89
    sbc b                                         ; $730b: $98
    adc b                                         ; $730c: $88
    adc b                                         ; $730d: $88
    adc c                                         ; $730e: $89
    sbc c                                         ; $730f: $99
    adc b                                         ; $7310: $88
    adc b                                         ; $7311: $88
    adc c                                         ; $7312: $89
    sbc b                                         ; $7313: $98
    adc b                                         ; $7314: $88
    adc b                                         ; $7315: $88
    sbc c                                         ; $7316: $99
    sbc b                                         ; $7317: $98
    adc b                                         ; $7318: $88
    adc c                                         ; $7319: $89
    sbc c                                         ; $731a: $99
    adc b                                         ; $731b: $88
    adc b                                         ; $731c: $88
    adc c                                         ; $731d: $89
    sbc b                                         ; $731e: $98
    adc b                                         ; $731f: $88
    adc b                                         ; $7320: $88
    adc c                                         ; $7321: $89
    adc b                                         ; $7322: $88
    adc b                                         ; $7323: $88
    adc b                                         ; $7324: $88
    sbc b                                         ; $7325: $98
    adc b                                         ; $7326: $88
    adc b                                         ; $7327: $88
    adc b                                         ; $7328: $88
    adc b                                         ; $7329: $88
    adc b                                         ; $732a: $88
    adc b                                         ; $732b: $88
    adc b                                         ; $732c: $88
    adc b                                         ; $732d: $88
    adc b                                         ; $732e: $88
    adc b                                         ; $732f: $88
    ld a, b                                       ; $7330: $78
    ld bc, $8888                                  ; $7331: $01 $88 $88
    adc b                                         ; $7334: $88
    adc b                                         ; $7335: $88
    adc b                                         ; $7336: $88
    adc b                                         ; $7337: $88
    adc b                                         ; $7338: $88
    adc b                                         ; $7339: $88
    adc b                                         ; $733a: $88
    adc b                                         ; $733b: $88
    adc b                                         ; $733c: $88
    adc b                                         ; $733d: $88
    adc b                                         ; $733e: $88
    adc b                                         ; $733f: $88
    adc b                                         ; $7340: $88
    adc b                                         ; $7341: $88
    adc b                                         ; $7342: $88
    adc b                                         ; $7343: $88
    adc b                                         ; $7344: $88
    adc b                                         ; $7345: $88
    adc b                                         ; $7346: $88
    adc b                                         ; $7347: $88
    adc b                                         ; $7348: $88
    adc b                                         ; $7349: $88
    adc b                                         ; $734a: $88
    adc b                                         ; $734b: $88
    ld a, b                                       ; $734c: $78
    ld a, b                                       ; $734d: $78
    adc b                                         ; $734e: $88
    adc b                                         ; $734f: $88
    ld a, b                                       ; $7350: $78
    ld bc, $8888                                  ; $7351: $01 $88 $88
    adc b                                         ; $7354: $88
    adc b                                         ; $7355: $88
    adc b                                         ; $7356: $88
    adc b                                         ; $7357: $88
    adc b                                         ; $7358: $88
    adc b                                         ; $7359: $88
    adc b                                         ; $735a: $88
    adc b                                         ; $735b: $88
    adc b                                         ; $735c: $88
    adc b                                         ; $735d: $88
    adc b                                         ; $735e: $88
    adc b                                         ; $735f: $88
    adc b                                         ; $7360: $88
    adc b                                         ; $7361: $88
    sbc c                                         ; $7362: $99
    sbc d                                         ; $7363: $9a
    call $dbee                                    ; $7364: $cd $ee $db
    xor c                                         ; $7367: $a9
    sbc b                                         ; $7368: $98
    ld h, h                                       ; $7369: $64
    ld [hl+], a                                   ; $736a: $22
    inc [hl]                                      ; $736b: $34
    ld d, l                                       ; $736c: $55
    ld d, [hl]                                    ; $736d: $56
    sbc e                                         ; $736e: $9b
    cp e                                          ; $736f: $bb
    sbc b                                         ; $7370: $98
    ld [hl], a                                    ; $7371: $77
    ld h, h                                       ; $7372: $64
    jr nz, jr_017_7375                            ; $7373: $20 $00

jr_017_7375:
    ld bc, $4622                                  ; $7375: $01 $22 $46
    sbc e                                         ; $7378: $9b
    res 5, e                                      ; $7379: $cb $ab
    cp h                                          ; $737b: $bc
    res 2, a                                      ; $737c: $cb $97
    ld b, e                                       ; $737e: $43
    ld b, [hl]                                    ; $737f: $46
    add a                                         ; $7380: $87
    ld h, a                                       ; $7381: $67
    sbc h                                         ; $7382: $9c
    rst $38                                       ; $7383: $ff
    cp $ee                                        ; $7384: $fe $ee
    db $fd                                        ; $7386: $fd
    and a                                         ; $7387: $a7
    ld d, h                                       ; $7388: $54
    ld b, h                                       ; $7389: $44
    ld b, e                                       ; $738a: $43
    inc hl                                        ; $738b: $23
    ld e, b                                       ; $738c: $58
    xor e                                         ; $738d: $ab
    cp d                                          ; $738e: $ba
    cp e                                          ; $738f: $bb
    xor c                                         ; $7390: $a9
    ld [hl], h                                    ; $7391: $74
    ld hl, $1011                                  ; $7392: $21 $11 $10
    ld bc, $9a36                                  ; $7395: $01 $36 $9a
    xor d                                         ; $7398: $aa
    xor h                                         ; $7399: $ac
    call c, Call_017_76b9                         ; $739a: $dc $b9 $76
    ld h, l                                       ; $739d: $65
    inc sp                                        ; $739e: $33
    ld b, l                                       ; $739f: $45
    ld d, [hl]                                    ; $73a0: $56
    adc d                                         ; $73a1: $8a
    rst $18                                       ; $73a2: $df
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    db $ed                                        ; $73a5: $ed
    jp z, Jump_000_2184                           ; $73a6: $ca $84 $21

    inc h                                         ; $73a9: $24
    ld b, h                                       ; $73aa: $44
    ld d, [hl]                                    ; $73ab: $56
    sbc d                                         ; $73ac: $9a
    xor d                                         ; $73ad: $aa
    xor d                                         ; $73ae: $aa
    xor c                                         ; $73af: $a9
    add [hl]                                      ; $73b0: $86
    ld d, h                                       ; $73b1: $54
    ld hl, $2211                                  ; $73b2: $21 $11 $22
    ld b, [hl]                                    ; $73b5: $46
    adc c                                         ; $73b6: $89
    xor e                                         ; $73b7: $ab
    cp h                                          ; $73b8: $bc
    db $dd                                        ; $73b9: $dd
    res 2, a                                      ; $73ba: $cb $97
    ld d, h                                       ; $73bc: $54
    ld [hl-], a                                   ; $73bd: $32
    inc hl                                        ; $73be: $23
    ld b, [hl]                                    ; $73bf: $46
    adc c                                         ; $73c0: $89
    cp h                                          ; $73c1: $bc
    db $dd                                        ; $73c2: $dd
    rst $28                                       ; $73c3: $ef
    db $fd                                        ; $73c4: $fd
    xor b                                         ; $73c5: $a8
    halt                                          ; $73c6: $76
    ld d, e                                       ; $73c7: $53
    ld de, $3422                                  ; $73c8: $11 $22 $34
    ld d, a                                       ; $73cb: $57
    sbc d                                         ; $73cc: $9a
    cp e                                          ; $73cd: $bb
    cp e                                          ; $73ce: $bb
    cp d                                          ; $73cf: $ba
    add a                                         ; $73d0: $87
    ld d, h                                       ; $73d1: $54
    ld sp, $3412                                  ; $73d2: $31 $12 $34
    ld d, l                                       ; $73d5: $55
    ld a, d                                       ; $73d6: $7a
    call $dcdd                                    ; $73d7: $cd $dd $dc
    cp c                                          ; $73da: $b9
    add [hl]                                      ; $73db: $86
    ld b, h                                       ; $73dc: $44
    ld d, l                                       ; $73dd: $55
    ld h, [hl]                                    ; $73de: $66
    adc d                                         ; $73df: $8a
    call z, $eecd                                 ; $73e0: $cc $cd $ee
    call c, Call_017_74ca                         ; $73e3: $dc $ca $74
    ld hl, $2213                                  ; $73e6: $21 $13 $22
    inc [hl]                                      ; $73e9: $34
    ld l, c                                       ; $73ea: $69
    cp e                                          ; $73eb: $bb
    xor b                                         ; $73ec: $a8
    ld a, b                                       ; $73ed: $78
    xor d                                         ; $73ee: $aa
    add l                                         ; $73ef: $85
    inc sp                                        ; $73f0: $33
    inc [hl]                                      ; $73f1: $34
    ld b, h                                       ; $73f2: $44
    inc [hl]                                      ; $73f3: $34
    ld l, c                                       ; $73f4: $69
    cp e                                          ; $73f5: $bb
    sub a                                         ; $73f6: $97
    adc e                                         ; $73f7: $8b
    db $dd                                        ; $73f8: $dd
    xor b                                         ; $73f9: $a8
    ld h, l                                       ; $73fa: $65
    ld d, l                                       ; $73fb: $55
    ld d, [hl]                                    ; $73fc: $56
    ld h, a                                       ; $73fd: $67
    ld h, a                                       ; $73fe: $67
    adc d                                         ; $73ff: $8a
    call $fdde                                    ; $7400: $cd $de $fd
    cp c                                          ; $7403: $b9
    ld [hl], a                                    ; $7404: $77
    ld h, h                                       ; $7405: $64
    ld [hl-], a                                   ; $7406: $32
    inc [hl]                                      ; $7407: $34
    ld h, a                                       ; $7408: $67
    ld [hl], a                                    ; $7409: $77
    ld a, c                                       ; $740a: $79
    adc $ec                                       ; $740b: $ce $ec
    xor b                                         ; $740d: $a8
    ld [hl], a                                    ; $740e: $77
    ld d, l                                       ; $740f: $55
    ld b, e                                       ; $7410: $43
    jr nz, jr_017_7416                            ; $7411: $20 $03

    ld l, b                                       ; $7413: $68
    sbc b                                         ; $7414: $98
    sbc e                                         ; $7415: $9b

jr_017_7416:
    rst $28                                       ; $7416: $ef
    db $eb                                        ; $7417: $eb
    sub a                                         ; $7418: $97
    ld h, [hl]                                    ; $7419: $66
    ld d, e                                       ; $741a: $53
    ld hl, $6713                                  ; $741b: $21 $13 $67
    ld [hl], a                                    ; $741e: $77
    sbc h                                         ; $741f: $9c
    rst $38                                       ; $7420: $ff
    ret z                                         ; $7421: $c8

    ld h, [hl]                                    ; $7422: $66
    adc c                                         ; $7423: $89
    ld [hl], l                                    ; $7424: $75
    ld [hl-], a                                   ; $7425: $32
    inc [hl]                                      ; $7426: $34
    ld b, h                                       ; $7427: $44
    ld e, b                                       ; $7428: $58
    cp l                                          ; $7429: $bd
    call c, $dccd                                 ; $742a: $dc $cd $dc
    sub a                                         ; $742d: $97
    ld [hl], a                                    ; $742e: $77
    ld h, h                                       ; $742f: $64
    db $10                                        ; $7430: $10
    ld h, $9a                                     ; $7431: $26 $9a
    cp e                                          ; $7433: $bb
    call $fcef                                    ; $7434: $cd $ef $fc
    sub a                                         ; $7437: $97
    ld d, e                                       ; $7438: $53
    inc sp                                        ; $7439: $33
    inc hl                                        ; $743a: $23
    ld [hl-], a                                   ; $743b: $32
    inc [hl]                                      ; $743c: $34
    ld l, c                                       ; $743d: $69
    cp d                                          ; $743e: $ba
    adc b                                         ; $743f: $88
    sbc d                                         ; $7440: $9a
    sub a                                         ; $7441: $97
    ld h, a                                       ; $7442: $67
    add a                                         ; $7443: $87
    ld d, e                                       ; $7444: $53
    ld de, $6823                                  ; $7445: $11 $23 $68
    sbc c                                         ; $7448: $99
    sbc d                                         ; $7449: $9a
    xor d                                         ; $744a: $aa
    adc b                                         ; $744b: $88
    adc b                                         ; $744c: $88
    adc b                                         ; $744d: $88
    ld h, h                                       ; $744e: $64
    inc hl                                        ; $744f: $23
    ld l, c                                       ; $7450: $69
    xor d                                         ; $7451: $aa
    xor e                                         ; $7452: $ab
    db $dd                                        ; $7453: $dd
    db $dd                                        ; $7454: $dd
    xor $c8                                       ; $7455: $ee $c8
    ld d, e                                       ; $7457: $53
    ld b, l                                       ; $7458: $45
    ld h, h                                       ; $7459: $64
    inc sp                                        ; $745a: $33
    ld b, [hl]                                    ; $745b: $46
    ld a, b                                       ; $745c: $78
    xor h                                         ; $745d: $ac
    xor $db                                       ; $745e: $ee $db
    xor d                                         ; $7460: $aa
    sbc b                                         ; $7461: $98
    halt                                          ; $7462: $76
    ld b, d                                       ; $7463: $42
    nop                                           ; $7464: $00
    inc h                                         ; $7465: $24
    ld h, a                                       ; $7466: $67
    halt                                          ; $7467: $76
    ld a, b                                       ; $7468: $78
    xor e                                         ; $7469: $ab
    and a                                         ; $746a: $a7
    ld d, h                                       ; $746b: $54
    inc sp                                        ; $746c: $33
    ld [hl+], a                                   ; $746d: $22
    inc [hl]                                      ; $746e: $34
    ld d, l                                       ; $746f: $55
    ld l, b                                       ; $7470: $68
    cp l                                          ; $7471: $bd
    call c, $baba                                 ; $7472: $dc $ba $ba
    sub a                                         ; $7475: $97
    ld d, h                                       ; $7476: $54
    inc sp                                        ; $7477: $33
    ld d, a                                       ; $7478: $57
    adc c                                         ; $7479: $89
    xor d                                         ; $747a: $aa
    xor e                                         ; $747b: $ab
    rst $18                                       ; $747c: $df
    rst $38                                       ; $747d: $ff
    db $db                                        ; $747e: $db
    xor d                                         ; $747f: $aa
    xor b                                         ; $7480: $a8
    ld d, h                                       ; $7481: $54
    ld d, a                                       ; $7482: $57
    halt                                          ; $7483: $76
    ld b, e                                       ; $7484: $43
    ld e, b                                       ; $7485: $58
    cp e                                          ; $7486: $bb
    xor c                                         ; $7487: $a9
    add a                                         ; $7488: $87
    ld [hl], a                                    ; $7489: $77
    ld h, [hl]                                    ; $748a: $66
    ld b, e                                       ; $748b: $43
    stop                                          ; $748c: $10 $00
    inc hl                                        ; $748e: $23
    ld b, h                                       ; $748f: $44
    ld b, [hl]                                    ; $7490: $46
    adc d                                         ; $7491: $8a
    xor e                                         ; $7492: $ab
    cp d                                          ; $7493: $ba
    cp d                                          ; $7494: $ba
    halt                                          ; $7495: $76
    ld d, l                                       ; $7496: $55
    ld b, h                                       ; $7497: $44
    inc hl                                        ; $7498: $23
    ld l, c                                       ; $7499: $69
    call $eede                                    ; $749a: $cd $de $ee
    db $dd                                        ; $749d: $dd
    sbc $da                                       ; $749e: $de $da
    add l                                         ; $74a0: $85
    ld d, l                                       ; $74a1: $55
    ld d, l                                       ; $74a2: $55
    ld h, a                                       ; $74a3: $67
    sbc d                                         ; $74a4: $9a
    cp e                                          ; $74a5: $bb
    call z, $bbcb                                 ; $74a6: $cc $cb $bb

Call_017_74a9:
    sub a                                         ; $74a9: $97
    ld d, h                                       ; $74aa: $54
    ld [hl-], a                                   ; $74ab: $32
    ld hl, $1400                                  ; $74ac: $21 $00 $14
    ld l, b                                       ; $74af: $68
    adc b                                         ; $74b0: $88
    sbc d                                         ; $74b1: $9a
    cp h                                          ; $74b2: $bc
    or a                                          ; $74b3: $b7
    ld b, e                                       ; $74b4: $43
    ld b, h                                       ; $74b5: $44
    ld b, e                                       ; $74b6: $43
    dec [hl]                                      ; $74b7: $35
    adc d                                         ; $74b8: $8a

Call_017_74b9:
    xor e                                         ; $74b9: $ab
    cp h                                          ; $74ba: $bc
    xor $db                                       ; $74bb: $ee $db
    xor c                                         ; $74bd: $a9
    add a                                         ; $74be: $87
    ld d, h                                       ; $74bf: $54
    inc sp                                        ; $74c0: $33
    ld b, l                                       ; $74c1: $45
    ld h, [hl]                                    ; $74c2: $66
    ld [hl], a                                    ; $74c3: $77
    adc c                                         ; $74c4: $89
    sbc c                                         ; $74c5: $99
    sbc e                                         ; $74c6: $9b
    call z, $aacb                                 ; $74c7: $cc $cb $aa

Call_017_74ca:
    xor c                                         ; $74ca: $a9
    ld [hl], h                                    ; $74cb: $74
    db $10                                        ; $74cc: $10
    inc bc                                        ; $74cd: $03
    ld d, [hl]                                    ; $74ce: $56
    ld h, [hl]                                    ; $74cf: $66
    adc d                                         ; $74d0: $8a
    sbc $ed                                       ; $74d1: $de $ed
    cp c                                          ; $74d3: $b9
    halt                                          ; $74d4: $76
    ld d, l                                       ; $74d5: $55
    ld b, h                                       ; $74d6: $44
    ld [hl-], a                                   ; $74d7: $32
    inc hl                                        ; $74d8: $23
    ld l, b                                       ; $74d9: $68
    adc b                                         ; $74da: $88
    adc c                                         ; $74db: $89
    xor e                                         ; $74dc: $ab
    xor d                                         ; $74dd: $aa
    xor b                                         ; $74de: $a8
    ld h, h                                       ; $74df: $64
    inc [hl]                                      ; $74e0: $34
    ld d, l                                       ; $74e1: $55
    ld l, b                                       ; $74e2: $68
    xor d                                         ; $74e3: $aa
    xor d                                         ; $74e4: $aa
    cp l                                          ; $74e5: $bd
    db $ed                                        ; $74e6: $ed
    and a                                         ; $74e7: $a7
    ld h, a                                       ; $74e8: $67
    halt                                          ; $74e9: $76
    ld d, h                                       ; $74ea: $54
    ld b, [hl]                                    ; $74eb: $46
    ld a, b                                       ; $74ec: $78
    adc b                                         ; $74ed: $88
    sbc d                                         ; $74ee: $9a
    xor d                                         ; $74ef: $aa
    sbc c                                         ; $74f0: $99
    sbc c                                         ; $74f1: $99
    sbc c                                         ; $74f2: $99
    ld h, e                                       ; $74f3: $63
    nop                                           ; $74f4: $00
    inc d                                         ; $74f5: $14
    ld d, h                                       ; $74f6: $54
    ld d, a                                       ; $74f7: $57
    xor e                                         ; $74f8: $ab
    call z, $b8dd                                 ; $74f9: $cc $dd $b8
    ld [hl], a                                    ; $74fc: $77
    ld [hl], a                                    ; $74fd: $77
    ld h, h                                       ; $74fe: $64
    inc hl                                        ; $74ff: $23
    ld b, a                                       ; $7500: $47
    sbc d                                         ; $7501: $9a
    cp e                                          ; $7502: $bb
    adc $ff                                       ; $7503: $ce $ff
    cp $c9                                        ; $7505: $fe $c9
    ld h, h                                       ; $7507: $64
    ld b, h                                       ; $7508: $44
    ld [hl-], a                                   ; $7509: $32
    nop                                           ; $750a: $00
    inc d                                         ; $750b: $14
    ld h, a                                       ; $750c: $67
    ld [hl], a                                    ; $750d: $77
    adc c                                         ; $750e: $89
    sbc d                                         ; $750f: $9a
    xor b                                         ; $7510: $a8
    ld h, l                                       ; $7511: $65
    ld b, h                                       ; $7512: $44
    ld [hl-], a                                   ; $7513: $32
    ld bc, $6725                                  ; $7514: $01 $25 $67
    adc d                                         ; $7517: $8a
    call $feef                                    ; $7518: $cd $ef $fe
    db $db                                        ; $751b: $db
    xor c                                         ; $751c: $a9
    sbc b                                         ; $751d: $98
    ld h, l                                       ; $751e: $65
    ld d, [hl]                                    ; $751f: $56
    adc c                                         ; $7520: $89
    cp h                                          ; $7521: $bc
    db $dd                                        ; $7522: $dd
    sbc $ed                                       ; $7523: $de $ed
    xor c                                         ; $7525: $a9
    halt                                          ; $7526: $76
    ld b, d                                       ; $7527: $42
    nop                                           ; $7528: $00
    ld [de], a                                    ; $7529: $12
    ld [hl+], a                                   ; $752a: $22
    ld [de], a                                    ; $752b: $12
    ld b, [hl]                                    ; $752c: $46
    adc c                                         ; $752d: $89
    sbc c                                         ; $752e: $99
    sbc c                                         ; $752f: $99
    sub a                                         ; $7530: $97
    ld b, d                                       ; $7531: $42
    ld [hl+], a                                   ; $7532: $22
    inc [hl]                                      ; $7533: $34
    inc sp                                        ; $7534: $33
    ld b, [hl]                                    ; $7535: $46
    sbc e                                         ; $7536: $9b
    rst $28                                       ; $7537: $ef
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    db $ed                                        ; $753a: $ed
    res 3, b                                      ; $753b: $cb $98
    ld h, l                                       ; $753d: $65
    ld d, l                                       ; $753e: $55
    ld h, a                                       ; $753f: $67
    adc b                                         ; $7540: $88
    sbc d                                         ; $7541: $9a
    xor d                                         ; $7542: $aa
    cp h                                          ; $7543: $bc
    cp d                                          ; $7544: $ba
    halt                                          ; $7545: $76
    ld h, [hl]                                    ; $7546: $66
    ld h, h                                       ; $7547: $64
    db $10                                        ; $7548: $10
    ld bc, $3322                                  ; $7549: $01 $22 $33
    ld b, [hl]                                    ; $754c: $46
    ld a, b                                       ; $754d: $78
    sbc c                                         ; $754e: $99
    adc b                                         ; $754f: $88
    adc c                                         ; $7550: $89
    sbc b                                         ; $7551: $98
    ld [hl], a                                    ; $7552: $77
    ld h, [hl]                                    ; $7553: $66
    ld [hl], a                                    ; $7554: $77
    ld a, c                                       ; $7555: $79
    xor e                                         ; $7556: $ab
    call $ddee                                    ; $7557: $cd $ee $dd
    sbc $dc                                       ; $755a: $de $dc
    sub a                                         ; $755c: $97
    ld h, l                                       ; $755d: $65
    ld d, l                                       ; $755e: $55
    ld d, h                                       ; $755f: $54
    ld b, [hl]                                    ; $7560: $46
    ld [hl], a                                    ; $7561: $77
    ld [hl], a                                    ; $7562: $77
    ld a, b                                       ; $7563: $78
    add a                                         ; $7564: $87
    ld h, l                                       ; $7565: $65
    ld b, e                                       ; $7566: $43
    ld [hl-], a                                   ; $7567: $32
    inc sp                                        ; $7568: $33
    ld [hl-], a                                   ; $7569: $32
    inc hl                                        ; $756a: $23
    ld d, a                                       ; $756b: $57
    adc b                                         ; $756c: $88
    sbc c                                         ; $756d: $99
    xor d                                         ; $756e: $aa
    xor c                                         ; $756f: $a9
    sbc c                                         ; $7570: $99
    sbc b                                         ; $7571: $98
    halt                                          ; $7572: $76
    ld h, a                                       ; $7573: $67
    sbc e                                         ; $7574: $9b
    cp e                                          ; $7575: $bb
    call $eeee                                    ; $7576: $cd $ee $ee
    xor $db                                       ; $7579: $ee $db
    add [hl]                                      ; $757b: $86
    ld h, a                                       ; $757c: $67
    halt                                          ; $757d: $76
    ld d, e                                       ; $757e: $53
    inc [hl]                                      ; $757f: $34
    ld d, [hl]                                    ; $7580: $56
    ld h, h                                       ; $7581: $64
    ld hl, $5623                                  ; $7582: $21 $23 $56
    ld b, d                                       ; $7585: $42
    ld de, $5435                                  ; $7586: $11 $35 $54
    ld b, l                                       ; $7589: $45
    ld d, a                                       ; $758a: $57
    adc c                                         ; $758b: $89
    xor e                                         ; $758c: $ab
    cp e                                          ; $758d: $bb
    cp e                                          ; $758e: $bb
    xor c                                         ; $758f: $a9
    adc b                                         ; $7590: $88
    adc c                                         ; $7591: $89
    sbc b                                         ; $7592: $98
    adc d                                         ; $7593: $8a
    adc $fd                                       ; $7594: $ce $fd
    call z, $fddf                                 ; $7596: $cc $df $fd
    xor b                                         ; $7599: $a8
    adc c                                         ; $759a: $89
    sbc b                                         ; $759b: $98
    ld h, h                                       ; $759c: $64
    inc sp                                        ; $759d: $33
    ld [hl-], a                                   ; $759e: $32
    ld [hl+], a                                   ; $759f: $22
    dec [hl]                                      ; $75a0: $35
    ld [hl], a                                    ; $75a1: $77
    ld [hl], a                                    ; $75a2: $77
    ld h, [hl]                                    ; $75a3: $66
    ld h, l                                       ; $75a4: $65
    ld [hl-], a                                   ; $75a5: $32
    ld de, $1111                                  ; $75a6: $11 $11 $11

Call_017_75a9:
    inc h                                         ; $75a9: $24
    ld d, a                                       ; $75aa: $57
    adc c                                         ; $75ab: $89
    cp h                                          ; $75ac: $bc
    cp e                                          ; $75ad: $bb
    cp d                                          ; $75ae: $ba
    cp h                                          ; $75af: $bc
    res 5, d                                      ; $75b0: $cb $aa
    xor h                                         ; $75b2: $ac
    res 3, d                                      ; $75b3: $cb $9a
    adc $fe                                       ; $75b5: $ce $fe
    call c, $b9dd                                 ; $75b7: $dc $dd $b9
    add a                                         ; $75ba: $87
    ld h, h                                       ; $75bb: $64
    ld [hl-], a                                   ; $75bc: $32
    inc hl                                        ; $75bd: $23
    ld b, l                                       ; $75be: $45
    ld h, a                                       ; $75bf: $67
    ld h, [hl]                                    ; $75c0: $66
    ld a, b                                       ; $75c1: $78
    sbc c                                         ; $75c2: $99
    ld [hl], h                                    ; $75c3: $74
    stop                                          ; $75c4: $10 $00
    inc h                                         ; $75c6: $24
    ld b, h                                       ; $75c7: $44
    ld b, [hl]                                    ; $75c8: $46

Call_017_75c9:
    ld a, c                                       ; $75c9: $79

Call_017_75ca:
    cp e                                          ; $75ca: $bb
    call z, $ccdc                                 ; $75cb: $cc $dc $cc
    call $9aca                                    ; $75ce: $cd $ca $9a
    xor c                                         ; $75d1: $a9
    halt                                          ; $75d2: $76
    ld h, a                                       ; $75d3: $67
    add a                                         ; $75d4: $87
    adc d                                         ; $75d5: $8a
    call z, $babb                                 ; $75d6: $cc $bb $ba
    sub a                                         ; $75d9: $97
    halt                                          ; $75da: $76
    ld d, h                                       ; $75db: $54
    ld hl, $1212                                  ; $75dc: $21 $12 $12
    inc hl                                        ; $75df: $23
    ld b, [hl]                                    ; $75e0: $46
    ld [hl], a                                    ; $75e1: $77
    ld [hl], a                                    ; $75e2: $77
    ld [hl], a                                    ; $75e3: $77
    halt                                          ; $75e4: $76
    ld d, l                                       ; $75e5: $55
    ld d, [hl]                                    ; $75e6: $56
    ld a, b                                       ; $75e7: $78
    xor h                                         ; $75e8: $ac
    res 1, b                                      ; $75e9: $cb $88
    xor [hl]                                      ; $75eb: $ae
    rst $38                                       ; $75ec: $ff
    ret                                           ; $75ed: $c9


    ld h, l                                       ; $75ee: $65
    ld e, b                                       ; $75ef: $58
    xor e                                         ; $75f0: $ab
    sbc b                                         ; $75f1: $98
    sbc e                                         ; $75f2: $9b
    db $dd                                        ; $75f3: $dd
    call z, $96ba                                 ; $75f4: $cc $ba $96
    ld b, d                                       ; $75f7: $42
    inc h                                         ; $75f8: $24
    ld b, e                                       ; $75f9: $43
    ld hl, $4612                                  ; $75fa: $21 $12 $46
    ld h, l                                       ; $75fd: $65
    ld d, [hl]                                    ; $75fe: $56
    ld a, c                                       ; $75ff: $79
    add [hl]                                      ; $7600: $86
    ld d, [hl]                                    ; $7601: $56
    sbc d                                         ; $7602: $9a
    add l                                         ; $7603: $85
    db $10                                        ; $7604: $10
    ld b, a                                       ; $7605: $47
    sbc c                                         ; $7606: $99
    adc c                                         ; $7607: $89
    cp l                                          ; $7608: $bd
    jp z, $cdaa                                   ; $7609: $ca $aa $cd

    ret                                           ; $760c: $c9


    ld [hl], l                                    ; $760d: $75
    ld d, l                                       ; $760e: $55
    ld h, a                                       ; $760f: $67
    adc c                                         ; $7610: $89
    sbc d                                         ; $7611: $9a
    call $dedd                                    ; $7612: $cd $dd $de
    db $ec                                        ; $7615: $ec
    cp c                                          ; $7616: $b9
    add [hl]                                      ; $7617: $86
    ld b, d                                       ; $7618: $42
    nop                                           ; $7619: $00
    ld bc, $4623                                  ; $761a: $01 $23 $46
    adc d                                         ; $761d: $8a
    xor c                                         ; $761e: $a9
    halt                                          ; $761f: $76
    ld d, l                                       ; $7620: $55
    ld b, h                                       ; $7621: $44
    ld b, e                                       ; $7622: $43
    ld hl, $3401                                  ; $7623: $21 $01 $34
    ld h, a                                       ; $7626: $67
    adc d                                         ; $7627: $8a
    cp e                                          ; $7628: $bb
    call z, $b9cc                                 ; $7629: $cc $cc $b9
    adc b                                         ; $762c: $88
    adc b                                         ; $762d: $88
    ld [hl], a                                    ; $762e: $77
    ld a, b                                       ; $762f: $78
    xor h                                         ; $7630: $ac
    sbc $ee                                       ; $7631: $de $ee
    rst $38                                       ; $7633: $ff
    db $fd                                        ; $7634: $fd
    cp c                                          ; $7635: $b9
    add a                                         ; $7636: $87
    ld h, l                                       ; $7637: $65
    ld hl, $3412                                  ; $7638: $21 $12 $34
    ld b, l                                       ; $763b: $45
    ld h, a                                       ; $763c: $67
    adc b                                         ; $763d: $88
    ld [hl], l                                    ; $763e: $75
    ld b, d                                       ; $763f: $42
    ld [de], a                                    ; $7640: $12
    ld [hl+], a                                   ; $7641: $22
    ld de, $2501                                  ; $7642: $11 $01 $25
    ld a, c                                       ; $7645: $79
    xor d                                         ; $7646: $aa
    xor e                                         ; $7647: $ab
    rst $18                                       ; $7648: $df
    cp $ca                                        ; $7649: $fe $ca
    sbc c                                         ; $764b: $99
    adc b                                         ; $764c: $88
    adc b                                         ; $764d: $88
    sbc d                                         ; $764e: $9a
    cp d                                          ; $764f: $ba
    xor e                                         ; $7650: $ab
    rst $18                                       ; $7651: $df
    cp $ca                                        ; $7652: $fe $ca
    add a                                         ; $7654: $87
    halt                                          ; $7655: $76

Jump_017_7656:
    ld b, d                                       ; $7656: $42
    ld bc, $7735                                  ; $7657: $01 $35 $77
    ld [hl], a                                    ; $765a: $77
    adc b                                         ; $765b: $88
    sbc c                                         ; $765c: $99
    add [hl]                                      ; $765d: $86
    ld b, e                                       ; $765e: $43
    ld de, $0000                                  ; $765f: $11 $00 $00
    ld [bc], a                                    ; $7662: $02
    ld b, a                                       ; $7663: $47
    sbc e                                         ; $7664: $9b
    cp h                                          ; $7665: $bc
    sbc $ee                                       ; $7666: $de $ee
    call c, $87ba                                 ; $7668: $dc $ba $87
    ld d, [hl]                                    ; $766b: $56
    ld a, c                                       ; $766c: $79
    xor h                                         ; $766d: $ac
    call $ccdd                                    ; $766e: $cd $dd $cc
    db $dd                                        ; $7671: $dd
    jp z, Jump_000_3274                           ; $7672: $ca $74 $32

    ld [hl+], a                                   ; $7675: $22
    ld [hl+], a                                   ; $7676: $22
    ld [de], a                                    ; $7677: $12
    ld b, a                                       ; $7678: $47
    sbc d                                         ; $7679: $9a
    xor d                                         ; $767a: $aa
    xor d                                         ; $767b: $aa
    sub a                                         ; $767c: $97
    ld d, e                                       ; $767d: $53
    ld [hl+], a                                   ; $767e: $22
    inc hl                                        ; $767f: $23
    ld [hl-], a                                   ; $7680: $32
    ld de, $bb47                                  ; $7681: $11 $47 $bb
    xor c                                         ; $7684: $a9
    xor h                                         ; $7685: $ac
    db $ed                                        ; $7686: $ed
    cp d                                          ; $7687: $ba
    sbc c                                         ; $7688: $99
    add a                                         ; $7689: $87
    ld d, [hl]                                    ; $768a: $56
    adc c                                         ; $768b: $89
    sbc c                                         ; $768c: $99
    sbc d                                         ; $768d: $9a
    rst $08                                       ; $768e: $cf
    db $fd                                        ; $768f: $fd
    cp d                                          ; $7690: $ba
    sbc d                                         ; $7691: $9a
    sbc b                                         ; $7692: $98
    ld d, d                                       ; $7693: $52
    ld de, $4423                                  ; $7694: $11 $23 $44
    ld d, a                                       ; $7697: $57

Jump_017_7698:
    sbc d                                         ; $7698: $9a
    xor c                                         ; $7699: $a9
    adc c                                         ; $769a: $89
    xor d                                         ; $769b: $aa
    sub [hl]                                      ; $769c: $96
    jr nz, jr_017_76a2                            ; $769d: $20 $03

    ld d, l                                       ; $769f: $55
    ld d, l                                       ; $76a0: $55
    ld l, c                                       ; $76a1: $69

jr_017_76a2:
    cp h                                          ; $76a2: $bc
    cp d                                          ; $76a3: $ba
    sbc c                                         ; $76a4: $99
    sbc c                                         ; $76a5: $99
    add a                                         ; $76a6: $87
    ld h, [hl]                                    ; $76a7: $66

Call_017_76a8:
    halt                                          ; $76a8: $76
    ld h, l                                       ; $76a9: $65

Call_017_76aa:
    ld l, c                                       ; $76aa: $69
    adc $ee                                       ; $76ab: $ce $ee
    db $ec                                        ; $76ad: $ec
    cp d                                          ; $76ae: $ba
    sbc b                                         ; $76af: $98
    add a                                         ; $76b0: $87
    ld d, h                                       ; $76b1: $54
    ld b, h                                       ; $76b2: $44
    ld b, l                                       ; $76b3: $45
    ld b, e                                       ; $76b4: $43
    ld b, l                                       ; $76b5: $45
    ld a, d                                       ; $76b6: $7a
    cp d                                          ; $76b7: $ba
    adc b                                         ; $76b8: $88

Call_017_76b9:
    xor h                                         ; $76b9: $ac

Call_017_76ba:
    jp c, Jump_000_0151                           ; $76ba: $da $51 $01

    inc hl                                        ; $76bd: $23
    jr nz, jr_017_76c3                            ; $76be: $20 $03

    adc d                                         ; $76c0: $8a
    cp e                                          ; $76c1: $bb
    xor e                                         ; $76c2: $ab

jr_017_76c3:
    call $b8ed                                    ; $76c3: $cd $ed $b8
    ld [hl], l                                    ; $76c6: $75
    ld b, [hl]                                    ; $76c7: $46
    ld [hl], a                                    ; $76c8: $77
    halt                                          ; $76c9: $76
    ld d, a                                       ; $76ca: $57
    xor l                                         ; $76cb: $ad
    xor $cb                                       ; $76cc: $ee $cb
    cp l                                          ; $76ce: $bd
    db $db                                        ; $76cf: $db
    add [hl]                                      ; $76d0: $86
    ld h, a                                       ; $76d1: $67
    ld [hl], a                                    ; $76d2: $77
    ld d, h                                       ; $76d3: $54
    ld b, h                                       ; $76d4: $44
    ld d, [hl]                                    ; $76d5: $56
    add a                                         ; $76d6: $87
    ld [hl], a                                    ; $76d7: $77
    ld h, [hl]                                    ; $76d8: $66
    ld h, h                                       ; $76d9: $64
    jr nz, jr_017_76de                            ; $76da: $20 $02

    ld d, a                                       ; $76dc: $57
    ld h, d                                       ; $76dd: $62

jr_017_76de:
    inc de                                        ; $76de: $13
    adc l                                         ; $76df: $8d
    db $ec                                        ; $76e0: $ec
    xor b                                         ; $76e1: $a8
    ld [hl], a                                    ; $76e2: $77
    ld [hl], a                                    ; $76e3: $77
    ld a, b                                       ; $76e4: $78
    adc b                                         ; $76e5: $88
    ld [hl], a                                    ; $76e6: $77
    sbc h                                         ; $76e7: $9c
    xor $ed                                       ; $76e8: $ee $ed
    sbc $ee                                       ; $76ea: $de $ee
    xor $db                                       ; $76ec: $ee $db
    sub a                                         ; $76ee: $97
    ld h, [hl]                                    ; $76ef: $66
    ld h, h                                       ; $76f0: $64
    inc sp                                        ; $76f1: $33
    ld b, l                                       ; $76f2: $45
    ld b, e                                       ; $76f3: $43
    inc [hl]                                      ; $76f4: $34
    ld l, b                                       ; $76f5: $68
    adc b                                         ; $76f6: $88
    adc b                                         ; $76f7: $88
    ld [hl], e                                    ; $76f8: $73
    nop                                           ; $76f9: $00
    inc h                                         ; $76fa: $24
    ld b, e                                       ; $76fb: $43
    inc hl                                        ; $76fc: $23
    ld l, b                                       ; $76fd: $68
    sbc d                                         ; $76fe: $9a
    xor e                                         ; $76ff: $ab
    call $98db                                    ; $7700: $cd $db $98
    ld a, b                                       ; $7703: $78
    add a                                         ; $7704: $87
    ld h, [hl]                                    ; $7705: $66
    ld h, a                                       ; $7706: $67
    ld a, b                                       ; $7707: $78
    xor [hl]                                      ; $7708: $ae
    rst $38                                       ; $7709: $ff
    xor $ef                                       ; $770a: $ee $ef
    db $fd                                        ; $770c: $fd
    and a                                         ; $770d: $a7
    ld d, h                                       ; $770e: $54
    inc sp                                        ; $770f: $33
    ld sp, $5513                                  ; $7710: $31 $13 $55
    ld b, e                                       ; $7713: $43
    ld b, [hl]                                    ; $7714: $46
    xor h                                         ; $7715: $ac
    or a                                          ; $7716: $b7
    ld b, e                                       ; $7717: $43
    inc sp                                        ; $7718: $33
    ld [hl-], a                                   ; $7719: $32
    ld de, $3622                                  ; $771a: $11 $22 $36
    sbc h                                         ; $771d: $9c
    rst $28                                       ; $771e: $ef
    rst $38                                       ; $771f: $ff
    cp $cb                                        ; $7720: $fe $cb
    xor b                                         ; $7722: $a8
    ld d, h                                       ; $7723: $54
    ld d, [hl]                                    ; $7724: $56
    adc c                                         ; $7725: $89
    sbc b                                         ; $7726: $98
    sbc d                                         ; $7727: $9a
    call $a8ed                                    ; $7728: $cd $ed $a8
    ld [hl], a                                    ; $772b: $77
    halt                                          ; $772c: $76
    ld b, c                                       ; $772d: $41
    ld bc, $5635                                  ; $772e: $01 $35 $56
    adc d                                         ; $7731: $8a
    cp d                                          ; $7732: $ba
    sub a                                         ; $7733: $97
    ld h, [hl]                                    ; $7734: $66
    ld d, l                                       ; $7735: $55
    ld b, e                                       ; $7736: $43
    ld [hl+], a                                   ; $7737: $22
    inc hl                                        ; $7738: $23
    ld b, l                                       ; $7739: $45
    ld a, c                                       ; $773a: $79
    cp h                                          ; $773b: $bc
    adc $ff                                       ; $773c: $ce $ff
    db $db                                        ; $773e: $db
    add a                                         ; $773f: $87
    add a                                         ; $7740: $87
    ld h, [hl]                                    ; $7741: $66
    ld h, [hl]                                    ; $7742: $66
    ld d, [hl]                                    ; $7743: $56
    adc d                                         ; $7744: $8a
    call $dded                                    ; $7745: $cd $ed $dd
    db $db                                        ; $7748: $db
    add [hl]                                      ; $7749: $86
    ld b, e                                       ; $774a: $43
    inc sp                                        ; $774b: $33
    inc hl                                        ; $774c: $23
    inc sp                                        ; $774d: $33
    ld b, l                                       ; $774e: $45
    ld a, b                                       ; $774f: $78
    xor e                                         ; $7750: $ab
    cp e                                          ; $7751: $bb
    xor c                                         ; $7752: $a9
    halt                                          ; $7753: $76
    ld d, h                                       ; $7754: $54
    ld sp, $2401                                  ; $7755: $31 $01 $24
    ld l, b                                       ; $7758: $68
    xor h                                         ; $7759: $ac
    sbc $ff                                       ; $775a: $de $ff
    db $fd                                        ; $775c: $fd
    cp c                                          ; $775d: $b9
    halt                                          ; $775e: $76
    ld d, h                                       ; $775f: $54
    ld b, h                                       ; $7760: $44
    ld b, h                                       ; $7761: $44
    ld d, l                                       ; $7762: $55
    ld a, d                                       ; $7763: $7a
    db $dd                                        ; $7764: $dd
    res 7, e                                      ; $7765: $cb $bb
    res 2, a                                      ; $7767: $cb $97
    ld b, e                                       ; $7769: $43
    inc sp                                        ; $776a: $33
    ld [hl+], a                                   ; $776b: $22
    inc hl                                        ; $776c: $23
    ld b, a                                       ; $776d: $47
    xor h                                         ; $776e: $ac
    cp e                                          ; $776f: $bb
    xor d                                         ; $7770: $aa
    xor b                                         ; $7771: $a8
    ld h, h                                       ; $7772: $64
    ld hl, $1211                                  ; $7773: $21 $11 $12
    ld d, [hl]                                    ; $7776: $56
    adc d                                         ; $7777: $8a
    call $feff                                    ; $7778: $cd $ff $fe
    db $db                                        ; $777b: $db
    xor b                                         ; $777c: $a8
    halt                                          ; $777d: $76
    ld b, e                                       ; $777e: $43
    inc [hl]                                      ; $777f: $34
    ld d, a                                       ; $7780: $57
    sbc e                                         ; $7781: $9b
    call z, $cccc                                 ; $7782: $cc $cc $cc
    cp c                                          ; $7785: $b9
    ld [hl], l                                    ; $7786: $75
    ld [hl-], a                                   ; $7787: $32
    stop                                          ; $7788: $10 $00
    inc h                                         ; $778a: $24
    ld a, d                                       ; $778b: $7a
    call z, $b9dc                                 ; $778c: $cc $dc $b9
    sub a                                         ; $778f: $97
    add [hl]                                      ; $7790: $86
    ld b, d                                       ; $7791: $42
    ld [de], a                                    ; $7792: $12
    dec [hl]                                      ; $7793: $35
    ld h, a                                       ; $7794: $67
    adc e                                         ; $7795: $8b
    sbc $dc                                       ; $7796: $de $dc

Jump_017_7798:
    call $96dc                                    ; $7798: $cd $dc $96
    ld d, h                                       ; $779b: $54
    ld b, l                                       ; $779c: $45
    ld d, l                                       ; $779d: $55
    ld l, b                                       ; $779e: $68
    sbc e                                         ; $779f: $9b
    call z, $cabc                                 ; $77a0: $cc $bc $ca
    ld [hl], l                                    ; $77a3: $75
    inc sp                                        ; $77a4: $33
    ld [hl-], a                                   ; $77a5: $32
    db $10                                        ; $77a6: $10
    ld [bc], a                                    ; $77a7: $02
    ld b, [hl]                                    ; $77a8: $46
    adc c                                         ; $77a9: $89
    xor d                                         ; $77aa: $aa
    cp h                                          ; $77ab: $bc
    call c, Call_017_76a8                         ; $77ac: $dc $a8 $76
    ld h, l                                       ; $77af: $65
    ld [hl-], a                                   ; $77b0: $32
    dec [hl]                                      ; $77b1: $35
    ld a, b                                       ; $77b2: $78
    adc c                                         ; $77b3: $89
    xor h                                         ; $77b4: $ac
    rst $28                                       ; $77b5: $ef
    rst $38                                       ; $77b6: $ff
    db $db                                        ; $77b7: $db
    add [hl]                                      ; $77b8: $86

Call_017_77b9:
    ld d, h                                       ; $77b9: $54
    inc sp                                        ; $77ba: $33
    ld [hl-], a                                   ; $77bb: $32
    inc [hl]                                      ; $77bc: $34
    ld l, c                                       ; $77bd: $69
    call $a9db                                    ; $77be: $cd $db $a9
    add a                                         ; $77c1: $87
    ld h, h                                       ; $77c2: $64
    jr nz, jr_017_77c5                            ; $77c3: $20 $00

jr_017_77c5:
    ld [de], a                                    ; $77c5: $12
    inc [hl]                                      ; $77c6: $34
    ld l, b                                       ; $77c7: $68
    xor h                                         ; $77c8: $ac
    db $dd                                        ; $77c9: $dd
    call c, $a8bb                                 ; $77ca: $dc $bb $a8
    ld h, h                                       ; $77cd: $64
    ld b, l                                       ; $77ce: $45
    ld d, l                                       ; $77cf: $55
    ld h, a                                       ; $77d0: $67
    adc d                                         ; $77d1: $8a
    xor h                                         ; $77d2: $ac
    rst $18                                       ; $77d3: $df
    db $ed                                        ; $77d4: $ed
    res 7, d                                      ; $77d5: $cb $ba
    add [hl]                                      ; $77d7: $86
    ld b, e                                       ; $77d8: $43
    inc hl                                        ; $77d9: $23
    ld b, h                                       ; $77da: $44
    ld d, [hl]                                    ; $77db: $56
    ld a, b                                       ; $77dc: $78
    adc c                                         ; $77dd: $89
    sbc b                                         ; $77de: $98
    halt                                          ; $77df: $76
    ld b, e                                       ; $77e0: $43
    ld [hl+], a                                   ; $77e1: $22
    ld [hl+], a                                   ; $77e2: $22
    ld [hl+], a                                   ; $77e3: $22
    ld b, a                                       ; $77e4: $47
    sbc d                                         ; $77e5: $9a
    cp h                                          ; $77e6: $bc
    call $97cb                                    ; $77e7: $cd $cb $97
    ld h, [hl]                                    ; $77ea: $66
    ld a, b                                       ; $77eb: $78
    halt                                          ; $77ec: $76
    ld d, h                                       ; $77ed: $54
    ld l, c                                       ; $77ee: $69
    adc $fd                                       ; $77ef: $ce $fd
    db $dd                                        ; $77f1: $dd
    res 5, b                                      ; $77f2: $cb $a8
    ld h, h                                       ; $77f4: $64
    inc sp                                        ; $77f5: $33
    ld b, h                                       ; $77f6: $44
    ld [hl-], a                                   ; $77f7: $32
    inc h                                         ; $77f8: $24
    ld a, c                                       ; $77f9: $79
    xor e                                         ; $77fa: $ab
    cp h                                          ; $77fb: $bc
    cp c                                          ; $77fc: $b9
    halt                                          ; $77fd: $76
    ld h, [hl]                                    ; $77fe: $66
    ld d, l                                       ; $77ff: $55
    ld b, d                                       ; $7800: $42
    ld [hl+], a                                   ; $7801: $22
    inc hl                                        ; $7802: $23
    ld e, b                                       ; $7803: $58
    sbc d                                         ; $7804: $9a
    xor c                                         ; $7805: $a9
    sbc d                                         ; $7806: $9a
    call z, Call_017_78b9                         ; $7807: $cc $b9 $78
    xor e                                         ; $780a: $ab
    sub [hl]                                      ; $780b: $96
    ld b, [hl]                                    ; $780c: $46
    sbc e                                         ; $780d: $9b
    cp c                                          ; $780e: $b9
    xor d                                         ; $780f: $aa
    xor b                                         ; $7810: $a8
    ld h, h                                       ; $7811: $64
    ld d, a                                       ; $7812: $57
    ld [hl], h                                    ; $7813: $74
    ld hl, $ab37                                  ; $7814: $21 $37 $ab
    xor b                                         ; $7817: $a8
    ld h, l                                       ; $7818: $65
    ld a, c                                       ; $7819: $79
    sub a                                         ; $781a: $97
    adc b                                         ; $781b: $88
    adc b                                         ; $781c: $88
    ld h, l                                       ; $781d: $65
    ld l, d                                       ; $781e: $6a
    db $dd                                        ; $781f: $dd
    jp z, $aaaa                                   ; $7820: $ca $aa $aa

    sub a                                         ; $7823: $97
    ld d, h                                       ; $7824: $54
    ld d, [hl]                                    ; $7825: $56
    ld h, h                                       ; $7826: $64
    inc [hl]                                      ; $7827: $34
    ld a, e                                       ; $7828: $7b
    db $db                                        ; $7829: $db
    ld [hl], l                                    ; $782a: $75
    ld h, a                                       ; $782b: $67
    ld [hl], l                                    ; $782c: $75
    jr nz, jr_017_7841                            ; $782d: $20 $12

    ld de, $6813                                  ; $782f: $11 $13 $68
    xor e                                         ; $7832: $ab
    cp e                                          ; $7833: $bb
    cp l                                          ; $7834: $bd
    call c, $8a97                                 ; $7835: $dc $97 $8a
    bit 6, e                                      ; $7838: $cb $73
    inc h                                         ; $783a: $24
    sbc l                                         ; $783b: $9d
    rst $38                                       ; $783c: $ff
    db $fd                                        ; $783d: $fd
    res 5, c                                      ; $783e: $cb $a9
    add [hl]                                      ; $7840: $86

jr_017_7841:
    ld d, l                                       ; $7841: $55
    ld b, d                                       ; $7842: $42
    db $10                                        ; $7843: $10
    inc de                                        ; $7844: $13
    ld b, l                                       ; $7845: $45
    ld l, b                                       ; $7846: $68
    xor c                                         ; $7847: $a9
    halt                                          ; $7848: $76
    ld d, h                                       ; $7849: $54
    ld b, e                                       ; $784a: $43
    inc [hl]                                      ; $784b: $34
    ld d, l                                       ; $784c: $55
    ld d, l                                       ; $784d: $55
    ld l, b                                       ; $784e: $68
    cp a                                          ; $784f: $bf
    cp $ca                                        ; $7850: $fe $ca
    sbc d                                         ; $7852: $9a
    xor d                                         ; $7853: $aa
    xor c                                         ; $7854: $a9
    adc c                                         ; $7855: $89
    xor e                                         ; $7856: $ab
    cp d                                          ; $7857: $ba
    sbc c                                         ; $7858: $99
    xor e                                         ; $7859: $ab
    cp d                                          ; $785a: $ba
    add a                                         ; $785b: $87
    ld [hl], a                                    ; $785c: $77
    ld h, h                                       ; $785d: $64
    jr nz, jr_017_7872                            ; $785e: $20 $12

    inc sp                                        ; $7860: $33
    inc sp                                        ; $7861: $33
    ld d, a                                       ; $7862: $57
    sbc c                                         ; $7863: $99
    halt                                          ; $7864: $76
    ld h, a                                       ; $7865: $67
    ld [hl], l                                    ; $7866: $75
    ld [hl-], a                                   ; $7867: $32
    inc h                                         ; $7868: $24
    ld d, l                                       ; $7869: $55
    ld d, a                                       ; $786a: $57
    xor h                                         ; $786b: $ac
    call z, $ffcd                                 ; $786c: $cc $cd $ff
    db $ec                                        ; $786f: $ec
    xor c                                         ; $7870: $a9
    adc c                                         ; $7871: $89

jr_017_7872:
    sbc b                                         ; $7872: $98
    halt                                          ; $7873: $76
    ld a, c                                       ; $7874: $79
    cp e                                          ; $7875: $bb
    xor c                                         ; $7876: $a9
    adc b                                         ; $7877: $88
    adc c                                         ; $7878: $89
    add [hl]                                      ; $7879: $86
    ld b, d                                       ; $787a: $42
    ld de, $4323                                  ; $787b: $11 $23 $43
    inc sp                                        ; $787e: $33
    inc h                                         ; $787f: $24
    ld l, b                                       ; $7880: $68
    cp e                                          ; $7881: $bb
    sub a                                         ; $7882: $97
    ld h, [hl]                                    ; $7883: $66
    ld h, a                                       ; $7884: $67
    ld h, l                                       ; $7885: $65
    ld b, e                                       ; $7886: $43
    ld b, [hl]                                    ; $7887: $46
    adc c                                         ; $7888: $89
    xor c                                         ; $7889: $a9
    xor h                                         ; $788a: $ac
    rst $28                                       ; $788b: $ef
    cp $ba                                        ; $788c: $fe $ba
    xor d                                         ; $788e: $aa
    sub a                                         ; $788f: $97
    ld h, h                                       ; $7890: $64
    dec [hl]                                      ; $7891: $35
    adc d                                         ; $7892: $8a
    cp e                                          ; $7893: $bb
    xor b                                         ; $7894: $a8
    adc d                                         ; $7895: $8a
    xor b                                         ; $7896: $a8
    ld h, h                                       ; $7897: $64
    inc sp                                        ; $7898: $33
    inc sp                                        ; $7899: $33
    inc [hl]                                      ; $789a: $34
    ld d, [hl]                                    ; $789b: $56
    adc d                                         ; $789c: $8a
    res 2, [hl]                                   ; $789d: $cb $96
    inc [hl]                                      ; $789f: $34
    add a                                         ; $78a0: $87
    ld d, e                                       ; $78a1: $53
    db $10                                        ; $78a2: $10
    inc de                                        ; $78a3: $13
    ld b, [hl]                                    ; $78a4: $46
    adc c                                         ; $78a5: $89
    xor e                                         ; $78a6: $ab
    adc $fe                                       ; $78a7: $ce $fe

Call_017_78a9:
    ret                                           ; $78a9: $c9


    halt                                          ; $78aa: $76
    ld a, c                                       ; $78ab: $79
    xor b                                         ; $78ac: $a8
    ld d, e                                       ; $78ad: $53
    ld b, a                                       ; $78ae: $47
    xor l                                         ; $78af: $ad
    db $ec                                        ; $78b0: $ec
    cp e                                          ; $78b1: $bb
    adc $fd                                       ; $78b2: $ce $fd
    add l                                         ; $78b4: $85
    ld d, [hl]                                    ; $78b5: $56
    halt                                          ; $78b6: $76
    ld b, e                                       ; $78b7: $43
    ld b, h                                       ; $78b8: $44

Call_017_78b9:
    jr nz, jr_017_78d0                            ; $78b9: $20 $15

    sbc c                                         ; $78bb: $99
    ld [hl], l                                    ; $78bc: $75
    ld b, h                                       ; $78bd: $44
    ld d, l                                       ; $78be: $55
    ld d, [hl]                                    ; $78bf: $56
    adc b                                         ; $78c0: $88
    ld h, e                                       ; $78c1: $63
    ld de, $bc49                                  ; $78c2: $11 $49 $bc
    res 3, d                                      ; $78c5: $cb $9a
    sbc $db                                       ; $78c7: $de $db
    add a                                         ; $78c9: $87
    xor h                                         ; $78ca: $ac
    cp d                                          ; $78cb: $ba
    sbc c                                         ; $78cc: $99
    cp [hl]                                       ; $78cd: $be
    db $ec                                        ; $78ce: $ec
    xor b                                         ; $78cf: $a8

jr_017_78d0:
    sbc b                                         ; $78d0: $98
    ld h, h                                       ; $78d1: $64
    ld b, [hl]                                    ; $78d2: $46
    adc b                                         ; $78d3: $88
    ld d, e                                       ; $78d4: $53
    inc sp                                        ; $78d5: $33
    inc sp                                        ; $78d6: $33
    inc [hl]                                      ; $78d7: $34
    ld h, l                                       ; $78d8: $65
    ld b, d                                       ; $78d9: $42
    nop                                           ; $78da: $00
    ld [de], a                                    ; $78db: $12
    ld b, a                                       ; $78dc: $47
    halt                                          ; $78dd: $76
    ld [hl-], a                                   ; $78de: $32
    ld c, b                                       ; $78df: $48
    call $bdb9                                    ; $78e0: $cd $b9 $bd
    rst $28                                       ; $78e3: $ef
    db $ec                                        ; $78e4: $ec
    call $edde                                    ; $78e5: $cd $de $ed
    res 7, d                                      ; $78e8: $cb $ba
    sbc d                                         ; $78ea: $9a
    cp h                                          ; $78eb: $bc
    cp d                                          ; $78ec: $ba
    halt                                          ; $78ed: $76
    ld h, [hl]                                    ; $78ee: $66
    ld h, h                                       ; $78ef: $64
    jr nz, jr_017_78f2                            ; $78f0: $20 $00

jr_017_78f2:
    inc h                                         ; $78f2: $24
    ld d, h                                       ; $78f3: $54
    ld [hl-], a                                   ; $78f4: $32
    dec h                                         ; $78f5: $25
    ld d, e                                       ; $78f6: $53
    nop                                           ; $78f7: $00
    inc d                                         ; $78f8: $14
    ld h, l                                       ; $78f9: $65
    ld [hl-], a                                   ; $78fa: $32
    ld e, d                                       ; $78fb: $5a
    rst $38                                       ; $78fc: $ff
    cp b                                          ; $78fd: $b8
    sbc e                                         ; $78fe: $9b
    sbc $db                                       ; $78ff: $de $db
    cp h                                          ; $7901: $bc
    call c, $efdd                                 ; $7902: $dc $dd $ef
    db $ed                                        ; $7905: $ed
    cp d                                          ; $7906: $ba
    xor e                                         ; $7907: $ab
    call z, Call_017_65b8                         ; $7908: $cc $b8 $65
    ld d, h                                       ; $790b: $54
    ld b, l                                       ; $790c: $45
    ld h, [hl]                                    ; $790d: $66
    ld b, d                                       ; $790e: $42
    stop                                          ; $790f: $10 $00
    db $10                                        ; $7911: $10
    ld de, $7825                                  ; $7912: $11 $25 $78
    ld h, h                                       ; $7915: $64
    inc hl                                        ; $7916: $23
    ld l, c                                       ; $7917: $69
    sub a                                         ; $7918: $97
    ld d, h                                       ; $7919: $54
    ld d, a                                       ; $791a: $57
    xor e                                         ; $791b: $ab
    xor d                                         ; $791c: $aa
    cp h                                          ; $791d: $bc
    sbc $ff                                       ; $791e: $de $ff
    rst $38                                       ; $7920: $ff
    db $eb                                        ; $7921: $eb
    sbc c                                         ; $7922: $99
    xor e                                         ; $7923: $ab
    xor b                                         ; $7924: $a8
    ld a, b                                       ; $7925: $78
    sbc d                                         ; $7926: $9a
    xor b                                         ; $7927: $a8
    halt                                          ; $7928: $76
    ld a, b                                       ; $7929: $78
    add l                                         ; $792a: $85
    ld hl, $3312                                  ; $792b: $21 $12 $33
    ld [hl-], a                                   ; $792e: $32
    ld [de], a                                    ; $792f: $12
    ld b, [hl]                                    ; $7930: $46
    ld [hl], a                                    ; $7931: $77
    ld h, l                                       ; $7932: $65
    ld h, a                                       ; $7933: $67
    halt                                          ; $7934: $76
    ld d, l                                       ; $7935: $55
    ld a, d                                       ; $7936: $7a
    cp d                                          ; $7937: $ba
    halt                                          ; $7938: $76
    ld a, d                                       ; $7939: $7a
    call $bbec                                    ; $793a: $cd $ec $bb
    xor d                                         ; $793d: $aa
    xor d                                         ; $793e: $aa
    add a                                         ; $793f: $87
    ld h, [hl]                                    ; $7940: $66
    adc d                                         ; $7941: $8a
    cp h                                          ; $7942: $bc
    call z, $a8dc                                 ; $7943: $cc $dc $a8
    ld h, h                                       ; $7946: $64
    ld [hl-], a                                   ; $7947: $32
    db $10                                        ; $7948: $10
    ld bc, $4424                                  ; $7949: $01 $24 $44
    ld a, d                                       ; $794c: $7a
    sbc $ca                                       ; $794d: $de $ca
    adc c                                         ; $794f: $89
    sbc c                                         ; $7950: $99
    add [hl]                                      ; $7951: $86
    jr nc, jr_017_7956                            ; $7952: $30 $02

    ld b, l                                       ; $7954: $45
    ld h, [hl]                                    ; $7955: $66

jr_017_7956:
    ld a, c                                       ; $7956: $79
    cp l                                          ; $7957: $bd
    rst $38                                       ; $7958: $ff
    db $fd                                        ; $7959: $fd
    cp c                                          ; $795a: $b9
    add [hl]                                      ; $795b: $86
    ld d, h                                       ; $795c: $54
    ld [hl-], a                                   ; $795d: $32
    inc hl                                        ; $795e: $23
    ld e, b                                       ; $795f: $58
    cp l                                          ; $7960: $bd
    call c, $cdbb                                 ; $7961: $dc $bb $cd
    ret                                           ; $7964: $c9


    ld h, h                                       ; $7965: $64

Jump_017_7966:
    ld [hl-], a                                   ; $7966: $32
    ld [hl+], a                                   ; $7967: $22
    inc [hl]                                      ; $7968: $34
    ld d, l                                       ; $7969: $55
    ld l, b                                       ; $796a: $68
    xor l                                         ; $796b: $ad
    db $eb                                        ; $796c: $eb
    add [hl]                                      ; $796d: $86
    ld d, h                                       ; $796e: $54
    ld hl, $5513                                  ; $796f: $21 $13 $55
    ld d, h                                       ; $7972: $54
    ld d, a                                       ; $7973: $57
    xor h                                         ; $7974: $ac
    sbc $ee                                       ; $7975: $de $ee
    db $eb                                        ; $7977: $eb
    add [hl]                                      ; $7978: $86
    ld d, [hl]                                    ; $7979: $56
    ld [hl], a                                    ; $797a: $77
    halt                                          ; $797b: $76
    ld d, [hl]                                    ; $797c: $56
    adc d                                         ; $797d: $8a
    call z, $9aa8                                 ; $797e: $cc $a8 $9a
    adc $c9                                       ; $7981: $ce $c9
    ld d, e                                       ; $7983: $53
    ld [hl], $99                                  ; $7984: $36 $99
    ld [hl], l                                    ; $7986: $75

Jump_017_7987:
    ld b, l                                       ; $7987: $45
    ld a, c                                       ; $7988: $79
    add a                                         ; $7989: $87
    ld [hl], a                                    ; $798a: $77
    adc b                                         ; $798b: $88
    ld [hl], h                                    ; $798c: $74
    db $10                                        ; $798d: $10
    inc bc                                        ; $798e: $03
    ld d, l                                       ; $798f: $55
    ld d, l                                       ; $7990: $55
    ld a, d                                       ; $7991: $7a
    call $dddd                                    ; $7992: $cd $dd $dd
    jp z, Jump_017_7698                           ; $7995: $ca $98 $76

    ld d, [hl]                                    ; $7998: $56
    ld h, a                                       ; $7999: $67

Jump_017_799a:
    adc c                                         ; $799a: $89
    xor h                                         ; $799b: $ac
    db $dd                                        ; $799c: $dd
    db $dd                                        ; $799d: $dd
    call c, Call_017_5497                         ; $799e: $dc $97 $54
    ld b, e                                       ; $79a1: $43
    db $10                                        ; $79a2: $10
    ld [de], a                                    ; $79a3: $12
    ld b, [hl]                                    ; $79a4: $46
    adc b                                         ; $79a5: $88
    ld h, l                                       ; $79a6: $65
    ld b, [hl]                                    ; $79a7: $46
    sbc c                                         ; $79a8: $99
    ld [hl], h                                    ; $79a9: $74
    ld [hl+], a                                   ; $79aa: $22
    ld b, [hl]                                    ; $79ab: $46
    ld h, [hl]                                    ; $79ac: $66
    ld h, a                                       ; $79ad: $67
    adc d                                         ; $79ae: $8a
    rst $18                                       ; $79af: $df
    cp $cc                                        ; $79b0: $fe $cc
    db $dd                                        ; $79b2: $dd
    call c, $86a9                                 ; $79b3: $dc $a9 $86
    ld b, e                                       ; $79b6: $43
    ld b, [hl]                                    ; $79b7: $46
    ld [hl], a                                    ; $79b8: $77

Jump_017_79b9:
    sbc e                                         ; $79b9: $9b

Jump_017_79ba:
    db $dd                                        ; $79ba: $dd
    db $db                                        ; $79bb: $db
    sub a                                         ; $79bc: $97
    ld d, h                                       ; $79bd: $54
    ld b, e                                       ; $79be: $43
    stop                                          ; $79bf: $10 $00
    ld [bc], a                                    ; $79c1: $02
    ld d, a                                       ; $79c2: $57
    ld [hl], a                                    ; $79c3: $77
    ld a, b                                       ; $79c4: $78
    xor d                                         ; $79c5: $aa
    sub a                                         ; $79c6: $97
    ld h, l                                       ; $79c7: $65
    ld d, l                                       ; $79c8: $55

Call_017_79c9:
    ld b, h                                       ; $79c9: $44
    ld e, c                                       ; $79ca: $59
    cp h                                          ; $79cb: $bc
    call z, $ffcd                                 ; $79cc: $cc $cd $ff
    db $ec                                        ; $79cf: $ec
    sbc b                                         ; $79d0: $98
    ld [hl], a                                    ; $79d1: $77
    adc b                                         ; $79d2: $88
    add a                                         ; $79d3: $87
    halt                                          ; $79d4: $76
    ld a, c                                       ; $79d5: $79
    cp d                                          ; $79d6: $ba
    xor d                                         ; $79d7: $aa
    sbc b                                         ; $79d8: $98
    add a                                         ; $79d9: $87
    ld h, l                                       ; $79da: $65
    ld sp, $1100                                  ; $79db: $31 $00 $11
    inc hl                                        ; $79de: $23
    ld b, [hl]                                    ; $79df: $46
    adc b                                         ; $79e0: $88
    sbc d                                         ; $79e1: $9a
    cp h                                          ; $79e2: $bc
    jp z, Jump_017_5586                           ; $79e3: $ca $86 $55

    ld h, [hl]                                    ; $79e6: $66
    ld h, [hl]                                    ; $79e7: $66
    ld h, a                                       ; $79e8: $67
    adc d                                         ; $79e9: $8a
    cp h                                          ; $79ea: $bc
    sbc $ff                                       ; $79eb: $de $ff
    db $ec                                        ; $79ed: $ec
    sub a                                         ; $79ee: $97
    ld h, [hl]                                    ; $79ef: $66
    ld h, [hl]                                    ; $79f0: $66
    ld d, l                                       ; $79f1: $55
    ld h, [hl]                                    ; $79f2: $66
    ld a, b                                       ; $79f3: $78
    sbc d                                         ; $79f4: $9a
    cp e                                          ; $79f5: $bb
    xor b                                         ; $79f6: $a8
    ld h, h                                       ; $79f7: $64
    inc sp                                        ; $79f8: $33
    ld [hl-], a                                   ; $79f9: $32
    ld hl, $3501                                  ; $79fa: $21 $01 $35
    ld a, b                                       ; $79fd: $78
    sbc c                                         ; $79fe: $99
    xor d                                         ; $79ff: $aa
    cp d                                          ; $7a00: $ba
    add [hl]                                      ; $7a01: $86
    ld b, h                                       ; $7a02: $44
    ld h, a                                       ; $7a03: $67
    halt                                          ; $7a04: $76
    ld d, a                                       ; $7a05: $57
    sbc h                                         ; $7a06: $9c
    rst $28                                       ; $7a07: $ef
    xor $ee                                       ; $7a08: $ee $ee
    db $ed                                        ; $7a0a: $ed
    cp c                                          ; $7a0b: $b9
    ld [hl], l                                    ; $7a0c: $75
    ld b, l                                       ; $7a0d: $45
    ld h, [hl]                                    ; $7a0e: $66
    ld [hl], a                                    ; $7a0f: $77
    adc b                                         ; $7a10: $88
    sbc d                                         ; $7a11: $9a
    xor c                                         ; $7a12: $a9
    add [hl]                                      ; $7a13: $86
    ld d, [hl]                                    ; $7a14: $56
    ld d, e                                       ; $7a15: $53
    db $10                                        ; $7a16: $10
    ld [bc], a                                    ; $7a17: $02
    ld d, [hl]                                    ; $7a18: $56
    ld h, [hl]                                    ; $7a19: $66
    ld l, b                                       ; $7a1a: $68
    xor h                                         ; $7a1b: $ac
    cp d                                          ; $7a1c: $ba
    add a                                         ; $7a1d: $87
    ld h, [hl]                                    ; $7a1e: $66
    ld d, h                                       ; $7a1f: $54
    inc [hl]                                      ; $7a20: $34
    ld d, a                                       ; $7a21: $57
    adc c                                         ; $7a22: $89
    xor d                                         ; $7a23: $aa
    call $feef                                    ; $7a24: $cd $ef $fe
    jp z, Jump_017_7798                           ; $7a27: $ca $98 $77

    ld h, l                                       ; $7a2a: $65
    ld d, [hl]                                    ; $7a2b: $56
    ld h, a                                       ; $7a2c: $67
    adc c                                         ; $7a2d: $89
    sbc d                                         ; $7a2e: $9a
    xor c                                         ; $7a2f: $a9
    sbc b                                         ; $7a30: $98
    halt                                          ; $7a31: $76
    ld b, e                                       ; $7a32: $43
    ld hl, $3512                                  ; $7a33: $21 $12 $35
    ld h, a                                       ; $7a36: $67
    adc b                                         ; $7a37: $88
    sbc c                                         ; $7a38: $99
    sbc c                                         ; $7a39: $99
    add [hl]                                      ; $7a3a: $86
    ld b, e                                       ; $7a3b: $43
    inc sp                                        ; $7a3c: $33
    ld b, l                                       ; $7a3d: $45
    ld h, [hl]                                    ; $7a3e: $66
    ld a, c                                       ; $7a3f: $79
    cp l                                          ; $7a40: $bd
    rst $38                                       ; $7a41: $ff
    db $ed                                        ; $7a42: $ed
    res 5, c                                      ; $7a43: $cb $a9
    sbc b                                         ; $7a45: $98
    ld h, l                                       ; $7a46: $65
    ld d, l                                       ; $7a47: $55
    ld l, b                                       ; $7a48: $68
    adc c                                         ; $7a49: $89
    xor e                                         ; $7a4a: $ab
    sbc $db                                       ; $7a4b: $de $db
    sub a                                         ; $7a4d: $97
    ld h, l                                       ; $7a4e: $65
    ld b, e                                       ; $7a4f: $43
    ld [hl+], a                                   ; $7a50: $22
    ld [hl+], a                                   ; $7a51: $22
    ld [hl+], a                                   ; $7a52: $22
    inc [hl]                                      ; $7a53: $34
    ld h, a                                       ; $7a54: $67
    adc b                                         ; $7a55: $88
    ld [hl], a                                    ; $7a56: $77
    ld a, b                                       ; $7a57: $78
    add a                                         ; $7a58: $87
    ld b, e                                       ; $7a59: $43
    ld b, [hl]                                    ; $7a5a: $46
    ld a, b                                       ; $7a5b: $78
    adc c                                         ; $7a5c: $89
    xor e                                         ; $7a5d: $ab
    cp e                                          ; $7a5e: $bb
    cp e                                          ; $7a5f: $bb
    call $97db                                    ; $7a60: $cd $db $97
    ld a, c                                       ; $7a63: $79
    xor e                                         ; $7a64: $ab
    xor c                                         ; $7a65: $a9
    ld [hl], a                                    ; $7a66: $77
    adc c                                         ; $7a67: $89
    cp e                                          ; $7a68: $bb
    xor c                                         ; $7a69: $a9
    add a                                         ; $7a6a: $87
    ld h, h                                       ; $7a6b: $64
    inc sp                                        ; $7a6c: $33
    ld [hl+], a                                   ; $7a6d: $22
    db $10                                        ; $7a6e: $10
    ld bc, $5623                                  ; $7a6f: $01 $23 $56
    adc d                                         ; $7a72: $8a
    cp e                                          ; $7a73: $bb
    cp e                                          ; $7a74: $bb
    cp d                                          ; $7a75: $ba
    sbc b                                         ; $7a76: $98
    halt                                          ; $7a77: $76
    ld d, l                                       ; $7a78: $55
    ld d, [hl]                                    ; $7a79: $56
    adc e                                         ; $7a7a: $8b
    db $dd                                        ; $7a7b: $dd
    sbc $ff                                       ; $7a7c: $de $ff
    db $fd                                        ; $7a7e: $fd
    and a                                         ; $7a7f: $a7
    add [hl]                                      ; $7a80: $86
    ld b, h                                       ; $7a81: $44
    ld b, h                                       ; $7a82: $44
    ld b, l                                       ; $7a83: $45
    ld d, l                                       ; $7a84: $55
    ld h, [hl]                                    ; $7a85: $66
    ld h, a                                       ; $7a86: $67
    ld h, l                                       ; $7a87: $65
    ld d, l                                       ; $7a88: $55
    ld b, e                                       ; $7a89: $43
    ld hl, $4512                                  ; $7a8a: $21 $12 $45
    ld d, l                                       ; $7a8d: $55
    ld l, b                                       ; $7a8e: $68
    cp h                                          ; $7a8f: $bc
    res 5, e                                      ; $7a90: $cb $ab
    sbc $ed                                       ; $7a92: $de $ed
    cp c                                          ; $7a94: $b9
    adc c                                         ; $7a95: $89
    xor e                                         ; $7a96: $ab
    sbc $ed                                       ; $7a97: $de $ed
    jp z, $ccab                                   ; $7a99: $ca $ab $cc

    sub [hl]                                      ; $7a9c: $96
    ld b, h                                       ; $7a9d: $44
    ld b, h                                       ; $7a9e: $44
    inc sp                                        ; $7a9f: $33
    ld hl, $1300                                  ; $7aa0: $21 $00 $13
    ld b, h                                       ; $7aa3: $44
    inc [hl]                                      ; $7aa4: $34
    ld b, l                                       ; $7aa5: $45
    ld h, [hl]                                    ; $7aa6: $66
    ld b, h                                       ; $7aa7: $44
    ld [hl-], a                                   ; $7aa8: $32
    dec h                                         ; $7aa9: $25
    adc d                                         ; $7aaa: $8a
    xor c                                         ; $7aab: $a9
    ld [hl], a                                    ; $7aac: $77
    sbc e                                         ; $7aad: $9b
    rst $28                                       ; $7aae: $ef
    db $ed                                        ; $7aaf: $ed
    db $dd                                        ; $7ab0: $dd
    adc $fe                                       ; $7ab1: $ce $fe
    xor $dc                                       ; $7ab3: $ee $dc
    xor b                                         ; $7ab5: $a8
    adc c                                         ; $7ab6: $89
    xor c                                         ; $7ab7: $a9

Call_017_7ab8:
    adc c                                         ; $7ab8: $89
    sub a                                         ; $7ab9: $97
    ld d, e                                       ; $7aba: $53
    inc hl                                        ; $7abb: $23
    ld h, a                                       ; $7abc: $67
    ld h, h                                       ; $7abd: $64
    inc hl                                        ; $7abe: $23
    ld e, b                                       ; $7abf: $58
    add [hl]                                      ; $7ac0: $86
    ld sp, $2112                                  ; $7ac1: $31 $12 $21
    nop                                           ; $7ac4: $00
    inc hl                                        ; $7ac5: $23
    ld d, [hl]                                    ; $7ac6: $56
    ld a, b                                       ; $7ac7: $78
    sbc d                                         ; $7ac8: $9a
    xor b                                         ; $7ac9: $a8
    adc b                                         ; $7aca: $88
    xor h                                         ; $7acb: $ac
    rst $28                                       ; $7acc: $ef
    db $db                                        ; $7acd: $db
    xor d                                         ; $7ace: $aa
    cp [hl]                                       ; $7acf: $be
    rst $38                                       ; $7ad0: $ff
    ret                                           ; $7ad1: $c9


    adc d                                         ; $7ad2: $8a
    cp c                                          ; $7ad3: $b9
    ld h, e                                       ; $7ad4: $63
    ld [hl], $9a                                  ; $7ad5: $36 $9a
    and a                                         ; $7ad7: $a7
    ld d, l                                       ; $7ad8: $55
    ld a, b                                       ; $7ad9: $78
    sbc c                                         ; $7ada: $99
    add a                                         ; $7adb: $87
    ld h, h                                       ; $7adc: $64
    jr nz, jr_017_7ae0                            ; $7add: $20 $01

    inc [hl]                                      ; $7adf: $34

jr_017_7ae0:
    ld [hl-], a                                   ; $7ae0: $32
    ld [de], a                                    ; $7ae1: $12
    ld b, a                                       ; $7ae2: $47
    sbc h                                         ; $7ae3: $9c
    res 3, c                                      ; $7ae4: $cb $99
    sbc c                                         ; $7ae6: $99
    add a                                         ; $7ae7: $87
    ld h, a                                       ; $7ae8: $67
    ld a, b                                       ; $7ae9: $78
    sbc c                                         ; $7aea: $99
    sbc d                                         ; $7aeb: $9a
    cp l                                          ; $7aec: $bd
    db $ed                                        ; $7aed: $ed
    res 3, d                                      ; $7aee: $cb $9a
    call z, Call_017_76ba                         ; $7af0: $cc $ba $76
    ld l, b                                       ; $7af3: $68
    add a                                         ; $7af4: $87
    ld h, e                                       ; $7af5: $63
    ld de, $5523                                  ; $7af6: $11 $23 $55
    ld b, e                                       ; $7af9: $43
    ld b, [hl]                                    ; $7afa: $46
    adc d                                         ; $7afb: $8a
    and a                                         ; $7afc: $a7
    ld [hl-], a                                   ; $7afd: $32
    ld b, a                                       ; $7afe: $47
    adc b                                         ; $7aff: $88
    add a                                         ; $7b00: $87
    ld a, b                                       ; $7b01: $78
    sbc b                                         ; $7b02: $98
    ld [hl], a                                    ; $7b03: $77
    sbc h                                         ; $7b04: $9c
    rst $38                                       ; $7b05: $ff
    db $eb                                        ; $7b06: $eb
    cp h                                          ; $7b07: $bc
    res 2, a                                      ; $7b08: $cb $97
    ld [hl], a                                    ; $7b0a: $77
    ld [hl], h                                    ; $7b0b: $74
    inc sp                                        ; $7b0c: $33
    ld l, c                                       ; $7b0d: $69
    xor d                                         ; $7b0e: $aa
    xor d                                         ; $7b0f: $aa
    add l                                         ; $7b10: $85
    ld [hl-], a                                   ; $7b11: $32
    ld [hl+], a                                   ; $7b12: $22
    ld de, $6813                                  ; $7b13: $11 $13 $68
    sbc c                                         ; $7b16: $99
    sbc d                                         ; $7b17: $9a
    cp h                                          ; $7b18: $bc
    and a                                         ; $7b19: $a7
    ld h, a                                       ; $7b1a: $67
    adc c                                         ; $7b1b: $89
    ld h, d                                       ; $7b1c: $62
    inc bc                                        ; $7b1d: $03
    ld a, c                                       ; $7b1e: $79
    xor e                                         ; $7b1f: $ab
    cp l                                          ; $7b20: $bd
    call c, $8aa8                                 ; $7b21: $dc $a8 $8a
    call $42c8                                    ; $7b24: $cd $c8 $42
    ld [hl], $99                                  ; $7b27: $36 $99
    halt                                          ; $7b29: $76
    ld a, d                                       ; $7b2a: $7a
    db $dd                                        ; $7b2b: $dd
    ret z                                         ; $7b2c: $c8

    ld d, e                                       ; $7b2d: $53
    inc sp                                        ; $7b2e: $33
    ld b, h                                       ; $7b2f: $44
    inc sp                                        ; $7b30: $33
    ld e, b                                       ; $7b31: $58
    xor d                                         ; $7b32: $aa
    cp e                                          ; $7b33: $bb
    call Call_017_62c9                            ; $7b34: $cd $c9 $62
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    ld [de], a                                    ; $7b39: $12
    ld [hl], $9b                                  ; $7b3a: $36 $9b
    cp h                                          ; $7b3c: $bc
    rst $18                                       ; $7b3d: $df
    db $fd                                        ; $7b3e: $fd
    xor b                                         ; $7b3f: $a8
    add [hl]                                      ; $7b40: $86
    ld d, h                                       ; $7b41: $54
    inc sp                                        ; $7b42: $33
    ld d, a                                       ; $7b43: $57
    sbc h                                         ; $7b44: $9c
    db $dd                                        ; $7b45: $dd
    call c, $ffce                                 ; $7b46: $dc $ce $ff
    or l                                          ; $7b49: $b5
    db $10                                        ; $7b4a: $10
    ld [bc], a                                    ; $7b4b: $02
    inc [hl]                                      ; $7b4c: $34
    ld b, h                                       ; $7b4d: $44
    ld d, [hl]                                    ; $7b4e: $56
    sbc e                                         ; $7b4f: $9b
    cp e                                          ; $7b50: $bb
    sub a                                         ; $7b51: $97
    ld d, h                                       ; $7b52: $54
    inc sp                                        ; $7b53: $33
    inc [hl]                                      ; $7b54: $34
    ld b, e                                       ; $7b55: $43
    inc [hl]                                      ; $7b56: $34
    ld h, a                                       ; $7b57: $67
    adc d                                         ; $7b58: $8a
    cp h                                          ; $7b59: $bc
    db $dd                                        ; $7b5a: $dd
    cp b                                          ; $7b5b: $b8
    halt                                          ; $7b5c: $76
    ld h, [hl]                                    ; $7b5d: $66
    ld h, l                                       ; $7b5e: $65
    ld e, b                                       ; $7b5f: $58
    cp [hl]                                       ; $7b60: $be

Call_017_7b61:
    rst $38                                       ; $7b61: $ff
    rst $28                                       ; $7b62: $ef
    db $ed                                        ; $7b63: $ed

Jump_017_7b64:
    cp d                                          ; $7b64: $ba
    ld [hl], l                                    ; $7b65: $75
    inc sp                                        ; $7b66: $33
    ld [hl+], a                                   ; $7b67: $22
    dec [hl]                                      ; $7b68: $35
    ld h, a                                       ; $7b69: $67
    adc c                                         ; $7b6a: $89
    cp l                                          ; $7b6b: $bd
    db $db                                        ; $7b6c: $db
    sub [hl]                                      ; $7b6d: $96
    ld b, e                                       ; $7b6e: $43
    ld hl, $0300                                  ; $7b6f: $21 $00 $03
    ld d, [hl]                                    ; $7b72: $56
    adc d                                         ; $7b73: $8a
    adc $ff                                       ; $7b74: $ce $ff
    call c, $86ba                                 ; $7b76: $dc $ba $86
    ld b, e                                       ; $7b79: $43
    ld [hl-], a                                   ; $7b7a: $32
    dec [hl]                                      ; $7b7b: $35
    ld l, b                                       ; $7b7c: $68
    xor h                                         ; $7b7d: $ac
    rst $28                                       ; $7b7e: $ef
    db $fc                                        ; $7b7f: $fc
    sub a                                         ; $7b80: $97
    ld h, [hl]                                    ; $7b81: $66
    ld h, [hl]                                    ; $7b82: $66
    ld b, e                                       ; $7b83: $43
    ld b, l                                       ; $7b84: $45
    ld l, b                                       ; $7b85: $68
    sbc c                                         ; $7b86: $99
    sbc c                                         ; $7b87: $99
    xor d                                         ; $7b88: $aa
    sbc b                                         ; $7b89: $98
    ld h, e                                       ; $7b8a: $63
    ld hl, $4622                                  ; $7b8b: $21 $22 $46
    ld a, b                                       ; $7b8e: $78
    xor e                                         ; $7b8f: $ab
    cp e                                          ; $7b90: $bb
    cp d                                          ; $7b91: $ba
    sub a                                         ; $7b92: $97
    ld d, h                                       ; $7b93: $54
    ld b, h                                       ; $7b94: $44
    ld d, l                                       ; $7b95: $55
    ld d, h                                       ; $7b96: $54
    ld b, l                                       ; $7b97: $45
    ld a, d                                       ; $7b98: $7a
    rst $18                                       ; $7b99: $df
    cp $cb                                        ; $7b9a: $fe $cb
    xor c                                         ; $7b9c: $a9
    add a                                         ; $7b9d: $87
    ld d, h                                       ; $7b9e: $54
    ld b, h                                       ; $7b9f: $44
    ld d, [hl]                                    ; $7ba0: $56
    adc c                                         ; $7ba1: $89
    sbc d                                         ; $7ba2: $9a
    cp e                                          ; $7ba3: $bb
    cp d                                          ; $7ba4: $ba
    sub a                                         ; $7ba5: $97
    ld h, l                                       ; $7ba6: $65
    ld sp, $1300                                  ; $7ba7: $31 $00 $13
    ld d, a                                       ; $7baa: $57
    sbc c                                         ; $7bab: $99
    sbc c                                         ; $7bac: $99
    xor e                                         ; $7bad: $ab
    cp d                                          ; $7bae: $ba
    add [hl]                                      ; $7baf: $86
    ld b, e                                       ; $7bb0: $43
    inc sp                                        ; $7bb1: $33
    inc [hl]                                      ; $7bb2: $34
    ld d, [hl]                                    ; $7bb3: $56
    sbc l                                         ; $7bb4: $9d
    rst $38                                       ; $7bb5: $ff
    xor $de                                       ; $7bb6: $ee $de
    db $ec                                        ; $7bb8: $ec
    sub a                                         ; $7bb9: $97
    ld h, l                                       ; $7bba: $65
    ld d, l                                       ; $7bbb: $55
    ld h, [hl]                                    ; $7bbc: $66
    ld a, c                                       ; $7bbd: $79
    xor e                                         ; $7bbe: $ab
    cp d                                          ; $7bbf: $ba
    xor d                                         ; $7bc0: $aa
    sbc b                                         ; $7bc1: $98
    ld [hl], l                                    ; $7bc2: $75
    ld sp, $1200                                  ; $7bc3: $31 $00 $12
    ld b, l                                       ; $7bc6: $45
    ld h, [hl]                                    ; $7bc7: $66
    ld a, b                                       ; $7bc8: $78
    xor e                                         ; $7bc9: $ab
    cp d                                          ; $7bca: $ba
    sub a                                         ; $7bcb: $97
    ld d, l                                       ; $7bcc: $55
    ld d, l                                       ; $7bcd: $55
    ld h, [hl]                                    ; $7bce: $66
    ld h, a                                       ; $7bcf: $67
    sbc e                                         ; $7bd0: $9b
    call $eeef                                    ; $7bd1: $cd $ef $ee
    call c, Call_017_76a8                         ; $7bd4: $dc $a8 $76
    ld d, h                                       ; $7bd7: $54
    inc sp                                        ; $7bd8: $33
    ld b, [hl]                                    ; $7bd9: $46
    sbc d                                         ; $7bda: $9a
    cp e                                          ; $7bdb: $bb
    cp d                                          ; $7bdc: $ba
    sbc c                                         ; $7bdd: $99
    ld [hl], l                                    ; $7bde: $75
    ld [hl-], a                                   ; $7bdf: $32
    ld de, $2311                                  ; $7be0: $11 $11 $23
    ld d, a                                       ; $7be3: $57
    xor e                                         ; $7be4: $ab
    call z, $98ba                                 ; $7be5: $cc $ba $98
    ld h, e                                       ; $7be8: $63
    inc hl                                        ; $7be9: $23
    dec [hl]                                      ; $7bea: $35
    ld h, a                                       ; $7beb: $67
    sbc e                                         ; $7bec: $9b
    call $feef                                    ; $7bed: $cd $ef $fe
    res 3, b                                      ; $7bf0: $cb $98
    halt                                          ; $7bf2: $76
    ld d, h                                       ; $7bf3: $54
    ld b, h                                       ; $7bf4: $44
    ld d, a                                       ; $7bf5: $57
    sbc c                                         ; $7bf6: $99
    xor d                                         ; $7bf7: $aa
    sbc b                                         ; $7bf8: $98
    adc b                                         ; $7bf9: $88
    halt                                          ; $7bfa: $76
    ld b, c                                       ; $7bfb: $41
    nop                                           ; $7bfc: $00
    ld [bc], a                                    ; $7bfd: $02
    ld b, [hl]                                    ; $7bfe: $46
    sbc e                                         ; $7bff: $9b
    sbc $ed                                       ; $7c00: $de $ed
    res 5, c                                      ; $7c02: $cb $a9
    halt                                          ; $7c04: $76
    ld [hl-], a                                   ; $7c05: $32
    inc hl                                        ; $7c06: $23
    ld e, b                                       ; $7c07: $58
    sbc e                                         ; $7c08: $9b
    call $ecee                                    ; $7c09: $cd $ee $ec
    xor b                                         ; $7c0c: $a8
    ld h, e                                       ; $7c0d: $63
    ld hl, $1211                                  ; $7c0e: $21 $11 $12
    ld b, [hl]                                    ; $7c11: $46
    adc e                                         ; $7c12: $8b
    call $badd                                    ; $7c13: $cd $dd $ba
    add [hl]                                      ; $7c16: $86
    ld d, h                                       ; $7c17: $54
    ld hl, $4712                                  ; $7c18: $21 $12 $47
    xor h                                         ; $7c1b: $ac
    call c, $decc                                 ; $7c1c: $dc $cc $de
    jp c, Jump_000_2284                           ; $7c1f: $da $84 $22

    dec [hl]                                      ; $7c22: $35
    ld h, [hl]                                    ; $7c23: $66
    ld a, c                                       ; $7c24: $79
    cp l                                          ; $7c25: $bd
    cp $ca                                        ; $7c26: $fe $ca
    sbc b                                         ; $7c28: $98
    ld h, h                                       ; $7c29: $64
    jr nz, jr_017_7c2d                            ; $7c2a: $20 $01

    dec [hl]                                      ; $7c2c: $35

jr_017_7c2d:
    ld d, [hl]                                    ; $7c2d: $56
    adc c                                         ; $7c2e: $89
    xor e                                         ; $7c2f: $ab
    cp d                                          ; $7c30: $ba
    sbc b                                         ; $7c31: $98
    ld h, l                                       ; $7c32: $65
    ld b, e                                       ; $7c33: $43
    dec [hl]                                      ; $7c34: $35
    ld h, a                                       ; $7c35: $67
    adc c                                         ; $7c36: $89
    cp h                                          ; $7c37: $bc
    xor $b9                                       ; $7c38: $ee $b9
    adc b                                         ; $7c3a: $88
    halt                                          ; $7c3b: $76
    ld b, e                                       ; $7c3c: $43
    inc sp                                        ; $7c3d: $33
    ld b, [hl]                                    ; $7c3e: $46
    adc d                                         ; $7c3f: $8a
    call z, $ccbb                                 ; $7c40: $cc $bb $cc
    call z, Call_017_42a7                         ; $7c43: $cc $a7 $42
    ld [de], a                                    ; $7c46: $12
    ld b, [hl]                                    ; $7c47: $46
    adc b                                         ; $7c48: $88
    sbc d                                         ; $7c49: $9a
    call $a9cb                                    ; $7c4a: $cd $cb $a9
    add a                                         ; $7c4d: $87
    jr nc, jr_017_7c51                            ; $7c4e: $30 $01

    inc hl                                        ; $7c50: $23

jr_017_7c51:
    ld b, l                                       ; $7c51: $45
    ld a, d                                       ; $7c52: $7a
    call $a9cb                                    ; $7c53: $cd $cb $a9
    sbc b                                         ; $7c56: $98
    ld [hl], h                                    ; $7c57: $74
    ld hl, $4611                                  ; $7c58: $21 $11 $46
    sbc d                                         ; $7c5b: $9a
    cp e                                          ; $7c5c: $bb
    xor e                                         ; $7c5d: $ab
    call $b8ed                                    ; $7c5e: $cd $ed $b8
    ld [hl], a                                    ; $7c61: $77
    adc b                                         ; $7c62: $88
    add a                                         ; $7c63: $87
    ld a, c                                       ; $7c64: $79
    cp h                                          ; $7c65: $bc
    cp d                                          ; $7c66: $ba
    xor c                                         ; $7c67: $a9
    ld [hl], l                                    ; $7c68: $75
    ld [hl-], a                                   ; $7c69: $32
    dec [hl]                                      ; $7c6a: $35
    ld h, h                                       ; $7c6b: $64
    ld [hl-], a                                   ; $7c6c: $32
    dec [hl]                                      ; $7c6d: $35
    ld a, b                                       ; $7c6e: $78
    adc b                                         ; $7c6f: $88
    add [hl]                                      ; $7c70: $86
    ld h, [hl]                                    ; $7c71: $66
    ld h, l                                       ; $7c72: $65

Jump_017_7c73:
    ld b, h                                       ; $7c73: $44
    ld b, h                                       ; $7c74: $44
    ld b, l                                       ; $7c75: $45
    adc e                                         ; $7c76: $8b
    xor $cc                                       ; $7c77: $ee $cc
    res 5, d                                      ; $7c79: $cb $aa
    sbc b                                         ; $7c7b: $98
    halt                                          ; $7c7c: $76
    ld h, [hl]                                    ; $7c7d: $66
    ld h, a                                       ; $7c7e: $67
    sbc e                                         ; $7c7f: $9b
    db $dd                                        ; $7c80: $dd
    db $db                                        ; $7c81: $db
    sub a                                         ; $7c82: $97
    ld h, a                                       ; $7c83: $67
    ld [hl], a                                    ; $7c84: $77
    ld h, l                                       ; $7c85: $65
    ld b, h                                       ; $7c86: $44
    ld sp, $2501                                  ; $7c87: $31 $01 $25
    adc c                                         ; $7c8a: $89
    ld [hl], l                                    ; $7c8b: $75
    ld l, c                                       ; $7c8c: $69
    call z, $5896                                 ; $7c8d: $cc $96 $58
    cp l                                          ; $7c90: $bd
    cp b                                          ; $7c91: $b8
    ld a, c                                       ; $7c92: $79
    adc $db                                       ; $7c93: $ce $db
    adc b                                         ; $7c95: $88
    sbc e                                         ; $7c96: $9b
    and a                                         ; $7c97: $a7
    ld b, e                                       ; $7c98: $43
    ld b, l                                       ; $7c99: $45
    ld a, b                                       ; $7c9a: $78
    add a                                         ; $7c9b: $87
    ld d, e                                       ; $7c9c: $53
    ld d, l                                       ; $7c9d: $55
    inc [hl]                                      ; $7c9e: $34
    ld d, [hl]                                    ; $7c9f: $56
    adc d                                         ; $7ca0: $8a
    sub [hl]                                      ; $7ca1: $96
    ld b, d                                       ; $7ca2: $42
    inc [hl]                                      ; $7ca3: $34
    inc sp                                        ; $7ca4: $33
    inc [hl]                                      ; $7ca5: $34
    ld l, c                                       ; $7ca6: $69
    sbc b                                         ; $7ca7: $98
    adc e                                         ; $7ca8: $8b
    rst $18                                       ; $7ca9: $df
    db $fc                                        ; $7caa: $fc
    sbc d                                         ; $7cab: $9a
    cp c                                          ; $7cac: $b9
    halt                                          ; $7cad: $76
    ld a, c                                       ; $7cae: $79
    call z, $89a8                                 ; $7caf: $cc $a8 $89
    cp h                                          ; $7cb2: $bc
    res 5, d                                      ; $7cb3: $cb $aa
    sbc c                                         ; $7cb5: $99
    xor c                                         ; $7cb6: $a9
    ld [hl], l                                    ; $7cb7: $75
    jr nc, jr_017_7cba                            ; $7cb8: $30 $00

jr_017_7cba:
    ld [de], a                                    ; $7cba: $12
    ld b, [hl]                                    ; $7cbb: $46
    ld a, b                                       ; $7cbc: $78
    sbc c                                         ; $7cbd: $99
    halt                                          ; $7cbe: $76
    ld d, l                                       ; $7cbf: $55
    ld b, e                                       ; $7cc0: $43
    ld [hl+], a                                   ; $7cc1: $22
    ld [hl+], a                                   ; $7cc2: $22
    inc hl                                        ; $7cc3: $23
    ld e, b                                       ; $7cc4: $58
    adc $ec                                       ; $7cc5: $ce $ec
    cp h                                          ; $7cc7: $bc
    rst $28                                       ; $7cc8: $ef
    reti                                          ; $7cc9: $d9


    ld [hl], l                                    ; $7cca: $75
    ld l, c                                       ; $7ccb: $69
    cp e                                          ; $7ccc: $bb
    cp d                                          ; $7ccd: $ba
    xor d                                         ; $7cce: $aa
    cp e                                          ; $7ccf: $bb
    cp d                                          ; $7cd0: $ba
    add a                                         ; $7cd1: $87
    ld h, a                                       ; $7cd2: $67
    adc c                                         ; $7cd3: $89
    sbc b                                         ; $7cd4: $98
    ld [hl], a                                    ; $7cd5: $77
    adc d                                         ; $7cd6: $8a
    cp e                                          ; $7cd7: $bb
    sub a                                         ; $7cd8: $97
    ld d, e                                       ; $7cd9: $53
    ld hl, $0000                                  ; $7cda: $21 $00 $00
    ld [bc], a                                    ; $7cdd: $02
    dec [hl]                                      ; $7cde: $35
    ld l, b                                       ; $7cdf: $68
    xor h                                         ; $7ce0: $ac
    db $dd                                        ; $7ce1: $dd
    ret                                           ; $7ce2: $c9


    halt                                          ; $7ce3: $76
    ld h, l                                       ; $7ce4: $65
    ld b, e                                       ; $7ce5: $43
    inc sp                                        ; $7ce6: $33
    ld l, d                                       ; $7ce7: $6a
    call $dddd                                    ; $7ce8: $cd $dd $dd
    xor $dc                                       ; $7ceb: $ee $dc
    and a                                         ; $7ced: $a7
    ld d, h                                       ; $7cee: $54
    ld d, [hl]                                    ; $7cef: $56
    adc b                                         ; $7cf0: $88
    sbc d                                         ; $7cf1: $9a
    xor d                                         ; $7cf2: $aa
    sbc c                                         ; $7cf3: $99
    xor d                                         ; $7cf4: $aa
    add h                                         ; $7cf5: $84
    jr nz, jr_017_7d0c                            ; $7cf6: $20 $14

    ld d, [hl]                                    ; $7cf8: $56
    ld h, [hl]                                    ; $7cf9: $66
    ld h, [hl]                                    ; $7cfa: $66
    ld a, b                                       ; $7cfb: $78
    add a                                         ; $7cfc: $87
    ld a, b                                       ; $7cfd: $78
    sbc c                                         ; $7cfe: $99
    ld [hl], h                                    ; $7cff: $74
    ld [hl+], a                                   ; $7d00: $22
    dec [hl]                                      ; $7d01: $35
    ld [hl], a                                    ; $7d02: $77
    adc c                                         ; $7d03: $89
    cp l                                          ; $7d04: $bd
    rst $38                                       ; $7d05: $ff
    cp $db                                        ; $7d06: $fe $db
    sub a                                         ; $7d08: $97
    ld h, l                                       ; $7d09: $65
    ld l, b                                       ; $7d0a: $68
    add a                                         ; $7d0b: $87

jr_017_7d0c:
    ld h, [hl]                                    ; $7d0c: $66
    ld a, c                                       ; $7d0d: $79
    sbc c                                         ; $7d0e: $99
    sbc b                                         ; $7d0f: $98
    add [hl]                                      ; $7d10: $86
    ld b, d                                       ; $7d11: $42
    ld de, $4523                                  ; $7d12: $11 $23 $45
    ld d, h                                       ; $7d15: $54
    ld l, b                                       ; $7d16: $68
    cp e                                          ; $7d17: $bb
    xor b                                         ; $7d18: $a8
    ld [hl], a                                    ; $7d19: $77
    ld [hl], a                                    ; $7d1a: $77
    halt                                          ; $7d1b: $76
    ld d, l                                       ; $7d1c: $55
    ld l, d                                       ; $7d1d: $6a
    rst $18                                       ; $7d1e: $df
    db $ed                                        ; $7d1f: $ed
    sbc $fe                                       ; $7d20: $de $fe
    jp z, $97aa                                   ; $7d22: $ca $aa $97

    ld b, h                                       ; $7d25: $44
    ld d, l                                       ; $7d26: $55
    ld h, a                                       ; $7d27: $67
    ld [hl], a                                    ; $7d28: $77
    ld a, b                                       ; $7d29: $78
    sbc c                                         ; $7d2a: $99
    sub [hl]                                      ; $7d2b: $96
    jr nc, jr_017_7d2e                            ; $7d2c: $30 $00

jr_017_7d2e:
    ld [de], a                                    ; $7d2e: $12
    ld hl, $4612                                  ; $7d2f: $21 $12 $46
    sbc e                                         ; $7d32: $9b
    cp d                                          ; $7d33: $ba
    sbc c                                         ; $7d34: $99
    adc b                                         ; $7d35: $88
    adc b                                         ; $7d36: $88
    adc c                                         ; $7d37: $89
    xor d                                         ; $7d38: $aa
    cp h                                          ; $7d39: $bc
    rst $28                                       ; $7d3a: $ef
    rst $38                                       ; $7d3b: $ff
    cp $ed                                        ; $7d3c: $fe $ed
    ret                                           ; $7d3e: $c9


    ld [hl], l                                    ; $7d3f: $75
    ld b, h                                       ; $7d40: $44
    ld b, h                                       ; $7d41: $44
    ld b, l                                       ; $7d42: $45
    ld l, b                                       ; $7d43: $68
    adc b                                         ; $7d44: $88
    add a                                         ; $7d45: $87
    ld d, l                                       ; $7d46: $55
    ld b, h                                       ; $7d47: $44
    ld sp, $1300                                  ; $7d48: $31 $00 $13
    ld b, h                                       ; $7d4b: $44
    ld b, l                                       ; $7d4c: $45
    ld l, c                                       ; $7d4d: $69
    xor d                                         ; $7d4e: $aa
    xor d                                         ; $7d4f: $aa
    xor e                                         ; $7d50: $ab
    cp e                                          ; $7d51: $bb
    cp e                                          ; $7d52: $bb
    cp e                                          ; $7d53: $bb
    cp h                                          ; $7d54: $bc
    call z, $cbdc                                 ; $7d55: $cc $dc $cb
    call $b8dc                                    ; $7d58: $cd $dc $b8
    halt                                          ; $7d5b: $76
    ld h, a                                       ; $7d5c: $67
    ld [hl], a                                    ; $7d5d: $77
    ld h, h                                       ; $7d5e: $64
    ld hl, $3412                                  ; $7d5f: $21 $12 $34
    ld b, e                                       ; $7d62: $43
    ld hl, $4513                                  ; $7d63: $21 $13 $45
    ld b, e                                       ; $7d66: $43
    dec [hl]                                      ; $7d67: $35
    ld a, c                                       ; $7d68: $79
    xor d                                         ; $7d69: $aa
    sbc b                                         ; $7d6a: $98
    adc c                                         ; $7d6b: $89
    xor e                                         ; $7d6c: $ab
    xor c                                         ; $7d6d: $a9
    adc d                                         ; $7d6e: $8a
    adc $fd                                       ; $7d6f: $ce $fd
    call $fdff                                    ; $7d71: $cd $ff $fd
    res 2, a                                      ; $7d74: $cb $97
    ld h, [hl]                                    ; $7d76: $66
    ld h, [hl]                                    ; $7d77: $66
    ld d, e                                       ; $7d78: $53
    ld [de], a                                    ; $7d79: $12
    dec [hl]                                      ; $7d7a: $35
    ld d, l                                       ; $7d7b: $55
    ld d, [hl]                                    ; $7d7c: $56
    ld [hl], a                                    ; $7d7d: $77
    ld d, e                                       ; $7d7e: $53
    ld de, $3323                                  ; $7d7f: $11 $23 $33
    inc [hl]                                      ; $7d82: $34
    ld d, l                                       ; $7d83: $55
    ld a, c                                       ; $7d84: $79
    xor d                                         ; $7d85: $aa
    sbc b                                         ; $7d86: $98
    adc c                                         ; $7d87: $89
    sbc d                                         ; $7d88: $9a
    xor d                                         ; $7d89: $aa
    xor d                                         ; $7d8a: $aa
    sbc e                                         ; $7d8b: $9b
    call $ffef                                    ; $7d8c: $cd $ef $ff
    jp c, Jump_017_6687                           ; $7d8f: $da $87 $66

    ld h, [hl]                                    ; $7d92: $66
    ld h, a                                       ; $7d93: $67
    ld [hl], a                                    ; $7d94: $77
    ld [hl], a                                    ; $7d95: $77
    ld h, [hl]                                    ; $7d96: $66
    adc b                                         ; $7d97: $88
    add [hl]                                      ; $7d98: $86
    ld sp, $1111                                  ; $7d99: $31 $11 $11
    nop                                           ; $7d9c: $00
    ld [de], a                                    ; $7d9d: $12
    dec [hl]                                      ; $7d9e: $35
    ld [hl], a                                    ; $7d9f: $77
    adc d                                         ; $7da0: $8a
    xor c                                         ; $7da1: $a9
    adc c                                         ; $7da2: $89
    xor e                                         ; $7da3: $ab
    db $dd                                        ; $7da4: $dd
    res 7, h                                      ; $7da5: $cb $bc
    rst $28                                       ; $7da7: $ef
    db $fd                                        ; $7da8: $fd
    jp z, Jump_017_7798                           ; $7da9: $ca $98 $77

    ld h, a                                       ; $7dac: $67
    adc b                                         ; $7dad: $88
    adc b                                         ; $7dae: $88
    sbc c                                         ; $7daf: $99
    xor d                                         ; $7db0: $aa
    add a                                         ; $7db1: $87
    ld d, h                                       ; $7db2: $54
    ld [hl-], a                                   ; $7db3: $32
    db $10                                        ; $7db4: $10
    ld bc, $4424                                  ; $7db5: $01 $24 $44
    ld d, a                                       ; $7db8: $57
    sbc d                                         ; $7db9: $9a
    cp d                                          ; $7dba: $ba
    sbc b                                         ; $7dbb: $98
    sbc d                                         ; $7dbc: $9a
    sbc b                                         ; $7dbd: $98
    add a                                         ; $7dbe: $87
    adc b                                         ; $7dbf: $88
    adc c                                         ; $7dc0: $89
    xor h                                         ; $7dc1: $ac
    sbc $dc                                       ; $7dc2: $de $dc
    xor c                                         ; $7dc4: $a9
    adc c                                         ; $7dc5: $89
    xor c                                         ; $7dc6: $a9
    add [hl]                                      ; $7dc7: $86
    ld d, h                                       ; $7dc8: $54
    ld d, l                                       ; $7dc9: $55
    ld h, a                                       ; $7dca: $67
    halt                                          ; $7dcb: $76
    ld h, [hl]                                    ; $7dcc: $66
    ld [hl], a                                    ; $7dcd: $77
    ld d, e                                       ; $7dce: $53
    ld [hl+], a                                   ; $7dcf: $22
    ld b, l                                       ; $7dd0: $45
    ld d, e                                       ; $7dd1: $53
    ld b, [hl]                                    ; $7dd2: $46
    sbc e                                         ; $7dd3: $9b
    res 3, c                                      ; $7dd4: $cb $99
    xor d                                         ; $7dd6: $aa
    xor c                                         ; $7dd7: $a9
    halt                                          ; $7dd8: $76
    ld l, c                                       ; $7dd9: $69
    cp h                                          ; $7dda: $bc
    cp d                                          ; $7ddb: $ba
    xor e                                         ; $7ddc: $ab
    call $c9dd                                    ; $7ddd: $cd $dd $c9
    add h                                         ; $7de0: $84
    inc [hl]                                      ; $7de1: $34
    ld b, e                                       ; $7de2: $43
    inc sp                                        ; $7de3: $33
    ld b, [hl]                                    ; $7de4: $46
    halt                                          ; $7de5: $76
    ld b, d                                       ; $7de6: $42
    dec [hl]                                      ; $7de7: $35
    adc c                                         ; $7de8: $89
    add a                                         ; $7de9: $87
    ld h, h                                       ; $7dea: $64
    ld [hl+], a                                   ; $7deb: $22
    ld b, [hl]                                    ; $7dec: $46
    sbc c                                         ; $7ded: $99
    sbc c                                         ; $7dee: $99
    cp l                                          ; $7def: $bd
    db $ed                                        ; $7df0: $ed
    sub [hl]                                      ; $7df1: $96
    ld a, c                                       ; $7df2: $79
    xor c                                         ; $7df3: $a9
    ld d, e                                       ; $7df4: $53
    ld b, a                                       ; $7df5: $47
    sbc e                                         ; $7df6: $9b
    xor d                                         ; $7df7: $aa
    xor e                                         ; $7df8: $ab
    cp l                                          ; $7df9: $bd
    rst $28                                       ; $7dfa: $ef
    db $ed                                        ; $7dfb: $ed
    and a                                         ; $7dfc: $a7
    ld h, [hl]                                    ; $7dfd: $66
    ld d, l                                       ; $7dfe: $55
    ld d, e                                       ; $7dff: $53
    inc [hl]                                      ; $7e00: $34
    ld [hl], a                                    ; $7e01: $77
    ld [hl], l                                    ; $7e02: $75
    jr nc, jr_017_7e07                            ; $7e03: $30 $02

    ld b, l                                       ; $7e05: $45
    ld b, d                                       ; $7e06: $42

jr_017_7e07:
    inc h                                         ; $7e07: $24
    ld a, c                                       ; $7e08: $79
    sub a                                         ; $7e09: $97
    ld d, l                                       ; $7e0a: $55
    adc d                                         ; $7e0b: $8a
    res 0, [hl]                                   ; $7e0c: $cb $86
    ld d, [hl]                                    ; $7e0e: $56
    sbc d                                         ; $7e0f: $9a
    xor d                                         ; $7e10: $aa
    sbc b                                         ; $7e11: $98
    adc c                                         ; $7e12: $89
    adc $fe                                       ; $7e13: $ce $fe
    xor b                                         ; $7e15: $a8
    sbc e                                         ; $7e16: $9b
    db $dd                                        ; $7e17: $dd
    cp c                                          ; $7e18: $b9
    halt                                          ; $7e19: $76
    ld a, b                                       ; $7e1a: $78
    sbc b                                         ; $7e1b: $98
    ld [hl], h                                    ; $7e1c: $74
    ld b, h                                       ; $7e1d: $44
    ld b, d                                       ; $7e1e: $42
    db $10                                        ; $7e1f: $10
    inc de                                        ; $7e20: $13
    ld b, h                                       ; $7e21: $44
    ld [hl+], a                                   ; $7e22: $22
    ld [hl], $89                                  ; $7e23: $36 $89
    xor c                                         ; $7e25: $a9
    add a                                         ; $7e26: $87
    ld [hl], a                                    ; $7e27: $77
    ld h, [hl]                                    ; $7e28: $66
    ld h, a                                       ; $7e29: $67
    ld a, b                                       ; $7e2a: $78
    adc b                                         ; $7e2b: $88
    adc c                                         ; $7e2c: $89
    xor d                                         ; $7e2d: $aa
    cp l                                          ; $7e2e: $bd
    rst $28                                       ; $7e2f: $ef
    db $ed                                        ; $7e30: $ed
    res 7, e                                      ; $7e31: $cb $bb
    res 4, a                                      ; $7e33: $cb $a7
    ld b, e                                       ; $7e35: $43
    ld b, l                                       ; $7e36: $45
    ld h, a                                       ; $7e37: $67
    ld [hl], l                                    ; $7e38: $75
    ld h, [hl]                                    ; $7e39: $66
    ld a, b                                       ; $7e3a: $78
    sbc c                                         ; $7e3b: $99
    halt                                          ; $7e3c: $76
    ld d, h                                       ; $7e3d: $54
    jr nz, jr_017_7e40                            ; $7e3e: $20 $00

jr_017_7e40:
    inc h                                         ; $7e40: $24
    ld h, [hl]                                    ; $7e41: $66
    ld a, c                                       ; $7e42: $79
    xor c                                         ; $7e43: $a9
    sbc c                                         ; $7e44: $99
    xor d                                         ; $7e45: $aa
    xor b                                         ; $7e46: $a8
    ld h, [hl]                                    ; $7e47: $66
    sbc h                                         ; $7e48: $9c
    xor $b9                                       ; $7e49: $ee $b9
    adc d                                         ; $7e4b: $8a
    res 5, b                                      ; $7e4c: $cb $a8
    ld h, [hl]                                    ; $7e4e: $66
    ld [hl], a                                    ; $7e4f: $77
    ld h, [hl]                                    ; $7e50: $66
    ld [hl], a                                    ; $7e51: $77
    ld a, b                                       ; $7e52: $78
    xor e                                         ; $7e53: $ab
    cp c                                          ; $7e54: $b9
    ld [hl], l                                    ; $7e55: $75
    ld b, [hl]                                    ; $7e56: $46
    ld [hl], l                                    ; $7e57: $75
    inc sp                                        ; $7e58: $33
    ld [hl+], a                                   ; $7e59: $22
    dec [hl]                                      ; $7e5a: $35
    ld b, [hl]                                    ; $7e5b: $46
    sbc e                                         ; $7e5c: $9b
    cp c                                          ; $7e5d: $b9
    ld [hl], l                                    ; $7e5e: $75
    inc [hl]                                      ; $7e5f: $34
    ld b, [hl]                                    ; $7e60: $46
    ld h, [hl]                                    ; $7e61: $66
    ld h, l                                       ; $7e62: $65
    inc sp                                        ; $7e63: $33
    ld e, c                                       ; $7e64: $59
    rst $18                                       ; $7e65: $df
    db $fd                                        ; $7e66: $fd
    call c, $aaba                                 ; $7e67: $dc $ba $aa
    sub [hl]                                      ; $7e6a: $96
    ld [hl-], a                                   ; $7e6b: $32
    ld e, d                                       ; $7e6c: $5a
    sbc $ca                                       ; $7e6d: $de $ca
    cp h                                          ; $7e6f: $bc
    jp z, $3275                                   ; $7e70: $ca $75 $32

    ld hl, $1300                                  ; $7e73: $21 $00 $13
    ld l, c                                       ; $7e76: $69
    sbc b                                         ; $7e77: $98
    adc c                                         ; $7e78: $89
    call z, $43a7                                 ; $7e79: $cc $a7 $43
    ld b, l                                       ; $7e7c: $45
    ld d, l                                       ; $7e7d: $55
    ld d, l                                       ; $7e7e: $55
    ld l, b                                       ; $7e7f: $68
    xor e                                         ; $7e80: $ab
    adc $ff                                       ; $7e81: $ce $ff
    db $db                                        ; $7e83: $db
    add [hl]                                      ; $7e84: $86
    ld h, [hl]                                    ; $7e85: $66
    ld h, [hl]                                    ; $7e86: $66
    ld h, [hl]                                    ; $7e87: $66
    ld b, h                                       ; $7e88: $44
    ld b, [hl]                                    ; $7e89: $46
    sbc d                                         ; $7e8a: $9a
    cp d                                          ; $7e8b: $ba
    ld h, h                                       ; $7e8c: $64
    inc [hl]                                      ; $7e8d: $34
    ld b, l                                       ; $7e8e: $45
    ld h, l                                       ; $7e8f: $65
    ld [hl-], a                                   ; $7e90: $32
    ld b, a                                       ; $7e91: $47
    sbc d                                         ; $7e92: $9a
    xor c                                         ; $7e93: $a9
    sbc e                                         ; $7e94: $9b
    db $db                                        ; $7e95: $db
    ld [hl], h                                    ; $7e96: $74
    ld e, c                                       ; $7e97: $59
    sbc $b9                                       ; $7e98: $de $b9
    sbc e                                         ; $7e9a: $9b
    call z, $9aa8                                 ; $7e9b: $cc $a8 $9a
    cp d                                          ; $7e9e: $ba
    sub a                                         ; $7e9f: $97
    ld d, h                                       ; $7ea0: $54
    inc [hl]                                      ; $7ea1: $34
    ld b, h                                       ; $7ea2: $44
    ld b, h                                       ; $7ea3: $44
    ld d, l                                       ; $7ea4: $55
    ld h, a                                       ; $7ea5: $67
    ld h, [hl]                                    ; $7ea6: $66
    ld b, d                                       ; $7ea7: $42
    nop                                           ; $7ea8: $00
    inc de                                        ; $7ea9: $13
    ld d, a                                       ; $7eaa: $57
    adc b                                         ; $7eab: $88
    adc d                                         ; $7eac: $8a
    db $dd                                        ; $7ead: $dd
    call c, $dfab                                 ; $7eae: $dc $ab $df
    db $ec                                        ; $7eb1: $ec
    xor b                                         ; $7eb2: $a8
    sbc h                                         ; $7eb3: $9c
    xor $b9                                       ; $7eb4: $ee $b9
    sbc d                                         ; $7eb6: $9a
    xor b                                         ; $7eb7: $a8
    halt                                          ; $7eb8: $76
    ld h, [hl]                                    ; $7eb9: $66
    halt                                          ; $7eba: $76
    ld b, e                                       ; $7ebb: $43
    ld b, h                                       ; $7ebc: $44
    ld [hl+], a                                   ; $7ebd: $22
    ld de, $2112                                  ; $7ebe: $11 $12 $21
    inc de                                        ; $7ec1: $13
    ld d, [hl]                                    ; $7ec2: $56
    halt                                          ; $7ec3: $76
    ld b, h                                       ; $7ec4: $44
    ld l, e                                       ; $7ec5: $6b
    res 3, b                                      ; $7ec6: $cb $98
    ld a, c                                       ; $7ec8: $79
    cp e                                          ; $7ec9: $bb
    xor e                                         ; $7eca: $ab
    cp e                                          ; $7ecb: $bb
    call $eeee                                    ; $7ecc: $cd $ee $ee
    db $ed                                        ; $7ecf: $ed
    res 5, d                                      ; $7ed0: $cb $aa
    and a                                         ; $7ed2: $a7
    ld b, c                                       ; $7ed3: $41
    nop                                           ; $7ed4: $00
    ld [bc], a                                    ; $7ed5: $02
    inc sp                                        ; $7ed6: $33
    inc sp                                        ; $7ed7: $33
    ld b, l                                       ; $7ed8: $45
    adc e                                         ; $7ed9: $8b
    jp z, Jump_017_4575                           ; $7eda: $ca $75 $45

    ld a, b                                       ; $7edd: $78
    sbc b                                         ; $7ede: $98
    ld h, l                                       ; $7edf: $65
    ld b, [hl]                                    ; $7ee0: $46
    adc d                                         ; $7ee1: $8a
    sub [hl]                                      ; $7ee2: $96
    ld b, h                                       ; $7ee3: $44
    ld d, a                                       ; $7ee4: $57
    ld h, l                                       ; $7ee5: $65
    ld d, a                                       ; $7ee6: $57
    sbc d                                         ; $7ee7: $9a
    cp l                                          ; $7ee8: $bd
    rst $28                                       ; $7ee9: $ef
    db $fd                                        ; $7eea: $fd
    cp c                                          ; $7eeb: $b9
    adc b                                         ; $7eec: $88
    adc c                                         ; $7eed: $89
    ld [hl], l                                    ; $7eee: $75
    inc sp                                        ; $7eef: $33
    ld e, c                                       ; $7ef0: $59
    cp h                                          ; $7ef1: $bc
    cp d                                          ; $7ef2: $ba
    adc b                                         ; $7ef3: $88
    add a                                         ; $7ef4: $87
    ld d, e                                       ; $7ef5: $53
    ld [hl+], a                                   ; $7ef6: $22
    ld b, l                                       ; $7ef7: $45
    ld d, h                                       ; $7ef8: $54
    inc sp                                        ; $7ef9: $33
    ld l, d                                       ; $7efa: $6a
    call c, $99a9                                 ; $7efb: $dc $a9 $99
    add [hl]                                      ; $7efe: $86
    ld b, d                                       ; $7eff: $42
    nop                                           ; $7f00: $00
    ld [hl], $89                                  ; $7f01: $36 $89
    add a                                         ; $7f03: $87
    sbc e                                         ; $7f04: $9b
    set 1, e                                      ; $7f05: $cb $cb
    xor d                                         ; $7f07: $aa
    sub a                                         ; $7f08: $97
    ld [hl], a                                    ; $7f09: $77
    ld h, [hl]                                    ; $7f0a: $66
    ld a, b                                       ; $7f0b: $78
    cp [hl]                                       ; $7f0c: $be
    rst $38                                       ; $7f0d: $ff
    db $fd                                        ; $7f0e: $fd
    sbc b                                         ; $7f0f: $98
    sbc b                                         ; $7f10: $98
    ld [hl], l                                    ; $7f11: $75
    jr nz, jr_017_7f15                            ; $7f12: $20 $01

    inc h                                         ; $7f14: $24

jr_017_7f15:
    ld h, a                                       ; $7f15: $67
    ld h, [hl]                                    ; $7f16: $66
    ld h, l                                       ; $7f17: $65
    ld h, [hl]                                    ; $7f18: $66
    ld d, h                                       ; $7f19: $54
    ld b, h                                       ; $7f1a: $44
    inc sp                                        ; $7f1b: $33
    inc [hl]                                      ; $7f1c: $34
    adc l                                         ; $7f1d: $8d
    rst $38                                       ; $7f1e: $ff
    db $ec                                        ; $7f1f: $ec
    cp e                                          ; $7f20: $bb
    cp e                                          ; $7f21: $bb
    cp c                                          ; $7f22: $b9
    ld [hl], a                                    ; $7f23: $77
    ld [hl], a                                    ; $7f24: $77
    ld a, b                                       ; $7f25: $78
    adc c                                         ; $7f26: $89
    cp l                                          ; $7f27: $bd
    db $db                                        ; $7f28: $db
    sbc b                                         ; $7f29: $98
    halt                                          ; $7f2a: $76
    ld h, e                                       ; $7f2b: $63
    db $10                                        ; $7f2c: $10
    ld bc, $6734                                  ; $7f2d: $01 $34 $67
    adc c                                         ; $7f30: $89
    xor e                                         ; $7f31: $ab
    cp e                                          ; $7f32: $bb
    xor b                                         ; $7f33: $a8
    halt                                          ; $7f34: $76
    ld b, e                                       ; $7f35: $43
    ld [hl+], a                                   ; $7f36: $22
    ld b, a                                       ; $7f37: $47
    xor e                                         ; $7f38: $ab
    call z, $ffde                                 ; $7f39: $cc $de $ff
    db $db                                        ; $7f3c: $db
    add [hl]                                      ; $7f3d: $86
    ld d, h                                       ; $7f3e: $54
    inc [hl]                                      ; $7f3f: $34
    ld d, [hl]                                    ; $7f40: $56
    ld d, h                                       ; $7f41: $54
    ld b, [hl]                                    ; $7f42: $46
    sbc h                                         ; $7f43: $9c
    call c, $7598                                 ; $7f44: $dc $98 $75
    inc sp                                        ; $7f47: $33
    inc sp                                        ; $7f48: $33
    inc sp                                        ; $7f49: $33
    dec [hl]                                      ; $7f4a: $35
    adc e                                         ; $7f4b: $8b
    cp e                                          ; $7f4c: $bb
    xor d                                         ; $7f4d: $aa
    xor d                                         ; $7f4e: $aa
    sbc c                                         ; $7f4f: $99
    add [hl]                                      ; $7f50: $86
    ld b, h                                       ; $7f51: $44
    ld l, c                                       ; $7f52: $69
    cp h                                          ; $7f53: $bc
    cp d                                          ; $7f54: $ba
    xor e                                         ; $7f55: $ab
    cp e                                          ; $7f56: $bb
    xor c                                         ; $7f57: $a9
    add a                                         ; $7f58: $87
    ld d, d                                       ; $7f59: $52
    nop                                           ; $7f5a: $00
    dec h                                         ; $7f5b: $25
    adc c                                         ; $7f5c: $89
    sbc c                                         ; $7f5d: $99
    sbc e                                         ; $7f5e: $9b
    call z, Call_000_1095                         ; $7f5f: $cc $95 $10
    inc hl                                        ; $7f62: $23
    ld d, [hl]                                    ; $7f63: $56
    ld d, l                                       ; $7f64: $55
    ld l, c                                       ; $7f65: $69
    adc $ff                                       ; $7f66: $ce $ff
    jp c, Jump_017_5586                           ; $7f68: $da $86 $55

    ld d, h                                       ; $7f6b: $54
    ld b, h                                       ; $7f6c: $44
    ld d, a                                       ; $7f6d: $57
    sbc d                                         ; $7f6e: $9a
    cp e                                          ; $7f6f: $bb
    call $a6dc                                    ; $7f70: $cd $dc $a6
    ld [hl-], a                                   ; $7f73: $32
    inc hl                                        ; $7f74: $23
    ld d, [hl]                                    ; $7f75: $56
    ld h, l                                       ; $7f76: $65
    ld h, a                                       ; $7f77: $67
    sbc e                                         ; $7f78: $9b
    call c, Call_017_53a8                         ; $7f79: $dc $a8 $53
    inc sp                                        ; $7f7c: $33
    ld b, [hl]                                    ; $7f7d: $46
    halt                                          ; $7f7e: $76
    ld d, [hl]                                    ; $7f7f: $56
    adc e                                         ; $7f80: $8b
    res 0, [hl]                                   ; $7f81: $cb $86
    ld a, c                                       ; $7f83: $79
    xor b                                         ; $7f84: $a8
    ld d, d                                       ; $7f85: $52
    inc de                                        ; $7f86: $13
    ld a, b                                       ; $7f87: $78
    ld a, b                                       ; $7f88: $78
    sbc e                                         ; $7f89: $9b
    call $88c9                                    ; $7f8a: $cd $c9 $88
    sbc d                                         ; $7f8d: $9a
    xor b                                         ; $7f8e: $a8
    ld d, h                                       ; $7f8f: $54
    adc d                                         ; $7f90: $8a
    call z, $eccd                                 ; $7f91: $cc $cd $ec
    sub [hl]                                      ; $7f94: $96
    inc sp                                        ; $7f95: $33
    inc sp                                        ; $7f96: $33
    ld hl, $6624                                  ; $7f97: $21 $24 $66
    ld b, e                                       ; $7f9a: $43
    ld b, l                                       ; $7f9b: $45
    adc e                                         ; $7f9c: $8b
    cp c                                          ; $7f9d: $b9
    ld h, h                                       ; $7f9e: $64
    ld b, l                                       ; $7f9f: $45
    ld h, l                                       ; $7fa0: $65
    ld d, [hl]                                    ; $7fa1: $56
    adc d                                         ; $7fa2: $8a
    xor c                                         ; $7fa3: $a9
    adc b                                         ; $7fa4: $88
    ld a, b                                       ; $7fa5: $78
    adc c                                         ; $7fa6: $89
    xor d                                         ; $7fa7: $aa
    xor d                                         ; $7fa8: $aa
    cp l                                          ; $7fa9: $bd
    rst $38                                       ; $7faa: $ff
    db $eb                                        ; $7fab: $eb
    xor d                                         ; $7fac: $aa
    cp d                                          ; $7fad: $ba
    sub a                                         ; $7fae: $97
    ld d, h                                       ; $7faf: $54
    ld b, [hl]                                    ; $7fb0: $46
    ld b, e                                       ; $7fb1: $43
    ld [hl+], a                                   ; $7fb2: $22
    inc hl                                        ; $7fb3: $23
    inc sp                                        ; $7fb4: $33
    ld d, [hl]                                    ; $7fb5: $56
    ld h, h                                       ; $7fb6: $64
    ld hl, $6624                                  ; $7fb7: $21 $24 $66
    ld d, h                                       ; $7fba: $54
    dec [hl]                                      ; $7fbb: $35
    sbc l                                         ; $7fbc: $9d
    db $ed                                        ; $7fbd: $ed
    cp c                                          ; $7fbe: $b9
    adc d                                         ; $7fbf: $8a
    cp h                                          ; $7fc0: $bc
    call z, $cdcc                                 ; $7fc1: $cc $cc $cd
    db $dd                                        ; $7fc4: $dd
    db $dd                                        ; $7fc5: $dd
    call c, Call_017_54a7                         ; $7fc6: $dc $a7 $54
    ld d, l                                       ; $7fc9: $55
    ld sp, $0200                                  ; $7fca: $31 $00 $02
    ld d, a                                       ; $7fcd: $57
    adc c                                         ; $7fce: $89
    xor d                                         ; $7fcf: $aa
    add h                                         ; $7fd0: $84
    ld hl, $4213                                  ; $7fd1: $21 $13 $42
    inc hl                                        ; $7fd4: $23
    ld l, c                                       ; $7fd5: $69
    cp h                                          ; $7fd6: $bc
    res 7, e                                      ; $7fd7: $cb $bb
    xor c                                         ; $7fd9: $a9
    adc b                                         ; $7fda: $88
    sbc d                                         ; $7fdb: $9a
    sbc b                                         ; $7fdc: $98
    adc d                                         ; $7fdd: $8a
    adc $fe                                       ; $7fde: $ce $fe
    ret                                           ; $7fe0: $c9


    ld h, [hl]                                    ; $7fe1: $66
    ld h, [hl]                                    ; $7fe2: $66
    ld d, h                                       ; $7fe3: $54
    ld [hl-], a                                   ; $7fe4: $32
    ld [hl+], a                                   ; $7fe5: $22
    ld b, [hl]                                    ; $7fe6: $46
    adc d                                         ; $7fe7: $8a
    cp d                                          ; $7fe8: $ba
    sub a                                         ; $7fe9: $97
    halt                                          ; $7fea: $76
    ld d, e                                       ; $7feb: $53
    db $10                                        ; $7fec: $10
    inc de                                        ; $7fed: $13
    ld l, b                                       ; $7fee: $68
    xor e                                         ; $7fef: $ab
    call z, $dddd                                 ; $7ff0: $cc $dd $dd
    jp z, Jump_000_2274                           ; $7ff3: $ca $74 $22

    ld [hl], $9c                                  ; $7ff6: $36 $9c
    db $dd                                        ; $7ff8: $dd
    call z, $cbcc                                 ; $7ff9: $cc $cc $cb
    sub [hl]                                      ; $7ffc: $96
    ld b, d                                       ; $7ffd: $42
    db $11                                        ; $7ffe: $11
    inc [hl]                                      ; $7fff: $34
