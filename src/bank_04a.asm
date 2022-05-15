; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    ld c, d                                       ; $4000: $4a
    xor a                                         ; $4001: $af
    dec hl                                        ; $4002: $2b
    push bc                                       ; $4003: $c5
    rla                                           ; $4004: $17
    ld d, e                                       ; $4005: $53
    ldh a, [$90]                                  ; $4006: $f0 $90
    ld e, d                                       ; $4008: $5a
    rst $20                                       ; $4009: $e7
    inc [hl]                                      ; $400a: $34
    ld l, a                                       ; $400b: $6f
    inc a                                         ; $400c: $3c
    db $d3                                        ; $400d: $d3
    ld a, [hl+]                                   ; $400e: $2a
    xor b                                         ; $400f: $a8
    and b                                         ; $4010: $a0
    or c                                          ; $4011: $b1
    ld [hl+], a                                   ; $4012: $22
    ld e, [hl]                                    ; $4013: $5e
    ld h, d                                       ; $4014: $62
    ld a, c                                       ; $4015: $79
    xor [hl]                                      ; $4016: $ae
    push hl                                       ; $4017: $e5
    ld a, h                                       ; $4018: $7c
    rst $20                                       ; $4019: $e7
    ld c, l                                       ; $401a: $4d
    ld [hl], $c5                                  ; $401b: $36 $c5
    rra                                           ; $401d: $1f
    ld l, a                                       ; $401e: $6f
    sbc e                                         ; $401f: $9b
    sub c                                         ; $4020: $91
    rst $38                                       ; $4021: $ff
    sbc a                                         ; $4022: $9f
    halt                                          ; $4023: $76
    ld a, [$79e4]                                 ; $4024: $fa $e4 $79
    ld e, $bb                                     ; $4027: $1e $bb
    rst $10                                       ; $4029: $d7
    cp c                                          ; $402a: $b9
    call $07e5                                    ; $402b: $cd $e5 $07
    adc e                                         ; $402e: $8b
    ld e, d                                       ; $402f: $5a
    sbc d                                         ; $4030: $9a
    ret nc                                        ; $4031: $d0

    sub e                                         ; $4032: $93
    sbc c                                         ; $4033: $99
    db $e4                                        ; $4034: $e4
    adc e                                         ; $4035: $8b
    add hl, bc                                    ; $4036: $09
    dec c                                         ; $4037: $0d
    ld c, l                                       ; $4038: $4d
    cp e                                          ; $4039: $bb
    sbc l                                         ; $403a: $9d
    rst $38                                       ; $403b: $ff
    sbc a                                         ; $403c: $9f
    or $8a                                        ; $403d: $f6 $8a
    halt                                          ; $403f: $76
    ld d, b                                       ; $4040: $50
    dec b                                         ; $4041: $05
    cp l                                          ; $4042: $bd
    ld [hl], d                                    ; $4043: $72
    nop                                           ; $4044: $00
    xor a                                         ; $4045: $af
    dec hl                                        ; $4046: $2b
    push bc                                       ; $4047: $c5
    ld [c], a                                     ; $4048: $e2
    ld [hl], a                                    ; $4049: $77
    cp l                                          ; $404a: $bd
    dec sp                                        ; $404b: $3b
    or l                                          ; $404c: $b5
    cp h                                          ; $404d: $bc
    db $fc                                        ; $404e: $fc
    rra                                           ; $404f: $1f
    ld a, c                                       ; $4050: $79
    daa                                           ; $4051: $27
    db $ec                                        ; $4052: $ec
    ld c, d                                       ; $4053: $4a
    adc e                                         ; $4054: $8b
    ld e, d                                       ; $4055: $5a
    db $ed                                        ; $4056: $ed
    and b                                         ; $4057: $a0
    ld [c], a                                     ; $4058: $e2
    ld [de], a                                    ; $4059: $12
    rst $00                                       ; $405a: $c7
    ld a, e                                       ; $405b: $7b
    cp $47                                        ; $405c: $fe $47
    ld d, e                                       ; $405e: $53
    ld c, h                                       ; $405f: $4c
    ld h, $25                                     ; $4060: $26 $25
    ld d, [hl]                                    ; $4062: $56
    xor l                                         ; $4063: $ad
    ld [hl+], a                                   ; $4064: $22
    ld d, c                                       ; $4065: $51
    rla                                           ; $4066: $17
    sub l                                         ; $4067: $95
    rla                                           ; $4068: $17
    ld [hl], l                                    ; $4069: $75
    db $10                                        ; $406a: $10
    add hl, de                                    ; $406b: $19
    scf                                           ; $406c: $37
    db $e3                                        ; $406d: $e3
    inc bc                                        ; $406e: $03
    ld l, a                                       ; $406f: $6f
    dec de                                        ; $4070: $1b
    rst $08                                       ; $4071: $cf
    or a                                          ; $4072: $b7
    ld a, [hl]                                    ; $4073: $7e
    sub a                                         ; $4074: $97
    ld b, $08                                     ; $4075: $06 $08
    db $fd                                        ; $4077: $fd
    jr nc, @-$17                                  ; $4078: $30 $e7

    dec sp                                        ; $407a: $3b
    ld c, a                                       ; $407b: $4f
    ld h, $9b                                     ; $407c: $26 $9b
    ld h, $f2                                     ; $407e: $26 $f2

Call_04a_4080:
    push de                                       ; $4080: $d5
    sbc b                                         ; $4081: $98
    ld h, b                                       ; $4082: $60
    xor [hl]                                      ; $4083: $ae
    push hl                                       ; $4084: $e5
    ld a, h                                       ; $4085: $7c
    daa                                           ; $4086: $27
    ld h, b                                       ; $4087: $60
    add l                                         ; $4088: $85
    dec hl                                        ; $4089: $2b
    rlca                                          ; $408a: $07
    sub a                                         ; $408b: $97
    jr jr_04a_40ba                                ; $408c: $18 $2c

    ld l, h                                       ; $408e: $6c
    ld b, l                                       ; $408f: $45
    cp h                                          ; $4090: $bc
    xor b                                         ; $4091: $a8
    dec sp                                        ; $4092: $3b
    ld d, l                                       ; $4093: $55
    xor a                                         ; $4094: $af
    ld c, l                                       ; $4095: $4d
    dec [hl]                                      ; $4096: $35
    or a                                          ; $4097: $b7
    call nz, Call_04a_7ed5                        ; $4098: $c4 $d5 $7e
    sbc $78                                       ; $409b: $de $78
    ld hl, $3306                                  ; $409d: $21 $06 $33
    call $f818                                    ; $40a0: $cd $18 $f8
    sbc c                                         ; $40a3: $99
    ld e, [hl]                                    ; $40a4: $5e
    sbc e                                         ; $40a5: $9b
    di                                            ; $40a6: $f3

jr_04a_40a7:
    ld h, h                                       ; $40a7: $64

jr_04a_40a8:
    ld h, $17                                     ; $40a8: $26 $17
    or [hl]                                       ; $40aa: $b6
    ld [hl+], a                                   ; $40ab: $22
    sbc $09                                       ; $40ac: $de $09
    or l                                          ; $40ae: $b5
    ld l, [hl]                                    ; $40af: $6e
    ld l, $ac                                     ; $40b0: $2e $ac
    jr nz, @+$36                                  ; $40b2: $20 $34

    db $e3                                        ; $40b4: $e3
    inc bc                                        ; $40b5: $03
    xor a                                         ; $40b6: $af
    dec hl                                        ; $40b7: $2b
    ld d, $bf                                     ; $40b8: $16 $bf

jr_04a_40ba:
    rla                                           ; $40ba: $17
    ld c, l                                       ; $40bb: $4d
    adc e                                         ; $40bc: $8b
    ret nc                                        ; $40bd: $d0

    dec sp                                        ; $40be: $3b
    ld l, d                                       ; $40bf: $6a
    jp c, $c541                                   ; $40c0: $da $41 $c5

    dec h                                         ; $40c3: $25
    ld e, [hl]                                    ; $40c4: $5e
    call nc, $df8a                                ; $40c5: $d4 $8a $df
    dec bc                                        ; $40c8: $0b
    add $cd                                       ; $40c9: $c6 $cd
    sbc l                                         ; $40cb: $9d
    cp d                                          ; $40cc: $ba
    ld [hl], h                                    ; $40cd: $74
    sub [hl]                                      ; $40ce: $96
    ld h, [hl]                                    ; $40cf: $66
    or h                                          ; $40d0: $b4
    ld c, e                                       ; $40d1: $4b

Call_04a_40d2:
    inc bc                                        ; $40d2: $03
    add h                                         ; $40d3: $84
    ld e, [hl]                                    ; $40d4: $5e
    dec l                                         ; $40d5: $2d
    ld [hl], h                                    ; $40d6: $74
    ld d, b                                       ; $40d7: $50
    dec b                                         ; $40d8: $05
    dec e                                         ; $40d9: $1d
    jr nc, jr_04a_40a7                            ; $40da: $30 $cb

    ld hl, sp+$00                                 ; $40dc: $f8 $00
    sub a                                         ; $40de: $97
    ld d, c                                       ; $40df: $51
    inc d                                         ; $40e0: $14
    rst $00                                       ; $40e1: $c7
    pop af                                        ; $40e2: $f1
    ld bc, $cb2f                                  ; $40e3: $01 $2f $cb
    dec de                                        ; $40e6: $1b
    and $2d                                       ; $40e7: $e6 $2d
    cpl                                           ; $40e9: $2f
    ld h, [hl]                                    ; $40ea: $66
    ld e, d                                       ; $40eb: $5a
    call Call_04a_4f92                            ; $40ec: $cd $92 $4f
    rst $38                                       ; $40ef: $ff
    sub e                                         ; $40f0: $93
    rst $18                                       ; $40f1: $df

Call_04a_40f2:
    add a                                         ; $40f2: $87
    ld d, $38                                     ; $40f3: $16 $38
    ld e, d                                       ; $40f5: $5a
    ld h, e                                       ; $40f6: $63
    rst $20                                       ; $40f7: $e7
    sub d                                         ; $40f8: $92
    add hl, de                                    ; $40f9: $19
    cp b                                          ; $40fa: $b8
    ld e, b                                       ; $40fb: $58
    sbc e                                         ; $40fc: $9b
    ld d, e                                       ; $40fd: $53
    ld e, h                                       ; $40fe: $5c
    dec a                                         ; $40ff: $3d
    ld e, l                                       ; $4100: $5d
    ld [hl-], a                                   ; $4101: $32
    ld l, d                                       ; $4102: $6a
    ld l, $ac                                     ; $4103: $2e $ac
    jr nc, jr_04a_40a8                            ; $4105: $30 $a1

    db $fc                                        ; $4107: $fc
    db $dd                                        ; $4108: $dd
    ld [de], a                                    ; $4109: $12
    ld h, $68                                     ; $410a: $26 $68
    adc $41                                       ; $410c: $ce $41
    ld b, $55                                     ; $410e: $06 $55
    db $10                                        ; $4110: $10
    ld a, l                                       ; $4111: $7d
    reti                                          ; $4112: $d9


    call c, $e68f                                 ; $4113: $dc $8f $e6
    cp e                                          ; $4116: $bb
    rst $10                                       ; $4117: $d7
    cp c                                          ; $4118: $b9
    call $2771                                    ; $4119: $cd $71 $27
    db $f4                                        ; $411c: $f4
    ld h, h                                       ; $411d: $64
    or d                                          ; $411e: $b2
    cp c                                          ; $411f: $b9
    cp e                                          ; $4120: $bb
    or $64                                        ; $4121: $f6 $64
    ld a, [$c692]                                 ; $4123: $fa $92 $c6
    inc b                                         ; $4126: $04
    rla                                           ; $4127: $17
    ld a, e                                       ; $4128: $7b
    jp z, Jump_000_3132                           ; $4129: $ca $32 $31

    pop bc                                        ; $412c: $c1
    push bc                                       ; $412d: $c5
    ld e, [hl]                                    ; $412e: $5e
    ld h, a                                       ; $412f: $67
    ld a, [$2f29]                                 ; $4130: $fa $29 $2f
    or $3c                                        ; $4133: $f6 $3c
    ld h, c                                       ; $4135: $61
    jp z, Jump_000_35ea                           ; $4136: $ca $ea $35

    rst $30                                       ; $4139: $f7
    ld a, d                                       ; $413a: $7a
    or [hl]                                       ; $413b: $b6
    ld d, b                                       ; $413c: $50
    ld a, h                                       ; $413d: $7c
    nop                                           ; $413e: $00
    xor a                                         ; $413f: $af
    ld h, a                                       ; $4140: $67
    dec bc                                        ; $4141: $0b
    adc c                                         ; $4142: $89
    ccf                                           ; $4143: $3f
    nop                                           ; $4144: $00
    xor a                                         ; $4145: $af
    ld h, a                                       ; $4146: $67
    dec bc                                        ; $4147: $0b
    dec l                                         ; $4148: $2d
    inc l                                         ; $4149: $2c
    inc [hl]                                      ; $414a: $34
    ret nc                                        ; $414b: $d0

    ldh a, [rOCPD]                                ; $414c: $f0 $6b
    xor b                                         ; $414e: $a8
    add hl, sp                                    ; $414f: $39
    adc a                                         ; $4150: $8f
    db $dd                                        ; $4151: $dd
    db $eb                                        ; $4152: $eb
    call c, $b8e6                                 ; $4153: $dc $e6 $b8
    inc de                                        ; $4156: $13
    xor d                                         ; $4157: $aa
    ldh [$61], a                                  ; $4158: $e0 $61
    add hl, hl                                    ; $415a: $29
    ld l, d                                       ; $415b: $6a
    add $bb                                       ; $415c: $c6 $bb
    xor $68                                       ; $415e: $ee $68
    adc l                                         ; $4160: $8d
    sbc l                                         ; $4161: $9d
    ld l, h                                       ; $4162: $6c
    ld h, [hl]                                    ; $4163: $66
    ld [hl], a                                    ; $4164: $77
    xor d                                         ; $4165: $aa
    sbc [hl]                                      ; $4166: $9e
    ld l, a                                       ; $4167: $6f
    jp z, $bce6                                   ; $4168: $ca $e6 $bc

    pop af                                        ; $416b: $f1
    ld b, d                                       ; $416c: $42
    inc c                                         ; $416d: $0c
    ld d, $36                                     ; $416e: $16 $36
    jp c, $f509                                   ; $4170: $da $09 $f5

    ld [bc], a                                    ; $4173: $02
    ld h, e                                       ; $4174: $63
    xor $c5                                       ; $4175: $ee $c5
    ld [hl+], a                                   ; $4177: $22
    inc sp                                        ; $4178: $33
    sbc d                                         ; $4179: $9a
    scf                                           ; $417a: $37
    ld e, $aa                                     ; $417b: $1e $aa
    dec h                                         ; $417d: $25
    sub [hl]                                      ; $417e: $96
    ld [hl], a                                    ; $417f: $77
    cp $f1                                        ; $4180: $fe $f1
    ld bc, $67af                                  ; $4182: $01 $af $67
    dec bc                                        ; $4185: $0b
    dec c                                         ; $4186: $0d
    and d                                         ; $4187: $a2
    cpl                                           ; $4188: $2f
    or h                                          ; $4189: $b4
    call nz, $cb0b                                ; $418a: $c4 $0b $cb
    add e                                         ; $418d: $83
    ld c, h                                       ; $418e: $4c
    call $5ab4                                    ; $418f: $cd $b4 $5a
    adc b                                         ; $4192: $88
    pop bc                                        ; $4193: $c1
    ld c, [hl]                                    ; $4194: $4e
    dec l                                         ; $4195: $2d
    cpl                                           ; $4196: $2f
    db $fc                                        ; $4197: $fc
    ld e, l                                       ; $4198: $5d
    adc b                                         ; $4199: $88
    pop bc                                        ; $419a: $c1
    or h                                          ; $419b: $b4
    dec h                                         ; $419c: $25
    ld d, b                                       ; $419d: $50
    ld a, e                                       ; $419e: $7b
    ld b, l                                       ; $419f: $45
    dec sp                                        ; $41a0: $3b
    xor b                                         ; $41a1: $a8
    add d                                         ; $41a2: $82
    ld l, $fa                                     ; $41a3: $2e $fa
    push hl                                       ; $41a5: $e5
    ret                                           ; $41a6: $c9


    rra                                           ; $41a7: $1f
    dec [hl]                                      ; $41a8: $35
    db $e3                                        ; $41a9: $e3
    inc bc                                        ; $41aa: $03
    rst $10                                       ; $41ab: $d7
    db $e4                                        ; $41ac: $e4
    ld d, h                                       ; $41ad: $54
    ld d, h                                       ; $41ae: $54

Call_04a_41af:
    call $ff3b                                    ; $41af: $cd $3b $ff
    sub e                                         ; $41b2: $93
    pop af                                        ; $41b3: $f1
    push bc                                       ; $41b4: $c5
    ld c, [hl]                                    ; $41b5: $4e
    ld h, [hl]                                    ; $41b6: $66
    db $f4                                        ; $41b7: $f4
    and e                                         ; $41b8: $a3
    and c                                         ; $41b9: $a1
    ld e, d                                       ; $41ba: $5a
    ld e, b                                       ; $41bb: $58
    ld e, [hl]                                    ; $41bc: $5e
    adc b                                         ; $41bd: $88
    and l                                         ; $41be: $a5
    sbc l                                         ; $41bf: $9d
    rst $38                                       ; $41c0: $ff
    jp nz, $af96                                  ; $41c1: $c2 $96 $af

    inc e                                         ; $41c4: $1c
    sub a                                         ; $41c5: $97
    ld b, $08                                     ; $41c6: $06 $08
    ld a, l                                       ; $41c8: $7d
    inc e                                         ; $41c9: $1c
    rst $00                                       ; $41ca: $c7
    dec sp                                        ; $41cb: $3b
    add hl, de                                    ; $41cc: $19
    rrca                                          ; $41cd: $0f
    push de                                       ; $41ce: $d5
    inc a                                         ; $41cf: $3c

Call_04a_41d0:
    ld a, [c]                                     ; $41d0: $f2
    sub l                                         ; $41d1: $95
    inc bc                                        ; $41d2: $03
    ld d, a                                       ; $41d3: $57
    adc l                                         ; $41d4: $8d
    xor a                                         ; $41d5: $af
    db $ec                                        ; $41d6: $ec
    sbc c                                         ; $41d7: $99
    ldh a, [$62]                                  ; $41d8: $f0 $62
    ld c, [hl]                                    ; $41da: $4e
    inc d                                         ; $41db: $14
    rst $00                                       ; $41dc: $c7
    pop af                                        ; $41dd: $f1
    ld bc, $e597                                  ; $41de: $01 $97 $e5
    and c                                         ; $41e1: $a1
    ld e, d                                       ; $41e2: $5a
    sbc e                                         ; $41e3: $9b
    di                                            ; $41e4: $f3
    ld h, h                                       ; $41e5: $64
    or d                                          ; $41e6: $b2
    ld e, c                                       ; $41e7: $59
    inc d                                         ; $41e8: $14
    cp a                                          ; $41e9: $bf
    or a                                          ; $41ea: $b7
    call Call_04a_6168                            ; $41eb: $cd $68 $61
    add l                                         ; $41ee: $85
    dec b                                         ; $41ef: $05
    sbc l                                         ; $41f0: $9d
    scf                                           ; $41f1: $37
    sbc [hl]                                      ; $41f2: $9e
    ld l, e                                       ; $41f3: $6b
    jp hl                                         ; $41f4: $e9


    call $caf2                                    ; $41f5: $cd $f2 $ca
    ld bc, $e4d7                                  ; $41f8: $01 $d7 $e4
    jp nz, Jump_000_0b0a                          ; $41fb: $c2 $0a $0b

    rlc e                                         ; $41fe: $cb $03
    dec a                                         ; $4200: $3d
    db $fd                                        ; $4201: $fd
    call z, Call_04a_5ce6                         ; $4202: $cc $e6 $5c
    res 6, l                                      ; $4205: $cb $b5
    add hl, sp                                    ; $4207: $39
    sub a                                         ; $4208: $97
    jp c, Jump_04a_57c8                           ; $4209: $da $c8 $57

    ld h, e                                       ; $420c: $63
    add d                                         ; $420d: $82
    adc e                                         ; $420e: $8b
    ld a, c                                       ; $420f: $79
    db $ec                                        ; $4210: $ec
    call c, Call_04a_41af                         ; $4211: $dc $af $41
    ld d, e                                       ; $4214: $53
    dec l                                         ; $4215: $2d
    jp nz, $8260                                  ; $4216: $c2 $60 $82

    add $60                                       ; $4219: $c6 $60
    daa                                           ; $421b: $27
    ld d, e                                       ; $421c: $53
    di                                            ; $421d: $f3
    add $c3                                       ; $421e: $c6 $c3
    xor $36                                       ; $4220: $ee $36
    sbc [hl]                                      ; $4222: $9e
    inc a                                         ; $4223: $3c
    ld h, c                                       ; $4224: $61
    ret nz                                        ; $4225: $c0

    dec sp                                        ; $4226: $3b
    sbc c                                         ; $4227: $99
    adc d                                         ; $4228: $8a
    ld [hl], a                                    ; $4229: $77
    ld c, l                                       ; $422a: $4d
    ld l, $ac                                     ; $422b: $2e $ac
    jr nc, jr_04a_427f                            ; $422d: $30 $50

    db $dd                                        ; $422f: $dd
    ld [hl], e                                    ; $4230: $73
    ld [hl], e                                    ; $4231: $73
    pop hl                                        ; $4232: $e1
    rst $28                                       ; $4233: $ef
    ld d, b                                       ; $4234: $50
    adc $df                                       ; $4235: $ce $df
    ld b, [hl]                                    ; $4237: $46
    ld [hl], e                                    ; $4238: $73
    rst $38                                       ; $4239: $ff
    and a                                         ; $423a: $a7
    ld b, l                                       ; $423b: $45
    sbc a                                         ; $423c: $9f
    ld [hl], a                                    ; $423d: $77
    cp $04                                        ; $423e: $fe $04
    sbc d                                         ; $4240: $9a
    pop af                                        ; $4241: $f1
    sbc [hl]                                      ; $4242: $9e

Jump_04a_4243:
    ld l, c                                       ; $4243: $69
    xor $a5                                       ; $4244: $ee $a5
    rst $38                                       ; $4246: $ff
    ld c, c                                       ; $4247: $49
    ld [hl], l                                    ; $4248: $75
    ld c, a                                       ; $4249: $4f
    add hl, sp                                    ; $424a: $39
    sbc d                                         ; $424b: $9a
    ret                                           ; $424c: $c9


    ld bc, $0b17                                  ; $424d: $01 $17 $0b
    adc l                                         ; $4250: $8d
    ld e, b                                       ; $4251: $58
    ld sp, $d94a                                  ; $4252: $31 $4a $d9
    sbc l                                         ; $4255: $9d
    xor e                                         ; $4256: $ab
    db $fd                                        ; $4257: $fd
    reti                                          ; $4258: $d9


    inc l                                         ; $4259: $2c
    adc d                                         ; $425a: $8a
    rrca                                          ; $425b: $0f
    sub a                                         ; $425c: $97
    push hl                                       ; $425d: $e5
    dec d                                         ; $425e: $15
    daa                                           ; $425f: $27
    ld a, a                                       ; $4260: $7f
    call nz, $9073                                ; $4261: $c4 $73 $90
    push bc                                       ; $4264: $c5
    rra                                           ; $4265: $1f
    rst $10                                       ; $4266: $d7
    db $e4                                        ; $4267: $e4

Call_04a_4268:
    ld a, h                                       ; $4268: $7c
    ld d, e                                       ; $4269: $53
    adc $1b                                       ; $426a: $ce $1b
    rrca                                          ; $426c: $0f
    push hl                                       ; $426d: $e5
    ld l, [hl]                                    ; $426e: $6e
    adc e                                         ; $426f: $8b
    or $d2                                        ; $4270: $f6 $d2
    daa                                           ; $4272: $27
    and c                                         ; $4273: $a1
    call nz, $dfcb                                ; $4274: $c4 $cb $df
    jr z, jr_04a_42b7                             ; $4277: $28 $3e

    nop                                           ; $4279: $00
    cpl                                           ; $427a: $2f
    ld a, l                                       ; $427b: $7d
    ld [de], a                                    ; $427c: $12
    ld c, d                                       ; $427d: $4a
    ld a, h                                       ; $427e: $7c

jr_04a_427f:
    push hl                                       ; $427f: $e5
    nop                                           ; $4280: $00
    ld l, a                                       ; $4281: $6f
    ld [hl], a                                    ; $4282: $77
    pop de                                        ; $4283: $d1
    cpl                                           ; $4284: $2f
    scf                                           ; $4285: $37
    rst $20                                       ; $4286: $e7
    cp $4f                                        ; $4287: $fe $4f
    ld h, a                                       ; $4289: $67
    add h                                         ; $428a: $84
    add a                                         ; $428b: $87
    adc h                                         ; $428c: $8c
    ld h, b                                       ; $428d: $60
    ld h, a                                       ; $428e: $67
    inc c                                         ; $428f: $0c
    ld a, [c]                                     ; $4290: $f2
    ld h, d                                       ; $4291: $62
    sub a                                         ; $4292: $97
    ld b, $08                                     ; $4293: $06 $08
    ld a, l                                       ; $4295: $7d
    cp h                                          ; $4296: $bc
    ld l, e                                       ; $4297: $6b
    ld [hl], d                                    ; $4298: $72
    ld h, c                                       ; $4299: $61
    add l                                         ; $429a: $85
    sbc l                                         ; $429b: $9d
    rst $38                                       ; $429c: $ff
    ld l, l                                       ; $429d: $6d
    add hl, sp                                    ; $429e: $39
    or a                                          ; $429f: $b7
    inc d                                         ; $42a0: $14
    db $fd                                        ; $42a1: $fd
    ld a, [$bce6]                                 ; $42a2: $fa $e6 $bc
    pop af                                        ; $42a5: $f1
    xor [hl]                                      ; $42a6: $ae
    sub d                                         ; $42a7: $92
    pop bc                                        ; $42a8: $c1
    rst $38                                       ; $42a9: $ff
    ld c, [hl]                                    ; $42aa: $4e
    dec l                                         ; $42ab: $2d
    rst $28                                       ; $42ac: $ef
    ld h, h                                       ; $42ad: $64
    cp h                                          ; $42ae: $bc
    nop                                           ; $42af: $00
    add e                                         ; $42b0: $83
    add hl, sp                                    ; $42b1: $39
    ret z                                         ; $42b2: $c8

    ld a, [bc]                                    ; $42b3: $0a
    ld a, [$725f]                                 ; $42b4: $fa $5f $72

jr_04a_42b7:
    ld a, h                                       ; $42b7: $7c
    nop                                           ; $42b8: $00
    sub a                                         ; $42b9: $97
    jr jr_04a_4308                                ; $42ba: $18 $4c

    ld l, b                                       ; $42bc: $68
    ld a, c                                       ; $42bd: $79
    ld e, c                                       ; $42be: $59
    sbc [hl]                                      ; $42bf: $9e
    add b                                         ; $42c0: $80
    ld b, c                                       ; $42c1: $41
    jp c, $c9fc                                   ; $42c2: $da $fc $c9

    ld c, b                                       ; $42c5: $48
    call Call_04a_4fff                            ; $42c6: $cd $ff $4f
    adc e                                         ; $42c9: $8b
    ld l, [hl]                                    ; $42ca: $6e
    bit 5, c                                      ; $42cb: $cb $69
    inc sp                                        ; $42cd: $33
    ld d, d                                       ; $42ce: $52
    pop af                                        ; $42cf: $f1
    ld l, $cb                                     ; $42d0: $2e $cb
    sub e                                         ; $42d2: $93
    cp d                                          ; $42d3: $ba
    sbc b                                         ; $42d4: $98
    sbc l                                         ; $42d5: $9d
    add d                                         ; $42d6: $82
    add a                                         ; $42d7: $87
    add $41                                       ; $42d8: $c6 $41
    rla                                           ; $42da: $17
    ld a, l                                       ; $42db: $7d
    sbc $c9                                       ; $42dc: $de $c9
    ld a, b                                       ; $42de: $78
    call c, Call_000_34c9                         ; $42df: $dc $c9 $34
    ret nc                                        ; $42e2: $d0

    ld e, h                                       ; $42e3: $5c
    ld e, b                                       ; $42e4: $58
    ld b, c                                       ; $42e5: $41
    ld l, b                                       ; $42e6: $68
    add $07                                       ; $42e7: $c6 $07
    ld l, a                                       ; $42e9: $6f
    dec de                                        ; $42ea: $1b
    xor a                                         ; $42eb: $af
    push hl                                       ; $42ec: $e5
    or l                                          ; $42ed: $b5
    add hl, sp                                    ; $42ee: $39
    ld c, a                                       ; $42ef: $4f

jr_04a_42f0:
    ld h, [hl]                                    ; $42f0: $66
    ld a, [c]                                     ; $42f1: $f2
    jp z, $c9ae                                   ; $42f2: $ca $ae $c9

    add l                                         ; $42f5: $85
    rst $38                                       ; $42f6: $ff
    ld b, e                                       ; $42f7: $43
    ld a, e                                       ; $42f8: $7b
    rst $28                                       ; $42f9: $ef
    ld h, h                                       ; $42fa: $64
    sbc $97                                       ; $42fb: $de $97
    call z, $c548                                 ; $42fd: $cc $48 $c5
    rlca                                          ; $4300: $07
    cpl                                           ; $4301: $2f
    ld e, c                                       ; $4302: $59
    ld a, b                                       ; $4303: $78
    ld sp, $466f                                  ; $4304: $31 $6f $46
    dec sp                                        ; $4307: $3b

jr_04a_4308:
    ld a, l                                       ; $4308: $7d
    ld a, [c]                                     ; $4309: $f2
    inc a                                         ; $430a: $3c
    db $ec                                        ; $430b: $ec
    inc d                                         ; $430c: $14
    db $e4                                        ; $430d: $e4
    jr c, jr_04a_42f0                             ; $430e: $38 $e0

    adc h                                         ; $4310: $8c
    sub l                                         ; $4311: $95
    ld [hl], e                                    ; $4312: $73
    dec l                                         ; $4313: $2d
    db $e3                                        ; $4314: $e3
    ld e, l                                       ; $4315: $5d
    set 7, c                                      ; $4316: $cb $f9
    ld c, [hl]                                    ; $4318: $4e
    ld hl, sp-$6b                                 ; $4319: $f8 $95
    call Call_000_3629                            ; $431b: $cd $29 $36
    db $e3                                        ; $431e: $e3
    ld a, c                                       ; $431f: $79
    db $e3                                        ; $4320: $e3
    ld h, c                                       ; $4321: $61
    rst $20                                       ; $4322: $e7
    ld e, d                                       ; $4323: $5a
    ld c, [hl]                                    ; $4324: $4e
    ld [hl+], a                                   ; $4325: $22
    inc b                                         ; $4326: $04
    ld h, c                                       ; $4327: $61
    push de                                       ; $4328: $d5
    jp nz, Jump_04a_78ef                          ; $4329: $c2 $ef $78

    adc [hl]                                      ; $432c: $8e
    rst $30                                       ; $432d: $f7
    ld a, h                                       ; $432e: $7c
    inc sp                                        ; $432f: $33
    cp e                                          ; $4330: $bb
    ret nz                                        ; $4331: $c0

    pop de                                        ; $4332: $d1
    ld a, [de]                                    ; $4333: $1a
    dec sp                                        ; $4334: $3b
    ld a, a                                       ; $4335: $7f
    dec de                                        ; $4336: $1b
    xor l                                         ; $4337: $ad
    ld [hl+], a                                   ; $4338: $22
    ld d, c                                       ; $4339: $51
    rst $30                                       ; $433a: $f7
    ldh [$dc], a                                  ; $433b: $e0 $dc
    rst $38                                       ; $433d: $ff
    ld l, c                                       ; $433e: $69
    ld de, $0306                                  ; $433f: $11 $06 $03
    ld h, [hl]                                    ; $4342: $66
    cp c                                          ; $4343: $b9
    di                                            ; $4344: $f3
    xor a                                         ; $4345: $af
    ld l, h                                       ; $4346: $6c
    ld e, [hl]                                    ; $4347: $5e
    reti                                          ; $4348: $d9


    db $eb                                        ; $4349: $eb
    ccf                                           ; $434a: $3f
    ld d, d                                       ; $434b: $52
    db $d3                                        ; $434c: $d3
    rra                                           ; $434d: $1f
    ld l, d                                       ; $434e: $6a
    xor [hl]                                      ; $434f: $ae
    or h                                          ; $4350: $b4
    sub e                                         ; $4351: $93
    pop af                                        ; $4352: $f1
    ld c, [hl]                                    ; $4353: $4e
    xor b                                         ; $4354: $a8
    ld a, l                                       ; $4355: $7d
    rst $30                                       ; $4356: $f7
    and c                                         ; $4357: $a1
    add l                                         ; $4358: $85
    push hl                                       ; $4359: $e5
    ld [hl], c                                    ; $435a: $71
    adc c                                         ; $435b: $89
    adc d                                         ; $435c: $8a
    add hl, de                                    ; $435d: $19
    rra                                           ; $435e: $1f
    ld l, a                                       ; $435f: $6f
    jr c, jr_04a_4370                             ; $4360: $38 $0e

    ld l, c                                       ; $4362: $69
    inc c                                         ; $4363: $0c
    ld h, h                                       ; $4364: $64
    cp h                                          ; $4365: $bc
    set 3, a                                      ; $4366: $cb $df
    ld b, l                                       ; $4368: $45
    cp a                                          ; $4369: $bf
    xor b                                         ; $436a: $a8
    ld sp, $9390                                  ; $436b: $31 $90 $93
    sub [hl]                                      ; $436e: $96
    dec bc                                        ; $436f: $0b

jr_04a_4370:
    srl e                                         ; $4370: $cb $3b
    ld h, e                                       ; $4372: $63
    sub b                                         ; $4373: $90
    ei                                            ; $4374: $fb
    pop de                                        ; $4375: $d1
    jp c, $449c                                   ; $4376: $da $9c $44

    ld l, b                                       ; $4379: $68
    call c, $96b9                                 ; $437a: $dc $b9 $96
    and b                                         ; $437d: $a0
    ld a, c                                       ; $437e: $79
    push hl                                       ; $437f: $e5
    nop                                           ; $4380: $00
    sub a                                         ; $4381: $97
    ld e, b                                       ; $4382: $58
    jp c, $8319                                   ; $4383: $da $19 $83

    sbc h                                         ; $4386: $9c
    rst $28                                       ; $4387: $ef
    inc h                                         ; $4388: $24
    ld b, d                                       ; $4389: $42
    ld d, b                                       ; $438a: $50
    di                                            ; $438b: $f3
    ld h, d                                       ; $438c: $62
    sub a                                         ; $438d: $97
    ld b, $08                                     ; $438e: $06 $08
    ld a, l                                       ; $4390: $7d
    ld a, h                                       ; $4391: $7c
    nop                                           ; $4392: $00
    ld d, a                                       ; $4393: $57
    dec l                                         ; $4394: $2d
    push hl                                       ; $4395: $e5
    add d                                         ; $4396: $82
    ld e, [hl]                                    ; $4397: $5e
    db $ec                                        ; $4398: $ec
    jp nc, $c488                                  ; $4399: $d2 $88 $c4

    call nz, $dabb                                ; $439c: $c4 $bb $da
    ld c, c                                       ; $439f: $49
    ld e, l                                       ; $43a0: $5d
    call z, $a5ee                                 ; $43a1: $cc $ee $a5
    ld c, a                                       ; $43a4: $4f
    ld b, d                                       ; $43a5: $42
    adc c                                         ; $43a6: $89

jr_04a_43a7:
    rst $20                                       ; $43a7: $e7
    ld h, d                                       ; $43a8: $62
    push af                                       ; $43a9: $f5
    ld c, h                                       ; $43aa: $4c
    ld c, a                                       ; $43ab: $4f
    ret nz                                        ; $43ac: $c0

    jr nz, @+$6f                                  ; $43ad: $20 $6d

    xor [hl]                                      ; $43af: $ae
    push hl                                       ; $43b0: $e5
    adc $b7                                       ; $43b1: $ce $b7
    push hl                                       ; $43b3: $e5
    nop                                           ; $43b4: $00
    sbc c                                         ; $43b5: $99
    ld [hl], c                                    ; $43b6: $71
    ld a, h                                       ; $43b7: $7c
    nop                                           ; $43b8: $00
    sub a                                         ; $43b9: $97
    ld b, $08                                     ; $43ba: $06 $08
    db $fd                                        ; $43bc: $fd
    push bc                                       ; $43bd: $c5
    jr nc, jr_04a_43a7                            ; $43be: $30 $e7

    dec sp                                        ; $43c0: $3b
    ret z                                         ; $43c1: $c8

    adc h                                         ; $43c2: $8c
    ld d, $61                                     ; $43c3: $16 $61
    ld a, [hl-]                                   ; $43c5: $3a
    call c, $379c                                 ; $43c6: $dc $9c $37
    ld e, $ca                                     ; $43c9: $1e $ca
    sbc l                                         ; $43cb: $9d
    ld a, [bc]                                    ; $43cc: $0a
    halt                                          ; $43cd: $76
    ld [hl-], a                                   ; $43ce: $32
    ld [hl], l                                    ; $43cf: $75
    ld sp, $0b54                                  ; $43d0: $31 $54 $0b
    ld sp, $2818                                  ; $43d3: $31 $18 $28
    and b                                         ; $43d6: $a0
    ld e, a                                       ; $43d7: $5f
    db $f4                                        ; $43d8: $f4
    ld [c], a                                     ; $43d9: $e2
    rst $30                                       ; $43da: $f7
    or d                                          ; $43db: $b2
    ld e, e                                       ; $43dc: $5b
    ld e, d                                       ; $43dd: $5a
    sbc e                                         ; $43de: $9b
    dec sp                                        ; $43df: $3b
    or l                                          ; $43e0: $b5
    ld [hl], d                                    ; $43e1: $72
    sub b                                         ; $43e2: $90
    add hl, hl                                    ; $43e3: $29
    ld e, [hl]                                    ; $43e4: $5e
    adc b                                         ; $43e5: $88
    pop bc                                        ; $43e6: $c1
    ld [de], a                                    ; $43e7: $12
    res 1, e                                      ; $43e8: $cb $8b
    ld e, d                                       ; $43ea: $5a
    ld a, [de]                                    ; $43eb: $1a
    and $82                                       ; $43ec: $e6 $82
    ld l, $74                                     ; $43ee: $2e $74
    ld d, b                                       ; $43f0: $50
    dec b                                         ; $43f1: $05
    adc l                                         ; $43f2: $8d
    rst $30                                       ; $43f3: $f7
    and d                                         ; $43f4: $a2
    ld l, c                                       ; $43f5: $69
    ld de, $477a                                  ; $43f6: $11 $7a $47
    ld c, l                                       ; $43f9: $4d
    ld e, d                                       ; $43fa: $5a
    ld l, $e8                                     ; $43fb: $2e $e8
    xor d                                         ; $43fd: $aa
    push hl                                       ; $43fe: $e5
    and d                                         ; $43ff: $a2
    rra                                           ; $4400: $1f
    dec [hl]                                      ; $4401: $35
    ld a, c                                       ; $4402: $79
    ld l, [hl]                                    ; $4403: $6e
    ld c, c                                       ; $4404: $49
    ld h, e                                       ; $4405: $63
    jp z, Jump_04a_7c66                           ; $4406: $ca $66 $7c

    nop                                           ; $4409: $00
    rst $10                                       ; $440a: $d7
    db $e4                                        ; $440b: $e4
    ld c, [hl]                                    ; $440c: $4e
    dec l                                         ; $440d: $2d
    ld c, a                                       ; $440e: $4f
    xor b                                         ; $440f: $a8
    ld [c], a                                     ; $4410: $e2
    ld a, c                                       ; $4411: $79

Call_04a_4412:
    db $e3                                        ; $4412: $e3
    and c                                         ; $4413: $a1
    call c, $d16d                                 ; $4414: $dc $6d $d1
    ld [de], a                                    ; $4417: $12
    swap e                                        ; $4418: $cb $33
    call $f818                                    ; $441a: $cd $18 $f8
    ret                                           ; $441d: $c9


    and $c2                                       ; $441e: $e6 $c2
    rst $28                                       ; $4420: $ef
    sbc h                                         ; $4421: $9c
    ld a, d                                       ; $4422: $7a
    or c                                          ; $4423: $b1
    ret z                                         ; $4424: $c8

    adc h                                         ; $4425: $8c
    add [hl]                                      ; $4426: $86
    ld [hl], d                                    ; $4427: $72
    or d                                          ; $4428: $b2
    cp c                                          ; $4429: $b9
    db $db                                        ; $442a: $db
    and d                                         ; $442b: $a2
    pop af                                        ; $442c: $f1
    add a                                         ; $442d: $87
    add a                                         ; $442e: $87
    ei                                            ; $442f: $fb
    ld e, a                                       ; $4430: $5f
    ld l, $b1                                     ; $4431: $2e $b1
    cp h                                          ; $4433: $bc
    di                                            ; $4434: $f3
    adc a                                         ; $4435: $8f
    call z, Call_04a_6668                         ; $4436: $cc $68 $66
    cp c                                          ; $4439: $b9
    di                                            ; $443a: $f3
    ld l, l                                       ; $443b: $6d
    add hl, sp                                    ; $443c: $39
    db $fd                                        ; $443d: $fd
    ld a, c                                       ; $443e: $79
    rst $18                                       ; $443f: $df
    dec l                                         ; $4440: $2d
    ld l, c                                       ; $4441: $69
    db $e3                                        ; $4442: $e3
    ld h, [hl]                                    ; $4443: $66
    ld a, h                                       ; $4444: $7c
    nop                                           ; $4445: $00
    cpl                                           ; $4446: $2f
    ld h, d                                       ; $4447: $62
    sub b                                         ; $4448: $90
    inc de                                        ; $4449: $13
    add sp, -$69                                  ; $444a: $e8 $97
    or $74                                        ; $444c: $f6 $74
    ld l, b                                       ; $444e: $68
    and h                                         ; $444f: $a4
    or c                                          ; $4450: $b1
    inc de                                        ; $4451: $13
    xor d                                         ; $4452: $aa
    ret c                                         ; $4453: $d8

    pop af                                        ; $4454: $f1
    dec l                                         ; $4455: $2d
    pop af                                        ; $4456: $f1
    inc a                                         ; $4457: $3c
    sbc c                                         ; $4458: $99
    ld l, h                                       ; $4459: $6c
    ld c, $73                                     ; $445a: $0e $73
    xor a                                         ; $445c: $af
    db $fd                                        ; $445d: $fd
    ld b, [hl]                                    ; $445e: $46
    ld c, l                                       ; $445f: $4d
    cp h                                          ; $4460: $bc
    add hl, hl                                    ; $4461: $29
    sbc $8b                                       ; $4462: $de $8b
    xor b                                         ; $4464: $a8
    inc d                                         ; $4465: $14
    inc a                                         ; $4466: $3c
    call nz, $a4e6                                ; $4467: $c4 $e6 $a4
    push hl                                       ; $446a: $e5
    ld b, d                                       ; $446b: $42
    inc c                                         ; $446c: $0c
    sub $e6                                       ; $446d: $d6 $e6
    ret nz                                        ; $446f: $c0

    xor a                                         ; $4470: $af
    rst $28                                       ; $4471: $ef
    jr nz, @+$5f                                  ; $4472: $20 $5d

    add hl, sp                                    ; $4474: $39
    rst $30                                       ; $4475: $f7
    ld a, a                                       ; $4476: $7f
    ld e, d                                       ; $4477: $5a
    ret c                                         ; $4478: $d8

    ld l, b                                       ; $4479: $68
    rst $20                                       ; $447a: $e7
    ld e, a                                       ; $447b: $5f
    reti                                          ; $447c: $d9


    adc h                                         ; $447d: $8c
    rrca                                          ; $447e: $0f
    cpl                                           ; $447f: $2f
    jr jr_04a_44b9                                ; $4480: $18 $37

    ld [hl], a                                    ; $4482: $77
    ld [$eb2e], a                                 ; $4483: $ea $2e $eb
    ld c, a                                       ; $4486: $4f
    ld [$6696], sp                                ; $4487: $08 $96 $66
    or h                                          ; $448a: $b4
    or b                                          ; $448b: $b0
    pop de                                        ; $448c: $d1
    ld hl, sp+$57                                 ; $448d: $f8 $57
    or c                                          ; $448f: $b1
    ld b, e                                       ; $4490: $43
    call $e545                                    ; $4491: $cd $45 $e5
    or l                                          ; $4494: $b5
    add hl, sp                                    ; $4495: $39
    add c                                         ; $4496: $81
    or b                                          ; $4497: $b0
    and d                                         ; $4498: $a2
    and b                                         ; $4499: $a0
    pop af                                        ; $449a: $f1
    sbc $36                                       ; $449b: $de $36
    sbc [hl]                                      ; $449d: $9e
    adc e                                         ; $449e: $8b
    jp hl                                         ; $449f: $e9


    rla                                           ; $44a0: $17
    ld [hl], h                                    ; $44a1: $74
    dec h                                         ; $44a2: $25
    rst $10                                       ; $44a3: $d7
    ld a, [c]                                     ; $44a4: $f2
    ld h, d                                       ; $44a5: $62
    sub a                                         ; $44a6: $97
    ld b, $08                                     ; $44a7: $06 $08
    db $fd                                        ; $44a9: $fd
    sub l                                         ; $44aa: $95
    inc bc                                        ; $44ab: $03
    cpl                                           ; $44ac: $2f
    rr e                                          ; $44ad: $cb $1b
    and $2d                                       ; $44af: $e6 $2d
    cpl                                           ; $44b1: $2f
    and $8d                                       ; $44b2: $e6 $8d
    rla                                           ; $44b4: $17
    ld a, l                                       ; $44b5: $7d
    sbc [hl]                                      ; $44b6: $9e
    or a                                          ; $44b7: $b7
    ld e, h                                       ; $44b8: $5c

jr_04a_44b9:
    ld h, h                                       ; $44b9: $64
    ld b, [hl]                                    ; $44ba: $46
    pop af                                        ; $44bb: $f1
    ld bc, $1597                                  ; $44bc: $01 $97 $15
    ld d, $74                                     ; $44bf: $16 $74
    and [hl]                                      ; $44c1: $a6
    rst $30                                       ; $44c2: $f7
    ldh [rNR50], a                                ; $44c3: $e0 $24
    ld b, d                                       ; $44c5: $42
    ld d, b                                       ; $44c6: $50
    ld [hl], e                                    ; $44c7: $73
    and b                                         ; $44c8: $a0
    xor $4f                                       ; $44c9: $ee $4f
    rst $18                                       ; $44cb: $df
    cp h                                          ; $44cc: $bc
    ret c                                         ; $44cd: $d8

    and l                                         ; $44ce: $a5
    ld de, $b989                                  ; $44cf: $11 $89 $b9
    ld [hl], d                                    ; $44d2: $72
    nop                                           ; $44d3: $00
    cpl                                           ; $44d4: $2f
    ld a, l                                       ; $44d5: $7d
    or b                                          ; $44d6: $b0
    call nz, Call_04a_7c72                        ; $44d7: $c4 $72 $7c
    nop                                           ; $44da: $00
    xor a                                         ; $44db: $af
    jp $2c43                                      ; $44dc: $c3 $43 $2c


    rst $28                                       ; $44df: $ef
    ld b, e                                       ; $44e0: $43
    di                                            ; $44e1: $f3
    sub [hl]                                      ; $44e2: $96
    ld [c], a                                     ; $44e3: $e2
    or a                                          ; $44e4: $b7
    ld c, e                                       ; $44e5: $4b
    inc c                                         ; $44e6: $0c
    and $52                                       ; $44e7: $e6 $52
    bit 2, e                                      ; $44e9: $cb $53
    ld c, h                                       ; $44eb: $4c
    ld h, $25                                     ; $44ec: $26 $25
    ld d, [hl]                                    ; $44ee: $56
    db $ed                                        ; $44ef: $ed
    or l                                          ; $44f0: $b5
    sbc a                                         ; $44f1: $9f
    ei                                            ; $44f2: $fb
    ret nc                                        ; $44f3: $d0

    ld c, h                                       ; $44f4: $4c
    xor e                                         ; $44f5: $ab
    dec b                                         ; $44f6: $05
    db $dd                                        ; $44f7: $dd
    ld l, l                                       ; $44f8: $6d
    pop de                                        ; $44f9: $d1
    ld [de], a                                    ; $44fa: $12
    bit 2, e                                      ; $44fb: $cb $53
    ld e, c                                       ; $44fd: $59
    cp l                                          ; $44fe: $bd
    sub e                                         ; $44ff: $93
    pop af                                        ; $4500: $f1
    cp b                                          ; $4501: $b8
    dec hl                                        ; $4502: $2b
    scf                                           ; $4503: $37
    daa                                           ; $4504: $27
    ld d, b                                       ; $4505: $50
    inc de                                        ; $4506: $13
    or b                                          ; $4507: $b0
    ld hl, sp+$03                                 ; $4508: $f8 $03
    ld d, a                                       ; $450a: $57
    call Call_04a_4268                            ; $450b: $cd $68 $42
    ld [hl], e                                    ; $450e: $73
    ld b, c                                       ; $450f: $41
    cpl                                           ; $4510: $2f
    halt                                          ; $4511: $76
    ld l, c                                       ; $4512: $69
    ld b, h                                       ; $4513: $44
    ld h, d                                       ; $4514: $62
    ld [c], a                                     ; $4515: $e2
    db $ed                                        ; $4516: $ed
    db $ed                                        ; $4517: $ed
    ld l, $ac                                     ; $4518: $2e $ac
    jr nz, @+$36                                  ; $451a: $20 $34

    rst $30                                       ; $451c: $f7
    and c                                         ; $451d: $a1
    dec b                                         ; $451e: $05
    dec e                                         ; $451f: $1d
    add sp, -$37                                  ; $4520: $e8 $c9
    ldh [rNR42], a                                ; $4522: $e0 $21
    rst $00                                       ; $4524: $c7
    rlca                                          ; $4525: $07
    rst $10                                       ; $4526: $d7
    db $e4                                        ; $4527: $e4
    ld c, [hl]                                    ; $4528: $4e
    dec l                                         ; $4529: $2d
    rst $28                                       ; $452a: $ef
    ld e, h                                       ; $452b: $5c
    ld e, c                                       ; $452c: $59
    sbc d                                         ; $452d: $9a
    scf                                           ; $452e: $37
    sbc $a5                                       ; $452f: $de $a5
    ld bc, $bf42                                  ; $4531: $01 $42 $bf
    sbc a                                         ; $4534: $9f
    ld l, d                                       ; $4535: $6a
    ld h, c                                       ; $4536: $61
    xor e                                         ; $4537: $ab
    ld [hl], a                                    ; $4538: $77
    ld [hl-], a                                   ; $4539: $32
    sbc [hl]                                      ; $453a: $9e
    or h                                          ; $453b: $b4
    sbc h                                         ; $453c: $9c
    ld e, e                                       ; $453d: $5b
    ld [c], a                                     ; $453e: $e2
    ld l, d                                       ; $453f: $6a
    db $dd                                        ; $4540: $dd
    call c, Call_04a_4b77                         ; $4541: $dc $77 $4b
    di                                            ; $4544: $f3
    ret c                                         ; $4545: $d8

    cp l                                          ; $4546: $bd
    adc $6d                                       ; $4547: $ce $6d
    add $07                                       ; $4549: $c6 $07
    ld l, a                                       ; $454b: $6f
    dec de                                        ; $454c: $1b
    rst $08                                       ; $454d: $cf
    rst $38                                       ; $454e: $ff

jr_04a_454f:
    ld l, $c0                                     ; $454f: $2e $c0
    ld h, b                                       ; $4551: $60
    ld hl, $2e96                                  ; $4552: $21 $96 $2e
    or $a2                                        ; $4555: $f6 $a2
    ld l, c                                       ; $4557: $69
    ld de, $477a                                  ; $4558: $11 $7a $47
    ld e, l                                       ; $455b: $5d
    add hl, sp                                    ; $455c: $39
    nop                                           ; $455d: $00

Call_04a_455e:
    rst $10                                       ; $455e: $d7
    db $e4                                        ; $455f: $e4
    jr nz, jr_04a_454f                            ; $4560: $20 $ed

    ret z                                         ; $4562: $c8

    sbc l                                         ; $4563: $9d
    adc h                                         ; $4564: $8c
    daa                                           ; $4565: $27
    add sp, -$21                                  ; $4566: $e8 $df
    xor b                                         ; $4568: $a8
    cp c                                          ; $4569: $b9
    rra                                           ; $456a: $1f
    xor l                                         ; $456b: $ad
    call $b249                                    ; $456c: $cd $49 $b2
    ld d, h                                       ; $456f: $54
    db $e3                                        ; $4570: $e3
    ld l, $32                                     ; $4571: $2e $32
    reti                                          ; $4573: $d9


    sbc h                                         ; $4574: $9c
    ei                                            ; $4575: $fb
    ccf                                           ; $4576: $3f
    xor l                                         ; $4577: $ad
    call $9809                                    ; $4578: $cd $09 $98
    reti                                          ; $457b: $d9


    sub h                                         ; $457c: $94
    sbc a                                         ; $457d: $9f
    ld a, b                                       ; $457e: $78
    pop de                                        ; $457f: $d1
    daa                                           ; $4580: $27
    push hl                                       ; $4581: $e5
    cp a                                          ; $4582: $bf
    rst $28                                       ; $4583: $ef
    ld [hl], h                                    ; $4584: $74
    ld c, e                                       ; $4585: $4b
    ld a, [de]                                    ; $4586: $1a
    inc de                                        ; $4587: $13
    xor h                                         ; $4588: $ac
    cp c                                          ; $4589: $b9
    inc sp                                        ; $458a: $33
    ld b, $39                                     ; $458b: $06 $39
    sub a                                         ; $458d: $97
    or b                                          ; $458e: $b0
    jp hl                                         ; $458f: $e9


    add e                                         ; $4590: $83
    xor d                                         ; $4591: $aa
    ld hl, sp+$00                                 ; $4592: $f8 $00
    rst $08                                       ; $4594: $cf
    ld h, e                                       ; $4595: $63
    jr nz, jr_04a_45c7                            ; $4596: $20 $2f

    halt                                          ; $4598: $76
    ld e, c                                       ; $4599: $59
    ld a, a                                       ; $459a: $7f
    ld b, d                                       ; $459b: $42
    jr nc, jr_04a_45f2                            ; $459c: $30 $54

    db $e3                                        ; $459e: $e3
    sub d                                         ; $459f: $92
    inc bc                                        ; $45a0: $03
    call nz, $ef1f                                ; $45a1: $c4 $1f $ef
    ld [hl], l                                    ; $45a4: $75
    ld h, c                                       ; $45a5: $61
    dec hl                                        ; $45a6: $2b
    ld [c], a                                     ; $45a7: $e2
    ld e, c                                       ; $45a8: $59
    ld a, [c]                                     ; $45a9: $f2
    jp hl                                         ; $45aa: $e9


    ld a, a                                       ; $45ab: $7f
    ld a, [c]                                     ; $45ac: $f2
    ld [hl], e                                    ; $45ad: $73
    dec l                                         ; $45ae: $2d
    rst $30                                       ; $45af: $f7
    ld [hl], h                                    ; $45b0: $74
    ld l, b                                       ; $45b1: $68
    and h                                         ; $45b2: $a4
    or c                                          ; $45b3: $b1
    pop af                                        ; $45b4: $f1
    ld e, [hl]                                    ; $45b5: $5e
    ld l, b                                       ; $45b6: $68
    push de                                       ; $45b7: $d5
    call c, $e9ff                                 ; $45b8: $dc $ff $e9
    ld h, d                                       ; $45bb: $62
    xor a                                         ; $45bc: $af
    db $fd                                        ; $45bd: $fd
    adc h                                         ; $45be: $8c
    rrca                                          ; $45bf: $0f
    or a                                          ; $45c0: $b7
    dec a                                         ; $45c1: $3d
    ld d, l                                       ; $45c2: $55
    push bc                                       ; $45c3: $c5
    db $dd                                        ; $45c4: $dd
    ld l, e                                       ; $45c5: $6b
    ccf                                           ; $45c6: $3f

jr_04a_45c7:
    cpl                                           ; $45c7: $2f
    ld l, [hl]                                    ; $45c8: $6e
    dec sp                                        ; $45c9: $3b
    nop                                           ; $45ca: $00
    or a                                          ; $45cb: $b7
    ld e, l                                       ; $45cc: $5d
    sub e                                         ; $45cd: $93
    dec sp                                        ; $45ce: $3b
    and c                                         ; $45cf: $a1
    sbc [hl]                                      ; $45d0: $9e
    rst $00                                       ; $45d1: $c7
    adc $93                                       ; $45d2: $ce $93
    sbc c                                         ; $45d4: $99
    inc e                                         ; $45d5: $1c
    jr nz, jr_04a_460b                            ; $45d6: $20 $33

    or b                                          ; $45d8: $b0
    or b                                          ; $45d9: $b0
    add d                                         ; $45da: $82
    ret nc                                        ; $45db: $d0

    cp h                                          ; $45dc: $bc
    ld e, b                                       ; $45dd: $58
    ld h, h                                       ; $45de: $64
    ld b, [hl]                                    ; $45df: $46
    dec bc                                        ; $45e0: $0b
    srl e                                         ; $45e1: $cb $3b
    sbc e                                         ; $45e3: $9b
    ld e, [hl]                                    ; $45e4: $5e
    ld h, d                                       ; $45e5: $62
    ld a, c                                       ; $45e6: $79
    ld l, l                                       ; $45e7: $6d
    cp d                                          ; $45e8: $ba
    rst $18                                       ; $45e9: $df
    pop af                                        ; $45ea: $f1
    ld [$c676], sp                                ; $45eb: $08 $76 $c6
    jr nz, @-$1b                                  ; $45ee: $20 $e3

    ld e, l                                       ; $45f0: $5d
    sub [hl]                                      ; $45f1: $96

jr_04a_45f2:
    and a                                         ; $45f2: $a7
    ld sp, $bc90                                  ; $45f3: $31 $90 $bc
    xor b                                         ; $45f6: $a8
    dec bc                                        ; $45f7: $0b
    rl e                                          ; $45f8: $cb $13
    xor d                                         ; $45fa: $aa
    cp b                                          ; $45fb: $b8
    di                                            ; $45fc: $f3
    add $0b                                       ; $45fd: $c6 $0b

Jump_04a_45ff:
    inc e                                         ; $45ff: $1c
    xor l                                         ; $4600: $ad
    or c                                          ; $4601: $b1
    dec bc                                        ; $4602: $0b
    dec de                                        ; $4603: $1b
    dec l                                         ; $4604: $2d
    ld l, d                                       ; $4605: $6a
    ld b, c                                       ; $4606: $41
    db $dd                                        ; $4607: $dd
    and $cc                                       ; $4608: $e6 $cc
    ld [hl], d                                    ; $460a: $72

jr_04a_460b:
    ld l, l                                       ; $460b: $6d
    ld c, $32                                     ; $460c: $0e $32
    and e                                         ; $460e: $a3
    cp c                                          ; $460f: $b9
    add h                                         ; $4610: $84
    ld c, l                                       ; $4611: $4d
    rst $18                                       ; $4612: $df
    sbc h                                         ; $4613: $9c
    ld l, e                                       ; $4614: $6b
    cp c                                          ; $4615: $b9
    xor b                                         ; $4616: $a8
    rla                                           ; $4617: $17
    di                                            ; $4618: $f3
    ret c                                         ; $4619: $d8

    cp c                                          ; $461a: $b9
    ld e, a                                       ; $461b: $5f
    add e                                         ; $461c: $83
    and [hl]                                      ; $461d: $a6
    rst $28                                       ; $461e: $ef
    ld c, [hl]                                    ; $461f: $4e
    xor l                                         ; $4620: $ad
    sbc h                                         ; $4621: $9c
    or [hl]                                       ; $4622: $b6
    inc b                                         ; $4623: $04
    ld c, d                                       ; $4624: $4a
    cp $a8                                        ; $4625: $fe $a8
    add hl, de                                    ; $4627: $19
    rst $28                                       ; $4628: $ef
    cp l                                          ; $4629: $bd
    rst $28                                       ; $462a: $ef
    ld hl, sp-$1a                                 ; $462b: $f8 $e6
    ld [bc], a                                    ; $462d: $02
    ld b, a                                       ; $462e: $47
    ld l, e                                       ; $462f: $6b
    db $ec                                        ; $4630: $ec
    ld a, h                                       ; $4631: $7c
    rst $30                                       ; $4632: $f7
    sub h                                         ; $4633: $94
    and e                                         ; $4634: $a3
    sbc c                                         ; $4635: $99
    inc e                                         ; $4636: $1c
    or b                                          ; $4637: $b0
    or e                                          ; $4638: $b3
    ld [hl], c                                    ; $4639: $71
    ret                                           ; $463a: $c9


    dec de                                        ; $463b: $1b
    ret c                                         ; $463c: $d8

    adc a                                         ; $463d: $8f
    ld d, $a1                                     ; $463e: $16 $a1
    rst $30                                       ; $4640: $f7
    and l                                         ; $4641: $a5
    inc [hl]                                      ; $4642: $34
    ld a, b                                       ; $4643: $78
    ret z                                         ; $4644: $c8

    inc de                                        ; $4645: $13
    cp [hl]                                       ; $4646: $be
    db $db                                        ; $4647: $db
    inc e                                         ; $4648: $1c
    and $7c                                       ; $4649: $e6 $7c
    rla                                           ; $464b: $17
    cp $0f                                        ; $464c: $fe $0f
    inc d                                         ; $464e: $14
    ld [hl], a                                    ; $464f: $77
    db $fc                                        ; $4650: $fc
    xor c                                         ; $4651: $a9
    add hl, sp                                    ; $4652: $39
    jp hl                                         ; $4653: $e9


    ld h, h                                       ; $4654: $64
    ld [hl], $27                                  ; $4655: $36 $27
    add hl, bc                                    ; $4657: $09
    inc bc                                        ; $4658: $03
    ret nc                                        ; $4659: $d0

    cp h                                          ; $465a: $bc
    or d                                          ; $465b: $b2
    xor e                                         ; $465c: $ab
    sub [hl]                                      ; $465d: $96
    sub e                                         ; $465e: $93
    ld c, [hl]                                    ; $465f: $4e
    ld h, [hl]                                    ; $4660: $66
    ld [hl], e                                    ; $4661: $73
    rst $20                                       ; $4662: $e7
    ld l, $6c                                     ; $4663: $2e $6c
    or h                                          ; $4665: $b4
    xor b                                         ; $4666: $a8
    call $cd46                                    ; $4667: $cd $46 $cd
    sbc c                                         ; $466a: $99
    ld d, [hl]                                    ; $466b: $56
    dec bc                                        ; $466c: $0b
    set 1, e                                      ; $466d: $cb $cb
    rrca                                          ; $466f: $0f
    and $7f                                       ; $4670: $e6 $7f
    jp z, Jump_04a_50d2                           ; $4672: $ca $d2 $50

    push bc                                       ; $4675: $c5
    ld a, e                                       ; $4676: $7b
    sbc l                                         ; $4677: $9d
    dec e                                         ; $4678: $1d
    add a                                         ; $4679: $87
    halt                                          ; $467a: $76
    cp $53                                        ; $467b: $fe $53
    ld e, c                                       ; $467d: $59
    cp l                                          ; $467e: $bd
    add sp, -$7d                                  ; $467f: $e8 $83
    ld l, d                                       ; $4681: $6a
    inc c                                         ; $4682: $0c
    db $e4                                        ; $4683: $e4
    inc l                                         ; $4684: $2c
    ld sp, hl                                     ; $4685: $f9
    db $f4                                        ; $4686: $f4
    ccf                                           ; $4687: $3f
    ld sp, hl                                     ; $4688: $f9
    ld hl, sp-$4a                                 ; $4689: $f8 $b6
    inc bc                                        ; $468b: $03
    or a                                          ; $468c: $b7
    dec a                                         ; $468d: $3d
    ld b, a                                       ; $468e: $47
    cp a                                          ; $468f: $bf
    inc e                                         ; $4690: $1c
    ld d, h                                       ; $4691: $54
    ld e, l                                       ; $4692: $5d
    db $ec                                        ; $4693: $ec
    jp hl                                         ; $4694: $e9


    ret nc                                        ; $4695: $d0

    ld c, b                                       ; $4696: $48
    ld h, e                                       ; $4697: $63
    ld l, a                                       ; $4698: $6f
    adc e                                         ; $4699: $8b
    rrca                                          ; $469a: $0f
    ld l, a                                       ; $469b: $6f
    ld [hl], a                                    ; $469c: $77
    jp nc, Jump_04a_6cc9                          ; $469d: $d2 $c9 $6c

    adc $77                                       ; $46a0: $ce $77
    cpl                                           ; $46a2: $2f
    rst $20                                       ; $46a3: $e7
    add hl, de                                    ; $46a4: $19
    pop hl                                        ; $46a5: $e1
    ld hl, $660b                                  ; $46a6: $21 $0b $66
    inc d                                         ; $46a9: $14
    ld d, $bd                                     ; $46aa: $16 $bd
    cp d                                          ; $46ac: $ba
    dec hl                                        ; $46ad: $2b
    or d                                          ; $46ae: $b2
    db $e4                                        ; $46af: $e4
    ld [$0a81], a                                 ; $46b0: $ea $81 $0a
    db $e4                                        ; $46b3: $e4
    and b                                         ; $46b4: $a0
    ld l, h                                       ; $46b5: $6c
    xor $47                                       ; $46b6: $ee $47
    dec bc                                        ; $46b8: $0b
    dec de                                        ; $46b9: $1b
    call $fc77                                    ; $46ba: $cd $77 $fc
    xor c                                         ; $46bd: $a9
    add hl, sp                                    ; $46be: $39
    call z, $2771                                 ; $46bf: $cc $71 $27

Jump_04a_46c2:
    add hl, bc                                    ; $46c2: $09
    inc bc                                        ; $46c3: $03
    ret nc                                        ; $46c4: $d0

    call c, $0b5d                                 ; $46c5: $dc $5d $0b
    ld sp, $aa18                                  ; $46c8: $31 $18 $aa
    ld bc, $9ffa                                  ; $46cb: $01 $fa $9f
    rlca                                          ; $46ce: $07
    sbc d                                         ; $46cf: $9a
    cp a                                          ; $46d0: $bf
    ld h, b                                       ; $46d1: $60
    xor $ff                                       ; $46d2: $ee $ff
    inc [hl]                                      ; $46d4: $34
    ld a, $b5                                     ; $46d5: $3e $b5
    ld [hl], e                                    ; $46d7: $73
    dec l                                         ; $46d8: $2d
    rst $30                                       ; $46d9: $f7
    ld d, e                                       ; $46da: $53
    dec c                                         ; $46db: $0d
    jp nc, $da8e                                  ; $46dc: $d2 $8e $da

    ld c, e                                       ; $46df: $4b
    sbc a                                         ; $46e0: $9f
    add h                                         ; $46e1: $84
    ld [de], a                                    ; $46e2: $12
    rst $00                                       ; $46e3: $c7
    cp e                                          ; $46e4: $bb
    ld h, $a7                                     ; $46e5: $26 $a7
    ret c                                         ; $46e7: $d8

    ld [hl], c                                    ; $46e8: $71
    ld l, b                                       ; $46e9: $68

Jump_04a_46ea:
    sub a                                         ; $46ea: $97
    push af                                       ; $46eb: $f5
    daa                                           ; $46ec: $27
    inc b                                         ; $46ed: $04
    db $e3                                        ; $46ee: $e3
    sub d                                         ; $46ef: $92
    inc bc                                        ; $46f0: $03
    ld d, $95                                     ; $46f1: $16 $95
    rst $10                                       ; $46f3: $d7
    and $2c                                       ; $46f4: $e6 $2c
    ld sp, hl                                     ; $46f6: $f9
    db $f4                                        ; $46f7: $f4
    ccf                                           ; $46f8: $3f
    ld sp, hl                                     ; $46f9: $f9
    ld a, b                                       ; $46fa: $78
    cpl                                           ; $46fb: $2f

jr_04a_46fc:
    jr jr_04a_4735                                ; $46fc: $18 $37

    ld [hl], a                                    ; $46fe: $77

jr_04a_46ff:
    ld [$f2c2], a                                 ; $46ff: $ea $c2 $f2
    and d                                         ; $4702: $a2
    ld [hl], d                                    ; $4703: $72
    sbc e                                         ; $4704: $9b
    inc sp                                        ; $4705: $33
    bit 3, l                                      ; $4706: $cb $5d
    ld a, [de]                                    ; $4708: $1a
    jr nz, jr_04a_46ff                            ; $4709: $20 $f4

    ld [hl], e                                    ; $470b: $73
    ld c, e                                       ; $470c: $4b
    ld e, h                                       ; $470d: $5c
    xor l                                         ; $470e: $ad
    sbc e                                         ; $470f: $9b
    pop af                                        ; $4710: $f1
    ld bc, $7d2f                                  ; $4711: $01 $2f $7d
    ld [de], a                                    ; $4714: $12
    ld c, d                                       ; $4715: $4a
    inc l                                         ; $4716: $2c
    ld a, [hl]                                    ; $4717: $7e
    sub a                                         ; $4718: $97
    jr jr_04a_4727                                ; $4719: $18 $0c

    push de                                       ; $471b: $d5
    ld a, [hl]                                    ; $471c: $7e
    or d                                          ; $471d: $b2
    ld c, d                                       ; $471e: $4a
    add e                                         ; $471f: $83

jr_04a_4720:
    ld e, b                                       ; $4720: $58
    db $fc                                        ; $4721: $fc
    ld e, [hl]                                    ; $4722: $5e
    rst $08                                       ; $4723: $cf
    ld [$1a5d], a                                 ; $4724: $ea $5d $1a

jr_04a_4727:
    sub c                                         ; $4727: $91
    sbc b                                         ; $4728: $98
    adc e                                         ; $4729: $8b
    cp c                                          ; $472a: $b9
    sub [hl]                                      ; $472b: $96
    ld h, b                                       ; $472c: $60
    or a                                          ; $472d: $b7
    ld b, l                                       ; $472e: $45
    ld [c], a                                     ; $472f: $e2
    rrca                                          ; $4730: $0f
    sub a                                         ; $4731: $97
    ld e, b                                       ; $4732: $58
    ld a, [de]                                    ; $4733: $1a
    xor d                                         ; $4734: $aa

jr_04a_4735:
    add l                                         ; $4735: $85
    jr jr_04a_46fc                                ; $4736: $18 $c4

    cp e                                          ; $4738: $bb
    sbc $9d                                       ; $4739: $de $9d
    ld e, d                                       ; $473b: $5a
    sbc [hl]                                      ; $473c: $9e
    scf                                           ; $473d: $37
    sbc [hl]                                      ; $473e: $9e
    ld b, a                                       ; $473f: $47
    sbc [hl]                                      ; $4740: $9e
    ld l, e                                       ; $4741: $6b
    or d                                          ; $4742: $b2
    inc [hl]                                      ; $4743: $34
    ld h, b                                       ; $4744: $60
    add $03                                       ; $4745: $c6 $03
    dec d                                         ; $4747: $15
    ld [$f350], a                                 ; $4748: $ea $50 $f3
    ld h, d                                       ; $474b: $62
    db $fc                                        ; $474c: $fc
    pop hl                                        ; $474d: $e1
    pop hl                                        ; $474e: $e1
    sub l                                         ; $474f: $95
    inc bc                                        ; $4750: $03
    rst $10                                       ; $4751: $d7
    db $e4                                        ; $4752: $e4
    ld c, [hl]                                    ; $4753: $4e
    dec l                                         ; $4754: $2d
    rst $28                                       ; $4755: $ef
    ld [hl], $8e                                  ; $4756: $36 $8e
    ld [hl], a                                    ; $4758: $77
    ld c, l                                       ; $4759: $4d
    ld l, $fa                                     ; $475a: $2e $fa
    inc a                                         ; $475c: $3c
    rst $18                                       ; $475d: $df
    ld c, c                                       ; $475e: $49
    ld e, l                                       ; $475f: $5d
    call z, Call_04a_76ee                         ; $4760: $cc $ee $76
    sub l                                         ; $4763: $95
    jr z, jr_04a_4720                             ; $4764: $28 $ba

    ld h, e                                       ; $4766: $63
    cpl                                           ; $4767: $2f
    ld a, l                                       ; $4768: $7d
    ld [de], a                                    ; $4769: $12
    ld c, d                                       ; $476a: $4a
    cp h                                          ; $476b: $bc
    ld d, e                                       ; $476c: $53
    add c                                         ; $476d: $81
    ld h, d                                       ; $476e: $62
    add a                                         ; $476f: $87
    sbc d                                         ; $4770: $9a
    pop af                                        ; $4771: $f1
    ld bc, $776f                                  ; $4772: $01 $6f $77
    ld h, c                                       ; $4775: $61
    dec b                                         ; $4776: $05
    and c                                         ; $4777: $a1
    cp c                                          ; $4778: $b9
    ld [hl], $27                                  ; $4779: $36 $27
    db $10                                        ; $477b: $10
    ld d, [hl]                                    ; $477c: $56
    inc [hl]                                      ; $477d: $34
    ld d, b                                       ; $477e: $50
    ld c, c                                       ; $477f: $49
    dec b                                         ; $4780: $05
    call $96b9                                    ; $4781: $cd $b9 $96
    ld a, e                                       ; $4784: $7b
    ld a, [hl-]                                   ; $4785: $3a
    inc [hl]                                      ; $4786: $34
    jp nc, $bdd8                                  ; $4787: $d2 $d8 $bd

    db $dd                                        ; $478a: $dd
    xor b                                         ; $478b: $a8
    ld a, [hl-]                                   ; $478c: $3a
    sbc $33                                       ; $478d: $de $33
    call $ae29                                    ; $478f: $cd $29 $ae
    sbc [hl]                                      ; $4792: $9e
    ld l, e                                       ; $4793: $6b
    cp c                                          ; $4794: $b9

jr_04a_4795:
    inc sp                                        ; $4795: $33
    ld b, $39                                     ; $4796: $06 $39
    sub a                                         ; $4798: $97
    or b                                          ; $4799: $b0
    jp hl                                         ; $479a: $e9


    sbc e                                         ; $479b: $9b
    sub e                                         ; $479c: $93
    ccf                                           ; $479d: $3f
    ld [c], a                                     ; $479e: $e2
    cp l                                          ; $479f: $bd
    db $f4                                        ; $47a0: $f4
    ld c, c                                       ; $47a1: $49
    jr z, jr_04a_4795                             ; $47a2: $28 $f1

    call z, $b152                                 ; $47a4: $cc $52 $b1
    ld e, c                                       ; $47a7: $59
    ld a, [$6cee]                                 ; $47a8: $fa $ee $6c
    ld e, h                                       ; $47ab: $5c
    ld a, [c]                                     ; $47ac: $f2
    ld b, $f6                                     ; $47ad: $06 $f6
    and e                                         ; $47af: $a3
    ld b, l                                       ; $47b0: $45
    add sp, $7d                                   ; $47b1: $e8 $7d
    add hl, hl                                    ; $47b3: $29
    dec c                                         ; $47b4: $0d
    ld e, $f2                                     ; $47b5: $1e $f2
    ld a, $14                                     ; $47b7: $3e $14
    sbc d                                         ; $47b9: $9a
    ld l, [hl]                                    ; $47ba: $6e
    add $07                                       ; $47bb: $c6 $07
    cpl                                           ; $47bd: $2f
    rr e                                          ; $47be: $cb $1b
    and $2d                                       ; $47c0: $e6 $2d
    db $e3                                        ; $47c2: $e3
    ld e, l                                       ; $47c3: $5d
    sub e                                         ; $47c4: $93
    dec sp                                        ; $47c5: $3b
    ld h, e                                       ; $47c6: $63
    rla                                           ; $47c7: $17
    jr c, @+$5c                                   ; $47c8: $38 $5a

    ld h, e                                       ; $47ca: $63
    rst $20                                       ; $47cb: $e7
    dec l                                         ; $47cc: $2d
    db $e3                                        ; $47cd: $e3
    inc bc                                        ; $47ce: $03
    sub a                                         ; $47cf: $97
    dec d                                         ; $47d0: $15
    inc b                                         ; $47d1: $04
    db $ec                                        ; $47d2: $ec
    ld l, [hl]                                    ; $47d3: $6e
    adc e                                         ; $47d4: $8b
    xor [hl]                                      ; $47d5: $ae
    inc e                                         ; $47d6: $1c
    cpl                                           ; $47d7: $2f
    ld a, l                                       ; $47d8: $7d
    or b                                          ; $47d9: $b0
    call nz, Call_04a_7c72                        ; $47da: $c4 $72 $7c
    nop                                           ; $47dd: $00
    xor a                                         ; $47de: $af
    ret nc                                        ; $47df: $d0

    rla                                           ; $47e0: $17
    ld e, d                                       ; $47e1: $5a
    ld e, d                                       ; $47e2: $5a
    ld e, b                                       ; $47e3: $58
    ld e, [hl]                                    ; $47e4: $5e
    ld a, [hl]                                    ; $47e5: $7e
    or b                                          ; $47e6: $b0
    db $db                                        ; $47e7: $db
    call nc, Call_000_2ec5                        ; $47e8: $d4 $c5 $2e
    adc l                                         ; $47eb: $8d
    ld c, b                                       ; $47ec: $48
    adc h                                         ; $47ed: $8c
    ld hl, sp-$13                                 ; $47ee: $f8 $ed
    db $ed                                        ; $47f0: $ed
    ld l, $fa                                     ; $47f1: $2e $fa
    call z, $ddcd                                 ; $47f3: $cc $cd $dd
    ld d, $8d                                     ; $47f6: $16 $8d
    ld c, e                                       ; $47f8: $4b
    ld c, $58                                     ; $47f9: $0e $58
    ld e, b                                       ; $47fb: $58
    ld b, c                                       ; $47fc: $41
    xor b                                         ; $47fd: $a8
    ld hl, sp+$03                                 ; $47fe: $f8 $03
    ld l, a                                       ; $4800: $6f
    ld [hl], a                                    ; $4801: $77
    pop de                                        ; $4802: $d1
    cpl                                           ; $4803: $2f
    scf                                           ; $4804: $37
    rlca                                          ; $4805: $07
    call z, Call_000_3e32                         ; $4806: $cc $32 $3e
    nop                                           ; $4809: $00
    rst $10                                       ; $480a: $d7
    db $e4                                        ; $480b: $e4
    ld e, h                                       ; $480c: $5c
    ld c, h                                       ; $480d: $4c
    cp a                                          ; $480e: $bf
    db $fc                                        ; $480f: $fc
    ld h, b                                       ; $4810: $60
    adc d                                         ; $4811: $8a
    ld e, e                                       ; $4812: $5b
    xor a                                         ; $4813: $af
    and $8d                                       ; $4814: $e6 $8d
    add a                                         ; $4816: $87
    ld [hl], d                                    ; $4817: $72
    rst $20                                       ; $4818: $e7
    rst $28                                       ; $4819: $ef
    inc l                                         ; $481a: $2c
    ld a, [$e6e5]                                 ; $481b: $fa $e5 $e6
    add b                                         ; $481e: $80
    ld e, c                                       ; $481f: $59
    ld c, $73                                     ; $4820: $0e $73
    sub b                                         ; $4822: $90
    ld [hl], $63                                  ; $4823: $36 $63
    dec [hl]                                      ; $4825: $35
    rst $10                                       ; $4826: $d7
    ld [hl], d                                    ; $4827: $72
    ld bc, $1706                                  ; $4828: $01 $06 $17
    cp e                                          ; $482b: $bb
    inc l                                         ; $482c: $2c
    ld b, l                                       ; $482d: $45
    push de                                       ; $482e: $d5
    ret c                                         ; $482f: $d8

    adc h                                         ; $4830: $8c
    rrca                                          ; $4831: $0f
    rst $10                                       ; $4832: $d7
    ld sp, $d098                                  ; $4833: $31 $98 $d0
    db $e4                                        ; $4836: $e4
    sbc l                                         ; $4837: $9d
    or c                                          ; $4838: $b1
    ld [hl-], a                                   ; $4839: $32
    sbc $33                                       ; $483a: $de $33
    add hl, sp                                    ; $483c: $39
    sub h                                         ; $483d: $94
    sub e                                         ; $483e: $93
    sub [hl]                                      ; $483f: $96
    dec bc                                        ; $4840: $0b
    set 1, e                                      ; $4841: $cb $cb
    ld a, [c]                                     ; $4843: $f2
    adc $7f                                       ; $4844: $ce $7f
    ldh [$d7], a                                  ; $4846: $e0 $d7
    rst $08                                       ; $4848: $cf
    or h                                          ; $4849: $b4
    ld e, d                                       ; $484a: $5a
    add b                                         ; $484b: $80
    ld b, c                                       ; $484c: $41
    ld a, h                                       ; $484d: $7c
    nop                                           ; $484e: $00
    sub a                                         ; $484f: $97
    push hl                                       ; $4850: $e5
    and c                                         ; $4851: $a1
    ld a, [de]                                    ; $4852: $1a
    jr z, jr_04a_486a                             ; $4853: $28 $15

    ld d, h                                       ; $4855: $54
    ld a, e                                       ; $4856: $7b
    pop af                                        ; $4857: $f1
    ld a, e                                       ; $4858: $7b
    cp $47                                        ; $4859: $fe $47
    ei                                            ; $485b: $fb
    ret nc                                        ; $485c: $d0

    push bc                                       ; $485d: $c5
    ld l, $4b                                     ; $485e: $2e $4b
    ld d, c                                       ; $4860: $51
    dec [hl]                                      ; $4861: $35
    ld [hl], $e3                                  ; $4862: $36 $e3
    inc bc                                        ; $4864: $03
    sub a                                         ; $4865: $97
    push hl                                       ; $4866: $e5
    and c                                         ; $4867: $a1
    ld a, [de]                                    ; $4868: $1a
    ld h, e                                       ; $4869: $63

jr_04a_486a:
    ldh [$2f], a                                  ; $486a: $e0 $2f
    halt                                          ; $486c: $76
    ld l, c                                       ; $486d: $69
    add b                                         ; $486e: $80
    ret nc                                        ; $486f: $d0

    rst $00                                       ; $4870: $c7
    rlca                                          ; $4871: $07
    sub a                                         ; $4872: $97
    jr @+$2e                                      ; $4873: $18 $2c

    inc l                                         ; $4875: $2c
    or h                                          ; $4876: $b4
    ret nc                                        ; $4877: $d0

    adc b                                         ; $4878: $88
    dec d                                         ; $4879: $15
    and e                                         ; $487a: $a3
    sub h                                         ; $487b: $94
    sbc l                                         ; $487c: $9d
    db $db                                        ; $487d: $db
    ld [$5771], a                                 ; $487e: $ea $71 $57
    ld l, [hl]                                    ; $4881: $6e

jr_04a_4882:
    adc $fd                                       ; $4882: $ce $fd
    sbc a                                         ; $4884: $9f
    and $3b                                       ; $4885: $e6 $3b
    ld a, [hl+]                                   ; $4887: $2a
    xor d                                         ; $4888: $aa
    ld a, b                                       ; $4889: $78
    rst $08                                       ; $488a: $cf
    db $e4                                        ; $488b: $e4
    ld d, b                                       ; $488c: $50
    ld l, $2c                                     ; $488d: $2e $2c
    or h                                          ; $488f: $b4
    di                                            ; $4890: $f3
    ld l, l                                       ; $4891: $6d
    add hl, sp                                    ; $4892: $39
    xor [hl]                                      ; $4893: $ae
    rst $30                                       ; $4894: $f7
    ld h, d                                       ; $4895: $62
    add h                                         ; $4896: $84
    sub [hl]                                      ; $4897: $96
    jr c, jr_04a_4882                             ; $4898: $38 $e8

    jr nc, jr_04a_48dd                            ; $489a: $30 $41

    ld hl, $7c93                                  ; $489c: $21 $93 $7c
    ld sp, $7ff7                                  ; $489f: $31 $f7 $7f

jr_04a_48a2:
    sbc d                                         ; $48a2: $9a
    ld l, c                                       ; $48a3: $69
    dec [hl]                                      ; $48a4: $35
    db $ec                                        ; $48a5: $ec
    adc $08                                       ; $48a6: $ce $08
    rrca                                          ; $48a8: $0f
    rst $10                                       ; $48a9: $d7
    and $d9                                       ; $48aa: $e6 $d9
    inc l                                         ; $48ac: $2c
    sbc d                                         ; $48ad: $9a
    ei                                            ; $48ae: $fb
    xor e                                         ; $48af: $ab
    add hl, sp                                    ; $48b0: $39
    ld a, $00                                     ; $48b1: $3e $00
    sub a                                         ; $48b3: $97
    jr jr_04a_48a2                                ; $48b4: $18 $ec

    ld l, h                                       ; $48b6: $6c
    ld a, d                                       ; $48b7: $7a
    daa                                           ; $48b8: $27
    inc sp                                        ; $48b9: $33
    ld d, d                                       ; $48ba: $52
    ldh a, [rNR10]                                ; $48bb: $f0 $10
    add e                                         ; $48bd: $83
    call nc, $c818                                ; $48be: $d4 $18 $c8
    ld [hl], c                                    ; $48c1: $71
    cp l                                          ; $48c2: $bd
    rla                                           ; $48c3: $17
    ld [hl], e                                    ; $48c4: $73
    sbc e                                         ; $48c5: $9b
    ld e, d                                       ; $48c6: $5a
    ld hl, sp-$41                                 ; $48c7: $f8 $bf
    ret z                                         ; $48c9: $c8

    rlca                                          ; $48ca: $07
    ld e, l                                       ; $48cb: $5d
    ret                                           ; $48cc: $c9


    ld b, h                                       ; $48cd: $44
    inc hl                                        ; $48ce: $23
    ld b, a                                       ; $48cf: $47
    jp z, Jump_04a_7c66                           ; $48d0: $ca $66 $7c

    nop                                           ; $48d3: $00
    ld l, a                                       ; $48d4: $6f
    ld [hl], a                                    ; $48d5: $77
    pop de                                        ; $48d6: $d1
    cpl                                           ; $48d7: $2f
    scf                                           ; $48d8: $37
    rlca                                          ; $48d9: $07
    call z, $a672                                 ; $48da: $cc $72 $a6

jr_04a_48dd:
    push de                                       ; $48dd: $d5
    ld c, [hl]                                    ; $48de: $4e
    db $dd                                        ; $48df: $dd
    add a                                         ; $48e0: $87
    add $18                                       ; $48e1: $c6 $18
    ld hl, sp+$09                                 ; $48e3: $f8 $09
    rst $18                                       ; $48e5: $df
    ld l, l                                       ; $48e6: $6d
    xor $43                                       ; $48e7: $ee $43
    di                                            ; $48e9: $f3
    dec e                                         ; $48ea: $1d
    ld a, a                                       ; $48eb: $7f
    ld l, d                                       ; $48ec: $6a
    xor $84                                       ; $48ed: $ee $84
    ld e, d                                       ; $48ef: $5a
    scf                                           ; $48f0: $37
    ld [hl], a                                    ; $48f1: $77
    add $20                                       ; $48f2: $c6 $20
    db $e3                                        ; $48f4: $e3
    inc bc                                        ; $48f5: $03
    ld d, a                                       ; $48f6: $57
    dec c                                         ; $48f7: $0d
    db $ec                                        ; $48f8: $ec
    and l                                         ; $48f9: $a5
    ld c, a                                       ; $48fa: $4f
    ld b, d                                       ; $48fb: $42
    adc c                                         ; $48fc: $89
    cpl                                           ; $48fd: $2f
    and $0d                                       ; $48fe: $e6 $0d
    ld c, h                                       ; $4900: $4c
    pop bc                                        ; $4901: $c1
    ld b, e                                       ; $4902: $43
    db $e3                                        ; $4903: $e3
    and b                                         ; $4904: $a0
    ld [c], a                                     ; $4905: $e2
    ld [hl], a                                    ; $4906: $77
    ld c, l                                       ; $4907: $4d
    xor $6c                                       ; $4908: $ee $6c
    ld a, d                                       ; $490a: $7a
    ld b, c                                       ; $490b: $41
    sub a                                         ; $490c: $97
    rst $38                                       ; $490d: $ff
    inc hl                                        ; $490e: $23
    rst $08                                       ; $490f: $cf
    dec l                                         ; $4910: $2d
    add c                                         ; $4911: $81
    ld [hl], d                                    ; $4912: $72
    ld d, e                                       ; $4913: $53
    db $fc                                        ; $4914: $fc
    ld bc, $33af                                  ; $4915: $01 $af $33
    sbc c                                         ; $4918: $99
    ld l, b                                       ; $4919: $68
    call $77dd                                    ; $491a: $cd $dd $77
    rst $08                                       ; $491d: $cf
    jr nz, jr_04a_4947                            ; $491e: $20 $27

    cp c                                          ; $4920: $b9
    add hl, sp                                    ; $4921: $39
    inc de                                        ; $4922: $13
    ld sp, $ce55                                  ; $4923: $31 $55 $ce
    db $fd                                        ; $4926: $fd
    sbc a                                         ; $4927: $9f
    or $de                                        ; $4928: $f6 $de
    ret                                           ; $492a: $c9


    cp h                                          ; $492b: $bc
    cpl                                           ; $492c: $2f
    ld hl, $143c                                  ; $492d: $21 $3c $14
    cp a                                          ; $4930: $bf
    ld l, e                                       ; $4931: $6b
    cp c                                          ; $4932: $b9
    or b                                          ; $4933: $b0
    cp h                                          ; $4934: $bc
    ldh a, [rOCPD]                                ; $4935: $f0 $6b
    push bc                                       ; $4937: $c5
    ld [hl], e                                    ; $4938: $73
    dec l                                         ; $4939: $2d
    rst $20                                       ; $493a: $e7
    cp e                                          ; $493b: $bb
    inc [hl]                                      ; $493c: $34
    ld a, b                                       ; $493d: $78
    ret z                                         ; $493e: $c8

    di                                            ; $493f: $f3
    rst $38                                       ; $4940: $ff
    db $d3                                        ; $4941: $d3
    jp nz, $a4f2                                  ; $4942: $c2 $f2 $a4

    add hl, hl                                    ; $4945: $29
    ld l, [hl]                                    ; $4946: $6e

jr_04a_4947:
    push af                                       ; $4947: $f5
    adc $a7                                       ; $4948: $ce $a7
    sub d                                         ; $494a: $92
    db $db                                        ; $494b: $db
    inc d                                         ; $494c: $14
    ld a, a                                       ; $494d: $7f
    nop                                           ; $494e: $00
    ld l, a                                       ; $494f: $6f
    ld c, [hl]                                    ; $4950: $4e
    jr z, jr_04a_4973                             ; $4951: $28 $20

    inc c                                         ; $4953: $0c
    jr nz, jr_04a_49b4                            ; $4954: $20 $5e

    ld e, b                                       ; $4956: $58
    ld e, [hl]                                    ; $4957: $5e
    ld h, d                                       ; $4958: $62
    ld sp, hl                                     ; $4959: $f9
    ld h, d                                       ; $495a: $62
    db $10                                        ; $495b: $10
    ld a, l                                       ; $495c: $7d
    ld d, c                                       ; $495d: $51
    sub l                                         ; $495e: $95
    ld a, [$ef14]                                 ; $495f: $fa $14 $ef
    jp nc, $c488                                  ; $4962: $d2 $88 $c4

    db $ec                                        ; $4965: $ec
    sub l                                         ; $4966: $95
    rst $08                                       ; $4967: $cf
    ld e, h                                       ; $4968: $5c
    sbc d                                         ; $4969: $9a
    db $fc                                        ; $496a: $fc
    ld de, $64af                                  ; $496b: $11 $af $64
    sub [hl]                                      ; $496e: $96
    ld l, e                                       ; $496f: $6b
    ld l, $c4                                     ; $4970: $2e $c4
    ld h, b                                       ; $4972: $60

jr_04a_4973:
    ld h, c                                       ; $4973: $61
    dec hl                                        ; $4974: $2b
    ld [c], a                                     ; $4975: $e2
    or l                                          ; $4976: $b5
    add hl, sp                                    ; $4977: $39
    ld c, a                                       ; $4978: $4f
    ld h, [hl]                                    ; $4979: $66
    ld d, d                                       ; $497a: $52
    db $fc                                        ; $497b: $fc
    ld bc, $554f                                  ; $497c: $01 $4f $55
    dec de                                        ; $497f: $1b
    inc a                                         ; $4980: $3c
    xor h                                         ; $4981: $ac
    add $40                                       ; $4982: $c6 $40
    adc d                                         ; $4984: $8a
    rst $18                                       ; $4985: $df
    dec h                                         ; $4986: $25
    sub [hl]                                      ; $4987: $96
    halt                                          ; $4988: $76
    ld [hl], $3d                                  ; $4989: $36 $3d
    adc b                                         ; $498b: $88
    cp [hl]                                       ; $498c: $be
    xor b                                         ; $498d: $a8
    ld c, d                                       ; $498e: $4a
    ld a, l                                       ; $498f: $7d
    jp c, $d9eb                                   ; $4990: $da $eb $d9

    ld b, d                                       ; $4993: $42
    ld [hl], e                                    ; $4994: $73
    dec l                                         ; $4995: $2d
    rla                                           ; $4996: $17
    ld a, [hl]                                    ; $4997: $7e
    ld l, d                                       ; $4998: $6a
    adc d                                         ; $4999: $8a
    ccf                                           ; $499a: $3f
    nop                                           ; $499b: $00
    rst $08                                       ; $499c: $cf
    ld h, e                                       ; $499d: $63
    jr nz, jr_04a_49cf                            ; $499e: $20 $2f

    and $cd                                       ; $49a0: $e6 $cd
    ld l, b                                       ; $49a2: $68
    ld h, a                                       ; $49a3: $67
    inc c                                         ; $49a4: $0c
    ld [hl], d                                    ; $49a5: $72
    rst $20                                       ; $49a6: $e7
    adc d                                         ; $49a7: $8a
    ccf                                           ; $49a8: $3f
    nop                                           ; $49a9: $00
    ld l, a                                       ; $49aa: $6f
    ld [hl], a                                    ; $49ab: $77
    ld h, a                                       ; $49ac: $67
    inc c                                         ; $49ad: $0c
    ld [hl], d                                    ; $49ae: $72
    ld hl, $2696                                  ; $49af: $21 $96 $26
    inc [hl]                                      ; $49b2: $34
    db $eb                                        ; $49b3: $eb

jr_04a_49b4:
    sbc e                                         ; $49b4: $9b
    ld [c], a                                     ; $49b5: $e2

jr_04a_49b6:
    rrca                                          ; $49b6: $0f
    rst $08                                       ; $49b7: $cf
    ld a, l                                       ; $49b8: $7d
    ld a, a                                       ; $49b9: $7f
    add $c0                                       ; $49ba: $c6 $c0
    ld e, e                                       ; $49bc: $5b
    jp z, $e379                                   ; $49bd: $ca $79 $e3

    ld a, c                                       ; $49c0: $79
    db $e3                                        ; $49c1: $e3
    cp c                                          ; $49c2: $b9
    rst $38                                       ; $49c3: $ff
    sub e                                         ; $49c4: $93
    add b                                         ; $49c5: $80
    pop bc                                        ; $49c6: $c1
    ld d, b                                       ; $49c7: $50
    push bc                                       ; $49c8: $c5
    rlca                                          ; $49c9: $07
    sub a                                         ; $49ca: $97
    push hl                                       ; $49cb: $e5
    and c                                         ; $49cc: $a1
    ld e, d                                       ; $49cd: $5a
    ld a, [hl]                                    ; $49ce: $7e

jr_04a_49cf:
    or b                                          ; $49cf: $b0
    call nz, $dcf2                                ; $49d0: $c4 $f2 $dc
    rst $38                                       ; $49d3: $ff
    ld c, c                                       ; $49d4: $49
    ret nz                                        ; $49d5: $c0

    jr nz, jr_04a_49b6                            ; $49d6: $20 $de

    db $db                                        ; $49d8: $db
    ld e, l                                       ; $49d9: $5d
    db $f4                                        ; $49da: $f4
    set 1, l                                      ; $49db: $cb $cd
    push hl                                       ; $49dd: $e5
    rlca                                          ; $49de: $07
    db $e3                                        ; $49df: $e3
    sub d                                         ; $49e0: $92
    inc bc                                        ; $49e1: $03
    sub [hl]                                      ; $49e2: $96
    ld h, [hl]                                    ; $49e3: $66
    inc [hl]                                      ; $49e4: $34
    rst $18                                       ; $49e5: $df
    pop af                                        ; $49e6: $f1
    and a                                         ; $49e7: $a7
    and $5c                                       ; $49e8: $e6 $5c
    srl l                                         ; $49ea: $cb $3d
    ld b, a                                       ; $49ec: $47
    jr z, jr_04a_4a01                             ; $49ed: $28 $12

    db $fd                                        ; $49ef: $fd
    and [hl]                                      ; $49f0: $a6
    rst $38                                       ; $49f1: $ff
    inc d                                         ; $49f2: $14
    rra                                           ; $49f3: $1f
    sub a                                         ; $49f4: $97
    and l                                         ; $49f5: $a5
    xor b                                         ; $49f6: $a8
    ld a, [de]                                    ; $49f7: $1a
    sbc e                                         ; $49f8: $9b
    ld [hl], c                                    ; $49f9: $71
    inc e                                         ; $49fa: $1c
    rrca                                          ; $49fb: $0f
    push hl                                       ; $49fc: $e5
    jp nz, $f30a                                  ; $49fd: $c2 $0a $f3

    db $dd                                        ; $4a00: $dd

jr_04a_4a01:
    bit 7, c                                      ; $4a01: $cb $79
    ld b, [hl]                                    ; $4a03: $46
    ld a, b                                       ; $4a04: $78
    ret z                                         ; $4a05: $c8

    add d                                         ; $4a06: $82
    add hl, de                                    ; $4a07: $19
    add l                                         ; $4a08: $85
    ld b, l                                       ; $4a09: $45
    xor a                                         ; $4a0a: $af
    xor $8a                                       ; $4a0b: $ee $8a
    inc l                                         ; $4a0d: $2c
    cp c                                          ; $4a0e: $b9
    ld a, d                                       ; $4a0f: $7a
    jp nz, $9b77                                  ; $4a10: $c2 $77 $9b

    jp $ef9c                                      ; $4a13: $c3 $9c $ef


    ld hl, sp+$53                                 ; $4a16: $f8 $53
    ld [hl], e                                    ; $4a18: $73
    jp c, Jump_000_39b8                           ; $4a19: $da $b8 $39

    adc l                                         ; $4a1c: $8d
    nop                                           ; $4a1d: $00
    inc [hl]                                      ; $4a1e: $34
    push bc                                       ; $4a1f: $c5
    rra                                           ; $4a20: $1f
    sub a                                         ; $4a21: $97
    dec d                                         ; $4a22: $15
    add h                                         ; $4a23: $84
    ld a, [hl+]                                   ; $4a24: $2a
    pop af                                        ; $4a25: $f1
    rlca                                          ; $4a26: $07
    rst $08                                       ; $4a27: $cf
    ld h, b                                       ; $4a28: $60
    ld a, [$0c6a]                                 ; $4a29: $fa $6a $0c
    db $e4                                        ; $4a2c: $e4
    adc $18                                       ; $4a2d: $ce $18
    db $e4                                        ; $4a2f: $e4
    ld a, h                                       ; $4a30: $7c
    rst $00                                       ; $4a31: $c7
    ld c, l                                       ; $4a32: $4d
    or [hl]                                       ; $4a33: $b6
    xor b                                         ; $4a34: $a8
    xor c                                         ; $4a35: $a9
    or $dd                                        ; $4a36: $f6 $dd
    sub d                                         ; $4a38: $92
    ld hl, sp+$5d                                 ; $4a39: $f8 $5d
    sub [hl]                                      ; $4a3b: $96
    add a                                         ; $4a3c: $87
    ld l, d                                       ; $4a3d: $6a
    ld [bc], a                                    ; $4a3e: $02
    ld b, $69                                     ; $4a3f: $06 $69

jr_04a_4a41:
    dec sp                                        ; $4a41: $3b
    rst $38                                       ; $4a42: $ff
    xor b                                         ; $4a43: $a8
    db $e4                                        ; $4a44: $e4
    sbc d                                         ; $4a45: $9a
    or h                                          ; $4a46: $b4
    ld h, h                                       ; $4a47: $64
    xor h                                         ; $4a48: $ac
    ld hl, sp+$03                                 ; $4a49: $f8 $03
    rst $10                                       ; $4a4b: $d7
    db $ed                                        ; $4a4c: $ed
    ld h, d                                       ; $4a4d: $62
    cp [hl]                                       ; $4a4e: $be
    ld d, e                                       ; $4a4f: $53
    ldh a, [$f0]                                  ; $4a50: $f0 $f0
    ld a, a                                       ; $4a52: $7f
    dec a                                         ; $4a53: $3d
    ld d, h                                       ; $4a54: $54
    di                                            ; $4a55: $f3
    sub [hl]                                      ; $4a56: $96
    inc de                                        ; $4a57: $13
    jr nc, jr_04a_4aa2                            ; $4a58: $30 $48

    ld e, e                                       ; $4a5a: $5b
    ld e, b                                       ; $4a5b: $58
    db $dd                                        ; $4a5c: $dd
    ret z                                         ; $4a5d: $c8

    ld c, h                                       ; $4a5e: $4c
    ld c, a                                       ; $4a5f: $4f
    or a                                          ; $4a60: $b7
    jr nz, jr_04a_4a41                            ; $4a61: $20 $de

    dec hl                                        ; $4a63: $2b
    ld d, h                                       ; $4a64: $54
    jr c, @+$58                                   ; $4a65: $38 $56

    db $ed                                        ; $4a67: $ed
    ld h, h                                       ; $4a68: $64
    ld b, [hl]                                    ; $4a69: $46
    ld a, e                                       ; $4a6a: $7b
    dec a                                         ; $4a6b: $3d
    ld e, e                                       ; $4a6c: $5b

Call_04a_4a6d:
    ld l, b                                       ; $4a6d: $68
    rra                                           ; $4a6e: $1f
    jp c, $e0c9                                   ; $4a6f: $da $c9 $e0

    ld hl, $07c7                                  ; $4a72: $21 $c7 $07
    sub a                                         ; $4a75: $97
    ld b, [hl]                                    ; $4a76: $46
    inc h                                         ; $4a77: $24
    and $62                                       ; $4a78: $e6 $62
    and a                                         ; $4a7a: $a7
    xor $54                                       ; $4a7b: $ee $54
    ld l, [hl]                                    ; $4a7d: $6e
    ld l, $3f                                     ; $4a7e: $2e $3f
    ld e, b                                       ; $4a80: $58
    ld h, d                                       ; $4a81: $62
    ld a, c                                       ; $4a82: $79
    ld l, l                                       ; $4a83: $6d
    xor d                                         ; $4a84: $aa
    sbc l                                         ; $4a85: $9d
    dec hl                                        ; $4a86: $2b
    ld c, e                                       ; $4a87: $4b
    ei                                            ; $4a88: $fb
    and d                                         ; $4a89: $a2
    add l                                         ; $4a8a: $85
    jr @-$32                                      ; $4a8b: $18 $cc

    db $f4                                        ; $4a8d: $f4
    ld c, [hl]                                    ; $4a8e: $4e
    dec l                                         ; $4a8f: $2d
    cpl                                           ; $4a90: $2f
    db $fc                                        ; $4a91: $fc
    ld e, l                                       ; $4a92: $5d
    adc b                                         ; $4a93: $88
    pop bc                                        ; $4a94: $c1
    or h                                          ; $4a95: $b4
    dec h                                         ; $4a96: $25
    ld d, b                                       ; $4a97: $50
    ld a, e                                       ; $4a98: $7b
    ld b, l                                       ; $4a99: $45
    dec sp                                        ; $4a9a: $3b
    xor b                                         ; $4a9b: $a8
    add d                                         ; $4a9c: $82
    ld l, $fa                                     ; $4a9d: $2e $fa
    push hl                                       ; $4a9f: $e5
    ret                                           ; $4aa0: $c9


    rra                                           ; $4aa1: $1f

jr_04a_4aa2:
    dec [hl]                                      ; $4aa2: $35
    db $e3                                        ; $4aa3: $e3
    inc bc                                        ; $4aa4: $03
    cpl                                           ; $4aa5: $2f
    sbc d                                         ; $4aa6: $9a
    pop de                                        ; $4aa7: $d1
    ld [hl+], a                                   ; $4aa8: $22
    inc c                                         ; $4aa9: $0c
    ld [hl], d                                    ; $4aaa: $72
    ld a, [de]                                    ; $4aab: $1a
    sbc c                                         ; $4aac: $99
    dec hl                                        ; $4aad: $2b
    sbc e                                         ; $4aae: $9b
    dec bc                                        ; $4aaf: $0b
    ld e, e                                       ; $4ab0: $5b
    ld de, $3f2f                                  ; $4ab1: $11 $2f $3f
    ld e, b                                       ; $4ab4: $58
    cp $8f                                        ; $4ab5: $fe $8f
    cp h                                          ; $4ab7: $bc
    di                                            ; $4ab8: $f3
    ld [hl], a                                    ; $4ab9: $77
    ld e, e                                       ; $4aba: $5b
    dec a                                         ; $4abb: $3d
    ld [$1c83], sp                                ; $4abc: $08 $83 $1c
    xor b                                         ; $4abf: $a8
    scf                                           ; $4ac0: $37
    bit 7, b                                      ; $4ac1: $cb $78
    ld l, a                                       ; $4ac3: $6f
    ld a, l                                       ; $4ac4: $7d
    dec c                                         ; $4ac5: $0d
    sbc d                                         ; $4ac6: $9a
    ld l, d                                       ; $4ac7: $6a
    ld de, $4306                                  ; $4ac8: $11 $06 $43
    or l                                          ; $4acb: $b5
    or b                                          ; $4acc: $b0
    cp h                                          ; $4acd: $bc
    ld [hl], $c7                                  ; $4ace: $36 $c7
    sub l                                         ; $4ad0: $95
    call $e379                                    ; $4ad1: $cd $79 $e3
    sub l                                         ; $4ad4: $95
    ld b, $ea                                     ; $4ad5: $06 $ea
    sbc d                                         ; $4ad7: $9a
    pop de                                        ; $4ad8: $d1
    inc a                                         ; $4ad9: $3c
    dec d                                         ; $4ada: $15
    ld bc, $07c7                                  ; $4adb: $01 $c7 $07
    sub a                                         ; $4ade: $97
    and [hl]                                      ; $4adf: $a6
    push af                                       ; $4ae0: $f5
    rla                                           ; $4ae1: $17
    cp a                                          ; $4ae2: $bf
    rla                                           ; $4ae3: $17
    ld a, [hl+]                                   ; $4ae4: $2a
    ld h, l                                       ; $4ae5: $65
    ld l, c                                       ; $4ae6: $69
    ld h, [hl]                                    ; $4ae7: $66
    cp c                                          ; $4ae8: $b9
    db $db                                        ; $4ae9: $db
    ld a, b                                       ; $4aea: $78
    and b                                         ; $4aeb: $a0
    adc c                                         ; $4aec: $89
    push hl                                       ; $4aed: $e5
    and $5c                                       ; $4aee: $e6 $5c
    set 3, l                                      ; $4af0: $cb $dd
    add $3b                                       ; $4af2: $c6 $3b
    rst $38                                       ; $4af4: $ff
    call z, $d072                                 ; $4af5: $cc $72 $d0
    cp c                                          ; $4af8: $b9
    rst $38                                       ; $4af9: $ff
    sub e                                         ; $4afa: $93
    scf                                           ; $4afb: $37
    ld e, [hl]                                    ; $4afc: $5e
    ldh [rBCPS], a                                ; $4afd: $e0 $68
    adc l                                         ; $4aff: $8d
    ld e, l                                       ; $4b00: $5d
    sbc d                                         ; $4b01: $9a
    pop de                                        ; $4b02: $d1
    ld b, d                                       ; $4b03: $42
    rlca                                          ; $4b04: $07
    push de                                       ; $4b05: $d5
    add b                                         ; $4b06: $80
    ld e, c                                       ; $4b07: $59
    ld e, [hl]                                    ; $4b08: $5e
    add hl, sp                                    ; $4b09: $39
    nop                                           ; $4b0a: $00
    sub a                                         ; $4b0b: $97
    ld b, $08                                     ; $4b0c: $06 $08
    db $fd                                        ; $4b0e: $fd
    push bc                                       ; $4b0f: $c5
    ld c, h                                       ; $4b10: $4c
    xor e                                         ; $4b11: $ab
    ld h, c                                       ; $4b12: $61
    inc hl                                        ; $4b13: $23
    ld c, e                                       ; $4b14: $4b
    ccf                                           ; $4b15: $3f
    ld l, l                                       ; $4b16: $6d
    add hl, bc                                    ; $4b17: $09
    call nc, $d15e                                ; $4b18: $d4 $5e $d1
    ld c, $aa                                     ; $4b1b: $0e $aa
    and b                                         ; $4b1d: $a0
    dec sp                                        ; $4b1e: $3b
    and c                                         ; $4b1f: $a1
    sbc [hl]                                      ; $4b20: $9e
    db $fc                                        ; $4b21: $fc
    ld d, c                                       ; $4b22: $51
    di                                            ; $4b23: $f3

jr_04a_4b24:
    ld h, d                                       ; $4b24: $62
    pop hl                                        ; $4b25: $e1
    rst $28                                       ; $4b26: $ef
    and d                                         ; $4b27: $a2
    ld e, a                                       ; $4b28: $5f
    ld e, [hl]                                    ; $4b29: $5e
    adc b                                         ; $4b2a: $88
    pop bc                                        ; $4b2b: $c1
    jp nz, $bcf2                                  ; $4b2c: $c2 $f2 $bc

    push hl                                       ; $4b2f: $e5
    call z, Call_000_3212                         ; $4b30: $cc $12 $32
    add hl, hl                                    ; $4b33: $29
    sbc e                                         ; $4b34: $9b
    ld d, a                                       ; $4b35: $57
    ld c, $ef                                     ; $4b36: $0e $ef
    ld a, l                                       ; $4b38: $7d
    db $d3                                        ; $4b39: $d3
    ld l, d                                       ; $4b3a: $6a
    jr z, jr_04a_4b24                             ; $4b3b: $28 $e7

    or c                                          ; $4b3d: $b1
    ld [hl], e                                    ; $4b3e: $73
    xor c                                         ; $4b3f: $a9
    adc l                                         ; $4b40: $8d
    ld a, h                                       ; $4b41: $7c
    dec [hl]                                      ; $4b42: $35
    ld h, $98                                     ; $4b43: $26 $98
    ld e, e                                       ; $4b45: $5b
    ld [c], a                                     ; $4b46: $e2
    ld l, d                                       ; $4b47: $6a
    rst $18                                       ; $4b48: $df
    adc e                                         ; $4b49: $8b
    dec b                                         ; $4b4a: $05
    ld e, l                                       ; $4b4b: $5d
    db $f4                                        ; $4b4c: $f4
    ld a, c                                       ; $4b4d: $79
    and b                                         ; $4b4e: $a0
    and a                                         ; $4b4f: $a7
    rst $38                                       ; $4b50: $ff
    ld [hl], e                                    ; $4b51: $73
    ld h, c                                       ; $4b52: $61
    ld a, c                                       ; $4b53: $79
    add c                                         ; $4b54: $81
    add e                                         ; $4b55: $83
    adc d                                         ; $4b56: $8a
    dec sp                                        ; $4b57: $3b
    push bc                                       ; $4b58: $c5
    adc [hl]                                      ; $4b59: $8e
    sub h                                         ; $4b5a: $94
    ret c                                         ; $4b5b: $d8

    ld b, l                                       ; $4b5c: $45
    adc $19                                       ; $4b5d: $ce $19
    dec hl                                        ; $4b5f: $2b
    and a                                         ; $4b60: $a7
    and b                                         ; $4b61: $a0
    ld [$9ae6], a                                 ; $4b62: $ea $e6 $9a
    di                                            ; $4b65: $f3
    sub [hl]                                      ; $4b66: $96
    ld [hl], e                                    ; $4b67: $73
    ld c, l                                       ; $4b68: $4d
    di                                            ; $4b69: $f3
    ld e, [hl]                                    ; $4b6a: $5e
    pop de                                        ; $4b6b: $d1
    ld c, $aa                                     ; $4b6c: $0e $aa
    and b                                         ; $4b6e: $a0
    jp $d29c                                      ; $4b6f: $c3 $9c $d2


    ld h, [hl]                                    ; $4b72: $66
    ld d, b                                       ; $4b73: $50
    cp h                                          ; $4b74: $bc
    rst $20                                       ; $4b75: $e7
    ld a, [hl+]                                   ; $4b76: $2a

Call_04a_4b77:
Jump_04a_4b77:
    rst $00                                       ; $4b77: $c7
    rra                                           ; $4b78: $1f
    ld e, $ce                                     ; $4b79: $1e $ce
    dec de                                        ; $4b7b: $1b
    cpl                                           ; $4b7c: $2f
    call nz, $fe60                                ; $4b7d: $c4 $60 $fe
    ld [hl], $1a                                  ; $4b80: $36 $1a
    ld h, [hl]                                    ; $4b82: $66
    sbc e                                         ; $4b83: $9b
    ld l, d                                       ; $4b84: $6a
    daa                                           ; $4b85: $27
    ld d, e                                       ; $4b86: $53
    adc e                                         ; $4b87: $8b
    jp z, Jump_04a_736b                           ; $4b88: $ca $6b $73

    sbc [hl]                                      ; $4b8b: $9e
    ld c, h                                       ; $4b8c: $4c
    ld [hl], $8b                                  ; $4b8d: $36 $8b
    rla                                           ; $4b8f: $17
    db $e3                                        ; $4b90: $e3
    jp nc, $0309                                  ; $4b91: $d2 $09 $03

    dec a                                         ; $4b94: $3d
    sub h                                         ; $4b95: $94
    inc sp                                        ; $4b96: $33
    call $f818                                    ; $4b97: $cd $18 $f8
    or l                                          ; $4b9a: $b5
    add hl, sp                                    ; $4b9b: $39
    ld c, a                                       ; $4b9c: $4f
    ld h, [hl]                                    ; $4b9d: $66
    ld [hl], d                                    ; $4b9e: $72
    ld h, c                                       ; $4b9f: $61
    and c                                         ; $4ba0: $a1
    sbc l                                         ; $4ba1: $9d
    ld d, b                                       ; $4ba2: $50
    db $eb                                        ; $4ba3: $eb
    ld l, $ac                                     ; $4ba4: $2e $ac
    jr nz, jr_04a_4bdc                            ; $4ba6: $20 $34

    ld a, $00                                     ; $4ba8: $3e $00
    cpl                                           ; $4baa: $2f
    add hl, sp                                    ; $4bab: $39
    adc e                                         ; $4bac: $8b
    ld a, [hl]                                    ; $4bad: $7e
    cp c                                          ; $4bae: $b9
    cp c                                          ; $4baf: $b9
    ld d, e                                       ; $4bb0: $53
    rla                                           ; $4bb1: $17
    sub [hl]                                      ; $4bb2: $96
    ld h, a                                       ; $4bb3: $67
    sub [hl]                                      ; $4bb4: $96
    ld a, e                                       ; $4bb5: $7b
    and l                                         ; $4bb6: $a5
    inc h                                         ; $4bb7: $24
    dec l                                         ; $4bb8: $2d
    ld l, d                                       ; $4bb9: $6a
    or d                                          ; $4bba: $b2
    and e                                         ; $4bbb: $a3
    and $96                                       ; $4bbc: $e6 $96
    cp b                                          ; $4bbe: $b8
    ld e, d                                       ; $4bbf: $5a
    scf                                           ; $4bc0: $37
    db $e3                                        ; $4bc1: $e3
    cp l                                          ; $4bc2: $bd
    sbc [hl]                                      ; $4bc3: $9e
    dec l                                         ; $4bc4: $2d
    or h                                          ; $4bc5: $b4
    sub e                                         ; $4bc6: $93
    xor c                                         ; $4bc7: $a9
    ld sp, hl                                     ; $4bc8: $f9
    adc $a5                                       ; $4bc9: $ce $a5
    ld [hl], $f2                                  ; $4bcb: $36 $f2
    push de                                       ; $4bcd: $d5
    sbc b                                         ; $4bce: $98
    ld h, b                                       ; $4bcf: $60
    ld e, $bb                                     ; $4bd0: $1e $bb
    sub a                                         ; $4bd2: $97
    ld a, $09                                     ; $4bd3: $3e $09
    dec h                                         ; $4bd5: $25
    sbc [hl]                                      ; $4bd6: $9e
    ld e, c                                       ; $4bd7: $59
    xor $d2                                       ; $4bd8: $ee $d2
    nop                                           ; $4bda: $00
    and c                                         ; $4bdb: $a1

jr_04a_4bdc:
    ld e, a                                       ; $4bdc: $5f
    ret c                                         ; $4bdd: $d8

    adc d                                         ; $4bde: $8a
    ld a, b                                       ; $4bdf: $78
    and b                                         ; $4be0: $a0
    and b                                         ; $4be1: $a0
    ld l, [hl]                                    ; $4be2: $6e
    inc sp                                        ; $4be3: $33
    ld a, $00                                     ; $4be4: $3e $00
    cpl                                           ; $4be6: $2f
    sbc d                                         ; $4be7: $9a
    pop de                                        ; $4be8: $d1
    ld c, [hl]                                    ; $4be9: $4e
    db $dd                                        ; $4bea: $dd
    xor c                                         ; $4beb: $a9
    call c, $625c                                 ; $4bec: $dc $5c $62
    ld a, c                                       ; $4bef: $79
    daa                                           ; $4bf0: $27
    inc sp                                        ; $4bf1: $33
    jp c, $252b                                   ; $4bf2: $da $2b $25

    ld l, c                                       ; $4bf5: $69
    ld d, c                                       ; $4bf6: $51
    sub e                                         ; $4bf7: $93
    dec e                                         ; $4bf8: $1d
    ld [hl], l                                    ; $4bf9: $75
    db $db                                        ; $4bfa: $db
    and h                                         ; $4bfb: $a4
    dec h                                         ; $4bfc: $25
    rst $38                                       ; $4bfd: $ff
    ld c, a                                       ; $4bfe: $4f
    ld b, e                                       ; $4bff: $43
    dec d                                         ; $4c00: $15
    rra                                           ; $4c01: $1f
    ld d, a                                       ; $4c02: $57
    dec l                                         ; $4c03: $2d
    rla                                           ; $4c04: $17
    db $fd                                        ; $4c05: $fd
    ld [hl], d                                    ; $4c06: $72
    ld [hl], e                                    ; $4c07: $73
    and a                                         ; $4c08: $a7
    xor $43                                       ; $4c09: $ee $43
    dec sp                                        ; $4c0b: $3b
    rst $38                                       ; $4c0c: $ff
    jp z, Jump_000_2f78                           ; $4c0d: $ca $78 $2f

    jr jr_04a_4c49                                ; $4c10: $18 $37

    ld [hl], a                                    ; $4c12: $77
    ld [$a43e], a                                 ; $4c13: $ea $3e $a4
    jr nz, @-$71                                  ; $4c16: $20 $8d

    xor h                                         ; $4c18: $ac
    sbc d                                         ; $4c19: $9a
    ld l, e                                       ; $4c1a: $6b
    xor [hl]                                      ; $4c1b: $ae
    ld e, d                                       ; $4c1c: $5a
    sbc d                                         ; $4c1d: $9a
    pop de                                        ; $4c1e: $d1
    ld c, [hl]                                    ; $4c1f: $4e
    dec l                                         ; $4c20: $2d
    db $ed                                        ; $4c21: $ed
    daa                                           ; $4c22: $27
    ld b, a                                       ; $4c23: $47
    cp a                                          ; $4c24: $bf
    call c, $e61c                                 ; $4c25: $dc $1c $e6
    ld a, h                                       ; $4c28: $7c
    rst $00                                       ; $4c29: $c7
    sbc a                                         ; $4c2a: $9f
    sbc d                                         ; $4c2b: $9a
    ld [hl], e                                    ; $4c2c: $73
    dec l                                         ; $4c2d: $2d
    rst $30                                       ; $4c2e: $f7
    inc e                                         ; $4c2f: $1c
    and c                                         ; $4c30: $a1
    ld c, b                                       ; $4c31: $48
    db $f4                                        ; $4c32: $f4
    sbc e                                         ; $4c33: $9b
    cp $53                                        ; $4c34: $fe $53
    ld a, h                                       ; $4c36: $7c
    nop                                           ; $4c37: $00
    ld l, a                                       ; $4c38: $6f
    or a                                          ; $4c39: $b7
    cp h                                          ; $4c3a: $bc
    and b                                         ; $4c3b: $a0
    dec sp                                        ; $4c3c: $3b
    sbc c                                         ; $4c3d: $99
    pop de                                        ; $4c3e: $d1
    ld e, [hl]                                    ; $4c3f: $5e
    add hl, hl                                    ; $4c40: $29
    ld c, c                                       ; $4c41: $49
    adc e                                         ; $4c42: $8b
    sbc d                                         ; $4c43: $9a
    db $ec                                        ; $4c44: $ec
    xor b                                         ; $4c45: $a8
    and c                                         ; $4c46: $a1
    cp d                                          ; $4c47: $ba
    ld [hl], d                                    ; $4c48: $72

jr_04a_4c49:
    nop                                           ; $4c49: $00
    cpl                                           ; $4c4a: $2f
    or l                                          ; $4c4b: $b5
    rla                                           ; $4c4c: $17
    ld b, e                                       ; $4c4d: $43
    cp c                                          ; $4c4e: $b9
    or b                                          ; $4c4f: $b0
    jp nz, Jump_04a_46c2                          ; $4c50: $c2 $c2 $46

    di                                            ; $4c53: $f3
    ld e, l                                       ; $4c54: $5d
    ld e, b                                       ; $4c55: $58
    db $dd                                        ; $4c56: $dd
    ld a, c                                       ; $4c57: $79
    inc bc                                        ; $4c58: $03
    rrc a                                         ; $4c59: $cb $0f
    sub [hl]                                      ; $4c5b: $96
    ld e, b                                       ; $4c5c: $58
    ld e, $e8                                     ; $4c5d: $1e $e8
    add hl, de                                    ; $4c5f: $19
    sbc e                                         ; $4c60: $9b
    pop af                                        ; $4c61: $f1
    ld bc, $e4d7                                  ; $4c62: $01 $d7 $e4
    jp nz, $030a                                  ; $4c65: $c2 $0a $03

    dec c                                         ; $4c68: $0d
    rst $38                                       ; $4c69: $ff
    daa                                           ; $4c6a: $27
    ccf                                           ; $4c6b: $3f
    ld l, a                                       ; $4c6c: $6f
    cp h                                          ; $4c6d: $bc
    db $10                                        ; $4c6e: $10
    add e                                         ; $4c6f: $83
    sbc l                                         ; $4c70: $9d
    ld c, d                                       ; $4c71: $4a
    ld a, [hl]                                    ; $4c72: $7e
    and a                                         ; $4c73: $a7
    ld [bc], a                                    ; $4c74: $02
    ld d, b                                       ; $4c75: $50
    ld a, [$9a85]                                 ; $4c76: $fa $85 $9a
    ld [hl], e                                    ; $4c79: $73
    rst $38                                       ; $4c7a: $ff
    and a                                         ; $4c7b: $a7
    ld h, c                                       ; $4c7c: $61
    ld e, c                                       ; $4c7d: $59
    call Call_000_2613                            ; $4c7e: $cd $13 $26
    ld l, b                                       ; $4c81: $68
    ld a, d                                       ; $4c82: $7a
    dec d                                         ; $4c83: $15
    rra                                           ; $4c84: $1f
    ld l, a                                       ; $4c85: $6f
    or a                                          ; $4c86: $b7
    inc a                                         ; $4c87: $3c
    ld h, a                                       ; $4c88: $67
    daa                                           ; $4c89: $27
    inc sp                                        ; $4c8a: $33
    jp c, Jump_04a_7ba9                           ; $4c8b: $da $a9 $7b

    and l                                         ; $4c8e: $a5
    inc h                                         ; $4c8f: $24
    dec l                                         ; $4c90: $2d
    ld l, d                                       ; $4c91: $6a
    or d                                          ; $4c92: $b2
    and e                                         ; $4c93: $a3
    ld h, $9d                                     ; $4c94: $26 $9d
    call z, Call_04a_5ce6                         ; $4c96: $cc $e6 $5c
    ld c, h                                       ; $4c99: $4c
    rst $18                                       ; $4c9a: $df
    cp h                                          ; $4c9b: $bc
    ld [hl], d                                    ; $4c9c: $72

Call_04a_4c9d:
    nop                                           ; $4c9d: $00
    rst $10                                       ; $4c9e: $d7
    db $e4                                        ; $4c9f: $e4
    adc $df                                       ; $4ca0: $ce $df
    ld e, c                                       ; $4ca2: $59
    ld e, b                                       ; $4ca3: $58
    ld e, [hl]                                    ; $4ca4: $5e
    ret nc                                        ; $4ca5: $d0

    dec h                                         ; $4ca6: $25
    sub [hl]                                      ; $4ca7: $96
    rst $20                                       ; $4ca8: $e7
    sub [hl]                                      ; $4ca9: $96
    cp b                                          ; $4caa: $b8
    ld e, d                                       ; $4cab: $5a
    scf                                           ; $4cac: $37
    cpl                                           ; $4cad: $2f
    halt                                          ; $4cae: $76
    xor [hl]                                      ; $4caf: $ae
    ld d, $a9                                     ; $4cb0: $16 $a9
    sbc c                                         ; $4cb2: $99
    sbc $09                                       ; $4cb3: $de $09
    dec d                                         ; $4cb5: $15
    rrca                                          ; $4cb6: $0f
    push hl                                       ; $4cb7: $e5
    jp nz, $bc72                                  ; $4cb8: $c2 $72 $bc

    ld c, e                                       ; $4cbb: $4b
    inc c                                         ; $4cbc: $0c
    ld d, $b6                                     ; $4cbd: $16 $b6
    ld [hl+], a                                   ; $4cbf: $22
    ld e, [hl]                                    ; $4cc0: $5e
    ld e, b                                       ; $4cc1: $58
    sbc [hl]                                      ; $4cc2: $9e
    daa                                           ; $4cc3: $27
    ld b, a                                       ; $4cc4: $47
    add $07                                       ; $4cc5: $c6 $07
    ld l, a                                       ; $4cc7: $6f
    or a                                          ; $4cc8: $b7
    inc a                                         ; $4cc9: $3c
    ld h, a                                       ; $4cca: $67
    daa                                           ; $4ccb: $27
    inc sp                                        ; $4ccc: $33
    jp c, Jump_04a_7ba9                           ; $4ccd: $da $a9 $7b

    and l                                         ; $4cd0: $a5
    inc h                                         ; $4cd1: $24
    dec l                                         ; $4cd2: $2d
    ld l, d                                       ; $4cd3: $6a
    or d                                          ; $4cd4: $b2
    and e                                         ; $4cd5: $a3
    ld h, $9d                                     ; $4cd6: $26 $9d
    call z, Call_04a_5ce6                         ; $4cd8: $cc $e6 $5c
    ld c, h                                       ; $4cdb: $4c
    rst $18                                       ; $4cdc: $df
    cp h                                          ; $4cdd: $bc
    jr jr_04a_4d24                                ; $4cde: $18 $44

    ld e, a                                       ; $4ce0: $5f
    ld d, h                                       ; $4ce1: $54
    and l                                         ; $4ce2: $a5
    ld a, $5d                                     ; $4ce3: $3e $5d
    add hl, sp                                    ; $4ce5: $39
    nop                                           ; $4ce6: $00
    rst $10                                       ; $4ce7: $d7
    db $e4                                        ; $4ce8: $e4
    jp nz, $030a                                  ; $4ce9: $c2 $0a $03

    dec c                                         ; $4cec: $0d
    rst $38                                       ; $4ced: $ff
    daa                                           ; $4cee: $27
    ccf                                           ; $4cef: $3f
    ld l, a                                       ; $4cf0: $6f
    cp h                                          ; $4cf1: $bc
    db $10                                        ; $4cf2: $10
    add e                                         ; $4cf3: $83
    sbc l                                         ; $4cf4: $9d
    ld c, d                                       ; $4cf5: $4a
    ld a, [hl]                                    ; $4cf6: $7e
    and a                                         ; $4cf7: $a7
    ld [bc], a                                    ; $4cf8: $02
    ld d, b                                       ; $4cf9: $50
    ld a, [$9a85]                                 ; $4cfa: $fa $85 $9a
    pop af                                        ; $4cfd: $f1
    xor [hl]                                      ; $4cfe: $ae
    ret                                           ; $4cff: $c9


    sbc l                                         ; $4d00: $9d

Call_04a_4d01:
    ld e, d                                       ; $4d01: $5a
    ld e, [hl]                                    ; $4d02: $5e
    ld h, d                                       ; $4d03: $62
    ld a, c                                       ; $4d04: $79
    ld e, a                                       ; $4d05: $5f
    or h                                          ; $4d06: $b4
    db $10                                        ; $4d07: $10
    add e                                         ; $4d08: $83
    sbc c                                         ; $4d09: $99
    sbc $a9                                       ; $4d0a: $de $a9
    ld h, b                                       ; $4d0c: $60
    xor b                                         ; $4d0d: $a8
    ld [c], a                                     ; $4d0e: $e2
    inc bc                                        ; $4d0f: $03
    rst $10                                       ; $4d10: $d7
    db $e4                                        ; $4d11: $e4
    and d                                         ; $4d12: $a2
    ld e, a                                       ; $4d13: $5f
    sbc $2b                                       ; $4d14: $de $2b
    dec h                                         ; $4d16: $25
    ld l, c                                       ; $4d17: $69
    ld d, c                                       ; $4d18: $51
    sub e                                         ; $4d19: $93
    dec e                                         ; $4d1a: $1d
    dec [hl]                                      ; $4d1b: $35
    dec b                                         ; $4d1c: $05
    ld d, c                                       ; $4d1d: $51
    ld h, l                                       ; $4d1e: $65
    inc sp                                        ; $4d1f: $33
    sbc $65                                       ; $4d20: $de $65
    ld a, c                                       ; $4d22: $79
    xor b                                         ; $4d23: $a8

jr_04a_4d24:
    sub $e6                                       ; $4d24: $d6 $e6
    ld a, [c]                                     ; $4d26: $f2
    ld a, a                                       ; $4d27: $7f
    rrca                                          ; $4d28: $0f
    ld [$169a], a                                 ; $4d29: $ea $9a $16
    ld a, a                                       ; $4d2c: $7f
    nop                                           ; $4d2d: $00
    xor a                                         ; $4d2e: $af
    ret nc                                        ; $4d2f: $d0

    rla                                           ; $4d30: $17
    ld d, l                                       ; $4d31: $55
    xor c                                         ; $4d32: $a9
    ld c, a                                       ; $4d33: $4f
    ld a, e                                       ; $4d34: $7b
    and l                                         ; $4d35: $a5
    inc h                                         ; $4d36: $24
    dec l                                         ; $4d37: $2d
    ld l, d                                       ; $4d38: $6a
    or d                                          ; $4d39: $b2
    and e                                         ; $4d3a: $a3
    add [hl]                                      ; $4d3b: $86
    ld l, d                                       ; $4d3c: $6a
    sbc b                                         ; $4d3d: $98
    ld a, e                                       ; $4d3e: $7b
    pop hl                                        ; $4d3f: $e1
    and a                                         ; $4d40: $a7
    ld l, a                                       ; $4d41: $6f
    add $bb                                       ; $4d42: $c6 $bb
    call nz, $9260                                ; $4d44: $c4 $60 $92
    ld e, d                                       ; $4d47: $5a
    or b                                          ; $4d48: $b0
    ld [hl], $e7                                  ; $4d49: $36 $e7
    add hl, bc                                    ; $4d4b: $09
    inc de                                        ; $4d4c: $13
    inc [hl]                                      ; $4d4d: $34
    db $fd                                        ; $4d4e: $fd
    add h                                         ; $4d4f: $84
    ld [de], a                                    ; $4d50: $12
    jp nz, $9e43                                  ; $4d51: $c2 $43 $9e

    ld l, e                                       ; $4d54: $6b
    cp c                                          ; $4d55: $b9
    or b                                          ; $4d56: $b0
    cp h                                          ; $4d57: $bc
    rla                                           ; $4d58: $17
    ld sp, $7151                                  ; $4d59: $31 $51 $71
    add hl, bc                                    ; $4d5c: $09
    dec sp                                        ; $4d5d: $3b
    rst $10                                       ; $4d5e: $d7
    ld [hl], d                                    ; $4d5f: $72
    ld l, a                                       ; $4d60: $6f
    ld a, h                                       ; $4d61: $7c
    or a                                          ; $4d62: $b7
    inc h                                         ; $4d63: $24
    sbc l                                         ; $4d64: $9d
    ld d, h                                       ; $4d65: $54
    inc e                                         ; $4d66: $1c
    rst $28                                       ; $4d67: $ef
    ld l, l                                       ; $4d68: $6d
    inc sp                                        ; $4d69: $33
    ld a, [$696e]                                 ; $4d6a: $fa $6e $69
    daa                                           ; $4d6d: $27
    call nc, $ba0b                                ; $4d6e: $d4 $0b $ba
    or b                                          ; $4d71: $b0
    pop de                                        ; $4d72: $d1
    inc d                                         ; $4d73: $14
    ld b, h                                       ; $4d74: $44
    sub l                                         ; $4d75: $95
    call Call_000_072b                            ; $4d76: $cd $2b $07
    sub a                                         ; $4d79: $97
    push hl                                       ; $4d7a: $e5
    ld bc, $8e33                                  ; $4d7b: $01 $33 $8e
    db $e3                                        ; $4d7e: $e3
    ld a, b                                       ; $4d7f: $78
    rst $18                                       ; $4d80: $df
    dec l                                         ; $4d81: $2d
    call $af77                                    ; $4d82: $cd $77 $af
    ld [hl], e                                    ; $4d85: $73
    sbc e                                         ; $4d86: $9b
    di                                            ; $4d87: $f3
    and l                                         ; $4d88: $a5
    cp l                                          ; $4d89: $bd
    adc l                                         ; $4d8a: $8d
    pop bc                                        ; $4d8b: $c1
    cp c                                          ; $4d8c: $b9
    add hl, de                                    ; $4d8d: $19
    rra                                           ; $4d8e: $1f
    sub a                                         ; $4d8f: $97
    cp a                                          ; $4d90: $bf
    dec sp                                        ; $4d91: $3b
    or l                                          ; $4d92: $b5
    cp h                                          ; $4d93: $bc
    and b                                         ; $4d94: $a0
    di                                            ; $4d95: $f3
    add $f3                                       ; $4d96: $c6 $f3
    ret c                                         ; $4d98: $d8

    add hl, bc                                    ; $4d99: $09
    ld d, l                                       ; $4d9a: $55
    ld l, h                                       ; $4d9b: $6c
    add $e2                                       ; $4d9c: $c6 $e2
    rrca                                          ; $4d9e: $0f
    ld d, a                                       ; $4d9f: $57
    adc l                                         ; $4da0: $8d
    rst $20                                       ; $4da1: $e7
    ld a, a                                       ; $4da2: $7f
    ld a, c                                       ; $4da3: $79
    and l                                         ; $4da4: $a5
    dec h                                         ; $4da5: $25
    sub [hl]                                      ; $4da6: $96
    rst $00                                       ; $4da7: $c7
    cp a                                          ; $4da8: $bf
    pop af                                        ; $4da9: $f1
    ld e, [hl]                                    ; $4daa: $5e
    rst $08                                       ; $4dab: $cf
    ld [hl], $8e                                  ; $4dac: $36 $8e
    db $e3                                        ; $4dae: $e3
    dec [hl]                                      ; $4daf: $35
    cp h                                          ; $4db0: $bc
    jr jr_04a_4de9                                ; $4db1: $18 $36

    or d                                          ; $4db3: $b2
    db $f4                                        ; $4db4: $f4
    ld b, e                                       ; $4db5: $43
    dec [hl]                                      ; $4db6: $35
    rst $10                                       ; $4db7: $d7
    ld [hl], d                                    ; $4db8: $72
    sub b                                         ; $4db9: $90
    or [hl]                                       ; $4dba: $b6
    sbc h                                         ; $4dbb: $9c

Call_04a_4dbc:
    rst $00                                       ; $4dbc: $c7
    xor $75                                       ; $4dbd: $ee $75
    ld l, [hl]                                    ; $4dbf: $6e
    ld [hl], e                                    ; $4dc0: $73
    call c, $ae29                                 ; $4dc1: $dc $29 $ae
    ld l, [hl]                                    ; $4dc4: $6e
    add $07                                       ; $4dc5: $c6 $07
    sub a                                         ; $4dc7: $97
    jr jr_04a_4e16                                ; $4dc8: $18 $4c

    ld e, d                                       ; $4dca: $5a
    xor $67                                       ; $4dcb: $ee $67
    db $f4                                        ; $4dcd: $f4
    ld b, c                                       ; $4dce: $41
    dec [hl]                                      ; $4dcf: $35
    ld b, $72                                     ; $4dd0: $06 $72
    and b                                         ; $4dd2: $a0
    adc d                                         ; $4dd3: $8a
    cp a                                          ; $4dd4: $bf
    ld l, [hl]                                    ; $4dd5: $6e
    xor $f4                                       ; $4dd6: $ee $f4
    ret                                           ; $4dd8: $c9


    scf                                           ; $4dd9: $37
    db $e3                                        ; $4dda: $e3
    cp l                                          ; $4ddb: $bd
    ld d, d                                       ; $4ddc: $52
    sub d                                         ; $4ddd: $92
    ld d, $35                                     ; $4dde: $16 $35
    reti                                          ; $4de0: $d9


    ld d, c                                       ; $4de1: $51
    sub e                                         ; $4de2: $93
    ccf                                           ; $4de3: $3f
    ld [c], a                                     ; $4de4: $e2
    ld b, l                                       ; $4de5: $45
    sbc a                                         ; $4de6: $9f
    ld b, b                                       ; $4de7: $40
    ld [hl], e                                    ; $4de8: $73

jr_04a_4de9:
    ld e, h                                       ; $4de9: $5c
    ld [hl], d                                    ; $4dea: $72
    ld b, b                                       ; $4deb: $40
    cp h                                          ; $4dec: $bc
    ld l, e                                       ; $4ded: $6b
    ld [hl], d                                    ; $4dee: $72
    and a                                         ; $4def: $a7
    sub [hl]                                      ; $4df0: $96
    ld [hl], a                                    ; $4df1: $77
    xor [hl]                                      ; $4df2: $ae
    inc l                                         ; $4df3: $2c
    call Call_000_2f1b                            ; $4df4: $cd $1b $2f
    call nz, Call_04a_6d60                        ; $4df7: $c4 $60 $6d
    ld c, $fc                                     ; $4dfa: $0e $fc
    ld a, [$2a81]                                 ; $4dfc: $fa $81 $2a
    adc b                                         ; $4dff: $88
    ld a, [hl+]                                   ; $4e00: $2a
    rla                                           ; $4e01: $17
    sub l                                         ; $4e02: $95
    rla                                           ; $4e03: $17
    jr c, jr_04a_4e60                             ; $4e04: $38 $5a

    ld h, e                                       ; $4e06: $63
    ld [hl], a                                    ; $4e07: $77
    ld b, d                                       ; $4e08: $42
    cp l                                          ; $4e09: $bd
    or b                                          ; $4e0a: $b0
    add d                                         ; $4e0b: $82
    ret nc                                        ; $4e0c: $d0

    call c, Call_04a_4b77                         ; $4e0d: $dc $77 $4b
    di                                            ; $4e10: $f3

jr_04a_4e11:
    ret z                                         ; $4e11: $c8

    dec sp                                        ; $4e12: $3b
    sbc e                                         ; $4e13: $9b
    ret                                           ; $4e14: $c9


    and b                                         ; $4e15: $a0

jr_04a_4e16:
    pop af                                        ; $4e16: $f1
    ld bc, $6a4f                                  ; $4e17: $01 $4f $6a
    or l                                          ; $4e1a: $b5
    inc sp                                        ; $4e1b: $33
    ld b, $3b                                     ; $4e1c: $06 $3b
    or l                                          ; $4e1e: $b5
    inc a                                         ; $4e1f: $3c
    ld l, a                                       ; $4e20: $6f
    cp h                                          ; $4e21: $bc
    ld d, a                                       ; $4e22: $57
    ld c, d                                       ; $4e23: $4a
    jp nc, Jump_000_26a2                          ; $4e24: $d2 $a2 $26

    dec sp                                        ; $4e27: $3b
    ld l, d                                       ; $4e28: $6a
    and l                                         ; $4e29: $a5
    dec h                                         ; $4e2a: $25
    sub [hl]                                      ; $4e2b: $96
    add a                                         ; $4e2c: $87
    ld [$a762], a                                 ; $4e2d: $ea $62 $a7
    sub [hl]                                      ; $4e30: $96
    rst $30                                       ; $4e31: $f7
    ld a, d                                       ; $4e32: $7a
    or [hl]                                       ; $4e33: $b6
    ret nc                                        ; $4e34: $d0

    jp nz, $fef2                                  ; $4e35: $c2 $f2 $fe

    sub a                                         ; $4e38: $97
    pop af                                        ; $4e39: $f1
    sbc $b2                                       ; $4e3a: $de $b2
    inc [hl]                                      ; $4e3c: $34
    rst $30                                       ; $4e3d: $f7
    and a                                         ; $4e3e: $a7
    rra                                           ; $4e3f: $1f
    jr nc, @-$1b                                  ; $4e40: $30 $e3

    add l                                         ; $4e42: $85
    jr jr_04a_4e11                                ; $4e43: $18 $cc

    ldh [rNR42], a                                ; $4e45: $e0 $21
    sub a                                         ; $4e47: $97
    and $bb                                       ; $4e48: $e6 $bb
    rst $10                                       ; $4e4a: $d7
    cp c                                          ; $4e4b: $b9
    call $a599                                    ; $4e4c: $cd $99 $a5
    ld hl, sp+$03                                 ; $4e4f: $f8 $03
    ld d, a                                       ; $4e51: $57
    dec l                                         ; $4e52: $2d
    rla                                           ; $4e53: $17
    db $fd                                        ; $4e54: $fd
    ld a, [c]                                     ; $4e55: $f2
    ld d, b                                       ; $4e56: $50
    adc $77                                       ; $4e57: $ce $77
    xor a                                         ; $4e59: $af
    ld [hl], e                                    ; $4e5a: $73
    sbc e                                         ; $4e5b: $9b
    inc sp                                        ; $4e5c: $33
    xor l                                         ; $4e5d: $ad
    sub $92                                       ; $4e5e: $d6 $92

jr_04a_4e60:
    ld [c], a                                     ; $4e60: $e2
    adc [hl]                                      ; $4e61: $8e
    dec sp                                        ; $4e62: $3b
    ret z                                         ; $4e63: $c8

    and h                                         ; $4e64: $a4
    ld l, h                                       ; $4e65: $6c
    ld c, [hl]                                    ; $4e66: $4e
    ld [de], a                                    ; $4e67: $12
    ld b, $a0                                     ; $4e68: $06 $a0
    add hl, de                                    ; $4e6a: $19
    rra                                           ; $4e6b: $1f
    cpl                                           ; $4e6c: $2f
    ld h, c                                       ; $4e6d: $61
    ld a, c                                       ; $4e6e: $79
    rst $20                                       ; $4e6f: $e7
    sbc a                                         ; $4e70: $9f
    cp [hl]                                       ; $4e71: $be
    or h                                          ; $4e72: $b4
    ld [$f883], sp                                ; $4e73: $08 $83 $f8
    nop                                           ; $4e76: $00
    rst $08                                       ; $4e77: $cf
    db $e4                                        ; $4e78: $e4
    ld [hl+], a                                   ; $4e79: $22
    inc c                                         ; $4e7a: $0c
    call nz, $971f                                ; $4e7b: $c4 $1f $97
    push hl                                       ; $4e7e: $e5
    and c                                         ; $4e7f: $a1
    ld a, [de]                                    ; $4e80: $1a
    ld h, e                                       ; $4e81: $63
    ldh [$e3], a                                  ; $4e82: $e0 $e3
    cp l                                          ; $4e84: $bd
    ld h, b                                       ; $4e85: $60
    call c, $a9dc                                 ; $4e86: $dc $dc $a9
    di                                            ; $4e89: $f3
    ld e, l                                       ; $4e8a: $5d
    ld h, h                                       ; $4e8b: $64
    ret                                           ; $4e8c: $c9


    push de                                       ; $4e8d: $d5
    ei                                            ; $4e8e: $fb
    sub c                                         ; $4e8f: $91
    rst $38                                       ; $4e90: $ff
    call $e335                                    ; $4e91: $cd $35 $e3
    jr c, jr_04a_4ed4                             ; $4e94: $38 $3e

    nop                                           ; $4e96: $00
    ld l, a                                       ; $4e97: $6f
    and e                                         ; $4e98: $a3
    sub $28                                       ; $4e99: $d6 $28
    ret nc                                        ; $4e9b: $d0

    daa                                           ; $4e9c: $27
    ld a, a                                       ; $4e9d: $7f
    ld h, l                                       ; $4e9e: $65
    ld c, a                                       ; $4e9f: $4f
    dec [hl]                                      ; $4ea0: $35
    rla                                           ; $4ea1: $17
    ld h, b                                       ; $4ea2: $60
    jr nc, jr_04a_4f14                            ; $4ea3: $30 $6f

    ld b, [hl]                                    ; $4ea5: $46
    inc de                                        ; $4ea6: $13
    sbc d                                         ; $4ea7: $9a
    push af                                       ; $4ea8: $f5
    call $712b                                    ; $4ea9: $cd $2b $71
    inc e                                         ; $4eac: $1c
    rst $28                                       ; $4ead: $ef
    ld a, [c]                                     ; $4eae: $f2
    add [hl]                                      ; $4eaf: $86
    adc e                                         ; $4eb0: $8b
    sbc l                                         ; $4eb1: $9d
    adc h                                         ; $4eb2: $8c
    rst $20                                       ; $4eb3: $e7
    ld a, a                                       ; $4eb4: $7f
    ld [hl], e                                    ; $4eb5: $73
    add c                                         ; $4eb6: $81
    and e                                         ; $4eb7: $a3
    dec [hl]                                      ; $4eb8: $35
    halt                                          ; $4eb9: $76
    sbc $8c                                       ; $4eba: $de $8c
    xor [hl]                                      ; $4ebc: $ae
    inc e                                         ; $4ebd: $1c
    cpl                                           ; $4ebe: $2f
    ld h, c                                       ; $4ebf: $61
    ld e, c                                       ; $4ec0: $59
    ld e, l                                       ; $4ec1: $5d
    db $ec                                        ; $4ec2: $ec
    ld b, l                                       ; $4ec3: $45
    inc hl                                        ; $4ec4: $23
    ld a, b                                       ; $4ec5: $78
    ld [hl], l                                    ; $4ec6: $75
    ld a, h                                       ; $4ec7: $7c
    nop                                           ; $4ec8: $00

jr_04a_4ec9:
    rst $10                                       ; $4ec9: $d7
    dec e                                         ; $4eca: $1d
    xor l                                         ; $4ecb: $ad
    or c                                          ; $4ecc: $b1
    inc bc                                        ; $4ecd: $03
    ld h, [hl]                                    ; $4ece: $66
    cp c                                          ; $4ecf: $b9
    ld d, e                                       ; $4ed0: $53
    ld c, e                                       ; $4ed1: $4b
    ei                                            ; $4ed2: $fb
    ret nc                                        ; $4ed3: $d0

jr_04a_4ed4:
    jr nz, jr_04a_4ec9                            ; $4ed4: $20 $f3

    pop af                                        ; $4ed6: $f1
    ld bc, $b52f                                  ; $4ed7: $01 $2f $b5
    rla                                           ; $4eda: $17
    dec hl                                        ; $4edb: $2b
    inc a                                         ; $4edc: $3c
    db $e4                                        ; $4edd: $e4
    dec h                                         ; $4ede: $25
    sub [hl]                                      ; $4edf: $96
    db $e3                                        ; $4ee0: $e3
    db $ed                                        ; $4ee1: $ed
    add hl, sp                                    ; $4ee2: $39
    sbc e                                         ; $4ee3: $9b
    jp nc, Jump_000_3506                          ; $4ee4: $d2 $06 $35

    cpl                                           ; $4ee7: $2f
    or $a2                                        ; $4ee8: $f6 $a2
    ld de, $5abc                                  ; $4eea: $11 $bc $5a
    db $fc                                        ; $4eed: $fc
    ld bc, $1dd7                                  ; $4eee: $01 $d7 $1d
    xor l                                         ; $4ef1: $ad

Call_04a_4ef2:
    or c                                          ; $4ef2: $b1
    adc e                                         ; $4ef3: $8b
    ld a, $68                                     ; $4ef4: $3e $68
    ld l, $b1                                     ; $4ef6: $2e $b1
    cp h                                          ; $4ef8: $bc
    ld d, e                                       ; $4ef9: $53
    ld b, c                                       ; $4efa: $41
    cp h                                          ; $4efb: $bc
    db $eb                                        ; $4efc: $eb
    adc [hl]                                      ; $4efd: $8e
    sub $d8                                       ; $4efe: $d6 $d8
    sbc l                                         ; $4f00: $9d
    ld a, $f9                                     ; $4f01: $3e $f9

Call_04a_4f03:
    and $5c                                       ; $4f03: $e6 $5c
    ld d, e                                       ; $4f05: $53
    inc a                                         ; $4f06: $3c
    ld d, b                                       ; $4f07: $50
    sub l                                         ; $4f08: $95
    ld b, $f1                                     ; $4f09: $06 $f1
    sbc d                                         ; $4f0b: $9a
    di                                            ; $4f0c: $f3
    add $93                                       ; $4f0d: $c6 $93
    ld e, a                                       ; $4f0f: $5f
    pop af                                        ; $4f10: $f1
    ld a, [hl]                                    ; $4f11: $7e
    xor d                                         ; $4f12: $aa
    sbc l                                         ; $4f13: $9d

jr_04a_4f14:
    ld e, d                                       ; $4f14: $5a
    sbc d                                         ; $4f15: $9a
    db $db                                        ; $4f16: $db
    ld [$4e41], a                                 ; $4f17: $ea $41 $4e
    ld [hl], d                                    ; $4f1a: $72
    inc sp                                        ; $4f1b: $33
    ld a, $00                                     ; $4f1c: $3e $00
    rst $10                                       ; $4f1e: $d7
    dec sp                                        ; $4f1f: $3b
    and c                                         ; $4f20: $a1
    add b                                         ; $4f21: $80
    jr nc, @-$7e                                  ; $4f22: $30 $80

    ld a, b                                       ; $4f24: $78
    ld h, c                                       ; $4f25: $61
    ld a, c                                       ; $4f26: $79
    adc c                                         ; $4f27: $89
    push hl                                       ; $4f28: $e5
    ld a, b                                       ; $4f29: $78
    ld d, a                                       ; $4f2a: $57
    sub c                                         ; $4f2b: $91
    add a                                         ; $4f2c: $87
    ld l, d                                       ; $4f2d: $6a
    ld b, d                                       ; $4f2e: $42
    or l                                          ; $4f2f: $b5
    dec h                                         ; $4f30: $25
    jr nz, jr_04a_4f3f                            ; $4f31: $20 $0c

    ld h, h                                       ; $4f33: $64
    ld a, h                                       ; $4f34: $7c
    nop                                           ; $4f35: $00
    rst $10                                       ; $4f36: $d7
    db $e4                                        ; $4f37: $e4
    or h                                          ; $4f38: $b4
    add hl, de                                    ; $4f39: $19
    cpl                                           ; $4f3a: $2f
    ld [hl], b                                    ; $4f3b: $70
    or h                                          ; $4f3c: $b4
    add $2e                                       ; $4f3d: $c6 $2e

jr_04a_4f3f:
    or c                                          ; $4f3f: $b1

jr_04a_4f40:
    inc a                                         ; $4f40: $3c
    ld h, b                                       ; $4f41: $60
    sub [hl]                                      ; $4f42: $96
    pop af                                        ; $4f43: $f1
    xor [hl]                                      ; $4f44: $ae
    dec sp                                        ; $4f45: $3b
    ld e, d                                       ; $4f46: $5a
    ld h, e                                       ; $4f47: $63
    rla                                           ; $4f48: $17
    ld d, [hl]                                    ; $4f49: $56
    db $10                                        ; $4f4a: $10
    sbc d                                         ; $4f4b: $9a
    adc e                                         ; $4f4c: $8b
    ld a, [hl-]                                   ; $4f4d: $3a
    ld d, b                                       ; $4f4e: $50
    db $dd                                        ; $4f4f: $dd
    sub d                                         ; $4f50: $92
    ld e, a                                       ; $4f51: $5f
    ld hl, sp+$3b                                 ; $4f52: $f8 $3b
    sub h                                         ; $4f54: $94
    ld [hl], e                                    ; $4f55: $73
    dec l                                         ; $4f56: $2d
    rla                                           ; $4f57: $17
    ld [hl], l                                    ; $4f58: $75
    ld h, $5a                                     ; $4f59: $26 $5a
    db $f4                                        ; $4f5b: $f4
    rl e                                          ; $4f5c: $cb $13
    jr nc, jr_04a_4f40                            ; $4f5e: $30 $e0

    ld h, [hl]                                    ; $4f60: $66
    cp h                                          ; $4f61: $bc
    ld l, e                                       ; $4f62: $6b
    ld [hl-], a                                   ; $4f63: $32
    adc [hl]                                      ; $4f64: $8e
    db $e3                                        ; $4f65: $e3
    and c                                         ; $4f66: $a1
    inc e                                         ; $4f67: $1c
    or b                                          ; $4f68: $b0
    cp c                                          ; $4f69: $b9
    add l                                         ; $4f6a: $85
    add a                                         ; $4f6b: $87
    call c, $f85c                                 ; $4f6c: $dc $5c $f8
    ccf                                           ; $4f6f: $3f
    adc c                                         ; $4f70: $89
    ccf                                           ; $4f71: $3f
    nop                                           ; $4f72: $00
    cpl                                           ; $4f73: $2f
    ld a, [de]                                    ; $4f74: $1a
    pop bc                                        ; $4f75: $c1
    xor e                                         ; $4f76: $ab
    cpl                                           ; $4f77: $2f
    and $91                                       ; $4f78: $e6 $91
    and a                                         ; $4f7a: $a7
    jr nz, @+$0e                                  ; $4f7b: $20 $0c

    ld a, b                                       ; $4f7d: $78
    ld d, c                                       ; $4f7e: $51
    rla                                           ; $4f7f: $17
    or [hl]                                       ; $4f80: $b6
    ld a, d                                       ; $4f81: $7a
    dec h                                         ; $4f82: $25
    db $10                                        ; $4f83: $10
    rst $28                                       ; $4f84: $ef
    sub l                                         ; $4f85: $95
    ld [hl-], a                                   ; $4f86: $32
    and c                                         ; $4f87: $a1
    ld [$8ee1], sp                                ; $4f88: $08 $e1 $8e
    jp c, $9f1b                                   ; $4f8b: $da $1b $9f

    ld c, l                                       ; $4f8e: $4d
    dec sp                                        ; $4f8f: $3b
    ld c, d                                       ; $4f90: $4a
    db $fc                                        ; $4f91: $fc

Call_04a_4f92:
    ld bc, $182f                                  ; $4f92: $01 $2f $18
    sub a                                         ; $4f95: $97
    halt                                          ; $4f96: $76
    halt                                          ; $4f97: $76
    db $f4                                        ; $4f98: $f4
    add d                                         ; $4f99: $82
    ld l, $2c                                     ; $4f9a: $2e $2c
    ld c, a                                       ; $4f9c: $4f
    jr z, @+$22                                   ; $4f9d: $28 $20

    inc c                                         ; $4f9f: $0c
    and b                                         ; $4fa0: $a0
    and $c5                                       ; $4fa1: $e6 $c5
    ld e, [hl]                                    ; $4fa3: $5e
    inc [hl]                                      ; $4fa4: $34
    add d                                         ; $4fa5: $82
    ld d, a                                       ; $4fa6: $57
    rst $00                                       ; $4fa7: $c7
    rlca                                          ; $4fa8: $07
    sub a                                         ; $4fa9: $97
    jr @+$4e                                      ; $4faa: $18 $4c

    or c                                          ; $4fac: $b1
    add hl, de                                    ; $4fad: $19
    rst $28                                       ; $4fae: $ef
    ld b, e                                       ; $4faf: $43
    ld l, e                                       ; $4fb0: $6b
    ld [hl], e                                    ; $4fb1: $73
    ld [de], a                                    ; $4fb2: $12
    ld c, e                                       ; $4fb3: $4b
    ld [c], a                                     ; $4fb4: $e2
    rst $30                                       ; $4fb5: $f7
    ld a, d                                       ; $4fb6: $7a
    or [hl]                                       ; $4fb7: $b6
    ret nc                                        ; $4fb8: $d0

    ld d, b                                       ; $4fb9: $50
    call $04f4                                    ; $4fba: $cd $f4 $04
    call z, $c66c                                 ; $4fbd: $cc $6c $c6
    rlca                                          ; $4fc0: $07
    rst $10                                       ; $4fc1: $d7
    db $e4                                        ; $4fc2: $e4
    ld b, b                                       ; $4fc3: $40
    push af                                       ; $4fc4: $f5
    rst $38                                       ; $4fc5: $ff
    and d                                         ; $4fc6: $a2
    dec h                                         ; $4fc7: $25
    sub [hl]                                      ; $4fc8: $96
    rst $20                                       ; $4fc9: $e7
    adc l                                         ; $4fca: $8d
    rla                                           ; $4fcb: $17
    ld h, d                                       ; $4fcc: $62
    or b                                          ; $4fcd: $b0
    sbc a                                         ; $4fce: $9f
    ld l, d                                       ; $4fcf: $6a
    jp nc, Jump_04a_6772                          ; $4fd0: $d2 $72 $67

    ld l, h                                       ; $4fd3: $6c
    add $07                                       ; $4fd4: $c6 $07
    ld l, a                                       ; $4fd6: $6f
    ld l, c                                       ; $4fd7: $69
    rlca                                          ; $4fd8: $07
    ld e, h                                       ; $4fd9: $5c
    db $ec                                        ; $4fda: $ec
    jp nc, $c488                                  ; $4fdb: $d2 $88 $c4

    ld e, h                                       ; $4fde: $5c
    ld c, h                                       ; $4fdf: $4c
    ld b, c                                       ; $4fe0: $41
    xor l                                         ; $4fe1: $ad
    sbc $c9                                       ; $4fe2: $de $c9
    ld a, b                                       ; $4fe4: $78
    rra                                           ; $4fe5: $1f
    sbc d                                         ; $4fe6: $9a
    rst $00                                       ; $4fe7: $c7
    ld c, [hl]                                    ; $4fe8: $4e
    and h                                         ; $4fe9: $a4
    dec e                                         ; $4fea: $1d
    db $e4                                        ; $4feb: $e4
    ld hl, sp+$00                                 ; $4fec: $f8 $00
    rst $10                                       ; $4fee: $d7
    db $e4                                        ; $4fef: $e4
    add h                                         ; $4ff0: $84
    and $c2                                       ; $4ff1: $e6 $c2
    ld b, [hl]                                    ; $4ff3: $46
    ld [hl], e                                    ; $4ff4: $73
    ld c, e                                       ; $4ff5: $4b
    and b                                         ; $4ff6: $a0
    call c, $bf14                                 ; $4ff7: $dc $14 $bf
    or a                                          ; $4ffa: $b7
    cp e                                          ; $4ffb: $bb
    add sp, -$69                                  ; $4ffc: $e8 $97
    sbc e                                         ; $4ffe: $9b

Call_04a_4fff:
    db $e3                                        ; $4fff: $e3
    sub d                                         ; $5000: $92
    inc bc                                        ; $5001: $03
    call nz, $971f                                ; $5002: $c4 $1f $97
    jr jr_04a_5053                                ; $5005: $18 $4c

    ld l, c                                       ; $5007: $69
    inc sp                                        ; $5008: $33
    adc b                                         ; $5009: $88
    db $e3                                        ; $500a: $e3
    cp l                                          ; $500b: $bd
    db $dd                                        ; $500c: $dd
    ld c, c                                       ; $500d: $49
    daa                                           ; $500e: $27
    or e                                          ; $500f: $b3
    add hl, sp                                    ; $5010: $39
    ld h, b                                       ; $5011: $60
    sub [hl]                                      ; $5012: $96
    ld [c], a                                     ; $5013: $e2
    rrca                                          ; $5014: $0f
    xor a                                         ; $5015: $af
    ret nc                                        ; $5016: $d0

    rla                                           ; $5017: $17
    ld d, l                                       ; $5018: $55
    xor c                                         ; $5019: $a9
    ld c, a                                       ; $501a: $4f
    ld a, e                                       ; $501b: $7b
    ld [hl-], a                                   ; $501c: $32
    ld a, l                                       ; $501d: $7d
    ld c, c                                       ; $501e: $49
    ld h, e                                       ; $501f: $63
    add d                                         ; $5020: $82
    sbc l                                         ; $5021: $9d
    dec bc                                        ; $5022: $0b
    ld a, b                                       ; $5023: $78
    sbc $78                                       ; $5024: $de $78
    xor a                                         ; $5026: $af
    sub h                                         ; $5027: $94
    and h                                         ; $5028: $a4
    ld b, l                                       ; $5029: $45
    ld c, l                                       ; $502a: $4d
    halt                                          ; $502b: $76
    call nc, $f730                                ; $502c: $d4 $30 $f7
    jp nz, $df4f                                  ; $502f: $c2 $4f $df

    inc e                                         ; $5032: $1c
    xor d                                         ; $5033: $aa
    ld hl, sp+$00                                 ; $5034: $f8 $00
    ld l, a                                       ; $5036: $6f
    or a                                          ; $5037: $b7
    cp h                                          ; $5038: $bc
    nop                                           ; $5039: $00
    add e                                         ; $503a: $83
    sbc l                                         ; $503b: $9d
    call z, $af68                                 ; $503c: $cc $68 $af
    sub h                                         ; $503f: $94
    and h                                         ; $5040: $a4
    ld b, l                                       ; $5041: $45
    ld c, l                                       ; $5042: $4d
    halt                                          ; $5043: $76
    call nc, $5d50                                ; $5044: $d4 $50 $5d
    add hl, sp                                    ; $5047: $39
    nop                                           ; $5048: $00
    rst $10                                       ; $5049: $d7
    db $e4                                        ; $504a: $e4
    jp nz, $030a                                  ; $504b: $c2 $0a $03

    dec c                                         ; $504e: $0d
    rst $38                                       ; $504f: $ff
    daa                                           ; $5050: $27
    ccf                                           ; $5051: $3f
    ld l, a                                       ; $5052: $6f

jr_04a_5053:
    cp h                                          ; $5053: $bc
    db $10                                        ; $5054: $10
    add e                                         ; $5055: $83
    ld a, l                                       ; $5056: $7d
    ld l, b                                       ; $5057: $68
    ld d, h                                       ; $5058: $54
    ld d, h                                       ; $5059: $54
    dec sp                                        ; $505a: $3b
    ld a, a                                       ; $505b: $7f
    ld h, a                                       ; $505c: $67
    ret nz                                        ; $505d: $c0

    inc l                                         ; $505e: $2c
    db $e3                                        ; $505f: $e3
    inc bc                                        ; $5060: $03
    sub a                                         ; $5061: $97
    jr jr_04a_50b0                                ; $5062: $18 $4c

    ld e, d                                       ; $5064: $5a
    xor $fc                                       ; $5065: $ee $fc
    ld c, a                                       ; $5067: $4f
    add $fb                                       ; $5068: $c6 $fb
    ld l, [hl]                                    ; $506a: $6e
    ret                                           ; $506b: $c9


    db $f4                                        ; $506c: $f4
    adc $18                                       ; $506d: $ce $18
    ld h, h                                       ; $506f: $64
    ld a, h                                       ; $5070: $7c
    nop                                           ; $5071: $00
    cpl                                           ; $5072: $2f
    or l                                          ; $5073: $b5
    pop af                                        ; $5074: $f1
    ld e, [hl]                                    ; $5075: $5e
    inc [hl]                                      ; $5076: $34
    and e                                         ; $5077: $a3
    and c                                         ; $5078: $a1
    call c, $bb19                                 ; $5079: $dc $19 $bb
    or b                                          ; $507c: $b0
    pop de                                        ; $507d: $d1
    xor b                                         ; $507e: $a8
    and b                                         ; $507f: $a0
    ld a, [hl-]                                   ; $5080: $3a
    ld [hl-], a                                   ; $5081: $32
    ld b, [hl]                                    ; $5082: $46
    or b                                          ; $5083: $b0
    rrca                                          ; $5084: $0f
    call $0f77                                    ; $5085: $cd $77 $0f
    ld a, [$2dce]                                 ; $5088: $fa $ce $2d
    ld a, c                                       ; $508b: $79
    inc l                                         ; $508c: $2c
    add h                                         ; $508d: $84
    add hl, bc                                    ; $508e: $09
    ld [c], a                                     ; $508f: $e2
    inc bc                                        ; $5090: $03
    rst $10                                       ; $5091: $d7
    db $e4                                        ; $5092: $e4
    jp nz, Jump_000_0b0a                          ; $5093: $c2 $0a $0b

    dec de                                        ; $5096: $1b
    call Call_04a_6177                            ; $5097: $cd $77 $61
    ld [hl], l                                    ; $509a: $75
    rst $20                                       ; $509b: $e7
    dec c                                         ; $509c: $0d
    inc l                                         ; $509d: $2c
    ccf                                           ; $509e: $3f

Call_04a_509f:
    ld e, b                                       ; $509f: $58
    ld h, d                                       ; $50a0: $62
    ld a, c                                       ; $50a1: $79
    and b                                         ; $50a2: $a0
    ld h, a                                       ; $50a3: $67
    ld l, h                                       ; $50a4: $6c
    add $07                                       ; $50a5: $c6 $07
    rst $10                                       ; $50a7: $d7
    db $e4                                        ; $50a8: $e4
    adc $06                                       ; $50a9: $ce $06
    add [hl]                                      ; $50ab: $86
    adc l                                         ; $50ac: $8d
    inc l                                         ; $50ad: $2c
    db $fd                                        ; $50ae: $fd
    ld c, [hl]                                    ; $50af: $4e

jr_04a_50b0:
    dec b                                         ; $50b0: $05
    xor [hl]                                      ; $50b1: $ae
    add $82                                       ; $50b2: $c6 $82
    ld h, [hl]                                    ; $50b4: $66
    cp h                                          ; $50b5: $bc
    rla                                           ; $50b6: $17
    ld d, c                                       ; $50b7: $51
    add hl, hl                                    ; $50b8: $29
    ld a, b                                       ; $50b9: $78
    adc b                                         ; $50ba: $88
    call Call_04a_4c9d                            ; $50bb: $cd $9d $4c
    dec l                                         ; $50be: $2d
    call nz, $de60                                ; $50bf: $c4 $60 $de
    jr c, jr_04a_5102                             ; $50c2: $38 $3e

    nop                                           ; $50c4: $00
    ld l, a                                       ; $50c5: $6f
    sub c                                         ; $50c6: $91
    add hl, de                                    ; $50c7: $19
    ld e, b                                       ; $50c8: $58
    ld e, b                                       ; $50c9: $58
    sbc [hl]                                      ; $50ca: $9e
    ld e, c                                       ; $50cb: $59
    xor $c9                                       ; $50cc: $ee $c9
    db $f4                                        ; $50ce: $f4
    dec h                                         ; $50cf: $25
    adc l                                         ; $50d0: $8d
    add hl, bc                                    ; $50d1: $09

Jump_04a_50d2:
    ld [c], a                                     ; $50d2: $e2
    ld e, l                                       ; $50d3: $5d
    sub e                                         ; $50d4: $93
    dec sp                                        ; $50d5: $3b
    dec de                                        ; $50d6: $1b
    ret c                                         ; $50d7: $d8

    cp c                                          ; $50d8: $b9
    adc e                                         ; $50d9: $8b
    jp z, $96ab                                   ; $50da: $ca $ab $96

    ld h, [hl]                                    ; $50dd: $66
    inc [hl]                                      ; $50de: $34
    adc b                                         ; $50df: $88
    adc h                                         ; $50e0: $8c
    sbc e                                         ; $50e1: $9b
    pop af                                        ; $50e2: $f1
    ld bc, $e597                                  ; $50e3: $01 $97 $e5
    and c                                         ; $50e6: $a1
    ld e, d                                       ; $50e7: $5a
    ld h, d                                       ; $50e8: $62
    ld a, c                                       ; $50e9: $79
    ld de, $3906                                  ; $50ea: $11 $06 $39
    ld [hl], $93                                  ; $50ed: $36 $93
    ei                                            ; $50ef: $fb
    pop de                                        ; $50f0: $d1
    jp nz, $c346                                  ; $50f1: $c2 $46 $c3

    sbc h                                         ; $50f4: $9c
    rst $28                                       ; $50f5: $ef
    add b                                         ; $50f6: $80
    ld [hl], c                                    ; $50f7: $71
    ld [hl], e                                    ; $50f8: $73

jr_04a_50f9:
    call c, $df85                                 ; $50f9: $dc $85 $df
    pop af                                        ; $50fc: $f1
    call $00f8                                    ; $50fd: $cd $f8 $00
    cpl                                           ; $5100: $2f
    and d                                         ; $5101: $a2

jr_04a_5102:
    ld d, d                                       ; $5102: $52
    ldh a, [rNR10]                                ; $5103: $f0 $10
    sbc e                                         ; $5105: $9b
    ld b, e                                       ; $5106: $43
    or l                                          ; $5107: $b5
    db $10                                        ; $5108: $10
    add e                                         ; $5109: $83
    add hl, bc                                    ; $510a: $09
    jr jr_04a_50f9                                ; $510b: $18 $ec

    jp nc, $a100                                  ; $510d: $d2 $00 $a1

    rst $18                                       ; $5110: $df
    add a                                         ; $5111: $87
    ld h, $f4                                     ; $5112: $26 $f4
    db $fc                                        ; $5114: $fc
    dec hl                                        ; $5115: $2b
    db $e3                                        ; $5116: $e3
    cp l                                          ; $5117: $bd
    rst $10                                       ; $5118: $d7
    ld b, c                                       ; $5119: $41
    ld h, h                                       ; $511a: $64
    call c, $6b9c                                 ; $511b: $dc $9c $6b
    ld h, $17                                     ; $511e: $26 $17
    sub l                                         ; $5120: $95
    ld d, a                                       ; $5121: $57
    dec l                                         ; $5122: $2d
    call Call_000_3e28                            ; $5123: $cd $28 $3e
    nop                                           ; $5126: $00
    rst $10                                       ; $5127: $d7
    db $e4                                        ; $5128: $e4
    jp nz, $c30a                                  ; $5129: $c2 $0a $c3

    or d                                          ; $512c: $b2
    ld a, [de]                                    ; $512d: $1a
    ld l, b                                       ; $512e: $68
    ld hl, sp+$3f                                 ; $512f: $f8 $3f
    ld sp, hl                                     ; $5131: $f9
    ld a, l                                       ; $5132: $7d
    or a                                          ; $5133: $b7
    or h                                          ; $5134: $b4
    ld [hl], $27                                  ; $5135: $36 $27
    ccf                                           ; $5137: $3f
    ld [hl], c                                    ; $5138: $71
    rst $20                                       ; $5139: $e7
    sbc d                                         ; $513a: $9a
    or h                                          ; $513b: $b4
    ld h, h                                       ; $513c: $64
    ld l, h                                       ; $513d: $6c
    ld a, h                                       ; $513e: $7c
    nop                                           ; $513f: $00
    rst $10                                       ; $5140: $d7
    db $e4                                        ; $5141: $e4
    jp nz, $c9ff                                  ; $5142: $c2 $ff $c9

    ld [hl], a                                    ; $5145: $77
    ld h, c                                       ; $5146: $61
    and e                                         ; $5147: $a3
    ld h, c                                       ; $5148: $61
    ld e, c                                       ; $5149: $59
    db $ed                                        ; $514a: $ed
    cp e                                          ; $514b: $bb
    and l                                         ; $514c: $a5
    or l                                          ; $514d: $b5
    add hl, sp                                    ; $514e: $39
    and c                                         ; $514f: $a1
    jp c, Jump_000_1012                           ; $5150: $da $12 $10

    ld b, $b2                                     ; $5153: $06 $b2
    ld [hl], e                                    ; $5155: $73
    ld c, e                                       ; $5156: $4b
    ret nz                                        ; $5157: $c0

    ld a, h                                       ; $5158: $7c
    add hl, bc                                    ; $5159: $09
    inc de                                        ; $515a: $13
    inc l                                         ; $515b: $2c
    ld a, [$5411]                                 ; $515c: $fa $11 $54
    db $dd                                        ; $515f: $dd
    adc h                                         ; $5160: $8c
    rrca                                          ; $5161: $0f
    rst $10                                       ; $5162: $d7
    db $e4                                        ; $5163: $e4
    jp nz, Jump_000_0b0a                          ; $5164: $c2 $0a $0b

    dec de                                        ; $5167: $1b
    dec l                                         ; $5168: $2d
    or c                                          ; $5169: $b1
    cp h                                          ; $516a: $bc
    xor b                                         ; $516b: $a8
    and l                                         ; $516c: $a5
    add c                                         ; $516d: $81
    sbc [hl]                                      ; $516e: $9e
    or c                                          ; $516f: $b1
    add hl, sp                                    ; $5170: $39
    add l                                         ; $5171: $85
    jp hl                                         ; $5172: $e9


    push de                                       ; $5173: $d5
    jp nz, $ccf2                                  ; $5174: $c2 $f2 $cc

    db $fd                                        ; $5177: $fd
    jp hl                                         ; $5178: $e9


    set 1, l                                      ; $5179: $cb $cd
    cp c                                          ; $517b: $b9
    sub [hl]                                      ; $517c: $96
    inc bc                                        ; $517d: $03
    xor b                                         ; $517e: $a8
    cp b                                          ; $517f: $b8
    ld h, h                                       ; $5180: $64
    xor $4f                                       ; $5181: $ee $4f
    rra                                           ; $5183: $1f
    rra                                           ; $5184: $1f
    ld l, a                                       ; $5185: $6f
    db $fd                                        ; $5186: $fd
    ld c, a                                       ; $5187: $4f
    dec sp                                        ; $5188: $3b
    ld a, a                                       ; $5189: $7f
    or a                                          ; $518a: $b7
    inc [hl]                                      ; $518b: $34
    sub h                                         ; $518c: $94
    dec sp                                        ; $518d: $3b
    or l                                          ; $518e: $b5
    ld a, h                                       ; $518f: $7c
    or c                                          ; $5190: $b1
    di                                            ; $5191: $f3
    ld [hl], a                                    ; $5192: $77
    halt                                          ; $5193: $76
    db $fd                                        ; $5194: $fd
    jp c, $bdf5                                   ; $5195: $da $f5 $bd

    ld d, d                                       ; $5198: $52
    sub d                                         ; $5199: $92
    ld d, $35                                     ; $519a: $16 $35
    reti                                          ; $519c: $d9


    ld d, c                                       ; $519d: $51
    sub e                                         ; $519e: $93
    ld c, [hl]                                    ; $519f: $4e
    ld h, [hl]                                    ; $51a0: $66
    ld [hl], e                                    ; $51a1: $73
    ld h, a                                       ; $51a2: $67
    inc c                                         ; $51a3: $0c
    ld [hl-], a                                   ; $51a4: $32
    ld a, $00                                     ; $51a5: $3e $00
    cpl                                           ; $51a7: $2f
    or l                                          ; $51a8: $b5
    pop af                                        ; $51a9: $f1
    xor [hl]                                      ; $51aa: $ae
    ret                                           ; $51ab: $c9


    add l                                         ; $51ac: $85
    dec d                                         ; $51ad: $15
    ld d, $36                                     ; $51ae: $16 $36
    jp c, $72ff                                   ; $51b0: $da $ff $72

    adc c                                         ; $51b3: $89
    push hl                                       ; $51b4: $e5
    sbc c                                         ; $51b5: $99
    push hl                                       ; $51b6: $e5
    jp nz, Jump_04a_7ef2                          ; $51b7: $c2 $f2 $7e

    or d                                          ; $51ba: $b2
    add b                                         ; $51bb: $80
    ld bc, $f40f                                  ; $51bc: $01 $0f $f4
    adc h                                         ; $51bf: $8c
    call $00f8                                    ; $51c0: $cd $f8 $00
    rst $10                                       ; $51c3: $d7
    db $e4                                        ; $51c4: $e4
    adc $06                                       ; $51c5: $ce $06
    ld d, $36                                     ; $51c7: $16 $36
    ld e, d                                       ; $51c9: $5a
    ld d, h                                       ; $51ca: $54
    sbc $19                                       ; $51cb: $de $19
    add e                                         ; $51cd: $83
    sbc h                                         ; $51ce: $9c
    ret nc                                        ; $51cf: $d0

    ld [hl], e                                    ; $51d0: $73
    and e                                         ; $51d1: $a3
    ld a, b                                       ; $51d2: $78
    cpl                                           ; $51d3: $2f
    and d                                         ; $51d4: $a2
    ld d, d                                       ; $51d5: $52
    ldh a, [rNR10]                                ; $51d6: $f0 $10
    sbc e                                         ; $51d8: $9b
    ld b, e                                       ; $51d9: $43
    or l                                          ; $51da: $b5
    db $10                                        ; $51db: $10
    add e                                         ; $51dc: $83
    sub l                                         ; $51dd: $95
    ld b, b                                       ; $51de: $40
    ld d, e                                       ; $51df: $53
    call Call_000_172c                            ; $51e0: $cd $2c $17
    sub [hl]                                      ; $51e3: $96
    rst $20                                       ; $51e4: $e7
    ld d, $34                                     ; $51e5: $16 $34
    db $e3                                        ; $51e7: $e3
    inc bc                                        ; $51e8: $03
    rst $10                                       ; $51e9: $d7
    db $e4                                        ; $51ea: $e4
    ld c, [hl]                                    ; $51eb: $4e
    dec l                                         ; $51ec: $2d
    cpl                                           ; $51ed: $2f
    or c                                          ; $51ee: $b1
    cp h                                          ; $51ef: $bc
    ld [hl], $d5                                  ; $51f0: $36 $d5
    ld c, [hl]                                    ; $51f2: $4e
    ld h, [hl]                                    ; $51f3: $66
    or h                                          ; $51f4: $b4
    inc sp                                        ; $51f5: $33
    ld b, $39                                     ; $51f6: $06 $39
    ld l, c                                       ; $51f8: $69
    ret                                           ; $51f9: $c9


    rst $38                                       ; $51fa: $ff
    db $d3                                        ; $51fb: $d3
    ld d, b                                       ; $51fc: $50
    push bc                                       ; $51fd: $c5
    rlca                                          ; $51fe: $07
    cpl                                           ; $51ff: $2f
    or l                                          ; $5200: $b5
    pop af                                        ; $5201: $f1
    ld e, [hl]                                    ; $5202: $5e
    inc [hl]                                      ; $5203: $34
    and e                                         ; $5204: $a3
    or l                                          ; $5205: $b5
    add hl, sp                                    ; $5206: $39
    rst $10                                       ; $5207: $d7
    ld [hl], d                                    ; $5208: $72
    cp [hl]                                       ; $5209: $be
    db $d3                                        ; $520a: $d3
    dec h                                         ; $520b: $25
    and e                                         ; $520c: $a3
    and $ce                                       ; $520d: $e6 $ce
    and [hl]                                      ; $520f: $a6
    rla                                           ; $5210: $17
    sub [hl]                                      ; $5211: $96
    ld [hl], a                                    ; $5212: $77
    xor d                                         ; $5213: $aa
    sbc $a9                                       ; $5214: $de $a9
    call c, $0f8c                                 ; $5216: $dc $8c $0f
    rst $10                                       ; $5219: $d7
    db $e4                                        ; $521a: $e4
    adc $06                                       ; $521b: $ce $06
    ld d, $36                                     ; $521d: $16 $36
    ld e, d                                       ; $521f: $5a
    ret c                                         ; $5220: $d8

    ld [$5295], a                                 ; $5221: $ea $95 $52
    ld sp, $6182                                  ; $5224: $31 $82 $61
    ld c, $54                                     ; $5227: $0e $54
    ld b, c                                       ; $5229: $41
    ld d, h                                       ; $522a: $54
    cp c                                          ; $522b: $b9
    xor b                                         ; $522c: $a8
    cp h                                          ; $522d: $bc
    daa                                           ; $522e: $27
    db $d3                                        ; $522f: $d3
    sub a                                         ; $5230: $97
    inc [hl]                                      ; $5231: $34
    ld h, $88                                     ; $5232: $26 $88
    rst $30                                       ; $5234: $f7
    ld [hl+], a                                   ; $5235: $22
    ld a, [hl+]                                   ; $5236: $2a
    dec b                                         ; $5237: $05
    rrca                                          ; $5238: $0f
    or c                                          ; $5239: $b1
    cp c                                          ; $523a: $b9
    ld d, e                                       ; $523b: $53
    srl e                                         ; $523c: $cb $3b
    ld h, e                                       ; $523e: $63
    or b                                          ; $523f: $b0
    or b                                          ; $5240: $b0
    inc e                                         ; $5241: $1c
    rra                                           ; $5242: $1f
    rst $10                                       ; $5243: $d7
    db $e4                                        ; $5244: $e4
    ld c, [hl]                                    ; $5245: $4e
    dec l                                         ; $5246: $2d
    rst $08                                       ; $5247: $cf
    ld [hl], a                                    ; $5248: $77
    ld h, c                                       ; $5249: $61
    or l                                          ; $524a: $b5
    adc b                                         ; $524b: $88
    rst $20                                       ; $524c: $e7
    ld e, d                                       ; $524d: $5a
    adc $77                                       ; $524e: $ce $77
    adc h                                         ; $5250: $8c
    add c                                         ; $5251: $81
    ld e, a                                       ; $5252: $5f
    ld h, d                                       ; $5253: $62
    ld a, c                                       ; $5254: $79
    ld l, l                                       ; $5255: $6d
    xor d                                         ; $5256: $aa
    sbc l                                         ; $5257: $9d
    call z, $2868                                 ; $5258: $cc $68 $28
    ld [hl], a                                    ; $525b: $77
    xor [hl]                                      ; $525c: $ae
    ld d, $4d                                     ; $525d: $16 $4d
    ld l, b                                       ; $525f: $68
    add $07                                       ; $5260: $c6 $07
    cpl                                           ; $5262: $2f
    and d                                         ; $5263: $a2
    ld d, d                                       ; $5264: $52
    ldh a, [rNR10]                                ; $5265: $f0 $10
    sbc e                                         ; $5267: $9b
    ld b, e                                       ; $5268: $43
    or l                                          ; $5269: $b5
    db $10                                        ; $526a: $10
    add e                                         ; $526b: $83
    ld h, c                                       ; $526c: $61
    adc $77                                       ; $526d: $ce $77
    rst $08                                       ; $526f: $cf
    pop de                                        ; $5270: $d1
    rst $20                                       ; $5271: $e7
    xor $3d                                       ; $5272: $ee $3d
    inc sp                                        ; $5274: $33
    cp l                                          ; $5275: $bd
    rra                                           ; $5276: $1f
    db $ed                                        ; $5277: $ed
    adc h                                         ; $5278: $8c
    ld b, c                                       ; $5279: $41
    xor [hl]                                      ; $527a: $ae
    sbc b                                         ; $527b: $98
    cp [hl]                                       ; $527c: $be
    add c                                         ; $527d: $81
    add hl, de                                    ; $527e: $19
    add hl, hl                                    ; $527f: $29
    cp $55                                        ; $5280: $fe $55
    db $10                                        ; $5282: $10
    sbc c                                         ; $5283: $99
    ret                                           ; $5284: $c9


    cp c                                          ; $5285: $b9
    rst $38                                       ; $5286: $ff
    db $d3                                        ; $5287: $d3
    cp b                                          ; $5288: $b8
    inc de                                        ; $5289: $13
    ld c, d                                       ; $528a: $4a
    ld b, l                                       ; $528b: $45
    rst $18                                       ; $528c: $df
    adc h                                         ; $528d: $8c
    rrca                                          ; $528e: $0f
    ld l, a                                       ; $528f: $6f
    sbc e                                         ; $5290: $9b
    pop de                                        ; $5291: $d1
    ld b, d                                       ; $5292: $42
    inc c                                         ; $5293: $0c
    halt                                          ; $5294: $76
    ld b, d                                       ; $5295: $42
    cp l                                          ; $5296: $bd
    inc sp                                        ; $5297: $33
    ld b, $79                                     ; $5298: $06 $79
    or c                                          ; $529a: $b1
    ld l, h                                       ; $529b: $6c
    and e                                         ; $529c: $a3
    and c                                         ; $529d: $a1
    sbc h                                         ; $529e: $9c
    ld e, c                                       ; $529f: $59
    add $07                                       ; $52a0: $c6 $07
    rst $10                                       ; $52a2: $d7
    db $e4                                        ; $52a3: $e4
    jp nz, Jump_000_0b0a                          ; $52a4: $c2 $0a $0b

    dec de                                        ; $52a7: $1b
    call $bcf4                                    ; $52a8: $cd $f4 $bc
    add c                                         ; $52ab: $81
    and $12                                       ; $52ac: $e6 $12
    rlc e                                         ; $52ae: $cb $03
    dec a                                         ; $52b0: $3d
    ld h, e                                       ; $52b1: $63
    inc sp                                        ; $52b2: $33
    ld a, $00                                     ; $52b3: $3e $00

jr_04a_52b5:
    ld l, a                                       ; $52b5: $6f
    sub c                                         ; $52b6: $91
    add hl, de                                    ; $52b7: $19

jr_04a_52b8:
    ld e, b                                       ; $52b8: $58
    ld e, b                                       ; $52b9: $58
    sbc [hl]                                      ; $52ba: $9e
    ld e, c                                       ; $52bb: $59
    xor [hl]                                      ; $52bc: $ae
    call $92e9                                    ; $52bd: $cd $e9 $92
    add hl, de                                    ; $52c0: $19
    push bc                                       ; $52c1: $c5
    ld a, e                                       ; $52c2: $7b
    xor a                                         ; $52c3: $af
    dec sp                                        ; $52c4: $3b
    sub l                                         ; $52c5: $95
    sbc e                                         ; $52c6: $9b
    inc sp                                        ; $52c7: $33
    call $f818                                    ; $52c8: $cd $18 $f8
    cp c                                          ; $52cb: $b9
    sub [hl]                                      ; $52cc: $96
    xor e                                         ; $52cd: $ab
    sub [hl]                                      ; $52ce: $96
    ld h, [hl]                                    ; $52cf: $66
    or h                                          ; $52d0: $b4
    sub e                                         ; $52d1: $93
    pop af                                        ; $52d2: $f1
    adc $9d                                       ; $52d3: $ce $9d
    ld e, c                                       ; $52d5: $59
    ld l, $2c                                     ; $52d6: $2e $2c
    rst $08                                       ; $52d8: $cf
    ld b, c                                       ; $52d9: $41
    ld d, [hl]                                    ; $52da: $56
    ret nc                                        ; $52db: $d0

    sub a                                         ; $52dc: $97
    call Call_000_319d                            ; $52dd: $cd $9d $31
    ret z                                         ; $52e0: $c8

    ld hl, sp+$00                                 ; $52e1: $f8 $00
    sub a                                         ; $52e3: $97
    ld e, b                                       ; $52e4: $58
    ld e, d                                       ; $52e5: $5a
    ld [hl], e                                    ; $52e6: $73
    sbc $8c                                       ; $52e7: $de $8c
    ld l, $26                                     ; $52e9: $2e $26
    ld a, h                                       ; $52eb: $7c
    or a                                          ; $52ec: $b7
    cp c                                          ; $52ed: $b9
    cpl                                           ; $52ee: $2f
    jp c, Jump_04a_5f4f                           ; $52ef: $da $4f $5f

    cp d                                          ; $52f2: $ba
    jr jr_04a_52b5                                ; $52f3: $18 $c0

    db $f4                                        ; $52f5: $f4
    and l                                         ; $52f6: $a5
    dec [hl]                                      ; $52f7: $35
    rlca                                          ; $52f8: $07
    jr nc, jr_04a_52b8                            ; $52f9: $30 $bd

    adc d                                         ; $52fb: $8a
    rst $30                                       ; $52fc: $f7
    inc a                                         ; $52fd: $3c
    ld d, [hl]                                    ; $52fe: $56
    dec l                                         ; $52ff: $2d
    ld [hl-], a                                   ; $5300: $32
    and e                                         ; $5301: $a3
    add hl, sp                                    ; $5302: $39
    ret z                                         ; $5303: $c8

    pop af                                        ; $5304: $f1
    ld bc, $e4d7                                  ; $5305: $01 $d7 $e4
    jp nz, $030a                                  ; $5308: $c2 $0a $03

    dec c                                         ; $530b: $0d
    rst $38                                       ; $530c: $ff
    daa                                           ; $530d: $27
    ccf                                           ; $530e: $3f
    ld l, a                                       ; $530f: $6f
    cp h                                          ; $5310: $bc
    db $10                                        ; $5311: $10
    add e                                         ; $5312: $83
    or l                                          ; $5313: $b5
    add hl, sp                                    ; $5314: $39
    add $c0                                       ; $5315: $c6 $c0
    rlca                                          ; $5317: $07
    db $dd                                        ; $5318: $dd
    xor c                                         ; $5319: $a9
    ld h, b                                       ; $531a: $60
    rst $20                                       ; $531b: $e7
    rst $28                                       ; $531c: $ef
    inc c                                         ; $531d: $0c
    sbc b                                         ; $531e: $98
    ld h, l                                       ; $531f: $65
    ld a, h                                       ; $5320: $7c
    nop                                           ; $5321: $00
    sub a                                         ; $5322: $97
    jr jr_04a_5371                                ; $5323: $18 $4c

    ld e, d                                       ; $5325: $5a
    xor $bb                                       ; $5326: $ee $bb
    dec h                                         ; $5328: $25
    db $d3                                        ; $5329: $d3
    dec sp                                        ; $532a: $3b
    ld h, e                                       ; $532b: $63
    sub b                                         ; $532c: $90
    pop af                                        ; $532d: $f1
    sbc [hl]                                      ; $532e: $9e
    ret                                           ; $532f: $c9


    sbc c                                         ; $5330: $99
    ld d, [hl]                                    ; $5331: $56
    dec bc                                        ; $5332: $0b
    ld sp, $e158                                  ; $5333: $31 $58 $e1
    ld hl, $fcef                                  ; $5336: $21 $ef $fc
    sbc l                                         ; $5339: $9d
    sbc l                                         ; $533a: $9d
    ld d, b                                       ; $533b: $50
    db $eb                                        ; $533c: $eb
    and $c5                                       ; $533d: $e6 $c5
    adc $df                                       ; $533f: $ce $df
    ld e, c                                       ; $5341: $59
    adc b                                         ; $5342: $88
    pop bc                                        ; $5343: $c1
    cp b                                          ; $5344: $b8
    and b                                         ; $5345: $a0
    ld a, [de]                                    ; $5346: $1a
    inc bc                                        ; $5347: $03
    ld e, c                                       ; $5348: $59
    ld h, d                                       ; $5349: $62
    inc c                                         ; $534a: $0c
    db $fc                                        ; $534b: $fc
    cp [hl]                                       ; $534c: $be
    ld e, e                                       ; $534d: $5b
    ld [hl-], a                                   ; $534e: $32
    cp l                                          ; $534f: $bd
    and $b2                                       ; $5350: $e6 $b2
    inc b                                         ; $5352: $04
    sbc d                                         ; $5353: $9a
    ld l, d                                       ; $5354: $6a
    jp nc, Jump_04a_6cc9                          ; $5355: $d2 $c9 $6c

    xor $8c                                       ; $5358: $ee $8c
    ld b, c                                       ; $535a: $41
    add $07                                       ; $535b: $c6 $07
    cpl                                           ; $535d: $2f
    and d                                         ; $535e: $a2
    ld d, d                                       ; $535f: $52
    ldh a, [rNR10]                                ; $5360: $f0 $10
    sbc e                                         ; $5362: $9b
    dec bc                                        ; $5363: $0b
    xor e                                         ; $5364: $ab
    ld hl, $885e                                  ; $5365: $21 $5e $88
    pop bc                                        ; $5368: $c1
    ld e, [hl]                                    ; $5369: $5e
    inc [hl]                                      ; $536a: $34
    add d                                         ; $536b: $82
    ld d, a                                       ; $536c: $57
    rst $28                                       ; $536d: $ef
    dec b                                         ; $536e: $05
    ld b, a                                       ; $536f: $47
    db $10                                        ; $5370: $10

jr_04a_5371:
    ld c, d                                       ; $5371: $4a
    sub c                                         ; $5372: $91
    and l                                         ; $5373: $a5
    ld e, d                                       ; $5374: $5a
    ld d, h                                       ; $5375: $54
    ld e, [hl]                                    ; $5376: $5e
    ld e, b                                       ; $5377: $58
    sbc $f9                                       ; $5378: $de $f9
    ld d, a                                       ; $537a: $57
    ld [hl], $97                                  ; $537b: $36 $97
    ld h, [hl]                                    ; $537d: $66
    or h                                          ; $537e: $b4
    inc sp                                        ; $537f: $33
    ld b, $39                                     ; $5380: $06 $39
    ret z                                         ; $5382: $c8

    ld a, h                                       ; $5383: $7c
    ld a, h                                       ; $5384: $7c
    nop                                           ; $5385: $00
    rst $10                                       ; $5386: $d7
    db $e4                                        ; $5387: $e4
    adc $06                                       ; $5388: $ce $06
    ld d, $36                                     ; $538a: $16 $36
    sbc d                                         ; $538c: $9a
    ld c, b                                       ; $538d: $48
    dec sp                                        ; $538e: $3b
    xor b                                         ; $538f: $a8
    cp b                                          ; $5390: $b8
    call nc, $e61c                                ; $5391: $d4 $1c $e6
    jp c, $f85c                                   ; $5394: $da $5c $f8

    dec hl                                        ; $5397: $2b
    add e                                         ; $5398: $83
    ld l, $2a                                     ; $5399: $2e $2a
    rst $28                                       ; $539b: $ef
    ret                                           ; $539c: $c9


    db $f4                                        ; $539d: $f4
    dec h                                         ; $539e: $25
    adc l                                         ; $539f: $8d
    add hl, bc                                    ; $53a0: $09
    ld [c], a                                     ; $53a1: $e2
    cp l                                          ; $53a2: $bd
    ld b, l                                       ; $53a3: $45
    ld h, [hl]                                    ; $53a4: $66
    ld h, b                                       ; $53a5: $60
    ld h, c                                       ; $53a6: $61
    ld a, c                                       ; $53a7: $79
    ld h, [hl]                                    ; $53a8: $66
    cp c                                          ; $53a9: $b9
    ret nc                                        ; $53aa: $d0

    adc h                                         ; $53ab: $8c
    ld [c], a                                     ; $53ac: $e2
    inc bc                                        ; $53ad: $03
    rst $10                                       ; $53ae: $d7
    db $e4                                        ; $53af: $e4
    jp nz, $030a                                  ; $53b0: $c2 $0a $03

    dec c                                         ; $53b3: $0d
    rst $38                                       ; $53b4: $ff
    daa                                           ; $53b5: $27
    ccf                                           ; $53b6: $3f
    ld l, a                                       ; $53b7: $6f
    cp h                                          ; $53b8: $bc
    db $10                                        ; $53b9: $10
    add e                                         ; $53ba: $83
    ld bc, $0332                                  ; $53bb: $01 $32 $03
    ei                                            ; $53be: $fb
    ret nc                                        ; $53bf: $d0

    jp nz, $a2f2                                  ; $53c0: $c2 $f2 $a2

    sub [hl]                                      ; $53c3: $96
    and [hl]                                      ; $53c4: $a6
    inc e                                         ; $53c5: $1c
    ld [de], a                                    ; $53c6: $12
    ld [hl], c                                    ; $53c7: $71
    cp h                                          ; $53c8: $bc
    sub a                                         ; $53c9: $97
    ld b, l                                       ; $53ca: $45
    dec sp                                        ; $53cb: $3b

jr_04a_53cc:
    sbc c                                         ; $53cc: $99
    sbc d                                         ; $53cd: $9a
    scf                                           ; $53ce: $37
    sbc $5b                                       ; $53cf: $de $5b
    xor b                                         ; $53d1: $a8
    ld a, l                                       ; $53d2: $7d
    jp hl                                         ; $53d3: $e9


    jp z, $9701                                   ; $53d4: $ca $01 $97

    ld e, b                                       ; $53d7: $58
    ld [de], a                                    ; $53d8: $12
    cp [hl]                                       ; $53d9: $be
    db $db                                        ; $53da: $db
    inc e                                         ; $53db: $1c
    xor d                                         ; $53dc: $aa
    add l                                         ; $53dd: $85
    jr jr_04a_53cc                                ; $53de: $18 $ec

    ld e, h                                       ; $53e0: $5c
    ld e, c                                       ; $53e1: $59
    ld e, d                                       ; $53e2: $5a
    ld h, d                                       ; $53e3: $62
    add hl, sp                                    ; $53e4: $39
    ld a, $00                                     ; $53e5: $3e $00
    ld c, a                                       ; $53e7: $4f
    and [hl]                                      ; $53e8: $a6
    cpl                                           ; $53e9: $2f
    ld l, c                                       ; $53ea: $69
    ld c, h                                       ; $53eb: $4c
    jr nc, jr_04a_5442                            ; $53ec: $30 $54

    inc sp                                        ; $53ee: $33
    and l                                         ; $53ef: $a5
    ld d, b                                       ; $53f0: $50
    ld [hl], c                                    ; $53f1: $71
    sub e                                         ; $53f2: $93
    rst $28                                       ; $53f3: $ef
    ld d, d                                       ; $53f4: $52
    ldh a, [$f0]                                  ; $53f5: $f0 $f0
    ld a, a                                       ; $53f7: $7f
    dec e                                         ; $53f8: $1d
    cp $2f                                        ; $53f9: $fe $2f
    ld a, [c]                                     ; $53fb: $f2
    pop af                                        ; $53fc: $f1
    sbc $c3                                       ; $53fd: $de $c3
    ld h, b                                       ; $53ff: $60
    pop de                                        ; $5400: $d1
    cpl                                           ; $5401: $2f
    cpl                                           ; $5402: $2f
    inc l                                         ; $5403: $2c
    rst $28                                       ; $5404: $ef
    ld d, h                                       ; $5405: $54
    ld l, [hl]                                    ; $5406: $6e
    add $07                                       ; $5407: $c6 $07
    rst $10                                       ; $5409: $d7
    db $e4                                        ; $540a: $e4
    jp nz, Jump_000_0b0a                          ; $540b: $c2 $0a $0b

    dec de                                        ; $540e: $1b
    dec l                                         ; $540f: $2d
    or c                                          ; $5410: $b1
    inc a                                         ; $5411: $3c
    ret nc                                        ; $5412: $d0

    inc sp                                        ; $5413: $33
    ld [hl], $e7                                  ; $5414: $36 $e7
    ld e, d                                       ; $5416: $5a
    ld a, d                                       ; $5417: $7a
    inc sp                                        ; $5418: $33
    db $10                                        ; $5419: $10
    rra                                           ; $541a: $1f
    rst $10                                       ; $541b: $d7
    db $e4                                        ; $541c: $e4
    adc $d8                                       ; $541d: $ce $d8
    add l                                         ; $541f: $85
    adc l                                         ; $5420: $8d
    ld d, [hl]                                    ; $5421: $56
    inc b                                         ; $5422: $04
    ld c, l                                       ; $5423: $4d
    adc l                                         ; $5424: $8d
    add c                                         ; $5425: $81
    sbc h                                         ; $5426: $9c
    add b                                         ; $5427: $80
    ld b, c                                       ; $5428: $41
    jp c, Jump_04a_7ff2                           ; $5429: $da $f2 $7f

    db $e4                                        ; $542c: $e4
    ld hl, sp+$00                                 ; $542d: $f8 $00
    cpl                                           ; $542f: $2f
    ld d, a                                       ; $5430: $57
    inc h                                         ; $5431: $24
    cp $00                                        ; $5432: $fe $00
    rst $08                                       ; $5434: $cf
    or l                                          ; $5435: $b5
    add hl, sp                                    ; $5436: $39
    dec b                                         ; $5437: $05
    db $fd                                        ; $5438: $fd
    ld c, a                                       ; $5439: $4f
    ld [hl], e                                    ; $543a: $73
    dec l                                         ; $543b: $2d
    rst $30                                       ; $543c: $f7
    ld a, d                                       ; $543d: $7a
    or [hl]                                       ; $543e: $b6
    ld d, b                                       ; $543f: $50
    ld a, h                                       ; $5440: $7c
    nop                                           ; $5441: $00

jr_04a_5442:
    rst $10                                       ; $5442: $d7
    db $e4                                        ; $5443: $e4
    and h                                         ; $5444: $a4
    push hl                                       ; $5445: $e5
    and d                                         ; $5446: $a2
    ld l, $b1                                     ; $5447: $2e $b1
    inc a                                         ; $5449: $3c
    and c                                         ; $544a: $a1
    and a                                         ; $544b: $a7
    add d                                         ; $544c: $82

Call_04a_544d:
    and [hl]                                      ; $544d: $a6
    ld hl, sp+$03                                 ; $544e: $f8 $03
    rst $10                                       ; $5450: $d7
    db $e4                                        ; $5451: $e4
    cp $97                                        ; $5452: $fe $97
    ld c, e                                       ; $5454: $4b

jr_04a_5455:
    inc l                                         ; $5455: $2c
    adc e                                         ; $5456: $8b
    rst $18                                       ; $5457: $df
    ld d, l                                       ; $5458: $55
    db $ec                                        ; $5459: $ec
    jr nz, @+$6f                                  ; $545a: $20 $6d

    ret                                           ; $545c: $c9


    call Call_000_1585                            ; $545d: $cd $85 $15
    add h                                         ; $5460: $84
    and $ce                                       ; $5461: $e6 $ce
    ld [$f70f], sp                                ; $5463: $08 $0f $f7
    and e                                         ; $5466: $a3
    db $fd                                        ; $5467: $fd
    ld d, h                                       ; $5468: $54
    dec bc                                        ; $5469: $0b
    db $db                                        ; $546a: $db
    inc b                                         ; $546b: $04
    ld d, l                                       ; $546c: $55
    ld a, [de]                                    ; $546d: $1a
    inc de                                        ; $546e: $13
    sub h                                         ; $546f: $94
    ld a, h                                       ; $5470: $7c
    cp h                                          ; $5471: $bc
    xor e                                         ; $5472: $ab
    add $8b                                       ; $5473: $c6 $8b
    ld a, [hl]                                    ; $5475: $7e
    add hl, sp                                    ; $5476: $39
    adc [hl]                                      ; $5477: $8e
    db $e3                                        ; $5478: $e3
    ld e, l                                       ; $5479: $5d
    ld [hl], l                                    ; $547a: $75
    ret nc                                        ; $547b: $d0

    xor l                                         ; $547c: $ad
    ld d, [hl]                                    ; $547d: $56
    adc d                                         ; $547e: $8a
    add hl, bc                                    ; $547f: $09
    push hl                                       ; $5480: $e5
    adc $18                                       ; $5481: $ce $18
    and h                                         ; $5483: $a4
    ld hl, sp+$5d                                 ; $5484: $f8 $5d
    sub e                                         ; $5486: $93
    dec bc                                        ; $5487: $0b
    dec hl                                        ; $5488: $2b
    xor h                                         ; $5489: $ac
    db $f4                                        ; $548a: $f4
    db $dd                                        ; $548b: $dd
    jp nc, Jump_04a_7540                          ; $548c: $d2 $40 $75

    rst $08                                       ; $548f: $cf
    ld c, l                                       ; $5490: $4d
    pop af                                        ; $5491: $f1
    ld a, e                                       ; $5492: $7b
    cp e                                          ; $5493: $bb
    dec bc                                        ; $5494: $0b
    dec hl                                        ; $5495: $2b
    ld [$69cd], sp                                ; $5496: $08 $cd $69
    add h                                         ; $5499: $84
    add a                                         ; $549a: $87
    cp h                                          ; $549b: $bc
    cpl                                           ; $549c: $2f
    sbc d                                         ; $549d: $9a
    db $eb                                        ; $549e: $eb
    jr c, jr_04a_5455                             ; $549f: $38 $b4

    db $fc                                        ; $54a1: $fc
    ld e, $c1                                     ; $54a2: $1e $c1
    push bc                                       ; $54a4: $c5
    ld l, $8d                                     ; $54a5: $2e $8d
    ld c, b                                       ; $54a7: $48
    adc h                                         ; $54a8: $8c
    ld hl, sp+$03                                 ; $54a9: $f8 $03
    ld d, a                                       ; $54ab: $57
    dec l                                         ; $54ac: $2d
    push hl                                       ; $54ad: $e5
    add d                                         ; $54ae: $82
    ld e, [hl]                                    ; $54af: $5e
    db $ec                                        ; $54b0: $ec
    jp nc, $c488                                  ; $54b1: $d2 $88 $c4

    ld e, h                                       ; $54b4: $5c
    inc c                                         ; $54b5: $0c
    push hl                                       ; $54b6: $e5
    inc h                                         ; $54b7: $24
    or l                                          ; $54b8: $b5
    ld h, b                                       ; $54b9: $60
    ld [bc], a                                    ; $54ba: $02
    ld b, $69                                     ; $54bb: $06 $69
    inc bc                                        ; $54bd: $03
    ld l, l                                       ; $54be: $6d
    ld c, [hl]                                    ; $54bf: $4e
    dec sp                                        ; $54c0: $3b
    ldh a, [$90]                                  ; $54c1: $f0 $90
    rla                                           ; $54c3: $17
    or l                                          ; $54c4: $b5
    inc d                                         ; $54c5: $14
    rra                                           ; $54c6: $1f
    cpl                                           ; $54c7: $2f
    jr jr_04a_5501                                ; $54c8: $18 $37

    ld [hl], a                                    ; $54ca: $77
    ld [$92dc], a                                 ; $54cb: $ea $dc $92
    cpl                                           ; $54ce: $2f
    dec c                                         ; $54cf: $0d
    sbc b                                         ; $54d0: $98
    ld h, l                                       ; $54d1: $65
    cp h                                          ; $54d2: $bc
    rst $10                                       ; $54d3: $d7
    or e                                          ; $54d4: $b3
    add l                                         ; $54d5: $85
    add [hl]                                      ; $54d6: $86
    ld l, d                                       ; $54d7: $6a
    ccf                                           ; $54d8: $3f
    push de                                       ; $54d9: $d5
    ld c, h                                       ; $54da: $4c
    xor a                                         ; $54db: $af
    call $ad85                                    ; $54dc: $cd $85 $ad
    ld e, [hl]                                    ; $54df: $5e
    ld sp, $dcfd                                  ; $54e0: $31 $fd $dc
    rst $38                                       ; $54e3: $ff
    add hl, hl                                    ; $54e4: $29
    ld a, $00                                     ; $54e5: $3e $00
    ld l, a                                       ; $54e7: $6f
    ld [hl], a                                    ; $54e8: $77
    ld h, a                                       ; $54e9: $67
    ld h, h                                       ; $54ea: $64
    ld l, [hl]                                    ; $54eb: $6e
    ld l, $3f                                     ; $54ec: $2e $3f
    sbc b                                         ; $54ee: $98
    ld [c], a                                     ; $54ef: $e2
    sub $ab                                       ; $54f0: $d6 $ab
    cp c                                          ; $54f2: $b9
    and [hl]                                      ; $54f3: $a6
    ld hl, sp+$62                                 ; $54f4: $f8 $62
    sub a                                         ; $54f6: $97
    ld b, [hl]                                    ; $54f7: $46
    inc h                                         ; $54f8: $24
    ld b, [hl]                                    ; $54f9: $46
    db $fc                                        ; $54fa: $fc
    or $0a                                        ; $54fb: $f6 $0a
    ld a, l                                       ; $54fd: $7d
    and c                                         ; $54fe: $a1
    and l                                         ; $54ff: $a5
    add l                                         ; $5500: $85

jr_04a_5501:
    push hl                                       ; $5501: $e5
    push hl                                       ; $5502: $e5
    rlca                                          ; $5503: $07
    ld l, e                                       ; $5504: $6b
    ld d, e                                       ; $5505: $53
    adc c                                         ; $5506: $89
    ccf                                           ; $5507: $3f
    nop                                           ; $5508: $00

Call_04a_5509:
    ld l, a                                       ; $5509: $6f
    ld a, l                                       ; $550a: $7d
    ld d, b                                       ; $550b: $50
    xor l                                         ; $550c: $ad
    call nz, $aaef                                ; $550d: $c4 $ef $aa
    add e                                         ; $5510: $83
    rst $20                                       ; $5511: $e7
    and [hl]                                      ; $5512: $a6
    ld l, a                                       ; $5513: $6f
    adc $fd                                       ; $5514: $ce $fd
    and b                                         ; $5516: $a0
    ld e, d                                       ; $5517: $5a
    adc c                                         ; $5518: $89
    rst $18                                       ; $5519: $df
    ld a, e                                       ; $551a: $7b
    sbc l                                         ; $551b: $9d
    ld l, e                                       ; $551c: $6b
    ld e, d                                       ; $551d: $5a
    scf                                           ; $551e: $37
    rst $30                                       ; $551f: $f7
    ld d, e                                       ; $5520: $53
    db $ed                                        ; $5521: $ed
    ld h, h                                       ; $5522: $64
    ld b, [hl]                                    ; $5523: $46
    ld a, [bc]                                    ; $5524: $0a
    ld e, $62                                     ; $5525: $1e $62
    sub b                                         ; $5527: $90
    ld a, [de]                                    ; $5528: $1a
    inc bc                                        ; $5529: $03
    add hl, sp                                    ; $552a: $39
    or e                                          ; $552b: $b3

Jump_04a_552c:
    sbc h                                         ; $552c: $9c
    ld l, c                                       ; $552d: $69
    or l                                          ; $552e: $b5
    ld d, e                                       ; $552f: $53
    rst $20                                       ; $5530: $e7
    dec sp                                        ; $5531: $3b
    ld l, c                                       ; $5532: $69
    ld d, c                                       ; $5533: $51
    ld l, c                                       ; $5534: $69
    rst $18                                       ; $5535: $df
    dec l                                         ; $5536: $2d
    add hl, hl                                    ; $5537: $29
    xor [hl]                                      ; $5538: $ae
    ld l, h                                       ; $5539: $6c
    add $07                                       ; $553a: $c6 $07
    ld d, a                                       ; $553c: $57
    adc l                                         ; $553d: $8d
    ld [hl], a                                    ; $553e: $77
    add $20                                       ; $553f: $c6 $20
    rlca                                          ; $5541: $07
    jp c, $fb9c                                   ; $5542: $da $9c $fb

    ld b, c                                       ; $5545: $41
    or l                                          ; $5546: $b5
    adc d                                         ; $5547: $8a
    db $e3                                        ; $5548: $e3
    ld a, b                                       ; $5549: $78
    ld h, c                                       ; $554a: $61
    ld a, c                                       ; $554b: $79
    ld h, a                                       ; $554c: $67
    inc c                                         ; $554d: $0c
    ld [hl], d                                    ; $554e: $72
    and b                                         ; $554f: $a0
    xor [hl]                                      ; $5550: $ae
    xor [hl]                                      ; $5551: $ae
    inc bc                                        ; $5552: $03
    xor d                                         ; $5553: $aa
    ld a, l                                       ; $5554: $7d
    and a                                         ; $5555: $a7
    ld [hl], h                                    ; $5556: $74
    dec e                                         ; $5557: $1d
    xor [hl]                                      ; $5558: $ae
    ld d, [hl]                                    ; $5559: $56
    ld [c], a                                     ; $555a: $e2
    rrca                                          ; $555b: $0f
    ld d, a                                       ; $555c: $57
    ld de, $721e                                  ; $555d: $11 $1e $72
    cp h                                          ; $5560: $bc
    ld h, a                                       ; $5561: $67
    sbc d                                         ; $5562: $9a
    ld [hl], e                                    ; $5563: $73
    dec l                                         ; $5564: $2d
    rst $20                                       ; $5565: $e7
    or c                                          ; $5566: $b1
    ld d, e                                       ; $5567: $53
    cp d                                          ; $5568: $ba
    ld c, $57                                     ; $5569: $0e $57
    xor e                                         ; $556b: $ab
    ld b, c                                       ; $556c: $41
    and [hl]                                      ; $556d: $a6
    ld a, b                                       ; $556e: $78
    and l                                         ; $556f: $a5
    sbc l                                         ; $5570: $9d

jr_04a_5571:
    call z, $c148                                 ; $5571: $cc $48 $c1
    ld b, e                                       ; $5574: $43
    inc c                                         ; $5575: $0c
    ld d, d                                       ; $5576: $52
    ld h, e                                       ; $5577: $63
    jr nz, jr_04a_5571                            ; $5578: $20 $f7

    and c                                         ; $557a: $a1
    ld hl, sp+$00                                 ; $557b: $f8 $00
    cpl                                           ; $557d: $2f
    sbc d                                         ; $557e: $9a
    pop de                                        ; $557f: $d1
    ld c, [hl]                                    ; $5580: $4e
    push de                                       ; $5581: $d5
    or d                                          ; $5582: $b2
    ld d, a                                       ; $5583: $57
    ld c, $57                                     ; $5584: $0e $57
    or c                                          ; $5586: $b1
    ld d, e                                       ; $5587: $53
    cp d                                          ; $5588: $ba
    ld c, $57                                     ; $5589: $0e $57
    rst $08                                       ; $558b: $cf
    sbc e                                         ; $558c: $9b
    pop de                                        ; $558d: $d1
    jp nz, Jump_04a_46ea                          ; $558e: $c2 $ea $46

    ld h, [hl]                                    ; $5591: $66
    ld a, d                                       ; $5592: $7a
    jp nz, $9b77                                  ; $5593: $c2 $77 $9b

    ld h, [hl]                                    ; $5596: $66
    add hl, sp                                    ; $5597: $39
    ld d, h                                       ; $5598: $54
    or e                                          ; $5599: $b3
    db $f4                                        ; $559a: $f4
    dec h                                         ; $559b: $25
    dec [hl]                                      ; $559c: $35
    ld l, a                                       ; $559d: $6f
    add hl, sp                                    ; $559e: $39
    rst $18                                       ; $559f: $df
    ld e, c                                       ; $55a0: $59
    ld a, [$3352]                                 ; $55a1: $fa $52 $33
    ld a, $00                                     ; $55a4: $3e $00
    ld c, a                                       ; $55a6: $4f
    push de                                       ; $55a7: $d5
    rst $38                                       ; $55a8: $ff
    ld [$9d05], a                                 ; $55a9: $ea $05 $9d
    rst $00                                       ; $55ac: $c7
    ld c, $7c                                     ; $55ad: $0e $7c
    rst $00                                       ; $55af: $c7
    scf                                           ; $55b0: $37
    rst $00                                       ; $55b1: $c7
    adc [hl]                                      ; $55b2: $8e
    ld d, d                                       ; $55b3: $52
    call $9e99                                    ; $55b4: $cd $99 $9e
    rst $00                                       ; $55b7: $c7
    xor $8c                                       ; $55b8: $ee $8c
    jp c, Jump_000_352d                           ; $55ba: $da $2d $35

    and a                                         ; $55bd: $a7
    ld [hl], h                                    ; $55be: $74
    dec e                                         ; $55bf: $1d
    xor [hl]                                      ; $55c0: $ae
    ld d, [hl]                                    ; $55c1: $56
    ld d, a                                       ; $55c2: $57
    ld c, $57                                     ; $55c3: $0e $57
    or c                                          ; $55c5: $b1
    dec bc                                        ; $55c6: $0b
    inc l                                         ; $55c7: $2c
    sbc $8b                                       ; $55c8: $de $8b
    xor b                                         ; $55ca: $a8
    inc d                                         ; $55cb: $14
    inc a                                         ; $55cc: $3c
    call nz, Call_000_24e6                        ; $55cd: $c4 $e6 $24
    ld h, c                                       ; $55d0: $61
    nop                                           ; $55d1: $00
    sbc d                                         ; $55d2: $9a
    dec sp                                        ; $55d3: $3b
    ld [hl], l                                    ; $55d4: $75
    sbc $8c                                       ; $55d5: $de $8c
    and d                                         ; $55d7: $a2
    halt                                          ; $55d8: $76
    cp [hl]                                       ; $55d9: $be
    di                                            ; $55da: $f3
    ld [hl], l                                    ; $55db: $75
    ld l, b                                       ; $55dc: $68
    rra                                           ; $55dd: $1f
    ld l, d                                       ; $55de: $6a
    add $07                                       ; $55df: $c6 $07
    rst $10                                       ; $55e1: $d7
    cp e                                          ; $55e2: $bb
    add sp, -$69                                  ; $55e3: $e8 $97
    rst $30                                       ; $55e5: $f7
    and e                                         ; $55e6: $a3
    ldh a, [$7f]                                  ; $55e7: $f0 $7f
    ldh [rOCPS], a                                ; $55e9: $e0 $6a
    inc l                                         ; $55eb: $2c
    ld l, b                                       ; $55ec: $68
    xor [hl]                                      ; $55ed: $ae
    cp c                                          ; $55ee: $b9
    or b                                          ; $55ef: $b0
    pop de                                        ; $55f0: $d1
    cp b                                          ; $55f1: $b8
    add e                                         ; $55f2: $83
    ld c, h                                       ; $55f3: $4c
    jp z, Jump_000_24e6                           ; $55f4: $ca $e6 $24

    ld h, c                                       ; $55f7: $61
    nop                                           ; $55f8: $00
    sbc d                                         ; $55f9: $9a
    or e                                          ; $55fa: $b3
    db $f4                                        ; $55fb: $f4
    dec h                                         ; $55fc: $25
    dec [hl]                                      ; $55fd: $35
    ld sp, hl                                     ; $55fe: $f9
    and e                                         ; $55ff: $a3
    and $4e                                       ; $5600: $e6 $4e
    ld e, l                                       ; $5602: $5d
    cp $8f                                        ; $5603: $fe $8f
    inc a                                         ; $5605: $3c
    rst $38                                       ; $5606: $ff
    ccf                                           ; $5607: $3f
    call $e763                                    ; $5608: $cd $63 $e7
    db $eb                                        ; $560b: $eb
    ld d, b                                       ; $560c: $50
    ld a, h                                       ; $560d: $7c
    nop                                           ; $560e: $00
    cpl                                           ; $560f: $2f
    sbc d                                         ; $5610: $9a
    pop de                                        ; $5611: $d1
    ld d, b                                       ; $5612: $50
    ld l, $ac                                     ; $5613: $2e $ac
    or b                                          ; $5615: $b0
    ld [$9c83], sp                                ; $5616: $08 $83 $9c
    ret nc                                        ; $5619: $d0

    ld [hl], e                                    ; $561a: $73
    and e                                         ; $561b: $a3
    dec h                                         ; $561c: $25
    sub [hl]                                      ; $561d: $96
    daa                                           ; $561e: $27
    ld h, b                                       ; $561f: $60
    or b                                          ; $5620: $b0
    xor b                                         ; $5621: $a8
    pop af                                        ; $5622: $f1
    ld bc, $b52f                                  ; $5623: $01 $2f $b5
    pop de                                        ; $5626: $d1
    ld a, h                                       ; $5627: $7c
    rla                                           ; $5628: $17
    ld h, c                                       ; $5629: $61
    sub b                                         ; $562a: $90
    adc l                                         ; $562b: $8d
    ld [hl], a                                    ; $562c: $77
    ld e, c                                       ; $562d: $59
    ld e, $aa                                     ; $562e: $1e $aa
    ld b, l                                       ; $5630: $45
    ld h, [hl]                                    ; $5631: $66
    or h                                          ; $5632: $b4
    ld [hl], $27                                  ; $5633: $36 $27
    inc d                                         ; $5635: $14
    ld h, b                                       ; $5636: $60
    ld h, [hl]                                    ; $5637: $66
    ld c, c                                       ; $5638: $49
    add hl, bc                                    ; $5639: $09
    dec a                                         ; $563a: $3d
    scf                                           ; $563b: $37
    cp d                                          ; $563c: $ba
    ld e, b                                       ; $563d: $58
    ld h, h                                       ; $563e: $64
    ld b, [hl]                                    ; $563f: $46
    ld [hl], e                                    ; $5640: $73
    ld e, e                                       ; $5641: $5b
    dec a                                         ; $5642: $3d

Jump_04a_5643:
    ld e, c                                       ; $5643: $59
    ld b, a                                       ; $5644: $47
    dec l                                         ; $5645: $2d
    xor h                                         ; $5646: $ac
    jr nz, jr_04a_567d                            ; $5647: $20 $34

    ld [hl], a                                    ; $5649: $77

jr_04a_564a:
    ld [$cb12], a                                 ; $564a: $ea $12 $cb
    pop af                                        ; $564d: $f1
    ld bc, $e4d7                                  ; $564e: $01 $d7 $e4
    jp nz, $f30a                                  ; $5651: $c2 $0a $f3

    sbc l                                         ; $5654: $9d
    jp nc, $b875                                  ; $5655: $d2 $75 $b8

    ld a, [hl-]                                   ; $5658: $3a
    sbc $f3                                       ; $5659: $de $f3
    ccf                                           ; $565b: $3f
    jp c, $e287                                   ; $565c: $da $87 $e2

    inc bc                                        ; $565f: $03
    ld l, a                                       ; $5660: $6f
    sub l                                         ; $5661: $95
    db $fc                                        ; $5662: $fc
    daa                                           ; $5663: $27
    db $ec                                        ; $5664: $ec
    push bc                                       ; $5665: $c5
    ld d, b                                       ; $5666: $50
    ld l, $ac                                     ; $5667: $2e $ac
    jr nc, jr_04a_564a                            ; $5669: $30 $df

    add hl, hl                                    ; $566b: $29
    ld e, l                                       ; $566c: $5d
    add a                                         ; $566d: $87
    xor e                                         ; $566e: $ab
    rlca                                          ; $566f: $07
    ld a, [de]                                    ; $5670: $1a
    and c                                         ; $5671: $a1
    ld h, d                                       ; $5672: $62
    pop af                                        ; $5673: $f1
    cp e                                          ; $5674: $bb
    ld h, $17                                     ; $5675: $26 $17
    db $fd                                        ; $5677: $fd
    ld a, [c]                                     ; $5678: $f2
    jp nz, $f2f2                                  ; $5679: $c2 $f2 $f2

    add e                                         ; $567c: $83

jr_04a_567d:
    or l                                          ; $567d: $b5
    xor c                                         ; $567e: $a9
    ld b, $d1                                     ; $567f: $06 $d1
    rla                                           ; $5681: $17
    ld c, d                                       ; $5682: $4a
    ld c, l                                       ; $5683: $4d
    pop af                                        ; $5684: $f1
    rlca                                          ; $5685: $07
    xor a                                         ; $5686: $af
    jp $3343                                      ; $5687: $c3 $43 $33


    xor c                                         ; $568a: $a9
    ret c                                         ; $568b: $d8

    sub c                                         ; $568c: $91
    or d                                          ; $568d: $b2
    add hl, hl                                    ; $568e: $29
    ld a, [hl]                                    ; $568f: $7e
    cpl                                           ; $5690: $2f
    sbc d                                         ; $5691: $9a
    ld d, c                                       ; $5692: $51
    inc e                                         ; $5693: $1c
    rst $00                                       ; $5694: $c7
    dec sp                                        ; $5695: $3b
    ld [hl], a                                    ; $5696: $77
    ld h, a                                       ; $5697: $67
    inc c                                         ; $5698: $0c
    ld [hl], d                                    ; $5699: $72
    rst $20                                       ; $569a: $e7
    ccf                                           ; $569b: $3f
    ld b, b                                       ; $569c: $40
    rst $38                                       ; $569d: $ff
    or e                                          ; $569e: $b3
    ld hl, sp+$03                                 ; $569f: $f8 $03
    ld d, a                                       ; $56a1: $57
    ld a, e                                       ; $56a2: $7b
    xor $14                                       ; $56a3: $ee $14
    dec sp                                        ; $56a5: $3b
    ld d, d                                       ; $56a6: $52
    ld [hl], $77                                  ; $56a7: $36 $77
    add $20                                       ; $56a9: $c6 $20
    rlca                                          ; $56ab: $07

jr_04a_56ac:
    add sp, $7f                                   ; $56ac: $e8 $7f
    ld e, $68                                     ; $56ae: $1e $68

jr_04a_56b0:
    cp $82                                        ; $56b0: $fe $82
    db $fd                                        ; $56b2: $fd
    ld l, b                                       ; $56b3: $68
    ld b, c                                       ; $56b4: $41
    rst $30                                       ; $56b5: $f7
    inc hl                                        ; $56b6: $23
    or a                                          ; $56b7: $b7
    inc [hl]                                      ; $56b8: $34
    xor $94                                       ; $56b9: $ee $94
    ld [hl], $cb                                  ; $56bb: $36 $cb
    ld a, b                                       ; $56bd: $78
    rst $28                                       ; $56be: $ef
    ld a, l                                       ; $56bf: $7d
    ld h, a                                       ; $56c0: $67
    ld b, c                                       ; $56c1: $41
    ld d, a                                       ; $56c2: $57
    sbc d                                         ; $56c3: $9a
    rst $28                                       ; $56c4: $ef
    cp c                                          ; $56c5: $b9
    ld e, d                                       ; $56c6: $5a
    db $e4                                        ; $56c7: $e4
    cp e                                          ; $56c8: $bb
    ld [hl], e                                    ; $56c9: $73
    sbc c                                         ; $56ca: $99
    sbc e                                         ; $56cb: $9b
    adc e                                         ; $56cc: $8b
    jp c, $2749                                   ; $56cd: $da $49 $27

    or e                                          ; $56d0: $b3
    cp c                                          ; $56d1: $b9
    ret z                                         ; $56d2: $c8

    ld h, h                                       ; $56d3: $64
    ld [hl], e                                    ; $56d4: $73
    and [hl]                                      ; $56d5: $a6
    push de                                       ; $56d6: $d5
    jr nc, jr_04a_56b0                            ; $56d7: $30 $d7

    and $40                                       ; $56d9: $e6 $40
    ld c, a                                       ; $56db: $4f
    rst $38                                       ; $56dc: $ff
    rst $20                                       ; $56dd: $e7
    inc d                                         ; $56de: $14
    ld d, h                                       ; $56df: $54
    ld a, l                                       ; $56e0: $7d
    push hl                                       ; $56e1: $e5
    nop                                           ; $56e2: $00
    rst $08                                       ; $56e3: $cf
    db $e4                                        ; $56e4: $e4
    ld a, h                                       ; $56e5: $7c
    rla                                           ; $56e6: $17
    or l                                          ; $56e7: $b5
    adc d                                         ; $56e8: $8a
    sbc e                                         ; $56e9: $9b
    ld d, e                                       ; $56ea: $53
    ld l, h                                       ; $56eb: $6c
    sub [hl]                                      ; $56ec: $96
    ld c, e                                       ; $56ed: $4b
    inc sp                                        ; $56ee: $33
    push bc                                       ; $56ef: $c5
    dec bc                                        ; $56f0: $0b
    rl e                                          ; $56f1: $cb $13
    ld a, $f9                                     ; $56f3: $3e $f9
    ld a, b                                       ; $56f5: $78
    ld d, a                                       ; $56f6: $57
    sub c                                         ; $56f7: $91
    and a                                         ; $56f8: $a7
    ld sp, $bc90                                  ; $56f9: $31 $90 $bc
    xor b                                         ; $56fc: $a8
    and l                                         ; $56fd: $a5
    ld a, l                                       ; $56fe: $7d
    ld l, b                                       ; $56ff: $68
    ld l, l                                       ; $5700: $6d
    adc $35                                       ; $5701: $ce $35
    dec a                                         ; $5703: $3d
    ld l, a                                       ; $5704: $6f
    cp c                                          ; $5705: $b9
    rrca                                          ; $5706: $0f
    xor l                                         ; $5707: $ad
    call $a829                                    ; $5708: $cd $29 $a8
    ld a, [hl-]                                   ; $570b: $3a
    ld a, $00                                     ; $570c: $3e $00
    xor a                                         ; $570e: $af
    db $fd                                        ; $570f: $fd
    cp h                                          ; $5710: $bc
    ld e, b                                       ; $5711: $58
    or [hl]                                       ; $5712: $b6
    ld [c], a                                     ; $5713: $e2
    rrca                                          ; $5714: $0f
    ld l, a                                       ; $5715: $6f
    db $fd                                        ; $5716: $fd
    ld c, a                                       ; $5717: $4f
    ld h, a                                       ; $5718: $67
    add h                                         ; $5719: $84
    add a                                         ; $571a: $87
    adc h                                         ; $571b: $8c
    jr nz, jr_04a_56ac                            ; $571c: $20 $8e

    db $e3                                        ; $571e: $e3
    inc bc                                        ; $571f: $03
    rst $08                                       ; $5720: $cf
    db $e4                                        ; $5721: $e4
    jr nz, jr_04a_5777                            ; $5722: $20 $53

    ei                                            ; $5724: $fb
    ret nc                                        ; $5725: $d0

    call c, Call_04a_69ff                         ; $5726: $dc $ff $69
    cp [hl]                                       ; $5729: $be
    sub e                                         ; $572a: $93
    ccf                                           ; $572b: $3f
    ld sp, $e601                                  ; $572c: $31 $01 $e6
    push bc                                       ; $572f: $c5
    adc $1d                                       ; $5730: $ce $1d
    xor d                                         ; $5732: $aa
    add l                                         ; $5733: $85
    push hl                                       ; $5734: $e5
    ld b, l                                       ; $5735: $45
    ld b, $0f                                     ; $5736: $06 $0f
    add hl, de                                    ; $5738: $19
    add c                                         ; $5739: $81
    ld [c], a                                     ; $573a: $e2
    ld c, [hl]                                    ; $573b: $4e
    pop bc                                        ; $573c: $c1
    ld b, e                                       ; $573d: $43
    inc sp                                        ; $573e: $33
    xor c                                         ; $573f: $a9
    ret c                                         ; $5740: $d8

    sub c                                         ; $5741: $91
    pop af                                        ; $5742: $f1
    ld bc, $4697                                  ; $5743: $01 $97 $46
    inc h                                         ; $5746: $24
    and $62                                       ; $5747: $e6 $62
    ld [de], a                                    ; $5749: $12
    inc bc                                        ; $574a: $03

Call_04a_574b:
    add hl, sp                                    ; $574b: $39
    rlca                                          ; $574c: $07
    ld e, c                                       ; $574d: $59
    db $fc                                        ; $574e: $fc
    ld bc, $d4d7                                  ; $574f: $01 $d7 $d4
    ld e, [hl]                                    ; $5752: $5e
    ei                                            ; $5753: $fb
    cp c                                          ; $5754: $b9
    cpl                                           ; $5755: $2f
    ld l, a                                       ; $5756: $6f
    cp b                                          ; $5757: $b8
    ld [hl], d                                    ; $5758: $72
    nop                                           ; $5759: $00
    rst $10                                       ; $575a: $d7
    ld h, h                                       ; $575b: $64
    inc e                                         ; $575c: $1c
    rst $00                                       ; $575d: $c7
    ld b, e                                       ; $575e: $43
    add hl, sp                                    ; $575f: $39
    rst $18                                       ; $5760: $df
    sub h                                         ; $5761: $94

jr_04a_5762:
    di                                            ; $5762: $f3
    add $0b                                       ; $5763: $c6 $0b
    srl e                                         ; $5765: $cb $3b
    ld d, l                                       ; $5767: $55
    rrca                                          ; $5768: $0f
    db $fc                                        ; $5769: $fc
    ld a, [$1fc9]                                 ; $576a: $fa $c9 $1f
    pop af                                        ; $576d: $f1
    push bc                                       ; $576e: $c5
    ld [hl+], a                                   ; $576f: $22
    inc sp                                        ; $5770: $33
    ld e, d                                       ; $5771: $5a
    adc b                                         ; $5772: $88
    pop bc                                        ; $5773: $c1
    ld d, b                                       ; $5774: $50
    dec l                                         ; $5775: $2d
    ccf                                           ; $5776: $3f

jr_04a_5777:
    sbc b                                         ; $5777: $98
    ld [c], a                                     ; $5778: $e2
    sub $ab                                       ; $5779: $d6 $ab
    add hl, bc                                    ; $577b: $09
    dec a                                         ; $577c: $3d
    add hl, sp                                    ; $577d: $39
    adc d                                         ; $577e: $8a
    xor e                                         ; $577f: $ab
    rst $38                                       ; $5780: $ff
    ld d, a                                       ; $5781: $57
    pop af                                        ; $5782: $f1
    ld bc, $776f                                  ; $5783: $01 $6f $77
    jp nc, Jump_04a_6cc9                          ; $5786: $d2 $c9 $6c

    ld l, $9d                                     ; $5789: $2e $9d
    dec h                                         ; $578b: $25
    sub [hl]                                      ; $578c: $96
    rla                                           ; $578d: $17
    or l                                          ; $578e: $b5
    inc [hl]                                      ; $578f: $34
    push bc                                       ; $5790: $c5
    rra                                           ; $5791: $1f
    add d                                         ; $5792: $82
    sbc d                                         ; $5793: $9a
    ld l, e                                       ; $5794: $6b
    xor [hl]                                      ; $5795: $ae
    inc [hl]                                      ; $5796: $34
    ld d, h                                       ; $5797: $54
    dec bc                                        ; $5798: $0b
    or c                                          ; $5799: $b1
    or h                                          ; $579a: $b4
    call nz, Call_000_1ab2                        ; $579b: $c4 $b2 $1a
    xor b                                         ; $579e: $a8
    ld l, e                                       ; $579f: $6b
    ld b, [hl]                                    ; $57a0: $46
    ld a, [de]                                    ; $57a1: $1a
    inc bc                                        ; $57a2: $03
    xor c                                         ; $57a3: $a9
    ld d, $b5                                     ; $57a4: $16 $b5
    inc d                                         ; $57a6: $14
    rst $28                                       ; $57a7: $ef
    dec b                                         ; $57a8: $05
    db $e3                                        ; $57a9: $e3
    and $4e                                       ; $57aa: $e6 $4e
    sbc l                                         ; $57ac: $9d
    rst $28                                       ; $57ad: $ef
    call c, Call_04a_41af                         ; $57ae: $dc $af $41
    db $d3                                        ; $57b1: $d3
    ld [hl], a                                    ; $57b2: $77
    jp nc, $d2a2                                  ; $57b3: $d2 $a2 $d2

    inc b                                         ; $57b6: $04
    call z, Call_000_026c                         ; $57b7: $cc $6c $02
    or e                                          ; $57ba: $b3
    adc h                                         ; $57bb: $8c
    rrca                                          ; $57bc: $0f
    rst $08                                       ; $57bd: $cf
    inc [hl]                                      ; $57be: $34
    rst $00                                       ; $57bf: $c7
    db $f4                                        ; $57c0: $f4
    or l                                          ; $57c1: $b5
    ld hl, sp-$43                                 ; $57c2: $f8 $bd
    add h                                         ; $57c4: $84
    push hl                                       ; $57c5: $e5
    sbc l                                         ; $57c6: $9d
    ld e, d                                       ; $57c7: $5a

Jump_04a_57c8:
    ld [de], a                                    ; $57c8: $12
    ld a, a                                       ; $57c9: $7f
    nop                                           ; $57ca: $00
    ld l, a                                       ; $57cb: $6f
    or a                                          ; $57cc: $b7
    ld l, d                                       ; $57cd: $6a
    adc c                                         ; $57ce: $89
    push hl                                       ; $57cf: $e5
    add hl, bc                                    ; $57d0: $09
    sub [hl]                                      ; $57d1: $96
    jr nz, jr_04a_5762                            ; $57d2: $20 $8e

    db $e3                                        ; $57d4: $e3
    and c                                         ; $57d5: $a1
    inc e                                         ; $57d6: $1c
    xor b                                         ; $57d7: $a8
    cp $5f                                        ; $57d8: $fe $5f
    inc [hl]                                      ; $57da: $34
    ld l, a                                       ; $57db: $6f
    inc a                                         ; $57dc: $3c
    ld l, h                                       ; $57dd: $6c
    ld h, h                                       ; $57de: $64
    jp hl                                         ; $57df: $e9


    rla                                           ; $57e0: $17
    ld [hl], $9a                                  ; $57e1: $36 $9a
    jp hl                                         ; $57e3: $e9


    add hl, bc                                    ; $57e4: $09
    dec a                                         ; $57e5: $3d
    add hl, sp                                    ; $57e6: $39
    adc d                                         ; $57e7: $8a
    xor e                                         ; $57e8: $ab
    rst $38                                       ; $57e9: $ff
    ld d, a                                       ; $57ea: $57
    dec bc                                        ; $57eb: $0b
    ld e, e                                       ; $57ec: $5b
    ld de, $540f                                  ; $57ed: $11 $0f $54
    ld l, c                                       ; $57f0: $69
    inc bc                                        ; $57f1: $03
    call $9778                                    ; $57f2: $cd $78 $97
    jr jr_04a_5823                                ; $57f5: $18 $2c

    ld l, h                                       ; $57f7: $6c
    ld b, l                                       ; $57f8: $45
    cp h                                          ; $57f9: $bc
    ld [hl], $67                                  ; $57fa: $36 $67
    or d                                          ; $57fc: $b2
    ld a, [de]                                    ; $57fd: $1a
    ld b, c                                       ; $57fe: $41
    daa                                           ; $57ff: $27
    jr c, @-$64                                   ; $5800: $38 $9a

    rst $30                                       ; $5802: $f7
    and c                                         ; $5803: $a1
    sbc l                                         ; $5804: $9d
    ld sp, $85c8                                  ; $5805: $31 $c8 $85
    rst $38                                       ; $5808: $ff
    adc e                                         ; $5809: $8b
    ld a, h                                       ; $580a: $7c
    ld a, h                                       ; $580b: $7c
    nop                                           ; $580c: $00
    sub a                                         ; $580d: $97
    jr @+$2e                                      ; $580e: $18 $2c

    ld l, h                                       ; $5810: $6c
    ld b, l                                       ; $5811: $45
    cp h                                          ; $5812: $bc
    ld [hl], $17                                  ; $5813: $36 $17
    ld d, [hl]                                    ; $5815: $56
    ld d, a                                       ; $5816: $57
    ld hl, sp-$2b                                 ; $5817: $f8 $d5
    inc sp                                        ; $5819: $33
    ld e, c                                       ; $581a: $59
    adc l                                         ; $581b: $8d
    and b                                         ; $581c: $a0
    di                                            ; $581d: $f3
    sbc b                                         ; $581e: $98
    and b                                         ; $581f: $a0
    cp c                                          ; $5820: $b9
    rrca                                          ; $5821: $0f
    db $ed                                        ; $5822: $ed

jr_04a_5823:
    adc h                                         ; $5823: $8c
    ld b, c                                       ; $5824: $41
    ld l, $fc                                     ; $5825: $2e $fc
    ld e, a                                       ; $5827: $5f
    db $e4                                        ; $5828: $e4
    db $e3                                        ; $5829: $e3
    inc bc                                        ; $582a: $03
    rst $08                                       ; $582b: $cf
    inc [hl]                                      ; $582c: $34
    rst $30                                       ; $582d: $f7
    ld [hl], $02                                  ; $582e: $36 $02
    ret nc                                        ; $5830: $d0

    inc a                                         ; $5831: $3c
    ld d, l                                       ; $5832: $55
    ld a, e                                       ; $5833: $7b
    ld c, a                                       ; $5834: $4f
    sub [hl]                                      ; $5835: $96
    ld d, d                                       ; $5836: $52
    db $fc                                        ; $5837: $fc
    xor [hl]                                      ; $5838: $ae
    ret                                           ; $5839: $c9


    add hl, bc                                    ; $583a: $09
    call Call_000_1a09                            ; $583b: $cd $09 $1a
    add e                                         ; $583e: $83
    ld a, c                                       ; $583f: $79
    db $e3                                        ; $5840: $e3
    add l                                         ; $5841: $85
    jr jr_04a_5870                                ; $5842: $18 $2c

    or c                                          ; $5844: $b1
    inc a                                         ; $5845: $3c
    rst $18                                       ; $5846: $df
    ld c, c                                       ; $5847: $49
    ld c, e                                       ; $5848: $4b
    or l                                          ; $5849: $b5
    or b                                          ; $584a: $b0
    dec d                                         ; $584b: $15
    pop af                                        ; $584c: $f1
    ld b, b                                       ; $584d: $40
    dec h                                         ; $584e: $25
    dec d                                         ; $584f: $15
    inc [hl]                                      ; $5850: $34
    rst $30                                       ; $5851: $f7
    and e                                         ; $5852: $a3
    add l                                         ; $5853: $85
    adc l                                         ; $5854: $8d
    add $1d                                       ; $5855: $c6 $1d
    xor b                                         ; $5857: $a8
    ld b, b                                       ; $5858: $40
    ld c, $ca                                     ; $5859: $0e $ca
    and [hl]                                      ; $585b: $a6
    ld hl, sp+$03                                 ; $585c: $f8 $03
    ld l, a                                       ; $585e: $6f
    dec de                                        ; $585f: $1b
    rst $08                                       ; $5860: $cf
    rst $38                                       ; $5861: $ff
    and $4e                                       ; $5862: $e6 $4e
    ld e, l                                       ; $5864: $5d
    ld a, [hl-]                                   ; $5865: $3a
    ld d, a                                       ; $5866: $57
    ld c, $6f                                     ; $5867: $0e $6f
    ld a, l                                       ; $5869: $7d
    dec c                                         ; $586a: $0d
    sbc d                                         ; $586b: $9a
    ld l, d                                       ; $586c: $6a
    sub a                                         ; $586d: $97
    ld b, $08                                     ; $586e: $06 $08

jr_04a_5870:
    db $fd                                        ; $5870: $fd
    jp nz, $420a                                  ; $5871: $c2 $0a $42

    ld [hl], e                                    ; $5874: $73
    ld l, l                                       ; $5875: $6d
    adc $2c                                       ; $5876: $ce $2c
    reti                                          ; $5878: $d9


    db $f4                                        ; $5879: $f4
    ld [hl], h                                    ; $587a: $74
    ret                                           ; $587b: $c9


    xor b                                         ; $587c: $a8
    add hl, sp                                    ; $587d: $39
    rst $18                                       ; $587e: $df
    cp l                                          ; $587f: $bd
    adc $6d                                       ; $5880: $ce $6d
    ld c, [hl]                                    ; $5882: $4e
    xor b                                         ; $5883: $a8
    add d                                         ; $5884: $82
    add a                                         ; $5885: $87
    and l                                         ; $5886: $a5
    ret z                                         ; $5887: $c8

    rst $00                                       ; $5888: $c7
    ld a, e                                       ; $5889: $7b
    sbc l                                         ; $588a: $9d
    jp hl                                         ; $588b: $e9


    and a                                         ; $588c: $a7
    ld e, h                                       ; $588d: $5c
    ret c                                         ; $588e: $d8

    adc d                                         ; $588f: $8a
    ld a, b                                       ; $5890: $78
    xor [hl]                                      ; $5891: $ae
    add hl, hl                                    ; $5892: $29
    sbc [hl]                                      ; $5893: $9e
    rst $00                                       ; $5894: $c7
    xor $aa                                       ; $5895: $ee $aa
    add e                                         ; $5897: $83
    ld l, [hl]                                    ; $5898: $6e
    or l                                          ; $5899: $b5
    ld d, d                                       ; $589a: $52
    ld c, h                                       ; $589b: $4c
    jr z, jr_04a_58a5                             ; $589c: $28 $07

    ld a, [bc]                                    ; $589e: $0a

Jump_04a_589f:
    ld l, c                                       ; $589f: $69
    ld c, e                                       ; $58a0: $4b
    cp [hl]                                       ; $58a1: $be
    ret c                                         ; $58a2: $d8

    ld d, e                                       ; $58a3: $53
    sub [hl]                                      ; $58a4: $96

jr_04a_58a5:
    adc c                                         ; $58a5: $89
    add hl, bc                                    ; $58a6: $09
    ld d, $fd                                     ; $58a7: $16 $fd
    ld a, [c]                                     ; $58a9: $f2
    inc a                                         ; $58aa: $3c
    halt                                          ; $58ab: $76
    ld c, d                                       ; $58ac: $4a
    rst $10                                       ; $58ad: $d7
    pop hl                                        ; $58ae: $e1
    ld l, d                                       ; $58af: $6a
    or l                                          ; $58b0: $b5
    or b                                          ; $58b1: $b0
    add d                                         ; $58b2: $82
    ret nc                                        ; $58b3: $d0

    sbc h                                         ; $58b4: $9c
    ld d, b                                       ; $58b5: $50
    cp $6e                                        ; $58b6: $fe $6e
    ret                                           ; $58b8: $c9


    xor a                                         ; $58b9: $af
    cp c                                          ; $58ba: $b9
    daa                                           ; $58bb: $27
    db $d3                                        ; $58bc: $d3
    sub a                                         ; $58bd: $97
    inc [hl]                                      ; $58be: $34
    ld h, $58                                     ; $58bf: $26 $58

jr_04a_58c1:
    ret c                                         ; $58c1: $d8

    adc d                                         ; $58c2: $8a
    ld a, b                                       ; $58c3: $78
    cp [hl]                                       ; $58c4: $be
    ld d, e                                       ; $58c5: $53
    ldh a, [$d0]                                  ; $58c6: $f0 $d0
    ld c, h                                       ; $58c8: $4c
    ld a, [hl+]                                   ; $58c9: $2a
    ld l, [hl]                                    ; $58ca: $6e
    ld [hl], $27                                  ; $58cb: $36 $27
    inc [hl]                                      ; $58cd: $34
    xor h                                         ; $58ce: $ac
    ld d, h                                       ; $58cf: $54
    inc e                                         ; $58d0: $1c
    rst $28                                       ; $58d1: $ef
    xor d                                         ; $58d2: $aa
    and e                                         ; $58d3: $a3
    and $91                                       ; $58d4: $e6 $91
    add a                                         ; $58d6: $87
    ld l, d                                       ; $58d7: $6a
    xor a                                         ; $58d8: $af
    ld h, a                                       ; $58d9: $67
    dec bc                                        ; $58da: $0b
    xor c                                         ; $58db: $a9
    add hl, bc                                    ; $58dc: $09
    dec a                                         ; $58dd: $3d
    sbc a                                         ; $58de: $9f
    ld c, d                                       ; $58df: $4a
    sbc b                                         ; $58e0: $98
    jr nz, jr_04a_58c1                            ; $58e1: $20 $de

    dec [hl]                                      ; $58e3: $35
    add hl, sp                                    ; $58e4: $39
    rst $18                                       ; $58e5: $df
    sub h                                         ; $58e6: $94
    di                                            ; $58e7: $f3
    add $3b                                       ; $58e8: $c6 $3b
    ld [hl], l                                    ; $58ea: $75
    ld l, l                                       ; $58eb: $6d
    adc [hl]                                      ; $58ec: $8e
    cp a                                          ; $58ed: $bf
    ld e, e                                       ; $58ee: $5b
    ld a, [c]                                     ; $58ef: $f2
    ld h, h                                       ; $58f0: $64
    add hl, hl                                    ; $58f1: $29
    rla                                           ; $58f2: $17
    db $fd                                        ; $58f3: $fd
    ld [hl], d                                    ; $58f4: $72
    ld [hl], e                                    ; $58f5: $73
    ld d, c                                       ; $58f6: $51
    inc de                                        ; $58f7: $13
    inc [hl]                                      ; $58f8: $34
    db $e3                                        ; $58f9: $e3
    jr c, jr_04a_593a                             ; $58fa: $38 $3e

    nop                                           ; $58fc: $00
    ld l, a                                       ; $58fd: $6f
    dec de                                        ; $58fe: $1b
    cpl                                           ; $58ff: $2f
    xor h                                         ; $5900: $ac
    jr nz, jr_04a_5937                            ; $5901: $20 $34

    ld [hl], a                                    ; $5903: $77
    ld [$19bc], a                                 ; $5904: $ea $bc $19
    dec l                                         ; $5907: $2d
    cp a                                          ; $5908: $bf
    inc sp                                        ; $5909: $33
    or e                                          ; $590a: $b3
    cp h                                          ; $590b: $bc
    ld [hl], d                                    ; $590c: $72
    nop                                           ; $590d: $00
    rst $08                                       ; $590e: $cf
    or l                                          ; $590f: $b5
    add hl, sp                                    ; $5910: $39
    db $f4                                        ; $5911: $f4
    ld l, l                                       ; $5912: $6d
    cp h                                          ; $5913: $bc
    rla                                           ; $5914: $17
    ld d, c                                       ; $5915: $51
    add hl, hl                                    ; $5916: $29
    ld a, b                                       ; $5917: $78
    adc b                                         ; $5918: $88
    call Call_04a_5509                            ; $5919: $cd $09 $55
    ldh a, [$b0]                                  ; $591c: $f0 $b0
    inc d                                         ; $591e: $14
    pop af                                        ; $591f: $f1
    ld a, h                                       ; $5920: $7c
    rst $00                                       ; $5921: $c7
    rst $18                                       ; $5922: $df
    dec l                                         ; $5923: $2d
    ld a, c                                       ; $5924: $79
    or d                                          ; $5925: $b2
    sub h                                         ; $5926: $94
    db $e3                                        ; $5927: $e3
    add d                                         ; $5928: $82
    and $5c                                       ; $5929: $e6 $5c
    rst $00                                       ; $592b: $c7
    and c                                         ; $592c: $a1
    ld a, b                                       ; $592d: $78
    ld l, a                                       ; $592e: $6f
    ld [hl], a                                    ; $592f: $77
    pop de                                        ; $5930: $d1
    cpl                                           ; $5931: $2f
    scf                                           ; $5932: $37
    rla                                           ; $5933: $17
    sub [hl]                                      ; $5934: $96
    rla                                           ; $5935: $17
    sbc c                                         ; $5936: $99

jr_04a_5937:
    pop de                                        ; $5937: $d1

jr_04a_5938:
    ld b, b                                       ; $5938: $40
    ld c, a                                       ; $5939: $4f

jr_04a_593a:
    rst $38                                       ; $593a: $ff
    rst $20                                       ; $593b: $e7
    jr nz, jr_04a_5938                            ; $593c: $20 $fa

    ld b, d                                       ; $593e: $42
    xor c                                         ; $593f: $a9
    add hl, de                                    ; $5940: $19
    rra                                           ; $5941: $1f
    rst $08                                       ; $5942: $cf
    ret nc                                        ; $5943: $d0

    ld d, b                                       ; $5944: $50
    dec l                                         ; $5945: $2d
    rlc e                                         ; $5946: $cb $03
    call Call_000_305f                            ; $5948: $cd $5f $30
    cp $6e                                        ; $594b: $fe $6e
    ret                                           ; $594d: $c9


    sub e                                         ; $594e: $93
    and l                                         ; $594f: $a5
    sbc h                                         ; $5950: $9c
    ei                                            ; $5951: $fb
    ccf                                           ; $5952: $3f
    db $ed                                        ; $5953: $ed
    add [hl]                                      ; $5954: $86
    dec de                                        ; $5955: $1b
    ld [hl], d                                    ; $5956: $72
    ld d, b                                       ; $5957: $50
    ld c, c                                       ; $5958: $49
    db $fd                                        ; $5959: $fd
    sbc a                                         ; $595a: $9f
    pop af                                        ; $595b: $f1
    sbc [hl]                                      ; $595c: $9e
    or e                                          ; $595d: $b3
    dec b                                         ; $595e: $05
    jr jr_04a_598d                                ; $595f: $18 $2c

    ld [hl-], a                                   ; $5961: $32
    and e                                         ; $5962: $a3
    ld a, b                                       ; $5963: $78
    rst $10                                       ; $5964: $d7
    db $e4                                        ; $5965: $e4
    adc $9f                                       ; $5966: $ce $9f
    ret nz                                        ; $5968: $c0

    call c, Call_04a_69ff                         ; $5969: $dc $ff $69
    xor a                                         ; $596c: $af
    db $fd                                        ; $596d: $fd
    ld e, h                                       ; $596e: $5c
    ld [hl], e                                    ; $596f: $73
    ret nz                                        ; $5970: $c0

    and $2d                                       ; $5971: $e6 $2d
    rla                                           ; $5973: $17
    ld a, [hl-]                                   ; $5974: $3a
    ld a, [de]                                    ; $5975: $1a
    ld e, d                                       ; $5976: $5a
    ld l, b                                       ; $5977: $68
    cp d                                          ; $5978: $ba
    add hl, de                                    ; $5979: $19
    rst $28                                       ; $597a: $ef
    xor l                                         ; $597b: $ad
    ld d, [hl]                                    ; $597c: $56
    rrca                                          ; $597d: $0f
    ld d, h                                       ; $597e: $54
    dec sp                                        ; $597f: $3b
    ld a, [c]                                     ; $5980: $f2
    ld h, d                                       ; $5981: $62
    sub a                                         ; $5982: $97
    ld b, [hl]                                    ; $5983: $46
    inc h                                         ; $5984: $24
    ld h, $8e                                     ; $5985: $26 $8e
    db $e3                                        ; $5987: $e3
    dec b                                         ; $5988: $05
    sbc l                                         ; $5989: $9d
    ret nc                                        ; $598a: $d0

    db $e4                                        ; $598b: $e4
    or l                                          ; $598c: $b5

jr_04a_598d:
    add hl, sp                                    ; $598d: $39
    ld b, b                                       ; $598e: $40
    rst $38                                       ; $598f: $ff
    di                                            ; $5990: $f3
    ld hl, sp-$45                                 ; $5991: $f8 $bb
    ld c, l                                       ; $5993: $4d
    inc sp                                        ; $5994: $33
    adc d                                         ; $5995: $8a
    rrca                                          ; $5996: $0f
    ld d, a                                       ; $5997: $57
    adc l                                         ; $5998: $8d
    add a                                         ; $5999: $87
    ld l, d                                       ; $599a: $6a
    ld de, $ed2a                                  ; $599b: $11 $2a $ed
    ld c, b                                       ; $599e: $48
    adc [hl]                                      ; $599f: $8e
    or a                                          ; $59a0: $b7
    sub a                                         ; $59a1: $97
    jp Jump_04a_7b65                              ; $59a2: $c3 $65 $7b


    or c                                          ; $59a5: $b1
    ld [hl], h                                    ; $59a6: $74
    ld d, $fd                                     ; $59a7: $16 $fd
    ld a, [c]                                     ; $59a9: $f2
    ld d, b                                       ; $59aa: $50
    xor $bb                                       ; $59ab: $ee $bb
    and l                                         ; $59ad: $a5
    call nz, $a73a                                ; $59ae: $c4 $3a $a7
    add hl, bc                                    ; $59b1: $09
    dec b                                         ; $59b2: $05
    sbc b                                         ; $59b3: $98
    reti                                          ; $59b4: $d9


    inc d                                         ; $59b5: $14
    ld a, a                                       ; $59b6: $7f
    nop                                           ; $59b7: $00
    rst $10                                       ; $59b8: $d7
    db $e4                                        ; $59b9: $e4
    ld b, d                                       ; $59ba: $42
    di                                            ; $59bb: $f3
    inc bc                                        ; $59bc: $03
    dec c                                         ; $59bd: $0d
    rst $38                                       ; $59be: $ff
    add a                                         ; $59bf: $87
    ld a, b                                       ; $59c0: $78
    sbc $78                                       ; $59c1: $de $78
    ld b, c                                       ; $59c3: $41
    ld [hl], a                                    ; $59c4: $77
    cp $ce                                        ; $59c5: $fe $ce
    db $e4                                        ; $59c7: $e4
    adc a                                         ; $59c8: $8f
    sbc d                                         ; $59c9: $9a
    rla                                           ; $59ca: $17
    ld a, e                                       ; $59cb: $7b
    push hl                                       ; $59cc: $e5
    inc sp                                        ; $59cd: $33
    sub a                                         ; $59ce: $97
    ld [c], a                                     ; $59cf: $e2
    inc bc                                        ; $59d0: $03
    rst $10                                       ; $59d1: $d7
    db $e4                                        ; $59d2: $e4
    cp h                                          ; $59d3: $bc
    pop bc                                        ; $59d4: $c1
    ld b, e                                       ; $59d5: $43
    sbc [hl]                                      ; $59d6: $9e
    scf                                           ; $59d7: $37
    ld e, $ca                                     ; $59d8: $1e $ca
    cp l                                          ; $59da: $bd
    sbc [hl]                                      ; $59db: $9e
    dec l                                         ; $59dc: $2d
    or h                                          ; $59dd: $b4
    db $10                                        ; $59de: $10
    ld c, e                                       ; $59df: $4b
    dec sp                                        ; $59e0: $3b
    ld a, a                                       ; $59e1: $7f
    ld h, a                                       ; $59e2: $67
    ld l, $a6                                     ; $59e3: $2e $a6
    ld l, a                                       ; $59e5: $6f
    add $bb                                       ; $59e6: $c6 $bb
    call nz, $1a60                                ; $59e8: $c4 $60 $1a
    inc bc                                        ; $59eb: $03
    ret                                           ; $59ec: $c9


    adc e                                         ; $59ed: $8b
    jr nc, jr_04a_5a08                            ; $59ee: $30 $18

    ld [hl], a                                    ; $59f0: $77
    and c                                         ; $59f1: $a1
    ld [hl], c                                    ; $59f2: $71
    inc sp                                        ; $59f3: $33
    ld a, $00                                     ; $59f4: $3e $00
    rst $08                                       ; $59f6: $cf
    db $eb                                        ; $59f7: $eb
    rrca                                          ; $59f8: $0f
    ld [hl], c                                    ; $59f9: $71
    cp h                                          ; $59fa: $bc
    ld c, e                                       ; $59fb: $4b
    inc c                                         ; $59fc: $0c
    ld d, $9a                                     ; $59fd: $16 $9a
    ld sp, $4177                                  ; $59ff: $31 $77 $41
    rst $20                                       ; $5a02: $e7
    sbc d                                         ; $5a03: $9a
    cpl                                           ; $5a04: $2f
    db $ed                                        ; $5a05: $ed
    ld a, a                                       ; $5a06: $7f
    add hl, sp                                    ; $5a07: $39

jr_04a_5a08:
    cp $cd                                        ; $5a08: $fe $cd
    sbc l                                         ; $5a0a: $9d
    dec sp                                        ; $5a0b: $3b
    ld h, l                                       ; $5a0c: $65
    ld d, c                                       ; $5a0d: $51
    ld [hl], e                                    ; $5a0e: $73
    rra                                           ; $5a0f: $1f
    jp c, $a77b                                   ; $5a10: $da $7b $a7

    ld h, d                                       ; $5a13: $62
    ld a, [hl+]                                   ; $5a14: $2a
    ld l, $e6                                     ; $5a15: $2e $e6
    adc $c6                                       ; $5a17: $ce $c6
    call $00f8                                    ; $5a19: $cd $f8 $00

jr_04a_5a1c:
    rst $10                                       ; $5a1c: $d7
    db $e4                                        ; $5a1d: $e4
    jp nz, Jump_04a_730a                          ; $5a1e: $c2 $0a $73

    sub $dc                                       ; $5a21: $d6 $dc
    db $eb                                        ; $5a23: $eb
    reti                                          ; $5a24: $d9


    ld b, d                                       ; $5a25: $42
    ld d, e                                       ; $5a26: $53
    ld d, $35                                     ; $5a27: $16 $35
    rlca                                          ; $5a29: $07
    ld a, d                                       ; $5a2a: $7a
    add $66                                       ; $5a2b: $c6 $66
    cp h                                          ; $5a2d: $bc
    daa                                           ; $5a2e: $27
    or l                                          ; $5a2f: $b5
    ld e, d                                       ; $5a30: $5a
    adc b                                         ; $5a31: $88
    pop bc                                        ; $5a32: $c1
    jp nz, $04f2                                  ; $5a33: $c2 $f2 $04

    adc l                                         ; $5a36: $8d
    add c                                         ; $5a37: $81
    inc d                                         ; $5a38: $14
    call z, $8968                                 ; $5a39: $cc $68 $89
    push hl                                       ; $5a3c: $e5
    ld a, l                                       ; $5a3d: $7d
    ld l, b                                       ; $5a3e: $68
    ld de, $7306                                  ; $5a3f: $11 $06 $73
    rst $38                                       ; $5a42: $ff
    and a                                         ; $5a43: $a7
    inc sp                                        ; $5a44: $33
    ld [hl], $17                                  ; $5a45: $36 $17
    sbc d                                         ; $5a47: $9a
    adc a                                         ; $5a48: $8f
    db $e3                                        ; $5a49: $e3
    ld a, b                                       ; $5a4a: $78
    ld h, a                                       ; $5a4b: $67
    db $e3                                        ; $5a4c: $e3
    add l                                         ; $5a4d: $85

Call_04a_5a4e:
    jr jr_04a_5a1c                                ; $5a4e: $18 $cc

    ldh [rNR42], a                                ; $5a50: $e0 $21
    sub a                                         ; $5a52: $97
    and $cc                                       ; $5a53: $e6 $cc
    inc l                                         ; $5a55: $2c
    push bc                                       ; $5a56: $c5
    rra                                           ; $5a57: $1f
    rst $10                                       ; $5a58: $d7
    jp nc, $bc97                                  ; $5a59: $d2 $97 $bc

    sbc c                                         ; $5a5c: $99
    adc a                                         ; $5a5d: $8f
    ld [hl], a                                    ; $5a5e: $77
    db $dd                                        ; $5a5f: $dd
    and d                                         ; $5a60: $a2
    xor b                                         ; $5a61: $a8
    inc [hl]                                      ; $5a62: $34
    ld l, a                                       ; $5a63: $6f
    cp h                                          ; $5a64: $bc

jr_04a_5a65:
    ld d, a                                       ; $5a65: $57
    or h                                          ; $5a66: $b4
    add e                                         ; $5a67: $83
    ld a, [hl+]                                   ; $5a68: $2a
    add sp, $12                                   ; $5a69: $e8 $12
    srl e                                         ; $5a6b: $cb $3b
    ld h, e                                       ; $5a6d: $63
    sub b                                         ; $5a6e: $90
    inc de                                        ; $5a6f: $13
    jp c, $d85c                                   ; $5a70: $da $5c $d8

    adc d                                         ; $5a73: $8a
    ld a, b                                       ; $5a74: $78
    ld h, $02                                     ; $5a75: $26 $02
    dec d                                         ; $5a77: $15

jr_04a_5a78:
    jp z, Jump_04a_79cd                           ; $5a78: $ca $cd $79

    db $ec                                        ; $5a7b: $ec
    ld e, d                                       ; $5a7c: $5a
    ld d, d                                       ; $5a7d: $52
    call c, $96c9                                 ; $5a7e: $dc $c9 $96
    and $8d                                       ; $5a81: $e6 $8d
    rst $30                                       ; $5a83: $f7
    ld a, d                                       ; $5a84: $7a
    or [hl]                                       ; $5a85: $b6
    ret nc                                        ; $5a86: $d0

    ld [hl+], a                                   ; $5a87: $22
    inc c                                         ; $5a88: $0c
    add $05                                       ; $5a89: $c6 $05

jr_04a_5a8b:
    call $ab10                                    ; $5a8b: $cd $10 $ab
    ld a, l                                       ; $5a8e: $7d
    ld a, h                                       ; $5a8f: $7c
    nop                                           ; $5a90: $00
    cpl                                           ; $5a91: $2f
    sbc d                                         ; $5a92: $9a
    pop de                                        ; $5a93: $d1
    ld c, h                                       ; $5a94: $4c
    xor e                                         ; $5a95: $ab
    add l                                         ; $5a96: $85
    jr jr_04a_5a65                                ; $5a97: $18 $cc

    ld e, c                                       ; $5a99: $59
    ld h, d                                       ; $5a9a: $62
    ld a, c                                       ; $5a9b: $79
    ld b, d                                       ; $5a9c: $42
    dec a                                         ; $5a9d: $3d
    dec d                                         ; $5a9e: $15
    add c                                         ; $5a9f: $81
    rst $28                                       ; $5aa0: $ef
    push bc                                       ; $5aa1: $c5
    ld c, [hl]                                    ; $5aa2: $4e
    ret c                                         ; $5aa3: $d8

    ld a, c                                       ; $5aa4: $79
    res 3, l                                      ; $5aa5: $cb $9d
    xor d                                         ; $5aa7: $aa
    xor a                                         ; $5aa8: $af
    inc e                                         ; $5aa9: $1c
    ld d, a                                       ; $5aaa: $57
    adc l                                         ; $5aab: $8d
    ld [hl], a                                    ; $5aac: $77
    ld [hl-], a                                   ; $5aad: $32
    or l                                          ; $5aae: $b5
    ld [$5c83], sp                                ; $5aaf: $08 $83 $5c
    call nc, Call_000_2e2a                        ; $5ab2: $d4 $2a $2e
    push bc                                       ; $5ab5: $c5
    ld a, e                                       ; $5ab6: $7b
    db $fd                                        ; $5ab7: $fd
    ld b, a                                       ; $5ab8: $47
    ld l, d                                       ; $5ab9: $6a
    pop de                                        ; $5aba: $d1
    cpl                                           ; $5abb: $2f
    cpl                                           ; $5abc: $2f
    call nz, $1160                                ; $5abd: $c4 $60 $11
    ld b, $0b                                     ; $5ac0: $06 $0b
    adc l                                         ; $5ac2: $8d
    db $fc                                        ; $5ac3: $fc
    call z, Call_000_3212                         ; $5ac4: $cc $12 $32
    add hl, hl                                    ; $5ac7: $29
    sbc e                                         ; $5ac8: $9b
    pop af                                        ; $5ac9: $f1
    ld l, $31                                     ; $5aca: $2e $31
    jr jr_04a_5a78                                ; $5acc: $18 $aa

    sbc l                                         ; $5ace: $9d
    rst $38                                       ; $5acf: $ff
    inc d                                         ; $5ad0: $14
    sub a                                         ; $5ad1: $97
    db $e4                                        ; $5ad2: $e4
    sbc d                                         ; $5ad3: $9a
    ld b, e                                       ; $5ad4: $43
    add hl, sp                                    ; $5ad5: $39
    and c                                         ; $5ad6: $a1
    cp c                                          ; $5ad7: $b9
    di                                            ; $5ad8: $f3
    ret                                           ; $5ad9: $c9


    ld h, h                                       ; $5ada: $64
    inc e                                         ; $5adb: $1c
    rst $00                                       ; $5adc: $c7
    rlca                                          ; $5add: $07
    sub a                                         ; $5ade: $97
    jr @-$12                                      ; $5adf: $18 $ec

    ld h, h                                       ; $5ae1: $64
    ld l, d                                       ; $5ae2: $6a
    ld hl, $2e96                                  ; $5ae3: $21 $96 $2e
    or $a1                                        ; $5ae6: $f6 $a1
    cp l                                          ; $5ae8: $bd
    ld [hl], a                                    ; $5ae9: $77
    ld a, [hl+]                                   ; $5aea: $2a
    and [hl]                                      ; $5aeb: $a6

jr_04a_5aec:
    ld [c], a                                     ; $5aec: $e2
    ld h, d                                       ; $5aed: $62
    ld e, [hl]                                    ; $5aee: $5e
    ld c, h                                       ; $5aef: $4c
    ret nz                                        ; $5af0: $c0

    ld h, b                                       ; $5af1: $60
    adc $15                                       ; $5af2: $ce $15
    pop af                                        ; $5af4: $f1
    rlca                                          ; $5af5: $07
    sub a                                         ; $5af6: $97
    jr jr_04a_5b05                                ; $5af7: $18 $0c

    push de                                       ; $5af9: $d5
    ld c, h                                       ; $5afa: $4c
    inc sp                                        ; $5afb: $33
    ld b, $7e                                     ; $5afc: $06 $7e
    ld [bc], a                                    ; $5afe: $02
    ld b, $8b                                     ; $5aff: $06 $8b
    jr nc, jr_04a_5a8b                            ; $5b01: $30 $88

    ld [hl], a                                    ; $5b03: $77
    adc c                                         ; $5b04: $89

jr_04a_5b05:
    and l                                         ; $5b05: $a5
    adc e                                         ; $5b06: $8b
    ld sp, hl                                     ; $5b07: $f9
    sbc [hl]                                      ; $5b08: $9e
    cp e                                          ; $5b09: $bb
    inc sp                                        ; $5b0a: $33
    ld b, $39                                     ; $5b0b: $06 $39
    rst $30                                       ; $5b0d: $f7
    ld a, a                                       ; $5b0e: $7f
    ld e, d                                       ; $5b0f: $5a
    ldh a, [$9d]                                  ; $5b10: $f0 $9d
    ld hl, sp+$00                                 ; $5b12: $f8 $00
    rst $10                                       ; $5b14: $d7
    dec sp                                        ; $5b15: $3b
    and c                                         ; $5b16: $a1
    ret                                           ; $5b17: $c9


    ld l, e                                       ; $5b18: $6b
    ld [hl], e                                    ; $5b19: $73
    adc c                                         ; $5b1a: $89
    ld [hl], l                                    ; $5b1b: $75
    ld c, [hl]                                    ; $5b1c: $4e
    ld a, [bc]                                    ; $5b1d: $0a
    ld h, b                                       ; $5b1e: $60
    add hl, bc                                    ; $5b1f: $09
    pop bc                                        ; $5b20: $c1
    sbc [hl]                                      ; $5b21: $9e

jr_04a_5b22:
    inc [hl]                                      ; $5b22: $34
    db $10                                        ; $5b23: $10
    db $f4                                        ; $5b24: $f4
    ld h, d                                       ; $5b25: $62
    xor a                                         ; $5b26: $af
    ld a, h                                       ; $5b27: $7c
    and $52                                       ; $5b28: $e6 $52
    cp h                                          ; $5b2a: $bc
    ld l, e                                       ; $5b2b: $6b
    ld [hl], d                                    ; $5b2c: $72
    ld d, h                                       ; $5b2d: $54
    reti                                          ; $5b2e: $d9


    ld e, h                                       ; $5b2f: $5c
    ld d, h                                       ; $5b30: $54
    ld e, [hl]                                    ; $5b31: $5e
    ldh a, [$9d]                                  ; $5b32: $f0 $9d
    sbc c                                         ; $5b34: $99
    ld l, b                                       ; $5b35: $68
    ld l, c                                       ; $5b36: $69
    sbc $78                                       ; $5b37: $de $78
    jr z, jr_04a_5b22                             ; $5b39: $28 $e7

    ld a, e                                       ; $5b3b: $7b
    xor $30                                       ; $5b3c: $ee $30
    cp c                                          ; $5b3e: $b9
    ld d, h                                       ; $5b3f: $54
    and l                                         ; $5b40: $a5
    inc l                                         ; $5b41: $2c
    cp c                                          ; $5b42: $b9
    ld d, e                                       ; $5b43: $53
    db $10                                        ; $5b44: $10
    ld d, $54                                     ; $5b45: $16 $54
    cpl                                           ; $5b47: $2f
    xor h                                         ; $5b48: $ac
    jr nc, jr_04a_5aec                            ; $5b49: $30 $a1

    or d                                          ; $5b4b: $b2
    or d                                          ; $5b4c: $b2
    add hl, de                                    ; $5b4d: $19
    rst $28                                       ; $5b4e: $ef
    xor l                                         ; $5b4f: $ad
    xor a                                         ; $5b50: $af
    ld b, c                                       ; $5b51: $41
    ld d, e                                       ; $5b52: $53
    dec l                                         ; $5b53: $2d
    jp nz, $a860                                  ; $5b54: $c2 $60 $a8

    ld d, $96                                     ; $5b57: $16 $96
    rst $20                                       ; $5b59: $e7
    dec sp                                        ; $5b5a: $3b
    and l                                         ; $5b5b: $a5
    db $eb                                        ; $5b5c: $eb
    ld [hl], b                                    ; $5b5d: $70
    push af                                       ; $5b5e: $f5
    ld hl, sp-$0d                                 ; $5b5f: $f8 $f3
    ld a, h                                       ; $5b61: $7c
    rst $30                                       ; $5b62: $f7
    ld a, [hl-]                                   ; $5b63: $3a
    or a                                          ; $5b64: $b7
    add hl, de                                    ; $5b65: $19
    rra                                           ; $5b66: $1f
    rst $10                                       ; $5b67: $d7
    db $e4                                        ; $5b68: $e4
    adc $d8                                       ; $5b69: $ce $d8
    ld sp, hl                                     ; $5b6b: $f9
    xor $75                                       ; $5b6c: $ee $75
    ld l, [hl]                                    ; $5b6e: $6e
    di                                            ; $5b6f: $f3
    ld h, d                                       ; $5b70: $62
    sub c                                         ; $5b71: $91
    add hl, de                                    ; $5b72: $19
    dec c                                         ; $5b73: $0d
    push hl                                       ; $5b74: $e5
    add h                                         ; $5b75: $84
    ld [bc], a                                    ; $5b76: $02
    jp nz, $5a00                                  ; $5b77: $c2 $00 $5a

    ld e, b                                       ; $5b7a: $58
    ld e, [hl]                                    ; $5b7b: $5e
    ld h, d                                       ; $5b7c: $62
    add hl, sp                                    ; $5b7d: $39
    sbc $7b                                       ; $5b7e: $de $7b
    ret z                                         ; $5b80: $c8

    dec bc                                        ; $5b81: $0b
    ld sp, $e618                                  ; $5b82: $31 $18 $e6
    ld a, h                                       ; $5b85: $7c
    and a                                         ; $5b86: $a7
    jr nz, jr_04a_5bb5                            ; $5b87: $20 $2c

    xor b                                         ; $5b89: $a8
    cp [hl]                                       ; $5b8a: $be
    or d                                          ; $5b8b: $b2
    set 3, a                                      ; $5b8c: $cb $df
    sbc l                                         ; $5b8e: $9d
    ld c, d                                       ; $5b8f: $4a
    sub d                                         ; $5b90: $92
    rst $20                                       ; $5b91: $e7
    sub c                                         ; $5b92: $91
    xor a                                         ; $5b93: $af
    db $ec                                        ; $5b94: $ec
    push bc                                       ; $5b95: $c5
    ld d, [hl]                                    ; $5b96: $56
    ld [hl], c                                    ; $5b97: $71
    jp hl                                         ; $5b98: $e9


    ld h, d                                       ; $5b99: $62
    ld h, c                                       ; $5b9a: $61
    dec [hl]                                      ; $5b9b: $35
    or h                                          ; $5b9c: $b4
    xor b                                         ; $5b9d: $a8
    ld [c], a                                     ; $5b9e: $e2
    rrca                                          ; $5b9f: $0f
    rst $08                                       ; $5ba0: $cf
    dec a                                         ; $5ba1: $3d
    di                                            ; $5ba2: $f3
    call nc, Call_04a_6f6b                        ; $5ba3: $d4 $6b $6f
    ld e, [hl]                                    ; $5ba6: $5e
    ld a, e                                       ; $5ba7: $7b
    ld a, [hl]                                    ; $5ba8: $7e
    ld d, a                                       ; $5ba9: $57
    sbc a                                         ; $5baa: $9f
    reti                                          ; $5bab: $d9


    push af                                       ; $5bac: $f5
    sub a                                         ; $5bad: $97
    ld e, a                                       ; $5bae: $5f
    ld a, d                                       ; $5baf: $7a
    xor $99                                       ; $5bb0: $ee $99
    sub a                                         ; $5bb2: $97
    ld [c], a                                     ; $5bb3: $e2
    inc bc                                        ; $5bb4: $03

jr_04a_5bb5:
    rst $10                                       ; $5bb5: $d7
    dec l                                         ; $5bb6: $2d
    adc [hl]                                      ; $5bb7: $8e
    db $e3                                        ; $5bb8: $e3
    ret                                           ; $5bb9: $c9


    rra                                           ; $5bba: $1f
    dec l                                         ; $5bbb: $2d
    call nz, Call_04a_5ed2                        ; $5bbc: $c4 $d2 $5e
    ld sp, hl                                     ; $5bbf: $f9
    call z, Call_000_35a5                         ; $5bc0: $cc $a5 $35
    rst $20                                       ; $5bc3: $e7
    sub [hl]                                      ; $5bc4: $96
    cp b                                          ; $5bc5: $b8
    ld a, d                                       ; $5bc6: $7a
    ld d, c                                       ; $5bc7: $51
    ld [hl], a                                    ; $5bc8: $77
    ld [hl-], a                                   ; $5bc9: $32
    ld e, [hl]                                    ; $5bca: $5e
    ret nc                                        ; $5bcb: $d0

    sbc l                                         ; $5bcc: $9d
    or c                                          ; $5bcd: $b1
    inc e                                         ; $5bce: $1c
    rra                                           ; $5bcf: $1f
    sub a                                         ; $5bd0: $97
    jr @+$0e                                      ; $5bd1: $18 $0c

    push de                                       ; $5bd3: $d5
    ld a, [bc]                                    ; $5bd4: $0a
    rrca                                          ; $5bd5: $0f
    add hl, sp                                    ; $5bd6: $39
    adc [hl]                                      ; $5bd7: $8e
    db $e3                                        ; $5bd8: $e3
    ld h, c                                       ; $5bd9: $61
    ld l, $c2                                     ; $5bda: $2e $c2
    jr nz, jr_04a_5c55                            ; $5bdc: $20 $77

    ld [hl], $19                                  ; $5bde: $36 $19
    rst $00                                       ; $5be0: $c7
    pop af                                        ; $5be1: $f1
    ld d, b                                       ; $5be2: $50
    ld l, $ac                                     ; $5be3: $2e $ac
    or b                                          ; $5be5: $b0
    or b                                          ; $5be6: $b0
    ld d, c                                       ; $5be7: $51
    inc e                                         ; $5be8: $1c
    rst $00                                       ; $5be9: $c7
    rlca                                          ; $5bea: $07
    ld l, a                                       ; $5beb: $6f
    dec de                                        ; $5bec: $1b
    ld e, a                                       ; $5bed: $5f
    add hl, sp                                    ; $5bee: $39
    nop                                           ; $5bef: $00
    rst $10                                       ; $5bf0: $d7
    db $e4                                        ; $5bf1: $e4
    adc $d8                                       ; $5bf2: $ce $d8
    ld b, l                                       ; $5bf4: $45
    dec a                                         ; $5bf5: $3d
    ld d, a                                       ; $5bf6: $57
    adc e                                         ; $5bf7: $8b
    ld l, $16                                     ; $5bf8: $2e $16
    sub l                                         ; $5bfa: $95
    rst $20                                       ; $5bfb: $e7
    cp e                                          ; $5bfc: $bb
    rst $30                                       ; $5bfd: $f7
    ld c, [hl]                                    ; $5bfe: $4e
    dec h                                         ; $5bff: $25
    add hl, hl                                    ; $5c00: $29
    sbc b                                         ; $5c01: $98
    add [hl]                                      ; $5c02: $86
    dec sp                                        ; $5c03: $3b
    ld d, b                                       ; $5c04: $50
    ld a, h                                       ; $5c05: $7c
    nop                                           ; $5c06: $00
    sub a                                         ; $5c07: $97
    rst $10                                       ; $5c08: $d7
    xor [hl]                                      ; $5c09: $ae
    rst $28                                       ; $5c0a: $ef
    add l                                         ; $5c0b: $85
    ld l, e                                       ; $5c0c: $6b
    rst $08                                       ; $5c0d: $cf
    inc a                                         ; $5c0e: $3c
    rst $30                                       ; $5c0f: $f7
    ld b, [hl]                                    ; $5c10: $46
    cp h                                          ; $5c11: $bc
    xor e                                         ; $5c12: $ab
    rst $08                                       ; $5c13: $cf
    db $ec                                        ; $5c14: $ec
    push af                                       ; $5c15: $f5
    scf                                           ; $5c16: $37
    sbc [hl]                                      ; $5c17: $9e
    ld a, c                                       ; $5c18: $79
    and $a5                                       ; $5c19: $e6 $a5
    cp l                                          ; $5c1b: $bd
    ld [hl], a                                    ; $5c1c: $77
    db $ed                                        ; $5c1d: $ed
    adc l                                         ; $5c1e: $8d
    ld e, l                                       ; $5c1f: $5d
    ld a, e                                       ; $5c20: $7b
    ld l, c                                       ; $5c21: $69
    rst $28                                       ; $5c22: $ef
    ld e, l                                       ; $5c23: $5d
    cp e                                          ; $5c24: $bb
    cp $d2                                        ; $5c25: $fe $d2
    sbc $7b                                       ; $5c27: $de $7b
    ld a, [c]                                     ; $5c29: $f2
    ld sp, hl                                     ; $5c2a: $f9
    ld hl, sp+$00                                 ; $5c2b: $f8 $00
    rst $28                                       ; $5c2d: $ef
    ld e, l                                       ; $5c2e: $5d
    ld a, e                                       ; $5c2f: $7b
    ld h, [hl]                                    ; $5c30: $66
    rst $10                                       ; $5c31: $d7
    sbc a                                         ; $5c32: $9f
    reti                                          ; $5c33: $d9


    db $db                                        ; $5c34: $db
    ld c, a                                       ; $5c35: $4f
    cp [hl]                                       ; $5c36: $be
    or c                                          ; $5c37: $b1
    ld h, a                                       ; $5c38: $67
    ld e, [hl]                                    ; $5c39: $5e
    db $db                                        ; $5c3a: $db
    ld e, e                                       ; $5c3b: $5b
    ld c, a                                       ; $5c3c: $4f
    cp [hl]                                       ; $5c3d: $be
    or h                                          ; $5c3e: $b4
    rla                                           ; $5c3f: $17
    sbc a                                         ; $5c40: $9f
    reti                                          ; $5c41: $d9


    ld [hl], e                                    ; $5c42: $73
    rst $08                                       ; $5c43: $cf
    cp h                                          ; $5c44: $bc
    db $fd                                        ; $5c45: $fd
    ld a, [c]                                     ; $5c46: $f2
    ld l, e                                       ; $5c47: $6b
    ld d, a                                       ; $5c48: $57
    sbc a                                         ; $5c49: $9f
    ld a, c                                       ; $5c4a: $79
    ld l, c                                       ; $5c4b: $69
    rst $10                                       ; $5c4c: $d7
    ld e, [hl]                                    ; $5c4d: $5e
    cp a                                          ; $5c4e: $bf
    or d                                          ; $5c4f: $b2
    ld l, e                                       ; $5c50: $6b
    rst $08                                       ; $5c51: $cf
    rst $28                                       ; $5c52: $ef
    ld sp, hl                                     ; $5c53: $f9
    daa                                           ; $5c54: $27

jr_04a_5c55:
    ld e, a                                       ; $5c55: $5f
    jp c, $d79b                                   ; $5c56: $da $9b $d7

    sbc $78                                       ; $5c59: $de $78
    db $fd                                        ; $5c5b: $fd
    add l                                         ; $5c5c: $85
    scf                                           ; $5c5d: $37
    xor a                                         ; $5c5e: $af
    cp l                                          ; $5c5f: $bd
    pop af                                        ; $5c60: $f1
    call z, Call_04a_574b                         ; $5c61: $cc $4b $57
    rst $30                                       ; $5c64: $f7
    sub $cb                                       ; $5c65: $d6 $cb
    xor a                                         ; $5c67: $af
    cp l                                          ; $5c68: $bd
    cp b                                          ; $5c69: $b8
    daa                                           ; $5c6a: $27
    sbc a                                         ; $5c6b: $9f
    ld a, h                                       ; $5c6c: $7c
    jp hl                                         ; $5c6d: $e9


    and l                                         ; $5c6e: $a5
    ld h, a                                       ; $5c6f: $67
    ld e, [hl]                                    ; $5c70: $5e
    ld a, h                                       ; $5c71: $7c
    and $a5                                       ; $5c72: $e6 $a5
    dec a                                         ; $5c74: $3d
    ld sp, hl                                     ; $5c75: $f9
    jp nz, $bbeb                                  ; $5c76: $c2 $eb $bb

    or $fc                                        ; $5c79: $f6 $fc
    sbc [hl]                                      ; $5c7b: $9e
    ld a, c                                       ; $5c7c: $79
    and $a5                                       ; $5c7d: $e6 $a5
    cp l                                          ; $5c7f: $bd
    ld [hl], b                                    ; $5c80: $70
    db $ed                                        ; $5c81: $ed
    jp hl                                         ; $5c82: $e9


    sla a                                         ; $5c83: $cb $27
    sbc a                                         ; $5c85: $9f
    ld a, h                                       ; $5c86: $7c
    ld [hl], c                                    ; $5c87: $71
    rst $08                                       ; $5c88: $cf
    ccf                                           ; $5c89: $3f
    ld sp, hl                                     ; $5c8a: $f9
    jp nc, Jump_000_3eae                          ; $5c8b: $d2 $ae $3e

    di                                            ; $5c8e: $f3
    jp nz, Jump_000_2f33                          ; $5c8f: $c2 $33 $2f

    push bc                                       ; $5c92: $c5
    ld a, e                                       ; $5c93: $7b
    pop af                                        ; $5c94: $f1
    ret                                           ; $5c95: $c9


    daa                                           ; $5c96: $27
    ld e, a                                       ; $5c97: $5f
    db $db                                        ; $5c98: $db
    ld a, e                                       ; $5c99: $7b
    cpl                                           ; $5c9a: $2f
    ld e, a                                       ; $5c9b: $5f
    ld a, l                                       ; $5c9c: $7d
    db $ed                                        ; $5c9d: $ed
    ret                                           ; $5c9e: $c9


    ld e, l                                       ; $5c9f: $5d
    ld a, e                                       ; $5ca0: $7b
    ld a, [hl]                                    ; $5ca1: $7e
    sub a                                         ; $5ca2: $97
    rst $08                                       ; $5ca3: $cf
    cp h                                          ; $5ca4: $bc
    or c                                          ; $5ca5: $b1

jr_04a_5ca6:
    rla                                           ; $5ca6: $17
    sbc [hl]                                      ; $5ca7: $9e
    ld a, c                                       ; $5ca8: $79
    db $eb                                        ; $5ca9: $eb
    sbc c                                         ; $5caa: $99
    sub a                                         ; $5cab: $97
    ld e, [hl]                                    ; $5cac: $5e
    ld a, a                                       ; $5cad: $7f
    and $85                                       ; $5cae: $e6 $85
    ld l, e                                       ; $5cb0: $6b
    rst $28                                       ; $5cb1: $ef
    inc a                                         ; $5cb2: $3c
    di                                            ; $5cb3: $f3
    jp c, Jump_04a_7f9e                           ; $5cb4: $da $9e $7f

    ld a, [c]                                     ; $5cb7: $f2
    and l                                         ; $5cb8: $a5
    cp l                                          ; $5cb9: $bd
    ld hl, sp-$1c                                 ; $5cba: $f8 $e4
    di                                            ; $5cbc: $f3
    rst $08                                       ; $5cbd: $cf
    cp h                                          ; $5cbe: $bc
    ld [hl], h                                    ; $5cbf: $74
    or c                                          ; $5cc0: $b1
    rst $20                                       ; $5cc1: $e7
    sbc a                                         ; $5cc2: $9f
    ld a, h                                       ; $5cc3: $7c
    ld l, c                                       ; $5cc4: $69
    rst $10                                       ; $5cc5: $d7
    sbc [hl]                                      ; $5cc6: $9e
    rst $18                                       ; $5cc7: $df
    adc e                                         ; $5cc8: $8b
    rst $10                                       ; $5cc9: $d7
    xor [hl]                                      ; $5cca: $ae
    cp a                                          ; $5ccb: $bf
    or h                                          ; $5ccc: $b4
    ld h, a                                       ; $5ccd: $67
    xor [hl]                                      ; $5cce: $ae
    dec a                                         ; $5ccf: $3d
    rst $30                                       ; $5cd0: $f7
    call z, Call_04a_7b4b                         ; $5cd1: $cc $4b $7b
    pop hl                                        ; $5cd4: $e1
    jp c, $97d3                                   ; $5cd5: $da $d3 $97

    ld c, a                                       ; $5cd8: $4f
    ld a, $f9                                     ; $5cd9: $3e $f9
    ld [c], a                                     ; $5cdb: $e2
    sbc [hl]                                      ; $5cdc: $9e
    ld a, [hl]                                    ; $5cdd: $7e
    db $ed                                        ; $5cde: $ed
    sbc c                                         ; $5cdf: $99
    rst $30                                       ; $5ce0: $f7
    ld e, a                                       ; $5ce1: $5f
    ld a, e                                       ; $5ce2: $7b
    and $a5                                       ; $5ce3: $e6 $a5
    ld a, b                                       ; $5ce5: $78

Call_04a_5ce6:
    ld d, a                                       ; $5ce6: $57
    rst $18                                       ; $5ce7: $df
    ld a, h                                       ; $5ce8: $7c
    ld a, l                                       ; $5ce9: $7d
    rst $08                                       ; $5cea: $cf
    dec a                                         ; $5ceb: $3d
    di                                            ; $5cec: $f3
    call z, Call_04a_7bb3                         ; $5ced: $cc $b3 $7b
    pop af                                        ; $5cf0: $f1
    sbc c                                         ; $5cf1: $99
    ld e, l                                       ; $5cf2: $5d
    ld a, l                                       ; $5cf3: $7d
    ld h, [hl]                                    ; $5cf4: $66
    xor a                                         ; $5cf5: $af
    cp a                                          ; $5cf6: $bf
    pop af                                        ; $5cf7: $f1
    call z, Call_000_2f33                         ; $5cf8: $cc $33 $2f
    db $ed                                        ; $5cfb: $ed
    push hl                                       ; $5cfc: $e5
    ld h, a                                       ; $5cfd: $67
    rst $30                                       ; $5cfe: $f7
    ld a, [$cf1b]                                 ; $5cff: $fa $1b $cf
    cp h                                          ; $5d02: $bc
    or $ec                                        ; $5d03: $f6 $ec
    sbc $7b                                       ; $5d05: $de $7b
    ld sp, hl                                     ; $5d07: $f9
    ret                                           ; $5d08: $c9


    rla                                           ; $5d09: $17
    ld e, [hl]                                    ; $5d0a: $5e
    rst $18                                       ; $5d0b: $df
    push af                                       ; $5d0c: $f5
    ld h, a                                       ; $5d0d: $67
    or $f2                                        ; $5d0e: $f6 $f2
    sbc e                                         ; $5d10: $9b
    ld d, a                                       ; $5d11: $57
    sbc a                                         ; $5d12: $9f
    ld a, c                                       ; $5d13: $79
    db $ed                                        ; $5d14: $ed
    push af                                       ; $5d15: $f5
    jr c, jr_04a_5ca6                             ; $5d16: $38 $8e

    rst $30                                       ; $5d18: $f7
    ld a, [$cf8b]                                 ; $5d19: $fa $8b $cf
    inc a                                         ; $5d1c: $3c
    rst $38                                       ; $5d1d: $ff
    call z, Call_04a_574b                         ; $5d1e: $cc $4b $57
    rst $30                                       ; $5d21: $f7
    ld a, [c]                                     ; $5d22: $f2
    adc e                                         ; $5d23: $8b
    ld a, e                                       ; $5d24: $7b
    xor $99                                       ; $5d25: $ee $99
    sub a                                         ; $5d27: $97
    sbc [hl]                                      ; $5d28: $9e
    cp h                                          ; $5d29: $bc
    ld a, [$7c4c]                                 ; $5d2a: $fa $4c $7c
    nop                                           ; $5d2d: $00
    cpl                                           ; $5d2e: $2f
    call nc, Call_04a_4d01                        ; $5d2f: $d4 $01 $4d
    inc sp                                        ; $5d32: $33
    ld [de], a                                    ; $5d33: $12
    ld a, a                                       ; $5d34: $7f
    nop                                           ; $5d35: $00
    rst $08                                       ; $5d36: $cf
    db $fd                                        ; $5d37: $fd
    ld h, d                                       ; $5d38: $62
    inc hl                                        ; $5d39: $23
    db $f4                                        ; $5d3a: $f4
    sbc $c0                                       ; $5d3b: $de $c0
    push bc                                       ; $5d3d: $c5
    ld l, $8d                                     ; $5d3e: $2e $8d
    ld c, b                                       ; $5d40: $48
    ld c, h                                       ; $5d41: $4c
    ld a, h                                       ; $5d42: $7c
    nop                                           ; $5d43: $00
    ld d, a                                       ; $5d44: $57
    cp e                                          ; $5d45: $bb
    rst $10                                       ; $5d46: $d7
    cp c                                          ; $5d47: $b9
    ld c, l                                       ; $5d48: $4d
    pop af                                        ; $5d49: $f1
    ld a, e                                       ; $5d4a: $7b
    sbc [hl]                                      ; $5d4b: $9e
    jr nc, jr_04a_5db3                            ; $5d4c: $30 $65

    push af                                       ; $5d4e: $f5
    jp nz, $c456                                  ; $5d4f: $c2 $56 $c4

    di                                            ; $5d52: $f3
    db $dd                                        ; $5d53: $dd
    db $eb                                        ; $5d54: $eb
    call c, $f8a6                                 ; $5d55: $dc $a6 $f8
    inc bc                                        ; $5d58: $03
    cpl                                           ; $5d59: $2f
    or l                                          ; $5d5a: $b5
    rla                                           ; $5d5b: $17
    ld b, e                                       ; $5d5c: $43
    add hl, sp                                    ; $5d5d: $39
    ld a, c                                       ; $5d5e: $79
    or d                                          ; $5d5f: $b2
    ld l, b                                       ; $5d60: $68
    ld e, c                                       ; $5d61: $59
    sbc $87                                       ; $5d62: $de $87
    add $18                                       ; $5d64: $c6 $18
    ld hl, sp-$03                                 ; $5d66: $f8 $fd
    ld l, b                                       ; $5d68: $68
    sbc $78                                       ; $5d69: $de $78
    call c, $a5b9                                 ; $5d6b: $dc $b9 $a5
    db $10                                        ; $5d6e: $10
    db $d3                                        ; $5d6f: $d3
    sub a                                         ; $5d70: $97
    sbc d                                         ; $5d71: $9a
    rla                                           ; $5d72: $17
    dec bc                                        ; $5d73: $0b
    ld a, a                                       ; $5d74: $7f
    ld c, a                                       ; $5d75: $4f
    push de                                       ; $5d76: $d5
    ld b, e                                       ; $5d77: $43
    cp c                                          ; $5d78: $b9
    add sp, -$69                                  ; $5d79: $e8 $97
    ld [hl], a                                    ; $5d7b: $77
    ld l, $00                                     ; $5d7c: $2e $00
    call $e379                                    ; $5d7e: $cd $79 $e3
    dec b                                         ; $5d81: $05
    ld e, l                                       ; $5d82: $5d
    ld e, b                                       ; $5d83: $58
    sbc $b9                                       ; $5d84: $de $b9
    ld e, d                                       ; $5d86: $5a
    or h                                          ; $5d87: $b4
    rst $38                                       ; $5d88: $ff
    push hl                                       ; $5d89: $e5
    ld [de], a                                    ; $5d8a: $12
    bit 2, e                                      ; $5d8b: $cb $53
    cp d                                          ; $5d8d: $ba
    ldh a, [$90]                                  ; $5d8e: $f0 $90
    rst $20                                       ; $5d90: $e7
    ld e, e                                       ; $5d91: $5b
    rra                                           ; $5d92: $1f
    rra                                           ; $5d93: $1f
    rst $10                                       ; $5d94: $d7
    db $e4                                        ; $5d95: $e4
    ld c, [hl]                                    ; $5d96: $4e
    xor b                                         ; $5d97: $a8
    rst $10                                       ; $5d98: $d7
    and $20                                       ; $5d99: $e6 $20
    inc sp                                        ; $5d9b: $33
    sbc d                                         ; $5d9c: $9a
    rst $00                                       ; $5d9d: $c7
    inc b                                         ; $5d9e: $04
    call $ca9d                                    ; $5d9f: $cd $9d $ca
    call $d778                                    ; $5da2: $cd $78 $d7
    call nc, $fade                                ; $5da5: $d4 $de $fa
    jp c, $fa37                                   ; $5da8: $da $37 $fa

    call nz, $fff3                                ; $5dab: $c4 $f3 $ff
    ei                                            ; $5dae: $fb
    dec hl                                        ; $5daf: $2b
    rlca                                          ; $5db0: $07
    cpl                                           ; $5db1: $2f
    or l                                          ; $5db2: $b5

jr_04a_5db3:
    pop af                                        ; $5db3: $f1
    or $72                                        ; $5db4: $f6 $72
    db $e4                                        ; $5db6: $e4
    adc l                                         ; $5db7: $8d
    rla                                           ; $5db8: $17
    ld h, d                                       ; $5db9: $62
    or b                                          ; $5dba: $b0
    call nz, Call_04a_4ef2                        ; $5dbb: $c4 $f2 $4e
    dec h                                         ; $5dbe: $25
    ld e, c                                       ; $5dbf: $59
    adc l                                         ; $5dc0: $8d
    add c                                         ; $5dc1: $81
    sbc h                                         ; $5dc2: $9c
    ld l, [hl]                                    ; $5dc3: $6e
    ld b, l                                       ; $5dc4: $45
    ld a, h                                       ; $5dc5: $7c
    ld sp, $b969                                  ; $5dc6: $31 $69 $b9
    db $10                                        ; $5dc9: $10
    add e                                         ; $5dca: $83
    db $fd                                        ; $5dcb: $fd
    cpl                                           ; $5dcc: $2f
    sub a                                         ; $5dcd: $97
    ld e, b                                       ; $5dce: $58
    sbc $e9                                       ; $5dcf: $de $e9
    sub e                                         ; $5dd1: $93
    ld l, a                                       ; $5dd2: $6f
    ld c, $d4                                     ; $5dd3: $0e $d4
    rst $38                                       ; $5dd5: $ff
    rst $28                                       ; $5dd6: $ef
    db $e3                                        ; $5dd7: $e3
    ld e, l                                       ; $5dd8: $5d
    ld h, d                                       ; $5dd9: $62
    or b                                          ; $5dda: $b0
    di                                            ; $5ddb: $f3
    xor c                                         ; $5ddc: $a9
    inc h                                         ; $5ddd: $24
    ld [c], a                                     ; $5dde: $e2
    push hl                                       ; $5ddf: $e5
    rlca                                          ; $5de0: $07
    ld d, e                                       ; $5de1: $53
    call c, $b57a                                 ; $5de2: $dc $7a $b5

jr_04a_5de5:
    ld [de], a                                    ; $5de5: $12
    ld l, b                                       ; $5de6: $68
    xor d                                         ; $5de7: $aa
    pop de                                        ; $5de8: $d1
    ld c, a                                       ; $5de9: $4f
    rra                                           ; $5dea: $1f
    rst $00                                       ; $5deb: $c7
    pop af                                        ; $5dec: $f1
    ld bc, $e4cf                                  ; $5ded: $01 $cf $e4
    ld a, h                                       ; $5df0: $7c
    rst $30                                       ; $5df1: $f7
    ld [hl], d                                    ; $5df2: $72
    sbc [hl]                                      ; $5df3: $9e
    ld de, $b21e                                  ; $5df4: $11 $1e $b2
    ld h, b                                       ; $5df7: $60
    ld b, [hl]                                    ; $5df8: $46
    ld h, c                                       ; $5df9: $61
    pop de                                        ; $5dfa: $d1
    xor e                                         ; $5dfb: $ab
    cp e                                          ; $5dfc: $bb
    ld [hl+], a                                   ; $5dfd: $22
    ld c, e                                       ; $5dfe: $4b
    xor [hl]                                      ; $5dff: $ae
    sbc $5d                                       ; $5e00: $de $5d
    dec sp                                        ; $5e02: $3b
    or l                                          ; $5e03: $b5
    inc a                                         ; $5e04: $3c
    ld h, a                                       ; $5e05: $67
    daa                                           ; $5e06: $27
    db $ec                                        ; $5e07: $ec
    inc a                                         ; $5e08: $3c
    halt                                          ; $5e09: $76
    and b                                         ; $5e0a: $a0
    adc d                                         ; $5e0b: $8a
    dec e                                         ; $5e0c: $1d
    add a                                         ; $5e0d: $87
    db $fc                                        ; $5e0e: $fc
    jp nz, $c456                                  ; $5e0f: $c2 $56 $c4

    ld d, a                                       ; $5e12: $57
    ld c, $d7                                     ; $5e13: $0e $d7
    dec sp                                        ; $5e15: $3b
    rst $10                                       ; $5e16: $d7
    ld a, h                                       ; $5e17: $7c
    ld l, c                                       ; $5e18: $69
    and c                                         ; $5e19: $a1
    ld sp, hl                                     ; $5e1a: $f9
    add l                                         ; $5e1b: $85
    adc l                                         ; $5e1c: $8d
    ld h, $60                                     ; $5e1d: $26 $60
    or b                                          ; $5e1f: $b0
    ld [$6183], sp                                ; $5e20: $08 $83 $61
    ld c, [hl]                                    ; $5e23: $4e
    add sp, -$37                                  ; $5e24: $e8 $c9
    ld [$0c13], sp                                ; $5e26: $08 $13 $0c
    inc d                                         ; $5e29: $14
    call nc, Call_04a_5e6d                        ; $5e2a: $d4 $6d $5e
    inc c                                         ; $5e2d: $0c
    push hl                                       ; $5e2e: $e5
    cp h                                          ; $5e2f: $bc
    pop bc                                        ; $5e30: $c1
    ld b, e                                       ; $5e31: $43
    sbc [hl]                                      ; $5e32: $9e
    scf                                           ; $5e33: $37
    ld e, [hl]                                    ; $5e34: $5e
    add b                                         ; $5e35: $80
    pop bc                                        ; $5e36: $c1
    jp nz, $3b46                                  ; $5e37: $c2 $46 $3b

    ld d, l                                       ; $5e3a: $55
    rst $28                                       ; $5e3b: $ef
    db $fc                                        ; $5e3c: $fc
    sbc l                                         ; $5e3d: $9d
    sbc l                                         ; $5e3e: $9d
    ld d, b                                       ; $5e3f: $50
    db $eb                                        ; $5e40: $eb
    and $c2                                       ; $5e41: $e6 $c2
    ld a, [bc]                                    ; $5e43: $0a
    ld b, d                                       ; $5e44: $42
    inc sp                                        ; $5e45: $33
    ld a, $00                                     ; $5e46: $3e $00
    rst $08                                       ; $5e48: $cf
    ret nc                                        ; $5e49: $d0

    ld d, b                                       ; $5e4a: $50
    dec l                                         ; $5e4b: $2d
    ccf                                           ; $5e4c: $3f
    jr jr_04a_5de5                                ; $5e4d: $18 $96

    ld d, l                                       ; $5e4f: $55
    inc e                                         ; $5e50: $1c
    rst $00                                       ; $5e51: $c7
    rlca                                          ; $5e52: $07
    ld l, a                                       ; $5e53: $6f
    sub c                                         ; $5e54: $91
    add hl, de                                    ; $5e55: $19
    ld e, b                                       ; $5e56: $58
    ld h, h                                       ; $5e57: $64
    ld b, [hl]                                    ; $5e58: $46
    ei                                            ; $5e59: $fb
    ld d, b                                       ; $5e5a: $50
    ld a, h                                       ; $5e5b: $7c
    nop                                           ; $5e5c: $00
    ld l, a                                       ; $5e5d: $6f
    sbc e                                         ; $5e5e: $9b
    pop de                                        ; $5e5f: $d1

jr_04a_5e60:
    adc a                                         ; $5e60: $8f
    ld d, $9a                                     ; $5e61: $16 $9a
    pop af                                        ; $5e63: $f1
    jr nz, jr_04a_5e60                            ; $5e64: $20 $fa

    and d                                         ; $5e66: $a2
    ld a, [hl+]                                   ; $5e67: $2a
    push af                                       ; $5e68: $f5
    ld l, c                                       ; $5e69: $69
    xor a                                         ; $5e6a: $af
    ld h, a                                       ; $5e6b: $67
    dec bc                                        ; $5e6c: $0b

Call_04a_5e6d:
    dec l                                         ; $5e6d: $2d
    jp nz, $cae0                                  ; $5e6e: $c2 $e0 $ca

    ld bc, $3bd7                                  ; $5e71: $01 $d7 $3b
    rst $10                                       ; $5e74: $d7
    ld a, h                                       ; $5e75: $7c
    ld l, c                                       ; $5e76: $69
    ld h, c                                       ; $5e77: $61
    dec hl                                        ; $5e78: $2b
    ld [c], a                                     ; $5e79: $e2
    sbc l                                         ; $5e7a: $9d
    ld sp, $e9c8                                  ; $5e7b: $31 $c8 $e9
    cp d                                          ; $5e7e: $ba
    call $5281                                    ; $5e7f: $cd $81 $52
    db $fd                                        ; $5e82: $fd
    sbc d                                         ; $5e83: $9a
    dec bc                                        ; $5e84: $0b
    ld sp, $fc98                                  ; $5e85: $31 $98 $fc
    cp c                                          ; $5e88: $b9
    or b                                          ; $5e89: $b0
    cp h                                          ; $5e8a: $bc
    call nz, Call_000_1cf2                        ; $5e8b: $c4 $f2 $1c
    ld h, h                                       ; $5e8e: $64
    push bc                                       ; $5e8f: $c5
    ld h, [hl]                                    ; $5e90: $66
    add hl, sp                                    ; $5e91: $39
    ld l, a                                       ; $5e92: $6f
    cp h                                          ; $5e93: $bc
    db $10                                        ; $5e94: $10
    add e                                         ; $5e95: $83
    add hl, bc                                    ; $5e96: $09
    jr @+$2e                                      ; $5e97: $18 $2c

    add sp, $5c                                   ; $5e99: $e8 $5c
    di                                            ; $5e9b: $f3
    and l                                         ; $5e9c: $a5
    ld h, c                                       ; $5e9d: $61
    ld l, $2c                                     ; $5e9e: $2e $2c
    ld c, a                                       ; $5ea0: $4f
    ld [de], a                                    ; $5ea1: $12
    ld b, $3c                                     ; $5ea2: $06 $3c
    push bc                                       ; $5ea4: $c5
    ccf                                           ; $5ea5: $3f
    ld a, l                                       ; $5ea6: $7d
    cp h                                          ; $5ea7: $bc
    ld l, e                                       ; $5ea8: $6b
    ld [hl], d                                    ; $5ea9: $72
    and b                                         ; $5eaa: $a0
    ld a, [$d17f]                                 ; $5eab: $fa $7f $d1
    cp h                                          ; $5eae: $bc
    pop af                                        ; $5eaf: $f1
    ld b, d                                       ; $5eb0: $42
    inc c                                         ; $5eb1: $0c
    ld d, $74                                     ; $5eb2: $16 $74
    sbc $8c                                       ; $5eb4: $de $8c
    ld a, [hl]                                    ; $5eb6: $7e
    or h                                          ; $5eb7: $b4
    or b                                          ; $5eb8: $b0
    cp h                                          ; $5eb9: $bc
    or b                                          ; $5eba: $b0
    cp d                                          ; $5ebb: $ba
    ld d, e                                       ; $5ebc: $53
    ldh a, [$f0]                                  ; $5ebd: $f0 $f0
    ld a, a                                       ; $5ebf: $7f
    dec e                                         ; $5ec0: $1d
    sbc b                                         ; $5ec1: $98
    pop de                                        ; $5ec2: $d1
    jp nz, $c456                                  ; $5ec3: $c2 $56 $c4

    inc de                                        ; $5ec6: $13
    xor d                                         ; $5ec7: $aa
    ldh [$61], a                                  ; $5ec8: $e0 $61
    add hl, hl                                    ; $5eca: $29
    ld a, [c]                                     ; $5ecb: $f2
    pop af                                        ; $5ecc: $f1

jr_04a_5ecd:
    ld l, $31                                     ; $5ecd: $2e $31
    ld e, b                                       ; $5ecf: $58
    ld l, b                                       ; $5ed0: $68
    ld a, [hl]                                    ; $5ed1: $7e

Call_04a_5ed2:
    ld h, c                                       ; $5ed2: $61
    ld a, c                                       ; $5ed3: $79
    add sp, -$25                                  ; $5ed4: $e8 $db
    ld a, c                                       ; $5ed6: $79
    db $e3                                        ; $5ed7: $e3
    add l                                         ; $5ed8: $85
    jr @-$52                                      ; $5ed9: $18 $ac

    cp c                                          ; $5edb: $b9
    and b                                         ; $5edc: $a0
    ld [hl], e                                    ; $5edd: $73
    call $e697                                    ; $5ede: $cd $97 $e6
    dec l                                         ; $5ee1: $2d
    rlca                                          ; $5ee2: $07
    bit 0, c                                      ; $5ee3: $cb $41
    and $ee                                       ; $5ee5: $e6 $ee
    db $fc                                        ; $5ee7: $fc
    dec e                                         ; $5ee8: $1d
    rst $18                                       ; $5ee9: $df
    sbc h                                         ; $5eea: $9c
    ld h, d                                       ; $5eeb: $62
    or e                                          ; $5eec: $b3
    adc h                                         ; $5eed: $8c
    rrca                                          ; $5eee: $0f
    sub a                                         ; $5eef: $97
    cp a                                          ; $5ef0: $bf
    dec bc                                        ; $5ef1: $0b

Jump_04a_5ef2:
    dec hl                                        ; $5ef2: $2b
    inc c                                         ; $5ef3: $0c
    push hl                                       ; $5ef4: $e5
    ld a, h                                       ; $5ef5: $7c
    rst $30                                       ; $5ef6: $f7
    ld a, [hl-]                                   ; $5ef7: $3a
    or a                                          ; $5ef8: $b7
    add hl, sp                                    ; $5ef9: $39
    rlca                                          ; $5efa: $07
    ld a, c                                       ; $5efb: $79
    cp [hl]                                       ; $5efc: $be
    ld d, e                                       ; $5efd: $53
    db $10                                        ; $5efe: $10
    ld d, $54                                     ; $5eff: $16 $54
    rrca                                          ; $5f01: $0f
    ld d, h                                       ; $5f02: $54
    ld d, d                                       ; $5f03: $52
    ld b, c                                       ; $5f04: $41
    di                                            ; $5f05: $f3
    jp z, $d701                                   ; $5f06: $ca $01 $d7

    db $e4                                        ; $5f09: $e4
    jp nz, $f30a                                  ; $5f0a: $c2 $0a $f3

    sbc l                                         ; $5f0d: $9d
    add d                                         ; $5f0e: $82
    or b                                          ; $5f0f: $b0
    and b                                         ; $5f10: $a0
    ld a, d                                       ; $5f11: $7a
    rst $20                                       ; $5f12: $e7
    ccf                                           ; $5f13: $3f
    and c                                         ; $5f14: $a1
    db $fc                                        ; $5f15: $fc
    db $dd                                        ; $5f16: $dd
    sub d                                         ; $5f17: $92
    sbc a                                         ; $5f18: $9f
    scf                                           ; $5f19: $37
    sbc [hl]                                      ; $5f1a: $9e
    ld l, c                                       ; $5f1b: $69
    db $dd                                        ; $5f1c: $dd
    and $b0                                       ; $5f1d: $e6 $b0
    sub c                                         ; $5f1f: $91
    and l                                         ; $5f20: $a5
    sbc a                                         ; $5f21: $9f
    rst $00                                       ; $5f22: $c7
    adc $77                                       ; $5f23: $ce $77
    xor a                                         ; $5f25: $af
    ld [hl], e                                    ; $5f26: $73
    sbc e                                         ; $5f27: $9b
    dec sp                                        ; $5f28: $3b
    and c                                         ; $5f29: $a1
    or $9d                                        ; $5f2a: $f6 $9d
    adc e                                         ; $5f2c: $8b
    jp hl                                         ; $5f2d: $e9


    sbc e                                         ; $5f2e: $9b
    cp e                                          ; $5f2f: $bb
    ld l, e                                       ; $5f30: $6b
    ld l, $a6                                     ; $5f31: $2e $a6
    ld l, a                                       ; $5f33: $6f
    ld l, $32                                     ; $5f34: $2e $32
    and e                                         ; $5f36: $a3
    dec h                                         ; $5f37: $25
    sub [hl]                                      ; $5f38: $96
    rlca                                          ; $5f39: $07
    ld a, [hl+]                                   ; $5f3a: $2a
    sub b                                         ; $5f3b: $90
    add e                                         ; $5f3c: $83
    or d                                          ; $5f3d: $b2
    cp c                                          ; $5f3e: $b9
    cp e                                          ; $5f3f: $bb
    ld d, $36                                     ; $5f40: $16 $36
    ld a, [de]                                    ; $5f42: $1a
    and $42                                       ; $5f43: $e6 $42
    ld c, e                                       ; $5f45: $4b
    rst $18                                       ; $5f46: $df
    sbc h                                         ; $5f47: $9c
    db $fc                                        ; $5f48: $fc
    add hl, sp                                    ; $5f49: $39
    ld c, c                                       ; $5f4a: $49
    jr jr_04a_5ecd                                ; $5f4b: $18 $80

    ld h, [hl]                                    ; $5f4d: $66
    cp h                                          ; $5f4e: $bc

Jump_04a_5f4f:
    rst $10                                       ; $5f4f: $d7
    inc e                                         ; $5f50: $1c
    push bc                                       ; $5f51: $c5
    ld c, e                                       ; $5f52: $4b
    ld h, a                                       ; $5f53: $67
    daa                                           ; $5f54: $27
    db $e3                                        ; $5f55: $e3
    add hl, sp                                    ; $5f56: $39
    ret z                                         ; $5f57: $c8

    rla                                           ; $5f58: $17
    cp e                                          ; $5f59: $bb
    inc [hl]                                      ; $5f5a: $34
    ld [hl+], a                                   ; $5f5b: $22
    ld sp, $aef1                                  ; $5f5c: $31 $f1 $ae
    ld [hl], a                                    ; $5f5f: $77
    sub c                                         ; $5f60: $91
    add c                                         ; $5f61: $81
    add l                                         ; $5f62: $85
    push hl                                       ; $5f63: $e5
    dec d                                         ; $5f64: $15
    db $d3                                        ; $5f65: $d3
    scf                                           ; $5f66: $37
    jr nc, jr_04a_5f8c                            ; $5f67: $30 $23

    dec h                                         ; $5f69: $25
    ld l, d                                       ; $5f6a: $6a
    dec d                                         ; $5f6b: $15
    cpl                                           ; $5f6c: $2f
    or c                                          ; $5f6d: $b1
    cp h                                          ; $5f6e: $bc
    ld [$6a95], sp                                ; $5f6f: $08 $95 $6a
    add $07                                       ; $5f72: $c6 $07
    ld l, a                                       ; $5f74: $6f
    db $fd                                        ; $5f75: $fd
    ld c, a                                       ; $5f76: $4f
    sbc $78                                       ; $5f77: $de $78
    ld h, c                                       ; $5f79: $61
    ld a, c                                       ; $5f7a: $79
    and d                                         ; $5f7b: $a2
    ld d, [hl]                                    ; $5f7c: $56
    ld [hl], c                                    ; $5f7d: $71
    ld h, h                                       ; $5f7e: $64
    and [hl]                                      ; $5f7f: $a6
    daa                                           ; $5f80: $27
    inc d                                         ; $5f81: $14
    ld h, b                                       ; $5f82: $60
    ld a, [c]                                     ; $5f83: $f2
    push bc                                       ; $5f84: $c5
    and d                                         ; $5f85: $a2
    ld e, a                                       ; $5f86: $5f
    sbc [hl]                                      ; $5f87: $9e
    rst $28                                       ; $5f88: $ef
    ld c, h                                       ; $5f89: $4c
    db $e4                                        ; $5f8a: $e4
    xor e                                         ; $5f8b: $ab

jr_04a_5f8c:
    ld sp, $1281                                  ; $5f8c: $31 $81 $12
    ld a, [hl+]                                   ; $5f8f: $2a
    ld c, e                                       ; $5f90: $4b
    dec sp                                        ; $5f91: $3b
    ld a, l                                       ; $5f92: $7d
    ld a, [c]                                     ; $5f93: $f2
    call Call_000_2ff1                            ; $5f94: $cd $f1 $2f
    xor b                                         ; $5f97: $a8
    ld l, h                                       ; $5f98: $6c
    ld a, [$2f78]                                 ; $5f99: $fa $78 $2f
    sbc d                                         ; $5f9c: $9a
    pop de                                        ; $5f9d: $d1
    ld e, d                                       ; $5f9e: $5a
    ld d, d                                       ; $5f9f: $52
    cp h                                          ; $5fa0: $bc
    add sp, -$69                                  ; $5fa1: $e8 $97
    sbc e                                         ; $5fa3: $9b
    dec sp                                        ; $5fa4: $3b
    ld [hl], l                                    ; $5fa5: $75
    ld sp, hl                                     ; $5fa6: $f9
    pop bc                                        ; $5fa7: $c1
    ld a, h                                       ; $5fa8: $7c
    ld b, a                                       ; $5fa9: $47
    add l                                         ; $5faa: $85
    scf                                           ; $5fab: $37
    cp c                                          ; $5fac: $b9
    inc bc                                        ; $5fad: $03
    dec d                                         ; $5fae: $15
    ld [$3710], a                                 ; $5faf: $ea $10 $37
    ld d, c                                       ; $5fb2: $51
    xor c                                         ; $5fb3: $a9
    and $30                                       ; $5fb4: $e6 $30
    rst $20                                       ; $5fb6: $e7
    dec sp                                        ; $5fb7: $3b
    push bc                                       ; $5fb8: $c5
    sub [hl]                                      ; $5fb9: $96
    ld a, [hl]                                    ; $5fba: $7e
    ld l, [hl]                                    ; $5fbb: $6e
    jp hl                                         ; $5fbc: $e9


    ld d, h                                       ; $5fbd: $54
    sub d                                         ; $5fbe: $92
    call $00f8                                    ; $5fbf: $cd $f8 $00
    ld l, a                                       ; $5fc2: $6f
    db $fd                                        ; $5fc3: $fd
    ld c, a                                       ; $5fc4: $4f
    sbc $78                                       ; $5fc5: $de $78
    ld h, c                                       ; $5fc7: $61
    ld a, c                                       ; $5fc8: $79
    and d                                         ; $5fc9: $a2
    ld d, [hl]                                    ; $5fca: $56
    ld [hl], c                                    ; $5fcb: $71
    ld h, h                                       ; $5fcc: $64
    and [hl]                                      ; $5fcd: $a6
    daa                                           ; $5fce: $27
    inc d                                         ; $5fcf: $14
    ld h, b                                       ; $5fd0: $60
    ld a, [c]                                     ; $5fd1: $f2
    push bc                                       ; $5fd2: $c5
    and d                                         ; $5fd3: $a2
    ld e, a                                       ; $5fd4: $5f
    sbc [hl]                                      ; $5fd5: $9e
    rst $28                                       ; $5fd6: $ef
    ld c, h                                       ; $5fd7: $4c
    db $e4                                        ; $5fd8: $e4
    xor e                                         ; $5fd9: $ab
    ld sp, $1281                                  ; $5fda: $31 $81 $12
    ld a, [hl+]                                   ; $5fdd: $2a
    ld c, e                                       ; $5fde: $4b
    dec sp                                        ; $5fdf: $3b
    ld a, l                                       ; $5fe0: $7d
    ld a, [c]                                     ; $5fe1: $f2
    call Call_000_2ff1                            ; $5fe2: $cd $f1 $2f
    xor b                                         ; $5fe5: $a8
    ld l, h                                       ; $5fe6: $6c
    ld a, [$2f78]                                 ; $5fe7: $fa $78 $2f
    ld b, e                                       ; $5fea: $43
    di                                            ; $5feb: $f3
    ld e, l                                       ; $5fec: $5d
    ld c, e                                       ; $5fed: $4b
    adc d                                         ; $5fee: $8a
    dec sp                                        ; $5fef: $3b
    ld c, b                                       ; $5ff0: $48
    sbc e                                         ; $5ff1: $9b
    or c                                          ; $5ff2: $b1
    sbc d                                         ; $5ff3: $9a
    ld h, d                                       ; $5ff4: $62
    inc sp                                        ; $5ff5: $33
    ld e, [hl]                                    ; $5ff6: $5e
    ld a, [hl-]                                   ; $5ff7: $3a
    ld a, e                                       ; $5ff8: $7b
    rst $28                                       ; $5ff9: $ef
    ld h, h                                       ; $5ffa: $64
    sbc $97                                       ; $5ffb: $de $97
    db $10                                        ; $5ffd: $10
    ld e, $c6                                     ; $5ffe: $1e $c6
    ld a, e                                       ; $6000: $7b
    pop de                                        ; $6001: $d1
    adc h                                         ; $6002: $8c
    and $3b                                       ; $6003: $e6 $3b
    ld a, [hl+]                                   ; $6005: $2a
    cp h                                          ; $6006: $bc
    ret                                           ; $6007: $c9


    dec e                                         ; $6008: $1d
    xor b                                         ; $6009: $a8
    ld d, b                                       ; $600a: $50
    add a                                         ; $600b: $87
    cp b                                          ; $600c: $b8
    adc c                                         ; $600d: $89
    ld c, d                                       ; $600e: $4a
    dec [hl]                                      ; $600f: $35
    rla                                           ; $6010: $17
    db $fd                                        ; $6011: $fd
    ld [hl], d                                    ; $6012: $72
    ld [hl], e                                    ; $6013: $73
    ld sp, hl                                     ; $6014: $f9
    pop bc                                        ; $6015: $c1
    jr nc, @-$17                                  ; $6016: $30 $e7

    dec sp                                        ; $6018: $3b
    push bc                                       ; $6019: $c5
    sub [hl]                                      ; $601a: $96
    ld a, [hl]                                    ; $601b: $7e
    ld l, [hl]                                    ; $601c: $6e
    jp hl                                         ; $601d: $e9


    ld d, h                                       ; $601e: $54
    sub d                                         ; $601f: $92
    cp h                                          ; $6020: $bc
    db $d3                                        ; $6021: $d3
    daa                                           ; $6022: $27
    rst $18                                       ; $6023: $df
    adc h                                         ; $6024: $8c
    rrca                                          ; $6025: $0f
    ld a, e                                       ; $6026: $7b
    db $eb                                        ; $6027: $eb
    ld a, a                                       ; $6028: $7f
    ld a, [c]                                     ; $6029: $f2
    add $0b                                       ; $602a: $c6 $0b
    rl e                                          ; $602c: $cb $13
    or l                                          ; $602e: $b5
    adc d                                         ; $602f: $8a
    inc hl                                        ; $6030: $23
    inc sp                                        ; $6031: $33
    dec a                                         ; $6032: $3d
    and c                                         ; $6033: $a1
    nop                                           ; $6034: $00
    sub e                                         ; $6035: $93
    cpl                                           ; $6036: $2f
    ld d, $fd                                     ; $6037: $16 $fd
    ld a, [c]                                     ; $6039: $f2
    ld a, h                                       ; $603a: $7c
    ld h, a                                       ; $603b: $67
    ld [hl+], a                                   ; $603c: $22
    ld e, a                                       ; $603d: $5f
    adc l                                         ; $603e: $8d
    add hl, bc                                    ; $603f: $09
    sub h                                         ; $6040: $94
    ld d, b                                       ; $6041: $50
    ld e, c                                       ; $6042: $59
    jp c, $93e9                                   ; $6043: $da $e9 $93

    ld l, a                                       ; $6046: $6f
    adc [hl]                                      ; $6047: $8e
    ld a, a                                       ; $6048: $7f
    ld b, c                                       ; $6049: $41
    ld h, l                                       ; $604a: $65
    db $d3                                        ; $604b: $d3
    rst $00                                       ; $604c: $c7
    ld a, e                                       ; $604d: $7b
    add hl, de                                    ; $604e: $19
    sbc d                                         ; $604f: $9a
    rst $28                                       ; $6050: $ef
    ld e, d                                       ; $6051: $5a
    ld d, d                                       ; $6052: $52
    call c, $da41                                 ; $6053: $dc $41 $da
    adc h                                         ; $6056: $8c
    push de                                       ; $6057: $d5
    inc d                                         ; $6058: $14
    sbc e                                         ; $6059: $9b
    pop af                                        ; $605a: $f1
    jp nc, Jump_04a_6bd9                          ; $605b: $d2 $d9 $6b

    and $36                                       ; $605e: $e6 $36
    and l                                         ; $6060: $a5
    ld [hl], $e7                                  ; $6061: $36 $e7
    inc d                                         ; $6063: $14
    rst $28                                       ; $6064: $ef
    ld b, l                                       ; $6065: $45
    inc sp                                        ; $6066: $33
    sbc d                                         ; $6067: $9a
    rst $28                                       ; $6068: $ef
    xor b                                         ; $6069: $a8
    ldh a, [rNR52]                                ; $606a: $f0 $26
    ld [hl], a                                    ; $606c: $77
    and b                                         ; $606d: $a0
    ld b, d                                       ; $606e: $42
    dec e                                         ; $606f: $1d
    ld [c], a                                     ; $6070: $e2
    ld h, $2a                                     ; $6071: $26 $2a
    push de                                       ; $6073: $d5
    ld e, h                                       ; $6074: $5c
    db $f4                                        ; $6075: $f4
    set 1, l                                      ; $6076: $cb $cd
    push hl                                       ; $6078: $e5
    rlca                                          ; $6079: $07
    jp $ef9c                                      ; $607a: $c3 $9c $ef


    inc d                                         ; $607d: $14
    ld e, e                                       ; $607e: $5b
    ld a, [$a5b9]                                 ; $607f: $fa $b9 $a5
    ld d, e                                       ; $6082: $53
    ld c, c                                       ; $6083: $49
    ld a, [c]                                     ; $6084: $f2
    ld c, [hl]                                    ; $6085: $4e
    sbc a                                         ; $6086: $9f
    ld a, h                                       ; $6087: $7c
    inc sp                                        ; $6088: $33
    ld a, $00                                     ; $6089: $3e $00
    ld a, e                                       ; $608b: $7b
    db $eb                                        ; $608c: $eb
    ld a, a                                       ; $608d: $7f
    ld a, [c]                                     ; $608e: $f2
    add $0b                                       ; $608f: $c6 $0b
    rl e                                          ; $6091: $cb $13
    or l                                          ; $6093: $b5
    adc d                                         ; $6094: $8a
    inc hl                                        ; $6095: $23
    inc sp                                        ; $6096: $33
    dec a                                         ; $6097: $3d
    and c                                         ; $6098: $a1
    nop                                           ; $6099: $00
    sub e                                         ; $609a: $93
    cpl                                           ; $609b: $2f
    ld d, $fd                                     ; $609c: $16 $fd
    ld a, [c]                                     ; $609e: $f2
    ld a, h                                       ; $609f: $7c
    ld h, a                                       ; $60a0: $67
    ld [hl+], a                                   ; $60a1: $22
    ld e, a                                       ; $60a2: $5f
    adc l                                         ; $60a3: $8d
    add hl, bc                                    ; $60a4: $09
    sub h                                         ; $60a5: $94
    ld d, b                                       ; $60a6: $50
    ld e, c                                       ; $60a7: $59

jr_04a_60a8:
    jp c, $93e9                                   ; $60a8: $da $e9 $93

    ld l, a                                       ; $60ab: $6f
    adc [hl]                                      ; $60ac: $8e
    ld a, a                                       ; $60ad: $7f
    ld b, c                                       ; $60ae: $41
    ld h, l                                       ; $60af: $65
    db $d3                                        ; $60b0: $d3
    rst $00                                       ; $60b1: $c7
    ld a, e                                       ; $60b2: $7b
    add hl, de                                    ; $60b3: $19
    sbc d                                         ; $60b4: $9a
    rst $28                                       ; $60b5: $ef
    ld e, d                                       ; $60b6: $5a
    ld d, d                                       ; $60b7: $52
    call c, $da41                                 ; $60b8: $dc $41 $da
    adc h                                         ; $60bb: $8c
    push de                                       ; $60bc: $d5
    inc d                                         ; $60bd: $14
    sbc e                                         ; $60be: $9b
    pop af                                        ; $60bf: $f1
    jp nc, $a5d9                                  ; $60c0: $d2 $d9 $a5

    inc hl                                        ; $60c3: $23
    ld [de], a                                    ; $60c4: $12
    ld d, l                                       ; $60c5: $55
    ld b, e                                       ; $60c6: $43
    adc [hl]                                      ; $60c7: $8e
    jr z, jr_04a_60a8                             ; $60c8: $28 $de

    adc e                                         ; $60ca: $8b
    ld h, [hl]                                    ; $60cb: $66
    inc [hl]                                      ; $60cc: $34
    rst $18                                       ; $60cd: $df
    ld d, c                                       ; $60ce: $51
    pop hl                                        ; $60cf: $e1
    ld c, l                                       ; $60d0: $4d
    xor $40                                       ; $60d1: $ee $40
    add l                                         ; $60d3: $85
    ld a, [hl-]                                   ; $60d4: $3a
    call nz, Call_04a_544d                        ; $60d5: $c4 $4d $54
    xor d                                         ; $60d8: $aa
    cp c                                          ; $60d9: $b9
    add sp, -$69                                  ; $60da: $e8 $97
    sbc e                                         ; $60dc: $9b
    rrc a                                         ; $60dd: $cb $0f
    add [hl]                                      ; $60df: $86
    add hl, sp                                    ; $60e0: $39
    rst $18                                       ; $60e1: $df
    add hl, hl                                    ; $60e2: $29
    or [hl]                                       ; $60e3: $b6
    db $f4                                        ; $60e4: $f4
    ld [hl], e                                    ; $60e5: $73
    ld c, e                                       ; $60e6: $4b
    and a                                         ; $60e7: $a7
    sub d                                         ; $60e8: $92
    db $e4                                        ; $60e9: $e4
    sbc l                                         ; $60ea: $9d
    ld a, $f9                                     ; $60eb: $3e $f9
    ld h, [hl]                                    ; $60ed: $66
    ld a, h                                       ; $60ee: $7c
    nop                                           ; $60ef: $00
    xor a                                         ; $60f0: $af
    db $fd                                        ; $60f1: $fd
    call c, $8ddb                                 ; $60f2: $dc $db $8d
    xor d                                         ; $60f5: $aa
    cpl                                           ; $60f6: $2f
    and $fe                                       ; $60f7: $e6 $fe
    ld c, a                                       ; $60f9: $4f
    di                                            ; $60fa: $f3
    sbc l                                         ; $60fb: $9d
    ld d, b                                       ; $60fc: $50
    push bc                                       ; $60fd: $c5
    dec e                                         ; $60fe: $1d
    db $f4                                        ; $60ff: $f4
    ld a, c                                       ; $6100: $79
    ld a, [bc]                                    ; $6101: $0a
    ld e, $9a                                     ; $6102: $1e $9a
    ret                                           ; $6104: $c9


    db $fd                                        ; $6105: $fd
    adc a                                         ; $6106: $8f
    ld a, h                                       ; $6107: $7c
    or c                                          ; $6108: $b1
    rlca                                          ; $6109: $07
    rst $28                                       ; $610a: $ef
    add hl, de                                    ; $610b: $19
    db $e4                                        ; $610c: $e4
    inc h                                         ; $610d: $24
    scf                                           ; $610e: $37
    rst $20                                       ; $610f: $e7
    cp $4f                                        ; $6110: $fe $4f
    ld a, e                                       ; $6112: $7b
    adc [hl]                                      ; $6113: $8e
    ld d, b                                       ; $6114: $50
    inc h                                         ; $6115: $24
    ld a, [$ff4d]                                 ; $6116: $fa $4d $ff
    add hl, hl                                    ; $6119: $29
    ld a, $00                                     ; $611a: $3e $00
    sub a                                         ; $611c: $97
    and l                                         ; $611d: $a5
    xor b                                         ; $611e: $a8
    ld a, [de]                                    ; $611f: $1a
    sbc e                                         ; $6120: $9b
    ld a, e                                       ; $6121: $7b
    adc [hl]                                      ; $6122: $8e
    ld d, b                                       ; $6123: $50
    inc h                                         ; $6124: $24
    xor d                                         ; $6125: $aa
    cp [hl]                                       ; $6126: $be
    ret c                                         ; $6127: $d8

    xor c                                         ; $6128: $a9
    and b                                         ; $6129: $a0
    xor c                                         ; $612a: $a9
    ld b, $2a                                     ; $612b: $06 $2a
    sub b                                         ; $612d: $90
    add e                                         ; $612e: $83
    ld [hl], d                                    ; $612f: $72
    xor [hl]                                      ; $6130: $ae
    push hl                                       ; $6131: $e5
    inc h                                         ; $6132: $24
    ld l, d                                       ; $6133: $6a
    db $dd                                        ; $6134: $dd
    jp hl                                         ; $6135: $e9


    rrca                                          ; $6136: $0f
    db $10                                        ; $6137: $10
    ld l, [hl]                                    ; $6138: $6e
    ei                                            ; $6139: $fb
    jp hl                                         ; $613a: $e9


    ld c, e                                       ; $613b: $4b
    ld [hl], e                                    ; $613c: $73
    dec e                                         ; $613d: $1d
    add a                                         ; $613e: $87
    ld l, $f6                                     ; $613f: $2e $f6
    ldh [$3d], a                                  ; $6141: $e0 $3d
    add e                                         ; $6143: $83
    sbc h                                         ; $6144: $9c
    db $e4                                        ; $6145: $e4
    and $dc                                       ; $6146: $e6 $dc
    rst $38                                       ; $6148: $ff
    ld l, c                                       ; $6149: $69
    rst $08                                       ; $614a: $cf
    ld de, $448a                                  ; $614b: $11 $8a $44
    cp a                                          ; $614e: $bf
    jp hl                                         ; $614f: $e9


    ccf                                           ; $6150: $3f
    push bc                                       ; $6151: $c5
    rlca                                          ; $6152: $07
    sub a                                         ; $6153: $97
    ld b, [hl]                                    ; $6154: $46
    inc h                                         ; $6155: $24
    ld h, [hl]                                    ; $6156: $66
    xor a                                         ; $6157: $af
    ld a, h                                       ; $6158: $7c
    and $d2                                       ; $6159: $e6 $d2
    push bc                                       ; $615b: $c5
    ld c, [hl]                                    ; $615c: $4e
    dec b                                         ; $615d: $05
    ld c, l                                       ; $615e: $4d
    dec [hl]                                      ; $615f: $35
    rlca                                          ; $6160: $07
    ld sp, hl                                     ; $6161: $f9
    db $fc                                        ; $6162: $fc
    db $d3                                        ; $6163: $d3
    sub a                                         ; $6164: $97
    inc [hl]                                      ; $6165: $34
    ld b, $b2                                     ; $6166: $06 $b2

Call_04a_6168:
    adc e                                         ; $6168: $8b
    ld a, [hl]                                    ; $6169: $7e
    db $fd                                        ; $616a: $fd
    push bc                                       ; $616b: $c5
    ld e, $ba                                     ; $616c: $1e $ba
    ld h, a                                       ; $616e: $67
    sub b                                         ; $616f: $90
    sub e                                         ; $6170: $93
    call c, $fb9c                                 ; $6171: $dc $9c $fb
    ccf                                           ; $6174: $3f
    db $ed                                        ; $6175: $ed
    add hl, sp                                    ; $6176: $39

Call_04a_6177:
    ld b, d                                       ; $6177: $42
    sub c                                         ; $6178: $91
    add sp, $37                                   ; $6179: $e8 $37
    db $fd                                        ; $617b: $fd
    and a                                         ; $617c: $a7
    ld hl, sp+$00                                 ; $617d: $f8 $00
    rst $08                                       ; $617f: $cf
    db $e4                                        ; $6180: $e4
    ld a, [hl]                                    ; $6181: $7e
    db $e4                                        ; $6182: $e4
    adc l                                         ; $6183: $8d
    ld d, a                                       ; $6184: $57
    sbc d                                         ; $6185: $9a
    db $db                                        ; $6186: $db
    ld [$bf45], a                                 ; $6187: $ea $45 $bf
    ld a, [hl]                                    ; $618a: $7e
    xor $ff                                       ; $618b: $ee $ff
    or h                                          ; $618d: $b4
    db $fc                                        ; $618e: $fc
    ld e, $c1                                     ; $618f: $1e $c1
    ld d, b                                       ; $6191: $50
    db $ed                                        ; $6192: $ed
    ld b, a                                       ; $6193: $47
    dec bc                                        ; $6194: $0b
    set 7, e                                      ; $6195: $cb $fb
    ret nc                                        ; $6197: $d0

    cp b                                          ; $6198: $b8
    bit 0, [hl]                                   ; $6199: $cb $46
    call $4171                                    ; $619b: $cd $71 $41
    ld [hl], e                                    ; $619e: $73
    ld b, c                                       ; $619f: $41
    rst $20                                       ; $61a0: $e7
    ld h, d                                       ; $61a1: $62
    ld h, b                                       ; $61a2: $60

jr_04a_61a3:
    jp hl                                         ; $61a3: $e9


    sbc e                                         ; $61a4: $9b
    rla                                           ; $61a5: $17
    adc e                                         ; $61a6: $8b
    call z, Call_04a_7568                         ; $61a7: $cc $68 $75
    sbc e                                         ; $61aa: $9b
    ld l, [hl]                                    ; $61ab: $6e
    xor e                                         ; $61ac: $ab
    rla                                           ; $61ad: $17
    db $fd                                        ; $61ae: $fd
    ld a, [$68fd]                                 ; $61af: $fa $fd $68
    ld h, c                                       ; $61b2: $61
    ld a, c                                       ; $61b3: $79
    rra                                           ; $61b4: $1f
    ld a, [de]                                    ; $61b5: $1a
    ld [hl], a                                    ; $61b6: $77
    reti                                          ; $61b7: $d9


    xor b                                         ; $61b8: $a8
    add hl, sp                                    ; $61b9: $39
    ld l, $68                                     ; $61ba: $2e $68
    ld l, $e8                                     ; $61bc: $2e $e8
    ld e, h                                       ; $61be: $5c
    jp nz, Jump_04a_6fa6                          ; $61bf: $c2 $a6 $6f

    ld e, [hl]                                    ; $61c2: $5e
    db $ec                                        ; $61c3: $ec
    sbc $7b                                       ; $61c4: $de $7b
    ld b, $39                                     ; $61c6: $06 $39
    ret                                           ; $61c8: $c9


    call $ffb9                                    ; $61c9: $cd $b9 $ff
    db $d3                                        ; $61cc: $d3
    ld e, [hl]                                    ; $61cd: $5e
    inc [hl]                                      ; $61ce: $34
    add d                                         ; $61cf: $82
    ld d, a                                       ; $61d0: $57
    rst $28                                       ; $61d1: $ef
    dec b                                         ; $61d2: $05
    ld b, a                                       ; $61d3: $47
    db $10                                        ; $61d4: $10
    ld c, d                                       ; $61d5: $4a
    sub c                                         ; $61d6: $91
    and l                                         ; $61d7: $a5
    adc d                                         ; $61d8: $8a
    rrca                                          ; $61d9: $0f
    rst $08                                       ; $61da: $cf
    ld de, $448a                                  ; $61db: $11 $8a $44
    cp a                                          ; $61de: $bf
    jp hl                                         ; $61df: $e9


    ccf                                           ; $61e0: $3f
    db $ed                                        ; $61e1: $ed
    add h                                         ; $61e2: $84
    ret                                           ; $61e3: $c9


    ld [c], a                                     ; $61e4: $e2
    rrca                                          ; $61e5: $0f
    ld l, a                                       ; $61e6: $6f
    dec de                                        ; $61e7: $1b
    ld e, a                                       ; $61e8: $5f
    ld de, $007f                                  ; $61e9: $11 $7f $00
    xor a                                         ; $61ec: $af
    ld [hl], e                                    ; $61ed: $73
    dec hl                                        ; $61ee: $2b
    rst $20                                       ; $61ef: $e7
    adc l                                         ; $61f0: $8d
    rla                                           ; $61f1: $17
    sbc c                                         ; $61f2: $99
    pop de                                        ; $61f3: $d1
    jr nc, @+$19                                  ; $61f4: $30 $17

    ld [hl], h                                    ; $61f6: $74
    ld h, a                                       ; $61f7: $67
    sub e                                         ; $61f8: $93
    rla                                           ; $61f9: $17
    ld a, e                                       ; $61fa: $7b
    pop de                                        ; $61fb: $d1
    or h                                          ; $61fc: $b4
    ld [$a3bd], sp                                ; $61fd: $08 $bd $a3
    call nz, Call_04a_6f1f                        ; $6200: $c4 $1f $6f
    ld a, l                                       ; $6203: $7d
    dec c                                         ; $6204: $0d
    sbc d                                         ; $6205: $9a
    cp [hl]                                       ; $6206: $be
    sub e                                         ; $6207: $93
    dec l                                         ; $6208: $2d
    ld c, l                                       ; $6209: $4d
    jr z, jr_04a_61a3                             ; $620a: $28 $97

    ld l, $f6                                     ; $620c: $2e $f6
    and d                                         ; $620e: $a2
    ld l, c                                       ; $620f: $69
    ld de, $477a                                  ; $6210: $11 $7a $47
    ld e, l                                       ; $6213: $5d
    inc l                                         ; $6214: $2c
    ld [hl-], a                                   ; $6215: $32
    and e                                         ; $6216: $a3
    ld a, c                                       ; $6217: $79
    db $e3                                        ; $6218: $e3
    ld b, l                                       ; $6219: $45
    ld l, l                                       ; $621a: $6d
    ld c, $e5                                     ; $621b: $0e $e5
    adc d                                         ; $621d: $8a
    and b                                         ; $621e: $a0
    xor c                                         ; $621f: $a9
    ld sp, $4b90                                  ; $6220: $31 $90 $4b
    inc l                                         ; $6223: $2c
    adc e                                         ; $6224: $8b
    ccf                                           ; $6225: $3f
    nop                                           ; $6226: $00
    rst $08                                       ; $6227: $cf
    ld d, l                                       ; $6228: $55
    ld d, h                                       ; $6229: $54
    adc l                                         ; $622a: $8d
    ld [hl], b                                    ; $622b: $70
    db $e4                                        ; $622c: $e4
    sub [hl]                                      ; $622d: $96
    db $fc                                        ; $622e: $fc
    push bc                                       ; $622f: $c5
    sbc [hl]                                      ; $6230: $9e
    inc hl                                        ; $6231: $23
    inc d                                         ; $6232: $14
    adc c                                         ; $6233: $89
    ld a, [hl]                                    ; $6234: $7e
    db $d3                                        ; $6235: $d3
    ld a, a                                       ; $6236: $7f
    ld [de], a                                    ; $6237: $12
    ld a, a                                       ; $6238: $7f
    nop                                           ; $6239: $00
    rst $10                                       ; $623a: $d7
    db $e4                                        ; $623b: $e4
    add h                                         ; $623c: $84
    and $4c                                       ; $623d: $e6 $4c
    ld l, e                                       ; $623f: $6b
    ld c, e                                       ; $6240: $4b
    jr nc, jr_04a_6284                            ; $6241: $30 $41

    ld h, e                                       ; $6243: $63
    jr nc, jr_04a_62b5                            ; $6244: $30 $6f

    cp h                                          ; $6246: $bc
    rst $30                                       ; $6247: $f7
    ld c, [hl]                                    ; $6248: $4e
    and $7d                                       ; $6249: $e6 $7d
    add hl, bc                                    ; $624b: $09
    pop hl                                        ; $624c: $e1
    pop hl                                        ; $624d: $e1
    jp nz, $c456                                  ; $624e: $c2 $56 $c4

    ld [hl], e                                    ; $6251: $73
    ld c, e                                       ; $6252: $4b
    ld a, [$3353]                                 ; $6253: $fa $53 $33
    ld a, $00                                     ; $6256: $3e $00
    sub a                                         ; $6258: $97
    ld b, [hl]                                    ; $6259: $46
    inc h                                         ; $625a: $24
    and $62                                       ; $625b: $e6 $62
    ld h, c                                       ; $625d: $61
    ld a, c                                       ; $625e: $79
    xor b                                         ; $625f: $a8
    ld d, $74                                     ; $6260: $16 $74
    and b                                         ; $6262: $a0
    jp c, $2c91                                   ; $6263: $da $91 $2c

    cp $00                                        ; $6266: $fe $00
    cpl                                           ; $6268: $2f
    sub [hl]                                      ; $6269: $96
    rla                                           ; $626a: $17
    ld a, h                                       ; $626b: $7c
    rst $20                                       ; $626c: $e7
    or h                                          ; $626d: $b4
    ret nc                                        ; $626e: $d0

    pop de                                        ; $626f: $d1
    ret nc                                        ; $6270: $d0

    push bc                                       ; $6271: $c5
    ld e, [hl]                                    ; $6272: $5e
    inc [hl]                                      ; $6273: $34
    add d                                         ; $6274: $82
    ld d, a                                       ; $6275: $57
    rst $00                                       ; $6276: $c7
    rlca                                          ; $6277: $07
    sub a                                         ; $6278: $97
    push hl                                       ; $6279: $e5
    adc c                                         ; $627a: $89
    ld e, d                                       ; $627b: $5a
    push bc                                       ; $627c: $c5
    sub c                                         ; $627d: $91
    sbc c                                         ; $627e: $99
    sbc [hl]                                      ; $627f: $9e
    or h                                          ; $6280: $b4
    sbc h                                         ; $6281: $9c
    ld d, b                                       ; $6282: $50
    add b                                         ; $6283: $80

jr_04a_6284:
    sbc c                                         ; $6284: $99
    ld c, l                                       ; $6285: $4d
    pop af                                        ; $6286: $f1
    rlca                                          ; $6287: $07
    cpl                                           ; $6288: $2f
    ld h, c                                       ; $6289: $61
    ld a, c                                       ; $628a: $79
    adc d                                         ; $628b: $8a
    ccf                                           ; $628c: $3f
    dec [hl]                                      ; $628d: $35
    db $e3                                        ; $628e: $e3
    db $ed                                        ; $628f: $ed
    ld c, c                                       ; $6290: $49
    res 0, l                                      ; $6291: $cb $85
    push hl                                       ; $6293: $e5
    add l                                         ; $6294: $85
    adc l                                         ; $6295: $8d
    xor d                                         ; $6296: $aa
    dec d                                         ; $6297: $15
    dec de                                        ; $6298: $1b
    dec [hl]                                      ; $6299: $35
    db $e3                                        ; $629a: $e3
    inc bc                                        ; $629b: $03
    ld d, a                                       ; $629c: $57
    xor e                                         ; $629d: $ab
    ld a, [hl]                                    ; $629e: $7e
    ld a, d                                       ; $629f: $7a
    ld c, e                                       ; $62a0: $4b
    xor c                                         ; $62a1: $a9
    ld h, $68                                     ; $62a2: $26 $68
    inc c                                         ; $62a4: $0c
    ld b, h                                       ; $62a5: $44
    cp h                                          ; $62a6: $bc
    ld c, e                                       ; $62a7: $4b
    ld b, a                                       ; $62a8: $47
    inc h                                         ; $62a9: $24
    xor d                                         ; $62aa: $aa
    add [hl]                                      ; $62ab: $86
    inc e                                         ; $62ac: $1c
    pop de                                        ; $62ad: $d1
    call z, $be72                                 ; $62ae: $cc $72 $be
    db $d3                                        ; $62b1: $d3
    ld b, l                                       ; $62b2: $45
    adc a                                         ; $62b3: $8f
    add hl, bc                                    ; $62b4: $09

jr_04a_62b5:
    and [hl]                                      ; $62b5: $a6
    ret c                                         ; $62b6: $d8

    inc l                                         ; $62b7: $2c
    push bc                                       ; $62b8: $c5
    rra                                           ; $62b9: $1f
    ld l, a                                       ; $62ba: $6f
    dec de                                        ; $62bb: $1b
    ld e, a                                       ; $62bc: $5f
    reti                                          ; $62bd: $d9


    ld d, l                                       ; $62be: $55
    db $e3                                        ; $62bf: $e3
    ld c, c                                       ; $62c0: $49
    res 0, l                                      ; $62c1: $cb $85
    push de                                       ; $62c3: $d5
    adc l                                         ; $62c4: $8d
    call z, $12f4                                 ; $62c5: $cc $f4 $12
    set 4, d                                      ; $62c8: $cb $e2
    rrca                                          ; $62ca: $0f
    rst $10                                       ; $62cb: $d7
    db $e4                                        ; $62cc: $e4
    add h                                         ; $62cd: $84
    and $4c                                       ; $62ce: $e6 $4c
    ld l, e                                       ; $62d0: $6b
    ld c, e                                       ; $62d1: $4b
    jr nc, jr_04a_6315                            ; $62d2: $30 $41

    ld h, e                                       ; $62d4: $63
    jr nc, @+$71                                  ; $62d5: $30 $6f

    cp h                                          ; $62d7: $bc
    or b                                          ; $62d8: $b0
    cp h                                          ; $62d9: $bc
    call nz, $def2                                ; $62da: $c4 $f2 $de
    dec sp                                        ; $62dd: $3b
    sbc c                                         ; $62de: $99
    rst $30                                       ; $62df: $f7
    dec h                                         ; $62e0: $25
    add h                                         ; $62e1: $84
    add a                                         ; $62e2: $87
    ld b, e                                       ; $62e3: $43
    dec d                                         ; $62e4: $15
    rra                                           ; $62e5: $1f
    rst $08                                       ; $62e6: $cf
    ld d, l                                       ; $62e7: $55
    ld d, h                                       ; $62e8: $54
    adc l                                         ; $62e9: $8d
    ld [hl], b                                    ; $62ea: $70
    db $e4                                        ; $62eb: $e4
    sub [hl]                                      ; $62ec: $96
    ld a, h                                       ; $62ed: $7c
    ld a, h                                       ; $62ee: $7c
    nop                                           ; $62ef: $00
    ld d, a                                       ; $62f0: $57
    dec l                                         ; $62f1: $2d
    push hl                                       ; $62f2: $e5
    add d                                         ; $62f3: $82
    ld e, [hl]                                    ; $62f4: $5e
    db $ec                                        ; $62f5: $ec
    jp nc, $c488                                  ; $62f6: $d2 $88 $c4

    call nz, $eb7b                                ; $62f9: $c4 $7b $eb
    ld l, e                                       ; $62fc: $6b
    ret nc                                        ; $62fd: $d0

    db $f4                                        ; $62fe: $f4
    dec bc                                        ; $62ff: $0b
    call z, Call_04a_6168                         ; $6300: $cc $68 $61
    dec b                                         ; $6303: $05
    and c                                         ; $6304: $a1
    cp c                                          ; $6305: $b9
    ret nz                                        ; $6306: $c0

    pop de                                        ; $6307: $d1
    ld a, [de]                                    ; $6308: $1a
    cp e                                          ; $6309: $bb
    ld [$8295], sp                                ; $630a: $08 $95 $82
    add a                                         ; $630d: $87
    ret c                                         ; $630e: $d8

    ld e, h                                       ; $630f: $5c
    call nc, Call_04a_40d2                        ; $6310: $d4 $d2 $40
    or l                                          ; $6313: $b5
    inc hl                                        ; $6314: $23

jr_04a_6315:
    db $e3                                        ; $6315: $e3
    inc bc                                        ; $6316: $03

Jump_04a_6317:
    ld d, a                                       ; $6317: $57
    xor e                                         ; $6318: $ab
    ld a, [hl]                                    ; $6319: $7e
    ld a, d                                       ; $631a: $7a
    ld c, e                                       ; $631b: $4b
    xor c                                         ; $631c: $a9
    ld h, $68                                     ; $631d: $26 $68
    inc c                                         ; $631f: $0c
    ld b, h                                       ; $6320: $44
    cp h                                          ; $6321: $bc
    rst $10                                       ; $6322: $d7
    call z, Call_04a_4a6d                         ; $6323: $cc $6d $4a
    ld l, l                                       ; $6326: $6d
    adc $69                                       ; $6327: $ce $69
    ld h, [hl]                                    ; $6329: $66
    add hl, sp                                    ; $632a: $39
    rst $18                                       ; $632b: $df
    jp hl                                         ; $632c: $e9


    and d                                         ; $632d: $a2
    rst $00                                       ; $632e: $c7
    inc b                                         ; $632f: $04
    ld d, e                                       ; $6330: $53
    ld l, h                                       ; $6331: $6c
    sub [hl]                                      ; $6332: $96
    ld [c], a                                     ; $6333: $e2
    rrca                                          ; $6334: $0f
    xor a                                         ; $6335: $af
    sbc c                                         ; $6336: $99
    db $db                                        ; $6337: $db
    sub h                                         ; $6338: $94
    jp c, $d39c                                   ; $6339: $da $9c $d3

    sub l                                         ; $633c: $95
    ld e, l                                       ; $633d: $5d
    dec [hl]                                      ; $633e: $35
    ld e, $aa                                     ; $633f: $1e $aa
    push hl                                       ; $6341: $e5
    rlca                                          ; $6342: $07
    dec hl                                        ; $6343: $2b
    add c                                         ; $6344: $81
    jp nc, $e5bc                                  ; $6345: $d2 $bc $e5

    sbc [hl]                                      ; $6348: $9e
    inc hl                                        ; $6349: $23
    inc d                                         ; $634a: $14
    adc c                                         ; $634b: $89
    ld a, [hl]                                    ; $634c: $7e
    db $d3                                        ; $634d: $d3
    ld a, a                                       ; $634e: $7f
    adc d                                         ; $634f: $8a
    rrca                                          ; $6350: $0f
    sub a                                         ; $6351: $97
    push hl                                       ; $6352: $e5
    and c                                         ; $6353: $a1
    sbc d                                         ; $6354: $9a
    ld l, c                                       ; $6355: $69
    db $dd                                        ; $6356: $dd
    ret z                                         ; $6357: $c8

    ld c, h                                       ; $6358: $4c
    cpl                                           ; $6359: $2f
    jp nz, $a720                                  ; $635a: $c2 $20 $a7

    ldh [$a1], a                                  ; $635d: $e0 $a1
    and e                                         ; $635f: $a3
    ld a, l                                       ; $6360: $7d
    cp h                                          ; $6361: $bc
    ld l, e                                       ; $6362: $6b
    ld [hl], d                                    ; $6363: $72
    and c                                         ; $6364: $a1
    ld sp, hl                                     ; $6365: $f9
    push hl                                       ; $6366: $e5
    rlca                                          ; $6367: $07
    dec bc                                        ; $6368: $0b
    adc l                                         ; $6369: $8d
    ld a, h                                       ; $636a: $7c
    ld l, c                                       ; $636b: $69
    pop de                                        ; $636c: $d1
    cpl                                           ; $636d: $2f
    scf                                           ; $636e: $37
    rlca                                          ; $636f: $07
    pop de                                        ; $6370: $d1
    rla                                           ; $6371: $17
    ld c, d                                       ; $6372: $4a
    call Call_04a_68fd                            ; $6373: $cd $fd $68
    add c                                         ; $6376: $81
    and e                                         ; $6377: $a3
    dec [hl]                                      ; $6378: $35
    halt                                          ; $6379: $76
    ld e, h                                       ; $637a: $5c
    ret nc                                        ; $637b: $d0

    inc e                                         ; $637c: $1c
    ld [hl], a                                    ; $637d: $77
    pop hl                                        ; $637e: $e1
    ld [hl], a                                    ; $637f: $77
    ld a, h                                       ; $6380: $7c
    ld [hl], e                                    ; $6381: $73
    ld e, $3b                                     ; $6382: $1e $3b
    ld [hl], e                                    ; $6384: $73
    ld a, a                                       ; $6385: $7f
    ld a, [$00f8]                                 ; $6386: $fa $f8 $00
    ld c, a                                       ; $6389: $4f
    ld l, d                                       ; $638a: $6a
    or l                                          ; $638b: $b5
    and b                                         ; $638c: $a0
    di                                            ; $638d: $f3
    add $0b                                       ; $638e: $c6 $0b
    call $d40f                                    ; $6390: $cd $0f $d4
    sbc e                                         ; $6393: $9b
    push hl                                       ; $6394: $e5
    push bc                                       ; $6395: $c5
    ld b, d                                       ; $6396: $42
    di                                            ; $6397: $f3
    cp [hl]                                       ; $6398: $be
    cp c                                          ; $6399: $b9
    ld d, e                                       ; $639a: $53
    sub a                                         ; $639b: $97
    rra                                           ; $639c: $1f
    call z, $f56d                                 ; $639d: $cc $6d $f5
    ld c, d                                       ; $63a0: $4a
    and b                                         ; $63a1: $a0
    inc [hl]                                      ; $63a2: $34
    or a                                          ; $63a3: $b7
    and h                                         ; $63a4: $a4
    ccf                                           ; $63a5: $3f
    dec [hl]                                      ; $63a6: $35
    db $e3                                        ; $63a7: $e3
    inc bc                                        ; $63a8: $03
    ld d, a                                       ; $63a9: $57
    xor e                                         ; $63aa: $ab
    ld a, [hl]                                    ; $63ab: $7e
    ld a, d                                       ; $63ac: $7a
    ld c, e                                       ; $63ad: $4b
    xor c                                         ; $63ae: $a9
    ld h, $68                                     ; $63af: $26 $68
    inc c                                         ; $63b1: $0c
    ld b, h                                       ; $63b2: $44
    cp h                                          ; $63b3: $bc
    rst $30                                       ; $63b4: $f7
    ld c, [hl]                                    ; $63b5: $4e
    and $7d                                       ; $63b6: $e6 $7d
    add hl, bc                                    ; $63b8: $09
    pop hl                                        ; $63b9: $e1
    pop hl                                        ; $63ba: $e1
    call z, $be72                                 ; $63bb: $cc $72 $be
    db $d3                                        ; $63be: $d3
    ld b, l                                       ; $63bf: $45
    adc a                                         ; $63c0: $8f
    add hl, bc                                    ; $63c1: $09
    and [hl]                                      ; $63c2: $a6
    ret c                                         ; $63c3: $d8

    inc l                                         ; $63c4: $2c
    db $e3                                        ; $63c5: $e3
    cp l                                          ; $63c6: $bd
    push af                                       ; $63c7: $f5
    ccf                                           ; $63c8: $3f
    call $e777                                    ; $63c9: $cd $77 $e7
    cp d                                          ; $63cc: $ba
    ld c, l                                       ; $63cd: $4d
    rst $18                                       ; $63ce: $df
    ret                                           ; $63cf: $c9


    sub [hl]                                      ; $63d0: $96
    ld h, [hl]                                    ; $63d1: $66
    ldh a, [$90]                                  ; $63d2: $f0 $90
    ld c, e                                       ; $63d4: $4b
    xor e                                         ; $63d5: $ab
    sub [hl]                                      ; $63d6: $96
    ld h, [hl]                                    ; $63d7: $66
    or h                                          ; $63d8: $b4
    db $d3                                        ; $63d9: $d3
    daa                                           ; $63da: $27
    rst $08                                       ; $63db: $cf
    di                                            ; $63dc: $f3
    sbc l                                         ; $63dd: $9d
    adc c                                         ; $63de: $89
    ld a, h                                       ; $63df: $7c
    dec [hl]                                      ; $63e0: $35
    ld h, $50                                     ; $63e1: $26 $50
    ld b, d                                       ; $63e3: $42
    ld h, l                                       ; $63e4: $65
    ld l, c                                       ; $63e5: $69
    and b                                         ; $63e6: $a0
    and a                                         ; $63e7: $a7
    sbc a                                         ; $63e8: $9f
    reti                                          ; $63e9: $d9


    sbc h                                         ; $63ea: $9c
    rst $38                                       ; $63eb: $ff
    sbc a                                         ; $63ec: $9f
    or $de                                        ; $63ed: $f6 $de
    ret                                           ; $63ef: $c9


    cp h                                          ; $63f0: $bc
    cpl                                           ; $63f1: $2f
    ld hl, $8c3c                                  ; $63f2: $21 $3c $8c
    rrca                                          ; $63f5: $0f
    ld l, a                                       ; $63f6: $6f
    ld [hl], a                                    ; $63f7: $77
    ld h, c                                       ; $63f8: $61
    dec b                                         ; $63f9: $05
    and c                                         ; $63fa: $a1

jr_04a_63fb:
    cp c                                          ; $63fb: $b9
    rrca                                          ; $63fc: $0f
    dec l                                         ; $63fd: $2d
    ld hl, sp-$32                                 ; $63fe: $f8 $ce
    ld b, b                                       ; $6400: $40
    xor c                                         ; $6401: $a9
    or d                                          ; $6402: $b2
    jp hl                                         ; $6403: $e9


    cpl                                           ; $6404: $2f
    halt                                          ; $6405: $76
    ld l, c                                       ; $6406: $69
    ld b, h                                       ; $6407: $44
    ld h, d                                       ; $6408: $62
    ld l, $d6                                     ; $6409: $2e $d6
    ld e, h                                       ; $640b: $5c
    ret nc                                        ; $640c: $d0

    add l                                         ; $640d: $85
    dec d                                         ; $640e: $15
    ld a, b                                       ; $640f: $78
    ccf                                           ; $6410: $3f

jr_04a_6411:
    push de                                       ; $6411: $d5
    jr nc, jr_04a_63fb                            ; $6412: $30 $e7

    dec sp                                        ; $6414: $3b
    push bc                                       ; $6415: $c5
    xor l                                         ; $6416: $ad
    inc e                                         ; $6417: $1c
    xor b                                         ; $6418: $a8
    ld [hl], $6e                                  ; $6419: $36 $6e
    adc d                                         ; $641b: $8a
    ccf                                           ; $641c: $3f
    nop                                           ; $641d: $00
    ld d, a                                       ; $641e: $57
    dec l                                         ; $641f: $2d
    push hl                                       ; $6420: $e5
    add d                                         ; $6421: $82
    xor $54                                       ; $6422: $ee $54
    ld a, l                                       ; $6424: $7d
    or c                                          ; $6425: $b1
    ret z                                         ; $6426: $c8

    adc h                                         ; $6427: $8c
    sub [hl]                                      ; $6428: $96
    ld e, b                                       ; $6429: $58
    ld e, [hl]                                    ; $642a: $5e
    ld e, b                                       ; $642b: $58
    ld b, a                                       ; $642c: $47
    ld e, l                                       ; $642d: $5d
    db $ec                                        ; $642e: $ec
    jp nc, $c488                                  ; $642f: $d2 $88 $c4

    call nz, $c97b                                ; $6432: $c4 $7b $c9
    reti                                          ; $6435: $d9


    reti                                          ; $6436: $d9


    pop de                                        ; $6437: $d1
    cp d                                          ; $6438: $ba
    cp c                                          ; $6439: $b9
    ld [hl], e                                    ; $643a: $73
    rst $20                                       ; $643b: $e7
    ld a, [hl]                                    ; $643c: $7e
    dec c                                         ; $643d: $0d
    sbc d                                         ; $643e: $9a
    ld a, [hl]                                    ; $643f: $7e
    add c                                         ; $6440: $81
    add hl, de                                    ; $6441: $19
    dec l                                         ; $6442: $2d
    ccf                                           ; $6443: $3f
    jr @+$6a                                      ; $6444: $18 $68

    call nc, $ed2c                                ; $6446: $d4 $2c $ed
    adc h                                         ; $6449: $8c
    ld b, c                                       ; $644a: $41
    add $07                                       ; $644b: $c6 $07
    cpl                                           ; $644d: $2f
    call nc, $9d91                                ; $644e: $d4 $91 $9d
    ld [hl], $63                                  ; $6451: $36 $63
    push bc                                       ; $6453: $c5
    dec e                                         ; $6454: $1d
    db $f4                                        ; $6455: $f4
    ld bc, $b826                                  ; $6456: $01 $26 $b8
    ret c                                         ; $6459: $d8

    dec hl                                        ; $645a: $2b
    sbc a                                         ; $645b: $9f
    cp c                                          ; $645c: $b9
    inc d                                         ; $645d: $14
    rst $28                                       ; $645e: $ef
    ld b, l                                       ; $645f: $45
    inc sp                                        ; $6460: $33
    sbc d                                         ; $6461: $9a
    ld b, a                                       ; $6462: $47
    sbc $c9                                       ; $6463: $de $c9
    call nc, $ba7e                                ; $6465: $d4 $7e $ba
    and l                                         ; $6468: $a5
    ld [$5f03], sp                                ; $6469: $08 $03 $5f
    adc l                                         ; $646c: $8d
    add c                                         ; $646d: $81
    adc h                                         ; $646e: $8c
    rrca                                          ; $646f: $0f
    ld l, a                                       ; $6470: $6f
    ld a, l                                       ; $6471: $7d
    dec c                                         ; $6472: $0d
    sbc d                                         ; $6473: $9a
    ld a, [hl]                                    ; $6474: $7e
    add c                                         ; $6475: $81
    add hl, de                                    ; $6476: $19
    ld c, l                                       ; $6477: $4d
    jr z, jr_04a_6411                             ; $6478: $28 $97

    ld l, $76                                     ; $647a: $2e $76
    ld l, c                                       ; $647c: $69
    ld b, h                                       ; $647d: $44
    ld h, d                                       ; $647e: $62
    or $ca                                        ; $647f: $f6 $ca
    ld h, a                                       ; $6481: $67
    ld l, $c5                                     ; $6482: $2e $c5
    ld a, e                                       ; $6484: $7b
    and e                                         ; $6485: $a3
    add hl, de                                    ; $6486: $19
    ld h, c                                       ; $6487: $61
    ld a, [hl+]                                   ; $6488: $2a
    xor $c5                                       ; $6489: $ee $c5
    ld c, h                                       ; $648b: $4c
    xor e                                         ; $648c: $ab
    dec b                                         ; $648d: $05
    ld e, l                                       ; $648e: $5d
    ld l, c                                       ; $648f: $69
    sbc $72                                       ; $6490: $de $72
    ld sp, hl                                     ; $6492: $f9
    pop bc                                        ; $6493: $c1
    add h                                         ; $6494: $84
    ld h, $c7                                     ; $6495: $26 $c7
    rlca                                          ; $6497: $07
    cpl                                           ; $6498: $2f
    ld a, l                                       ; $6499: $7d
    daa                                           ; $649a: $27
    adc [hl]                                      ; $649b: $8e
    db $e3                                        ; $649c: $e3
    and c                                         ; $649d: $a1
    ld e, h                                       ; $649e: $5c
    ld e, b                                       ; $649f: $58
    ld h, c                                       ; $64a0: $61
    db $fc                                        ; $64a1: $fc
    pop hl                                        ; $64a2: $e1
    pop hl                                        ; $64a3: $e1
    ld a, [bc]                                    ; $64a4: $0a
    rrca                                          ; $64a5: $0f
    ld a, c                                       ; $64a6: $79
    ld de, $3906                                  ; $64a7: $11 $06 $39
    and c                                         ; $64aa: $a1
    adc d                                         ; $64ab: $8a
    rlca                                          ; $64ac: $07
    ld [$32cd], a                                 ; $64ad: $ea $cd $32
    ld a, $00                                     ; $64b0: $3e $00
    sub a                                         ; $64b2: $97
    and [hl]                                      ; $64b3: $a6
    push af                                       ; $64b4: $f5
    cp a                                          ; $64b5: $bf
    ret c                                         ; $64b6: $d8

    and l                                         ; $64b7: $a5
    ld de, $8989                                  ; $64b8: $11 $89 $89
    rrca                                          ; $64bb: $0f
    rst $10                                       ; $64bc: $d7
    db $e4                                        ; $64bd: $e4
    adc $d8                                       ; $64be: $ce $d8
    ld a, c                                       ; $64c0: $79
    db $e3                                        ; $64c1: $e3
    dec b                                         ; $64c2: $05
    dec e                                         ; $64c3: $1d
    add sp, -$17                                  ; $64c4: $e8 $e9
    and a                                         ; $64c6: $a7
    sbc a                                         ; $64c7: $9f
    ret nc                                        ; $64c8: $d0

    db $e4                                        ; $64c9: $e4
    ld a, b                                       ; $64ca: $78
    rst $28                                       ; $64cb: $ef
    sbc c                                         ; $64cc: $99
    ld e, $ca                                     ; $64cd: $1e $ca
    dec b                                         ; $64cf: $05
    dec e                                         ; $64d0: $1d
    ld l, b                                       ; $64d1: $68
    or $dc                                        ; $64d2: $f6 $dc
    cp h                                          ; $64d4: $bc
    ld [hl], d                                    ; $64d5: $72
    nop                                           ; $64d6: $00
    rst $10                                       ; $64d7: $d7
    db $ed                                        ; $64d8: $ed
    ld h, d                                       ; $64d9: $62
    add b                                         ; $64da: $80
    call z, $f880                                 ; $64db: $cc $80 $f8
    inc bc                                        ; $64de: $03
    ld c, a                                       ; $64df: $4f
    ld l, d                                       ; $64e0: $6a
    dec d                                         ; $64e1: $15
    ld d, h                                       ; $64e2: $54
    ret nc                                        ; $64e3: $d0

    ld e, b                                       ; $64e4: $58
    ld de, $2c5f                                  ; $64e5: $11 $5f $2c
    sbc l                                         ; $64e8: $9d
    cp c                                          ; $64e9: $b9
    cp a                                          ; $64ea: $bf
    ld a, d                                       ; $64eb: $7a
    ld b, c                                       ; $64ec: $41
    rla                                           ; $64ed: $17
    ld [hl], h                                    ; $64ee: $74
    xor [hl]                                      ; $64ef: $ae
    add hl, hl                                    ; $64f0: $29
    ld e, [hl]                                    ; $64f1: $5e
    sbc e                                         ; $64f2: $9b
    ld d, e                                       ; $64f3: $53
    db $ec                                        ; $64f4: $ec
    ret z                                         ; $64f5: $c8

    add hl, bc                                    ; $64f6: $09
    push hl                                       ; $64f7: $e5
    ld d, d                                       ; $64f8: $52
    ld a, h                                       ; $64f9: $7c
    nop                                           ; $64fa: $00
    ld d, a                                       ; $64fb: $57
    dec l                                         ; $64fc: $2d
    push hl                                       ; $64fd: $e5
    sbc h                                         ; $64fe: $9c
    sbc l                                         ; $64ff: $9d
    xor d                                         ; $6500: $aa
    cpl                                           ; $6501: $2f
    ld d, $99                                     ; $6502: $16 $99
    or a                                          ; $6504: $b7
    xor b                                         ; $6505: $a8
    ld a, e                                       ; $6506: $7b
    ld b, l                                       ; $6507: $45
    ld h, e                                       ; $6508: $63
    and b                                         ; $6509: $a0
    cp b                                          ; $650a: $b8
    inc d                                         ; $650b: $14
    rra                                           ; $650c: $1f
    rst $10                                       ; $650d: $d7
    dec sp                                        ; $650e: $3b
    jp hl                                         ; $650f: $e9


    inc h                                         ; $6510: $24
    rst $08                                       ; $6511: $cf
    inc [hl]                                      ; $6512: $34
    ld h, e                                       ; $6513: $63
    ldh [$27], a                                  ; $6514: $e0 $27
    ld h, b                                       ; $6516: $60
    or b                                          ; $6517: $b0
    xor b                                         ; $6518: $a8
    db $d3                                        ; $6519: $d3
    sub [hl]                                      ; $651a: $96
    ld b, b                                       ; $651b: $40
    ret                                           ; $651c: $c9


    rra                                           ; $651d: $1f
    dec [hl]                                      ; $651e: $35
    db $e3                                        ; $651f: $e3
    inc bc                                        ; $6520: $03
    cpl                                           ; $6521: $2f
    call nc, Call_000_0b91                        ; $6522: $d4 $91 $0b
    cp d                                          ; $6525: $ba
    ld d, e                                       ; $6526: $53
    ld c, e                                       ; $6527: $4b
    xor e                                         ; $6528: $ab
    db $db                                        ; $6529: $db
    inc e                                         ; $652a: $1c
    ld [hl], a                                    ; $652b: $77
    ld h, a                                       ; $652c: $67
    ld l, h                                       ; $652d: $6c
    add $07                                       ; $652e: $c6 $07
    rst $10                                       ; $6530: $d7
    dec sp                                        ; $6531: $3b
    ld c, c                                       ; $6532: $49
    jr jr_04a_6535                                ; $6533: $18 $00

jr_04a_6535:
    sbc $13                                       ; $6535: $de $13
    rst $30                                       ; $6537: $f7
    xor $75                                       ; $6538: $ee $75
    sub h                                         ; $653a: $94
    or d                                          ; $653b: $b2
    ld e, d                                       ; $653c: $5a
    adc c                                         ; $653d: $89
    ccf                                           ; $653e: $3f
    nop                                           ; $653f: $00
    rst $10                                       ; $6540: $d7
    dec sp                                        ; $6541: $3b
    ld c, c                                       ; $6542: $49
    jr jr_04a_6545                                ; $6543: $18 $00

jr_04a_6545:
    ld a, [hl]                                    ; $6545: $7e
    db $ec                                        ; $6546: $ec
    nop                                           ; $6547: $00
    rst $10                                       ; $6548: $d7
    dec sp                                        ; $6549: $3b
    and c                                         ; $654a: $a1
    ret                                           ; $654b: $c9


    dec bc                                        ; $654c: $0b
    xor e                                         ; $654d: $ab
    dec de                                        ; $654e: $1b
    sbc c                                         ; $654f: $99
    jp hl                                         ; $6550: $e9


    add c                                         ; $6551: $81
    ld h, [hl]                                    ; $6552: $66
    rst $08                                       ; $6553: $cf
    ld c, l                                       ; $6554: $4d
    pop af                                        ; $6555: $f1
    rlca                                          ; $6556: $07
    xor a                                         ; $6557: $af
    or e                                          ; $6558: $b3
    or c                                          ; $6559: $b1
    and e                                         ; $655a: $a3
    halt                                          ; $655b: $76
    rst $30                                       ; $655c: $f7
    sbc $44                                       ; $655d: $de $44
    ld h, $47                                     ; $655f: $26 $47
    ld sp, $3826                                  ; $6561: $31 $26 $38
    nop                                           ; $6564: $00
    ld l, a                                       ; $6565: $6f
    db $fd                                        ; $6566: $fd
    ld c, a                                       ; $6567: $4f
    and a                                         ; $6568: $a7
    ld [de], a                                    ; $6569: $12
    ld [hl], h                                    ; $656a: $74
    nop                                           ; $656b: $00
    rst $10                                       ; $656c: $d7
    ld [de], a                                    ; $656d: $12
    ld d, b                                       ; $656e: $50
    dec a                                         ; $656f: $3d
    sbc $94                                       ; $6570: $de $94
    call c, $33dc                                 ; $6572: $dc $dc $33
    add hl, bc                                    ; $6575: $09
    rla                                           ; $6576: $17
    inc bc                                        ; $6577: $03
    rst $10                                       ; $6578: $d7
    rra                                           ; $6579: $1f
    xor d                                         ; $657a: $aa
    rst $00                                       ; $657b: $c7
    ld e, $cf                                     ; $657c: $1e $cf
    ld a, [hl]                                    ; $657e: $7e
    adc l                                         ; $657f: $8d
    ld a, a                                       ; $6580: $7f
    cpl                                           ; $6581: $2f
    ld a, [de]                                    ; $6582: $1a
    ret nz                                        ; $6583: $c0

    inc bc                                        ; $6584: $03
    rst $08                                       ; $6585: $cf
    ld a, [hl]                                    ; $6586: $7e
    adc l                                         ; $6587: $8d
    ld a, a                                       ; $6588: $7f
    ld l, a                                       ; $6589: $6f
    db $10                                        ; $658a: $10
    ld b, d                                       ; $658b: $42
    ld a, [de]                                    ; $658c: $1a
    pop hl                                        ; $658d: $e1
    adc [hl]                                      ; $658e: $8e
    ld a, [hl-]                                   ; $658f: $3a
    nop                                           ; $6590: $00
    xor a                                         ; $6591: $af
    ld b, e                                       ; $6592: $43
    push de                                       ; $6593: $d5
    ei                                            ; $6594: $fb
    sub b                                         ; $6595: $90
    jp nc, Jump_04a_7966                          ; $6596: $d2 $66 $79

    nop                                           ; $6599: $00
    cpl                                           ; $659a: $2f
    and c                                         ; $659b: $a1
    ld e, e                                       ; $659c: $5b
    ld [hl], e                                    ; $659d: $73
    ld c, $cf                                     ; $659e: $0e $cf
    sub b                                         ; $65a0: $90
    ld l, e                                       ; $65a1: $6b
    add h                                         ; $65a2: $84
    add hl, bc                                    ; $65a3: $09
    ld c, $6f                                     ; $65a4: $0e $6f
    ld a, l                                       ; $65a6: $7d
    dec c                                         ; $65a7: $0d
    sbc d                                         ; $65a8: $9a
    ld a, [hl]                                    ; $65a9: $7e
    adc c                                         ; $65aa: $89
    ld l, [hl]                                    ; $65ab: $6e
    call Call_000_0039                            ; $65ac: $cd $39 $00
    xor a                                         ; $65af: $af
    and e                                         ; $65b0: $a3
    sub h                                         ; $65b1: $94
    push de                                       ; $65b2: $d5
    ld [$2f00], a                                 ; $65b3: $ea $00 $2f
    call nc, $1e6d                                ; $65b6: $d4 $6d $1e
    cpl                                           ; $65b9: $2f
    ld a, [de]                                    ; $65ba: $1a
    ret nz                                        ; $65bb: $c0

    ld e, $cf                                     ; $65bc: $1e $cf
    sub e                                         ; $65be: $93
    pop bc                                        ; $65bf: $c1
    ld b, e                                       ; $65c0: $43
    ld a, $00                                     ; $65c1: $3e $00
    ld l, a                                       ; $65c3: $6f
    sub l                                         ; $65c4: $95
    ld a, h                                       ; $65c5: $7c
    ld a, h                                       ; $65c6: $7c
    nop                                           ; $65c7: $00
    ld c, a                                       ; $65c8: $4f
    dec [hl]                                      ; $65c9: $35
    ld l, h                                       ; $65ca: $6c
    ld a, d                                       ; $65cb: $7a
    inc b                                         ; $65cc: $04
    rlca                                          ; $65cd: $07
    cpl                                           ; $65ce: $2f
    ld a, [de]                                    ; $65cf: $1a
    adc b                                         ; $65d0: $88
    daa                                           ; $65d1: $27
    add hl, hl                                    ; $65d2: $29
    ld a, $00                                     ; $65d3: $3e $00
    cpl                                           ; $65d5: $2f
    ld a, [de]                                    ; $65d6: $1a
    adc b                                         ; $65d7: $88
    rst $20                                       ; $65d8: $e7
    sub d                                         ; $65d9: $92
    adc a                                         ; $65da: $8f
    rrca                                          ; $65db: $0f
    ld c, a                                       ; $65dc: $4f
    call c, $f77b                                 ; $65dd: $dc $7b $f7
    inc de                                        ; $65e0: $13
    rst $30                                       ; $65e1: $f7
    db $ed                                        ; $65e2: $ed
    nop                                           ; $65e3: $00
    sub a                                         ; $65e4: $97
    sub [hl]                                      ; $65e5: $96
    ld e, [hl]                                    ; $65e6: $5e
    pop bc                                        ; $65e7: $c1
    jp Jump_04a_6cdf                              ; $65e8: $c3 $df $6c


    adc $41                                       ; $65eb: $ce $41
    ld h, [hl]                                    ; $65ed: $66
    xor d                                         ; $65ee: $aa
    sub h                                         ; $65ef: $94
    call $571d                                    ; $65f0: $cd $1d $57
    ret                                           ; $65f3: $c9


    ld h, h                                       ; $65f4: $64
    inc sp                                        ; $65f5: $33
    ld [hl], h                                    ; $65f6: $74
    ret nc                                        ; $65f7: $d0

    rst $18                                       ; $65f8: $df
    dec d                                         ; $65f9: $15
    ld e, d                                       ; $65fa: $5a
    ld a, d                                       ; $65fb: $7a
    dec b                                         ; $65fc: $05
    rrca                                          ; $65fd: $0f
    ld a, a                                       ; $65fe: $7f
    or e                                          ; $65ff: $b3
    ld a, c                                       ; $6600: $79
    nop                                           ; $6601: $00
    sub a                                         ; $6602: $97
    rst $38                                       ; $6603: $ff
    add e                                         ; $6604: $83
    sub e                                         ; $6605: $93
    add hl, de                                    ; $6606: $19
    ld a, c                                       ; $6607: $79
    inc b                                         ; $6608: $04
    ld e, l                                       ; $6609: $5d
    ld l, b                                       ; $660a: $68
    jp hl                                         ; $660b: $e9


    dec d                                         ; $660c: $15
    inc a                                         ; $660d: $3c
    db $fc                                        ; $660e: $fc
    call Call_000_01e6                            ; $660f: $cd $e6 $01
    ld d, a                                       ; $6612: $57
    ret                                           ; $6613: $c9


    ld h, h                                       ; $6614: $64
    ld d, e                                       ; $6615: $53
    ld l, d                                       ; $6616: $6a
    ld [hl], e                                    ; $6617: $73
    ld c, [hl]                                    ; $6618: $4e

jr_04a_6619:
    ld [hl], a                                    ; $6619: $77
    add l                                         ; $661a: $85
    sub [hl]                                      ; $661b: $96
    ld e, [hl]                                    ; $661c: $5e
    pop bc                                        ; $661d: $c1
    jp Jump_04a_6cdf                              ; $661e: $c3 $df $6c


    ld e, $af                                     ; $6621: $1e $af
    rst $38                                       ; $6623: $ff
    ld b, d                                       ; $6624: $42

jr_04a_6625:
    push de                                       ; $6625: $d5
    ld e, l                                       ; $6626: $5d
    ld l, b                                       ; $6627: $68
    jp hl                                         ; $6628: $e9


    dec d                                         ; $6629: $15
    inc a                                         ; $662a: $3c
    db $fc                                        ; $662b: $fc
    call Call_000_01e6                            ; $662c: $cd $e6 $01
    ld l, a                                       ; $662f: $6f
    ld a, h                                       ; $6630: $7c
    or a                                          ; $6631: $b7
    ld l, c                                       ; $6632: $69
    ld b, [hl]                                    ; $6633: $46
    ld [$d0ae], a                                 ; $6634: $ea $ae $d0
    jp nc, Jump_04a_782b                          ; $6637: $d2 $2b $78

    ld hl, sp-$65                                 ; $663a: $f8 $9b
    call Call_04a_6f03                            ; $663c: $cd $03 $6f
    ld a, h                                       ; $663f: $7c
    or a                                          ; $6640: $b7
    and h                                         ; $6641: $a4
    ld hl, sp-$35                                 ; $6642: $f8 $cb
    cp e                                          ; $6644: $bb
    ld b, d                                       ; $6645: $42
    ld c, e                                       ; $6646: $4b
    xor a                                         ; $6647: $af
    ldh [$e1], a                                  ; $6648: $e0 $e1
    ld l, a                                       ; $664a: $6f
    ld [hl], $0f                                  ; $664b: $36 $0f
    xor a                                         ; $664d: $af
    jr c, jr_04a_6619                             ; $664e: $38 $c9

    sub c                                         ; $6650: $91
    jp Jump_000_266a                              ; $6651: $c3 $6a $26


    ld a, [hl-]                                   ; $6654: $3a
    sub a                                         ; $6655: $97
    cp c                                          ; $6656: $b9
    ld a, c                                       ; $6657: $79
    nop                                           ; $6658: $00
    xor a                                         ; $6659: $af
    jr c, jr_04a_6625                             ; $665a: $38 $c9

    sub c                                         ; $665c: $91
    jp Jump_000_00ea                              ; $665d: $c3 $ea $00


    sub a                                         ; $6660: $97
    rst $38                                       ; $6661: $ff
    add e                                         ; $6662: $83
    sub e                                         ; $6663: $93
    add hl, de                                    ; $6664: $19
    ld a, c                                       ; $6665: $79
    inc b                                         ; $6666: $04
    dec e                                         ; $6667: $1d

Call_04a_6668:
    db $e4                                        ; $6668: $e4
    inc h                                         ; $6669: $24
    ld b, a                                       ; $666a: $47
    ld c, $ab                                     ; $666b: $0e $ab
    inc bc                                        ; $666d: $03
    rst $08                                       ; $666e: $cf
    ld d, l                                       ; $666f: $55
    ld sp, $10b5                                  ; $6670: $31 $b5 $10
    ld [hl], a                                    ; $6673: $77
    pop hl                                        ; $6674: $e1
    xor a                                         ; $6675: $af
    ccf                                           ; $6676: $3f
    nop                                           ; $6677: $00
    ld l, a                                       ; $6678: $6f
    db $fd                                        ; $6679: $fd
    ld c, a                                       ; $667a: $4f
    ld c, h                                       ; $667b: $4c
    dec d                                         ; $667c: $15
    adc c                                         ; $667d: $89
    xor d                                         ; $667e: $aa
    ld sp, $1d90                                  ; $667f: $31 $90 $1d
    db $e4                                        ; $6682: $e4
    inc h                                         ; $6683: $24
    ld b, a                                       ; $6684: $47
    ld c, $ab                                     ; $6685: $0e $ab
    inc bc                                        ; $6687: $03
    sub a                                         ; $6688: $97
    rra                                           ; $6689: $1f
    ld [hl], h                                    ; $668a: $74
    pop hl                                        ; $668b: $e1
    xor a                                         ; $668c: $af
    ccf                                           ; $668d: $3f
    nop                                           ; $668e: $00
    cpl                                           ; $668f: $2f
    ld b, e                                       ; $6690: $43
    adc h                                         ; $6691: $8c
    sub c                                         ; $6692: $91
    jp hl                                         ; $6693: $e9


    ld c, $72                                     ; $6694: $0e $72
    sub d                                         ; $6696: $92
    inc hl                                        ; $6697: $23
    add a                                         ; $6698: $87
    push de                                       ; $6699: $d5
    ld bc, $f5cf                                  ; $669a: $01 $cf $f5
    ld h, h                                       ; $669d: $64
    and $e7                                       ; $669e: $e6 $e7
    jr nz, jr_04a_66d5                            ; $66a0: $20 $33

    ld d, l                                       ; $66a2: $55
    jp z, Jump_000_01e6                           ; $66a3: $ca $e6 $01

    rst $08                                       ; $66a6: $cf
    push af                                       ; $66a7: $f5
    db $f4                                        ; $66a8: $f4
    ld a, a                                       ; $66a9: $7f
    xor $54                                       ; $66aa: $ee $54
    sub d                                         ; $66ac: $92
    and b                                         ; $66ad: $a0
    daa                                           ; $66ae: $27
    inc sp                                        ; $66af: $33
    ld a, a                                       ; $66b0: $7f
    nop                                           ; $66b1: $00
    ld l, a                                       ; $66b2: $6f
    ld h, e                                       ; $66b3: $63
    ld [hl], d                                    ; $66b4: $72
    add hl, hl                                    ; $66b5: $29
    or d                                          ; $66b6: $b2
    db $e4                                        ; $66b7: $e4
    ld [$9703], a                                 ; $66b8: $ea $03 $97
    rst $38                                       ; $66bb: $ff
    add e                                         ; $66bc: $83
    sub e                                         ; $66bd: $93
    add hl, de                                    ; $66be: $19
    ld a, c                                       ; $66bf: $79
    inc b                                         ; $66c0: $04
    dec sp                                        ; $66c1: $3b
    sub l                                         ; $66c2: $95
    inc h                                         ; $66c3: $24
    add sp, -$37                                  ; $66c4: $e8 $c9
    call z, $971f                                 ; $66c6: $cc $1f $97
    rst $38                                       ; $66c9: $ff
    add e                                         ; $66ca: $83
    sub e                                         ; $66cb: $93
    add hl, de                                    ; $66cc: $19
    ld a, c                                       ; $66cd: $79
    inc b                                         ; $66ce: $04
    db $dd                                        ; $66cf: $dd
    add hl, bc                                    ; $66d0: $09
    sub e                                         ; $66d1: $93
    ld c, e                                       ; $66d2: $4b
    sub c                                         ; $66d3: $91
    dec h                                         ; $66d4: $25

jr_04a_66d5:
    ld d, a                                       ; $66d5: $57
    rra                                           ; $66d6: $1f
    cpl                                           ; $66d7: $2f
    ld h, b                                       ; $66d8: $60
    ld h, [hl]                                    ; $66d9: $66
    ld [hl], e                                    ; $66da: $73

Call_04a_66db:
    and b                                         ; $66db: $a0
    daa                                           ; $66dc: $27
    inc sp                                        ; $66dd: $33
    ld a, a                                       ; $66de: $7f
    nop                                           ; $66df: $00
    xor a                                         ; $66e0: $af
    ld h, a                                       ; $66e1: $67
    db $eb                                        ; $66e2: $eb
    sbc h                                         ; $66e3: $9c
    inc d                                         ; $66e4: $14
    ld a, a                                       ; $66e5: $7f
    adc d                                         ; $66e6: $8a
    xor $8a                                       ; $66e7: $ee $8a
    inc l                                         ; $66e9: $2c
    cp c                                          ; $66ea: $b9
    ld a, [$af00]                                 ; $66eb: $fa $00 $af
    ld h, c                                       ; $66ee: $61
    and e                                         ; $66ef: $a3
    sbc c                                         ; $66f0: $99
    ret z                                         ; $66f1: $c8

    rst $38                                       ; $66f2: $ff
    and $01                                       ; $66f3: $e6 $01
    cpl                                           ; $66f5: $2f
    sub h                                         ; $66f6: $94
    sbc d                                         ; $66f7: $9a
    inc hl                                        ; $66f8: $23
    ld l, h                                       ; $66f9: $6c
    ld [hl], h                                    ; $66fa: $74
    nop                                           ; $66fb: $00
    rst $08                                       ; $66fc: $cf
    db $fd                                        ; $66fd: $fd
    ld a, [$42bb]                                 ; $66fe: $fa $bb $42
    daa                                           ; $6701: $27
    xor d                                         ; $6702: $aa
    ld b, e                                       ; $6703: $43
    ld [hl], a                                    ; $6704: $77
    ld de, $3a36                                  ; $6705: $11 $36 $3a
    nop                                           ; $6708: $00
    ld l, a                                       ; $6709: $6f
    or a                                          ; $670a: $b7
    and h                                         ; $670b: $a4
    ret c                                         ; $670c: $d8

    jp nc, $c22b                                  ; $670d: $d2 $2b $c2

    ld b, [hl]                                    ; $6710: $46
    rlca                                          ; $6711: $07
    rst $08                                       ; $6712: $cf
    sub e                                         ; $6713: $93
    pop bc                                        ; $6714: $c1
    ld b, e                                       ; $6715: $43
    ld h, $6c                                     ; $6716: $26 $6c
    ld [hl], h                                    ; $6718: $74
    nop                                           ; $6719: $00
    xor a                                         ; $671a: $af
    ld a, l                                       ; $671b: $7d
    pop bc                                        ; $671c: $c1
    ld [hl], c                                    ; $671d: $71
    inc d                                         ; $671e: $14
    ld [hl], a                                    ; $671f: $77
    add h                                         ; $6720: $84
    adc l                                         ; $6721: $8d
    ld c, $6f                                     ; $6722: $0e $6f
    ld d, l                                       ; $6724: $55
    ld sp, $2026                                  ; $6725: $31 $26 $20
    ld l, h                                       ; $6728: $6c
    ld [hl], h                                    ; $6729: $74
    nop                                           ; $672a: $00
    cpl                                           ; $672b: $2f
    sbc b                                         ; $672c: $98
    pop de                                        ; $672d: $d1
    cp c                                          ; $672e: $b9
    add hl, sp                                    ; $672f: $39
    rlca                                          ; $6730: $07
    sbc c                                         ; $6731: $99
    xor c                                         ; $6732: $a9
    ld d, d                                       ; $6733: $52
    ld [hl], $0f                                  ; $6734: $36 $0f
    rst $08                                       ; $6736: $cf
    push af                                       ; $6737: $f5
    db $f4                                        ; $6738: $f4
    or e                                          ; $6739: $b3
    db $d3                                        ; $673a: $d3
    ld h, [hl]                                    ; $673b: $66
    ld [hl], h                                    ; $673c: $74
    ld l, [hl]                                    ; $673d: $6e
    ld e, $97                                     ; $673e: $1e $97
    rst $38                                       ; $6740: $ff
    add e                                         ; $6741: $83
    sub e                                         ; $6742: $93
    add hl, de                                    ; $6743: $19
    ld a, c                                       ; $6744: $79
    inc b                                         ; $6745: $04
    sbc l                                         ; $6746: $9d
    ld [hl], $a3                                  ; $6747: $36 $a3
    ld [hl], e                                    ; $6749: $73
    di                                            ; $674a: $f3
    nop                                           ; $674b: $00
    ld l, a                                       ; $674c: $6f
    sub l                                         ; $674d: $95
    ld b, d                                       ; $674e: $42
    inc hl                                        ; $674f: $23
    rst $18                                       ; $6750: $df
    ld l, c                                       ; $6751: $69
    inc sp                                        ; $6752: $33
    ld a, [hl-]                                   ; $6753: $3a
    scf                                           ; $6754: $37
    rrca                                          ; $6755: $0f
    ld l, a                                       ; $6756: $6f
    db $fd                                        ; $6757: $fd
    ld c, a                                       ; $6758: $4f
    ld c, h                                       ; $6759: $4c
    dec d                                         ; $675a: $15
    adc c                                         ; $675b: $89
    xor d                                         ; $675c: $aa
    ld sp, $9d90                                  ; $675d: $31 $90 $9d
    ld [hl], $a3                                  ; $6760: $36 $a3
    ld [hl], e                                    ; $6762: $73
    di                                            ; $6763: $f3
    nop                                           ; $6764: $00
    ld l, a                                       ; $6765: $6f
    ld d, l                                       ; $6766: $55
    ld sp, $d026                                  ; $6767: $31 $26 $d0
    ld h, [hl]                                    ; $676a: $66
    ld [hl], h                                    ; $676b: $74
    ld l, [hl]                                    ; $676c: $6e
    ld e, $2f                                     ; $676d: $1e $2f
    ld b, e                                       ; $676f: $43
    adc h                                         ; $6770: $8c
    sub c                                         ; $6771: $91

Jump_04a_6772:
    jp hl                                         ; $6772: $e9


    ld c, [hl]                                    ; $6773: $4e
    sbc e                                         ; $6774: $9b
    pop de                                        ; $6775: $d1
    cp c                                          ; $6776: $b9
    ld a, c                                       ; $6777: $79
    nop                                           ; $6778: $00
    ld c, a                                       ; $6779: $4f
    dec [hl]                                      ; $677a: $35
    cp a                                          ; $677b: $bf
    ld b, a                                       ; $677c: $47
    ldh [$c3], a                                  ; $677d: $e0 $c3
    ld a, [$dce6]                                 ; $677f: $fa $e6 $dc
    rst $38                                       ; $6782: $ff
    ld l, c                                       ; $6783: $69
    ld a, [bc]                                    ; $6784: $0a
    ld e, $fe                                     ; $6785: $1e $fe
    xor a                                         ; $6787: $af
    rrca                                          ; $6788: $0f
    cpl                                           ; $6789: $2f
    ld d, h                                       ; $678a: $54
    pop de                                        ; $678b: $d1
    rst $38                                       ; $678c: $ff
    adc d                                         ; $678d: $8a
    ld c, e                                       ; $678e: $4b
    rlca                                          ; $678f: $07
    rst $08                                       ; $6790: $cf
    sub e                                         ; $6791: $93
    add e                                         ; $6792: $83
    cp [hl]                                       ; $6793: $be
    xor c                                         ; $6794: $a9
    ld sp, $7c50                                  ; $6795: $31 $50 $7c
    nop                                           ; $6798: $00
    cpl                                           ; $6799: $2f
    and a                                         ; $679a: $a7
    cpl                                           ; $679b: $2f
    add l                                         ; $679c: $85
    rst $18                                       ; $679d: $df
    pop af                                        ; $679e: $f1
    ld c, d                                       ; $679f: $4a
    sub l                                         ; $67a0: $95
    daa                                           ; $67a1: $27
    db $f4                                        ; $67a2: $f4
    call c, Call_04a_7148                         ; $67a3: $dc $48 $71
    xor e                                         ; $67a6: $ab
    rrca                                          ; $67a7: $0f
    xor a                                         ; $67a8: $af
    sbc b                                         ; $67a9: $98
    ld e, h                                       ; $67aa: $5c
    sbc d                                         ; $67ab: $9a
    ld b, l                                       ; $67ac: $45
    jp c, Jump_04a_6a84                           ; $67ad: $da $84 $6a

    ld [hl], l                                    ; $67b0: $75
    nop                                           ; $67b1: $00
    xor a                                         ; $67b2: $af
    ld [hl], e                                    ; $67b3: $73
    adc c                                         ; $67b4: $89
    sbc d                                         ; $67b5: $9a
    jp nc, $f88c                                  ; $67b6: $d2 $8c $f8

    nop                                           ; $67b9: $00
    xor a                                         ; $67ba: $af
    sub h                                         ; $67bb: $94
    and h                                         ; $67bc: $a4
    ld b, l                                       ; $67bd: $45
    ld c, l                                       ; $67be: $4d
    ld a, $00                                     ; $67bf: $3e $00
    ld l, a                                       ; $67c1: $6f
    inc d                                         ; $67c2: $14
    inc [hl]                                      ; $67c3: $34
    ld bc, $0e8a                                  ; $67c4: $01 $8a $0e
    ld l, a                                       ; $67c7: $6f
    inc hl                                        ; $67c8: $23
    nop                                           ; $67c9: $00
    call $b553                                    ; $67ca: $cd $53 $b5
    rst $30                                       ; $67cd: $f7
    ld h, h                                       ; $67ce: $64
    add hl, hl                                    ; $67cf: $29
    rrca                                          ; $67d0: $0f
    sub a                                         ; $67d1: $97
    rst $38                                       ; $67d2: $ff
    add e                                         ; $67d3: $83
    ld d, e                                       ; $67d4: $53
    cp h                                          ; $67d5: $bc
    or a                                          ; $67d6: $b7
    ld de, $e680                                  ; $67d7: $11 $80 $e6
    xor c                                         ; $67da: $a9
    jp c, $2f1f                                   ; $67db: $da $1f $2f

    and a                                         ; $67de: $a7
    inc h                                         ; $67df: $24
    rlca                                          ; $67e0: $07
    cp l                                          ; $67e1: $bd
    ld e, e                                       ; $67e2: $5b
    ld a, [c]                                     ; $67e3: $f2
    push de                                       ; $67e4: $d5
    and b                                         ; $67e5: $a0
    ld [hl], h                                    ; $67e6: $74
    nop                                           ; $67e7: $00
    ld l, a                                       ; $67e8: $6f
    ld hl, $845b                                  ; $67e9: $21 $5b $84
    or b                                          ; $67ec: $b0
    dec a                                         ; $67ed: $3d
    ld e, c                                       ; $67ee: $59
    jp z, $af03                                   ; $67ef: $ca $03 $af

    inc d                                         ; $67f2: $14
    ld a, [hl+]                                   ; $67f3: $2a
    ld a, c                                       ; $67f4: $79
    or d                                          ; $67f5: $b2
    sub h                                         ; $67f6: $94
    rlca                                          ; $67f7: $07
    rst $08                                       ; $67f8: $cf
    pop de                                        ; $67f9: $d1
    rst $38                                       ; $67fa: $ff
    xor h                                         ; $67fb: $ac
    ld a, [hl-]                                   ; $67fc: $3a
    xor b                                         ; $67fd: $a8
    ld d, b                                       ; $67fe: $50
    ret                                           ; $67ff: $c9


    sub e                                         ; $6800: $93
    and l                                         ; $6801: $a5
    inc a                                         ; $6802: $3c
    nop                                           ; $6803: $00
    ld l, a                                       ; $6804: $6f
    sbc b                                         ; $6805: $98
    ld a, [de]                                    ; $6806: $1a
    ld a, a                                       ; $6807: $7f
    or a                                          ; $6808: $b7
    db $e4                                        ; $6809: $e4
    ret                                           ; $680a: $c9


    ld d, d                                       ; $680b: $52
    sbc $a5                                       ; $680c: $de $a5
    jr nz, jr_04a_6857                            ; $680e: $20 $47

    db $eb                                        ; $6810: $eb
    and $01                                       ; $6811: $e6 $01
    cpl                                           ; $6813: $2f
    ld b, e                                       ; $6814: $43
    xor $77                                       ; $6815: $ee $77
    ld c, [hl]                                    ; $6817: $4e
    add d                                         ; $6818: $82
    ld d, c                                       ; $6819: $51
    daa                                           ; $681a: $27
    set 2, l                                      ; $681b: $cb $d5
    rlca                                          ; $681d: $07
    xor a                                         ; $681e: $af
    db $fd                                        ; $681f: $fd
    rst $28                                       ; $6820: $ef
    push hl                                       ; $6821: $e5
    add a                                         ; $6822: $87
    ld c, d                                       ; $6823: $4a
    call Call_04a_72c9                            ; $6824: $cd $c9 $72
    push af                                       ; $6827: $f5
    ld bc, $7fcf                                  ; $6828: $01 $cf $7f
    xor b                                         ; $682b: $a8
    call nc, Call_000_2c9c                        ; $682c: $d4 $9c $2c
    ld d, a                                       ; $682f: $57
    rra                                           ; $6830: $1f
    rst $28                                       ; $6831: $ef
    and c                                         ; $6832: $a1
    halt                                          ; $6833: $76
    ld c, e                                       ; $6834: $4b
    call Call_04a_72c9                            ; $6835: $cd $c9 $72
    push af                                       ; $6838: $f5
    ld bc, $55ef                                  ; $6839: $01 $ef $55
    adc e                                         ; $683c: $8b
    add sp, -$69                                  ; $683d: $e8 $97
    sbc d                                         ; $683f: $9a
    cp [hl]                                       ; $6840: $be
    sub e                                         ; $6841: $93
    push hl                                       ; $6842: $e5
    ld [$af03], a                                 ; $6843: $ea $03 $af
    ld b, e                                       ; $6846: $43
    ld d, h                                       ; $6847: $54
    ld b, a                                       ; $6848: $47
    ld [hl], $85                                  ; $6849: $36 $85
    ld e, a                                       ; $684b: $5f
    ld a, c                                       ; $684c: $79
    nop                                           ; $684d: $00
    xor a                                         ; $684e: $af
    jp $ffc3                                      ; $684f: $c3 $c3 $ff


    or l                                          ; $6852: $b5
    ldh a, [$2b]                                  ; $6853: $f0 $2b
    sbc e                                         ; $6855: $9b
    rlca                                          ; $6856: $07

jr_04a_6857:
    rst $08                                       ; $6857: $cf
    ld a, [hl]                                    ; $6858: $7e
    adc l                                         ; $6859: $8d
    ld a, a                                       ; $685a: $7f
    ld l, a                                       ; $685b: $6f
    db $10                                        ; $685c: $10
    ld b, d                                       ; $685d: $42
    ld a, [de]                                    ; $685e: $1a
    pop hl                                        ; $685f: $e1
    adc [hl]                                      ; $6860: $8e
    ld a, [hl-]                                   ; $6861: $3a
    nop                                           ; $6862: $00
    rst $08                                       ; $6863: $cf
    ld a, [hl]                                    ; $6864: $7e
    adc l                                         ; $6865: $8d
    ld a, a                                       ; $6866: $7f
    cpl                                           ; $6867: $2f
    ld a, [de]                                    ; $6868: $1a
    ret nz                                        ; $6869: $c0

    inc bc                                        ; $686a: $03
    xor a                                         ; $686b: $af
    jp Jump_04a_4243                              ; $686c: $c3 $43 $42


    ld de, $6f1f                                  ; $686f: $11 $1f $6f
    sub l                                         ; $6872: $95
    ld e, h                                       ; $6873: $5c
    db $fd                                        ; $6874: $fd
    dec hl                                        ; $6875: $2b
    ld sp, $5341                                  ; $6876: $31 $41 $53
    ld hl, sp-$6b                                 ; $6879: $f8 $95
    rlca                                          ; $687b: $07
    sub a                                         ; $687c: $97

Call_04a_687d:
    ld b, [hl]                                    ; $687d: $46
    inc h                                         ; $687e: $24
    and $36                                       ; $687f: $e6 $36
    dec [hl]                                      ; $6881: $35
    cp $6e                                        ; $6882: $fe $6e
    ld c, c                                       ; $6884: $49
    pop af                                        ; $6885: $f1
    sub a                                         ; $6886: $97
    rlca                                          ; $6887: $07
    rst $08                                       ; $6888: $cf
    push af                                       ; $6889: $f5
    db $f4                                        ; $688a: $f4
    or e                                          ; $688b: $b3
    inc de                                        ; $688c: $13
    ld a, d                                       ; $688d: $7a
    ld l, [hl]                                    ; $688e: $6e
    ld [hl], h                                    ; $688f: $74
    nop                                           ; $6890: $00
    rst $08                                       ; $6891: $cf
    rst $38                                       ; $6892: $ff
    xor b                                         ; $6893: $a8
    push hl                                       ; $6894: $e5
    db $dd                                        ; $6895: $dd
    rst $30                                       ; $6896: $f7
    ret nc                                        ; $6897: $d0

    dec a                                         ; $6898: $3d
    rlca                                          ; $6899: $07
    ld l, a                                       ; $689a: $6f
    sbc c                                         ; $689b: $99
    sub $4d                                       ; $689c: $d6 $4d
    rst $18                                       ; $689e: $df
    cp l                                          ; $689f: $bd
    adc $a5                                       ; $68a0: $ce $a5
    inc bc                                        ; $68a2: $03
    cpl                                           ; $68a3: $2f
    ld h, c                                       ; $68a4: $61
    inc h                                         ; $68a5: $24
    jr c, @+$6c                                   ; $68a6: $38 $6a

    rst $30                                       ; $68a8: $f7
    db $dd                                        ; $68a9: $dd
    ld [hl], e                                    ; $68aa: $73
    rst $08                                       ; $68ab: $cf
    dec a                                         ; $68ac: $3d
    rlca                                          ; $68ad: $07
    ld c, a                                       ; $68ae: $4f
    adc d                                         ; $68af: $8a
    ld b, h                                       ; $68b0: $44
    rst $18                                       ; $68b1: $df
    and e                                         ; $68b2: $a3
    ld a, $7d                                     ; $68b3: $3e $7d
    ld [c], a                                     ; $68b5: $e2
    ld [$2f03], a                                 ; $68b6: $ea $03 $2f
    cp $4c                                        ; $68b9: $fe $4c
    sub h                                         ; $68bb: $94
    ld c, d                                       ; $68bc: $4a

Call_04a_68bd:
    ld a, [de]                                    ; $68bd: $1a
    ld [hl], h                                    ; $68be: $74
    nop                                           ; $68bf: $00
    rst $08                                       ; $68c0: $cf
    push de                                       ; $68c1: $d5
    db $d3                                        ; $68c2: $d3
    rst $38                                       ; $68c3: $ff
    ret nz                                        ; $68c4: $c0

    ld [hl], a                                    ; $68c5: $77
    ld [bc], a                                    ; $68c6: $02
    ld e, c                                       ; $68c7: $59
    ld a, [$572c]                                 ; $68c8: $fa $2c $57
    xor e                                         ; $68cb: $ab
    inc bc                                        ; $68cc: $03
    ld l, a                                       ; $68cd: $6f
    add hl, sp                                    ; $68ce: $39
    ld c, $9d                                     ; $68cf: $0e $9d
    ld c, d                                       ; $68d1: $4a
    ld [de], a                                    ; $68d2: $12
    jp nc, Jump_04a_7c96                          ; $68d3: $d2 $96 $7c

    nop                                           ; $68d6: $00
    ld c, a                                       ; $68d7: $4f
    ld l, d                                       ; $68d8: $6a
    push de                                       ; $68d9: $d5
    add sp, $00                                   ; $68da: $e8 $00
    ld c, a                                       ; $68dc: $4f
    ld l, d                                       ; $68dd: $6a
    ld [hl], d                                    ; $68de: $72
    jr nc, jr_04a_6930                            ; $68df: $30 $4f

    sbc a                                         ; $68e1: $9f
    cp b                                          ; $68e2: $b8
    ld a, [$4f00]                                 ; $68e3: $fa $00 $4f
    db $fd                                        ; $68e6: $fd
    rra                                           ; $68e7: $1f
    add hl, hl                                    ; $68e8: $29
    ld l, l                                       ; $68e9: $6d
    add hl, bc                                    ; $68ea: $09
    ld b, d                                       ; $68eb: $42
    rlca                                          ; $68ec: $07
    db $fd                                        ; $68ed: $fd
    ld bc, $73af                                  ; $68ee: $01 $af $73
    ld h, l                                       ; $68f1: $65
    or l                                          ; $68f2: $b5
    ld l, e                                       ; $68f3: $6b
    inc h                                         ; $68f4: $24
    sbc e                                         ; $68f5: $9b
    adc d                                         ; $68f6: $8a
    dec hl                                        ; $68f7: $2b
    xor e                                         ; $68f8: $ab
    push de                                       ; $68f9: $d5
    ld bc, $c32f                                  ; $68fa: $01 $2f $c3

Call_04a_68fd:
    ld sp, hl                                     ; $68fd: $f9
    ld b, e                                       ; $68fe: $43
    adc [hl]                                      ; $68ff: $8e
    add d                                         ; $6900: $82
    ld a, [hl]                                    ; $6901: $7e
    ld a, l                                       ; $6902: $7d
    jp hl                                         ; $6903: $e9


    nop                                           ; $6904: $00
    rst $08                                       ; $6905: $cf
    rst $10                                       ; $6906: $d7
    dec l                                         ; $6907: $2d
    ld a, l                                       ; $6908: $7d
    ret nc                                        ; $6909: $d0

    inc a                                         ; $690a: $3c
    nop                                           ; $690b: $00
    sub a                                         ; $690c: $97
    rst $38                                       ; $690d: $ff
    ld d, e                                       ; $690e: $53
    adc $b5                                       ; $690f: $ce $b5
    call c, $a71b                                 ; $6911: $dc $1b $a7
    ld [hl], $fc                                  ; $6914: $36 $fc
    sbc a                                         ; $6916: $9f
    ld a, [c]                                     ; $6917: $f2
    nop                                           ; $6918: $00
    xor a                                         ; $6919: $af
    ld l, e                                       ; $691a: $6b
    ld c, e                                       ; $691b: $4b
    ret nc                                        ; $691c: $d0

    ld h, h                                       ; $691d: $64
    ld c, e                                       ; $691e: $4b
    rst $18                                       ; $691f: $df
    inc a                                         ; $6920: $3c
    nop                                           ; $6921: $00
    ld c, a                                       ; $6922: $4f
    push af                                       ; $6923: $f5
    db $fc                                        ; $6924: $fc
    adc l                                         ; $6925: $8d
    xor $52                                       ; $6926: $ee $52
    call c, Call_000_01e6                         ; $6928: $dc $e6 $01
    rst $28                                       ; $692b: $ef
    and c                                         ; $692c: $a1
    halt                                          ; $692d: $76
    db $e3                                        ; $692e: $e3
    add l                                         ; $692f: $85

jr_04a_6930:
    rst $38                                       ; $6930: $ff
    ld d, e                                       ; $6931: $53
    adc $b5                                       ; $6932: $ce $b5
    ld e, h                                       ; $6934: $5c
    sbc e                                         ; $6935: $9b
    pop hl                                        ; $6936: $e1
    rst $38                                       ; $6937: $ff
    sub h                                         ; $6938: $94
    rlca                                          ; $6939: $07
    ld l, a                                       ; $693a: $6f
    ld a, a                                       ; $693b: $7f
    dec l                                         ; $693c: $2d
    ld d, d                                       ; $693d: $52
    and a                                         ; $693e: $a7
    ld c, a                                       ; $693f: $4f
    ld e, h                                       ; $6940: $5c
    ld a, l                                       ; $6941: $7d
    nop                                           ; $6942: $00
    ld c, a                                       ; $6943: $4f
    jp z, Jump_04a_589f                           ; $6944: $ca $9f $58

    ld a, $00                                     ; $6947: $3e $00
    xor a                                         ; $6949: $af
    ld b, a                                       ; $694a: $47
    sub l                                         ; $694b: $95
    ld [de], a                                    ; $694c: $12
    xor e                                         ; $694d: $ab
    add [hl]                                      ; $694e: $86
    cp c                                          ; $694f: $b9
    daa                                           ; $6950: $27
    or l                                          ; $6951: $b5
    xor $5e                                       ; $6952: $ee $5e
    adc a                                         ; $6954: $8f
    ld c, h                                       ; $6955: $4c
    ld [hl], $0f                                  ; $6956: $36 $0f
    ld c, a                                       ; $6958: $4f
    add a                                         ; $6959: $87
    rra                                           ; $695a: $1f
    cp $25                                        ; $695b: $fe $25
    ld c, d                                       ; $695d: $4a
    ld e, c                                       ; $695e: $59
    ld d, d                                       ; $695f: $52
    rlca                                          ; $6960: $07
    ld c, a                                       ; $6961: $4f
    ld d, l                                       ; $6962: $55
    ld [hl], c                                    ; $6963: $71
    rst $30                                       ; $6964: $f7
    sub h                                         ; $6965: $94
    inc hl                                        ; $6966: $23
    ld [$c0d5], sp                                ; $6967: $08 $d5 $c0
    adc c                                         ; $696a: $89
    ld c, $af                                     ; $696b: $0e $af
    db $fc                                        ; $696d: $fc
    ld [$4dfa], sp                                ; $696e: $08 $fa $4d
    ld [hl], $23                                  ; $6971: $36 $23
    ld c, $aa                                     ; $6973: $0e $aa
    ld c, $cf                                     ; $6975: $0e $cf
    sub a                                         ; $6977: $97
    xor e                                         ; $6978: $ab
    push hl                                       ; $6979: $e5
    xor a                                         ; $697a: $af
    inc a                                         ; $697b: $3c
    nop                                           ; $697c: $00
    ld d, a                                       ; $697d: $57
    jp hl                                         ; $697e: $e9


    ld b, e                                       ; $697f: $43
    db $fc                                        ; $6980: $fc
    db $dd                                        ; $6981: $dd
    sub d                                         ; $6982: $92
    ld [c], a                                     ; $6983: $e2
    cpl                                           ; $6984: $2f
    ld h, l                                       ; $6985: $65
    di                                            ; $6986: $f3
    nop                                           ; $6987: $00
    sub a                                         ; $6988: $97
    push af                                       ; $6989: $f5
    daa                                           ; $698a: $27
    inc b                                         ; $698b: $04
    di                                            ; $698c: $f3
    db $dd                                        ; $698d: $dd
    sbc e                                         ; $698e: $9b
    xor b                                         ; $698f: $a8
    rrca                                          ; $6990: $0f
    ld l, a                                       ; $6991: $6f
    rla                                           ; $6992: $17
    and b                                         ; $6993: $a0
    ld a, [hl-]                                   ; $6994: $3a
    dec d                                         ; $6995: $15
    call c, $9905                                 ; $6996: $dc $05 $99
    ld a, [bc]                                    ; $6999: $0a
    ld a, d                                       ; $699a: $7a
    nop                                           ; $699b: $00
    xor a                                         ; $699c: $af
    sbc b                                         ; $699d: $98
    sub c                                         ; $699e: $91
    sbc d                                         ; $699f: $9a
    db $fc                                        ; $69a0: $fc
    adc c                                         ; $69a1: $89
    ld b, c                                       ; $69a2: $41
    ld e, $4f                                     ; $69a3: $1e $4f
    ld l, c                                       ; $69a5: $69
    sub h                                         ; $69a6: $94
    rlca                                          ; $69a7: $07
    rst $08                                       ; $69a8: $cf
    ld a, a                                       ; $69a9: $7f
    db $dd                                        ; $69aa: $dd
    inc a                                         ; $69ab: $3c
    nop                                           ; $69ac: $00
    rst $08                                       ; $69ad: $cf
    inc hl                                        ; $69ae: $23
    ld [hl], h                                    ; $69af: $74
    nop                                           ; $69b0: $00
    xor a                                         ; $69b1: $af
    inc sp                                        ; $69b2: $33
    add hl, sp                                    ; $69b3: $39
    xor b                                         ; $69b4: $a8
    call c, $aa0f                                 ; $69b5: $dc $0f $aa
    db $dd                                        ; $69b8: $dd
    sub [hl]                                      ; $69b9: $96
    ld c, $6f                                     ; $69ba: $0e $6f
    sbc c                                         ; $69bc: $99
    or h                                          ; $69bd: $b4
    ld h, h                                       ; $69be: $64
    xor h                                         ; $69bf: $ac
    ld c, h                                       ; $69c0: $4c
    db $d3                                        ; $69c1: $d3
    cp d                                          ; $69c2: $ba
    ld [hl], h                                    ; $69c3: $74
    nop                                           ; $69c4: $00
    cpl                                           ; $69c5: $2f
    jp Jump_04a_6e43                              ; $69c6: $c3 $43 $6e


    ld a, d                                       ; $69c9: $7a
    adc b                                         ; $69ca: $88
    cp [hl]                                       ; $69cb: $be
    xor b                                         ; $69cc: $a8
    push hl                                       ; $69cd: $e5
    inc bc                                        ; $69ce: $03
    cpl                                           ; $69cf: $2f
    dec sp                                        ; $69d0: $3b
    cp [hl]                                       ; $69d1: $be
    ld d, e                                       ; $69d2: $53
    ldh a, [$f0]                                  ; $69d3: $f0 $f0
    ld a, a                                       ; $69d5: $7f
    xor l                                         ; $69d6: $ad
    sbc b                                         ; $69d7: $98
    ld a, $e4                                     ; $69d8: $3e $e4
    ld c, l                                       ; $69da: $4d
    dec e                                         ; $69db: $1d
    rst $08                                       ; $69dc: $cf
    sbc a                                         ; $69dd: $9f
    ld e, d                                       ; $69de: $5a
    ld a, c                                       ; $69df: $79
    rst $10                                       ; $69e0: $d7
    push af                                       ; $69e1: $f5
    sbc $f5                                       ; $69e2: $de $f5
    inc c                                         ; $69e4: $0c
    add d                                         ; $69e5: $82
    and $5d                                       ; $69e6: $e6 $5d
    ld l, a                                       ; $69e8: $6f
    sub e                                         ; $69e9: $93
    ld sp, $5537                                  ; $69ea: $31 $37 $55
    ld sp, hl                                     ; $69ed: $f9
    nop                                           ; $69ee: $00
    cpl                                           ; $69ef: $2f
    ld a, [hl-]                                   ; $69f0: $3a
    ret                                           ; $69f1: $c9


    ld [hl], e                                    ; $69f2: $73
    dec l                                         ; $69f3: $2d
    rst $30                                       ; $69f4: $f7
    ldh [$3d], a                                  ; $69f5: $e0 $3d
    add e                                         ; $69f7: $83
    sbc d                                         ; $69f8: $9a
    ldh a, [rNR34]                                ; $69f9: $f0 $1e
    cpl                                           ; $69fb: $2f
    jr nz, jr_04a_6a3a                            ; $69fc: $20 $3c

    ld h, h                                       ; $69fe: $64

Call_04a_69ff:
    ld d, b                                       ; $69ff: $50
    or a                                          ; $6a00: $b7
    jp hl                                         ; $6a01: $e9


    dec sp                                        ; $6a02: $3b
    pop bc                                        ; $6a03: $c1
    or h                                          ; $6a04: $b4
    cp $99                                        ; $6a05: $fe $99
    call $cf03                                    ; $6a07: $cd $03 $cf
    sub a                                         ; $6a0a: $97
    inc d                                         ; $6a0b: $14
    jp $d7cd                                      ; $6a0c: $c3 $cd $d7


    inc e                                         ; $6a0f: $1c
    ld [hl], l                                    ; $6a10: $75
    nop                                           ; $6a11: $00
    sub a                                         ; $6a12: $97
    ld b, $08                                     ; $6a13: $06 $08
    cp l                                          ; $6a15: $bd
    ld a, [de]                                    ; $6a16: $1a
    ld h, h                                       ; $6a17: $64
    ld h, h                                       ; $6a18: $64
    sub b                                         ; $6a19: $90
    halt                                          ; $6a1a: $76
    ld c, $af                                     ; $6a1b: $0e $af
    ld [hl], e                                    ; $6a1d: $73
    sbc e                                         ; $6a1e: $9b
    di                                            ; $6a1f: $f3
    and l                                         ; $6a20: $a5
    cp l                                          ; $6a21: $bd
    adc l                                         ; $6a22: $8d
    pop bc                                        ; $6a23: $c1
    cp c                                          ; $6a24: $b9
    ld a, c                                       ; $6a25: $79
    nop                                           ; $6a26: $00
    rst $08                                       ; $6a27: $cf
    dec [hl]                                      ; $6a28: $35
    xor h                                         ; $6a29: $ac
    inc bc                                        ; $6a2a: $03
    sbc d                                         ; $6a2b: $9a
    adc d                                         ; $6a2c: $8a
    db $db                                        ; $6a2d: $db
    inc a                                         ; $6a2e: $3c
    nop                                           ; $6a2f: $00
    rst $10                                       ; $6a30: $d7
    ld [de], a                                    ; $6a31: $12
    ld d, b                                       ; $6a32: $50
    dec a                                         ; $6a33: $3d
    sbc $94                                       ; $6a34: $de $94
    call c, $33dc                                 ; $6a36: $dc $dc $33
    add hl, bc                                    ; $6a39: $09

jr_04a_6a3a:
    rla                                           ; $6a3a: $17
    inc bc                                        ; $6a3b: $03
    rst $10                                       ; $6a3c: $d7
    rra                                           ; $6a3d: $1f
    xor d                                         ; $6a3e: $aa
    rst $00                                       ; $6a3f: $c7
    ld e, $cf                                     ; $6a40: $1e $cf
    ld l, d                                       ; $6a42: $6a
    rlca                                          ; $6a43: $07
    ld sp, hl                                     ; $6a44: $f9
    nop                                           ; $6a45: $00
    rst $08                                       ; $6a46: $cf
    push de                                       ; $6a47: $d5
    push de                                       ; $6a48: $d5
    ld [hl], l                                    ; $6a49: $75
    ld b, b                                       ; $6a4a: $40
    or l                                          ; $6a4b: $b5
    rst $28                                       ; $6a4c: $ef
    ld e, [hl]                                    ; $6a4d: $5e
    rst $10                                       ; $6a4e: $d7
    ld [hl], l                                    ; $6a4f: $75
    cp b                                          ; $6a50: $b8
    ld a, [$af00]                                 ; $6a51: $fa $00 $af
    and e                                         ; $6a54: $a3
    sub h                                         ; $6a55: $94
    push de                                       ; $6a56: $d5
    ld [$cf00], a                                 ; $6a57: $ea $00 $cf
    dec [hl]                                      ; $6a5a: $35
    ld e, e                                       ; $6a5b: $5b
    dec h                                         ; $6a5c: $25
    ret                                           ; $6a5d: $c9


    ldh [rNR42], a                                ; $6a5e: $e0 $21
    inc hl                                        ; $6a60: $23
    sbc b                                         ; $6a61: $98
    ei                                            ; $6a62: $fb
    ld d, e                                       ; $6a63: $53
    ld b, $3d                                     ; $6a64: $06 $3d
    nop                                           ; $6a66: $00
    cpl                                           ; $6a67: $2f
    rst $20                                       ; $6a68: $e7
    add hl, de                                    ; $6a69: $19
    pop hl                                        ; $6a6a: $e1
    ld hl, $660b                                  ; $6a6b: $21 $0b $66
    inc d                                         ; $6a6e: $14
    ld d, $bd                                     ; $6a6f: $16 $bd
    cp d                                          ; $6a71: $ba
    dec hl                                        ; $6a72: $2b
    or d                                          ; $6a73: $b2
    db $e4                                        ; $6a74: $e4
    ld [$cf03], a                                 ; $6a75: $ea $03 $cf
    sbc e                                         ; $6a78: $9b
    ld de, $7fc3                                  ; $6a79: $11 $c3 $7f
    inc h                                         ; $6a7c: $24
    ld h, b                                       ; $6a7d: $60
    ld a, [de]                                    ; $6a7e: $1a
    ld h, e                                       ; $6a7f: $63
    rrca                                          ; $6a80: $0f
    rst $10                                       ; $6a81: $d7
    cp e                                          ; $6a82: $bb
    or b                                          ; $6a83: $b0

Jump_04a_6a84:
    ld [bc], a                                    ; $6a84: $02
    rrca                                          ; $6a85: $0f
    or h                                          ; $6a86: $b4
    add hl, sp                                    ; $6a87: $39
    rst $30                                       ; $6a88: $f7
    ld a, a                                       ; $6a89: $7f
    ld a, [hl-]                                   ; $6a8a: $3a
    sub l                                         ; $6a8b: $95
    and b                                         ; $6a8c: $a0
    and [hl]                                      ; $6a8d: $a6
    ld hl, sp+$03                                 ; $6a8e: $f8 $03
    ld l, a                                       ; $6a90: $6f
    ld a, h                                       ; $6a91: $7c
    or a                                          ; $6a92: $b7
    ld l, c                                       ; $6a93: $69
    ld b, [hl]                                    ; $6a94: $46
    ld c, d                                       ; $6a95: $4a
    sbc d                                         ; $6a96: $9a
    ld de, $571f                                  ; $6a97: $11 $1f $57
    sub c                                         ; $6a9a: $91
    rst $20                                       ; $6a9b: $e7
    cp $4f                                        ; $6a9c: $fe $4f
    and a                                         ; $6a9e: $a7
    ld [de], a                                    ; $6a9f: $12
    inc [hl]                                      ; $6aa0: $34
    ld d, b                                       ; $6aa1: $50
    add c                                         ; $6aa2: $81
    inc e                                         ; $6aa3: $1c
    sub h                                         ; $6aa4: $94
    call Call_000_072b                            ; $6aa5: $cd $2b $07
    or b                                          ; $6aa8: $b0
    sbc a                                         ; $6aa9: $9f
    cp b                                          ; $6aaa: $b8
    ld [hl], a                                    ; $6aab: $77
    rlca                                          ; $6aac: $07
    rst $08                                       ; $6aad: $cf
    ret nc                                        ; $6aae: $d0

    ld b, b                                       ; $6aaf: $40
    add l                                         ; $6ab0: $85
    ld a, [hl-]                                   ; $6ab1: $3a
    call nz, Call_000_2c4b                        ; $6ab2: $c4 $4b $2c
    dec hl                                        ; $6ab5: $2b
    pop af                                        ; $6ab6: $f1
    rlca                                          ; $6ab7: $07
    rst $10                                       ; $6ab8: $d7
    dec sp                                        ; $6ab9: $3b
    jp hl                                         ; $6aba: $e9


    inc h                                         ; $6abb: $24
    cpl                                           ; $6abc: $2f
    inc l                                         ; $6abd: $2c
    cpl                                           ; $6abe: $2f
    sbc l                                         ; $6abf: $9d
    dec h                                         ; $6ac0: $25
    sub [hl]                                      ; $6ac1: $96
    rlca                                          ; $6ac2: $07
    ld a, [hl+]                                   ; $6ac3: $2a
    sub b                                         ; $6ac4: $90
    add e                                         ; $6ac5: $83
    or d                                          ; $6ac6: $b2
    add hl, hl                                    ; $6ac7: $29
    cp $00                                        ; $6ac8: $fe $00
    ld d, a                                       ; $6aca: $57
    ret                                           ; $6acb: $c9


    sub c                                         ; $6acc: $91
    ei                                            ; $6acd: $fb
    ret nc                                        ; $6ace: $d0

    jp c, $cc9c                                   ; $6acf: $da $9c $cc

    rrca                                          ; $6ad2: $0f
    db $ed                                        ; $6ad3: $ed
    ld b, a                                       ; $6ad4: $47
    ld [hl], e                                    ; $6ad5: $73
    ld c, e                                       ; $6ad6: $4b
    cp [hl]                                       ; $6ad7: $be
    inc [hl]                                      ; $6ad8: $34
    xor $80                                       ; $6ad9: $ee $80
    ld e, c                                       ; $6adb: $59
    add $07                                       ; $6adc: $c6 $07
    sub a                                         ; $6ade: $97
    ld b, [hl]                                    ; $6adf: $46
    inc h                                         ; $6ae0: $24
    ld h, [hl]                                    ; $6ae1: $66
    sub d                                         ; $6ae2: $92
    jr nc, jr_04a_6ae5                            ; $6ae3: $30 $00

jr_04a_6ae5:
    cp h                                          ; $6ae5: $bc
    daa                                           ; $6ae6: $27
    xor $dd                                       ; $6ae7: $ee $dd
    dec bc                                        ; $6ae9: $0b
    ld [hl], l                                    ; $6aea: $75
    sbc e                                         ; $6aeb: $9b
    ld a, [bc]                                    ; $6aec: $0a
    ld [hl], d                                    ; $6aed: $72

Jump_04a_6aee:
    sub d                                         ; $6aee: $92
    ld l, a                                       ; $6aef: $6f
    ld l, a                                       ; $6af0: $6f
    sbc $11                                       ; $6af1: $de $11
    rra                                           ; $6af3: $1f

Jump_04a_6af4:
    sub a                                         ; $6af4: $97
    ld b, [hl]                                    ; $6af5: $46
    inc h                                         ; $6af6: $24
    ld h, [hl]                                    ; $6af7: $66
    sub d                                         ; $6af8: $92
    jr nc, jr_04a_6afb                            ; $6af9: $30 $00

jr_04a_6afb:
    cp h                                          ; $6afb: $bc
    daa                                           ; $6afc: $27
    xor $dd                                       ; $6afd: $ee $dd
    dec de                                        ; $6aff: $1b
    rst $18                                       ; $6b00: $df
    dec l                                         ; $6b01: $2d
    ld b, c                                       ; $6b02: $41
    ld c, [hl]                                    ; $6b03: $4e
    ld a, [c]                                     ; $6b04: $f2
    db $ed                                        ; $6b05: $ed
    call $e23b                                    ; $6b06: $cd $3b $e2
    inc bc                                        ; $6b09: $03
    ld l, a                                       ; $6b0a: $6f
    sub l                                         ; $6b0b: $95
    inc [hl]                                      ; $6b0c: $34
    ld d, [hl]                                    ; $6b0d: $56
    pop af                                        ; $6b0e: $f1
    ld a, [c]                                     ; $6b0f: $f2
    ld a, a                                       ; $6b10: $7f
    db $e4                                        ; $6b11: $e4
    sbc l                                         ; $6b12: $9d
    ld sp, $a9c8                                  ; $6b13: $31 $c8 $a9
    ret z                                         ; $6b16: $c8

    ld c, h                                       ; $6b17: $4c
    adc d                                         ; $6b18: $8a
    rst $18                                       ; $6b19: $df
    ld l, [hl]                                    ; $6b1a: $6e
    cp a                                          ; $6b1b: $bf
    di                                            ; $6b1c: $f3
    adc c                                         ; $6b1d: $89
    ld a, e                                       ; $6b1e: $7b
    rst $30                                       ; $6b1f: $f7
    jp nz, Jump_04a_772b                          ; $6b20: $c2 $2b $77

    inc e                                         ; $6b23: $1c
    ld c, a                                       ; $6b24: $4f
    sub l                                         ; $6b25: $95
    ld c, e                                       ; $6b26: $4b
    di                                            ; $6b27: $f3
    sub [hl]                                      ; $6b28: $96
    dec bc                                        ; $6b29: $0b
    rl e                                          ; $6b2a: $cb $13
    xor d                                         ; $6b2c: $aa
    cp b                                          ; $6b2d: $b8
    add e                                         ; $6b2e: $83
    ld a, [hl]                                    ; $6b2f: $7e
    inc b                                         ; $6b30: $04
    db $fd                                        ; $6b31: $fd
    ld h, $9b                                     ; $6b32: $26 $9b
    ld de, $1507                                  ; $6b34: $11 $07 $15
    cp a                                          ; $6b37: $bf
    db $dd                                        ; $6b38: $dd
    ld a, [hl]                                    ; $6b39: $7e
    rst $20                                       ; $6b3a: $e7
    inc de                                        ; $6b3b: $13
    rst $30                                       ; $6b3c: $f7
    xor $85                                       ; $6b3d: $ee $85
    ld d, a                                       ; $6b3f: $57
    xor $38                                       ; $6b40: $ee $38
    nop                                           ; $6b42: $00
    rst $28                                       ; $6b43: $ef
    db $fd                                        ; $6b44: $fd
    add c                                         ; $6b45: $81
    ld e, a                                       ; $6b46: $5f
    ld a, a                                       ; $6b47: $7f
    ld sp, $bc6f                                  ; $6b48: $31 $6f $bc
    and b                                         ; $6b4b: $a0
    ld c, e                                       ; $6b4c: $4b
    inc l                                         ; $6b4d: $2c
    ld c, a                                       ; $6b4e: $4f
    sub d                                         ; $6b4f: $92
    add e                                         ; $6b50: $83
    ld d, c                                       ; $6b51: $51
    dec [hl]                                      ; $6b52: $35
    adc e                                         ; $6b53: $8b
    rst $18                                       ; $6b54: $df
    ld l, [hl]                                    ; $6b55: $6e
    cp a                                          ; $6b56: $bf
    di                                            ; $6b57: $f3
    adc c                                         ; $6b58: $89
    ld a, e                                       ; $6b59: $7b
    rst $30                                       ; $6b5a: $f7
    jp nz, Jump_04a_772b                          ; $6b5b: $c2 $2b $77

    inc e                                         ; $6b5e: $1c
    ld d, a                                       ; $6b5f: $57
    dec sp                                        ; $6b60: $3b
    dec d                                         ; $6b61: $15
    sbc c                                         ; $6b62: $99
    ret                                           ; $6b63: $c9


    and c                                         ; $6b64: $a1
    sbc d                                         ; $6b65: $9a
    ld d, b                                       ; $6b66: $50
    cp $6e                                        ; $6b67: $fe $6e
    xor c                                         ; $6b69: $a9
    jp hl                                         ; $6b6a: $e9


    push bc                                       ; $6b6b: $c5
    ld l, a                                       ; $6b6c: $6f
    or a                                          ; $6b6d: $b7
    rst $18                                       ; $6b6e: $df
    ld sp, hl                                     ; $6b6f: $f9
    call nz, $7bbd                                ; $6b70: $c4 $bd $7b
    pop hl                                        ; $6b73: $e1
    sub l                                         ; $6b74: $95
    dec sp                                        ; $6b75: $3b
    ld c, $2f                                     ; $6b76: $0e $2f
    daa                                           ; $6b78: $27
    sbc a                                         ; $6b79: $9f
    set 3, h                                      ; $6b7a: $cb $dc
    db $f4                                        ; $6b7c: $f4
    db $d3                                        ; $6b7d: $d3
    sub l                                         ; $6b7e: $95
    or d                                          ; $6b7f: $b2
    inc h                                         ; $6b80: $24
    ld a, [hl]                                    ; $6b81: $7e
    or a                                          ; $6b82: $b7
    rst $18                                       ; $6b83: $df
    ld sp, hl                                     ; $6b84: $f9
    call nz, $7bbd                                ; $6b85: $c4 $bd $7b
    pop hl                                        ; $6b88: $e1
    sub l                                         ; $6b89: $95
    dec sp                                        ; $6b8a: $3b
    ld c, $2f                                     ; $6b8b: $0e $2f
    daa                                           ; $6b8d: $27
    sbc a                                         ; $6b8e: $9f
    set 3, h                                      ; $6b8f: $cb $dc
    db $f4                                        ; $6b91: $f4
    db $d3                                        ; $6b92: $d3
    sub l                                         ; $6b93: $95
    or d                                          ; $6b94: $b2
    inc h                                         ; $6b95: $24
    ld a, [hl]                                    ; $6b96: $7e
    or a                                          ; $6b97: $b7
    rst $18                                       ; $6b98: $df
    ld sp, hl                                     ; $6b99: $f9
    call nz, $7bbd                                ; $6b9a: $c4 $bd $7b
    pop hl                                        ; $6b9d: $e1
    sub l                                         ; $6b9e: $95
    dec sp                                        ; $6b9f: $3b
    ld c, $d7                                     ; $6ba0: $0e $d7
    db $ed                                        ; $6ba2: $ed
    nop                                           ; $6ba3: $00
    cpl                                           ; $6ba4: $2f
    or l                                          ; $6ba5: $b5
    rlca                                          ; $6ba6: $07
    db $db                                        ; $6ba7: $db
    or $c4                                        ; $6ba8: $f6 $c4
    cp l                                          ; $6baa: $bd
    ld a, e                                       ; $6bab: $7b
    ld e, l                                       ; $6bac: $5d
    ld e, $af                                     ; $6bad: $1e $af
    rlc e                                         ; $6baf: $cb $03
    rst $08                                       ; $6bb1: $cf
    ld a, a                                       ; $6bb2: $7f
    xor b                                         ; $6bb3: $a8
    ld a, c                                       ; $6bb4: $79
    nop                                           ; $6bb5: $00
    ld l, a                                       ; $6bb6: $6f
    sub l                                         ; $6bb7: $95
    db $e4                                        ; $6bb8: $e4
    add a                                         ; $6bb9: $87
    sbc d                                         ; $6bba: $9a
    rlca                                          ; $6bbb: $07
    ld l, a                                       ; $6bbc: $6f
    rla                                           ; $6bbd: $17
    nop                                           ; $6bbe: $00
    or e                                          ; $6bbf: $b3
    inc a                                         ; $6bc0: $3c
    nop                                           ; $6bc1: $00
    ld c, a                                       ; $6bc2: $4f
    ld a, l                                       ; $6bc3: $7d
    rlca                                          ; $6bc4: $07
    or l                                          ; $6bc5: $b5
    cp $79                                        ; $6bc6: $fe $79
    sbc e                                         ; $6bc8: $9b
    jp c, $e5f3                                   ; $6bc9: $da $f3 $e5

    ld l, d                                       ; $6bcc: $6a
    ld [hl], l                                    ; $6bcd: $75
    nop                                           ; $6bce: $00
    ld l, a                                       ; $6bcf: $6f
    ld d, a                                       ; $6bd0: $57
    rr a                                          ; $6bd1: $cb $1f
    ld c, l                                       ; $6bd3: $4d
    ret nz                                        ; $6bd4: $c0

    ld h, b                                       ; $6bd5: $60
    ld c, a                                       ; $6bd6: $4f
    ld a, l                                       ; $6bd7: $7d
    rlca                                          ; $6bd8: $07

Jump_04a_6bd9:
    or l                                          ; $6bd9: $b5
    cp $79                                        ; $6bda: $fe $79
    sbc e                                         ; $6bdc: $9b
    jp c, $e5f3                                   ; $6bdd: $da $f3 $e5

    ld l, d                                       ; $6be0: $6a
    dec d                                         ; $6be1: $15
    rra                                           ; $6be2: $1f
    ld l, a                                       ; $6be3: $6f
    ld [hl], a                                    ; $6be4: $77
    ld h, a                                       ; $6be5: $67
    inc c                                         ; $6be6: $0c
    ld [hl], d                                    ; $6be7: $72
    and [hl]                                      ; $6be8: $a6
    add hl, de                                    ; $6be9: $19
    inc bc                                        ; $6bea: $03
    cp a                                          ; $6beb: $bf
    rrca                                          ; $6bec: $0f
    db $ed                                        ; $6bed: $ed
    db $fc                                        ; $6bee: $fc
    dec hl                                        ; $6bef: $2b
    sub a                                         ; $6bf0: $97
    ld h, [hl]                                    ; $6bf1: $66
    inc [hl]                                      ; $6bf2: $34
    ldh a, [$eb]                                  ; $6bf3: $f0 $eb
    dec sp                                        ; $6bf5: $3b
    ld sp, hl                                     ; $6bf6: $f9
    ccf                                           ; $6bf7: $3f
    ld [hl], h                                    ; $6bf8: $74
    ld [hl-], a                                   ; $6bf9: $32
    and e                                         ; $6bfa: $a3
    ld hl, sp+$00                                 ; $6bfb: $f8 $00
    ld l, a                                       ; $6bfd: $6f
    sbc e                                         ; $6bfe: $9b
    ld d, c                                       ; $6bff: $51
    call nc, Call_04a_5a4e                        ; $6c00: $d4 $4e $5a
    ld c, $e5                                     ; $6c03: $0e $e5
    sbc h                                         ; $6c05: $9c
    add l                                         ; $6c06: $85
    push de                                       ; $6c07: $d5
    ld d, b                                       ; $6c08: $50
    di                                            ; $6c09: $f3
    jp z, $cf01                                   ; $6c0a: $ca $01 $cf

    inc [hl]                                      ; $6c0d: $34
    ld b, a                                       ; $6c0e: $47
    cp a                                          ; $6c0f: $bf
    call nc, $9df4                                ; $6c10: $d4 $f4 $9d
    xor h                                         ; $6c13: $ac
    ld [hl], e                                    ; $6c14: $73
    ld l, [hl]                                    ; $6c15: $6e
    cp h                                          ; $6c16: $bc
    sub a                                         ; $6c17: $97
    ld a, $18                                     ; $6c18: $3e $18
    sub [hl]                                      ; $6c1a: $96
    push de                                       ; $6c1b: $d5
    inc l                                         ; $6c1c: $2c
    ld a, l                                       ; $6c1d: $7d
    ld c, c                                       ; $6c1e: $49
    ld e, l                                       ; $6c1f: $5d
    add hl, sp                                    ; $6c20: $39
    nop                                           ; $6c21: $00
    rst $10                                       ; $6c22: $d7
    dec l                                         ; $6c23: $2d
    adc d                                         ; $6c24: $8a
    ld c, d                                       ; $6c25: $4a
    pop af                                        ; $6c26: $f1
    ld e, [hl]                                    ; $6c27: $5e
    ld a, [$5860]                                 ; $6c28: $fa $60 $58
    ld d, [hl]                                    ; $6c2b: $56
    or e                                          ; $6c2c: $b3
    db $f4                                        ; $6c2d: $f4
    dec h                                         ; $6c2e: $25
    ld [hl], l                                    ; $6c2f: $75
    push hl                                       ; $6c30: $e5
    nop                                           ; $6c31: $00
    ld d, a                                       ; $6c32: $57
    or c                                          ; $6c33: $b1
    sub e                                         ; $6c34: $93
    push hl                                       ; $6c35: $e5
    ld [$afc9], a                                 ; $6c36: $ea $c9 $af
    ld a, b                                       ; $6c39: $78
    ld c, a                                       ; $6c3a: $4f
    call c, $d7bb                                 ; $6c3b: $dc $bb $d7
    ld h, l                                       ; $6c3e: $65
    ld a, h                                       ; $6c3f: $7c
    nop                                           ; $6c40: $00
    rst $10                                       ; $6c41: $d7
    db $e4                                        ; $6c42: $e4
    ld b, b                                       ; $6c43: $40
    dec hl                                        ; $6c44: $2b
    sbc d                                         ; $6c45: $9a
    or e                                          ; $6c46: $b3
    jp nc, $b89e                                  ; $6c47: $d2 $9e $b8

    ld [hl], a                                    ; $6c4a: $77
    xor a                                         ; $6c4b: $af
    bit 7, b                                      ; $6c4c: $cb $78
    xor $ff                                       ; $6c4e: $ee $ff
    inc d                                         ; $6c50: $14
    rra                                           ; $6c51: $1f
    rst $28                                       ; $6c52: $ef
    ld h, c                                       ; $6c53: $61
    sub b                                         ; $6c54: $90
    dec sp                                        ; $6c55: $3b
    ld [hl], l                                    ; $6c56: $75
    cp $36                                        ; $6c57: $fe $36
    sbc d                                         ; $6c59: $9a
    add e                                         ; $6c5a: $83
    ld a, h                                       ; $6c5b: $7c
    push hl                                       ; $6c5c: $e5
    nop                                           ; $6c5d: $00
    ld l, a                                       ; $6c5e: $6f
    ld l, $6c                                     ; $6c5f: $2e $6c
    ld b, l                                       ; $6c61: $45
    cp h                                          ; $6c62: $bc
    db $10                                        ; $6c63: $10
    ld c, e                                       ; $6c64: $4b
    ld c, e                                       ; $6c65: $4b
    inc l                                         ; $6c66: $2c
    rst $08                                       ; $6c67: $cf
    ld [hl], a                                    ; $6c68: $77
    ld de, $5f7a                                  ; $6c69: $11 $7a $5f
    db $dd                                        ; $6c6c: $dd
    sbc h                                         ; $6c6d: $9c
    ei                                            ; $6c6e: $fb
    ccf                                           ; $6c6f: $3f
    push bc                                       ; $6c70: $c5
    rlca                                          ; $6c71: $07
    xor a                                         ; $6c72: $af
    inc d                                         ; $6c73: $14
    ld a, [hl+]                                   ; $6c74: $2a
    ld b, l                                       ; $6c75: $45
    ld e, a                                       ; $6c76: $5f
    scf                                           ; $6c77: $37
    ld l, a                                       ; $6c78: $6f
    ld d, e                                       ; $6c79: $53
    ld a, e                                       ; $6c7a: $7b
    ld [de], a                                    ; $6c7b: $12
    ld a, [$561c]                                 ; $6c7c: $fa $1c $56
    sub [hl]                                      ; $6c7f: $96
    jr nc, jr_04a_6cba                            ; $6c80: $30 $38

    nop                                           ; $6c82: $00
    ld l, a                                       ; $6c83: $6f
    ld [hl], a                                    ; $6c84: $77
    ld h, c                                       ; $6c85: $61
    dec b                                         ; $6c86: $05
    and c                                         ; $6c87: $a1
    cp c                                          ; $6c88: $b9
    ld d, e                                       ; $6c89: $53
    ld sp, $cc11                                  ; $6c8a: $31 $11 $cc
    db $fd                                        ; $6c8d: $fd
    sbc a                                         ; $6c8e: $9f
    ret z                                         ; $6c8f: $c8

    call z, $43ef                                 ; $6c90: $cc $ef $43
    di                                            ; $6c93: $f3
    ret z                                         ; $6c94: $c8

    adc e                                         ; $6c95: $8b
    ld a, [hl]                                    ; $6c96: $7e
    call nc, Call_000_38e4                        ; $6c97: $d4 $e4 $38
    adc [hl]                                      ; $6c9a: $8e
    rrca                                          ; $6c9b: $0f
    ld l, a                                       ; $6c9c: $6f
    dec de                                        ; $6c9d: $1b
    rst $28                                       ; $6c9e: $ef
    add h                                         ; $6c9f: $84
    sbc d                                         ; $6ca0: $9a
    rst $20                                       ; $6ca1: $e7

jr_04a_6ca2:
    call z, $c92d                                 ; $6ca2: $cc $2d $c9
    rrca                                          ; $6ca5: $0f
    dec [hl]                                      ; $6ca6: $35
    xor a                                         ; $6ca7: $af
    inc e                                         ; $6ca8: $1c
    ld l, a                                       ; $6ca9: $6f
    ld [hl], a                                    ; $6caa: $77
    ld h, c                                       ; $6cab: $61
    dec b                                         ; $6cac: $05
    and c                                         ; $6cad: $a1
    cp c                                          ; $6cae: $b9

Jump_04a_6caf:
    ld d, e                                       ; $6caf: $53
    ld sp, $cc11                                  ; $6cb0: $31 $11 $cc
    db $fd                                        ; $6cb3: $fd
    sbc a                                         ; $6cb4: $9f
    ret z                                         ; $6cb5: $c8

    call z, $43ef                                 ; $6cb6: $cc $ef $43
    di                                            ; $6cb9: $f3

jr_04a_6cba:
    ret z                                         ; $6cba: $c8

    adc e                                         ; $6cbb: $8b
    ld a, [hl]                                    ; $6cbc: $7e
    call nc, Call_000_38e4                        ; $6cbd: $d4 $e4 $38
    adc [hl]                                      ; $6cc0: $8e
    rrca                                          ; $6cc1: $0f
    rst $10                                       ; $6cc2: $d7
    db $e4                                        ; $6cc3: $e4
    add h                                         ; $6cc4: $84
    and $04                                       ; $6cc5: $e6 $04
    adc l                                         ; $6cc7: $8d
    pop bc                                        ; $6cc8: $c1

Jump_04a_6cc9:
    cp h                                          ; $6cc9: $bc
    pop af                                        ; $6cca: $f1
    ld d, b                                       ; $6ccb: $50
    adc $19                                       ; $6ccc: $ce $19
    sub [hl]                                      ; $6cce: $96
    push de                                       ; $6ccf: $d5
    jp nz, $930a                                  ; $6cd0: $c2 $0a $93

    ld c, [hl]                                    ; $6cd3: $4e
    ld h, [hl]                                    ; $6cd4: $66
    ld [hl], e                                    ; $6cd5: $73
    ld l, [hl]                                    ; $6cd6: $6e
    ld c, c                                       ; $6cd7: $49
    ld a, [hl]                                    ; $6cd8: $7e
    xor b                                         ; $6cd9: $a8
    add hl, de                                    ; $6cda: $19
    rra                                           ; $6cdb: $1f
    ld d, a                                       ; $6cdc: $57
    adc l                                         ; $6cdd: $8d
    add a                                         ; $6cde: $87

Jump_04a_6cdf:
    ld l, d                                       ; $6cdf: $6a
    add c                                         ; $6ce0: $81
    ld b, l                                       ; $6ce1: $45
    ld d, c                                       ; $6ce2: $51
    add hl, hl                                    ; $6ce3: $29
    sbc $db                                       ; $6ce4: $de $db
    dec l                                         ; $6ce6: $2d
    rst $08                                       ; $6ce7: $cf
    ld e, c                                       ; $6ce8: $59
    ld e, b                                       ; $6ce9: $58
    sbc $b9                                       ; $6cea: $de $b9
    or d                                          ; $6cec: $b2
    ld [hl], h                                    ; $6ced: $74
    push hl                                       ; $6cee: $e5
    nop                                           ; $6cef: $00
    ld d, a                                       ; $6cf0: $57
    dec sp                                        ; $6cf1: $3b
    push bc                                       ; $6cf2: $c5
    sub [hl]                                      ; $6cf3: $96
    sbc $8c                                       ; $6cf4: $de $8c
    inc a                                         ; $6cf6: $3c
    ld b, h                                       ; $6cf7: $44
    jr jr_04a_6ca2                                ; $6cf8: $18 $a8

    and c                                         ; $6cfa: $a1
    jp c, $f713                                   ; $6cfb: $da $13 $f7

    xor $75                                       ; $6cfe: $ee $75
    add hl, de                                    ; $6d00: $19
    rra                                           ; $6d01: $1f
    sub a                                         ; $6d02: $97
    push hl                                       ; $6d03: $e5
    and c                                         ; $6d04: $a1
    jp c, Jump_04a_7c77                           ; $6d05: $da $77 $7c

    inc e                                         ; $6d08: $1c
    rst $00                                       ; $6d09: $c7
    ld b, e                                       ; $6d0a: $43
    add hl, sp                                    ; $6d0b: $39
    ret nc                                        ; $6d0c: $d0

    adc d                                         ; $6d0d: $8a
    and $ec                                       ; $6d0e: $e6 $ec
    adc c                                         ; $6d10: $89
    ld a, e                                       ; $6d11: $7b
    rst $30                                       ; $6d12: $f7
    cp d                                          ; $6d13: $ba
    adc h                                         ; $6d14: $8c
    rrca                                          ; $6d15: $0f
    rst $28                                       ; $6d16: $ef
    ld h, c                                       ; $6d17: $61
    sub b                                         ; $6d18: $90
    dec sp                                        ; $6d19: $3b
    ld [hl], l                                    ; $6d1a: $75
    ld h, c                                       ; $6d1b: $61
    ld a, c                                       ; $6d1c: $79
    ld l, l                                       ; $6d1d: $6d
    xor d                                         ; $6d1e: $aa
    dec hl                                        ; $6d1f: $2b
    rlca                                          ; $6d20: $07
    ld l, a                                       ; $6d21: $6f
    ld l, $6c                                     ; $6d22: $2e $6c
    ld b, l                                       ; $6d24: $45
    cp h                                          ; $6d25: $bc
    call nz, Call_04a_40f2                        ; $6d26: $c4 $f2 $40
    di                                            ; $6d29: $f3
    rla                                           ; $6d2a: $17
    db $ec                                        ; $6d2b: $ec
    ld [hl], l                                    ; $6d2c: $75
    sub h                                         ; $6d2d: $94
    or d                                          ; $6d2e: $b2
    ld e, d                                       ; $6d2f: $5a
    push bc                                       ; $6d30: $c5
    rlca                                          ; $6d31: $07
    rst $28                                       ; $6d32: $ef
    db $fd                                        ; $6d33: $fd
    ld [hl], d                                    ; $6d34: $72
    ld hl, sp+$1d                                 ; $6d35: $f8 $1d
    ld e, a                                       ; $6d37: $5f
    ld [c], a                                     ; $6d38: $e2
    and b                                         ; $6d39: $a0
    or a                                          ; $6d3a: $b7
    xor c                                         ; $6d3b: $a9
    cp l                                          ; $6d3c: $bd
    sbc [hl]                                      ; $6d3d: $9e
    cp a                                          ; $6d3e: $bf
    ret nc                                        ; $6d3f: $d0

    add hl, bc                                    ; $6d40: $09
    ld d, e                                       ; $6d41: $53
    ld d, [hl]                                    ; $6d42: $56
    rra                                           ; $6d43: $1f
    ld l, a                                       ; $6d44: $6f
    ld d, a                                       ; $6d45: $57
    rr a                                          ; $6d46: $cb $1f
    dec c                                         ; $6d48: $0d
    ld [hl], e                                    ; $6d49: $73
    rst $28                                       ; $6d4a: $ef
    db $fd                                        ; $6d4b: $fd
    ld [hl], d                                    ; $6d4c: $72
    ld hl, sp+$1d                                 ; $6d4d: $f8 $1d
    ld e, a                                       ; $6d4f: $5f
    ld [c], a                                     ; $6d50: $e2
    and b                                         ; $6d51: $a0
    or a                                          ; $6d52: $b7
    xor c                                         ; $6d53: $a9
    cp l                                          ; $6d54: $bd
    pop af                                        ; $6d55: $f1
    db $dd                                        ; $6d56: $dd
    sub d                                         ; $6d57: $92
    jp z, $e85f                                   ; $6d58: $ca $5f $e8

    add h                                         ; $6d5b: $84
    add hl, hl                                    ; $6d5c: $29
    xor e                                         ; $6d5d: $ab
    rrca                                          ; $6d5e: $0f
    cpl                                           ; $6d5f: $2f

Call_04a_6d60:
    ld a, l                                       ; $6d60: $7d
    adc d                                         ; $6d61: $8a
    call z, $40f4                                 ; $6d62: $cc $f4 $40
    rst $08                                       ; $6d65: $cf
    ret c                                         ; $6d66: $d8

    sbc h                                         ; $6d67: $9c
    db $fc                                        ; $6d68: $fc
    rra                                           ; $6d69: $1f
    ld a, [de]                                    ; $6d6a: $1a
    jp z, Jump_000_3681                           ; $6d6b: $ca $81 $36

    and a                                         ; $6d6e: $a7
    ld a, [c]                                     ; $6d6f: $f2
    rla                                           ; $6d70: $17
    ld a, [de]                                    ; $6d71: $1a
    sub a                                         ; $6d72: $97
    inc e                                         ; $6d73: $1c
    db $10                                        ; $6d74: $10
    rst $00                                       ; $6d75: $c7
    pop af                                        ; $6d76: $f1
    ld c, [hl]                                    ; $6d77: $4e
    add $0b                                       ; $6d78: $c6 $0b
    dec hl                                        ; $6d7a: $2b
    inc l                                         ; $6d7b: $2c
    add sp, -$6b                                  ; $6d7c: $e8 $95
    inc bc                                        ; $6d7e: $03
    ld l, a                                       ; $6d7f: $6f
    dec de                                        ; $6d80: $1b
    ld c, a                                       ; $6d81: $4f
    ld e, d                                       ; $6d82: $5a
    ld c, $e5                                     ; $6d83: $0e $e5
    call c, Call_04a_69ff                         ; $6d85: $dc $ff $69
    ld b, c                                       ; $6d88: $41
    rst $20                                       ; $6d89: $e7
    ld a, a                                       ; $6d8a: $7f
    di                                            ; $6d8b: $f3
    jp z, Jump_000_0076                           ; $6d8c: $ca $76 $00

    rst $08                                       ; $6d8f: $cf
    inc [hl]                                      ; $6d90: $34
    rst $20                                       ; $6d91: $e7
    ld e, d                                       ; $6d92: $5a
    ld l, $c2                                     ; $6d93: $2e $c2
    jr nz, @+$29                                  ; $6d95: $20 $27

    ld [hl-], a                                   ; $6d97: $32
    rst $30                                       ; $6d98: $f7
    inc de                                        ; $6d99: $13
    sub [hl]                                      ; $6d9a: $96
    sbc e                                         ; $6d9b: $9b
    ld [c], a                                     ; $6d9c: $e2
    rst $30                                       ; $6d9d: $f7
    jp nc, $c307                                  ; $6d9e: $d2 $07 $c3

    or d                                          ; $6da1: $b2
    sbc d                                         ; $6da2: $9a
    and l                                         ; $6da3: $a5
    cpl                                           ; $6da4: $2f
    xor c                                         ; $6da5: $a9
    dec hl                                        ; $6da6: $2b
    rlca                                          ; $6da7: $07
    ld d, a                                       ; $6da8: $57
    adc l                                         ; $6da9: $8d
    add a                                         ; $6daa: $87
    ld l, d                                       ; $6dab: $6a
    ld h, a                                       ; $6dac: $67
    rst $00                                       ; $6dad: $c7
    and c                                         ; $6dae: $a1
    ld a, b                                       ; $6daf: $78
    cpl                                           ; $6db0: $2f
    ld a, l                                       ; $6db1: $7d
    jr nc, jr_04a_6de0                            ; $6db2: $30 $2c

    xor e                                         ; $6db4: $ab
    ld e, c                                       ; $6db5: $59
    ld a, [$ba92]                                 ; $6db6: $fa $92 $ba
    ld [hl], d                                    ; $6db9: $72
    nop                                           ; $6dba: $00
    xor a                                         ; $6dbb: $af
    db $eb                                        ; $6dbc: $eb
    jp nz, Jump_04a_5643                          ; $6dbd: $c2 $43 $56

    ld a, e                                       ; $6dc0: $7b
    ld [c], a                                     ; $6dc1: $e2
    sbc $bd                                       ; $6dc2: $de $bd
    ld l, $e3                                     ; $6dc4: $2e $e3
    inc bc                                        ; $6dc6: $03
    rst $10                                       ; $6dc7: $d7
    db $e4                                        ; $6dc8: $e4
    and h                                         ; $6dc9: $a4
    push hl                                       ; $6dca: $e5
    add d                                         ; $6dcb: $82
    ld c, [hl]                                    ; $6dcc: $4e
    ld d, a                                       ; $6dcd: $57
    jp z, $9ed2                                   ; $6dce: $ca $d2 $9e

    cp b                                          ; $6dd1: $b8
    ld [hl], a                                    ; $6dd2: $77
    xor a                                         ; $6dd3: $af
    bit 7, b                                      ; $6dd4: $cb $78
    and b                                         ; $6dd6: $a0
    ld l, [hl]                                    ; $6dd7: $6e
    inc sp                                        ; $6dd8: $33
    ld a, $00                                     ; $6dd9: $3e $00
    rst $08                                       ; $6ddb: $cf
    ld l, e                                       ; $6ddc: $6b
    ld c, h                                       ; $6ddd: $4c
    ret                                           ; $6dde: $c9


    di                                            ; $6ddf: $f3

jr_04a_6de0:
    ret z                                         ; $6de0: $c8

    inc sp                                        ; $6de1: $33
    jr c, @-$42                                   ; $6de2: $38 $bc

    db $10                                        ; $6de4: $10
    sbc e                                         ; $6de5: $9b
    ld d, b                                       ; $6de6: $50
    ld a, l                                       ; $6de7: $7d
    push hl                                       ; $6de8: $e5
    nop                                           ; $6de9: $00
    rst $10                                       ; $6dea: $d7
    db $e4                                        ; $6deb: $e4
    ld b, b                                       ; $6dec: $40
    push af                                       ; $6ded: $f5
    rst $38                                       ; $6dee: $ff
    and d                                         ; $6def: $a2
    ld a, c                                       ; $6df0: $79
    db $e3                                        ; $6df1: $e3
    ld a, c                                       ; $6df2: $79
    db $e4                                        ; $6df3: $e4
    sbc l                                         ; $6df4: $9d
    adc h                                         ; $6df5: $8c
    rst $00                                       ; $6df6: $c7
    ld e, l                                       ; $6df7: $5d
    ld e, b                                       ; $6df8: $58
    ld de, $1823                                  ; $6df9: $11 $23 $18
    xor d                                         ; $6dfc: $aa
    cp c                                          ; $6dfd: $b9
    rst $38                                       ; $6dfe: $ff
    db $d3                                        ; $6dff: $d3
    add d                                         ; $6e00: $82
    rst $28                                       ; $6e01: $ef
    sbc h                                         ; $6e02: $9c
    and [hl]                                      ; $6e03: $a6
    ld [hl+], a                                   ; $6e04: $22
    inc sp                                        ; $6e05: $33
    add hl, de                                    ; $6e06: $19
    rra                                           ; $6e07: $1f
    cpl                                           ; $6e08: $2f
    sbc d                                         ; $6e09: $9a
    or a                                          ; $6e0a: $b7
    xor b                                         ; $6e0b: $a8
    ld a, e                                       ; $6e0c: $7b
    pop de                                        ; $6e0d: $d1
    or h                                          ; $6e0e: $b4
    xor [hl]                                      ; $6e0f: $ae
    call nz, Call_000_003c                        ; $6e10: $c4 $3c $00
    ld l, a                                       ; $6e13: $6f
    ld d, a                                       ; $6e14: $57
    rr a                                          ; $6e15: $cb $1f
    ld c, l                                       ; $6e17: $4d
    ret nz                                        ; $6e18: $c0

    ld h, b                                       ; $6e19: $60
    cpl                                           ; $6e1a: $2f
    sbc d                                         ; $6e1b: $9a
    or a                                          ; $6e1c: $b7
    xor b                                         ; $6e1d: $a8
    ld a, e                                       ; $6e1e: $7b
    pop de                                        ; $6e1f: $d1
    or h                                          ; $6e20: $b4
    xor [hl]                                      ; $6e21: $ae
    call nz, Call_04a_4dbc                        ; $6e22: $c4 $bc $4d
    db $ed                                        ; $6e25: $ed
    cp c                                          ; $6e26: $b9
    sbc [hl]                                      ; $6e27: $9e
    call z, $e337                                 ; $6e28: $cc $37 $e3
    inc bc                                        ; $6e2b: $03
    rst $10                                       ; $6e2c: $d7
    jp z, $dc6a                                   ; $6e2d: $ca $6a $dc

    cp c                                          ; $6e30: $b9
    dec h                                         ; $6e31: $25
    ld sp, hl                                     ; $6e32: $f9
    and c                                         ; $6e33: $a1
    and $c5                                       ; $6e34: $e6 $c5
    inc [hl]                                      ; $6e36: $34
    ld d, [hl]                                    ; $6e37: $56
    inc d                                         ; $6e38: $14
    db $f4                                        ; $6e39: $f4
    jp z, Jump_000_305e                           ; $6e3a: $ca $5e $30

    db $e3                                        ; $6e3d: $e3
    or l                                          ; $6e3e: $b5
    xor c                                         ; $6e3f: $a9
    halt                                          ; $6e40: $76
    add $66                                       ; $6e41: $c6 $66

Jump_04a_6e43:
    ld a, h                                       ; $6e43: $7c
    nop                                           ; $6e44: $00
    ld l, a                                       ; $6e45: $6f
    dec de                                        ; $6e46: $1b
    cpl                                           ; $6e47: $2f
    xor h                                         ; $6e48: $ac
    or b                                          ; $6e49: $b0
    and b                                         ; $6e4a: $a0
    set 5, a                                      ; $6e4b: $cb $ef
    ld de, $d95c                                  ; $6e4d: $11 $5c $d9
    db $db                                        ; $6e50: $db
    ld e, l                                       ; $6e51: $5d
    ld e, b                                       ; $6e52: $58
    ld b, c                                       ; $6e53: $41
    ld l, b                                       ; $6e54: $68
    adc $35                                       ; $6e55: $ce $35
    push bc                                       ; $6e57: $c5
    dec sp                                        ; $6e58: $3b
    ld d, l                                       ; $6e59: $55
    cpl                                           ; $6e5a: $2f
    add sp, $22                                   ; $6e5b: $e8 $22
    inc sp                                        ; $6e5d: $33
    adc [hl]                                      ; $6e5e: $8e
    rrca                                          ; $6e5f: $0f
    ld d, a                                       ; $6e60: $57
    adc l                                         ; $6e61: $8d
    ld [hl], a                                    ; $6e62: $77
    ld [hl], $bd                                  ; $6e63: $36 $bd
    and b                                         ; $6e65: $a0
    inc bc                                        ; $6e66: $03
    cp a                                          ; $6e67: $bf
    ld a, [hl]                                    ; $6e68: $7e
    adc d                                         ; $6e69: $8a
    call $de32                                    ; $6e6a: $cd $32 $de
    ld c, e                                       ; $6e6d: $4b
    rra                                           ; $6e6e: $1f
    inc c                                         ; $6e6f: $0c
    bit 5, d                                      ; $6e70: $cb $6a
    sub [hl]                                      ; $6e72: $96
    cp [hl]                                       ; $6e73: $be
    and h                                         ; $6e74: $a4
    xor [hl]                                      ; $6e75: $ae
    inc e                                         ; $6e76: $1c
    rst $08                                       ; $6e77: $cf
    db $10                                        ; $6e78: $10
    ld e, b                                       ; $6e79: $58
    ld h, b                                       ; $6e7a: $60
    ld d, c                                       ; $6e7b: $51
    ld d, h                                       ; $6e7c: $54
    cp d                                          ; $6e7d: $ba
    sbc b                                         ; $6e7e: $98
    add $8a                                       ; $6e7f: $c6 $8a
    add d                                         ; $6e81: $82
    add $7b                                       ; $6e82: $c6 $7b
    jp hl                                         ; $6e84: $e9


    add e                                         ; $6e85: $83
    ld h, c                                       ; $6e86: $61
    ld e, c                                       ; $6e87: $59
    call $97d2                                    ; $6e88: $cd $d2 $97
    call nc, $0395                                ; $6e8b: $d4 $95 $03
    ld d, a                                       ; $6e8e: $57
    adc l                                         ; $6e8f: $8d
    daa                                           ; $6e90: $27
    cp a                                          ; $6e91: $bf
    ld [c], a                                     ; $6e92: $e2
    dec b                                         ; $6e93: $05
    db $dd                                        ; $6e94: $dd
    inc de                                        ; $6e95: $13
    rst $30                                       ; $6e96: $f7
    xor $75                                       ; $6e97: $ee $75
    add hl, de                                    ; $6e99: $19
    rra                                           ; $6e9a: $1f
    rst $10                                       ; $6e9b: $d7
    db $e4                                        ; $6e9c: $e4
    and h                                         ; $6e9d: $a4
    push hl                                       ; $6e9e: $e5
    add d                                         ; $6e9f: $82
    xor [hl]                                      ; $6ea0: $ae
    or h                                          ; $6ea1: $b4
    daa                                           ; $6ea2: $27
    xor $dd                                       ; $6ea3: $ee $dd
    db $eb                                        ; $6ea5: $eb
    ld [hl-], a                                   ; $6ea6: $32
    sbc [hl]                                      ; $6ea7: $9e
    ei                                            ; $6ea8: $fb
    ccf                                           ; $6ea9: $3f
    dec c                                         ; $6eaa: $0d
    call nc, $c66d                                ; $6eab: $d4 $6d $c6
    rlca                                          ; $6eae: $07
    ld l, a                                       ; $6eaf: $6f
    ld h, c                                       ; $6eb0: $61
    ld a, [$9d05]                                 ; $6eb1: $fa $05 $9d
    scf                                           ; $6eb4: $37
    sbc $97                                       ; $6eb5: $de $97
    scf                                           ; $6eb7: $37
    ld e, h                                       ; $6eb8: $5c
    add hl, sp                                    ; $6eb9: $39
    nop                                           ; $6eba: $00
    rst $10                                       ; $6ebb: $d7
    db $e4                                        ; $6ebc: $e4
    ld a, h                                       ; $6ebd: $7c
    ld d, e                                       ; $6ebe: $53
    adc $1b                                       ; $6ebf: $ce $1b
    rst $08                                       ; $6ec1: $cf
    dec de                                        ; $6ec2: $1b
    cpl                                           ; $6ec3: $2f
    ld l, d                                       ; $6ec4: $6a
    ld l, c                                       ; $6ec5: $69
    xor b                                         ; $6ec6: $a8
    and $2d                                       ; $6ec7: $e6 $2d
    rla                                           ; $6ec9: $17
    ld [hl], h                                    ; $6eca: $74
    ld h, c                                       ; $6ecb: $61
    dec b                                         ; $6ecc: $05
    adc [hl]                                      ; $6ecd: $8e

jr_04a_6ece:
    rst $30                                       ; $6ece: $f7
    jp nc, $c307                                  ; $6ecf: $d2 $07 $c3

    or d                                          ; $6ed2: $b2
    sbc d                                         ; $6ed3: $9a
    and l                                         ; $6ed4: $a5
    cpl                                           ; $6ed5: $2f
    xor c                                         ; $6ed6: $a9
    dec hl                                        ; $6ed7: $2b
    rlca                                          ; $6ed8: $07
    xor a                                         ; $6ed9: $af
    rst $20                                       ; $6eda: $e7
    cpl                                           ; $6edb: $2f
    inc h                                         ; $6edc: $24
    adc l                                         ; $6edd: $8d
    xor b                                         ; $6ede: $a8
    inc e                                         ; $6edf: $1c
    db $f4                                        ; $6ee0: $f4
    nop                                           ; $6ee1: $00
    ld l, a                                       ; $6ee2: $6f
    and e                                         ; $6ee3: $a3
    ld e, [hl]                                    ; $6ee4: $5e
    ret nc                                        ; $6ee5: $d0

    xor c                                         ; $6ee6: $a9
    db $fc                                        ; $6ee7: $fc
    add l                                         ; $6ee8: $85
    add d                                         ; $6ee9: $82
    xor d                                         ; $6eea: $aa
    dec hl                                        ; $6eeb: $2b
    db $db                                        ; $6eec: $db
    ld a, e                                       ; $6eed: $7b
    db $dd                                        ; $6eee: $dd
    add hl, de                                    ; $6eef: $19
    add e                                         ; $6ef0: $83
    sbc h                                         ; $6ef1: $9c
    ld l, c                                       ; $6ef2: $69
    db $dd                                        ; $6ef3: $dd
    ret z                                         ; $6ef4: $c8

    ld c, h                                       ; $6ef5: $4c
    ld c, a                                       ; $6ef6: $4f
    ld d, a                                       ; $6ef7: $57
    jp z, Jump_04a_7c52                           ; $6ef8: $ca $52 $7c

    nop                                           ; $6efb: $00
    cpl                                           ; $6efc: $2f
    jr @+$39                                      ; $6efd: $18 $37

    ld [hl], a                                    ; $6eff: $77
    ld [$54da], a                                 ; $6f00: $ea $da $54

Call_04a_6f03:
    sub e                                         ; $6f03: $93
    jr jr_04a_6ece                                ; $6f04: $18 $c8

    and $4e                                       ; $6f06: $e6 $4e
    add $0b                                       ; $6f08: $c6 $0b
    ld a, [hl-]                                   ; $6f0a: $3a
    call z, $cef9                                 ; $6f0b: $cc $f9 $ce
    inc l                                         ; $6f0e: $2c
    dec b                                         ; $6f0f: $05
    xor h                                         ; $6f10: $ac
    rst $00                                       ; $6f11: $c7
    inc b                                         ; $6f12: $04
    dec bc                                        ; $6f13: $0b
    dec hl                                        ; $6f14: $2b
    ld [hl], b                                    ; $6f15: $70
    ld a, h                                       ; $6f16: $7c
    nop                                           ; $6f17: $00
    ld l, a                                       ; $6f18: $6f
    dec de                                        ; $6f19: $1b
    rst $28                                       ; $6f1a: $ef
    ld l, h                                       ; $6f1b: $6c
    ld a, d                                       ; $6f1c: $7a
    ld h, c                                       ; $6f1d: $61
    ld a, c                                       ; $6f1e: $79

Call_04a_6f1f:
    ld h, a                                       ; $6f1f: $67
    inc c                                         ; $6f20: $0c
    ld a, [c]                                     ; $6f21: $f2
    ld h, d                                       ; $6f22: $62
    ld a, [de]                                    ; $6f23: $1a
    dec hl                                        ; $6f24: $2b
    ld a, [bc]                                    ; $6f25: $0a
    ld a, d                                       ; $6f26: $7a
    push hl                                       ; $6f27: $e5
    nop                                           ; $6f28: $00
    ld d, a                                       ; $6f29: $57
    adc l                                         ; $6f2a: $8d
    add a                                         ; $6f2b: $87
    ld l, d                                       ; $6f2c: $6a
    add l                                         ; $6f2d: $85
    add a                                         ; $6f2e: $87
    inc a                                         ; $6f2f: $3c
    inc l                                         ; $6f30: $2c
    xor e                                         ; $6f31: $ab
    cp c                                          ; $6f32: $b9
    rst $38                                       ; $6f33: $ff
    db $d3                                        ; $6f34: $d3
    jp c, $f9dc                                   ; $6f35: $da $dc $f9

jr_04a_6f38:
    sub a                                         ; $6f38: $97
    dec hl                                        ; $6f39: $2b
    call $c539                                    ; $6f3a: $cd $39 $c5
    ld a, e                                       ; $6f3d: $7b
    db $db                                        ; $6f3e: $db
    call nc, $f1bc                                ; $6f3f: $d4 $bc $f1
    jp nz, $95f2                                  ; $6f42: $c2 $f2 $95

    inc bc                                        ; $6f45: $03
    ld d, a                                       ; $6f46: $57
    adc l                                         ; $6f47: $8d
    add a                                         ; $6f48: $87
    ld l, d                                       ; $6f49: $6a
    ld sp, hl                                     ; $6f4a: $f9
    sbc l                                         ; $6f4b: $9d
    dec b                                         ; $6f4c: $05
    ld d, $45                                     ; $6f4d: $16 $45
    and l                                         ; $6f4f: $a5
    ld a, b                                       ; $6f50: $78
    cpl                                           ; $6f51: $2f
    ld a, l                                       ; $6f52: $7d
    jr nc, jr_04a_6f81                            ; $6f53: $30 $2c

    xor e                                         ; $6f55: $ab
    dec hl                                        ; $6f56: $2b
    rlca                                          ; $6f57: $07
    sub a                                         ; $6f58: $97
    xor l                                         ; $6f59: $ad
    sbc [hl]                                      ; $6f5a: $9e
    adc d                                         ; $6f5b: $8a
    ld c, h                                       ; $6f5c: $4c
    ld d, [hl]                                    ; $6f5d: $56
    ld h, e                                       ; $6f5e: $63
    jr nz, jr_04a_6f38                            ; $6f5f: $20 $d7

    sbc h                                         ; $6f61: $9c
    jp nc, $8785                                  ; $6f62: $d2 $85 $87

    xor h                                         ; $6f65: $ac
    or $c4                                        ; $6f66: $f6 $c4
    cp l                                          ; $6f68: $bd
    ld a, e                                       ; $6f69: $7b
    ld e, l                                       ; $6f6a: $5d

Call_04a_6f6b:
    add $07                                       ; $6f6b: $c6 $07
    ld d, a                                       ; $6f6d: $57
    adc l                                         ; $6f6e: $8d
    ld [hl], a                                    ; $6f6f: $77
    ld b, d                                       ; $6f70: $42
    dec a                                         ; $6f71: $3d
    sub h                                         ; $6f72: $94
    dec sp                                        ; $6f73: $3b
    ld d, l                                       ; $6f74: $55
    ld c, a                                       ; $6f75: $4f
    ld a, [hl]                                    ; $6f76: $7e
    xor b                                         ; $6f77: $a8
    add hl, sp                                    ; $6f78: $39
    rst $30                                       ; $6f79: $f7
    ld a, a                                       ; $6f7a: $7f
    jp c, $f713                                   ; $6f7b: $da $13 $f7

    xor $75                                       ; $6f7e: $ee $75
    add hl, de                                    ; $6f80: $19

jr_04a_6f81:
    rra                                           ; $6f81: $1f
    rst $28                                       ; $6f82: $ef
    ld h, c                                       ; $6f83: $61
    sub b                                         ; $6f84: $90
    dec sp                                        ; $6f85: $3b
    ld [hl], l                                    ; $6f86: $75
    ld h, c                                       ; $6f87: $61
    ld a, c                                       ; $6f88: $79
    ld l, l                                       ; $6f89: $6d
    xor d                                         ; $6f8a: $aa
    ld a, c                                       ; $6f8b: $79
    sra e                                         ; $6f8c: $cb $2b
    rlca                                          ; $6f8e: $07
    cpl                                           ; $6f8f: $2f
    add a                                         ; $6f90: $87
    rla                                           ; $6f91: $17
    ld b, e                                       ; $6f92: $43
    add hl, sp                                    ; $6f93: $39
    ld d, b                                       ; $6f94: $50
    db $fd                                        ; $6f95: $fd
    cp a                                          ; $6f96: $bf
    ld l, b                                       ; $6f97: $68
    adc c                                         ; $6f98: $89
    push hl                                       ; $6f99: $e5
    ld a, c                                       ; $6f9a: $79
    db $e3                                        ; $6f9b: $e3
    dec b                                         ; $6f9c: $05
    ld e, l                                       ; $6f9d: $5d
    adc b                                         ; $6f9e: $88
    dec h                                         ; $6f9f: $25
    rst $30                                       ; $6fa0: $f7
    ld a, a                                       ; $6fa1: $7f
    ld a, [de]                                    ; $6fa2: $1a
    ld l, b                                       ; $6fa3: $68
    cp $82                                        ; $6fa4: $fe $82

Jump_04a_6fa6:
    add l                                         ; $6fa6: $85
    dec d                                         ; $6fa7: $15
    jr c, @+$40                                   ; $6fa8: $38 $3e

    nop                                           ; $6faa: $00
    ld l, a                                       ; $6fab: $6f
    dec de                                        ; $6fac: $1b
    dec [hl]                                      ; $6fad: $35
    ld b, e                                       ; $6fae: $43
    rlca                                          ; $6faf: $07
    push de                                       ; $6fb0: $d5
    sbc $6e                                       ; $6fb1: $de $6e
    ld d, h                                       ; $6fb3: $54
    ld a, l                                       ; $6fb4: $7d
    nop                                           ; $6fb5: $00
    ld l, a                                       ; $6fb6: $6f
    ld d, a                                       ; $6fb7: $57
    rr a                                          ; $6fb8: $cb $1f
    ld c, l                                       ; $6fba: $4d
    ret nz                                        ; $6fbb: $c0

    ld h, b                                       ; $6fbc: $60
    ld l, a                                       ; $6fbd: $6f
    scf                                           ; $6fbe: $37
    xor d                                         ; $6fbf: $aa
    cp [hl]                                       ; $6fc0: $be
    ld c, l                                       ; $6fc1: $4d
    db $ed                                        ; $6fc2: $ed
    push af                                       ; $6fc3: $f5
    db $fc                                        ; $6fc4: $fc
    add l                                         ; $6fc5: $85
    ld c, [hl]                                    ; $6fc6: $4e
    ld b, [hl]                                    ; $6fc7: $46
    call Call_04a_41d0                            ; $6fc8: $cd $d0 $41
    dec d                                         ; $6fcb: $15
    rra                                           ; $6fcc: $1f
    ld l, a                                       ; $6fcd: $6f
    dec de                                        ; $6fce: $1b
    cpl                                           ; $6fcf: $2f
    xor h                                         ; $6fd0: $ac
    or b                                          ; $6fd1: $b0
    and b                                         ; $6fd2: $a0
    ld d, a                                       ; $6fd3: $57
    ld c, $6f                                     ; $6fd4: $0e $6f
    dec de                                        ; $6fd6: $1b
    rst $28                                       ; $6fd7: $ef
    add h                                         ; $6fd8: $84
    ld a, d                                       ; $6fd9: $7a
    ld b, c                                       ; $6fda: $41
    rla                                           ; $6fdb: $17
    ld d, [hl]                                    ; $6fdc: $56
    db $10                                        ; $6fdd: $10
    sbc d                                         ; $6fde: $9a
    ld d, a                                       ; $6fdf: $57
    ld c, $4f                                     ; $6fe0: $0e $4f
    ld l, d                                       ; $6fe2: $6a
    add $c0                                       ; $6fe3: $c6 $c0
    rrca                                          ; $6fe5: $0f
    ld a, [$a390]                                 ; $6fe6: $fa $90 $a3
    dec c                                         ; $6fe9: $0d
    add hl, hl                                    ; $6fea: $29
    sbc $4b                                       ; $6feb: $de $4b
    rra                                           ; $6fed: $1f
    inc c                                         ; $6fee: $0c
    bit 5, d                                      ; $6fef: $cb $6a
    sub [hl]                                      ; $6ff1: $96
    cp [hl]                                       ; $6ff2: $be
    and h                                         ; $6ff3: $a4
    xor [hl]                                      ; $6ff4: $ae
    inc e                                         ; $6ff5: $1c
    cpl                                           ; $6ff6: $2f
    and d                                         ; $6ff7: $a2
    ld d, d                                       ; $6ff8: $52
    ldh a, [rNR10]                                ; $6ff9: $f0 $10
    sbc e                                         ; $6ffb: $9b
    ld [hl], e                                    ; $6ffc: $73
    ld c, e                                       ; $6ffd: $4b
    sub [hl]                                      ; $6ffe: $96
    cp [hl]                                       ; $6fff: $be
    or h                                          ; $7000: $b4
    and b                                         ; $7001: $a0
    db $d3                                        ; $7002: $d3
    add $a5                                       ; $7003: $c6 $a5
    cp c                                          ; $7005: $b9
    sub [hl]                                      ; $7006: $96
    inc bc                                        ; $7007: $03
    push af                                       ; $7008: $f5
    ld b, $0f                                     ; $7009: $06 $0f
    cp c                                          ; $700b: $b9

jr_04a_700c:
    add hl, de                                    ; $700c: $19
    rst $28                                       ; $700d: $ef
    and l                                         ; $700e: $a5
    rrca                                          ; $700f: $0f
    add [hl]                                      ; $7010: $86
    ld h, l                                       ; $7011: $65
    ld [hl], l                                    ; $7012: $75
    push hl                                       ; $7013: $e5
    nop                                           ; $7014: $00
    ld d, a                                       ; $7015: $57
    adc l                                         ; $7016: $8d
    daa                                           ; $7017: $27
    cp a                                          ; $7018: $bf
    ld [c], a                                     ; $7019: $e2
    dec a                                         ; $701a: $3d
    ld [hl], c                                    ; $701b: $71
    rst $28                                       ; $701c: $ef
    ld e, [hl]                                    ; $701d: $5e
    sub a                                         ; $701e: $97
    pop af                                        ; $701f: $f1
    ld bc, $472f                                  ; $7020: $01 $2f $47
    sbc $78                                       ; $7023: $de $78
    ld h, c                                       ; $7025: $61
    ld a, c                                       ; $7026: $79
    rst $18                                       ; $7027: $df
    pop af                                        ; $7028: $f1
    ld b, e                                       ; $7029: $43
    ld [hl], l                                    ; $702a: $75
    ld sp, $8ad0                                  ; $702b: $31 $d0 $8a
    add [hl]                                      ; $702e: $86
    ld [hl], d                                    ; $702f: $72
    ld c, a                                       ; $7030: $4f
    call c, $d7bb                                 ; $7031: $dc $bb $d7
    ld h, l                                       ; $7034: $65
    ld a, h                                       ; $7035: $7c
    nop                                           ; $7036: $00
    rst $28                                       ; $7037: $ef
    ld h, c                                       ; $7038: $61
    sub b                                         ; $7039: $90
    dec sp                                        ; $703a: $3b
    ld [hl], l                                    ; $703b: $75
    cp $36                                        ; $703c: $fe $36
    sbc d                                         ; $703e: $9a
    add e                                         ; $703f: $83
    ld a, h                                       ; $7040: $7c
    push hl                                       ; $7041: $e5
    nop                                           ; $7042: $00
    ld d, a                                       ; $7043: $57
    adc l                                         ; $7044: $8d
    daa                                           ; $7045: $27
    sbc l                                         ; $7046: $9d
    ld e, h                                       ; $7047: $5c
    ret nc                                        ; $7048: $d0

    dec h                                         ; $7049: $25
    sub [hl]                                      ; $704a: $96
    daa                                           ; $704b: $27
    sub h                                         ; $704c: $94
    ld c, l                                       ; $704d: $4d
    scf                                           ; $704e: $37
    cpl                                           ; $704f: $2f
    halt                                          ; $7050: $76
    ld l, c                                       ; $7051: $69
    ld b, h                                       ; $7052: $44
    ld h, d                                       ; $7053: $62
    ld [c], a                                     ; $7054: $e2
    inc bc                                        ; $7055: $03
    ld l, a                                       ; $7056: $6f
    scf                                           ; $7057: $37
    xor d                                         ; $7058: $aa
    cp [hl]                                       ; $7059: $be
    adc e                                         ; $705a: $8b
    ld c, a                                       ; $705b: $4f
    xor l                                         ; $705c: $ad
    add $04                                       ; $705d: $c6 $04
    ld a, e                                       ; $705f: $7b
    cp $7f                                        ; $7060: $fe $7f
    jr z, jr_04a_700c                             ; $7062: $28 $a8

    ld a, [hl-]                                   ; $7064: $3a
    nop                                           ; $7065: $00
    ld l, a                                       ; $7066: $6f
    ld d, a                                       ; $7067: $57
    rr a                                          ; $7068: $cb $1f
    ld c, l                                       ; $706a: $4d
    ret nz                                        ; $706b: $c0

    ld h, b                                       ; $706c: $60
    ld l, a                                       ; $706d: $6f
    scf                                           ; $706e: $37
    xor d                                         ; $706f: $aa
    cp [hl]                                       ; $7070: $be
    ld c, l                                       ; $7071: $4d
    db $ed                                        ; $7072: $ed
    ld sp, hl                                     ; $7073: $f9
    rst $38                                       ; $7074: $ff
    and c                                         ; $7075: $a1
    and b                                         ; $7076: $a0
    ld c, d                                       ; $7077: $4a
    ld d, [hl]                                    ; $7078: $56
    ei                                            ; $7079: $fb
    ld d, d                                       ; $707a: $52
    ld a, h                                       ; $707b: $7c
    nop                                           ; $707c: $00
    ld l, a                                       ; $707d: $6f
    dec de                                        ; $707e: $1b
    cpl                                           ; $707f: $2f
    xor h                                         ; $7080: $ac
    or b                                          ; $7081: $b0
    and b                                         ; $7082: $a0
    ld d, a                                       ; $7083: $57
    ld c, $6f                                     ; $7084: $0e $6f
    dec de                                        ; $7086: $1b
    rst $28                                       ; $7087: $ef
    add h                                         ; $7088: $84
    ld a, d                                       ; $7089: $7a
    ld b, c                                       ; $708a: $41
    rla                                           ; $708b: $17
    ld d, [hl]                                    ; $708c: $56
    db $10                                        ; $708d: $10
    sbc d                                         ; $708e: $9a
    ld d, a                                       ; $708f: $57
    ld c, $57                                     ; $7090: $0e $57
    adc l                                         ; $7092: $8d
    add a                                         ; $7093: $87
    ld l, d                                       ; $7094: $6a
    and [hl]                                      ; $7095: $a6
    add hl, de                                    ; $7096: $19
    inc bc                                        ; $7097: $03
    cp a                                          ; $7098: $bf
    ld [hl], $27                                  ; $7099: $36 $27
    ld [hl-], a                                   ; $709b: $32
    rst $30                                       ; $709c: $f7
    inc de                                        ; $709d: $13
    sub [hl]                                      ; $709e: $96
    rst $20                                       ; $709f: $e7
    cp $4f                                        ; $70a0: $fe $4f
    and a                                         ; $70a2: $a7
    ld [de], a                                    ; $70a3: $12
    inc d                                         ; $70a4: $14
    rst $28                                       ; $70a5: $ef
    and l                                         ; $70a6: $a5
    rrca                                          ; $70a7: $0f
    add [hl]                                      ; $70a8: $86
    ld h, l                                       ; $70a9: $65
    dec [hl]                                      ; $70aa: $35
    ld c, e                                       ; $70ab: $4b
    ld e, a                                       ; $70ac: $5f
    ld d, d                                       ; $70ad: $52
    ld d, a                                       ; $70ae: $57
    ld c, $d7                                     ; $70af: $0e $d7
    ld sp, $d9d8                                  ; $70b1: $31 $d8 $d9
    db $f4                                        ; $70b4: $f4
    ld l, [hl]                                    ; $70b5: $6e
    db $e3                                        ; $70b6: $e3
    sbc l                                         ; $70b7: $9d
    xor d                                         ; $70b8: $aa
    ld [hl], a                                    ; $70b9: $77
    ld a, [hl+]                                   ; $70ba: $2a
    scf                                           ; $70bb: $37
    db $e3                                        ; $70bc: $e3
    cp l                                          ; $70bd: $bd
    db $f4                                        ; $70be: $f4
    pop bc                                        ; $70bf: $c1
    or b                                          ; $70c0: $b0
    xor h                                         ; $70c1: $ac
    ld h, [hl]                                    ; $70c2: $66
    jp hl                                         ; $70c3: $e9


    ld c, e                                       ; $70c4: $4b
    ld [$01ca], a                                 ; $70c5: $ea $ca $01
    ld d, a                                       ; $70c8: $57
    adc l                                         ; $70c9: $8d
    daa                                           ; $70ca: $27
    cp a                                          ; $70cb: $bf
    ld [c], a                                     ; $70cc: $e2
    dec a                                         ; $70cd: $3d
    ld [hl], c                                    ; $70ce: $71
    rst $28                                       ; $70cf: $ef
    ld e, [hl]                                    ; $70d0: $5e
    sub a                                         ; $70d1: $97
    pop af                                        ; $70d2: $f1
    ld bc, $472f                                  ; $70d3: $01 $2f $47
    sbc $78                                       ; $70d6: $de $78
    ld h, c                                       ; $70d8: $61
    ld a, c                                       ; $70d9: $79
    rst $18                                       ; $70da: $df
    pop af                                        ; $70db: $f1
    ld b, e                                       ; $70dc: $43
    ld [hl], l                                    ; $70dd: $75

Call_04a_70de:
    ld sp, $8ad0                                  ; $70de: $31 $d0 $8a
    add [hl]                                      ; $70e1: $86
    ld [hl], d                                    ; $70e2: $72
    ld c, a                                       ; $70e3: $4f
    call c, $d7bb                                 ; $70e4: $dc $bb $d7
    ld h, l                                       ; $70e7: $65
    ld a, h                                       ; $70e8: $7c
    nop                                           ; $70e9: $00
    rst $28                                       ; $70ea: $ef
    ld h, c                                       ; $70eb: $61
    sub b                                         ; $70ec: $90
    dec sp                                        ; $70ed: $3b
    ld [hl], l                                    ; $70ee: $75
    cp $36                                        ; $70ef: $fe $36
    sbc d                                         ; $70f1: $9a
    add e                                         ; $70f2: $83
    ld a, h                                       ; $70f3: $7c
    push hl                                       ; $70f4: $e5
    nop                                           ; $70f5: $00
    ld l, a                                       ; $70f6: $6f
    ld h, e                                       ; $70f7: $63
    jr nc, @+$52                                  ; $70f8: $30 $50

    or a                                          ; $70fa: $b7
    add hl, sp                                    ; $70fb: $39
    ret nc                                        ; $70fc: $d0

    and $24                                       ; $70fd: $e6 $24
    push de                                       ; $70ff: $d5
    ld h, e                                       ; $7100: $63
    add hl, sp                                    ; $7101: $39
    adc [hl]                                      ; $7102: $8e
    db $e3                                        ; $7103: $e3
    sbc l                                         ; $7104: $9d
    xor e                                         ; $7105: $ab
    ld b, l                                       ; $7106: $45
    ld l, d                                       ; $7107: $6a
    adc c                                         ; $7108: $89
    push hl                                       ; $7109: $e5
    sbc c                                         ; $710a: $99
    push hl                                       ; $710b: $e5
    jp c, Jump_04a_73dc                           ; $710c: $da $dc $73

    add h                                         ; $710f: $84
    ld [hl+], a                                   ; $7110: $22
    pop de                                        ; $7111: $d1
    ld l, a                                       ; $7112: $6f
    ld a, [$e24f]                                 ; $7113: $fa $4f $e2
    rrca                                          ; $7116: $0f
    cpl                                           ; $7117: $2f
    ld a, a                                       ; $7118: $7f
    cp c                                          ; $7119: $b9
    ld d, e                                       ; $711a: $53
    push af                                       ; $711b: $f5
    sub h                                         ; $711c: $94
    ld [hl], $83                                  ; $711d: $36 $83
    ld [hl], h                                    ; $711f: $74
    dec [hl]                                      ; $7120: $35
    halt                                          ; $7121: $76
    and b                                         ; $7122: $a0
    ld sp, hl                                     ; $7123: $f9
    dec de                                        ; $7124: $1b
    ld sp, hl                                     ; $7125: $f9
    ld a, b                                       ; $7126: $78
    sub a                                         ; $7127: $97
    push hl                                       ; $7128: $e5
    and c                                         ; $7129: $a1
    jp c, Jump_04a_4b77                           ; $712a: $da $77 $4b

    and [hl]                                      ; $712d: $a6
    rst $00                                       ; $712e: $c7
    and l                                         ; $712f: $a5
    sbc l                                         ; $7130: $9d
    ld c, d                                       ; $7131: $4a
    push de                                       ; $7132: $d5
    ld a, [hl]                                    ; $7133: $7e
    call c, $98b9                                 ; $7134: $dc $b9 $98
    cp [hl]                                       ; $7137: $be
    cp c                                          ; $7138: $b9
    and $4e                                       ; $7139: $e6 $4e
    sbc a                                         ; $713b: $9f
    inc a                                         ; $713c: $3c
    rst $08                                       ; $713d: $cf
    dec [hl]                                      ; $713e: $35
    sub e                                         ; $713f: $93
    ld [hl], e                                    ; $7140: $73
    rst $38                                       ; $7141: $ff
    and a                                         ; $7142: $a7
    ld e, c                                       ; $7143: $59
    ld a, [$e752]                                 ; $7144: $fa $52 $e7
    ld a, a                                       ; $7147: $7f

Call_04a_7148:
    ld [hl], l                                    ; $7148: $75
    ld sp, $737d                                  ; $7149: $31 $7d $73
    sbc $72                                       ; $714c: $de $72
    db $fc                                        ; $714e: $fc
    db $dd                                        ; $714f: $dd
    ld d, d                                       ; $7150: $52
    ld [hl], e                                    ; $7151: $73
    and b                                         ; $7152: $a0
    ld [bc], a                                    ; $7153: $02
    add hl, sp                                    ; $7154: $39
    jr z, jr_04a_7190                             ; $7155: $28 $39

    ld a, $00                                     ; $7157: $3e $00
    ld d, a                                       ; $7159: $57
    sub c                                         ; $715a: $91
    add a                                         ; $715b: $87
    add hl, bc                                    ; $715c: $09
    xor b                                         ; $715d: $a8
    ld e, $6f                                     ; $715e: $1e $6f
    ld c, d                                       ; $7160: $4a
    ld e, [hl]                                    ; $7161: $5e
    db $f4                                        ; $7162: $f4
    rrc e                                         ; $7163: $cb $0b
    ld a, [hl-]                                   ; $7165: $3a
    rst $30                                       ; $7166: $f7
    ld a, a                                       ; $7167: $7f
    ld a, [hl-]                                   ; $7168: $3a
    inc hl                                        ; $7169: $23
    inc a                                         ; $716a: $3c
    ld h, h                                       ; $716b: $64
    inc b                                         ; $716c: $04
    add e                                         ; $716d: $83
    or h                                          ; $716e: $b4
    inc hl                                        ; $716f: $23
    ld h, l                                       ; $7170: $65
    ld [hl], e                                    ; $7171: $73
    call $a509                                    ; $7172: $cd $09 $a5
    and d                                         ; $7175: $a2
    ld l, a                                       ; $7176: $6f
    xor $47                                       ; $7177: $ee $47
    sbc $78                                       ; $7179: $de $78
    ld h, c                                       ; $717b: $61
    ld a, c                                       ; $717c: $79
    nop                                           ; $717d: $00
    ld b, l                                       ; $717e: $45
    adc h                                         ; $717f: $8c
    ld h, b                                       ; $7180: $60
    jp nc, Jump_04a_6772                          ; $7181: $d2 $72 $67

    inc c                                         ; $7184: $0c
    ld [hl-], a                                   ; $7185: $32
    ld a, $00                                     ; $7186: $3e $00
    rst $08                                       ; $7188: $cf
    inc [hl]                                      ; $7189: $34
    rst $20                                       ; $718a: $e7
    or [hl]                                       ; $718b: $b6
    jp c, $9ffd                                   ; $718c: $da $fd $9f

    db $e4                                        ; $718f: $e4

jr_04a_7190:
    adc a                                         ; $7190: $8f
    sbc d                                         ; $7191: $9a
    cp [hl]                                       ; $7192: $be
    add e                                         ; $7193: $83
    or h                                          ; $7194: $b4
    dec h                                         ; $7195: $25
    ld c, a                                       ; $7196: $4f
    jr z, jr_04a_71d2                             ; $7197: $28 $39

    ldh a, [$90]                                  ; $7199: $f0 $90
    rst $30                                       ; $719b: $f7
    and e                                         ; $719c: $a3
    ld sp, hl                                     ; $719d: $f9
    ld c, $22                                     ; $719e: $0e $22
    sub h                                         ; $71a0: $94
    or d                                          ; $71a1: $b2
    jp hl                                         ; $71a2: $e9


    cp e                                          ; $71a3: $bb
    ret nc                                        ; $71a4: $d0

    xor b                                         ; $71a5: $a8
    add hl, sp                                    ; $71a6: $39
    adc a                                         ; $71a7: $8f
    db $dd                                        ; $71a8: $dd
    add a                                         ; $71a9: $87
    and $3b                                       ; $71aa: $e6 $3b
    ld b, c                                       ; $71ac: $41
    sbc e                                         ; $71ad: $9b
    cpl                                           ; $71ae: $2f
    dec [hl]                                      ; $71af: $35
    rlca                                          ; $71b0: $07
    add sp, $17                                   ; $71b1: $e8 $17
    sbc e                                         ; $71b3: $9b
    pop af                                        ; $71b4: $f1
    ld bc, $7f2f                                  ; $71b5: $01 $2f $7f
    add hl, sp                                    ; $71b8: $39
    and c                                         ; $71b9: $a1
    or d                                          ; $71ba: $b2
    jp hl                                         ; $71bb: $e9


    rst $30                                       ; $71bc: $f7
    db $d3                                        ; $71bd: $d3
    sub a                                         ; $71be: $97
    and $bb                                       ; $71bf: $e6 $bb
    inc [hl]                                      ; $71c1: $34
    adc e                                         ; $71c2: $8b
    or $14                                        ; $71c3: $f6 $14
    ld e, c                                       ; $71c5: $59
    ld a, [$dfa6]                                 ; $71c6: $fa $a6 $df
    ld d, e                                       ; $71c9: $53
    ld h, h                                       ; $71ca: $64
    ld d, $09                                     ; $71cb: $16 $09
    ld e, a                                       ; $71cd: $5f
    push bc                                       ; $71ce: $c5
    ld a, e                                       ; $71cf: $7b
    add hl, sp                                    ; $71d0: $39
    ld a, [c]                                     ; $71d1: $f2

jr_04a_71d2:
    add $f3                                       ; $71d2: $c6 $f3
    dec e                                         ; $71d4: $1d
    and h                                         ; $71d5: $a4
    dec l                                         ; $71d6: $2d
    ld a, c                                       ; $71d7: $79
    ld [$6a47], a                                 ; $71d8: $ea $47 $6a
    ccf                                           ; $71db: $3f
    reti                                          ; $71dc: $d9


    push de                                       ; $71dd: $d5
    ld d, $09                                     ; $71de: $16 $09
    ld b, [hl]                                    ; $71e0: $46
    sbc l                                         ; $71e1: $9d
    or a                                          ; $71e2: $b7
    ld [$ce6a], sp                                ; $71e3: $08 $6a $ce
    ld b, h                                       ; $71e6: $44
    and b                                         ; $71e7: $a0
    dec d                                         ; $71e8: $15
    pop af                                        ; $71e9: $f1
    push bc                                       ; $71ea: $c5
    and d                                         ; $71eb: $a2
    ld e, a                                       ; $71ec: $5f
    ld e, [hl]                                    ; $71ed: $5e
    ret nc                                        ; $71ee: $d0

    sub l                                         ; $71ef: $95
    and $fe                                       ; $71f0: $e6 $fe
    ld c, a                                       ; $71f2: $4f
    ld h, a                                       ; $71f3: $67
    add h                                         ; $71f4: $84
    add a                                         ; $71f5: $87
    adc h                                         ; $71f6: $8c
    ld h, b                                       ; $71f7: $60
    ld d, c                                       ; $71f8: $51
    cp e                                          ; $71f9: $bb
    inc sp                                        ; $71fa: $33
    ld b, $19                                     ; $71fb: $06 $19
    rra                                           ; $71fd: $1f
    rst $08                                       ; $71fe: $cf
    inc [hl]                                      ; $71ff: $34
    ld d, a                                       ; $7200: $57
    ld [bc], a                                    ; $7201: $02
    inc de                                        ; $7202: $13
    sub b                                         ; $7203: $90
    cp c                                          ; $7204: $b9
    inc [hl]                                      ; $7205: $34
    ld c, c                                       ; $7206: $49
    ld c, $fa                                     ; $7207: $0e $fa
    ld a, c                                       ; $7209: $79
    db $e3                                        ; $720a: $e3
    sbc c                                         ; $720b: $99
    sbc [hl]                                      ; $720c: $9e
    jp nz, Jump_04a_6af4                          ; $720d: $c2 $f4 $6a

    cp [hl]                                       ; $7210: $be
    ei                                            ; $7211: $fb
    adc [hl]                                      ; $7212: $8e
    rrca                                          ; $7213: $0f
    adc e                                         ; $7214: $8b
    ld a, [hl]                                    ; $7215: $7e
    and a                                         ; $7216: $a7
    ld c, a                                       ; $7217: $4f
    sbc [hl]                                      ; $7218: $9e
    rlca                                          ; $7219: $07
    ld a, [hl+]                                   ; $721a: $2a
    sub b                                         ; $721b: $90
    add e                                         ; $721c: $83
    sub d                                         ; $721d: $92
    db $e3                                        ; $721e: $e3
    inc bc                                        ; $721f: $03
    rst $08                                       ; $7220: $cf
    inc [hl]                                      ; $7221: $34
    daa                                           ; $7222: $27
    ret                                           ; $7223: $c9


    ldh [rNR42], a                                ; $7224: $e0 $21
    inc hl                                        ; $7226: $23
    jr jr_04a_724f                                ; $7227: $18 $26

    and b                                         ; $7229: $a0
    ld a, d                                       ; $722a: $7a
    cp h                                          ; $722b: $bc
    add hl, hl                                    ; $722c: $29
    ld a, c                                       ; $722d: $79
    daa                                           ; $722e: $27
    inc sp                                        ; $722f: $33
    sbc d                                         ; $7230: $9a
    rst $28                                       ; $7231: $ef
    xor [hl]                                      ; $7232: $ae
    ld d, d                                       ; $7233: $52
    sbc l                                         ; $7234: $9d
    ld [hl], e                                    ; $7235: $73
    or l                                          ; $7236: $b5
    sbc d                                         ; $7237: $9a
    add b                                         ; $7238: $80
    ld bc, $fea8                                  ; $7239: $01 $a8 $fe
    ld l, $82                                     ; $723c: $2e $82
    cp c                                          ; $723e: $b9
    rst $38                                       ; $723f: $ff
    db $d3                                        ; $7240: $d3
    adc $18                                       ; $7241: $ce $18
    ld h, h                                       ; $7243: $64
    ld a, h                                       ; $7244: $7c
    nop                                           ; $7245: $00
    ld d, a                                       ; $7246: $57
    cp e                                          ; $7247: $bb
    and a                                         ; $7248: $a7
    cp $8f                                        ; $7249: $fe $8f
    sub h                                         ; $724b: $94
    or [hl]                                       ; $724c: $b6
    inc b                                         ; $724d: $04
    ld b, e                                       ; $724e: $43

jr_04a_724f:
    or l                                          ; $724f: $b5
    ld [hl], $07                                  ; $7250: $36 $07
    ld d, b                                       ; $7252: $50
    call nz, $ba08                                ; $7253: $c4 $08 $ba
    daa                                           ; $7256: $27
    ld b, l                                       ; $7257: $45
    add h                                         ; $7258: $84
    jp nc, Jump_04a_552c                          ; $7259: $d2 $2c $55

    and a                                         ; $725c: $a7
    or h                                          ; $725d: $b4
    dec h                                         ; $725e: $25
    adc b                                         ; $725f: $88
    ld [hl], a                                    ; $7260: $77
    or l                                          ; $7261: $b5
    dec bc                                        ; $7262: $0b
    dec e                                         ; $7263: $1d
    db $f4                                        ; $7264: $f4
    adc e                                         ; $7265: $8b
    ld a, [hl]                                    ; $7266: $7e
    ld a, c                                       ; $7267: $79
    ld l, [hl]                                    ; $7268: $6e
    jp hl                                         ; $7269: $e9


    ld l, h                                       ; $726a: $6c
    ld d, c                                       ; $726b: $51
    or l                                          ; $726c: $b5
    rst $18                                       ; $726d: $df
    jp hl                                         ; $726e: $e9


    sub e                                         ; $726f: $93
    ld l, a                                       ; $7270: $6f
    ld e, [hl]                                    ; $7271: $5e
    call z, Call_000_26d5                         ; $7272: $cc $d5 $26
    sub a                                         ; $7275: $97
    and $8d                                       ; $7276: $e6 $8d
    rst $20                                       ; $7278: $e7
    dec sp                                        ; $7279: $3b
    and l                                         ; $727a: $a5
    dec l                                         ; $727b: $2d
    pop bc                                        ; $727c: $c1
    adc $08                                       ; $727d: $ce $08
    rrca                                          ; $727f: $0f
    ld d, a                                       ; $7280: $57
    ld [hl], d                                    ; $7281: $72
    dec l                                         ; $7282: $2d
    rla                                           ; $7283: $17
    or [hl]                                       ; $7284: $b6
    ld [hl+], a                                   ; $7285: $22
    sbc $4f                                       ; $7286: $de $4f
    or $66                                        ; $7288: $f6 $66
    add hl, de                                    ; $728a: $19
    rra                                           ; $728b: $1f
    xor a                                         ; $728c: $af
    ld [hl], e                                    ; $728d: $73
    ld h, l                                       ; $728e: $65
    or l                                          ; $728f: $b5
    ld l, e                                       ; $7290: $6b
    inc h                                         ; $7291: $24
    sbc e                                         ; $7292: $9b
    adc d                                         ; $7293: $8a
    dec hl                                        ; $7294: $2b
    xor e                                         ; $7295: $ab
    push de                                       ; $7296: $d5
    adc $18                                       ; $7297: $ce $18
    db $e4                                        ; $7299: $e4
    ld [hl+], a                                   ; $729a: $22
    sub e                                         ; $729b: $93
    or d                                          ; $729c: $b2
    ld a, [de]                                    ; $729d: $1a
    inc bc                                        ; $729e: $03
    add hl, sp                                    ; $729f: $39
    xor $5c                                       ; $72a0: $ee $5c
    ld c, h                                       ; $72a2: $4c
    rst $18                                       ; $72a3: $df
    call c, $bc8f                                 ; $72a4: $dc $8f $bc
    pop af                                        ; $72a7: $f1
    adc $1d                                       ; $72a8: $ce $1d
    db $fc                                        ; $72aa: $fc
    daa                                           ; $72ab: $27
    ld h, e                                       ; $72ac: $63
    ld a, [hl-]                                   ; $72ad: $3a
    inc sp                                        ; $72ae: $33
    ld c, e                                       ; $72af: $4b
    ld b, b                                       ; $72b0: $40
    cp a                                          ; $72b1: $bf
    ret c                                         ; $72b2: $d8

    adc h                                         ; $72b3: $8c
    rst $30                                       ; $72b4: $f7
    ld a, [hl-]                                   ; $72b5: $3a
    ld d, a                                       ; $72b6: $57
    ld d, [hl]                                    ; $72b7: $56
    xor e                                         ; $72b8: $ab
    ld a, c                                       ; $72b9: $79
    db $ec                                        ; $72ba: $ec
    ld [de], a                                    ; $72bb: $12
    rrc e                                         ; $72bc: $cb $0b
    dec hl                                        ; $72be: $2b
    ld [$81cd], sp                                ; $72bf: $08 $cd $81
    ld b, d                                       ; $72c2: $42
    add h                                         ; $72c3: $84
    sub d                                         ; $72c4: $92
    ld [hl], a                                    ; $72c5: $77
    add $20                                       ; $72c6: $c6 $20
    rst $20                                       ; $72c8: $e7

Call_04a_72c9:
    dec sp                                        ; $72c9: $3b
    and c                                         ; $72ca: $a1
    adc d                                         ; $72cb: $8a
    dec de                                        ; $72cc: $1b
    rra                                           ; $72cd: $1f
    ld c, a                                       ; $72ce: $4f
    sub l                                         ; $72cf: $95
    adc d                                         ; $72d0: $8a
    ld a, [hl]                                    ; $72d1: $7e
    ld c, $f2                                     ; $72d2: $0e $f2
    ld b, b                                       ; $72d4: $40
    dec a                                         ; $72d5: $3d
    db $fd                                        ; $72d6: $fd
    rrca                                          ; $72d7: $0f
    db $fc                                        ; $72d8: $fc
    ld a, $9c                                     ; $72d9: $3e $9c
    ccf                                           ; $72db: $3f
    db $e4                                        ; $72dc: $e4
    jr z, jr_04a_7336                             ; $72dd: $28 $57

    or a                                          ; $72df: $b7
    ld a, [hl+]                                   ; $72e0: $2a
    sbc $65                                       ; $72e1: $de $65
    ld a, c                                       ; $72e3: $79
    ld a, [bc]                                    ; $72e4: $0a
    ld e, $62                                     ; $72e5: $1e $62
    sub b                                         ; $72e7: $90
    inc a                                         ; $72e8: $3c
    rst $18                                       ; $72e9: $df
    ld c, c                                       ; $72ea: $49
    ld [hl-], a                                   ; $72eb: $32
    ld a, b                                       ; $72ec: $78
    ret z                                         ; $72ed: $c8

    ld [hl], e                                    ; $72ee: $73
    dec l                                         ; $72ef: $2d
    rst $00                                       ; $72f0: $c7
    rst $18                                       ; $72f1: $df
    dec l                                         ; $72f2: $2d
    ld a, c                                       ; $72f3: $79
    or d                                          ; $72f4: $b2
    sub h                                         ; $72f5: $94
    call $e771                                    ; $72f6: $cd $71 $e7
    sub [hl]                                      ; $72f9: $96
    jp nz, $9a0f                                  ; $72fa: $c2 $0f $9a

    pop af                                        ; $72fd: $f1
    ld bc, $c3af                                  ; $72fe: $01 $af $c3
    adc l                                         ; $7301: $8d
    ld c, h                                       ; $7302: $4c
    ld l, b                                       ; $7303: $68
    ld h, l                                       ; $7304: $65
    db $dd                                        ; $7305: $dd
    sub d                                         ; $7306: $92
    ld e, d                                       ; $7307: $5a
    ld e, b                                       ; $7308: $58
    ld b, c                                       ; $7309: $41

Jump_04a_730a:
    ld l, b                                       ; $730a: $68
    adc $41                                       ; $730b: $ce $41
    ld d, [hl]                                    ; $730d: $56
    ld e, h                                       ; $730e: $5c
    reti                                          ; $730f: $d9


    db $f4                                        ; $7310: $f4
    db $dd                                        ; $7311: $dd
    rst $38                                       ; $7312: $ff
    jr nz, @-$56                                  ; $7313: $20 $a8

    jp c, $c68f                                   ; $7315: $da $8f $c6

    rst $18                                       ; $7318: $df
    dec l                                         ; $7319: $2d
    ld a, c                                       ; $731a: $79
    or d                                          ; $731b: $b2
    sub h                                         ; $731c: $94
    call $ed45                                    ; $731d: $cd $45 $ed
    cp b                                          ; $7320: $b8
    adc e                                         ; $7321: $8b
    ld c, h                                       ; $7322: $4c
    ld [hl], $e3                                  ; $7323: $36 $e3
    inc bc                                        ; $7325: $03
    ld l, a                                       ; $7326: $6f
    sbc h                                         ; $7327: $9c
    jp c, Jump_04a_7ff0                           ; $7328: $da $f0 $7f

    ld c, d                                       ; $732b: $4a
    or l                                          ; $732c: $b5
    inc sp                                        ; $732d: $33
    ld b, $39                                     ; $732e: $06 $39
    ld d, b                                       ; $7330: $50
    rst $10                                       ; $7331: $d7
    adc h                                         ; $7332: $8c
    inc [hl]                                      ; $7333: $34
    ld b, $b2                                     ; $7334: $06 $b2

jr_04a_7336:
    rla                                           ; $7336: $17
    sub e                                         ; $7337: $93
    cp a                                          ; $7338: $bf
    ld [hl], a                                    ; $7339: $77
    add hl, de                                    ; $733a: $19
    inc a                                         ; $733b: $3c
    ld h, h                                       ; $733c: $64
    inc b                                         ; $733d: $04
    sbc l                                         ; $733e: $9d
    rst $00                                       ; $733f: $c7
    ld d, d                                       ; $7340: $52
    inc sp                                        ; $7341: $33
    sbc $33                                       ; $7342: $de $33
    ld c, l                                       ; $7344: $4d
    dec [hl]                                      ; $7345: $35
    xor b                                         ; $7346: $a8
    or h                                          ; $7347: $b4
    ret nz                                        ; $7348: $c0

    adc h                                         ; $7349: $8c
    and $9a                                       ; $734a: $e6 $9a
    sub $cd                                       ; $734c: $d6 $cd
    ld sp, hl                                     ; $734e: $f9
    ld l, $fc                                     ; $734f: $2e $fc
    sbc a                                         ; $7351: $9f
    or d                                          ; $7352: $b2
    cp c                                          ; $7353: $b9
    sub d                                         ; $7354: $92
    adc c                                         ; $7355: $89
    ld l, $e6                                     ; $7356: $2e $e6
    or c                                          ; $7358: $b1
    dec bc                                        ; $7359: $0b
    cp d                                          ; $735a: $ba
    add sp, -$69                                  ; $735b: $e8 $97
    rst $30                                       ; $735d: $f7
    ld hl, $a832                                  ; $735e: $21 $32 $a8
    add hl, sp                                    ; $7361: $39
    db $d3                                        ; $7362: $d3
    ld l, d                                       ; $7363: $6a
    rst $20                                       ; $7364: $e7
    ld l, $b1                                     ; $7365: $2e $b1
    inc a                                         ; $7367: $3c
    adc c                                         ; $7368: $89
    add c                                         ; $7369: $81
    ld l, h                                       ; $736a: $6c

Jump_04a_736b:
    add $07                                       ; $736b: $c6 $07
    rst $08                                       ; $736d: $cf
    inc [hl]                                      ; $736e: $34
    rst $30                                       ; $736f: $f7
    db $dd                                        ; $7370: $dd
    sub d                                         ; $7371: $92
    xor e                                         ; $7372: $ab
    ld a, a                                       ; $7373: $7f
    dec a                                         ; $7374: $3d
    add d                                         ; $7375: $82
    ld h, c                                       ; $7376: $61
    ld [bc], a                                    ; $7377: $02
    xor d                                         ; $7378: $aa
    rst $00                                       ; $7379: $c7
    sbc e                                         ; $737a: $9b
    sub d                                         ; $737b: $92
    cpl                                           ; $737c: $2f
    ld d, $99                                     ; $737d: $16 $99
    pop de                                        ; $737f: $d1
    jp nz, $22f2                                  ; $7380: $c2 $f2 $22

    inc bc                                        ; $7383: $03
    ld c, e                                       ; $7384: $4b
    inc l                                         ; $7385: $2c
    rst $08                                       ; $7386: $cf
    ld b, h                                       ; $7387: $44
    ld a, [c]                                     ; $7388: $f2
    ld b, a                                       ; $7389: $47
    adc d                                         ; $738a: $8a
    ld de, $8cec                                  ; $738b: $11 $ec $8c
    ld b, c                                       ; $738e: $41
    adc $b5                                       ; $738f: $ce $b5
    inc e                                         ; $7391: $1c
    ld b, b                                       ; $7392: $40
    ld de, $e823                                  ; $7393: $11 $23 $e8
    sub h                                         ; $7396: $94
    or [hl]                                       ; $7397: $b6
    inc b                                         ; $7398: $04
    call $00f8                                    ; $7399: $cd $f8 $00
    ld c, a                                       ; $739c: $4f
    push af                                       ; $739d: $f5
    db $fc                                        ; $739e: $fc
    adc l                                         ; $739f: $8d
    xor $52                                       ; $73a0: $ee $52
    call c, $ee6c                                 ; $73a2: $dc $6c $ee
    adc h                                         ; $73a5: $8c
    ld b, c                                       ; $73a6: $41
    adc $44                                       ; $73a7: $ce $44
    ld a, [c]                                     ; $73a9: $f2
    ld b, a                                       ; $73aa: $47
    adc d                                         ; $73ab: $8a
    ld de, $41cc                                  ; $73ac: $11 $cc $41
    sbc [hl]                                      ; $73af: $9e
    rst $28                                       ; $73b0: $ef
    ld [hl+], a                                   ; $73b1: $22
    inc sp                                        ; $73b2: $33
    jr nc, @-$27                                  ; $73b3: $30 $d7

    ld [hl], d                                    ; $73b5: $72
    ld l, l                                       ; $73b6: $6d
    ld c, $14                                     ; $73b7: $0e $14
    add hl, sp                                    ; $73b9: $39
    sbc $65                                       ; $73ba: $de $65
    ld a, c                                       ; $73bc: $79
    ld a, [bc]                                    ; $73bd: $0a
    ld e, $62                                     ; $73be: $1e $62
    sub b                                         ; $73c0: $90
    cp h                                          ; $73c1: $bc
    ld [hl], $c7                                  ; $73c2: $36 $c7
    dec b                                         ; $73c4: $05
    ld c, l                                       ; $73c5: $4d
    add b                                         ; $73c6: $80
    and d                                         ; $73c7: $a2
    ld [hl], c                                    ; $73c8: $71
    ld [hl], a                                    ; $73c9: $77
    add $20                                       ; $73ca: $c6 $20
    db $e3                                        ; $73cc: $e3
    inc bc                                        ; $73cd: $03
    ld l, a                                       ; $73ce: $6f
    ld [hl+], a                                   ; $73cf: $22
    sub a                                         ; $73d0: $97
    inc d                                         ; $73d1: $14
    rst $28                                       ; $73d2: $ef
    ld e, h                                       ; $73d3: $5c
    db $ed                                        ; $73d4: $ed
    rst $08                                       ; $73d5: $cf
    ld h, [hl]                                    ; $73d6: $66
    pop de                                        ; $73d7: $d1
    push bc                                       ; $73d8: $c5
    ld a, [hl]                                    ; $73d9: $7e
    db $e4                                        ; $73da: $e4
    adc l                                         ; $73db: $8d

Jump_04a_73dc:
    ld [hl], a                                    ; $73dc: $77
    xor $4c                                       ; $73dd: $ee $4c
    db $eb                                        ; $73df: $eb
    ld [hl], $f7                                  ; $73e0: $36 $f7
    and c                                         ; $73e2: $a1
    ld sp, hl                                     ; $73e3: $f9
    adc $b4                                       ; $73e4: $ce $b4
    ld l, $7d                                     ; $73e6: $2e $7d
    rst $00                                       ; $73e8: $c7
    dec hl                                        ; $73e9: $2b
    xor $da                                       ; $73ea: $ee $da
    inc c                                         ; $73ec: $0c
    rst $38                                       ; $73ed: $ff
    and a                                         ; $73ee: $a7
    ld d, h                                       ; $73ef: $54
    inc bc                                        ; $73f0: $03
    db $f4                                        ; $73f1: $f4
    adc e                                         ; $73f2: $8b
    call Call_04a_7735                            ; $73f3: $cd $35 $77
    xor [hl]                                      ; $73f6: $ae
    or $cd                                        ; $73f7: $f6 $cd
    sub l                                         ; $73f9: $95
    ld c, h                                       ; $73fa: $4c
    inc [hl]                                      ; $73fb: $34
    rst $10                                       ; $73fc: $d7
    or h                                          ; $73fd: $b4
    ld l, [hl]                                    ; $73fe: $6e
    add $07                                       ; $73ff: $c6 $07
    rst $08                                       ; $7401: $cf
    inc [hl]                                      ; $7402: $34
    ld [hl], a                                    ; $7403: $77
    xor [hl]                                      ; $7404: $ae
    or $67                                        ; $7405: $f6 $67
    or e                                          ; $7407: $b3
    ld l, b                                       ; $7408: $68
    sub d                                         ; $7409: $92
    inc e                                         ; $740a: $1c
    db $f4                                        ; $740b: $f4
    di                                            ; $740c: $f3
    add $33                                       ; $740d: $c6 $33
    xor l                                         ; $740f: $ad
    db $db                                        ; $7410: $db
    inc e                                         ; $7411: $1c
    and $e8                                       ; $7412: $e6 $e8
    or e                                          ; $7414: $b3
    ld [hl-], a                                   ; $7415: $32
    ld a, b                                       ; $7416: $78
    ret z                                         ; $7417: $c8

    ld [$503a], sp                                ; $7418: $08 $3a $50
    ld bc, $9beb                                  ; $741b: $01 $eb $9b
    inc bc                                        ; $741e: $03
    db $f4                                        ; $741f: $f4
    adc e                                         ; $7420: $8b
    inc e                                         ; $7421: $1c
    rst $28                                       ; $7422: $ef
    ld l, d                                       ; $7423: $6a
    daa                                           ; $7424: $27
    db $f4                                        ; $7425: $f4
    ld d, h                                       ; $7426: $54
    jp nz, $f304                                  ; $7427: $c2 $04 $f3

    add $0b                                       ; $742a: $c6 $0b
    srl e                                         ; $742c: $cb $3b
    or l                                          ; $742e: $b5
    ld [hl], h                                    ; $742f: $74
    ld a, [$6dda]                                 ; $7430: $fa $da $6d
    adc $ff                                       ; $7433: $ce $ff
    rst $28                                       ; $7435: $ef
    ld sp, hl                                     ; $7436: $f9
    ld h, d                                       ; $7437: $62
    xor b                                         ; $7438: $a8
    sub [hl]                                      ; $7439: $96
    rst $38                                       ; $743a: $ff
    inc hl                                        ; $743b: $23
    ld c, a                                       ; $743c: $4f
    add sp, -$57                                  ; $743d: $e8 $a9
    rst $20                                       ; $743f: $e7
    ld h, [hl]                                    ; $7440: $66
    ld a, h                                       ; $7441: $7c
    nop                                           ; $7442: $00
    rst $08                                       ; $7443: $cf
    inc [hl]                                      ; $7444: $34
    push de                                       ; $7445: $d5
    call c, $bb56                                 ; $7446: $dc $56 $bb
    rst $38                                       ; $7449: $ff
    sub e                                         ; $744a: $93
    db $fc                                        ; $744b: $fc
    ld d, c                                       ; $744c: $51
    db $d3                                        ; $744d: $d3
    cpl                                           ; $744e: $2f
    ld [hl-], a                                   ; $744f: $32
    and e                                         ; $7450: $a3
    and l                                         ; $7451: $a5
    or e                                          ; $7452: $b3
    ld [hl], e                                    ; $7453: $73
    or l                                          ; $7454: $b5
    ccf                                           ; $7455: $3f
    sbc e                                         ; $7456: $9b
    ld b, l                                       ; $7457: $45
    pop af                                        ; $7458: $f1
    xor [hl]                                      ; $7459: $ae
    halt                                          ; $745a: $76
    add d                                         ; $745b: $82
    cp $8d                                        ; $745c: $fe $8d
    halt                                          ; $745e: $76
    ld a, [$79e4]                                 ; $745f: $fa $e4 $79
    and b                                         ; $7462: $a0
    ld [bc], a                                    ; $7463: $02
    add hl, sp                                    ; $7464: $39
    jr z, @+$7b                                   ; $7465: $28 $79

    sbc b                                         ; $7467: $98
    db $e3                                        ; $7468: $e3
    rst $28                                       ; $7469: $ef

Jump_04a_746a:
    sub [hl]                                      ; $746a: $96
    inc a                                         ; $746b: $3c
    ld e, c                                       ; $746c: $59
    jp z, $22e6                                   ; $746d: $ca $e6 $22

    inc sp                                        ; $7470: $33
    sbc d                                         ; $7471: $9a
    rst $28                                       ; $7472: $ef
    inc b                                         ; $7473: $04
    ld l, l                                       ; $7474: $6d
    cp [hl]                                       ; $7475: $be
    call nc, Call_000_19dc                        ; $7476: $d4 $dc $19
    add e                                         ; $7479: $83
    sbc h                                         ; $747a: $9c
    add e                                         ; $747b: $83
    ld e, h                                       ; $747c: $5c
    ld d, d                                       ; $747d: $52
    inc a                                         ; $747e: $3c
    add b                                         ; $747f: $80
    ld [hl+], a                                   ; $7480: $22
    ld b, [hl]                                    ; $7481: $46
    db $10                                        ; $7482: $10
    rra                                           ; $7483: $1f
    sub a                                         ; $7484: $97
    ld d, l                                       ; $7485: $55
    ld d, b                                       ; $7486: $50
    ld l, c                                       ; $7487: $69
    xor a                                         ; $7488: $af
    ld [hl], e                                    ; $7489: $73
    ld c, c                                       ; $748a: $49
    ld a, [hl-]                                   ; $748b: $3a
    pop de                                        ; $748c: $d1
    ld bc, $18af                                  ; $748d: $01 $af $18
    add hl, de                                    ; $7490: $19
    cp h                                          ; $7491: $bc
    ld e, d                                       ; $7492: $5a
    add hl, sp                                    ; $7493: $39
    ld [$4f00], a                                 ; $7494: $ea $00 $4f
    ld [de], a                                    ; $7497: $12
    inc a                                         ; $7498: $3c
    ld b, h                                       ; $7499: $44
    pop bc                                        ; $749a: $c1
    or h                                          ; $749b: $b4
    rst $18                                       ; $749c: $df
    sub e                                         ; $749d: $93
    call nc, $def4                                ; $749e: $d4 $f4 $de
    and d                                         ; $74a1: $a2
    inc bc                                        ; $74a2: $03
    rst $08                                       ; $74a3: $cf
    ld l, b                                       ; $74a4: $68
    ld l, l                                       ; $74a5: $6d
    cp $93                                        ; $74a6: $fe $93
    db $ed                                        ; $74a8: $ed
    ld sp, hl                                     ; $74a9: $f9
    ld [hl-], a                                   ; $74aa: $32
    sub a                                         ; $74ab: $97
    jr nc, @-$3d                                  ; $74ac: $30 $c1

    ld bc, $99cf                                  ; $74ae: $01 $cf $99
    add d                                         ; $74b1: $82
    adc h                                         ; $74b2: $8c
    db $fc                                        ; $74b3: $fc
    ld e, [hl]                                    ; $74b4: $5e
    add a                                         ; $74b5: $87
    ld [$7813], sp                                ; $74b6: $08 $13 $78
    adc e                                         ; $74b9: $8b
    ld c, $cf                                     ; $74ba: $0e $cf
    ld a, l                                       ; $74bc: $7d
    or a                                          ; $74bd: $b7
    call nz, $1b7b                                ; $74be: $c4 $7b $1b
    ld hl, $0f05                                  ; $74c1: $21 $05 $0f
    ccf                                           ; $74c4: $3f
    scf                                           ; $74c5: $37
    rrca                                          ; $74c6: $0f
    rst $08                                       ; $74c7: $cf
    ld d, c                                       ; $74c8: $51
    pop bc                                        ; $74c9: $c1
    daa                                           ; $74ca: $27
    ld [hl], h                                    ; $74cb: $74
    call nc, $f77c                                ; $74cc: $d4 $7c $f7
    inc a                                         ; $74cf: $3c
    add hl, sp                                    ; $74d0: $39
    ld [$0e95], sp                                ; $74d1: $08 $95 $0e
    cpl                                           ; $74d4: $2f
    sbc b                                         ; $74d5: $98
    ld e, e                                       ; $74d6: $5b
    jp z, Jump_04a_6aee                           ; $74d7: $ca $ee $6a

    ld e, a                                       ; $74da: $5f
    db $fc                                        ; $74db: $fc
    ret                                           ; $74dc: $c9


    pop de                                        ; $74dd: $d1
    and a                                         ; $74de: $a7
    ld h, $5c                                     ; $74df: $26 $5c
    call z, $d701                                 ; $74e1: $cc $01 $d7
    ld b, b                                       ; $74e4: $40
    ld a, [de]                                    ; $74e5: $1a
    and e                                         ; $74e6: $a3
    db $ed                                        ; $74e7: $ed
    ld l, l                                       ; $74e8: $6d
    call nc, Call_04a_455e                        ; $74e9: $d4 $5e $45
    add sp, $0f                                   ; $74ec: $e8 $0f
    xor a                                         ; $74ee: $af
    dec de                                        ; $74ef: $1b
    inc a                                         ; $74f0: $3c
    inc [hl]                                      ; $74f1: $34
    ld b, d                                       ; $74f2: $42
    and l                                         ; $74f3: $a5
    ld l, h                                       ; $74f4: $6c
    ld l, a                                       ; $74f5: $6f
    ld d, b                                       ; $74f6: $50
    ld h, l                                       ; $74f7: $65
    ld hl, sp+$1d                                 ; $74f8: $f8 $1d
    ld a, $00                                     ; $74fa: $3e $00
    ld c, a                                       ; $74fc: $4f
    ld d, d                                       ; $74fd: $52
    db $d3                                        ; $74fe: $d3

Jump_04a_74ff:
    rst $28                                       ; $74ff: $ef
    dec d                                         ; $7500: $15
    xor h                                         ; $7501: $ac
    inc a                                         ; $7502: $3c
    nop                                           ; $7503: $00
    ld c, a                                       ; $7504: $4f
    add hl, de                                    ; $7505: $19
    dec [hl]                                      ; $7506: $35
    db $fd                                        ; $7507: $fd
    ld e, h                                       ; $7508: $5c
    srl l                                         ; $7509: $cb $3d
    and l                                         ; $750b: $a5
    call $1f57                                    ; $750c: $cd $57 $1f
    rst $08                                       ; $750f: $cf
    ld d, [hl]                                    ; $7510: $56
    inc hl                                        ; $7511: $23
    db $ec                                        ; $7512: $ec
    cp l                                          ; $7513: $bd
    rst $30                                       ; $7514: $f7
    and e                                         ; $7515: $a3
    xor b                                         ; $7516: $a8
    add h                                         ; $7517: $84
    add hl, bc                                    ; $7518: $09
    ld c, $cf                                     ; $7519: $0e $cf
    ld d, c                                       ; $751b: $51
    reti                                          ; $751c: $d9


    or $1c                                        ; $751d: $f6 $1c
    ld h, c                                       ; $751f: $61
    nop                                           ; $7520: $00
    ret                                           ; $7521: $c9


    sub d                                         ; $7522: $92
    inc l                                         ; $7523: $2c
    dec e                                         ; $7524: $1d
    sub a                                         ; $7525: $97
    ccf                                           ; $7526: $3f
    ccf                                           ; $7527: $3f
    and c                                         ; $7528: $a1
    db $ed                                        ; $7529: $ed
    and l                                         ; $752a: $a5
    rst $08                                       ; $752b: $cf
    push de                                       ; $752c: $d5
    sbc b                                         ; $752d: $98
    ldh [rP1], a                                  ; $752e: $e0 $00
    rst $08                                       ; $7530: $cf
    and c                                         ; $7531: $a1
    ld d, $4a                                     ; $7532: $16 $4a
    cp h                                          ; $7534: $bc
    sub a                                         ; $7535: $97
    dec [hl]                                      ; $7536: $35
    jr nc, @+$25                                  ; $7537: $30 $23

    rst $18                                       ; $7539: $df
    inc a                                         ; $753a: $3c
    nop                                           ; $753b: $00
    ld c, a                                       ; $753c: $4f
    dec de                                        ; $753d: $1b
    ld a, l                                       ; $753e: $7d
    adc l                                         ; $753f: $8d

Jump_04a_7540:
    call $80bd                                    ; $7540: $cd $bd $80
    jp hl                                         ; $7543: $e9


jr_04a_7544:
    sbc e                                         ; $7544: $9b
    ld b, d                                       ; $7545: $42
    add hl, bc                                    ; $7546: $09
    inc e                                         ; $7547: $1c
    xor a                                         ; $7548: $af
    ld a, [hl-]                                   ; $7549: $3a
    ccf                                           ; $754a: $3f
    pop bc                                        ; $754b: $c1
    ld e, [hl]                                    ; $754c: $5e
    ld sp, hl                                     ; $754d: $f9
    rlca                                          ; $754e: $07
    ld d, a                                       ; $754f: $57
    sub c                                         ; $7550: $91
    ld h, h                                       ; $7551: $64
    ret nc                                        ; $7552: $d0

    cp l                                          ; $7553: $bd
    rst $10                                       ; $7554: $d7
    ld [de], a                                    ; $7555: $12
    xor b                                         ; $7556: $a8
    add $8a                                       ; $7557: $c6 $8a
    db $fc                                        ; $7559: $fc
    ld bc, $962f                                  ; $755a: $01 $2f $96
    ld c, [hl]                                    ; $755d: $4e
    jr jr_04a_7544                                ; $755e: $18 $e4

    ld a, h                                       ; $7560: $7c
    rst $30                                       ; $7561: $f7
    db $fc                                        ; $7562: $fc
    ret                                           ; $7563: $c9


    call z, Call_04a_509f                         ; $7564: $cc $9f $50
    ld l, e                                       ; $7567: $6b

Call_04a_7568:
    inc b                                         ; $7568: $04
    dec a                                         ; $7569: $3d
    nop                                           ; $756a: $00
    cpl                                           ; $756b: $2f
    ld a, [hl]                                    ; $756c: $7e
    ld [bc], a                                    ; $756d: $02
    sub [hl]                                      ; $756e: $96
    db $d3                                        ; $756f: $d3
    db $dd                                        ; $7570: $dd
    or e                                          ; $7571: $b3
    ld h, $e6                                     ; $7572: $26 $e6
    nop                                           ; $7574: $00
    ld c, a                                       ; $7575: $4f
    inc de                                        ; $7576: $13
    ld a, [hl+]                                   ; $7577: $2a
    ld [$dc83], sp                                ; $7578: $08 $83 $dc
    di                                            ; $757b: $f3
    db $f4                                        ; $757c: $f4
    ld d, e                                       ; $757d: $53
    ld e, $4f                                     ; $757e: $1e $4f
    ld l, d                                       ; $7580: $6a
    ld de, $cfd5                                  ; $7581: $11 $d5 $cf
    ld [hl], a                                    ; $7584: $77
    ld c, a                                       ; $7585: $4f
    ld l, d                                       ; $7586: $6a
    add $c0                                       ; $7587: $c6 $c0
    ccf                                           ; $7589: $3f
    ld a, a                                       ; $758a: $7f

jr_04a_758b:
    ld [hl-], a                                   ; $758b: $32
    rst $18                                       ; $758c: $df
    inc bc                                        ; $758d: $03
    ld c, a                                       ; $758e: $4f
    push de                                       ; $758f: $d5
    sbc b                                         ; $7590: $98
    db $10                                        ; $7591: $10
    or $9e                                        ; $7592: $f6 $9e
    jp nc, $f61f                                  ; $7594: $d2 $1f $f6

    ld bc, $6a4f                                  ; $7597: $01 $4f $6a
    and c                                         ; $759a: $a1
    call nz, Call_000_37b6                        ; $759b: $c4 $b6 $37
    inc l                                         ; $759e: $2c
    cp l                                          ; $759f: $bd
    ld [c], a                                     ; $75a0: $e2
    ld [hl], $0f                                  ; $75a1: $36 $0f
    rst $28                                       ; $75a3: $ef
    sbc b                                         ; $75a4: $98
    adc e                                         ; $75a5: $8b
    and l                                         ; $75a6: $a5
    cp l                                          ; $75a7: $bd
    ld h, [hl]                                    ; $75a8: $66
    adc d                                         ; $75a9: $8a
    ld c, e                                       ; $75aa: $4b
    sbc b                                         ; $75ab: $98
    ldh [rP1], a                                  ; $75ac: $e0 $00
    rst $10                                       ; $75ae: $d7
    ld c, l                                       ; $75af: $4d
    db $fd                                        ; $75b0: $fd
    call c, $da2b                                 ; $75b1: $dc $2b $da
    ld e, b                                       ; $75b4: $58
    and b                                         ; $75b5: $a0
    ld e, a                                       ; $75b6: $5f
    ld a, c                                       ; $75b7: $79
    nop                                           ; $75b8: $00
    ld d, a                                       ; $75b9: $57
    push bc                                       ; $75ba: $c5
    ld b, h                                       ; $75bb: $44
    ld d, b                                       ; $75bc: $50
    sbc b                                         ; $75bd: $98
    or [hl]                                       ; $75be: $b6
    or a                                          ; $75bf: $b7
    cp $27                                        ; $75c0: $fe $27
    pop bc                                        ; $75c2: $c1
    ld hl, $0070                                  ; $75c3: $21 $70 $00
    ld l, a                                       ; $75c6: $6f
    ld h, c                                       ; $75c7: $61
    jp nz, Jump_000_3c9b                          ; $75c8: $c2 $9b $3c

    rst $18                                       ; $75cb: $df
    dec a                                         ; $75cc: $3d
    ld d, l                                       ; $75cd: $55
    sub a                                         ; $75ce: $97
    ld e, d                                       ; $75cf: $5a
    push hl                                       ; $75d0: $e5
    ld a, e                                       ; $75d1: $7b
    nop                                           ; $75d2: $00
    ld c, a                                       ; $75d3: $4f
    sub l                                         ; $75d4: $95
    jr c, jr_04a_758b                             ; $75d5: $38 $b4

    add l                                         ; $75d7: $85
    push hl                                       ; $75d8: $e5
    dec a                                         ; $75d9: $3d
    push hl                                       ; $75da: $e5
    jr nz, jr_04a_7614                            ; $75db: $20 $37

    add l                                         ; $75dd: $85
    ld [hl], $39                                  ; $75de: $36 $39
    add sp, $01                                   ; $75e0: $e8 $01
    ld l, a                                       ; $75e2: $6f
    and b                                         ; $75e3: $a0
    sub $62                                       ; $75e4: $d6 $62
    or $c6                                        ; $75e6: $f6 $c6
    rst $38                                       ; $75e8: $ff
    sub h                                         ; $75e9: $94
    rlca                                          ; $75ea: $07
    ld c, a                                       ; $75eb: $4f
    add a                                         ; $75ec: $87
    ld b, [hl]                                    ; $75ed: $46
    ld a, [$7733]                                 ; $75ee: $fa $33 $77
    xor a                                         ; $75f1: $af
    db $fd                                        ; $75f2: $fd
    ld [hl], e                                    ; $75f3: $73
    add c                                         ; $75f4: $81
    dec e                                         ; $75f5: $1d
    rst $08                                       ; $75f6: $cf
    ld a, b                                       ; $75f7: $78
    ld h, b                                       ; $75f8: $60
    or h                                          ; $75f9: $b4
    rst $10                                       ; $75fa: $d7
    sbc c                                         ; $75fb: $99
    inc e                                         ; $75fc: $1c
    sub h                                         ; $75fd: $94
    and l                                         ; $75fe: $a5
    inc bc                                        ; $75ff: $03
    sub a                                         ; $7600: $97
    sub [hl]                                      ; $7601: $96
    adc c                                         ; $7602: $89
    add d                                         ; $7603: $82
    jp hl                                         ; $7604: $e9


    cp l                                          ; $7605: $bd
    add b                                         ; $7606: $80
    dec d                                         ; $7607: $15
    add hl, hl                                    ; $7608: $29
    ld h, $3b                                     ; $7609: $26 $3b
    nop                                           ; $760b: $00
    rst $08                                       ; $760c: $cf
    sub d                                         ; $760d: $92
    dec h                                         ; $760e: $25
    inc e                                         ; $760f: $1c
    dec d                                         ; $7610: $15
    call c, Call_04a_7b51                         ; $7611: $dc $51 $7b

jr_04a_7614:
    adc $14                                       ; $7614: $ce $14
    add a                                         ; $7616: $87
    ld c, $aa                                     ; $7617: $0e $aa
    inc bc                                        ; $7619: $03
    rst $10                                       ; $761a: $d7
    dec e                                         ; $761b: $1d
    push bc                                       ; $761c: $c5
    adc [hl]                                      ; $761d: $8e
    jp c, $a82b                                   ; $761e: $da $2b $a8

    dec [hl]                                      ; $7621: $35
    ld h, $38                                     ; $7622: $26 $38
    nop                                           ; $7624: $00
    cpl                                           ; $7625: $2f
    ld a, l                                       ; $7626: $7d
    ld [de], a                                    ; $7627: $12
    ld c, d                                       ; $7628: $4a
    cp h                                          ; $7629: $bc
    ld d, a                                       ; $762a: $57
    db $f4                                        ; $762b: $f4
    ld c, a                                       ; $762c: $4f
    ld a, c                                       ; $762d: $79
    nop                                           ; $762e: $00
    cpl                                           ; $762f: $2f
    xor e                                         ; $7630: $ab
    sub e                                         ; $7631: $93
    ld l, c                                       ; $7632: $69
    cp a                                          ; $7633: $bf
    rst $10                                       ; $7634: $d7
    sbc c                                         ; $7635: $99
    ld c, h                                       ; $7636: $4c
    ld h, e                                       ; $7637: $63
    add d                                         ; $7638: $82
    inc bc                                        ; $7639: $03
    ld c, a                                       ; $763a: $4f
    ld a, a                                       ; $763b: $7f
    jp z, Jump_04a_746a                           ; $763c: $ca $6a $74

    call nc, Call_000_049e                        ; $763f: $d4 $9e $04
    add h                                         ; $7642: $84
    db $10                                        ; $7643: $10
    ld h, h                                       ; $7644: $64
    rlca                                          ; $7645: $07
    rst $28                                       ; $7646: $ef
    ld d, l                                       ; $7647: $55
    xor b                                         ; $7648: $a8
    rst $28                                       ; $7649: $ef
    dec l                                         ; $764a: $2d
    ld l, d                                       ; $764b: $6a
    xor a                                         ; $764c: $af
    ld h, b                                       ; $764d: $60
    and c                                         ; $764e: $a1
    jp nc, Jump_000_2f01                          ; $764f: $d2 $01 $2f

    push af                                       ; $7652: $f5
    call nz, $1d7b                                ; $7653: $c4 $7b $1d
    ld l, [hl]                                    ; $7656: $6e
    sub c                                         ; $7657: $91
    and l                                         ; $7658: $a5
    cpl                                           ; $7659: $2f
    dec e                                         ; $765a: $1d
    rst $08                                       ; $765b: $cf
    jp hl                                         ; $765c: $e9


    ld c, a                                       ; $765d: $4f
    ld l, b                                       ; $765e: $68
    ld a, e                                       ; $765f: $7b
    ld c, $cb                                     ; $7660: $0e $cb
    and l                                         ; $7662: $a5
    rra                                           ; $7663: $1f
    dec e                                         ; $7664: $1d
    ld c, a                                       ; $7665: $4f
    ld a, d                                       ; $7666: $7a
    db $d3                                        ; $7667: $d3
    ld b, d                                       ; $7668: $42
    adc c                                         ; $7669: $89
    rst $30                                       ; $766a: $f7
    sbc $c9                                       ; $766b: $de $c9
    cp b                                          ; $766d: $b8
    ld a, [$af00]                                 ; $766e: $fa $00 $af
    sub h                                         ; $7671: $94
    and b                                         ; $7672: $a0
    or d                                          ; $7673: $b2
    ld h, e                                       ; $7674: $63
    ld a, e                                       ; $7675: $7b
    set 2, d                                      ; $7676: $cb $d2
    xor l                                         ; $7678: $ad
    or $cd                                        ; $7679: $f6 $cd
    inc bc                                        ; $767b: $03
    ld c, a                                       ; $767c: $4f
    sbc e                                         ; $767d: $9b
    ld d, d                                       ; $767e: $52
    sub [hl]                                      ; $767f: $96
    sbc [hl]                                      ; $7680: $9e
    ld l, h                                       ; $7681: $6c
    ld l, a                                       ; $7682: $6f
    sbc c                                         ; $7683: $99
    and b                                         ; $7684: $a0
    adc l                                         ; $7685: $8d
    sub l                                         ; $7686: $95
    inc d                                         ; $7687: $14
    ld [hl], e                                    ; $7688: $73
    nop                                           ; $7689: $00
    cpl                                           ; $768a: $2f
    ld a, [hl]                                    ; $768b: $7e
    ld c, b                                       ; $768c: $48
    add hl, sp                                    ; $768d: $39
    ld [$af00], a                                 ; $768e: $ea $00 $af
    ld a, [hl-]                                   ; $7691: $3a
    ld c, b                                       ; $7692: $48
    sbc b                                         ; $7693: $98
    adc [hl]                                      ; $7694: $8e
    jp c, $8e53                                   ; $7695: $da $53 $8e

    add [hl]                                      ; $7698: $86
    rlc e                                         ; $7699: $cb $03
    ld c, a                                       ; $769b: $4f
    ld l, d                                       ; $769c: $6a

jr_04a_769d:
    and c                                         ; $769d: $a1
    add h                                         ; $769e: $84
    ldh a, [$bd]                                  ; $769f: $f0 $bd
    inc l                                         ; $76a1: $2c
    sub h                                         ; $76a2: $94
    ld a, [hl]                                    ; $76a3: $7e
    ld e, $2f                                     ; $76a4: $1e $2f
    sub [hl]                                      ; $76a6: $96
    inc [hl]                                      ; $76a7: $34
    ld b, $79                                     ; $76a8: $06 $79
    nop                                           ; $76aa: $00
    rst $08                                       ; $76ab: $cf
    ld l, b                                       ; $76ac: $68
    ld de, $b7a1                                  ; $76ad: $11 $a1 $b7
    dec a                                         ; $76b0: $3d
    ld b, a                                       ; $76b1: $47
    ccf                                           ; $76b2: $3f
    push de                                       ; $76b3: $d5
    ld bc, $95cf                                  ; $76b4: $01 $cf $95
    ld [$ef79], sp                                ; $76b7: $08 $79 $ef
    sbc l                                         ; $76ba: $9d
    ld c, h                                       ; $76bb: $4c
    ld b, e                                       ; $76bc: $43
    rlca                                          ; $76bd: $07
    ld c, a                                       ; $76be: $4f
    sbc c                                         ; $76bf: $99
    or $84                                        ; $76c0: $f6 $84
    ld [hl], d                                    ; $76c2: $72
    xor a                                         ; $76c3: $af
    jp $7343                                      ; $76c4: $c3 $43 $73


    xor e                                         ; $76c7: $ab
    dec e                                         ; $76c8: $1d
    call z, Call_04a_4f03                         ; $76c9: $cc $03 $4f
    ld [$84a8], a                                 ; $76cc: $ea $a8 $84
    ld [hl], b                                    ; $76cf: $70
    cp c                                          ; $76d0: $b9
    rst $30                                       ; $76d1: $f7
    call z, Call_04a_4080                         ; $76d2: $cc $80 $40
    ld c, $38                                     ; $76d5: $0e $38
    nop                                           ; $76d7: $00
    ld c, a                                       ; $76d8: $4f
    ld [de], a                                    ; $76d9: $12
    scf                                           ; $76da: $37
    ld b, d                                       ; $76db: $42
    add l                                         ; $76dc: $85
    or [hl]                                       ; $76dd: $b6
    rla                                           ; $76de: $17
    inc e                                         ; $76df: $1c
    ld a, b                                       ; $76e0: $78
    ret z                                         ; $76e1: $c8

    and c                                         ; $76e2: $a1
    add e                                         ; $76e3: $83
    ld [$cf00], a                                 ; $76e4: $ea $00 $cf
    db $fd                                        ; $76e7: $fd
    db $f4                                        ; $76e8: $f4
    push de                                       ; $76e9: $d5
    ret c                                         ; $76ea: $d8

    call c, $ba33                                 ; $76eb: $dc $33 $ba

Call_04a_76ee:
    ld [hl+], a                                   ; $76ee: $22
    ld c, e                                       ; $76ef: $4b
    ld a, $00                                     ; $76f0: $3e $00
    cpl                                           ; $76f2: $2f
    cp $64                                        ; $76f3: $fe $64
    inc bc                                        ; $76f5: $03
    ld c, [hl]                                    ; $76f6: $4e
    rst $30                                       ; $76f7: $f7
    ld a, [de]                                    ; $76f8: $1a
    ld a, d                                       ; $76f9: $7a
    ld e, a                                       ; $76fa: $5f
    ld b, d                                       ; $76fb: $42
    ld [hl], b                                    ; $76fc: $70
    nop                                           ; $76fd: $00
    sub a                                         ; $76fe: $97
    ld b, [hl]                                    ; $76ff: $46
    inc h                                         ; $7700: $24
    ld h, [hl]                                    ; $7701: $66
    xor a                                         ; $7702: $af
    ld a, h                                       ; $7703: $7c
    and $d2                                       ; $7704: $e6 $d2
    ld bc, $4b57                                  ; $7706: $01 $57 $4b
    and a                                         ; $7709: $a7
    ld h, $ef                                     ; $770a: $26 $ef
    ld [hl], l                                    ; $770c: $75
    adc h                                         ; $770d: $8c
    jr nz, jr_04a_769d                            ; $770e: $20 $8d

    add hl, bc                                    ; $7710: $09
    ld c, $cf                                     ; $7711: $0e $cf
    add hl, sp                                    ; $7713: $39
    add hl, de                                    ; $7714: $19
    and d                                         ; $7715: $a2
    or $36                                        ; $7716: $f6 $36
    rst $10                                       ; $7718: $d7
    ld [hl], d                                    ; $7719: $72
    rst $08                                       ; $771a: $cf
    db $fd                                        ; $771b: $fd
    ld c, a                                       ; $771c: $4f
    ld d, c                                       ; $771d: $51
    ld c, e                                       ; $771e: $4b
    rlca                                          ; $771f: $07
    ld c, a                                       ; $7720: $4f
    ld l, e                                       ; $7721: $6b
    db $fc                                        ; $7722: $fc
    ld a, $ed                                     ; $7723: $3e $ed
    nop                                           ; $7725: $00
    ld c, a                                       ; $7726: $4f
    push de                                       ; $7727: $d5
    sbc h                                         ; $7728: $9c
    add sp, $27                                   ; $7729: $e8 $27

Jump_04a_772b:
    rst $28                                       ; $772b: $ef
    dec b                                         ; $772c: $05
    ld c, h                                       ; $772d: $4c
    ld l, a                                       ; $772e: $6f
    db $f4                                        ; $772f: $f4
    cp a                                          ; $7730: $bf
    ld a, [hl-]                                   ; $7731: $3a
    nop                                           ; $7732: $00
    rst $08                                       ; $7733: $cf
    sub l                                         ; $7734: $95

Call_04a_7735:
    adc h                                         ; $7735: $8c
    db $fc                                        ; $7736: $fc
    ld e, [hl]                                    ; $7737: $5e
    halt                                          ; $7738: $76
    db $fc                                        ; $7739: $fc
    reti                                          ; $773a: $d9


    jp nc, $971f                                  ; $773b: $d2 $1f $97

    ld e, a                                       ; $773e: $5f
    and e                                         ; $773f: $a3
    ld [c], a                                     ; $7740: $e2
    cp a                                          ; $7741: $bf
    res 4, d                                      ; $7742: $cb $a2
    ld b, [hl]                                    ; $7744: $46
    db $10                                        ; $7745: $10
    ld e, c                                       ; $7746: $59
    ld e, $6f                                     ; $7747: $1e $6f
    and e                                         ; $7749: $a3
    ld d, $51                                     ; $774a: $16 $51
    db $fd                                        ; $774c: $fd
    sbc [hl]                                      ; $774d: $9e
    pop de                                        ; $774e: $d1
    ld [hl+], a                                   ; $774f: $22
    add h                                         ; $7750: $84
    rlc e                                         ; $7751: $cb $03
    ld c, a                                       ; $7753: $4f
    ld d, c                                       ; $7754: $51
    db $d3                                        ; $7755: $d3
    db $db                                        ; $7756: $db
    sbc $6e                                       ; $7757: $de $6e
    ld a, [$4c4a]                                 ; $7759: $fa $4a $4c
    ld a, a                                       ; $775c: $7f
    nop                                           ; $775d: $00
    rst $08                                       ; $775e: $cf
    ld a, l                                       ; $775f: $7d
    ld e, a                                       ; $7760: $5f
    ld b, d                                       ; $7761: $42
    ld hl, sp-$62                                 ; $7762: $f8 $9e
    inc hl                                        ; $7764: $23
    inc d                                         ; $7765: $14
    adc c                                         ; $7766: $89
    ld a, [hl]                                    ; $7767: $7e
    db $d3                                        ; $7768: $d3
    ld a, a                                       ; $7769: $7f
    ld a, [hl-]                                   ; $776a: $3a
    nop                                           ; $776b: $00
    cpl                                           ; $776c: $2f
    ld [hl+], a                                   ; $776d: $22
    ld e, c                                       ; $776e: $59
    ld a, d                                       ; $776f: $7a
    db $db                                        ; $7770: $db
    db $db                                        ; $7771: $db
    ld [$b540], sp                                ; $7772: $08 $40 $b5
    add hl, de                                    ; $7775: $19
    dec e                                         ; $7776: $1d
    rst $28                                       ; $7777: $ef
    sbc c                                         ; $7778: $99
    or [hl]                                       ; $7779: $b6
    or e                                          ; $777a: $b3
    pop de                                        ; $777b: $d1
    sbc $3b                                       ; $777c: $de $3b
    sbc c                                         ; $777e: $99
    rst $30                                       ; $777f: $f7
    dec h                                         ; $7780: $25
    add h                                         ; $7781: $84
    add a                                         ; $7782: $87
    rlca                                          ; $7783: $07
    rst $08                                       ; $7784: $cf
    rst $38                                       ; $7785: $ff
    call nz, $9804                                ; $7786: $c4 $04 $98
    ld a, e                                       ; $7789: $7b
    pop de                                        ; $778a: $d1
    inc e                                         ; $778b: $1c
    or a                                          ; $778c: $b7
    rlca                                          ; $778d: $07
    sub a                                         ; $778e: $97
    push de                                       ; $778f: $d5
    ret nz                                        ; $7790: $c0

    halt                                          ; $7791: $76
    jp hl                                         ; $7792: $e9


    adc b                                         ; $7793: $88
    ld b, h                                       ; $7794: $44
    push de                                       ; $7795: $d5
    sub b                                         ; $7796: $90
    inc hl                                        ; $7797: $23
    ld a, [hl-]                                   ; $7798: $3a
    nop                                           ; $7799: $00
    xor a                                         ; $779a: $af
    db $fd                                        ; $779b: $fd
    ld d, e                                       ; $779c: $53
    db $d3                                        ; $779d: $d3
    or $9a                                        ; $779e: $f6 $9a
    cp c                                          ; $77a0: $b9
    ld c, l                                       ; $77a1: $4d
    xor c                                         ; $77a2: $a9
    call $1d39                                    ; $77a3: $cd $39 $1d
    sub a                                         ; $77a6: $97
    ld c, l                                       ; $77a7: $4d
    add b                                         ; $77a8: $80
    adc d                                         ; $77a9: $8a
    rst $20                                       ; $77aa: $e7
    cp e                                          ; $77ab: $bb
    bit 1, d                                      ; $77ac: $cb $4a
    push de                                       ; $77ae: $d5
    inc a                                         ; $77af: $3c
    ld h, e                                       ; $77b0: $63
    or e                                          ; $77b1: $b3
    ld [hl], h                                    ; $77b2: $74
    nop                                           ; $77b3: $00
    ld d, a                                       ; $77b4: $57
    dec c                                         ; $77b5: $0d
    sub l                                         ; $77b6: $95
    sbc b                                         ; $77b7: $98
    ld e, l                                       ; $77b8: $5d
    db $fd                                        ; $77b9: $fd
    sbc $97                                       ; $77ba: $de $97
    db $10                                        ; $77bc: $10
    inc e                                         ; $77bd: $1c
    ld c, a                                       ; $77be: $4f
    ld l, d                                       ; $77bf: $6a
    pop bc                                        ; $77c0: $c1
    ld d, c                                       ; $77c1: $51
    ld a, e                                       ; $77c2: $7b
    and l                                         ; $77c3: $a5
    inc h                                         ; $77c4: $24
    dec l                                         ; $77c5: $2d
    ld l, d                                       ; $77c6: $6a
    or d                                          ; $77c7: $b2
    and e                                         ; $77c8: $a3
    ld c, $57                                     ; $77c9: $0e $57
    ld a, a                                       ; $77cb: $7f
    sbc d                                         ; $77cc: $9a
    or $bb                                        ; $77cd: $f6 $bb
    ld c, d                                       ; $77cf: $4a
    ld e, b                                       ; $77d0: $58
    or [hl]                                       ; $77d1: $b6
    db $f4                                        ; $77d2: $f4
    rlca                                          ; $77d3: $07
    cpl                                           ; $77d4: $2f
    ld a, [hl-]                                   ; $77d5: $3a
    ld a, [bc]                                    ; $77d6: $0a
    db $fd                                        ; $77d7: $fd
    daa                                           ; $77d8: $27
    db $db                                        ; $77d9: $db
    ld d, e                                       ; $77da: $53
    jp c, $8a44                                   ; $77db: $da $44 $8a

    ret                                           ; $77de: $c9


    ld c, $cf                                     ; $77df: $0e $cf
    and c                                         ; $77e1: $a1
    rst $28                                       ; $77e2: $ef
    rst $08                                       ; $77e3: $cf
    dec a                                         ; $77e4: $3d
    ld c, a                                       ; $77e5: $4f
    ld c, $46                                     ; $77e6: $0e $46
    push de                                       ; $77e8: $d5
    rlca                                          ; $77e9: $07
    sub a                                         ; $77ea: $97
    and l                                         ; $77eb: $a5
    ret z                                         ; $77ec: $c8

    ld [hl], d                                    ; $77ed: $72
    ld l, a                                       ; $77ee: $6f
    ld h, e                                       ; $77ef: $63
    ld a, d                                       ; $77f0: $7a
    jp nz, $a504                                  ; $77f1: $c2 $04 $a5

    inc bc                                        ; $77f4: $03
    rst $08                                       ; $77f5: $cf
    inc hl                                        ; $77f6: $23
    jp hl                                         ; $77f7: $e9


    adc d                                         ; $77f8: $8a
    reti                                          ; $77f9: $d9


    ld h, l                                       ; $77fa: $65
    adc c                                         ; $77fb: $89
    ccf                                           ; $77fc: $3f
    jr c, jr_04a_77ff                             ; $77fd: $38 $00

jr_04a_77ff:
    cpl                                           ; $77ff: $2f
    ld a, [de]                                    ; $7800: $1a
    ld sp, $b906                                  ; $7801: $31 $06 $b9
    rst $20                                       ; $7804: $e7
    ld c, a                                       ; $7805: $4f
    xor b                                         ; $7806: $a8
    and b                                         ; $7807: $a0
    ld l, d                                       ; $7808: $6a
    push bc                                       ; $7809: $c5
    ld h, [hl]                                    ; $780a: $66
    call nz, Call_000_2f07                        ; $780b: $c4 $07 $2f
    sub e                                         ; $780e: $93
    jp nz, Jump_04a_7bfc                          ; $780f: $c2 $fc $7b

    or c                                          ; $7812: $b1
    sub b                                         ; $7813: $90
    cpl                                           ; $7814: $2f
    ld a, l                                       ; $7815: $7d
    add sp, $00                                   ; $7816: $e8 $00
    ld c, a                                       ; $7818: $4f
    ld d, a                                       ; $7819: $57
    ld h, e                                       ; $781a: $63
    halt                                          ; $781b: $76
    cpl                                           ; $781c: $2f
    sbc d                                         ; $781d: $9a
    halt                                          ; $781e: $76
    adc l                                         ; $781f: $8d
    ret nc                                        ; $7820: $d0

    ld c, $97                                     ; $7821: $0e $97
    and [hl]                                      ; $7823: $a6
    ld a, e                                       ; $7824: $7b
    jp nz, $f720                                  ; $7825: $c2 $20 $f7

    sub h                                         ; $7828: $94
    sub c                                         ; $7829: $91
    ld h, b                                       ; $782a: $60

Jump_04a_782b:
    ld b, [hl]                                    ; $782b: $46
    rlca                                          ; $782c: $07
    cpl                                           ; $782d: $2f
    ld a, [de]                                    ; $782e: $1a
    ld sp, $9ee6                                  ; $782f: $31 $e6 $9e
    inc hl                                        ; $7832: $23
    inc sp                                        ; $7833: $33
    sub c                                         ; $7834: $91
    add sp, $00                                   ; $7835: $e8 $00
    xor a                                         ; $7837: $af
    ld h, e                                       ; $7838: $63
    db $10                                        ; $7839: $10
    dec [hl]                                      ; $783a: $35
    ld [hl], a                                    ; $783b: $77
    ld l, c                                       ; $783c: $69
    ld d, c                                       ; $783d: $51
    ld c, c                                       ; $783e: $49
    ld l, c                                       ; $783f: $69
    inc bc                                        ; $7840: $03
    rlca                                          ; $7841: $07
    rst $10                                       ; $7842: $d7
    cp a                                          ; $7843: $bf
    or [hl]                                       ; $7844: $b6
    db $f4                                        ; $7845: $f4
    or [hl]                                       ; $7846: $b6
    and a                                         ; $7847: $a7
    ret z                                         ; $7848: $c8

    pop bc                                        ; $7849: $c1
    and h                                         ; $784a: $a4
    rst $38                                       ; $784b: $ff
    db $fd                                        ; $784c: $fd
    ld bc, $9dcf                                  ; $784d: $01 $cf $9d
    sbc d                                         ; $7850: $9a
    cp e                                          ; $7851: $bb
    ld l, [hl]                                    ; $7852: $6e
    xor c                                         ; $7853: $a9
    ld d, h                                       ; $7854: $54
    di                                            ; $7855: $f3
    nop                                           ; $7856: $00
    sub a                                         ; $7857: $97
    ld b, [hl]                                    ; $7858: $46
    ld a, e                                       ; $7859: $7b
    ld a, [bc]                                    ; $785a: $0a
    res 4, l                                      ; $785b: $cb $a5
    inc bc                                        ; $785d: $03
    ld d, a                                       ; $785e: $57
    sub c                                         ; $785f: $91
    db $e4                                        ; $7860: $e4
    sbc $46                                       ; $7861: $de $46
    ld c, $ff                                     ; $7863: $0e $ff
    and a                                         ; $7865: $a7
    inc a                                         ; $7866: $3c
    nop                                           ; $7867: $00
    ld d, a                                       ; $7868: $57
    call $bf45                                    ; $7869: $cd $45 $bf
    sub a                                         ; $786c: $97
    ld b, c                                       ; $786d: $41
    ld d, e                                       ; $786e: $53
    ld [hl], c                                    ; $786f: $71
    ld sp, $2f0f                                  ; $7870: $31 $0f $2f

jr_04a_7873:
    db $f4                                        ; $7873: $f4
    ld b, e                                       ; $7874: $43
    ld e, a                                       ; $7875: $5f
    ld a, e                                       ; $7876: $7b
    ld c, h                                       ; $7877: $4c
    db $db                                        ; $7878: $db
    db $eb                                        ; $7879: $eb
    ld d, c                                       ; $787a: $51
    ld sp, hl                                     ; $787b: $f9
    add h                                         ; $787c: $84
    add c                                         ; $787d: $81
    inc a                                         ; $787e: $3c
    nop                                           ; $787f: $00
    xor a                                         ; $7880: $af
    ld a, l                                       ; $7881: $7d
    ld e, a                                       ; $7882: $5f
    ld b, d                                       ; $7883: $42
    cp c                                          ; $7884: $b9
    ld d, a                                       ; $7885: $57
    jr nc, jr_04a_7873                            ; $7886: $30 $eb

    ldh a, [rSB]                                  ; $7888: $f0 $01
    xor a                                         ; $788a: $af
    ld a, l                                       ; $788b: $7d
    ld l, l                                       ; $788c: $6d
    jp hl                                         ; $788d: $e9


    rst $30                                       ; $788e: $f7
    ld e, [hl]                                    ; $788f: $5e
    ld bc, $3aa8                                  ; $7890: $01 $a8 $3a
    nop                                           ; $7893: $00
    sub a                                         ; $7894: $97
    dec h                                         ; $7895: $25
    add sp, -$31                                  ; $7896: $e8 $cf
    ld [hl], a                                    ; $7898: $77
    ld l, a                                       ; $7899: $6f
    sub l                                         ; $789a: $95
    db $fc                                        ; $789b: $fc
    daa                                           ; $789c: $27
    or a                                          ; $789d: $b7
    reti                                          ; $789e: $d9


    inc bc                                        ; $789f: $03
    ld c, a                                       ; $78a0: $4f
    and [hl]                                      ; $78a1: $a6
    and a                                         ; $78a2: $a7
    xor a                                         ; $78a3: $af
    and $bb                                       ; $78a4: $e6 $bb
    sub a                                         ; $78a6: $97
    di                                            ; $78a7: $f3
    ld h, h                                       ; $78a8: $64
    add hl, hl                                    ; $78a9: $29
    xor e                                         ; $78aa: $ab
    dec b                                         ; $78ab: $05
    and e                                         ; $78ac: $a3
    ld e, $6f                                     ; $78ad: $1e $6f
    ld [de], a                                    ; $78af: $12
    jp nz, $9617                                  ; $78b0: $c2 $17 $96

jr_04a_78b3:
    rst $30                                       ; $78b3: $f7
    or [hl]                                       ; $78b4: $b6
    ld d, c                                       ; $78b5: $51
    ld hl, sp-$41                                 ; $78b6: $f8 $bf
    ret z                                         ; $78b8: $c8

    rra                                           ; $78b9: $1f
    sub a                                         ; $78ba: $97
    dec l                                         ; $78bb: $2d
    db $ed                                        ; $78bc: $ed
    or d                                          ; $78bd: $b2
    jp hl                                         ; $78be: $e9


    add hl, bc                                    ; $78bf: $09
    push hl                                       ; $78c0: $e5
    ld l, $9b                                     ; $78c1: $2e $9b
    ld b, b                                       ; $78c3: $40
    pop af                                        ; $78c4: $f1
    ld bc, $234f                                  ; $78c5: $01 $4f $23
    pop bc                                        ; $78c8: $c1
    ld a, e                                       ; $78c9: $7b
    nop                                           ; $78ca: $00
    cpl                                           ; $78cb: $2f
    ld [hl+], a                                   ; $78cc: $22
    sbc c                                         ; $78cd: $99
    ld d, b                                       ; $78ce: $50
    xor l                                         ; $78cf: $ad
    ld l, l                                       ; $78d0: $6d
    ld l, a                                       ; $78d1: $6f
    sbc c                                         ; $78d2: $99
    ld d, $4a                                     ; $78d3: $16 $4a
    ldh [rP1], a                                  ; $78d5: $e0 $00
    xor a                                         ; $78d7: $af
    ld b, a                                       ; $78d8: $47
    sub l                                         ; $78d9: $95
    ld [de], a                                    ; $78da: $12
    cp e                                          ; $78db: $bb
    rst $10                                       ; $78dc: $d7
    inc hl                                        ; $78dd: $23
    sub e                                         ; $78de: $93
    rlca                                          ; $78df: $07
    ld l, a                                       ; $78e0: $6f
    sbc b                                         ; $78e1: $98
    rst $30                                       ; $78e2: $f7
    ld [hl], l                                    ; $78e3: $75
    call nc, Call_04a_70de                        ; $78e4: $d4 $de $70
    ld c, b                                       ; $78e7: $48
    ld e, $2f                                     ; $78e8: $1e $2f
    and a                                         ; $78ea: $a7
    ld d, b                                       ; $78eb: $50
    reti                                          ; $78ec: $d9


    db $f4                                        ; $78ed: $f4
    rlca                                          ; $78ee: $07

Jump_04a_78ef:
    dec sp                                        ; $78ef: $3b
    nop                                           ; $78f0: $00
    ld c, a                                       ; $78f1: $4f
    ld e, d                                       ; $78f2: $5a
    cp d                                          ; $78f3: $ba
    and [hl]                                      ; $78f4: $a6
    rst $20                                       ; $78f5: $e7
    jr nz, jr_04a_78b3                            ; $78f6: $20 $bb

    cp a                                          ; $78f8: $bf
    call nc, Call_000_003c                        ; $78f9: $d4 $3c $00
    dec de                                        ; $78fc: $1b
    adc h                                         ; $78fd: $8c
    sub a                                         ; $78fe: $97
    db $d3                                        ; $78ff: $d3
    sub a                                         ; $7900: $97
    adc $1f                                       ; $7901: $ce $1f
    ld e, $f2                                     ; $7903: $1e $f2
    ld a, h                                       ; $7905: $7c
    add a                                         ; $7906: $87
    jp hl                                         ; $7907: $e9


    ld [$3f5f], a                                 ; $7908: $ea $5f $3f
    rst $10                                       ; $790b: $d7
    ld [hl], d                                    ; $790c: $72
    cp [hl]                                       ; $790d: $be
    adc e                                         ; $790e: $8b
    call z, $b152                                 ; $790f: $cc $52 $b1
    and l                                         ; $7912: $a5
    ld l, a                                       ; $7913: $6f
    xor $43                                       ; $7914: $ee $43
    dec bc                                        ; $7916: $0b
    rl e                                          ; $7917: $cb $13
    ld c, d                                       ; $7919: $4a
    ld b, l                                       ; $791a: $45
    rst $18                                       ; $791b: $df
    sbc h                                         ; $791c: $9c
    ld l, e                                       ; $791d: $6b
    add hl, sp                                    ; $791e: $39
    cp $6e                                        ; $791f: $fe $6e
    ret                                           ; $7921: $c9


    sub e                                         ; $7922: $93
    and l                                         ; $7923: $a5
    ld l, h                                       ; $7924: $6c
    add $07                                       ; $7925: $c6 $07
    dec de                                        ; $7927: $1b
    adc h                                         ; $7928: $8c
    xor e                                         ; $7929: $ab
    ld e, l                                       ; $792a: $5d
    call nc, $9e2a                                ; $792b: $d4 $2a $9e
    ld d, b                                       ; $792e: $50
    ld a, [$7c8d]                                 ; $792f: $fa $8d $7c
    rla                                           ; $7932: $17
    and c                                         ; $7933: $a1
    rst $30                                       ; $7934: $f7
    push de                                       ; $7935: $d5
    xor l                                         ; $7936: $ad
    ld [hl], e                                    ; $7937: $73
    ld d, d                                       ; $7938: $52
    sbc l                                         ; $7939: $9d
    ld l, c                                       ; $793a: $69
    ld a, b                                       ; $793b: $78
    ret c                                         ; $793c: $d8

    ld [$c715], sp                                ; $793d: $08 $15 $c7
    rlca                                          ; $7940: $07
    ld c, a                                       ; $7941: $4f
    ld l, c                                       ; $7942: $69
    xor h                                         ; $7943: $ac
    ld e, d                                       ; $7944: $5a
    ld e, b                                       ; $7945: $58
    ld e, $68                                     ; $7946: $1e $68
    add sp, -$40                                  ; $7948: $e8 $c0
    ld b, e                                       ; $794a: $43
    sbc $f3                                       ; $794b: $de $f3
    cp d                                          ; $794d: $ba
    sbc b                                         ; $794e: $98
    db $dd                                        ; $794f: $dd
    di                                            ; $7950: $f3
    ld [hl], l                                    ; $7951: $75
    cp b                                          ; $7952: $b8
    ld a, d                                       ; $7953: $7a
    rra                                           ; $7954: $1f
    ld a, [de]                                    ; $7955: $1a
    ld h, e                                       ; $7956: $63
    ldh [$9b], a                                  ; $7957: $e0 $9b
    ld l, d                                       ; $7959: $6a
    ld h, c                                       ; $795a: $61
    ld a, c                                       ; $795b: $79
    sub c                                         ; $795c: $91
    ld bc, $f054                                  ; $795d: $01 $54 $f0
    ld [hl], b                                    ; $7960: $70
    add d                                         ; $7961: $82
    ld c, c                                       ; $7962: $49
    reti                                          ; $7963: $d9


    sbc h                                         ; $7964: $9c
    ld l, e                                       ; $7965: $6b

Jump_04a_7966:
    cp c                                          ; $7966: $b9
    ld [hl], $e7                                  ; $7967: $36 $e7
    sub [hl]                                      ; $7969: $96
    ld [bc], a                                    ; $796a: $02
    inc sp                                        ; $796b: $33
    ld a, [c]                                     ; $796c: $f2
    ld b, $14                                     ; $796d: $06 $14
    sbc e                                         ; $796f: $9b
    ld de, $07c7                                  ; $7970: $11 $c7 $07
    dec de                                        ; $7973: $1b
    adc h                                         ; $7974: $8c
    sub a                                         ; $7975: $97
    sub e                                         ; $7976: $93
    ld a, l                                       ; $7977: $7d
    dec h                                         ; $7978: $25
    ld [hl], a                                    ; $7979: $77
    ld h, c                                       ; $797a: $61
    ld a, c                                       ; $797b: $79
    jp hl                                         ; $797c: $e9


    ldh a, [$5c]                                  ; $797d: $f0 $5c
    srl l                                         ; $797f: $cb $3d
    adc a                                         ; $7981: $8f
    ld [hl], l                                    ; $7982: $75
    ld c, [hl]                                    ; $7983: $4e
    daa                                           ; $7984: $27
    inc l                                         ; $7985: $2c
    adc l                                         ; $7986: $8d
    ld a, a                                       ; $7987: $7f
    ld [hl], e                                    ; $7988: $73
    ld h, a                                       ; $7989: $67
    inc c                                         ; $798a: $0c
    ld d, $9a                                     ; $798b: $16 $9a
    pop de                                        ; $798d: $d1
    jp nz, Jump_04a_45ff                          ; $798e: $c2 $ff $45

    ld a, [hl]                                    ; $7991: $7e
    sbc b                                         ; $7992: $98
    ld l, e                                       ; $7993: $6b
    ld [hl], e                                    ; $7994: $73
    adc l                                         ; $7995: $8d
    and d                                         ; $7996: $a2
    jp nc, $c64e                                  ; $7997: $d2 $4e $c6

    and l                                         ; $799a: $a5
    add hl, hl                                    ; $799b: $29
    ld [hl], $19                                  ; $799c: $36 $19
    rra                                           ; $799e: $1f
    dec de                                        ; $799f: $1b
    adc h                                         ; $79a0: $8c
    rst $20                                       ; $79a1: $e7
    ld [$c962], a                                 ; $79a2: $ea $62 $c9
    rst $08                                       ; $79a5: $cf
    ld b, c                                       ; $79a6: $41
    halt                                          ; $79a7: $76
    ld sp, $697d                                  ; $79a8: $31 $7d $69
    xor [hl]                                      ; $79ab: $ae
    push hl                                       ; $79ac: $e5
    ld a, h                                       ; $79ad: $7c
    rst $30                                       ; $79ae: $f7
    ld e, [hl]                                    ; $79af: $5e
    or l                                          ; $79b0: $b5
    adc b                                         ; $79b1: $88
    ld a, [hl]                                    ; $79b2: $7e
    xor c                                         ; $79b3: $a9
    jp hl                                         ; $79b4: $e9


    cp e                                          ; $79b5: $bb
    rst $20                                       ; $79b6: $e7
    set 2, l                                      ; $79b7: $cb $d5
    pop af                                        ; $79b9: $f1
    ld bc, $8c1b                                  ; $79ba: $01 $1b $8c
    scf                                           ; $79bd: $37
    sub c                                         ; $79be: $91
    ld e, l                                       ; $79bf: $5d
    ld c, h                                       ; $79c0: $4c
    ld e, a                                       ; $79c1: $5f
    sbc d                                         ; $79c2: $9a
    ld l, e                                       ; $79c3: $6b
    add hl, sp                                    ; $79c4: $39
    rst $18                                       ; $79c5: $df
    cp l                                          ; $79c6: $bd
    ld d, d                                       ; $79c7: $52
    xor b                                         ; $79c8: $a8
    db $e4                                        ; $79c9: $e4
    ret                                           ; $79ca: $c9


    ld d, d                                       ; $79cb: $52
    ld e, [hl]                                    ; $79cc: $5e

Jump_04a_79cd:
    xor h                                         ; $79cd: $ac
    call $e845                                    ; $79ce: $cd $45 $e8
    ld a, l                                       ; $79d1: $7d
    push af                                       ; $79d2: $f5
    cp b                                          ; $79d3: $b8
    and b                                         ; $79d4: $a0
    add hl, sp                                    ; $79d5: $39
    or a                                          ; $79d6: $b7
    inc h                                         ; $79d7: $24
    cp a                                          ; $79d8: $bf
    db $e3                                        ; $79d9: $e3
    jp $8fa2                                      ; $79da: $c3 $a2 $8f


    rrca                                          ; $79dd: $0f
    dec de                                        ; $79de: $1b
    adc h                                         ; $79df: $8c
    and a                                         ; $79e0: $a7
    ld c, d                                       ; $79e1: $4a
    cp a                                          ; $79e2: $bf
    sub c                                         ; $79e3: $91
    ld e, a                                       ; $79e4: $5f
    ld h, h                                       ; $79e5: $64
    or d                                          ; $79e6: $b2
    inc [hl]                                      ; $79e7: $34
    rst $10                                       ; $79e8: $d7
    ld [hl], d                                    ; $79e9: $72
    rst $08                                       ; $79ea: $cf
    ld d, c                                       ; $79eb: $51
    pop bc                                        ; $79ec: $c1
    daa                                           ; $79ed: $27
    ld [hl], h                                    ; $79ee: $74
    call nc, Call_04a_7b6d                        ; $79ef: $d4 $6d $7b
    rst $08                                       ; $79f2: $cf
    or h                                          ; $79f3: $b4
    db $db                                        ; $79f4: $db
    db $f4                                        ; $79f5: $f4
    db $dd                                        ; $79f6: $dd
    ld a, e                                       ; $79f7: $7b
    and [hl]                                      ; $79f8: $a6
    ld b, l                                       ; $79f9: $45
    pop af                                        ; $79fa: $f1
    ld bc, $8c1b                                  ; $79fb: $01 $1b $8c
    rla                                           ; $79fe: $17
    ld c, l                                       ; $79ff: $4d
    sub [hl]                                      ; $7a00: $96
    and $5a                                       ; $7a01: $e6 $5a
    xor [hl]                                      ; $7a03: $ae
    call $fa01                                    ; $7a04: $cd $01 $fa
    sbc a                                         ; $7a07: $9f
    ld h, a                                       ; $7a08: $67
    sub [hl]                                      ; $7a09: $96
    ld l, h                                       ; $7a0a: $6c
    ld a, d                                       ; $7a0b: $7a
    cpl                                           ; $7a0c: $2f

jr_04a_7a0d:
    ld h, b                                       ; $7a0d: $60
    ld b, l                                       ; $7a0e: $45
    cp [hl]                                       ; $7a0f: $be
    jp z, $a593                                   ; $7a10: $ca $93 $a5

    ld l, h                                       ; $7a13: $6c
    add $07                                       ; $7a14: $c6 $07
    dec de                                        ; $7a16: $1b
    adc h                                         ; $7a17: $8c
    xor e                                         ; $7a18: $ab
    ld e, l                                       ; $7a19: $5d
    ld e, b                                       ; $7a1a: $58
    xor c                                         ; $7a1b: $a9
    and $b1                                       ; $7a1c: $e6 $b1
    ld a, e                                       ; $7a1e: $7b
    adc d                                         ; $7a1f: $8a
    inc l                                         ; $7a20: $2c
    cp l                                          ; $7a21: $bd
    ld [c], a                                     ; $7a22: $e2
    cpl                                           ; $7a23: $2f
    sbc d                                         ; $7a24: $9a
    add e                                         ; $7a25: $83
    db $ec                                        ; $7a26: $ec
    cp $f4                                        ; $7a27: $fe $f4
    pop af                                        ; $7a29: $f1
    ld bc, $8c1b                                  ; $7a2a: $01 $1b $8c
    sub a                                         ; $7a2d: $97
    sub e                                         ; $7a2e: $93
    ld a, l                                       ; $7a2f: $7d
    dec h                                         ; $7a30: $25
    ld [hl], a                                    ; $7a31: $77
    ld h, c                                       ; $7a32: $61
    ld a, c                                       ; $7a33: $79
    ret nc                                        ; $7a34: $d0

    ld d, a                                       ; $7a35: $57
    ret z                                         ; $7a36: $c8

    ld e, b                                       ; $7a37: $58
    or a                                          ; $7a38: $b7
    xor e                                         ; $7a39: $ab
    ld c, b                                       ; $7a3a: $48
    ld d, h                                       ; $7a3b: $54
    jr c, jr_04a_7a0d                             ; $7a3c: $38 $cf

    or l                                          ; $7a3e: $b5
    call c, $a8b3                                 ; $7a3f: $dc $b3 $a8
    cp b                                          ; $7a42: $b8
    jp c, $e2a3                                   ; $7a43: $da $a3 $e2

    ld l, d                                       ; $7a46: $6a
    ret z                                         ; $7a47: $c8

    ld d, c                                       ; $7a48: $51
    ei                                            ; $7a49: $fb
    ret nc                                        ; $7a4a: $d0

    jr nz, jr_04a_7a54                            ; $7a4b: $20 $07

    dec d                                         ; $7a4d: $15
    rlca                                          ; $7a4e: $07
    ld d, l                                       ; $7a4f: $55
    pop af                                        ; $7a50: $f1
    ld bc, $8c1b                                  ; $7a51: $01 $1b $8c

jr_04a_7a54:
    and a                                         ; $7a54: $a7
    ld c, d                                       ; $7a55: $4a
    cp a                                          ; $7a56: $bf
    sub c                                         ; $7a57: $91
    sbc a                                         ; $7a58: $9f
    rst $38                                       ; $7a59: $ff
    cp [hl]                                       ; $7a5a: $be
    inc [hl]                                      ; $7a5b: $34
    rst $10                                       ; $7a5c: $d7
    ld [hl], d                                    ; $7a5d: $72
    cp [hl]                                       ; $7a5e: $be
    ld a, e                                       ; $7a5f: $7b
    xor a                                         ; $7a60: $af
    ld d, l                                       ; $7a61: $55
    jp c, $cc12                                   ; $7a62: $da $12 $cc

    or l                                          ; $7a65: $b5
    call c, $f4d3                                 ; $7a66: $dc $d3 $f4
    and e                                         ; $7a69: $a3
    ld d, d                                       ; $7a6a: $52
    ld a, h                                       ; $7a6b: $7c
    nop                                           ; $7a6c: $00
    dec de                                        ; $7a6d: $1b
    adc h                                         ; $7a6e: $8c
    sub a                                         ; $7a6f: $97
    ld hl, $7842                                  ; $7a70: $21 $42 $78
    ret z                                         ; $7a73: $c8

    and l                                         ; $7a74: $a5
    cp c                                          ; $7a75: $b9
    sub [hl]                                      ; $7a76: $96
    dec bc                                        ; $7a77: $0b
    bit 7, e                                      ; $7a78: $cb $7b
    ld a, [$c847]                                 ; $7a7a: $fa $47 $c8
    scf                                           ; $7a7d: $37
    call z, $9ffd                                 ; $7a7e: $cc $fd $9f
    or $0c                                        ; $7a81: $f6 $0c
    ld l, h                                       ; $7a83: $6c
    xor b                                         ; $7a84: $a8
    add h                                         ; $7a85: $84
    ld d, c                                       ; $7a86: $51
    sub e                                         ; $7a87: $93
    xor e                                         ; $7a88: $ab
    cp e                                          ; $7a89: $bb
    rst $10                                       ; $7a8a: $d7
    ld hl, $23aa                                  ; $7a8b: $21 $aa $23
    sbc e                                         ; $7a8e: $9b
    pop af                                        ; $7a8f: $f1
    ld bc, $8c1b                                  ; $7a90: $01 $1b $8c
    scf                                           ; $7a93: $37
    sub c                                         ; $7a94: $91
    ld e, l                                       ; $7a95: $5d
    ld c, h                                       ; $7a96: $4c
    ld e, a                                       ; $7a97: $5f
    sbc d                                         ; $7a98: $9a
    ld l, e                                       ; $7a99: $6b
    add hl, sp                                    ; $7a9a: $39
    rst $18                                       ; $7a9b: $df
    dec a                                         ; $7a9c: $3d
    sub a                                         ; $7a9d: $97
    jr z, jr_04a_7ab2                             ; $7a9e: $28 $12

    ld d, l                                       ; $7aa0: $55
    dec hl                                        ; $7aa1: $2b
    adc b                                         ; $7aa2: $88
    ld [$66c8], a                                 ; $7aa3: $ea $c8 $66
    ld a, h                                       ; $7aa6: $7c
    nop                                           ; $7aa7: $00
    dec de                                        ; $7aa8: $1b
    adc h                                         ; $7aa9: $8c
    daa                                           ; $7aaa: $27
    dec e                                         ; $7aab: $1d
    xor [hl]                                      ; $7aac: $ae
    ld b, e                                       ; $7aad: $43
    ld [hl], e                                    ; $7aae: $73
    dec l                                         ; $7aaf: $2d
    ld [hl], a                                    ; $7ab0: $77
    db $db                                        ; $7ab1: $db

jr_04a_7ab2:
    ld d, e                                       ; $7ab2: $53
    dec a                                         ; $7ab3: $3d
    sbc a                                         ; $7ab4: $9f
    ld e, d                                       ; $7ab5: $5a
    ld e, d                                       ; $7ab6: $5a
    ret nc                                        ; $7ab7: $d0

    dec a                                         ; $7ab8: $3d
    add e                                         ; $7ab9: $83
    and b                                         ; $7aba: $a0
    cp c                                          ; $7abb: $b9
    rst $10                                       ; $7abc: $d7
    ld b, l                                       ; $7abd: $45
    dec l                                         ; $7abe: $2d
    db $dd                                        ; $7abf: $dd
    ld d, $1f                                     ; $7ac0: $16 $1f
    dec de                                        ; $7ac2: $1b
    adc h                                         ; $7ac3: $8c
    sub a                                         ; $7ac4: $97
    ld hl, $7842                                  ; $7ac5: $21 $42 $78
    ret z                                         ; $7ac8: $c8

    adc d                                         ; $7ac9: $8a
    ld c, e                                       ; $7aca: $4b
    ld [hl], e                                    ; $7acb: $73
    dec l                                         ; $7acc: $2d
    rla                                           ; $7acd: $17
    sub [hl]                                      ; $7ace: $96
    rst $30                                       ; $7acf: $f7
    ld e, h                                       ; $7ad0: $5c
    di                                            ; $7ad1: $f3
    ld a, a                                       ; $7ad2: $7f
    ld d, [hl]                                    ; $7ad3: $56
    ldh a, [$d0]                                  ; $7ad4: $f0 $d0
    and b                                         ; $7ad6: $a0
    ld [hl], c                                    ; $7ad7: $71
    ld l, c                                       ; $7ad8: $69
    sub a                                         ; $7ad9: $97
    dec h                                         ; $7ada: $25
    rst $30                                       ; $7adb: $f7
    ld d, e                                       ; $7adc: $53
    add h                                         ; $7add: $84
    add hl, bc                                    ; $7ade: $09
    and $5a                                       ; $7adf: $e6 $5a
    xor $d9                                       ; $7ae1: $ee $d9
    ld d, [hl]                                    ; $7ae3: $56
    xor d                                         ; $7ae4: $aa
    ld h, [hl]                                    ; $7ae5: $66
    ld a, h                                       ; $7ae6: $7c
    nop                                           ; $7ae7: $00
    dec de                                        ; $7ae8: $1b
    adc h                                         ; $7ae9: $8c
    and a                                         ; $7aea: $a7
    ld c, d                                       ; $7aeb: $4a
    cp a                                          ; $7aec: $bf
    sub c                                         ; $7aed: $91
    rra                                           ; $7aee: $1f
    push de                                       ; $7aef: $d5
    add hl, sp                                    ; $7af0: $39
    scf                                           ; $7af1: $37
    db $fd                                        ; $7af2: $fd
    rst $30                                       ; $7af3: $f7
    and l                                         ; $7af4: $a5
    ld a, b                                       ; $7af5: $78
    ld d, a                                       ; $7af6: $57
    rst $38                                       ; $7af7: $ff
    rst $30                                       ; $7af8: $f7
    cp [hl]                                       ; $7af9: $be
    di                                            ; $7afa: $f3
    dec e                                         ; $7afb: $1d
    push de                                       ; $7afc: $d5
    ld d, c                                       ; $7afd: $51
    cp e                                          ; $7afe: $bb
    ld l, h                                       ; $7aff: $6c
    ld [bc], a                                    ; $7b00: $02
    ld d, h                                       ; $7b01: $54
    inc a                                         ; $7b02: $3c
    rst $10                                       ; $7b03: $d7

Call_04a_7b04:
    ld [hl], d                                    ; $7b04: $72
    sub a                                         ; $7b05: $97
    rst $38                                       ; $7b06: $ff
    add e                                         ; $7b07: $83
    dec a                                         ; $7b08: $3d
    ld h, l                                       ; $7b09: $65
    ld b, [hl]                                    ; $7b0a: $46
    xor c                                         ; $7b0b: $a9
    sbc b                                         ; $7b0c: $98
    inc l                                         ; $7b0d: $2c
    ld a, $00                                     ; $7b0e: $3e $00
    dec de                                        ; $7b10: $1b
    adc h                                         ; $7b11: $8c
    or a                                          ; $7b12: $b7
    db $f4                                        ; $7b13: $f4
    rst $38                                       ; $7b14: $ff
    ld h, b                                       ; $7b15: $60
    and [hl]                                      ; $7b16: $a6
    push de                                       ; $7b17: $d5
    ld e, d                                       ; $7b18: $5a
    ld d, d                                       ; $7b19: $52
    call c, Call_04a_687d                         ; $7b1a: $dc $7d $68
    ld l, l                                       ; $7b1d: $6d
    ld c, [hl]                                    ; $7b1e: $4e
    add sp, -$47                                  ; $7b1f: $e8 $b9
    sub c                                         ; $7b21: $91
    ld [c], a                                     ; $7b22: $e2
    ld d, [hl]                                    ; $7b23: $56
    rst $28                                       ; $7b24: $ef
    cp e                                          ; $7b25: $bb
    and l                                         ; $7b26: $a5
    ld sp, hl                                     ; $7b27: $f9
    xor $49                                       ; $7b28: $ee $49
    sub $96                                       ; $7b2a: $d6 $96
    adc h                                         ; $7b2c: $8c
    ld a, [bc]                                    ; $7b2d: $0a
    ld e, $76                                     ; $7b2e: $1e $76
    cpl                                           ; $7b30: $2f
    jp $966b                                      ; $7b31: $c3 $6b $96


    pop af                                        ; $7b34: $f1
    ld bc, $8c1b                                  ; $7b35: $01 $1b $8c
    and a                                         ; $7b38: $a7
    ld b, e                                       ; $7b39: $43
    call z, $8eaa                                 ; $7b3a: $cc $aa $8e
    cp a                                          ; $7b3d: $bf
    db $db                                        ; $7b3e: $db
    inc [hl]                                      ; $7b3f: $34
    and e                                         ; $7b40: $a3
    ld a, c                                       ; $7b41: $79
    db $ec                                        ; $7b42: $ec
    jp nz, $d2f2                                  ; $7b43: $c2 $f2 $d2

    pop hl                                        ; $7b46: $e1
    cp c                                          ; $7b47: $b9
    sub [hl]                                      ; $7b48: $96
    ld a, e                                       ; $7b49: $7b
    xor [hl]                                      ; $7b4a: $ae

Call_04a_7b4b:
    sub c                                         ; $7b4b: $91
    jp hl                                         ; $7b4c: $e9


    and $de                                       ; $7b4d: $e6 $de
    ld l, e                                       ; $7b4f: $6b
    add d                                         ; $7b50: $82

Call_04a_7b51:
    ld d, d                                       ; $7b51: $52
    or c                                          ; $7b52: $b1
    call nc, $4fdc                                ; $7b53: $d4 $dc $4f
    or $95                                        ; $7b56: $f6 $95
    call c, $00f8                                 ; $7b58: $dc $f8 $00
    dec de                                        ; $7b5b: $1b
    adc h                                         ; $7b5c: $8c
    sub a                                         ; $7b5d: $97
    ld hl, $7842                                  ; $7b5e: $21 $42 $78
    ret z                                         ; $7b61: $c8

    adc d                                         ; $7b62: $8a
    ld c, e                                       ; $7b63: $4b
    ld [hl], e                                    ; $7b64: $73

Jump_04a_7b65:
    dec l                                         ; $7b65: $2d
    rst $20                                       ; $7b66: $e7
    cp e                                          ; $7b67: $bb
    or a                                          ; $7b68: $b7
    ld c, d                                       ; $7b69: $4a
    ld c, l                                       ; $7b6a: $4d
    inc b                                         ; $7b6b: $04
    sbc b                                         ; $7b6c: $98

Call_04a_7b6d:
    ld h, b                                       ; $7b6d: $60
    xor $ff                                       ; $7b6e: $ee $ff
    or h                                          ; $7b70: $b4
    xor e                                         ; $7b71: $ab
    add l                                         ; $7b72: $85
    xor b                                         ; $7b73: $a8
    ld c, d                                       ; $7b74: $4a
    ld h, c                                       ; $7b75: $61
    db $dd                                        ; $7b76: $dd
    xor $b2                                       ; $7b77: $ee $b2
    ld d, d                                       ; $7b79: $52
    dec [hl]                                      ; $7b7a: $35
    db $e3                                        ; $7b7b: $e3
    inc bc                                        ; $7b7c: $03
    dec de                                        ; $7b7d: $1b
    adc h                                         ; $7b7e: $8c
    and a                                         ; $7b7f: $a7
    ld a, [hl+]                                   ; $7b80: $2a
    sbc e                                         ; $7b81: $9b
    ld a, [hl]                                    ; $7b82: $7e
    and [hl]                                      ; $7b83: $a6
    push de                                       ; $7b84: $d5
    inc e                                         ; $7b85: $1c
    ld h, h                                       ; $7b86: $64
    rla                                           ; $7b87: $17
    db $d3                                        ; $7b88: $d3
    sub a                                         ; $7b89: $97
    and $5a                                       ; $7b8a: $e6 $5a
    xor [hl]                                      ; $7b8c: $ae
    call $fa01                                    ; $7b8d: $cd $01 $fa
    sbc a                                         ; $7b90: $9f
    ld h, a                                       ; $7b91: $67
    sub [hl]                                      ; $7b92: $96
    ld l, h                                       ; $7b93: $6c
    ld a, d                                       ; $7b94: $7a
    ccf                                           ; $7b95: $3f
    call $3412                                    ; $7b96: $cd $12 $34
    dec l                                         ; $7b99: $2d
    ld [$f284], a                                 ; $7b9a: $ea $84 $f2
    ld [hl], a                                    ; $7b9d: $77

jr_04a_7b9e:
    ld c, e                                       ; $7b9e: $4b
    sbc b                                         ; $7b9f: $98
    and b                                         ; $7ba0: $a0
    cp c                                          ; $7ba1: $b9
    and $84                                       ; $7ba2: $e6 $84
    add [hl]                                      ; $7ba4: $86
    sub l                                         ; $7ba5: $95
    ld a, [bc]                                    ; $7ba6: $0a
    inc de                                        ; $7ba7: $13
    inc [hl]                                      ; $7ba8: $34

Jump_04a_7ba9:
    db $e3                                        ; $7ba9: $e3
    inc bc                                        ; $7baa: $03
    dec de                                        ; $7bab: $1b
    adc h                                         ; $7bac: $8c
    ld c, e                                       ; $7bad: $4b
    db $d3                                        ; $7bae: $d3
    and d                                         ; $7baf: $a2
    or e                                          ; $7bb0: $b3
    and e                                         ; $7bb1: $a3
    cp b                                          ; $7bb2: $b8

Call_04a_7bb3:
    inc [hl]                                      ; $7bb3: $34
    rst $10                                       ; $7bb4: $d7
    ld [hl], d                                    ; $7bb5: $72
    rst $08                                       ; $7bb6: $cf
    rst $38                                       ; $7bb7: $ff
    call nz, Call_04a_7b04                        ; $7bb8: $c4 $04 $7b
    sub d                                         ; $7bbb: $92
    jr c, jr_04a_7c32                             ; $7bbc: $38 $74

    jr z, jr_04a_7b9e                             ; $7bbe: $28 $de

    ld d, l                                       ; $7bc0: $55
    rlca                                          ; $7bc1: $07
    dec d                                         ; $7bc2: $15
    sub a                                         ; $7bc3: $97
    ld a, [hl-]                                   ; $7bc4: $3a
    cp $6e                                        ; $7bc5: $fe $6e
    db $d3                                        ; $7bc7: $d3
    xor b                                         ; $7bc8: $a8
    ld l, d                                       ; $7bc9: $6a
    call Call_000_18b9                            ; $7bca: $cd $b9 $18
    ld e, b                                       ; $7bcd: $58
    ld a, [$96b9]                                 ; $7bce: $fa $b9 $96
    ld a, e                                       ; $7bd1: $7b
    or c                                          ; $7bd2: $b1
    and h                                         ; $7bd3: $a4
    ld sp, $f8c8                                  ; $7bd4: $31 $c8 $f8
    nop                                           ; $7bd7: $00
    dec de                                        ; $7bd8: $1b

jr_04a_7bd9:
    adc h                                         ; $7bd9: $8c
    or a                                          ; $7bda: $b7
    ld c, e                                       ; $7bdb: $4b
    ld a, [hl]                                    ; $7bdc: $7e
    ld l, c                                       ; $7bdd: $69
    ld b, [hl]                                    ; $7bde: $46
    ld a, e                                       ; $7bdf: $7b
    ld a, [c]                                     ; $7be0: $f2
    inc l                                         ; $7be1: $2c
    ld c, l                                       ; $7be2: $4d
    or b                                          ; $7be3: $b0
    inc e                                         ; $7be4: $1c
    xor b                                         ; $7be5: $a8
    ld h, d                                       ; $7be6: $62
    rst $00                                       ; $7be7: $c7
    ld hl, $1fbf                                  ; $7be8: $21 $bf $1f
    ld a, c                                       ; $7beb: $79
    db $e3                                        ; $7bec: $e3
    add l                                         ; $7bed: $85
    jr jr_04a_7c3c                                ; $7bee: $18 $4c

    adc c                                         ; $7bf0: $89
    jr nc, jr_04a_7c54                            ; $7bf1: $30 $61

    scf                                           ; $7bf3: $37
    add a                                         ; $7bf4: $87
    cp c                                          ; $7bf5: $b9
    inc sp                                        ; $7bf6: $33
    ld b, $39                                     ; $7bf7: $06 $39
    add e                                         ; $7bf9: $83
    add a                                         ; $7bfa: $87
    ld e, h                                       ; $7bfb: $5c

Jump_04a_7bfc:
    ld h, d                                       ; $7bfc: $62
    rlca                                          ; $7bfd: $07
    ld [hl], e                                    ; $7bfe: $73
    ld hl, $fb56                                  ; $7bff: $21 $56 $fb
    ld hl, sp+$00                                 ; $7c02: $f8 $00
    dec de                                        ; $7c04: $1b
    adc h                                         ; $7c05: $8c
    and a                                         ; $7c06: $a7
    ld c, d                                       ; $7c07: $4a
    cp a                                          ; $7c08: $bf
    sub c                                         ; $7c09: $91
    rst $18                                       ; $7c0a: $df
    adc a                                         ; $7c0b: $8f
    halt                                          ; $7c0c: $76
    add $20                                       ; $7c0d: $c6 $20
    and a                                         ; $7c0f: $a7
    dec l                                         ; $7c10: $2d
    ld b, c                                       ; $7c11: $41
    rst $00                                       ; $7c12: $c7
    call $9ae6                                    ; $7c13: $cd $e6 $9a
    dec bc                                        ; $7c16: $0b
    bit 6, e                                      ; $7c17: $cb $73
    ld c, e                                       ; $7c19: $4b
    xor [hl]                                      ; $7c1a: $ae
    cp $95                                        ; $7c1b: $fe $95
    call $96b9                                    ; $7c1d: $cd $b9 $96
    ei                                            ; $7c20: $fb
    xor c                                         ; $7c21: $a9
    ldh [$a1], a                                  ; $7c22: $e0 $a1
    and e                                         ; $7c24: $a3
    dec a                                         ; $7c25: $3d
    add d                                         ; $7c26: $82
    adc $fd                                       ; $7c27: $ce $fd
    sbc a                                         ; $7c29: $9f
    inc b                                         ; $7c2a: $04
    inc c                                         ; $7c2b: $0c
    add b                                         ; $7c2c: $80
    dec h                                         ; $7c2d: $25
    jr z, jr_04a_7bd9                             ; $7c2e: $28 $a9

    ld hl, sp+$00                                 ; $7c30: $f8 $00

jr_04a_7c32:
    dec de                                        ; $7c32: $1b
    adc h                                         ; $7c33: $8c
    rst $10                                       ; $7c34: $d7
    pop hl                                        ; $7c35: $e1
    ld hl, $a2b5                                  ; $7c36: $21 $b5 $a2
    cp l                                          ; $7c39: $bd
    and l                                         ; $7c3a: $a5
    or c                                          ; $7c3b: $b1

jr_04a_7c3c:
    and b                                         ; $7c3c: $a0
    ld a, c                                       ; $7c3d: $79
    ld a, $59                                     ; $7c3e: $3e $59
    or h                                          ; $7c40: $b4
    or a                                          ; $7c41: $b7
    ld c, d                                       ; $7c42: $4a
    and c                                         ; $7c43: $a1
    sbc c                                         ; $7c44: $99
    and $a0                                       ; $7c45: $e6 $a0
    ld [$e962], a                                 ; $7c47: $ea $62 $e9
    call z, $092d                                 ; $7c4a: $cc $2d $09
    rst $18                                       ; $7c4d: $df
    scf                                           ; $7c4e: $37
    rst $30                                       ; $7c4f: $f7
    inc hl                                        ; $7c50: $23
    ld l, a                                       ; $7c51: $6f

Jump_04a_7c52:
    cp h                                          ; $7c52: $bc
    or b                                          ; $7c53: $b0

jr_04a_7c54:
    cp h                                          ; $7c54: $bc
    rst $28                                       ; $7c55: $ef
    sub [hl]                                      ; $7c56: $96
    ld b, b                                       ; $7c57: $40
    db $dd                                        ; $7c58: $dd
    and $dc                                       ; $7c59: $e6 $dc
    jp nc, Jump_04a_74ff                          ; $7c5b: $d2 $ff $74

    ld [hl], $93                                  ; $7c5e: $36 $93
    call c, $00f8                                 ; $7c60: $dc $f8 $00
    dec de                                        ; $7c63: $1b
    adc h                                         ; $7c64: $8c
    or a                                          ; $7c65: $b7

Jump_04a_7c66:
    ld sp, $a8d3                                  ; $7c66: $31 $d3 $a8
    ld l, d                                       ; $7c69: $6a
    xor [hl]                                      ; $7c6a: $ae
    push hl                                       ; $7c6b: $e5
    ld a, h                                       ; $7c6c: $7c
    rst $30                                       ; $7c6d: $f7
    sub d                                         ; $7c6e: $92
    ld sp, $34fe                                  ; $7c6f: $31 $fe $34

Call_04a_7c72:
    db $dd                                        ; $7c72: $dd
    dec a                                         ; $7c73: $3d
    db $fd                                        ; $7c74: $fd
    inc hl                                        ; $7c75: $23
    xor b                                         ; $7c76: $a8

Jump_04a_7c77:
    adc h                                         ; $7c77: $8c
    adc h                                         ; $7c78: $8c
    db $dd                                        ; $7c79: $dd
    dec de                                        ; $7c7a: $1b
    rst $18                                       ; $7c7b: $df
    ld l, l                                       ; $7c7c: $6d
    sbc d                                         ; $7c7d: $9a
    sub c                                         ; $7c7e: $91
    ld a, [c]                                     ; $7c7f: $f2
    ld c, [hl]                                    ; $7c80: $4e
    or l                                          ; $7c81: $b5
    ld l, $35                                     ; $7c82: $2e $35
    rst $20                                       ; $7c84: $e7
    ld e, d                                       ; $7c85: $5a
    xor $de                                       ; $7c86: $ee $de
    rlca                                          ; $7c88: $07
    xor $bf                                       ; $7c89: $ee $bf
    daa                                           ; $7c8b: $27
    ld a, $00                                     ; $7c8c: $3e $00
    dec de                                        ; $7c8e: $1b
    adc h                                         ; $7c8f: $8c
    ld h, a                                       ; $7c90: $67
    or l                                          ; $7c91: $b5
    ld b, l                                       ; $7c92: $45
    jp nz, Jump_04a_6317                          ; $7c93: $c2 $17 $63

Jump_04a_7c96:
    ret                                           ; $7c96: $c9


    dec e                                         ; $7c97: $1d
    ld a, a                                       ; $7c98: $7f
    or a                                          ; $7c99: $b7
    ld l, c                                       ; $7c9a: $69
    ld b, [hl]                                    ; $7c9b: $46
    ld [hl], a                                    ; $7c9c: $77
    dec [hl]                                      ; $7c9d: $35
    cp c                                          ; $7c9e: $b9
    call nz, $5986                                ; $7c9f: $c4 $86 $59
    sbc d                                         ; $7ca2: $9a
    rst $00                                       ; $7ca3: $c7
    adc [hl]                                      ; $7ca4: $8e
    ld sp, $4df0                                  ; $7ca5: $31 $f0 $4d
    or l                                          ; $7ca8: $b5
    or b                                          ; $7ca9: $b0
    inc a                                         ; $7caa: $3c
    ld [hl], $c8                                  ; $7cab: $36 $c8
    ld e, e                                       ; $7cad: $5b
    xor d                                         ; $7cae: $aa
    and $7e                                       ; $7caf: $e6 $7e
    cp d                                          ; $7cb1: $ba
    and l                                         ; $7cb2: $a5
    sub e                                         ; $7cb3: $93
    pop bc                                        ; $7cb4: $c1
    ld b, e                                       ; $7cb5: $43
    ld d, [hl]                                    ; $7cb6: $56
    ld [hl], e                                    ; $7cb7: $73
    ld c, e                                       ; $7cb8: $4b
    cp $d4                                        ; $7cb9: $fe $d4
    ld h, [hl]                                    ; $7cbb: $66
    ld a, h                                       ; $7cbc: $7c
    nop                                           ; $7cbd: $00
    dec de                                        ; $7cbe: $1b
    adc h                                         ; $7cbf: $8c
    rst $10                                       ; $7cc0: $d7
    ld c, e                                       ; $7cc1: $4b
    ret c                                         ; $7cc2: $d8

    add sp, $7f                                   ; $7cc3: $e8 $7f
    ld a, [c]                                     ; $7cc5: $f2
    ld c, l                                       ; $7cc6: $4d
    inc sp                                        ; $7cc7: $33
    sbc d                                         ; $7cc8: $9a
    ld l, e                                       ; $7cc9: $6b
    add hl, sp                                    ; $7cca: $39
    ld sp, hl                                     ; $7ccb: $f9
    add l                                         ; $7ccc: $85
    xor a                                         ; $7ccd: $af
    ld a, l                                       ; $7cce: $7d
    inc sp                                        ; $7ccf: $33
    ld a, $00                                     ; $7cd0: $3e $00
    dec de                                        ; $7cd2: $1b
    adc h                                         ; $7cd3: $8c
    or a                                          ; $7cd4: $b7
    ld d, c                                       ; $7cd5: $51
    pop af                                        ; $7cd6: $f1
    jp nz, Jump_04a_5ef2                          ; $7cd7: $c2 $f2 $5e

    call nz, $c544                                ; $7cda: $c4 $44 $c5
    dec h                                         ; $7cdd: $25
    db $ec                                        ; $7cde: $ec
    ld e, h                                       ; $7cdf: $5c
    res 7, l                                      ; $7ce0: $cb $bd
    pop af                                        ; $7ce2: $f1
    db $dd                                        ; $7ce3: $dd
    sub d                                         ; $7ce4: $92
    ld [hl], h                                    ; $7ce5: $74
    ld d, d                                       ; $7ce6: $52
    pop af                                        ; $7ce7: $f1
    ld [de], a                                    ; $7ce8: $12
    set 4, e                                      ; $7ce9: $cb $e3
    xor $bb                                       ; $7ceb: $ee $bb
    dec h                                         ; $7ced: $25
    halt                                          ; $7cee: $76
    db $10                                        ; $7cef: $10
    inc [hl]                                      ; $7cf0: $34
    rst $30                                       ; $7cf1: $f7
    and e                                         ; $7cf2: $a3
    sbc c                                         ; $7cf3: $99
    sub $dd                                       ; $7cf4: $d6 $dd
    inc sp                                        ; $7cf6: $33
    ld e, d                                       ; $7cf7: $5a
    inc d                                         ; $7cf8: $14
    ld d, h                                       ; $7cf9: $54
    adc l                                         ; $7cfa: $8d
    inc e                                         ; $7cfb: $1c
    push bc                                       ; $7cfc: $c5
    ld [$9dc6], sp                                ; $7cfd: $08 $c6 $9d
    ld [hl], $6e                                  ; $7d00: $36 $6e
    ld c, $53                                     ; $7d02: $0e $53
    ld l, c                                       ; $7d04: $69
    add e                                         ; $7d05: $83
    sbc d                                         ; $7d06: $9a
    pop af                                        ; $7d07: $f1
    ld bc, $8c1b                                  ; $7d08: $01 $1b $8c
    and a                                         ; $7d0b: $a7
    ld c, d                                       ; $7d0c: $4a
    cp a                                          ; $7d0d: $bf
    sub c                                         ; $7d0e: $91
    rst $18                                       ; $7d0f: $df
    adc a                                         ; $7d10: $8f
    cp h                                          ; $7d11: $bc
    pop af                                        ; $7d12: $f1
    ld b, d                                       ; $7d13: $42
    inc c                                         ; $7d14: $0c
    sub [hl]                                      ; $7d15: $96
    rst $38                                       ; $7d16: $ff
    inc hl                                        ; $7d17: $23
    rst $28                                       ; $7d18: $ef
    adc h                                         ; $7d19: $8c
    ld b, c                                       ; $7d1a: $41
    ld l, $74                                     ; $7d1b: $2e $74
    ld d, b                                       ; $7d1d: $50
    call $9641                                    ; $7d1e: $cd $41 $96
    daa                                           ; $7d21: $27
    adc e                                         ; $7d22: $8b
    add $9f                                       ; $7d23: $c6 $9f
    cp l                                          ; $7d25: $bd
    pop af                                        ; $7d26: $f1
    ld b, d                                       ; $7d27: $42
    inc c                                         ; $7d28: $0c
    sub $e6                                       ; $7d29: $d6 $e6
    inc d                                         ; $7d2b: $14
    ld b, h                                       ; $7d2c: $44
    ld [hl], l                                    ; $7d2d: $75
    db $e4                                        ; $7d2e: $e4
    call c, Call_04a_4412                         ; $7d2f: $dc $12 $44
    ld c, $2b                                     ; $7d32: $0e $2b
    xor $9a                                       ; $7d34: $ee $9a
    dec bc                                        ; $7d36: $0b
    set 6, e                                      ; $7d37: $cb $f3
    ld h, $87                                     ; $7d39: $26 $87
    xor c                                         ; $7d3b: $a9
    ld hl, sp+$13                                 ; $7d3c: $f8 $13
    ld [hl], e                                    ; $7d3e: $73
    db $e3                                        ; $7d3f: $e3
    inc bc                                        ; $7d40: $03
    dec de                                        ; $7d41: $1b
    adc h                                         ; $7d42: $8c
    or a                                          ; $7d43: $b7
    ld a, [hl]                                    ; $7d44: $7e
    ld a, [$6409]                                 ; $7d45: $fa $09 $64
    jp hl                                         ; $7d48: $e9


    dec d                                         ; $7d49: $15
    dec de                                        ; $7d4a: $1b
    ld d, h                                       ; $7d4b: $54
    xor l                                         ; $7d4c: $ad
    halt                                          ; $7d4d: $76
    cp $d3                                        ; $7d4e: $fe $d3
    sub l                                         ; $7d50: $95
    or d                                          ; $7d51: $b2
    inc [hl]                                      ; $7d52: $34
    ld c, c                                       ; $7d53: $49
    ld e, b                                       ; $7d54: $58
    and c                                         ; $7d55: $a1
    cp d                                          ; $7d56: $ba
    add hl, sp                                    ; $7d57: $39
    ld l, a                                       ; $7d58: $6f
    cp h                                          ; $7d59: $bc
    ld [hl], e                                    ; $7d5a: $73
    ld [hl], a                                    ; $7d5b: $77
    ld b, [hl]                                    ; $7d5c: $46
    ld a, b                                       ; $7d5d: $78
    ld a, b                                       ; $7d5e: $78
    xor [hl]                                      ; $7d5f: $ae
    ld d, $ed                                     ; $7d60: $16 $ed
    add c                                         ; $7d62: $81
    add a                                         ; $7d63: $87
    daa                                           ; $7d64: $27
    ld e, e                                       ; $7d65: $5b
    ld e, d                                       ; $7d66: $5a
    ret c                                         ; $7d67: $d8

    adc d                                         ; $7d68: $8a
    ld a, b                                       ; $7d69: $78
    jp c, Jump_000_39b8                           ; $7d6a: $da $b8 $39

    or e                                          ; $7d6d: $b3
    ld d, h                                       ; $7d6e: $54
    ld e, h                                       ; $7d6f: $5c
    reti                                          ; $7d70: $d9


    adc h                                         ; $7d71: $8c
    rrca                                          ; $7d72: $0f
    dec de                                        ; $7d73: $1b
    adc h                                         ; $7d74: $8c
    rst $10                                       ; $7d75: $d7
    ld [$d77d], a                                 ; $7d76: $ea $7d $d7
    and $00                                       ; $7d79: $e6 $00
    db $fd                                        ; $7d7b: $fd
    rst $08                                       ; $7d7c: $cf
    inc sp                                        ; $7d7d: $33
    ld c, e                                       ; $7d7e: $4b
    ld [hl], $bd                                  ; $7d7f: $36 $bd
    xor e                                         ; $7d81: $ab
    ld d, h                                       ; $7d82: $54
    rst $20                                       ; $7d83: $e7
    ld e, h                                       ; $7d84: $5c
    xor l                                         ; $7d85: $ad
    add $bf                                       ; $7d86: $c6 $bf
    cp c                                          ; $7d88: $b9
    ld [hl], $e7                                  ; $7d89: $36 $e7
    ret                                           ; $7d8b: $c9


    ld c, h                                       ; $7d8c: $4c
    xor $8c                                       ; $7d8d: $ee $8c
    ldh a, [rSVBK]                                ; $7d8f: $f0 $70
    rra                                           ; $7d91: $1f
    ld e, d                                       ; $7d92: $5a
    sbc e                                         ; $7d93: $9b
    adc e                                         ; $7d94: $8b
    inc e                                         ; $7d95: $1c
    rst $28                                       ; $7d96: $ef
    ld a, [hl]                                    ; $7d97: $7e
    dec a                                         ; $7d98: $3d
    push bc                                       ; $7d99: $c5
    ld h, h                                       ; $7d9a: $64
    jp hl                                         ; $7d9b: $e9


    rla                                           ; $7d9c: $17
    sub l                                         ; $7d9d: $95
    ld [hl], a                                    ; $7d9e: $77
    cp $69                                        ; $7d9f: $fe $69
    sub [hl]                                      ; $7da1: $96
    ld [bc], a                                    ; $7da2: $02
    ld a, d                                       ; $7da3: $7a
    ld e, a                                       ; $7da4: $5f
    ld d, d                                       ; $7da5: $52
    ld d, e                                       ; $7da6: $53
    db $fc                                        ; $7da7: $fc
    adc c                                         ; $7da8: $89
    cp c                                          ; $7da9: $b9
    pop af                                        ; $7daa: $f1
    ld bc, $8c1b                                  ; $7dab: $01 $1b $8c
    or a                                          ; $7dae: $b7
    ld a, [hl]                                    ; $7daf: $7e
    ret                                           ; $7db0: $c9


    ld [hl], a                                    ; $7db1: $77
    ld [hl], b                                    ; $7db2: $70
    adc e                                         ; $7db3: $8b
    jr nz, jr_04a_7db9                            ; $7db4: $20 $03

    reti                                          ; $7db6: $d9


    db $fd                                        ; $7db7: $fd
    ld l, b                                       ; $7db8: $68

jr_04a_7db9:
    ld d, a                                       ; $7db9: $57
    xor c                                         ; $7dba: $a9
    adc $b9                                       ; $7dbb: $ce $b9
    ld e, d                                       ; $7dbd: $5a
    db $ed                                        ; $7dbe: $ed
    cp e                                          ; $7dbf: $bb
    and l                                         ; $7dc0: $a5
    add l                                         ; $7dc1: $85
    push hl                                       ; $7dc2: $e5
    add hl, bc                                    ; $7dc3: $09
    ld d, l                                       ; $7dc4: $55
    ld l, h                                       ; $7dc5: $6c
    sub [hl]                                      ; $7dc6: $96
    ld [hl], e                                    ; $7dc7: $73
    dec l                                         ; $7dc8: $2d
    rst $00                                       ; $7dc9: $c7
    rst $18                                       ; $7dca: $df
    ld l, l                                       ; $7dcb: $6d
    sbc d                                         ; $7dcc: $9a
    sub c                                         ; $7dcd: $91
    ld a, [de]                                    ; $7dce: $1a
    ld [hl], a                                    ; $7dcf: $77
    sbc b                                         ; $7dd0: $98
    and d                                         ; $7dd1: $a2
    ld c, a                                       ; $7dd2: $4f
    ld d, c                                       ; $7dd3: $51
    xor c                                         ; $7dd4: $a9
    add hl, de                                    ; $7dd5: $19
    rra                                           ; $7dd6: $1f
    dec de                                        ; $7dd7: $1b
    adc h                                         ; $7dd8: $8c
    scf                                           ; $7dd9: $37
    sub c                                         ; $7dda: $91
    ld e, l                                       ; $7ddb: $5d
    ld c, h                                       ; $7ddc: $4c
    ld e, a                                       ; $7ddd: $5f
    sbc d                                         ; $7dde: $9a
    ld l, e                                       ; $7ddf: $6b
    add hl, sp                                    ; $7de0: $39
    rst $18                                       ; $7de1: $df
    cp l                                          ; $7de2: $bd
    ld h, a                                       ; $7de3: $67
    ld [de], a                                    ; $7de4: $12
    ld l, b                                       ; $7de5: $68
    rlca                                          ; $7de6: $07
    and c                                         ; $7de7: $a1
    xor a                                         ; $7de8: $af
    ldh [rIE], a                                  ; $7de9: $e0 $ff
    ld b, e                                       ; $7deb: $43
    pop af                                        ; $7dec: $f1
    ld bc, $8c1b                                  ; $7ded: $01 $1b $8c
    ld h, a                                       ; $7df0: $67
    sbc d                                         ; $7df1: $9a
    pop hl                                        ; $7df2: $e1
    rst $38                                       ; $7df3: $ff
    sub h                                         ; $7df4: $94
    ld [hl], a                                    ; $7df5: $77
    dec d                                         ; $7df6: $15
    ld [hl], $54                                  ; $7df7: $36 $54
    ld [c], a                                     ; $7df9: $e2
    ld a, b                                       ; $7dfa: $78
    sub a                                         ; $7dfb: $97
    xor l                                         ; $7dfc: $ad
    adc b                                         ; $7dfd: $88
    add a                                         ; $7dfe: $87
    cp c                                          ; $7dff: $b9
    or b                                          ; $7e00: $b0
    push de                                       ; $7e01: $d5
    ld a, e                                       ; $7e02: $7b
    ld h, $41                                     ; $7e03: $26 $41
    or l                                          ; $7e05: $b5
    and l                                         ; $7e06: $a5
    rra                                           ; $7e07: $1f
    ld d, l                                       ; $7e08: $55
    sub l                                         ; $7e09: $95
    ld e, h                                       ; $7e0a: $5c
    db $e3                                        ; $7e0b: $e3
    and $dc                                       ; $7e0c: $e6 $dc
    rst $38                                       ; $7e0e: $ff
    ld l, c                                       ; $7e0f: $69
    ld l, l                                       ; $7e10: $6d
    add [hl]                                      ; $7e11: $86
    rst $38                                       ; $7e12: $ff
    ld d, e                                       ; $7e13: $53
    xor d                                         ; $7e14: $aa
    add c                                         ; $7e15: $81
    ld a, [hl+]                                   ; $7e16: $2a
    ld b, [hl]                                    ; $7e17: $46
    ld a, b                                       ; $7e18: $78
    ret z                                         ; $7e19: $c8

    pop af                                        ; $7e1a: $f1
    ld bc, $8c1b                                  ; $7e1b: $01 $1b $8c
    ld h, a                                       ; $7e1e: $67
    ld [de], a                                    ; $7e1f: $12
    ld b, c                                       ; $7e20: $41
    rst $00                                       ; $7e21: $c7
    rst $18                                       ; $7e22: $df
    ld l, l                                       ; $7e23: $6d
    sbc d                                         ; $7e24: $9a
    pop de                                        ; $7e25: $d1
    inc a                                         ; $7e26: $3c
    halt                                          ; $7e27: $76
    ld l, l                                       ; $7e28: $6d
    adc $2c                                       ; $7e29: $ce $2c
    ld e, l                                       ; $7e2b: $5d
    db $d3                                        ; $7e2c: $d3
    ld [hl], e                                    ; $7e2d: $73
    dec l                                         ; $7e2e: $2d
    rst $10                                       ; $7e2f: $d7
    and $5e                                       ; $7e30: $e6 $5e
    ld h, a                                       ; $7e32: $67
    sub h                                         ; $7e33: $94
    ld [hl], a                                    ; $7e34: $77
    ld sp, hl                                     ; $7e35: $f9
    sbc $15                                       ; $7e36: $de $15
    db $fd                                        ; $7e38: $fd
    ld c, a                                       ; $7e39: $4f
    ld a, [hl]                                    ; $7e3a: $7e
    ld h, c                                       ; $7e3b: $61
    dec hl                                        ; $7e3c: $2b
    ld [c], a                                     ; $7e3d: $e2
    ld a, l                                       ; $7e3e: $7d
    or a                                          ; $7e3f: $b7
    and h                                         ; $7e40: $a4
    ld e, e                                       ; $7e41: $5b
    sub c                                         ; $7e42: $91
    adc a                                         ; $7e43: $8f
    rrca                                          ; $7e44: $0f
    dec de                                        ; $7e45: $1b
    adc h                                         ; $7e46: $8c
    rst $20                                       ; $7e47: $e7
    ld [$c962], a                                 ; $7e48: $ea $62 $c9
    rst $28                                       ; $7e4b: $ef
    ld a, [c]                                     ; $7e4c: $f2
    ld a, a                                       ; $7e4d: $7f
    sub c                                         ; $7e4e: $91
    sbc a                                         ; $7e4f: $9f
    ld l, e                                       ; $7e50: $6b
    cp c                                          ; $7e51: $b9
    or b                                          ; $7e52: $b0
    cp h                                          ; $7e53: $bc
    xor e                                         ; $7e54: $ab
    add l                                         ; $7e55: $85
    adc h                                         ; $7e56: $8c
    cp b                                          ; $7e57: $b8
    ld d, c                                       ; $7e58: $51
    sub e                                         ; $7e59: $93
    rst $20                                       ; $7e5a: $e7
    ld e, d                                       ; $7e5b: $5a
    xor $45                                       ; $7e5c: $ee $45
    inc bc                                        ; $7e5e: $03
    xor b                                         ; $7e5f: $a8
    ldh [$61], a                                  ; $7e60: $e0 $61
    rst $30                                       ; $7e62: $f7
    halt                                          ; $7e63: $76
    ld e, c                                       ; $7e64: $59
    add l                                         ; $7e65: $85
    sub [hl]                                      ; $7e66: $96
    ld a, $34                                     ; $7e67: $3e $34
    rla                                           ; $7e69: $17
    inc de                                        ; $7e6a: $13
    call nz, Call_000_1b07                        ; $7e6b: $c4 $07 $1b
    adc h                                         ; $7e6e: $8c
    rst $10                                       ; $7e6f: $d7
    add hl, de                                    ; $7e70: $19
    ld c, e                                       ; $7e71: $4b
    and d                                         ; $7e72: $a2
    pop af                                        ; $7e73: $f1
    ld l, a                                       ; $7e74: $6f
    ld l, $c4                                     ; $7e75: $2e $c4
    ld h, b                                       ; $7e77: $60
    db $10                                        ; $7e78: $10
    ld a, l                                       ; $7e79: $7d
    and c                                         ; $7e7a: $a1
    dec h                                         ; $7e7b: $25
    rst $18                                       ; $7e7c: $df
    or l                                          ; $7e7d: $b5
    cp c                                          ; $7e7e: $b9
    xor e                                         ; $7e7f: $ab
    ld d, h                                       ; $7e80: $54
    rst $20                                       ; $7e81: $e7
    ld e, h                                       ; $7e82: $5c
    dec l                                         ; $7e83: $2d
    ld sp, $b8fd                                  ; $7e84: $31 $fd $b8
    and e                                         ; $7e87: $a3
    ld a, d                                       ; $7e88: $7a
    rst $18                                       ; $7e89: $df
    sbc h                                         ; $7e8a: $9c
    ld l, e                                       ; $7e8b: $6b
    cp c                                          ; $7e8c: $b9
    ld [hl], $f7                                  ; $7e8d: $36 $f7
    and c                                         ; $7e8f: $a1
    add l                                         ; $7e90: $85
    ld e, a                                       ; $7e91: $5f
    rrca                                          ; $7e92: $0f
    ld d, h                                       ; $7e93: $54
    ld l, c                                       ; $7e94: $69
    inc bc                                        ; $7e95: $03
    call Call_04a_68bd                            ; $7e96: $cd $bd $68
    ret                                           ; $7e99: $c9


    ld [$3f0f], sp                                ; $7e9a: $08 $0f $3f
    dec [hl]                                      ; $7e9d: $35
    ld a, $00                                     ; $7e9e: $3e $00
    dec de                                        ; $7ea0: $1b
    adc h                                         ; $7ea1: $8c
    or a                                          ; $7ea2: $b7
    cp $27                                        ; $7ea3: $fe $27
    or a                                          ; $7ea5: $b7
    ldh a, [$90]                                  ; $7ea6: $f0 $90
    ld c, e                                       ; $7ea8: $4b
    ld [hl], e                                    ; $7ea9: $73
    dec l                                         ; $7eaa: $2d
    rst $30                                       ; $7eab: $f7
    db $fc                                        ; $7eac: $fc
    rla                                           ; $7ead: $17
    cp [hl]                                       ; $7eae: $be
    or $54                                        ; $7eaf: $f6 $54
    ld a, b                                       ; $7eb1: $78
    ret z                                         ; $7eb2: $c8

    call $00f8                                    ; $7eb3: $cd $f8 $00
    dec de                                        ; $7eb6: $1b
    adc h                                         ; $7eb7: $8c
    rst $20                                       ; $7eb8: $e7
    ld [$c962], a                                 ; $7eb9: $ea $62 $c9
    adc a                                         ; $7ebc: $8f
    cp a                                          ; $7ebd: $bf
    db $db                                        ; $7ebe: $db
    inc [hl]                                      ; $7ebf: $34
    and e                                         ; $7ec0: $a3
    ld a, c                                       ; $7ec1: $79
    db $ec                                        ; $7ec2: $ec
    ld a, [hl]                                    ; $7ec3: $7e
    ld [hl], h                                    ; $7ec4: $74
    ld b, d                                       ; $7ec5: $42
    xor l                                         ; $7ec6: $ad
    dec sp                                        ; $7ec7: $3b
    rst $10                                       ; $7ec8: $d7
    ld [hl], d                                    ; $7ec9: $72
    ld h, a                                       ; $7eca: $67
    inc c                                         ; $7ecb: $0c
    ld [hl], d                                    ; $7ecc: $72
    jp nz, Jump_04a_6caf                          ; $7ecd: $c2 $af $6c

    adc $ff                                       ; $7ed0: $ce $ff
    ld c, a                                       ; $7ed2: $4f
    di                                            ; $7ed3: $f3
    db $dd                                        ; $7ed4: $dd

Call_04a_7ed5:
    ld d, l                                       ; $7ed5: $55
    xor d                                         ; $7ed6: $aa
    ld [hl], e                                    ; $7ed7: $73
    xor [hl]                                      ; $7ed8: $ae
    ld d, [hl]                                    ; $7ed9: $56
    jp $ef9c                                      ; $7eda: $c3 $9c $ef


    ld b, b                                       ; $7edd: $40
    ld e, l                                       ; $7ede: $5d
    ld c, e                                       ; $7edf: $4b
    ret nc                                        ; $7ee0: $d0

    ld b, h                                       ; $7ee1: $44
    or l                                          ; $7ee2: $b5
    ld d, e                                       ; $7ee3: $53
    ret                                           ; $7ee4: $c9


    rrca                                          ; $7ee5: $0f
    inc d                                         ; $7ee6: $14
    db $fc                                        ; $7ee7: $fc
    adc a                                         ; $7ee8: $8f
    ld a, $3e                                     ; $7ee9: $3e $3e
    nop                                           ; $7eeb: $00
    dec de                                        ; $7eec: $1b
    adc h                                         ; $7eed: $8c
    rla                                           ; $7eee: $17
    dec c                                         ; $7eef: $0d
    and b                                         ; $7ef0: $a0
    add d                                         ; $7ef1: $82

Jump_04a_7ef2:
    add a                                         ; $7ef2: $87
    sbc l                                         ; $7ef3: $9d
    ei                                            ; $7ef4: $fb
    ld b, c                                       ; $7ef5: $41
    or l                                          ; $7ef6: $b5
    sbc d                                         ; $7ef7: $9a
    xor a                                         ; $7ef8: $af
    sub d                                         ; $7ef9: $92
    ld c, [hl]                                    ; $7efa: $4e
    ld a, d                                       ; $7efb: $7a
    inc b                                         ; $7efc: $04
    adc l                                         ; $7efd: $8d
    rst $30                                       ; $7efe: $f7
    ld [hl], d                                    ; $7eff: $72
    or d                                          ; $7f00: $b2
    xor a                                         ; $7f01: $af
    db $e4                                        ; $7f02: $e4
    adc $b4                                       ; $7f03: $ce $b4
    ld e, d                                       ; $7f05: $5a
    ld c, e                                       ; $7f06: $4b
    adc d                                         ; $7f07: $8a
    dec sp                                        ; $7f08: $3b
    rst $18                                       ; $7f09: $df
    add hl, bc                                    ; $7f0a: $09
    push hl                                       ; $7f0b: $e5
    jp z, $aa26                                   ; $7f0c: $ca $26 $aa

    cp c                                          ; $7f0f: $b9
    sub [hl]                                      ; $7f10: $96
    dec bc                                        ; $7f11: $0b
    rlc e                                         ; $7f12: $cb $03
    dec a                                         ; $7f14: $3d
    ld e, e                                       ; $7f15: $5b
    add d                                         ; $7f16: $82
    cp c                                          ; $7f17: $b9
    sub [hl]                                      ; $7f18: $96
    di                                            ; $7f19: $f3
    db $dd                                        ; $7f1a: $dd
    sub e                                         ; $7f1b: $93
    ld c, $70                                     ; $7f1c: $0e $70
    xor b                                         ; $7f1e: $a8
    jr @+$21                                      ; $7f1f: $18 $1f

    dec de                                        ; $7f21: $1b
    adc h                                         ; $7f22: $8c
    rst $20                                       ; $7f23: $e7
    ld [$c962], a                                 ; $7f24: $ea $62 $c9
    rst $08                                       ; $7f27: $cf
    inc e                                         ; $7f28: $1c
    xor [hl]                                      ; $7f29: $ae
    ld b, e                                       ; $7f2a: $43
    ld [hl], e                                    ; $7f2b: $73
    dec l                                         ; $7f2c: $2d
    ld [hl], a                                    ; $7f2d: $77
    db $db                                        ; $7f2e: $db
    or e                                          ; $7f2f: $b3
    ld h, $54                                     ; $7f30: $26 $54
    ld a, e                                       ; $7f32: $7b
    inc l                                         ; $7f33: $2c
    dec [hl]                                      ; $7f34: $35
    rst $10                                       ; $7f35: $d7
    call c, Call_04a_66db                         ; $7f36: $dc $db $66
    or h                                          ; $7f39: $b4
    rst $30                                       ; $7f3a: $f7
    cp d                                          ; $7f3b: $ba
    scf                                           ; $7f3c: $37
    cp d                                          ; $7f3d: $ba
    or a                                          ; $7f3e: $b7
    jr nc, jr_04a_7fbe                            ; $7f3f: $30 $7d

    di                                            ; $7f41: $f3
    or [hl]                                       ; $7f42: $b6
    ld hl, sp+$00                                 ; $7f43: $f8 $00
    dec de                                        ; $7f45: $1b
    adc h                                         ; $7f46: $8c
    ld d, a                                       ; $7f47: $57
    xor b                                         ; $7f48: $a8
    xor d                                         ; $7f49: $aa
    ret                                           ; $7f4a: $c9


    add $9f                                       ; $7f4b: $c6 $9f
    and $5a                                       ; $7f4d: $e6 $5a
    ld l, $2c                                     ; $7f4f: $2e $2c
    rst $28                                       ; $7f51: $ef
    push bc                                       ; $7f52: $c5
    sub a                                         ; $7f53: $97
    ld e, a                                       ; $7f54: $5f
    rst $18                                       ; $7f55: $df
    db $ed                                        ; $7f56: $ed
    cpl                                           ; $7f57: $2f
    ld a, [de]                                    ; $7f58: $1a
    ld b, b                                       ; $7f59: $40
    dec b                                         ; $7f5a: $05
    rrca                                          ; $7f5b: $0f
    cp e                                          ; $7f5c: $bb
    sub a                                         ; $7f5d: $97
    inc hl                                        ; $7f5e: $23
    ld a, [$f685]                                 ; $7f5f: $fa $85 $f6
    ld a, [hl-]                                   ; $7f62: $3a
    inc hl                                        ; $7f63: $23
    inc a                                         ; $7f64: $3c

jr_04a_7f65:
    ld h, h                                       ; $7f65: $64
    ld c, h                                       ; $7f66: $4c
    ld [hl], b                                    ; $7f67: $70
    rst $00                                       ; $7f68: $c7
    jr nz, jr_04a_7f65                            ; $7f69: $20 $fa

    add b                                         ; $7f6b: $80
    inc l                                         ; $7f6c: $2c
    adc d                                         ; $7f6d: $8a
    ld l, h                                       ; $7f6e: $6c
    or a                                          ; $7f6f: $b7
    ld e, l                                       ; $7f70: $5d
    db $ed                                        ; $7f71: $ed
    ld e, [hl]                                    ; $7f72: $5e
    ld [hl], h                                    ; $7f73: $74
    adc $28                                       ; $7f74: $ce $28
    ld c, l                                       ; $7f76: $4d
    ld [hl], a                                    ; $7f77: $77
    sub a                                         ; $7f78: $97
    sub l                                         ; $7f79: $95
    xor d                                         ; $7f7a: $aa
    add hl, hl                                    ; $7f7b: $29
    set 2, l                                      ; $7f7c: $cb $d5
    or a                                          ; $7f7e: $b7
    push bc                                       ; $7f7f: $c5
    rlca                                          ; $7f80: $07
    dec de                                        ; $7f81: $1b
    adc h                                         ; $7f82: $8c
    and a                                         ; $7f83: $a7
    ld c, d                                       ; $7f84: $4a
    cp a                                          ; $7f85: $bf
    sub c                                         ; $7f86: $91
    ld e, a                                       ; $7f87: $5f
    ld h, h                                       ; $7f88: $64
    nop                                           ; $7f89: $00
    dec d                                         ; $7f8a: $15
    inc a                                         ; $7f8b: $3c
    inc e                                         ; $7f8c: $1c
    add a                                         ; $7f8d: $87
    db $fd                                        ; $7f8e: $fd
    ld d, h                                       ; $7f8f: $54
    ld b, [hl]                                    ; $7f90: $46
    cp b                                          ; $7f91: $b8
    and e                                         ; $7f92: $a3
    ld [c], a                                     ; $7f93: $e2
    inc bc                                        ; $7f94: $03
    dec de                                        ; $7f95: $1b
    adc h                                         ; $7f96: $8c
    bit 1, d                                      ; $7f97: $cb $4a
    dec [hl]                                      ; $7f99: $35
    adc a                                         ; $7f9a: $8f
    sbc l                                         ; $7f9b: $9d
    rst $28                                       ; $7f9c: $ef
    ld e, [hl]                                    ; $7f9d: $5e

Jump_04a_7f9e:
    ld [hl], b                                    ; $7f9e: $70
    jp nc, $fc14                                  ; $7f9f: $d2 $14 $fc

    ld a, a                                       ; $7fa2: $7f
    ld l, b                                       ; $7fa3: $68
    ld c, $b2                                     ; $7fa4: $0e $b2
    ei                                            ; $7fa6: $fb
    db $d3                                        ; $7fa7: $d3
    rst $00                                       ; $7fa8: $c7
    rlca                                          ; $7fa9: $07
    dec de                                        ; $7faa: $1b
    adc h                                         ; $7fab: $8c
    rst $20                                       ; $7fac: $e7
    ld [$c962], a                                 ; $7fad: $ea $62 $c9
    rst $28                                       ; $7fb0: $ef
    adc h                                         ; $7fb1: $8c
    call $d552                                    ; $7fb2: $cd $52 $d5
    sbc d                                         ; $7fb5: $9a
    ld d, e                                       ; $7fb6: $53
    ldh a, [$90]                                  ; $7fb7: $f0 $90
    jr nc, jr_04a_7fcb                            ; $7fb9: $30 $10

    add hl, hl                                    ; $7fbb: $29
    ld l, $cd                                     ; $7fbc: $2e $cd

jr_04a_7fbe:
    or l                                          ; $7fbe: $b5
    call c, Call_000_2f6d                         ; $7fbf: $dc $6d $2f
    daa                                           ; $7fc2: $27
    sbc a                                         ; $7fc3: $9f
    ld c, h                                       ; $7fc4: $4c
    dec [hl]                                      ; $7fc5: $35
    sbc d                                         ; $7fc6: $9a
    rst $28                                       ; $7fc7: $ef
    sbc $f8                                       ; $7fc8: $de $f8
    sub l                                         ; $7fca: $95

jr_04a_7fcb:
    ccf                                           ; $7fcb: $3f
    ld d, d                                       ; $7fcc: $52
    ld a, h                                       ; $7fcd: $7c
    ld e, e                                       ; $7fce: $5b
    ld a, h                                       ; $7fcf: $7c
    nop                                           ; $7fd0: $00
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

Jump_04a_7ff0:
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff

Jump_04a_7ff2:
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
